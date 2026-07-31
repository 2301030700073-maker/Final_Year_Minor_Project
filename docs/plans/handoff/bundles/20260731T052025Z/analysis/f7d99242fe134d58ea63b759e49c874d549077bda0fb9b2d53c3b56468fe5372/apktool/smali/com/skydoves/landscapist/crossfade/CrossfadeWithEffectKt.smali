.class public abstract Lcom/skydoves/landscapist/crossfade/CrossfadeWithEffectKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final CrossfadeWithEffect(Ljava/lang/Object;Landroidx/compose/ui/Modifier;IZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v6, p2

    .line 4
    .line 5
    move/from16 v7, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v8, p5

    .line 10
    .line 11
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 12
    .line 13
    move-object/from16 v10, p6

    .line 14
    .line 15
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, 0x251f4cc

    .line 18
    .line 19
    .line 20
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v11, 0x4

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    move v0, v11

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    :goto_0
    or-int v0, p7, v0

    .line 34
    .line 35
    const/16 v12, 0x30

    .line 36
    .line 37
    or-int/2addr v0, v12

    .line 38
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    const/16 v2, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v2, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v0, v2

    .line 50
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    const/16 v2, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v2, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v0, v2

    .line 62
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/16 v14, 0x4000

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    move v2, v14

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/16 v2, 0x2000

    .line 73
    .line 74
    :goto_3
    or-int v15, v0, v2

    .line 75
    .line 76
    const v0, 0x12493

    .line 77
    .line 78
    .line 79
    and-int/2addr v0, v15

    .line 80
    const v2, 0x12492

    .line 81
    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    if-eq v0, v2, :cond_4

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    goto :goto_4

    .line 88
    :cond_4
    move v0, v5

    .line 89
    :goto_4
    and-int/lit8 v2, v15, 0x1

    .line 90
    .line 91
    invoke-virtual {v10, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1b

    .line 96
    .line 97
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 102
    .line 103
    if-ne v0, v2, :cond_5

    .line 104
    .line 105
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 106
    .line 107
    invoke-direct {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 114
    .line 115
    const v16, 0xe000

    .line 116
    .line 117
    .line 118
    move/from16 p6, v12

    .line 119
    .line 120
    and-int v12, v15, v16

    .line 121
    .line 122
    if-ne v12, v14, :cond_6

    .line 123
    .line 124
    const/16 v16, 0x1

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_6
    move/from16 v16, v5

    .line 128
    .line 129
    :goto_5
    and-int/lit8 v14, v15, 0xe

    .line 130
    .line 131
    if-eq v14, v11, :cond_7

    .line 132
    .line 133
    move/from16 v18, v5

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_7
    const/16 v18, 0x1

    .line 137
    .line 138
    :goto_6
    or-int v16, v16, v18

    .line 139
    .line 140
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const/16 v19, 0x0

    .line 145
    .line 146
    if-nez v16, :cond_8

    .line 147
    .line 148
    if-ne v4, v2, :cond_9

    .line 149
    .line 150
    :cond_8
    move-object v1, v0

    .line 151
    goto :goto_7

    .line 152
    :cond_9
    move-object/from16 v20, v2

    .line 153
    .line 154
    move v13, v5

    .line 155
    const/4 v11, 0x1

    .line 156
    move-object v2, v0

    .line 157
    move-object v0, v4

    .line 158
    move-object/from16 v4, v19

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :goto_7
    new-instance v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 162
    .line 163
    move v4, v5

    .line 164
    const/4 v5, 0x7

    .line 165
    const/4 v11, 0x1

    .line 166
    move-object/from16 v20, v2

    .line 167
    .line 168
    move v13, v4

    .line 169
    move-object/from16 v4, v19

    .line 170
    .line 171
    move-object/from16 v2, p0

    .line 172
    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v25, v2

    .line 177
    .line 178
    move-object v2, v1

    .line 179
    move-object/from16 v1, v25

    .line 180
    .line 181
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :goto_8
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 185
    .line 186
    invoke-static {v10, v1, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v9, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    move/from16 p1, v12

    .line 194
    .line 195
    iget-wide v11, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 196
    .line 197
    const/16 v19, 0x20

    .line 198
    .line 199
    ushr-long v21, v11, v19

    .line 200
    .line 201
    xor-long v11, v11, v21

    .line 202
    .line 203
    long-to-int v11, v11

    .line 204
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 209
    .line 210
    invoke-static {v10, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 215
    .line 216
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 220
    .line 221
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 222
    .line 223
    .line 224
    move-object/from16 v24, v5

    .line 225
    .line 226
    iget-boolean v5, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 227
    .line 228
    if-eqz v5, :cond_a

    .line 229
    .line 230
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 231
    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 235
    .line 236
    .line 237
    :goto_9
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 238
    .line 239
    invoke-static {v10, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 240
    .line 241
    .line 242
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 243
    .line 244
    invoke-static {v10, v12, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 252
    .line 253
    invoke-static {v10, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 254
    .line 255
    .line 256
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 257
    .line 258
    invoke-static {v10, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 259
    .line 260
    .line 261
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 262
    .line 263
    invoke-static {v10, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 264
    .line 265
    .line 266
    if-eqz v7, :cond_13

    .line 267
    .line 268
    const v0, -0x55da401b

    .line 269
    .line 270
    .line 271
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    :goto_a
    move-object v4, v0

    .line 279
    check-cast v4, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 280
    .line 281
    invoke-virtual {v4}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    if-eqz v5, :cond_12

    .line 286
    .line 287
    invoke-virtual {v4}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    const v5, 0x36a3bc3e

    .line 292
    .line 293
    .line 294
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    invoke-virtual {v10, v5, v11}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 314
    .line 315
    if-eqz v5, :cond_c

    .line 316
    .line 317
    const v12, -0x622a48b9

    .line 318
    .line 319
    .line 320
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    if-nez v12, :cond_b

    .line 328
    .line 329
    move-object v12, v11

    .line 330
    :cond_b
    invoke-static {v12, v10}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 331
    .line 332
    .line 333
    move-result-object v12

    .line 334
    new-instance v13, Lcom/skydoves/landscapist/crossfade/FadeInEffectElement;

    .line 335
    .line 336
    invoke-direct {v13, v12, v6}, Lcom/skydoves/landscapist/crossfade/FadeInEffectElement;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 337
    .line 338
    .line 339
    const/4 v12, 0x0

    .line 340
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 341
    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_c
    const/4 v12, 0x0

    .line 345
    const v13, -0x62288d85

    .line 346
    .line 347
    .line 348
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 349
    .line 350
    .line 351
    invoke-static {v11, v10}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 352
    .line 353
    .line 354
    move-result-object v13

    .line 355
    new-instance v14, Lcom/skydoves/landscapist/crossfade/FadeOutEffectElement;

    .line 356
    .line 357
    invoke-direct {v14, v13, v6}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectElement;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 361
    .line 362
    .line 363
    move-object v13, v14

    .line 364
    :goto_b
    if-nez v5, :cond_10

    .line 365
    .line 366
    const v5, -0x6226c445

    .line 367
    .line 368
    .line 369
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 370
    .line 371
    .line 372
    and-int/lit16 v5, v15, 0x380

    .line 373
    .line 374
    const/16 v12, 0x100

    .line 375
    .line 376
    if-ne v5, v12, :cond_d

    .line 377
    .line 378
    const/4 v5, 0x1

    .line 379
    goto :goto_c

    .line 380
    :cond_d
    const/4 v5, 0x0

    .line 381
    :goto_c
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v14

    .line 385
    or-int/2addr v5, v14

    .line 386
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v14

    .line 390
    if-nez v5, :cond_f

    .line 391
    .line 392
    move-object/from16 v5, v20

    .line 393
    .line 394
    if-ne v14, v5, :cond_e

    .line 395
    .line 396
    goto :goto_d

    .line 397
    :cond_e
    const/4 v12, 0x0

    .line 398
    goto :goto_e

    .line 399
    :cond_f
    move-object/from16 v5, v20

    .line 400
    .line 401
    :goto_d
    new-instance v14, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 402
    .line 403
    const/4 v12, 0x0

    .line 404
    invoke-direct {v14, v6, v2, v4, v12}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    :goto_e
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 411
    .line 412
    invoke-static {v10, v11, v14}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 413
    .line 414
    .line 415
    const/4 v11, 0x0

    .line 416
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 417
    .line 418
    .line 419
    :goto_f
    const/4 v11, 0x1

    .line 420
    goto :goto_10

    .line 421
    :cond_10
    move-object/from16 v5, v20

    .line 422
    .line 423
    const/4 v11, 0x0

    .line 424
    const/4 v12, 0x0

    .line 425
    const v14, -0x622485ec

    .line 426
    .line 427
    .line 428
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 432
    .line 433
    .line 434
    goto :goto_f

    .line 435
    :goto_10
    invoke-static {v9, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 436
    .line 437
    .line 438
    move-result-object v14

    .line 439
    iget-wide v11, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 440
    .line 441
    ushr-long v16, v11, v19

    .line 442
    .line 443
    xor-long v11, v11, v16

    .line 444
    .line 445
    long-to-int v11, v11

    .line 446
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 447
    .line 448
    .line 449
    move-result-object v12

    .line 450
    invoke-static {v10, v13}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 451
    .line 452
    .line 453
    move-result-object v13

    .line 454
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 455
    .line 456
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    move-object/from16 p1, v0

    .line 460
    .line 461
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 462
    .line 463
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 464
    .line 465
    .line 466
    iget-boolean v6, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 467
    .line 468
    if-eqz v6, :cond_11

    .line 469
    .line 470
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 471
    .line 472
    .line 473
    goto :goto_11

    .line 474
    :cond_11
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 475
    .line 476
    .line 477
    :goto_11
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 478
    .line 479
    invoke-static {v10, v14, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 480
    .line 481
    .line 482
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 483
    .line 484
    invoke-static {v10, v12, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 485
    .line 486
    .line 487
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 492
    .line 493
    invoke-static {v10, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 494
    .line 495
    .line 496
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 497
    .line 498
    invoke-static {v10, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 499
    .line 500
    .line 501
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 502
    .line 503
    invoke-static {v10, v13, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 504
    .line 505
    .line 506
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v8, v4, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    const/4 v11, 0x1

    .line 514
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 515
    .line 516
    .line 517
    const/4 v12, 0x0

    .line 518
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 519
    .line 520
    .line 521
    move-object/from16 v0, p1

    .line 522
    .line 523
    move/from16 v6, p2

    .line 524
    .line 525
    move-object/from16 v20, v5

    .line 526
    .line 527
    goto/16 :goto_a

    .line 528
    .line 529
    :cond_12
    const/4 v11, 0x1

    .line 530
    const/4 v12, 0x0

    .line 531
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_17

    .line 535
    .line 536
    :cond_13
    move-object/from16 v5, v20

    .line 537
    .line 538
    const/4 v11, 0x1

    .line 539
    const v0, -0x55cf4946

    .line 540
    .line 541
    .line 542
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-gt v0, v11, :cond_15

    .line 550
    .line 551
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-nez v0, :cond_14

    .line 560
    .line 561
    goto :goto_12

    .line 562
    :cond_14
    const v0, -0x55caf924

    .line 563
    .line 564
    .line 565
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 566
    .line 567
    .line 568
    const/4 v12, 0x0

    .line 569
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 570
    .line 571
    .line 572
    goto :goto_16

    .line 573
    :cond_15
    :goto_12
    const v0, -0x55cdebad

    .line 574
    .line 575
    .line 576
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 577
    .line 578
    .line 579
    move/from16 v0, p1

    .line 580
    .line 581
    const/16 v4, 0x4000

    .line 582
    .line 583
    if-ne v0, v4, :cond_16

    .line 584
    .line 585
    const/4 v4, 0x1

    .line 586
    :goto_13
    const/4 v0, 0x4

    .line 587
    goto :goto_14

    .line 588
    :cond_16
    const/4 v4, 0x0

    .line 589
    goto :goto_13

    .line 590
    :goto_14
    if-eq v14, v0, :cond_17

    .line 591
    .line 592
    const/4 v0, 0x0

    .line 593
    goto :goto_15

    .line 594
    :cond_17
    const/4 v0, 0x1

    .line 595
    :goto_15
    or-int/2addr v0, v4

    .line 596
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    if-nez v0, :cond_18

    .line 601
    .line 602
    if-ne v4, v5, :cond_19

    .line 603
    .line 604
    :cond_18
    new-instance v4, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 605
    .line 606
    const/16 v0, 0x1c

    .line 607
    .line 608
    invoke-direct {v4, v0, v3, v1}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    :cond_19
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 615
    .line 616
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    const/4 v12, 0x0

    .line 620
    invoke-static {v2, v4, v12}, Lkotlin/collections/CollectionsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/util/List;Lkotlin/jvm/functions/Function1;Z)Z

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    if-eqz v0, :cond_1a

    .line 628
    .line 629
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    :cond_1a
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 633
    .line 634
    .line 635
    :goto_16
    const v0, 0x1601bfe9

    .line 636
    .line 637
    .line 638
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-virtual {v10, v0, v2}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    or-int/lit8 v0, v14, 0x30

    .line 646
    .line 647
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v8, v1, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 658
    .line 659
    .line 660
    const/4 v11, 0x1

    .line 661
    :goto_17
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 662
    .line 663
    .line 664
    move-object/from16 v2, v24

    .line 665
    .line 666
    goto :goto_18

    .line 667
    :cond_1b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 668
    .line 669
    .line 670
    move-object/from16 v2, p1

    .line 671
    .line 672
    :goto_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 673
    .line 674
    .line 675
    move-result-object v9

    .line 676
    if-eqz v9, :cond_1c

    .line 677
    .line 678
    new-instance v0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;

    .line 679
    .line 680
    move-object v5, v3

    .line 681
    move v4, v7

    .line 682
    move-object v6, v8

    .line 683
    move/from16 v3, p2

    .line 684
    .line 685
    move/from16 v7, p7

    .line 686
    .line 687
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;IZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 688
    .line 689
    .line 690
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 691
    .line 692
    :cond_1c
    return-void
.end method

.method public static final updateSaturation-RaGpIIw([FF)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    sub-float/2addr v0, p1

    .line 7
    const v1, 0x3e5a1cac    # 0.213f

    .line 8
    .line 9
    .line 10
    mul-float/2addr v1, v0

    .line 11
    const v2, 0x3f370a3d    # 0.715f

    .line 12
    .line 13
    .line 14
    mul-float/2addr v2, v0

    .line 15
    const v3, 0x3d9374bc    # 0.072f

    .line 16
    .line 17
    .line 18
    mul-float/2addr v0, v3

    .line 19
    add-float v3, v1, p1

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput v3, p0, v4

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    aput v2, p0, v3

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    aput v0, p0, v3

    .line 29
    .line 30
    const/4 v3, 0x5

    .line 31
    aput v1, p0, v3

    .line 32
    .line 33
    add-float v3, v2, p1

    .line 34
    .line 35
    const/4 v4, 0x6

    .line 36
    aput v3, p0, v4

    .line 37
    .line 38
    const/4 v3, 0x7

    .line 39
    aput v0, p0, v3

    .line 40
    .line 41
    const/16 v3, 0xa

    .line 42
    .line 43
    aput v1, p0, v3

    .line 44
    .line 45
    const/16 v1, 0xb

    .line 46
    .line 47
    aput v2, p0, v1

    .line 48
    .line 49
    add-float/2addr v0, p1

    .line 50
    const/16 p1, 0xc

    .line 51
    .line 52
    aput v0, p0, p1

    .line 53
    .line 54
    return-void
.end method
