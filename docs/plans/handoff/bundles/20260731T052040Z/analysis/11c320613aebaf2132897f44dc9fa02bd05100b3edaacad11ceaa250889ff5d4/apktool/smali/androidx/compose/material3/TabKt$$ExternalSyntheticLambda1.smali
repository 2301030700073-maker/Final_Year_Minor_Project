.class public final synthetic Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p2, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 0

    .line 1
    const/16 p2, 0x8

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 6
    .line 7
    const/16 v3, 0x38

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 12
    .line 13
    const/16 v6, 0x12

    .line 14
    .line 15
    const/4 v7, 0x4

    .line 16
    const/4 v8, 0x2

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x1

    .line 19
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 22
    .line 23
    packed-switch v2, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    move-object/from16 v18, v0

    .line 27
    .line 28
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    move-object v0, v1

    .line 31
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 32
    .line 33
    move-object/from16 v1, p2

    .line 34
    .line 35
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 36
    .line 37
    move-object/from16 v2, p3

    .line 38
    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    and-int/lit8 v0, v2, 0x11

    .line 49
    .line 50
    if-eq v0, v4, :cond_0

    .line 51
    .line 52
    move v9, v10

    .line 53
    :cond_0
    and-int/lit8 v0, v2, 0x1

    .line 54
    .line 55
    move-object v14, v1

    .line 56
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 57
    .line 58
    invoke-virtual {v14, v0, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    sget-object v15, Lnet/newpipe/app/screen/settings/SettingsHomeScreenKt;->lambda$-1607639693:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 65
    .line 66
    const/high16 v12, 0x180000

    .line 67
    .line 68
    const/4 v13, 0x0

    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    const/16 v17, 0x0

    .line 72
    .line 73
    const/16 v19, 0x0

    .line 74
    .line 75
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/BadgeKt;->IconButton(ILandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-object v11

    .line 83
    :pswitch_0
    check-cast v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 86
    .line 87
    move-object/from16 v2, p2

    .line 88
    .line 89
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 90
    .line 91
    move-object/from16 v3, p3

    .line 92
    .line 93
    check-cast v3, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    and-int/lit8 v4, v3, 0x6

    .line 103
    .line 104
    if-nez v4, :cond_3

    .line 105
    .line 106
    move-object v4, v2

    .line 107
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 108
    .line 109
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_2

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    move v7, v8

    .line 117
    :goto_1
    or-int/2addr v3, v7

    .line 118
    :cond_3
    and-int/lit8 v4, v3, 0x13

    .line 119
    .line 120
    if-eq v4, v6, :cond_4

    .line 121
    .line 122
    move v9, v10

    .line 123
    :cond_4
    and-int/2addr v3, v10

    .line 124
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 125
    .line 126
    invoke-virtual {v2, v3, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_7

    .line 131
    .line 132
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 133
    .line 134
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    const/16 v4, 0xd

    .line 139
    .line 140
    const/4 v6, 0x0

    .line 141
    invoke-static {v3, v6, v1, v6, v4}, Landroidx/compose/foundation/layout/SpacerKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFI)Landroidx/compose/ui/Modifier;

    .line 142
    .line 143
    .line 144
    move-result-object v21

    .line 145
    sget-object v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 146
    .line 147
    invoke-static {v2}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v1, v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->navigationBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 152
    .line 153
    new-instance v3, Landroidx/compose/foundation/layout/InsetsPaddingValues;

    .line 154
    .line 155
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 156
    .line 157
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 162
    .line 163
    invoke-direct {v3, v1, v4}, Landroidx/compose/foundation/layout/InsetsPaddingValues;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-nez v1, :cond_5

    .line 175
    .line 176
    if-ne v4, v5, :cond_6

    .line 177
    .line 178
    :cond_5
    new-instance v4, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;

    .line 179
    .line 180
    invoke-direct {v4, v10, v0}, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;-><init>(ILjava/util/ArrayList;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    move-object/from16 v22, v4

    .line 187
    .line 188
    check-cast v22, Lkotlin/jvm/functions/Function1;

    .line 189
    .line 190
    const/4 v12, 0x0

    .line 191
    const/16 v13, 0x1fa

    .line 192
    .line 193
    const/4 v14, 0x0

    .line 194
    const/4 v15, 0x0

    .line 195
    const/16 v16, 0x0

    .line 196
    .line 197
    const/16 v18, 0x0

    .line 198
    .line 199
    const/16 v20, 0x0

    .line 200
    .line 201
    const/16 v23, 0x0

    .line 202
    .line 203
    move-object/from16 v19, v2

    .line 204
    .line 205
    move-object/from16 v17, v3

    .line 206
    .line 207
    invoke-static/range {v12 .. v23}, Landroidx/sqlite/SQLite;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_7
    move-object/from16 v19, v2

    .line 212
    .line 213
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 214
    .line 215
    .line 216
    :goto_2
    return-object v11

    .line 217
    :pswitch_1
    check-cast v0, Lnet/newpipe/app/model/Link;

    .line 218
    .line 219
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 220
    .line 221
    move-object/from16 v2, p2

    .line 222
    .line 223
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 224
    .line 225
    move-object/from16 v3, p3

    .line 226
    .line 227
    check-cast v3, Ljava/lang/Integer;

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    and-int/lit8 v1, v3, 0x11

    .line 237
    .line 238
    if-eq v1, v4, :cond_8

    .line 239
    .line 240
    move v9, v10

    .line 241
    :cond_8
    and-int/lit8 v1, v3, 0x1

    .line 242
    .line 243
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 244
    .line 245
    invoke-virtual {v2, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_9

    .line 250
    .line 251
    iget-object v12, v0, Lnet/newpipe/app/model/Link;->action:Ljava/lang/String;

    .line 252
    .line 253
    const/16 v29, 0x0

    .line 254
    .line 255
    const v30, 0x3fffe

    .line 256
    .line 257
    .line 258
    const/4 v13, 0x0

    .line 259
    const-wide/16 v14, 0x0

    .line 260
    .line 261
    const-wide/16 v16, 0x0

    .line 262
    .line 263
    const-wide/16 v18, 0x0

    .line 264
    .line 265
    const/16 v20, 0x0

    .line 266
    .line 267
    const-wide/16 v21, 0x0

    .line 268
    .line 269
    const/16 v23, 0x0

    .line 270
    .line 271
    const/16 v24, 0x0

    .line 272
    .line 273
    const/16 v25, 0x0

    .line 274
    .line 275
    const/16 v26, 0x0

    .line 276
    .line 277
    const/16 v27, 0x0

    .line 278
    .line 279
    move-object/from16 v28, v2

    .line 280
    .line 281
    invoke-static/range {v12 .. v30}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_9
    move-object/from16 v28, v2

    .line 286
    .line 287
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 288
    .line 289
    .line 290
    :goto_3
    return-object v11

    .line 291
    :pswitch_2
    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;

    .line 292
    .line 293
    check-cast v1, Ljava/lang/Throwable;

    .line 294
    .line 295
    move-object/from16 v1, p2

    .line 296
    .line 297
    check-cast v1, Lkotlin/Unit;

    .line 298
    .line 299
    move-object/from16 v1, p3

    .line 300
    .line 301
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 302
    .line 303
    invoke-virtual {v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    .line 304
    .line 305
    .line 306
    return-object v11

    .line 307
    :pswitch_3
    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 308
    .line 309
    check-cast v1, Ljava/lang/Throwable;

    .line 310
    .line 311
    move-object/from16 v1, p2

    .line 312
    .line 313
    check-cast v1, Lkotlin/Unit;

    .line 314
    .line 315
    move-object/from16 v1, p3

    .line 316
    .line 317
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 318
    .line 319
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->owner$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 320
    .line 321
    const/4 v2, 0x0

    .line 322
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    return-object v11

    .line 329
    :pswitch_4
    check-cast v0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 330
    .line 331
    check-cast v1, Ljava/lang/Throwable;

    .line 332
    .line 333
    move-object/from16 v2, p3

    .line 334
    .line 335
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    return-object v11

    .line 341
    :pswitch_5
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 342
    .line 343
    check-cast v1, Landroidx/navigation3/runtime/NavEntry;

    .line 344
    .line 345
    move-object/from16 v2, p2

    .line 346
    .line 347
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 348
    .line 349
    move-object/from16 v3, p3

    .line 350
    .line 351
    check-cast v3, Ljava/lang/Integer;

    .line 352
    .line 353
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    and-int/lit8 v4, v3, 0x6

    .line 358
    .line 359
    if-nez v4, :cond_b

    .line 360
    .line 361
    move-object v4, v2

    .line 362
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 363
    .line 364
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_a

    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_a
    move v7, v8

    .line 372
    :goto_4
    or-int/2addr v3, v7

    .line 373
    :cond_b
    and-int/lit8 v4, v3, 0x13

    .line 374
    .line 375
    if-eq v4, v6, :cond_c

    .line 376
    .line 377
    move v4, v10

    .line 378
    goto :goto_5

    .line 379
    :cond_c
    move v4, v9

    .line 380
    :goto_5
    and-int/2addr v3, v10

    .line 381
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 382
    .line 383
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    if-eqz v3, :cond_10

    .line 388
    .line 389
    iget-object v3, v1, Landroidx/navigation3/runtime/NavEntry;->contentKey:Ljava/lang/Object;

    .line 390
    .line 391
    sget-object v4, Landroidx/navigation3/scene/SceneSetupNavEntryDecoratorKt;->LocalEntriesToExcludeFromCurrentScene:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 392
    .line 393
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    check-cast v4, Ljava/util/Set;

    .line 398
    .line 399
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-nez v4, :cond_f

    .line 404
    .line 405
    const v4, 0x5ddf5193

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 409
    .line 410
    .line 411
    const v4, 0x4517ba6f

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2, v4, v3}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    if-ne v4, v5, :cond_e

    .line 422
    .line 423
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    if-nez v4, :cond_d

    .line 428
    .line 429
    new-instance v4, Landroidx/compose/runtime/MovableContent;

    .line 430
    .line 431
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 432
    .line 433
    .line 434
    new-instance v5, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;

    .line 435
    .line 436
    invoke-direct {v5, v4, v8}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 437
    .line 438
    .line 439
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 440
    .line 441
    const v6, 0x3d8e5091

    .line 442
    .line 443
    .line 444
    invoke-direct {v4, v6, v10, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    :cond_d
    check-cast v4, Lkotlin/jvm/functions/Function3;

    .line 451
    .line 452
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :cond_e
    check-cast v4, Lkotlin/jvm/functions/Function3;

    .line 456
    .line 457
    new-instance v0, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0;

    .line 458
    .line 459
    invoke-direct {v0, v1, v9}, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation3/runtime/NavEntry;I)V

    .line 460
    .line 461
    .line 462
    const v1, -0x2fed5f98

    .line 463
    .line 464
    .line 465
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    const/16 v1, 0x36

    .line 470
    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-interface {v4, v0, v2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 482
    .line 483
    .line 484
    goto :goto_6

    .line 485
    :cond_f
    const v0, 0x5df3ef91

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 492
    .line 493
    .line 494
    goto :goto_6

    .line 495
    :cond_10
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 496
    .line 497
    .line 498
    :goto_6
    return-object v11

    .line 499
    :pswitch_6
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 500
    .line 501
    check-cast v1, Landroidx/navigation3/runtime/NavEntry;

    .line 502
    .line 503
    move-object/from16 v2, p2

    .line 504
    .line 505
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 506
    .line 507
    move-object/from16 v4, p3

    .line 508
    .line 509
    check-cast v4, Ljava/lang/Integer;

    .line 510
    .line 511
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    and-int/lit8 v12, v4, 0x6

    .line 516
    .line 517
    if-nez v12, :cond_12

    .line 518
    .line 519
    move-object v12, v2

    .line 520
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 521
    .line 522
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v12

    .line 526
    if-eqz v12, :cond_11

    .line 527
    .line 528
    move v8, v7

    .line 529
    :cond_11
    or-int/2addr v4, v8

    .line 530
    :cond_12
    and-int/lit8 v8, v4, 0x13

    .line 531
    .line 532
    if-eq v8, v6, :cond_13

    .line 533
    .line 534
    move v6, v10

    .line 535
    goto :goto_7

    .line 536
    :cond_13
    move v6, v9

    .line 537
    :goto_7
    and-int/lit8 v8, v4, 0x1

    .line 538
    .line 539
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 540
    .line 541
    invoke-virtual {v2, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    if-eqz v6, :cond_1c

    .line 546
    .line 547
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    check-cast v0, Ljava/util/List;

    .line 552
    .line 553
    and-int/lit8 v4, v4, 0xe

    .line 554
    .line 555
    if-ne v4, v7, :cond_14

    .line 556
    .line 557
    goto :goto_8

    .line 558
    :cond_14
    move v10, v9

    .line 559
    :goto_8
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    if-nez v10, :cond_15

    .line 564
    .line 565
    if-ne v4, v5, :cond_16

    .line 566
    .line 567
    :cond_15
    new-instance v4, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 568
    .line 569
    const/16 v5, 0x17

    .line 570
    .line 571
    invoke-direct {v4, v1, v5}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    :cond_16
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 578
    .line 579
    instance-of v5, v0, Ljava/util/RandomAccess;

    .line 580
    .line 581
    if-eqz v5, :cond_18

    .line 582
    .line 583
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 584
    .line 585
    .line 586
    move-result v5

    .line 587
    :goto_9
    if-ge v9, v5, :cond_1b

    .line 588
    .line 589
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v6

    .line 593
    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v6

    .line 597
    check-cast v6, Ljava/lang/Boolean;

    .line 598
    .line 599
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 600
    .line 601
    .line 602
    move-result v6

    .line 603
    if-eqz v6, :cond_17

    .line 604
    .line 605
    goto :goto_a

    .line 606
    :cond_17
    add-int/lit8 v9, v9, 0x1

    .line 607
    .line 608
    goto :goto_9

    .line 609
    :cond_18
    if-eqz v0, :cond_19

    .line 610
    .line 611
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    if-eqz v5, :cond_19

    .line 616
    .line 617
    goto :goto_b

    .line 618
    :cond_19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 623
    .line 624
    .line 625
    move-result v5

    .line 626
    if-eqz v5, :cond_1b

    .line 627
    .line 628
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    check-cast v5, Ljava/lang/Boolean;

    .line 637
    .line 638
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 639
    .line 640
    .line 641
    move-result v5

    .line 642
    if-eqz v5, :cond_1a

    .line 643
    .line 644
    :goto_a
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 645
    .line 646
    goto :goto_c

    .line 647
    :cond_1b
    :goto_b
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 648
    .line 649
    :goto_c
    invoke-static {v0, v2}, Lokhttp3/Cookie$Companion;->rememberLifecycleOwner(Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/compose/ComposeLifecycleOwner;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    sget-object v4, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 654
    .line 655
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    new-instance v4, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0;

    .line 660
    .line 661
    const/4 v5, 0x3

    .line 662
    invoke-direct {v4, v1, v5}, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation3/runtime/NavEntry;I)V

    .line 663
    .line 664
    .line 665
    const v1, -0x6624bf14

    .line 666
    .line 667
    .line 668
    invoke-static {v1, v4, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 673
    .line 674
    .line 675
    goto :goto_d

    .line 676
    :cond_1c
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 677
    .line 678
    .line 679
    :goto_d
    return-object v11

    .line 680
    :pswitch_7
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 681
    .line 682
    check-cast v1, Landroidx/navigation3/runtime/NavEntry;

    .line 683
    .line 684
    move-object/from16 v2, p2

    .line 685
    .line 686
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 687
    .line 688
    move-object/from16 v3, p3

    .line 689
    .line 690
    check-cast v3, Ljava/lang/Integer;

    .line 691
    .line 692
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    and-int/lit8 v4, v3, 0x6

    .line 697
    .line 698
    if-nez v4, :cond_1e

    .line 699
    .line 700
    move-object v4, v2

    .line 701
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 702
    .line 703
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    if-eqz v4, :cond_1d

    .line 708
    .line 709
    goto :goto_e

    .line 710
    :cond_1d
    move v7, v8

    .line 711
    :goto_e
    or-int/2addr v3, v7

    .line 712
    :cond_1e
    and-int/lit8 v4, v3, 0x13

    .line 713
    .line 714
    if-eq v4, v6, :cond_1f

    .line 715
    .line 716
    move v9, v10

    .line 717
    :cond_1f
    and-int/2addr v3, v10

    .line 718
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 719
    .line 720
    invoke-virtual {v2, v3, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 721
    .line 722
    .line 723
    move-result v3

    .line 724
    if-eqz v3, :cond_20

    .line 725
    .line 726
    iget-object v3, v1, Landroidx/navigation3/runtime/NavEntry;->contentKey:Ljava/lang/Object;

    .line 727
    .line 728
    new-instance v4, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0;

    .line 729
    .line 730
    invoke-direct {v4, v1, v8}, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation3/runtime/NavEntry;I)V

    .line 731
    .line 732
    .line 733
    const v1, 0x73a5348

    .line 734
    .line 735
    .line 736
    invoke-static {v1, v4, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    const/16 v4, 0x30

    .line 741
    .line 742
    invoke-interface {v0, v3, v1, v2, v4}, Landroidx/compose/runtime/saveable/SaveableStateHolder;->SaveableStateProvider(Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 743
    .line 744
    .line 745
    goto :goto_f

    .line 746
    :cond_20
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 747
    .line 748
    .line 749
    :goto_f
    return-object v11

    .line 750
    :pswitch_8
    check-cast v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 751
    .line 752
    check-cast v1, Landroidx/navigation3/runtime/NavEntry;

    .line 753
    .line 754
    move-object/from16 v2, p2

    .line 755
    .line 756
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 757
    .line 758
    move-object/from16 v4, p3

    .line 759
    .line 760
    check-cast v4, Ljava/lang/Integer;

    .line 761
    .line 762
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 763
    .line 764
    .line 765
    move-result v4

    .line 766
    and-int/lit8 v12, v4, 0x6

    .line 767
    .line 768
    if-nez v12, :cond_22

    .line 769
    .line 770
    move-object v12, v2

    .line 771
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 772
    .line 773
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v12

    .line 777
    if-eqz v12, :cond_21

    .line 778
    .line 779
    goto :goto_10

    .line 780
    :cond_21
    move v7, v8

    .line 781
    :goto_10
    or-int/2addr v4, v7

    .line 782
    :cond_22
    and-int/lit8 v7, v4, 0x13

    .line 783
    .line 784
    if-eq v7, v6, :cond_23

    .line 785
    .line 786
    move v9, v10

    .line 787
    :cond_23
    and-int/2addr v4, v10

    .line 788
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 789
    .line 790
    invoke-virtual {v2, v4, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 791
    .line 792
    .line 793
    move-result v4

    .line 794
    if-eqz v4, :cond_2a

    .line 795
    .line 796
    iget-object v4, v1, Landroidx/navigation3/runtime/NavEntry;->contentKey:Ljava/lang/Object;

    .line 797
    .line 798
    sget-object v6, Landroidx/savedstate/compose/LocalSavedStateRegistryOwnerKt;->LocalSavedStateRegistryOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 799
    .line 800
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v6

    .line 804
    check-cast v6, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 805
    .line 806
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v7

    .line 810
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    move-result v8

    .line 814
    or-int/2addr v7, v8

    .line 815
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    move-result v8

    .line 819
    or-int/2addr v7, v8

    .line 820
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v8

    .line 824
    if-nez v7, :cond_24

    .line 825
    .line 826
    if-ne v8, v5, :cond_27

    .line 827
    .line 828
    :cond_24
    iget-object v7, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->defaultArgs:Landroid/os/Bundle;

    .line 829
    .line 830
    iget-object v8, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->defaultCreationExtras:Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 831
    .line 832
    iget-object v9, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->defaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 833
    .line 834
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->getStateHolder()Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 844
    .line 845
    .line 846
    move-result-object v12

    .line 847
    iget-object v12, v12, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->entries:Landroidx/collection/MutableScatterMap;

    .line 848
    .line 849
    invoke-virtual {v12, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v13

    .line 853
    if-nez v13, :cond_25

    .line 854
    .line 855
    new-instance v13, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 856
    .line 857
    invoke-direct {v13, v4}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;-><init>(Ljava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v12, v4, v13}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    :cond_25
    check-cast v13, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 864
    .line 865
    iget-object v14, v13, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->store:Landroidx/lifecycle/ViewModelStore;

    .line 866
    .line 867
    if-nez v6, :cond_26

    .line 868
    .line 869
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    .line 871
    .line 872
    new-instance v6, Landroidx/lifecycle/viewmodel/ViewModelStoreOwnerFactory$ViewModelStoreOwner$1;

    .line 873
    .line 874
    invoke-direct {v6, v14, v9, v8, v7}, Landroidx/lifecycle/viewmodel/ViewModelStoreOwnerFactory$ViewModelStoreOwner$1;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroid/os/Bundle;)V

    .line 875
    .line 876
    .line 877
    move-object v8, v6

    .line 878
    goto :goto_11

    .line 879
    :cond_26
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 880
    .line 881
    .line 882
    invoke-interface {v6}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    .line 883
    .line 884
    .line 885
    move-result-object v13

    .line 886
    invoke-interface {v6}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 887
    .line 888
    .line 889
    move-result-object v15

    .line 890
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 894
    .line 895
    .line 896
    new-instance v12, Landroidx/lifecycle/viewmodel/ViewModelStoreOwnerFactory$ViewModelStoreOwner$2;

    .line 897
    .line 898
    move-object/from16 v18, v7

    .line 899
    .line 900
    move-object/from16 v17, v8

    .line 901
    .line 902
    move-object/from16 v16, v9

    .line 903
    .line 904
    invoke-direct/range {v12 .. v18}, Landroidx/lifecycle/viewmodel/ViewModelStoreOwnerFactory$ViewModelStoreOwner$2;-><init>(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroid/os/Bundle;)V

    .line 905
    .line 906
    .line 907
    move-object v8, v12

    .line 908
    :goto_11
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 909
    .line 910
    .line 911
    :cond_27
    check-cast v8, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 912
    .line 913
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    move-result v6

    .line 917
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v7

    .line 921
    or-int/2addr v6, v7

    .line 922
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v7

    .line 926
    if-nez v6, :cond_28

    .line 927
    .line 928
    if-ne v7, v5, :cond_29

    .line 929
    .line 930
    :cond_28
    new-instance v7, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 931
    .line 932
    const/16 v5, 0x1c

    .line 933
    .line 934
    invoke-direct {v7, v0, v4, v5}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 938
    .line 939
    .line 940
    :cond_29
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 941
    .line 942
    invoke-static {v8, v7, v2}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 943
    .line 944
    .line 945
    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->LocalViewModelStoreOwner:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 946
    .line 947
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    new-instance v4, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0;

    .line 952
    .line 953
    invoke-direct {v4, v1, v10}, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation3/runtime/NavEntry;I)V

    .line 954
    .line 955
    .line 956
    const v1, 0x4217f4fd

    .line 957
    .line 958
    .line 959
    invoke-static {v1, v4, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 960
    .line 961
    .line 962
    move-result-object v1

    .line 963
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 964
    .line 965
    .line 966
    goto :goto_12

    .line 967
    :cond_2a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 968
    .line 969
    .line 970
    :goto_12
    return-object v11

    .line 971
    :pswitch_9
    check-cast v0, Landroidx/compose/runtime/MovableContent;

    .line 972
    .line 973
    move-object/from16 v2, p2

    .line 974
    .line 975
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 976
    .line 977
    move-object/from16 v3, p3

    .line 978
    .line 979
    check-cast v3, Ljava/lang/Integer;

    .line 980
    .line 981
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 982
    .line 983
    .line 984
    move-result v3

    .line 985
    and-int/lit8 v4, v3, 0x6

    .line 986
    .line 987
    if-nez v4, :cond_2d

    .line 988
    .line 989
    and-int/lit8 v4, v3, 0x8

    .line 990
    .line 991
    if-nez v4, :cond_2b

    .line 992
    .line 993
    move-object v4, v2

    .line 994
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 995
    .line 996
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 997
    .line 998
    .line 999
    move-result v4

    .line 1000
    goto :goto_13

    .line 1001
    :cond_2b
    move-object v4, v2

    .line 1002
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 1003
    .line 1004
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v4

    .line 1008
    :goto_13
    if-eqz v4, :cond_2c

    .line 1009
    .line 1010
    goto :goto_14

    .line 1011
    :cond_2c
    move v7, v8

    .line 1012
    :goto_14
    or-int/2addr v3, v7

    .line 1013
    :cond_2d
    and-int/lit8 v4, v3, 0x13

    .line 1014
    .line 1015
    if-eq v4, v6, :cond_2e

    .line 1016
    .line 1017
    move v4, v10

    .line 1018
    goto :goto_15

    .line 1019
    :cond_2e
    move v4, v9

    .line 1020
    :goto_15
    and-int/2addr v3, v10

    .line 1021
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1022
    .line 1023
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v3

    .line 1027
    if-eqz v3, :cond_2f

    .line 1028
    .line 1029
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v3

    .line 1033
    invoke-virtual {v2, v0, v3, v1, v9}, Landroidx/compose/runtime/GapComposer;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Ljava/lang/Object;Z)V

    .line 1034
    .line 1035
    .line 1036
    goto :goto_16

    .line 1037
    :cond_2f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1038
    .line 1039
    .line 1040
    :goto_16
    return-object v11

    .line 1041
    :pswitch_a
    check-cast v0, Landroidx/compose/material3/internal/FloatProducer;

    .line 1042
    .line 1043
    check-cast v1, Landroidx/compose/ui/layout/MeasureScope;

    .line 1044
    .line 1045
    move-object/from16 v2, p2

    .line 1046
    .line 1047
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 1048
    .line 1049
    move-object/from16 v3, p3

    .line 1050
    .line 1051
    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    .line 1052
    .line 1053
    iget-wide v3, v3, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1054
    .line 1055
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v2

    .line 1059
    iget v3, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 1060
    .line 1061
    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 1062
    .line 1063
    new-instance v5, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 1064
    .line 1065
    const/16 v6, 0x15

    .line 1066
    .line 1067
    invoke-direct {v5, v2, v0, v6}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1068
    .line 1069
    .line 1070
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 1071
    .line 1072
    invoke-interface {v1, v3, v4, v0, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    return-object v0

    .line 1077
    :pswitch_b
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 1078
    .line 1079
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 1080
    .line 1081
    move-object/from16 v1, p2

    .line 1082
    .line 1083
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1084
    .line 1085
    move-object/from16 v2, p3

    .line 1086
    .line 1087
    check-cast v2, Ljava/lang/Integer;

    .line 1088
    .line 1089
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1090
    .line 1091
    .line 1092
    move-result v2

    .line 1093
    and-int/lit8 v3, v2, 0x11

    .line 1094
    .line 1095
    if-eq v3, v4, :cond_30

    .line 1096
    .line 1097
    move v3, v10

    .line 1098
    goto :goto_17

    .line 1099
    :cond_30
    move v3, v9

    .line 1100
    :goto_17
    and-int/2addr v2, v10

    .line 1101
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1102
    .line 1103
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v2

    .line 1107
    if-eqz v2, :cond_31

    .line 1108
    .line 1109
    invoke-static {v0, v1, v9}, Landroidx/compose/material3/TabKt;->TabBaselineLayout(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 1110
    .line 1111
    .line 1112
    goto :goto_18

    .line 1113
    :cond_31
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1114
    .line 1115
    .line 1116
    :goto_18
    return-object v11

    .line 1117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
