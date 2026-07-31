.class public final synthetic Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 13
    iput p4, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "-"

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 9
    .line 10
    const/16 v9, 0x12

    .line 11
    .line 12
    const/16 v10, 0x10

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v12, 0x2

    .line 16
    const/4 v13, 0x4

    .line 17
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 18
    .line 19
    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    const/16 v16, 0x20

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    iget-object v3, v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v4, v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v0, v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    check-cast v0, Landroidx/compose/foundation/pager/PagerState;

    .line 35
    .line 36
    check-cast v4, Ljava/util/List;

    .line 37
    .line 38
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 39
    .line 40
    move-object/from16 v1, p1

    .line 41
    .line 42
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 43
    .line 44
    move-object/from16 v2, p2

    .line 45
    .line 46
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 47
    .line 48
    move-object/from16 v8, p3

    .line 49
    .line 50
    check-cast v8, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    and-int/lit8 v10, v8, 0x6

    .line 60
    .line 61
    if-nez v10, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-eqz v10, :cond_0

    .line 68
    .line 69
    move v12, v13

    .line 70
    :cond_0
    or-int/2addr v8, v12

    .line 71
    :cond_1
    and-int/lit8 v10, v8, 0x13

    .line 72
    .line 73
    if-eq v10, v9, :cond_2

    .line 74
    .line 75
    move v5, v7

    .line 76
    :cond_2
    and-int/2addr v7, v8

    .line 77
    invoke-virtual {v2, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_5

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    or-int/2addr v7, v8

    .line 100
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    if-nez v7, :cond_3

    .line 105
    .line 106
    if-ne v8, v14, :cond_4

    .line 107
    .line 108
    :cond_3
    new-instance v8, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 109
    .line 110
    invoke-direct {v8, v4, v0, v11}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;-><init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 117
    .line 118
    invoke-static {v2, v5, v8}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    sget-object v25, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 122
    .line 123
    new-instance v5, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 124
    .line 125
    invoke-direct {v5, v6, v6, v6, v6}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 126
    .line 127
    .line 128
    new-instance v6, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;

    .line 129
    .line 130
    invoke-direct {v6, v1, v4, v3, v13}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 131
    .line 132
    .line 133
    const v1, 0x4032c9e5

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v6, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 137
    .line 138
    .line 139
    move-result-object v31

    .line 140
    const v33, 0x180180

    .line 141
    .line 142
    .line 143
    const/16 v34, 0x3fba

    .line 144
    .line 145
    const/16 v21, 0x0

    .line 146
    .line 147
    const/16 v23, 0x0

    .line 148
    .line 149
    const/16 v24, 0x0

    .line 150
    .line 151
    const/16 v26, 0x0

    .line 152
    .line 153
    const/16 v27, 0x0

    .line 154
    .line 155
    const/16 v28, 0x0

    .line 156
    .line 157
    const/16 v29, 0x0

    .line 158
    .line 159
    const/16 v30, 0x0

    .line 160
    .line 161
    move-object/from16 v20, v0

    .line 162
    .line 163
    move-object/from16 v32, v2

    .line 164
    .line 165
    move-object/from16 v22, v5

    .line 166
    .line 167
    invoke-static/range {v20 .. v34}, Landroidx/compose/ui/unit/DpKt;->HorizontalPager--8jOkeI(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;ILandroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_5
    move-object/from16 v32, v2

    .line 172
    .line 173
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 174
    .line 175
    .line 176
    :goto_0
    return-object v15

    .line 177
    :pswitch_0
    check-cast v0, Ljava/util/ArrayList;

    .line 178
    .line 179
    move-object/from16 v18, v4

    .line 180
    .line 181
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 182
    .line 183
    move-object/from16 v19, v3

    .line 184
    .line 185
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 186
    .line 187
    move-object/from16 v1, p1

    .line 188
    .line 189
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 190
    .line 191
    move-object/from16 v2, p2

    .line 192
    .line 193
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 194
    .line 195
    move-object/from16 v3, p3

    .line 196
    .line 197
    check-cast v3, Ljava/lang/Integer;

    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    and-int/lit8 v1, v3, 0x11

    .line 207
    .line 208
    if-eq v1, v10, :cond_6

    .line 209
    .line 210
    move v1, v7

    .line 211
    goto :goto_1

    .line 212
    :cond_6
    move v1, v5

    .line 213
    :goto_1
    and-int/2addr v3, v7

    .line 214
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_8

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_7

    .line 225
    .line 226
    const v0, -0xd4f32c1

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 230
    .line 231
    .line 232
    const/4 v10, 0x0

    .line 233
    const/16 v11, 0x8

    .line 234
    .line 235
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 236
    .line 237
    const/high16 v7, 0x41800000    # 16.0f

    .line 238
    .line 239
    const/high16 v8, 0x41000000    # 8.0f

    .line 240
    .line 241
    move v9, v7

    .line 242
    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 243
    .line 244
    .line 245
    move-result-object v16

    .line 246
    const/16 v21, 0x0

    .line 247
    .line 248
    const/16 v22, 0x2

    .line 249
    .line 250
    const/16 v17, 0x0

    .line 251
    .line 252
    move-object/from16 v20, v2

    .line 253
    .line 254
    invoke-static/range {v16 .. v22}, Lorg/wikipedia/search/NoSearchResultsKt;->SemanticSearchResultHeader(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 255
    .line 256
    .line 257
    move-object/from16 v0, v20

    .line 258
    .line 259
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_7
    move-object v0, v2

    .line 264
    const v1, -0xd4b04e4

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_8
    move-object v0, v2

    .line 275
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 276
    .line 277
    .line 278
    :goto_2
    return-object v15

    .line 279
    :pswitch_1
    check-cast v4, Ljava/util/List;

    .line 280
    .line 281
    move-object v10, v0

    .line 282
    check-cast v10, Ljava/lang/String;

    .line 283
    .line 284
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 285
    .line 286
    move-object/from16 v0, p1

    .line 287
    .line 288
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 289
    .line 290
    move-object/from16 v1, p2

    .line 291
    .line 292
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 293
    .line 294
    move-object/from16 v2, p3

    .line 295
    .line 296
    check-cast v2, Ljava/lang/Integer;

    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    and-int/lit8 v17, v2, 0x6

    .line 306
    .line 307
    if-nez v17, :cond_a

    .line 308
    .line 309
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v17

    .line 313
    if-eqz v17, :cond_9

    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_9
    move v13, v12

    .line 317
    :goto_3
    or-int/2addr v2, v13

    .line 318
    :cond_a
    and-int/lit8 v13, v2, 0x13

    .line 319
    .line 320
    if-eq v13, v9, :cond_b

    .line 321
    .line 322
    move v9, v7

    .line 323
    goto :goto_4

    .line 324
    :cond_b
    move v9, v5

    .line 325
    :goto_4
    and-int/2addr v2, v7

    .line 326
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_11

    .line 331
    .line 332
    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    const/high16 v2, 0x41c00000    # 24.0f

    .line 337
    .line 338
    invoke-static {v0, v2, v6, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 343
    .line 344
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-static {v1}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-static {v0, v2, v7}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 357
    .line 358
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 359
    .line 360
    invoke-static {v2, v9, v1, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    iget-wide v12, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 365
    .line 366
    ushr-long v16, v12, v16

    .line 367
    .line 368
    xor-long v12, v12, v16

    .line 369
    .line 370
    long-to-int v9, v12

    .line 371
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 380
    .line 381
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 385
    .line 386
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 387
    .line 388
    .line 389
    move-object/from16 v20, v11

    .line 390
    .line 391
    iget-boolean v11, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 392
    .line 393
    if-eqz v11, :cond_c

    .line 394
    .line 395
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 396
    .line 397
    .line 398
    goto :goto_5

    .line 399
    :cond_c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 400
    .line 401
    .line 402
    :goto_5
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 403
    .line 404
    invoke-static {v1, v2, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 405
    .line 406
    .line 407
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 408
    .line 409
    invoke-static {v1, v12, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 410
    .line 411
    .line 412
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 417
    .line 418
    invoke-static {v1, v2, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 419
    .line 420
    .line 421
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 422
    .line 423
    invoke-static {v1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 424
    .line 425
    .line 426
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 427
    .line 428
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 429
    .line 430
    .line 431
    const v0, -0x539d353f

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 435
    .line 436
    .line 437
    sget-object v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;->onboardingItems:Ljava/util/List;

    .line 438
    .line 439
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    move v2, v5

    .line 444
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    .line 446
    .line 447
    move-result v9

    .line 448
    if-eqz v9, :cond_e

    .line 449
    .line 450
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v9

    .line 454
    add-int/lit8 v11, v2, 0x1

    .line 455
    .line 456
    if-ltz v2, :cond_d

    .line 457
    .line 458
    check-cast v9, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 459
    .line 460
    const/high16 v2, 0x3f800000    # 1.0f

    .line 461
    .line 462
    invoke-static {v8, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 463
    .line 464
    .line 465
    move-result-object v12

    .line 466
    const/high16 v2, 0x41400000    # 12.0f

    .line 467
    .line 468
    invoke-static {v12, v6, v2, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    const/4 v12, 0x6

    .line 473
    invoke-static {v2, v9, v1, v12, v5}, Lorg/wikipedia/compose/components/TabsBoxKt;->OnboardingListItem(Landroidx/compose/ui/Modifier;Lorg/wikipedia/compose/components/OnboardingItem;Landroidx/compose/runtime/GapComposer;II)V

    .line 474
    .line 475
    .line 476
    move v2, v11

    .line 477
    goto :goto_6

    .line 478
    :cond_d
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 479
    .line 480
    .line 481
    throw v20

    .line 482
    :cond_e
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 483
    .line 484
    .line 485
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 486
    .line 487
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 492
    .line 493
    iget-wide v5, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 494
    .line 495
    sget-object v0, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 496
    .line 497
    invoke-static {v8, v5, v6, v0}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 498
    .line 499
    .line 500
    move-result-object v8

    .line 501
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    if-nez v0, :cond_f

    .line 510
    .line 511
    if-ne v2, v14, :cond_10

    .line 512
    .line 513
    :cond_f
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 514
    .line 515
    const/16 v0, 0x1b

    .line 516
    .line 517
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    :cond_10
    move-object v11, v2

    .line 524
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 525
    .line 526
    const/4 v13, 0x0

    .line 527
    move-object v12, v1

    .line 528
    move-object v9, v4

    .line 529
    invoke-static/range {v8 .. v13}, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;->SearchExamplesView(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 533
    .line 534
    .line 535
    goto :goto_7

    .line 536
    :cond_11
    move-object v12, v1

    .line 537
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 538
    .line 539
    .line 540
    :goto_7
    return-object v15

    .line 541
    :pswitch_2
    move-object/from16 v20, v11

    .line 542
    .line 543
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 544
    .line 545
    check-cast v4, Lorg/wikipedia/feed/personalization/interest/ArticlesState;

    .line 546
    .line 547
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 548
    .line 549
    move-object/from16 v1, p1

    .line 550
    .line 551
    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;

    .line 552
    .line 553
    move-object/from16 v2, p2

    .line 554
    .line 555
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 556
    .line 557
    move-object/from16 v6, p3

    .line 558
    .line 559
    check-cast v6, Ljava/lang/Integer;

    .line 560
    .line 561
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 562
    .line 563
    .line 564
    move-result v6

    .line 565
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    and-int/lit8 v1, v6, 0x11

    .line 569
    .line 570
    if-eq v1, v10, :cond_12

    .line 571
    .line 572
    move v1, v7

    .line 573
    goto :goto_8

    .line 574
    :cond_12
    move v1, v5

    .line 575
    :goto_8
    and-int/2addr v6, v7

    .line 576
    invoke-virtual {v2, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 577
    .line 578
    .line 579
    move-result v1

    .line 580
    if-eqz v1, :cond_14

    .line 581
    .line 582
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 583
    .line 584
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 589
    .line 590
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    iget-wide v5, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 595
    .line 596
    ushr-long v9, v5, v16

    .line 597
    .line 598
    xor-long/2addr v5, v9

    .line 599
    long-to-int v5, v5

    .line 600
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 601
    .line 602
    .line 603
    move-result-object v6

    .line 604
    invoke-static {v2, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 609
    .line 610
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 614
    .line 615
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 616
    .line 617
    .line 618
    iget-boolean v10, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 619
    .line 620
    if-eqz v10, :cond_13

    .line 621
    .line 622
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 623
    .line 624
    .line 625
    goto :goto_9

    .line 626
    :cond_13
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 627
    .line 628
    .line 629
    :goto_9
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 630
    .line 631
    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 632
    .line 633
    .line 634
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 635
    .line 636
    invoke-static {v2, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 637
    .line 638
    .line 639
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 644
    .line 645
    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 646
    .line 647
    .line 648
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 649
    .line 650
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 651
    .line 652
    .line 653
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 654
    .line 655
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 656
    .line 657
    .line 658
    const/high16 v0, 0x3f800000    # 1.0f

    .line 659
    .line 660
    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 661
    .line 662
    .line 663
    move-result-object v21

    .line 664
    check-cast v4, Lorg/wikipedia/feed/personalization/interest/ArticlesState$Error;

    .line 665
    .line 666
    iget-object v0, v4, Lorg/wikipedia/feed/personalization/interest/ArticlesState$Error;->message:Ljava/lang/Throwable;

    .line 667
    .line 668
    new-instance v1, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 669
    .line 670
    move-object/from16 v5, v20

    .line 671
    .line 672
    const/16 v4, 0xe

    .line 673
    .line 674
    invoke-direct {v1, v3, v5, v5, v4}, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 675
    .line 676
    .line 677
    const/16 v26, 0x6006

    .line 678
    .line 679
    const/16 v27, 0x4

    .line 680
    .line 681
    const/16 v24, 0x1

    .line 682
    .line 683
    move-object/from16 v22, v0

    .line 684
    .line 685
    move-object/from16 v23, v1

    .line 686
    .line 687
    move-object/from16 v25, v2

    .line 688
    .line 689
    invoke-static/range {v21 .. v27}, Lokio/Okio__JvmOkioKt;->WikiErrorView(Landroidx/compose/ui/Modifier;Ljava/lang/Throwable;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 690
    .line 691
    .line 692
    move-object/from16 v0, v25

    .line 693
    .line 694
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 695
    .line 696
    .line 697
    goto :goto_a

    .line 698
    :cond_14
    move-object v0, v2

    .line 699
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 700
    .line 701
    .line 702
    :goto_a
    return-object v15

    .line 703
    :pswitch_3
    move-object v1, v4

    .line 704
    check-cast v1, Ljava/util/ArrayList;

    .line 705
    .line 706
    check-cast v0, Ljava/lang/String;

    .line 707
    .line 708
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 709
    .line 710
    move-object/from16 v2, p1

    .line 711
    .line 712
    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;

    .line 713
    .line 714
    move-object/from16 v4, p2

    .line 715
    .line 716
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 717
    .line 718
    move-object/from16 v6, p3

    .line 719
    .line 720
    check-cast v6, Ljava/lang/Integer;

    .line 721
    .line 722
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 723
    .line 724
    .line 725
    move-result v6

    .line 726
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    .line 728
    .line 729
    and-int/lit8 v2, v6, 0x11

    .line 730
    .line 731
    if-eq v2, v10, :cond_15

    .line 732
    .line 733
    move v2, v7

    .line 734
    goto :goto_b

    .line 735
    :cond_15
    move v2, v5

    .line 736
    :goto_b
    and-int/2addr v6, v7

    .line 737
    invoke-virtual {v4, v6, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    if-eqz v2, :cond_1a

    .line 742
    .line 743
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    if-ne v2, v14, :cond_16

    .line 748
    .line 749
    new-instance v2, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;

    .line 750
    .line 751
    const/16 v6, 0x1d

    .line 752
    .line 753
    invoke-direct {v2, v6}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;-><init>(I)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 757
    .line 758
    .line 759
    :cond_16
    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 760
    .line 761
    invoke-static {v8, v2}, Landroidx/compose/ui/layout/RulerKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 766
    .line 767
    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 768
    .line 769
    .line 770
    move-result-object v5

    .line 771
    iget-wide v8, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 772
    .line 773
    ushr-long v10, v8, v16

    .line 774
    .line 775
    xor-long/2addr v8, v10

    .line 776
    long-to-int v6, v8

    .line 777
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 778
    .line 779
    .line 780
    move-result-object v8

    .line 781
    invoke-static {v4, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 786
    .line 787
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 788
    .line 789
    .line 790
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 791
    .line 792
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 793
    .line 794
    .line 795
    iget-boolean v10, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 796
    .line 797
    if-eqz v10, :cond_17

    .line 798
    .line 799
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 800
    .line 801
    .line 802
    goto :goto_c

    .line 803
    :cond_17
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 804
    .line 805
    .line 806
    :goto_c
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 807
    .line 808
    invoke-static {v4, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 809
    .line 810
    .line 811
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 812
    .line 813
    invoke-static {v4, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 814
    .line 815
    .line 816
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 817
    .line 818
    .line 819
    move-result-object v5

    .line 820
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 821
    .line 822
    invoke-static {v4, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 823
    .line 824
    .line 825
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 826
    .line 827
    invoke-static {v4, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 828
    .line 829
    .line 830
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 831
    .line 832
    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v5

    .line 843
    if-nez v2, :cond_18

    .line 844
    .line 845
    if-ne v5, v14, :cond_19

    .line 846
    .line 847
    :cond_18
    new-instance v5, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 848
    .line 849
    const/16 v2, 0x18

    .line 850
    .line 851
    invoke-direct {v5, v3, v2}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 855
    .line 856
    .line 857
    :cond_19
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 858
    .line 859
    const/4 v6, 0x0

    .line 860
    const/4 v2, 0x0

    .line 861
    move-object v3, v5

    .line 862
    move-object v5, v4

    .line 863
    move-object v4, v3

    .line 864
    move-object v3, v0

    .line 865
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt;->TopicFilterChipRow(Ljava/util/ArrayList;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 869
    .line 870
    .line 871
    goto :goto_d

    .line 872
    :cond_1a
    move-object v5, v4

    .line 873
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 874
    .line 875
    .line 876
    :goto_d
    return-object v15

    .line 877
    :pswitch_4
    check-cast v0, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 878
    .line 879
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 880
    .line 881
    check-cast v3, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 882
    .line 883
    move-object/from16 v1, p1

    .line 884
    .line 885
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 886
    .line 887
    move-object/from16 v2, p2

    .line 888
    .line 889
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 890
    .line 891
    move-object/from16 v6, p3

    .line 892
    .line 893
    check-cast v6, Ljava/lang/Integer;

    .line 894
    .line 895
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 896
    .line 897
    .line 898
    move-result v6

    .line 899
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 900
    .line 901
    .line 902
    and-int/lit8 v8, v6, 0x6

    .line 903
    .line 904
    if-nez v8, :cond_1c

    .line 905
    .line 906
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 907
    .line 908
    .line 909
    move-result v8

    .line 910
    if-eqz v8, :cond_1b

    .line 911
    .line 912
    move v12, v13

    .line 913
    :cond_1b
    or-int/2addr v6, v12

    .line 914
    :cond_1c
    and-int/lit8 v8, v6, 0x13

    .line 915
    .line 916
    if-eq v8, v9, :cond_1d

    .line 917
    .line 918
    move v8, v7

    .line 919
    goto :goto_e

    .line 920
    :cond_1d
    move v8, v5

    .line 921
    :goto_e
    and-int/2addr v6, v7

    .line 922
    invoke-virtual {v2, v6, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 923
    .line 924
    .line 925
    move-result v6

    .line 926
    if-eqz v6, :cond_21

    .line 927
    .line 928
    invoke-static {v1}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->fillParentMaxWidth$default(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;)Landroidx/compose/ui/Modifier;

    .line 929
    .line 930
    .line 931
    move-result-object v1

    .line 932
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 933
    .line 934
    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 935
    .line 936
    .line 937
    move-result-object v6

    .line 938
    iget-wide v8, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 939
    .line 940
    ushr-long v10, v8, v16

    .line 941
    .line 942
    xor-long/2addr v8, v10

    .line 943
    long-to-int v8, v8

    .line 944
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 945
    .line 946
    .line 947
    move-result-object v9

    .line 948
    invoke-static {v2, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 953
    .line 954
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 955
    .line 956
    .line 957
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 958
    .line 959
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 960
    .line 961
    .line 962
    iget-boolean v11, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 963
    .line 964
    if-eqz v11, :cond_1e

    .line 965
    .line 966
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 967
    .line 968
    .line 969
    goto :goto_f

    .line 970
    :cond_1e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 971
    .line 972
    .line 973
    :goto_f
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 974
    .line 975
    invoke-static {v2, v6, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 976
    .line 977
    .line 978
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 979
    .line 980
    invoke-static {v2, v9, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 981
    .line 982
    .line 983
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 984
    .line 985
    .line 986
    move-result-object v6

    .line 987
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 988
    .line 989
    invoke-static {v2, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 990
    .line 991
    .line 992
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 993
    .line 994
    invoke-static {v2, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 995
    .line 996
    .line 997
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 998
    .line 999
    invoke-static {v2, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1000
    .line 1001
    .line 1002
    check-cast v0, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Error;

    .line 1003
    .line 1004
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Error;->message:Ljava/lang/Throwable;

    .line 1005
    .line 1006
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v1

    .line 1010
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1011
    .line 1012
    .line 1013
    move-result v6

    .line 1014
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v6

    .line 1018
    or-int/2addr v1, v6

    .line 1019
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v6

    .line 1023
    if-nez v1, :cond_1f

    .line 1024
    .line 1025
    if-ne v6, v14, :cond_20

    .line 1026
    .line 1027
    :cond_1f
    new-instance v6, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda2;

    .line 1028
    .line 1029
    invoke-direct {v6, v4, v3, v5}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;I)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1033
    .line 1034
    .line 1035
    :cond_20
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 1036
    .line 1037
    new-instance v1, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 1038
    .line 1039
    const/16 v4, 0xe

    .line 1040
    .line 1041
    const/4 v5, 0x0

    .line 1042
    invoke-direct {v1, v6, v5, v5, v4}, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 1043
    .line 1044
    .line 1045
    const/16 v26, 0x0

    .line 1046
    .line 1047
    const/16 v27, 0x15

    .line 1048
    .line 1049
    const/16 v21, 0x0

    .line 1050
    .line 1051
    const/16 v24, 0x0

    .line 1052
    .line 1053
    move-object/from16 v22, v0

    .line 1054
    .line 1055
    move-object/from16 v23, v1

    .line 1056
    .line 1057
    move-object/from16 v25, v2

    .line 1058
    .line 1059
    invoke-static/range {v21 .. v27}, Lokio/Okio__JvmOkioKt;->WikiErrorView(Landroidx/compose/ui/Modifier;Ljava/lang/Throwable;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 1060
    .line 1061
    .line 1062
    move-object/from16 v0, v25

    .line 1063
    .line 1064
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1065
    .line 1066
    .line 1067
    goto :goto_10

    .line 1068
    :cond_21
    move-object v0, v2

    .line 1069
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1070
    .line 1071
    .line 1072
    :goto_10
    return-object v15

    .line 1073
    :pswitch_5
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1074
    .line 1075
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 1076
    .line 1077
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 1078
    .line 1079
    move-object/from16 v1, p1

    .line 1080
    .line 1081
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 1082
    .line 1083
    move-object/from16 v2, p2

    .line 1084
    .line 1085
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1086
    .line 1087
    move-object/from16 v6, p3

    .line 1088
    .line 1089
    check-cast v6, Ljava/lang/Integer;

    .line 1090
    .line 1091
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1092
    .line 1093
    .line 1094
    move-result v6

    .line 1095
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1096
    .line 1097
    .line 1098
    and-int/lit8 v1, v6, 0x11

    .line 1099
    .line 1100
    if-eq v1, v10, :cond_22

    .line 1101
    .line 1102
    move v5, v7

    .line 1103
    :cond_22
    and-int/lit8 v1, v6, 0x1

    .line 1104
    .line 1105
    invoke-virtual {v2, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v1

    .line 1109
    if-eqz v1, :cond_27

    .line 1110
    .line 1111
    sget-object v16, Lorg/wikipedia/feed/ForYouCardKt;->lambda$-429809904:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1112
    .line 1113
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1114
    .line 1115
    .line 1116
    move-result v1

    .line 1117
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v5

    .line 1121
    if-nez v1, :cond_23

    .line 1122
    .line 1123
    if-ne v5, v14, :cond_24

    .line 1124
    .line 1125
    :cond_23
    new-instance v5, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;

    .line 1126
    .line 1127
    invoke-direct {v5, v0, v3, v13}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1131
    .line 1132
    .line 1133
    :cond_24
    move-object/from16 v17, v5

    .line 1134
    .line 1135
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 1136
    .line 1137
    sget-object v19, Lorg/wikipedia/feed/ForYouCardKt;->lambda$-2108534547:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1138
    .line 1139
    const/16 v25, 0xc06

    .line 1140
    .line 1141
    const/16 v26, 0x1f4

    .line 1142
    .line 1143
    const/16 v18, 0x0

    .line 1144
    .line 1145
    const/16 v20, 0x0

    .line 1146
    .line 1147
    const/16 v21, 0x0

    .line 1148
    .line 1149
    const/16 v22, 0x0

    .line 1150
    .line 1151
    const/16 v23, 0x0

    .line 1152
    .line 1153
    move-object/from16 v24, v2

    .line 1154
    .line 1155
    invoke-static/range {v16 .. v26}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 1156
    .line 1157
    .line 1158
    move-object/from16 v0, v24

    .line 1159
    .line 1160
    sget-object v16, Lorg/wikipedia/feed/ForYouCardKt;->lambda$1540276921:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1161
    .line 1162
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1163
    .line 1164
    .line 1165
    move-result v1

    .line 1166
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v2

    .line 1170
    if-nez v1, :cond_25

    .line 1171
    .line 1172
    if-ne v2, v14, :cond_26

    .line 1173
    .line 1174
    :cond_25
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;

    .line 1175
    .line 1176
    const/4 v1, 0x3

    .line 1177
    invoke-direct {v2, v4, v3, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1181
    .line 1182
    .line 1183
    :cond_26
    move-object/from16 v17, v2

    .line 1184
    .line 1185
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 1186
    .line 1187
    sget-object v19, Lorg/wikipedia/feed/ForYouCardKt;->lambda$-1101369002:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1188
    .line 1189
    const/16 v25, 0xc06

    .line 1190
    .line 1191
    const/16 v26, 0x1f4

    .line 1192
    .line 1193
    const/16 v18, 0x0

    .line 1194
    .line 1195
    const/16 v20, 0x0

    .line 1196
    .line 1197
    const/16 v21, 0x0

    .line 1198
    .line 1199
    const/16 v22, 0x0

    .line 1200
    .line 1201
    const/16 v23, 0x0

    .line 1202
    .line 1203
    move-object/from16 v24, v0

    .line 1204
    .line 1205
    invoke-static/range {v16 .. v26}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 1206
    .line 1207
    .line 1208
    goto :goto_11

    .line 1209
    :cond_27
    move-object/from16 v24, v2

    .line 1210
    .line 1211
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1212
    .line 1213
    .line 1214
    :goto_11
    return-object v15

    .line 1215
    :pswitch_6
    check-cast v0, Lorg/wikipedia/feed/CommunityContentState;

    .line 1216
    .line 1217
    check-cast v4, Lorg/wikipedia/dataclient/WikiSite;

    .line 1218
    .line 1219
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 1220
    .line 1221
    move-object/from16 v1, p1

    .line 1222
    .line 1223
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1224
    .line 1225
    move-object/from16 v2, p2

    .line 1226
    .line 1227
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1228
    .line 1229
    move-object/from16 v6, p3

    .line 1230
    .line 1231
    check-cast v6, Ljava/lang/Integer;

    .line 1232
    .line 1233
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1234
    .line 1235
    .line 1236
    move-result v6

    .line 1237
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1238
    .line 1239
    .line 1240
    and-int/lit8 v1, v6, 0x11

    .line 1241
    .line 1242
    if-eq v1, v10, :cond_28

    .line 1243
    .line 1244
    move v1, v7

    .line 1245
    goto :goto_12

    .line 1246
    :cond_28
    move v1, v5

    .line 1247
    :goto_12
    and-int/2addr v6, v7

    .line 1248
    invoke-virtual {v2, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1249
    .line 1250
    .line 1251
    move-result v1

    .line 1252
    if-eqz v1, :cond_2d

    .line 1253
    .line 1254
    iget-boolean v1, v0, Lorg/wikipedia/feed/CommunityContentState;->isLoadingMore:Z

    .line 1255
    .line 1256
    if-eqz v1, :cond_29

    .line 1257
    .line 1258
    const v0, -0x448fdc3d

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1262
    .line 1263
    .line 1264
    const/4 v1, 0x0

    .line 1265
    invoke-static {v1, v2, v5, v7}, Lorg/wikipedia/feed/ForYouCardKt;->LoadingIndicator(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1269
    .line 1270
    .line 1271
    goto :goto_13

    .line 1272
    :cond_29
    iget-boolean v1, v0, Lorg/wikipedia/feed/CommunityContentState;->canLoadMore:Z

    .line 1273
    .line 1274
    if-eqz v1, :cond_2c

    .line 1275
    .line 1276
    iget-object v0, v0, Lorg/wikipedia/feed/CommunityContentState;->cards:Ljava/util/List;

    .line 1277
    .line 1278
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1279
    .line 1280
    .line 1281
    move-result v0

    .line 1282
    if-nez v0, :cond_2c

    .line 1283
    .line 1284
    const v0, -0x448dc57d

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1291
    .line 1292
    .line 1293
    move-result v0

    .line 1294
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    if-nez v0, :cond_2a

    .line 1299
    .line 1300
    if-ne v1, v14, :cond_2b

    .line 1301
    .line 1302
    :cond_2a
    new-instance v1, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 1303
    .line 1304
    const/4 v0, 0x5

    .line 1305
    invoke-direct {v1, v3, v0}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1309
    .line 1310
    .line 1311
    :cond_2b
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 1312
    .line 1313
    const/16 v0, 0x30

    .line 1314
    .line 1315
    invoke-static {v4, v1, v2, v0}, Lorg/wikipedia/feed/ForYouCardKt;->LoadMoreButton(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1319
    .line 1320
    .line 1321
    goto :goto_13

    .line 1322
    :cond_2c
    const v0, -0x448966d3

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1329
    .line 1330
    .line 1331
    goto :goto_13

    .line 1332
    :cond_2d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1333
    .line 1334
    .line 1335
    :goto_13
    return-object v15

    .line 1336
    :pswitch_7
    move-object v1, v11

    .line 1337
    check-cast v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 1338
    .line 1339
    check-cast v4, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 1340
    .line 1341
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 1342
    .line 1343
    move-object/from16 v6, p1

    .line 1344
    .line 1345
    check-cast v6, Ljava/lang/Integer;

    .line 1346
    .line 1347
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1348
    .line 1349
    .line 1350
    move-result v6

    .line 1351
    move-object/from16 v8, p2

    .line 1352
    .line 1353
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 1354
    .line 1355
    move-object/from16 v10, p3

    .line 1356
    .line 1357
    check-cast v10, Ljava/lang/Integer;

    .line 1358
    .line 1359
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1360
    .line 1361
    .line 1362
    move-result v10

    .line 1363
    and-int/lit8 v11, v10, 0x6

    .line 1364
    .line 1365
    if-nez v11, :cond_2f

    .line 1366
    .line 1367
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1368
    .line 1369
    .line 1370
    move-result v11

    .line 1371
    if-eqz v11, :cond_2e

    .line 1372
    .line 1373
    move v12, v13

    .line 1374
    :cond_2e
    or-int/2addr v10, v12

    .line 1375
    :cond_2f
    and-int/lit8 v11, v10, 0x13

    .line 1376
    .line 1377
    if-eq v11, v9, :cond_30

    .line 1378
    .line 1379
    move v5, v7

    .line 1380
    :cond_30
    and-int/2addr v7, v10

    .line 1381
    invoke-virtual {v8, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v5

    .line 1385
    if-eqz v5, :cond_35

    .line 1386
    .line 1387
    iget-object v0, v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->date:Ljava/lang/String;

    .line 1388
    .line 1389
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    const-string v7, "dyk-"

    .line 1392
    .line 1393
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v17

    .line 1409
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1410
    .line 1411
    .line 1412
    move-result v0

    .line 1413
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v2

    .line 1417
    if-nez v0, :cond_31

    .line 1418
    .line 1419
    if-ne v2, v14, :cond_32

    .line 1420
    .line 1421
    :cond_31
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 1422
    .line 1423
    const/4 v0, 0x7

    .line 1424
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1428
    .line 1429
    .line 1430
    :cond_32
    move-object/from16 v19, v2

    .line 1431
    .line 1432
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 1433
    .line 1434
    if-eqz v4, :cond_33

    .line 1435
    .line 1436
    iget-object v11, v4, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;->items:Ljava/util/List;

    .line 1437
    .line 1438
    goto :goto_14

    .line 1439
    :cond_33
    move-object v11, v1

    .line 1440
    :goto_14
    if-nez v11, :cond_34

    .line 1441
    .line 1442
    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 1443
    .line 1444
    :cond_34
    move-object/from16 v20, v11

    .line 1445
    .line 1446
    const/16 v22, 0x0

    .line 1447
    .line 1448
    const/16 v16, 0x0

    .line 1449
    .line 1450
    move-object/from16 v18, v4

    .line 1451
    .line 1452
    move-object/from16 v21, v8

    .line 1453
    .line 1454
    invoke-static/range {v16 .. v22}, Lokio/Okio__OkioKt;->PageOverflowMenu(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function0;Ljava/util/List;Landroidx/compose/runtime/GapComposer;I)V

    .line 1455
    .line 1456
    .line 1457
    goto :goto_15

    .line 1458
    :cond_35
    move-object/from16 v21, v8

    .line 1459
    .line 1460
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1461
    .line 1462
    .line 1463
    :goto_15
    return-object v15

    .line 1464
    :pswitch_8
    move-object v1, v11

    .line 1465
    check-cast v0, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 1466
    .line 1467
    check-cast v4, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 1468
    .line 1469
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 1470
    .line 1471
    move-object/from16 v6, p1

    .line 1472
    .line 1473
    check-cast v6, Ljava/lang/Integer;

    .line 1474
    .line 1475
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1476
    .line 1477
    .line 1478
    move-result v6

    .line 1479
    move-object/from16 v8, p2

    .line 1480
    .line 1481
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 1482
    .line 1483
    move-object/from16 v10, p3

    .line 1484
    .line 1485
    check-cast v10, Ljava/lang/Integer;

    .line 1486
    .line 1487
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1488
    .line 1489
    .line 1490
    move-result v10

    .line 1491
    and-int/lit8 v11, v10, 0x6

    .line 1492
    .line 1493
    if-nez v11, :cond_37

    .line 1494
    .line 1495
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1496
    .line 1497
    .line 1498
    move-result v11

    .line 1499
    if-eqz v11, :cond_36

    .line 1500
    .line 1501
    move v12, v13

    .line 1502
    :cond_36
    or-int/2addr v10, v12

    .line 1503
    :cond_37
    and-int/lit8 v11, v10, 0x13

    .line 1504
    .line 1505
    if-eq v11, v9, :cond_38

    .line 1506
    .line 1507
    move v5, v7

    .line 1508
    :cond_38
    and-int/2addr v7, v10

    .line 1509
    invoke-virtual {v8, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v5

    .line 1513
    if-eqz v5, :cond_3d

    .line 1514
    .line 1515
    iget v0, v0, Lorg/wikipedia/feed/topread/TopReadCard;->age:I

    .line 1516
    .line 1517
    const-string/jumbo v5, "top-read-"

    .line 1518
    .line 1519
    .line 1520
    invoke-static {v0, v6, v5, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v17

    .line 1524
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v0

    .line 1528
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v2

    .line 1532
    if-nez v0, :cond_39

    .line 1533
    .line 1534
    if-ne v2, v14, :cond_3a

    .line 1535
    .line 1536
    :cond_39
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 1537
    .line 1538
    const/16 v0, 0x8

    .line 1539
    .line 1540
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1544
    .line 1545
    .line 1546
    :cond_3a
    move-object/from16 v19, v2

    .line 1547
    .line 1548
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 1549
    .line 1550
    if-eqz v4, :cond_3b

    .line 1551
    .line 1552
    iget-object v11, v4, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;->items:Ljava/util/List;

    .line 1553
    .line 1554
    goto :goto_16

    .line 1555
    :cond_3b
    move-object v11, v1

    .line 1556
    :goto_16
    if-nez v11, :cond_3c

    .line 1557
    .line 1558
    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 1559
    .line 1560
    :cond_3c
    move-object/from16 v20, v11

    .line 1561
    .line 1562
    const/16 v22, 0x0

    .line 1563
    .line 1564
    const/16 v16, 0x0

    .line 1565
    .line 1566
    move-object/from16 v18, v4

    .line 1567
    .line 1568
    move-object/from16 v21, v8

    .line 1569
    .line 1570
    invoke-static/range {v16 .. v22}, Lokio/Okio__OkioKt;->PageOverflowMenu(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function0;Ljava/util/List;Landroidx/compose/runtime/GapComposer;I)V

    .line 1571
    .line 1572
    .line 1573
    goto :goto_17

    .line 1574
    :cond_3d
    move-object/from16 v21, v8

    .line 1575
    .line 1576
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1577
    .line 1578
    .line 1579
    :goto_17
    return-object v15

    .line 1580
    :pswitch_9
    check-cast v0, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 1581
    .line 1582
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1583
    .line 1584
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 1585
    .line 1586
    move-object/from16 v1, p1

    .line 1587
    .line 1588
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 1589
    .line 1590
    move-object/from16 v2, p2

    .line 1591
    .line 1592
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1593
    .line 1594
    move-object/from16 v6, p3

    .line 1595
    .line 1596
    check-cast v6, Ljava/lang/Integer;

    .line 1597
    .line 1598
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1599
    .line 1600
    .line 1601
    move-result v6

    .line 1602
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1603
    .line 1604
    .line 1605
    and-int/lit8 v1, v6, 0x11

    .line 1606
    .line 1607
    if-eq v1, v10, :cond_3e

    .line 1608
    .line 1609
    move v5, v7

    .line 1610
    :cond_3e
    and-int/lit8 v1, v6, 0x1

    .line 1611
    .line 1612
    invoke-virtual {v2, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1613
    .line 1614
    .line 1615
    move-result v1

    .line 1616
    if-eqz v1, :cond_41

    .line 1617
    .line 1618
    iget-object v0, v0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->options:Ljava/util/List;

    .line 1619
    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v0

    .line 1624
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1625
    .line 1626
    .line 1627
    move-result v1

    .line 1628
    if-eqz v1, :cond_42

    .line 1629
    .line 1630
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v1

    .line 1634
    check-cast v1, Lorg/wikipedia/donate/donationreminder/OptionItem;

    .line 1635
    .line 1636
    new-instance v5, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 1637
    .line 1638
    const/16 v6, 0x1d

    .line 1639
    .line 1640
    invoke-direct {v5, v6, v1}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1641
    .line 1642
    .line 1643
    const v7, -0x3fea9e5a

    .line 1644
    .line 1645
    .line 1646
    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v18

    .line 1650
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1651
    .line 1652
    .line 1653
    move-result v5

    .line 1654
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1655
    .line 1656
    .line 1657
    move-result v7

    .line 1658
    or-int/2addr v5, v7

    .line 1659
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v7

    .line 1663
    if-nez v5, :cond_3f

    .line 1664
    .line 1665
    if-ne v7, v14, :cond_40

    .line 1666
    .line 1667
    :cond_3f
    new-instance v7, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 1668
    .line 1669
    const/16 v5, 0xd

    .line 1670
    .line 1671
    invoke-direct {v7, v4, v1, v3, v5}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1675
    .line 1676
    .line 1677
    :cond_40
    move-object/from16 v19, v7

    .line 1678
    .line 1679
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 1680
    .line 1681
    const/16 v27, 0x6

    .line 1682
    .line 1683
    const/16 v28, 0x1fc

    .line 1684
    .line 1685
    const/16 v20, 0x0

    .line 1686
    .line 1687
    const/16 v21, 0x0

    .line 1688
    .line 1689
    const/16 v22, 0x0

    .line 1690
    .line 1691
    const/16 v23, 0x0

    .line 1692
    .line 1693
    const/16 v24, 0x0

    .line 1694
    .line 1695
    const/16 v25, 0x0

    .line 1696
    .line 1697
    move-object/from16 v26, v2

    .line 1698
    .line 1699
    invoke-static/range {v18 .. v28}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 1700
    .line 1701
    .line 1702
    goto :goto_18

    .line 1703
    :cond_41
    move-object/from16 v26, v2

    .line 1704
    .line 1705
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1706
    .line 1707
    .line 1708
    :cond_42
    return-object v15

    .line 1709
    :pswitch_a
    check-cast v0, Ljava/lang/String;

    .line 1710
    .line 1711
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1712
    .line 1713
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 1714
    .line 1715
    move-object/from16 v1, p1

    .line 1716
    .line 1717
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 1718
    .line 1719
    move-object/from16 v2, p2

    .line 1720
    .line 1721
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1722
    .line 1723
    move-object/from16 v6, p3

    .line 1724
    .line 1725
    check-cast v6, Ljava/lang/Integer;

    .line 1726
    .line 1727
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1728
    .line 1729
    .line 1730
    move-result v6

    .line 1731
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1732
    .line 1733
    .line 1734
    and-int/lit8 v1, v6, 0x11

    .line 1735
    .line 1736
    if-eq v1, v10, :cond_43

    .line 1737
    .line 1738
    move v1, v7

    .line 1739
    goto :goto_19

    .line 1740
    :cond_43
    move v1, v5

    .line 1741
    :goto_19
    and-int/2addr v6, v7

    .line 1742
    invoke-virtual {v2, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1743
    .line 1744
    .line 1745
    move-result v1

    .line 1746
    if-eqz v1, :cond_47

    .line 1747
    .line 1748
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1749
    .line 1750
    .line 1751
    move-result v0

    .line 1752
    if-lez v0, :cond_46

    .line 1753
    .line 1754
    const v0, -0x67f6da43

    .line 1755
    .line 1756
    .line 1757
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1761
    .line 1762
    .line 1763
    move-result v0

    .line 1764
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v1

    .line 1768
    if-nez v0, :cond_44

    .line 1769
    .line 1770
    if-ne v1, v14, :cond_45

    .line 1771
    .line 1772
    :cond_44
    new-instance v1, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;

    .line 1773
    .line 1774
    invoke-direct {v1, v4, v3, v12}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 1775
    .line 1776
    .line 1777
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1778
    .line 1779
    .line 1780
    :cond_45
    move-object/from16 v16, v1

    .line 1781
    .line 1782
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 1783
    .line 1784
    sget-object v21, Lorg/wikipedia/compose/components/TabsBoxKt;->lambda$-1241504182:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1785
    .line 1786
    const/high16 v23, 0x180000

    .line 1787
    .line 1788
    const/16 v24, 0x3e

    .line 1789
    .line 1790
    const/16 v17, 0x0

    .line 1791
    .line 1792
    const/16 v18, 0x0

    .line 1793
    .line 1794
    const/16 v19, 0x0

    .line 1795
    .line 1796
    const/16 v20, 0x0

    .line 1797
    .line 1798
    move-object/from16 v22, v2

    .line 1799
    .line 1800
    invoke-static/range {v16 .. v24}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 1801
    .line 1802
    .line 1803
    move-object/from16 v0, v22

    .line 1804
    .line 1805
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1806
    .line 1807
    .line 1808
    goto :goto_1a

    .line 1809
    :cond_46
    move-object v0, v2

    .line 1810
    const v1, -0x67ea9f81

    .line 1811
    .line 1812
    .line 1813
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1817
    .line 1818
    .line 1819
    goto :goto_1a

    .line 1820
    :cond_47
    move-object v0, v2

    .line 1821
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1822
    .line 1823
    .line 1824
    :goto_1a
    return-object v15

    .line 1825
    :pswitch_b
    check-cast v0, Ljava/lang/String;

    .line 1826
    .line 1827
    check-cast v4, Ljava/util/List;

    .line 1828
    .line 1829
    check-cast v3, Landroidx/compose/material3/SnackbarHostState;

    .line 1830
    .line 1831
    move-object/from16 v1, p1

    .line 1832
    .line 1833
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 1834
    .line 1835
    move-object/from16 v10, p2

    .line 1836
    .line 1837
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 1838
    .line 1839
    move-object/from16 v2, p3

    .line 1840
    .line 1841
    check-cast v2, Ljava/lang/Integer;

    .line 1842
    .line 1843
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1844
    .line 1845
    .line 1846
    move-result v2

    .line 1847
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1848
    .line 1849
    .line 1850
    and-int/lit8 v6, v2, 0x6

    .line 1851
    .line 1852
    if-nez v6, :cond_49

    .line 1853
    .line 1854
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1855
    .line 1856
    .line 1857
    move-result v6

    .line 1858
    if-eqz v6, :cond_48

    .line 1859
    .line 1860
    move v12, v13

    .line 1861
    :cond_48
    or-int/2addr v2, v12

    .line 1862
    :cond_49
    and-int/lit8 v6, v2, 0x13

    .line 1863
    .line 1864
    if-eq v6, v9, :cond_4a

    .line 1865
    .line 1866
    move v5, v7

    .line 1867
    :cond_4a
    and-int/2addr v2, v7

    .line 1868
    invoke-virtual {v10, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1869
    .line 1870
    .line 1871
    move-result v2

    .line 1872
    if-eqz v2, :cond_4b

    .line 1873
    .line 1874
    invoke-static {v8, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v6

    .line 1878
    const/16 v11, 0xc00

    .line 1879
    .line 1880
    move-object v7, v0

    .line 1881
    move-object v9, v3

    .line 1882
    move-object v8, v4

    .line 1883
    invoke-static/range {v6 .. v11}, Lorg/wikipedia/settings/PrefsIoUtil;->AboutScreenContent(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/GapComposer;I)V

    .line 1884
    .line 1885
    .line 1886
    goto :goto_1b

    .line 1887
    :cond_4b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1888
    .line 1889
    .line 1890
    :goto_1b
    return-object v15

    .line 1891
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
