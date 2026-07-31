.class public abstract Lorg/wikipedia/random/RandomScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final lambda$-1663354943:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$-577873682:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const v3, -0x2271a712

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/wikipedia/random/RandomScreenKt;->lambda$-577873682:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    new-instance v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;

    .line 20
    .line 21
    const/16 v1, 0xd

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    const v3, -0x6324c83f

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lorg/wikipedia/random/RandomScreenKt;->lambda$-1663354943:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 35
    .line 36
    return-void
.end method

.method public static final RandomControls(ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 34

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p4

    .line 8
    .line 9
    move-object/from16 v8, p6

    .line 10
    .line 11
    move/from16 v12, p7

    .line 12
    .line 13
    const v4, -0x2d0f2e4

    .line 14
    .line 15
    .line 16
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v4, v12, 0x6

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v4, 0x2

    .line 32
    :goto_0
    or-int/2addr v4, v12

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v4, v12

    .line 35
    :goto_1
    and-int/lit8 v5, v12, 0x30

    .line 36
    .line 37
    if-nez v5, :cond_3

    .line 38
    .line 39
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    const/16 v5, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v5, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v4, v5

    .line 51
    :cond_3
    and-int/lit16 v5, v12, 0x180

    .line 52
    .line 53
    if-nez v5, :cond_5

    .line 54
    .line 55
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    const/16 v5, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v5, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v4, v5

    .line 67
    :cond_5
    and-int/lit16 v5, v12, 0xc00

    .line 68
    .line 69
    if-nez v5, :cond_7

    .line 70
    .line 71
    move-object/from16 v5, p3

    .line 72
    .line 73
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v4, v6

    .line 85
    goto :goto_5

    .line 86
    :cond_7
    move-object/from16 v5, p3

    .line 87
    .line 88
    :goto_5
    and-int/lit16 v6, v12, 0x6000

    .line 89
    .line 90
    if-nez v6, :cond_9

    .line 91
    .line 92
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_8

    .line 97
    .line 98
    const/16 v6, 0x4000

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_8
    const/16 v6, 0x2000

    .line 102
    .line 103
    :goto_6
    or-int/2addr v4, v6

    .line 104
    :cond_9
    const/high16 v6, 0x30000

    .line 105
    .line 106
    and-int/2addr v6, v12

    .line 107
    move-object/from16 v15, p5

    .line 108
    .line 109
    if-nez v6, :cond_b

    .line 110
    .line 111
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_a

    .line 116
    .line 117
    const/high16 v6, 0x20000

    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_a
    const/high16 v6, 0x10000

    .line 121
    .line 122
    :goto_7
    or-int/2addr v4, v6

    .line 123
    :cond_b
    const v6, 0x12493

    .line 124
    .line 125
    .line 126
    and-int/2addr v6, v4

    .line 127
    const v7, 0x12492

    .line 128
    .line 129
    .line 130
    const/4 v9, 0x0

    .line 131
    if-eq v6, v7, :cond_c

    .line 132
    .line 133
    const/4 v6, 0x1

    .line 134
    goto :goto_8

    .line 135
    :cond_c
    move v6, v9

    .line 136
    :goto_8
    and-int/lit8 v7, v4, 0x1

    .line 137
    .line 138
    invoke-virtual {v8, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_14

    .line 143
    .line 144
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 149
    .line 150
    if-ne v6, v7, :cond_d

    .line 151
    .line 152
    new-instance v6, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 153
    .line 154
    invoke-direct {v6, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_d
    check-cast v6, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 161
    .line 162
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    int-to-float v11, v11

    .line 167
    const/high16 v16, 0x43b40000    # 360.0f

    .line 168
    .line 169
    mul-float v11, v11, v16

    .line 170
    .line 171
    const/16 v9, 0x16

    .line 172
    .line 173
    const/16 v17, 0x20

    .line 174
    .line 175
    const/4 v13, 0x0

    .line 176
    const/16 v14, 0xc00

    .line 177
    .line 178
    invoke-static {v11, v13, v8, v14, v9}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/runtime/State;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    const/high16 v9, 0x3f800000    # 1.0f

    .line 183
    .line 184
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 185
    .line 186
    invoke-static {v11, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    sget-object v13, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 191
    .line 192
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v19

    .line 196
    move-object/from16 v10, v19

    .line 197
    .line 198
    check-cast v10, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 199
    .line 200
    move-object/from16 v19, v6

    .line 201
    .line 202
    iget-wide v5, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 203
    .line 204
    sget-object v10, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 205
    .line 206
    invoke-static {v9, v5, v6, v10}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-static {v5}, Landroidx/compose/foundation/layout/OffsetKt;->navigationBarsPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    const/high16 v6, 0x41800000    # 16.0f

    .line 215
    .line 216
    const/4 v9, 0x0

    .line 217
    move-object/from16 v21, v7

    .line 218
    .line 219
    const/4 v7, 0x1

    .line 220
    invoke-static {v5, v9, v6, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 225
    .line 226
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 227
    .line 228
    const/16 v9, 0x36

    .line 229
    .line 230
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    move-object v7, v10

    .line 235
    iget-wide v9, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 236
    .line 237
    ushr-long v23, v9, v17

    .line 238
    .line 239
    xor-long v9, v9, v23

    .line 240
    .line 241
    long-to-int v9, v9

    .line 242
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    invoke-static {v8, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 251
    .line 252
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    move-object/from16 v23, v7

    .line 256
    .line 257
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 258
    .line 259
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 260
    .line 261
    .line 262
    move/from16 v24, v9

    .line 263
    .line 264
    iget-boolean v9, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 265
    .line 266
    if-eqz v9, :cond_e

    .line 267
    .line 268
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 269
    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 273
    .line 274
    .line 275
    :goto_9
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 276
    .line 277
    invoke-static {v8, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 278
    .line 279
    .line 280
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 281
    .line 282
    invoke-static {v8, v10, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 283
    .line 284
    .line 285
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    move-object/from16 v24, v6

    .line 290
    .line 291
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 292
    .line 293
    invoke-static {v8, v10, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 294
    .line 295
    .line 296
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 297
    .line 298
    invoke-static {v8, v10}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 299
    .line 300
    .line 301
    move-object/from16 v25, v6

    .line 302
    .line 303
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 304
    .line 305
    invoke-static {v8, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 306
    .line 307
    .line 308
    new-instance v5, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;

    .line 309
    .line 310
    move-object/from16 v26, v6

    .line 311
    .line 312
    const/4 v6, 0x1

    .line 313
    invoke-direct {v5, v6, v3}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;-><init>(IZ)V

    .line 314
    .line 315
    .line 316
    const v6, -0x29b53f62

    .line 317
    .line 318
    .line 319
    invoke-static {v6, v5, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    shr-int/lit8 v6, v4, 0x9

    .line 324
    .line 325
    and-int/lit8 v6, v6, 0xe

    .line 326
    .line 327
    const/high16 v27, 0x180000

    .line 328
    .line 329
    or-int v6, v6, v27

    .line 330
    .line 331
    and-int/lit16 v3, v4, 0x380

    .line 332
    .line 333
    or-int/2addr v3, v6

    .line 334
    move-object v6, v11

    .line 335
    const/16 v11, 0x3a

    .line 336
    .line 337
    move/from16 v28, v4

    .line 338
    .line 339
    const/4 v4, 0x0

    .line 340
    move-object/from16 v29, v6

    .line 341
    .line 342
    const/4 v6, 0x0

    .line 343
    move-object/from16 v30, v7

    .line 344
    .line 345
    const/4 v7, 0x0

    .line 346
    move-object/from16 v1, v19

    .line 347
    .line 348
    move-object/from16 v19, v14

    .line 349
    .line 350
    move-object v14, v1

    .line 351
    move-object/from16 v20, v9

    .line 352
    .line 353
    move-object/from16 v32, v10

    .line 354
    .line 355
    move-object/from16 v2, v21

    .line 356
    .line 357
    move-object/from16 v1, v23

    .line 358
    .line 359
    move-object/from16 v31, v25

    .line 360
    .line 361
    move-object/from16 v33, v26

    .line 362
    .line 363
    move-object/from16 v12, v29

    .line 364
    .line 365
    move-object/from16 v15, v30

    .line 366
    .line 367
    const/16 v22, 0x0

    .line 368
    .line 369
    move v10, v3

    .line 370
    move-object v9, v8

    .line 371
    move-object/from16 v3, p3

    .line 372
    .line 373
    move-object v8, v5

    .line 374
    move/from16 v5, p2

    .line 375
    .line 376
    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 377
    .line 378
    .line 379
    move-object v8, v9

    .line 380
    const/high16 v11, 0x42000000    # 32.0f

    .line 381
    .line 382
    invoke-static {v12, v11}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-static {v8, v3}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 387
    .line 388
    .line 389
    const/high16 v3, 0x42400000    # 48.0f

    .line 390
    .line 391
    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    const/high16 v4, 0x41400000    # 12.0f

    .line 396
    .line 397
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 410
    .line 411
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 412
    .line 413
    invoke-static {v3, v4, v5, v1}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    const v3, 0xe000

    .line 418
    .line 419
    .line 420
    and-int v3, v28, v3

    .line 421
    .line 422
    const/16 v4, 0x4000

    .line 423
    .line 424
    if-ne v3, v4, :cond_f

    .line 425
    .line 426
    const/4 v9, 0x1

    .line 427
    goto :goto_a

    .line 428
    :cond_f
    const/4 v9, 0x0

    .line 429
    :goto_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    if-nez v9, :cond_11

    .line 434
    .line 435
    if-ne v3, v2, :cond_10

    .line 436
    .line 437
    goto :goto_b

    .line 438
    :cond_10
    const/4 v2, 0x0

    .line 439
    goto :goto_c

    .line 440
    :cond_11
    :goto_b
    new-instance v3, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda12;

    .line 441
    .line 442
    const/4 v2, 0x0

    .line 443
    invoke-direct {v3, v0, v14, v2}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    :goto_c
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 450
    .line 451
    const/16 v4, 0xf

    .line 452
    .line 453
    const/4 v5, 0x0

    .line 454
    invoke-static {v4, v1, v5, v3, v2}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 459
    .line 460
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    iget-wide v4, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 465
    .line 466
    ushr-long v6, v4, v17

    .line 467
    .line 468
    xor-long/2addr v4, v6

    .line 469
    long-to-int v2, v4

    .line 470
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-static {v8, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 479
    .line 480
    .line 481
    iget-boolean v5, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 482
    .line 483
    if-eqz v5, :cond_12

    .line 484
    .line 485
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 486
    .line 487
    .line 488
    :goto_d
    move-object/from16 v5, v20

    .line 489
    .line 490
    goto :goto_e

    .line 491
    :cond_12
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 492
    .line 493
    .line 494
    goto :goto_d

    .line 495
    :goto_e
    invoke-static {v8, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 496
    .line 497
    .line 498
    move-object/from16 v3, v24

    .line 499
    .line 500
    invoke-static {v8, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 501
    .line 502
    .line 503
    move-object/from16 v3, v31

    .line 504
    .line 505
    move-object/from16 v4, v32

    .line 506
    .line 507
    invoke-static {v2, v8, v3, v8, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 508
    .line 509
    .line 510
    move-object/from16 v2, v33

    .line 511
    .line 512
    invoke-static {v8, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 513
    .line 514
    .line 515
    const v1, 0x7f080150

    .line 516
    .line 517
    .line 518
    const/4 v2, 0x0

    .line 519
    invoke-static {v1, v2, v8}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    const v1, 0x7f1209ec

    .line 524
    .line 525
    .line 526
    invoke-static {v1, v8}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 535
    .line 536
    iget-wide v6, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 537
    .line 538
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    check-cast v1, Ljava/lang/Number;

    .line 543
    .line 544
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    cmpg-float v2, v1, v22

    .line 549
    .line 550
    if-nez v2, :cond_13

    .line 551
    .line 552
    move-object v5, v12

    .line 553
    goto :goto_f

    .line 554
    :cond_13
    const/16 v23, 0x0

    .line 555
    .line 556
    const v24, 0x7feff

    .line 557
    .line 558
    .line 559
    const/16 v19, 0x0

    .line 560
    .line 561
    const/16 v20, 0x0

    .line 562
    .line 563
    const/16 v21, 0x0

    .line 564
    .line 565
    move/from16 v22, v1

    .line 566
    .line 567
    move-object/from16 v18, v12

    .line 568
    .line 569
    invoke-static/range {v18 .. v24}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer-_6ThJ44$default(Landroidx/compose/ui/Modifier;FFFFLandroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    move-object v5, v1

    .line 574
    :goto_f
    const/16 v9, 0x8

    .line 575
    .line 576
    const/4 v10, 0x0

    .line 577
    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 578
    .line 579
    .line 580
    const/4 v1, 0x1

    .line 581
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 582
    .line 583
    .line 584
    invoke-static {v12, v11}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-static {v8, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 589
    .line 590
    .line 591
    new-instance v2, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda13;

    .line 592
    .line 593
    move/from16 v11, p0

    .line 594
    .line 595
    move/from16 v4, p1

    .line 596
    .line 597
    invoke-direct {v2, v11, v4}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda13;-><init>(ZZ)V

    .line 598
    .line 599
    .line 600
    const v3, 0xc4b3bd5

    .line 601
    .line 602
    .line 603
    invoke-static {v3, v2, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    shr-int/lit8 v2, v28, 0xf

    .line 608
    .line 609
    and-int/lit8 v2, v2, 0xe

    .line 610
    .line 611
    or-int v2, v2, v27

    .line 612
    .line 613
    shl-int/lit8 v3, v28, 0x3

    .line 614
    .line 615
    and-int/lit16 v3, v3, 0x380

    .line 616
    .line 617
    or-int v9, v2, v3

    .line 618
    .line 619
    const/16 v10, 0x3a

    .line 620
    .line 621
    const/4 v3, 0x0

    .line 622
    const/4 v5, 0x0

    .line 623
    const/4 v6, 0x0

    .line 624
    move-object/from16 v2, p5

    .line 625
    .line 626
    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 630
    .line 631
    .line 632
    goto :goto_10

    .line 633
    :cond_14
    move v11, v1

    .line 634
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 635
    .line 636
    .line 637
    :goto_10
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 638
    .line 639
    .line 640
    move-result-object v8

    .line 641
    if-eqz v8, :cond_15

    .line 642
    .line 643
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda14;

    .line 644
    .line 645
    move/from16 v2, p1

    .line 646
    .line 647
    move/from16 v3, p2

    .line 648
    .line 649
    move-object/from16 v4, p3

    .line 650
    .line 651
    move-object/from16 v5, p4

    .line 652
    .line 653
    move-object/from16 v6, p5

    .line 654
    .line 655
    move/from16 v7, p7

    .line 656
    .line 657
    move v1, v11

    .line 658
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda14;-><init>(ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 659
    .line 660
    .line 661
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 662
    .line 663
    :cond_15
    return-void
.end method

.method public static final RandomItemPage(Lorg/wikipedia/util/Resource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 43

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
    move-object/from16 v13, p4

    .line 10
    .line 11
    move/from16 v0, p5

    .line 12
    .line 13
    const v5, -0x5520989

    .line 14
    .line 15
    .line 16
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v5, 0x2

    .line 28
    :goto_0
    or-int/2addr v5, v0

    .line 29
    and-int/lit8 v6, v0, 0x30

    .line 30
    .line 31
    const/16 v29, 0x20

    .line 32
    .line 33
    if-nez v6, :cond_2

    .line 34
    .line 35
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    move/from16 v6, v29

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v6, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v5, v6

    .line 47
    :cond_2
    and-int/lit16 v6, v0, 0x180

    .line 48
    .line 49
    if-nez v6, :cond_4

    .line 50
    .line 51
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_3

    .line 56
    .line 57
    const/16 v6, 0x100

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const/16 v6, 0x80

    .line 61
    .line 62
    :goto_2
    or-int/2addr v5, v6

    .line 63
    :cond_4
    and-int/lit16 v6, v0, 0xc00

    .line 64
    .line 65
    if-nez v6, :cond_6

    .line 66
    .line 67
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_5

    .line 72
    .line 73
    const/16 v6, 0x800

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    const/16 v6, 0x400

    .line 77
    .line 78
    :goto_3
    or-int/2addr v5, v6

    .line 79
    :cond_6
    and-int/lit16 v6, v5, 0x493

    .line 80
    .line 81
    const/16 v9, 0x492

    .line 82
    .line 83
    const/4 v11, 0x0

    .line 84
    if-eq v6, v9, :cond_7

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    goto :goto_4

    .line 88
    :cond_7
    move v6, v11

    .line 89
    :goto_4
    and-int/lit8 v9, v5, 0x1

    .line 90
    .line 91
    invoke-virtual {v13, v9, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_15

    .line 96
    .line 97
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 98
    .line 99
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Landroid/content/Context;

    .line 104
    .line 105
    sget-object v9, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 106
    .line 107
    sget-object v12, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 108
    .line 109
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    check-cast v14, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 114
    .line 115
    iget-wide v14, v14, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 116
    .line 117
    sget-object v7, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 118
    .line 119
    invoke-static {v9, v14, v15, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 124
    .line 125
    invoke-static {v14, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    move-object/from16 v17, v9

    .line 130
    .line 131
    iget-wide v8, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 132
    .line 133
    ushr-long v18, v8, v29

    .line 134
    .line 135
    xor-long v8, v8, v18

    .line 136
    .line 137
    long-to-int v8, v8

    .line 138
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-static {v13, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 147
    .line 148
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 152
    .line 153
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 154
    .line 155
    .line 156
    iget-boolean v11, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 157
    .line 158
    if-eqz v11, :cond_8

    .line 159
    .line 160
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 165
    .line 166
    .line 167
    :goto_5
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 168
    .line 169
    invoke-static {v13, v14, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    .line 171
    .line 172
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 173
    .line 174
    invoke-static {v13, v9, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 182
    .line 183
    invoke-static {v13, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 187
    .line 188
    invoke-static {v13, v8}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 189
    .line 190
    .line 191
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 192
    .line 193
    invoke-static {v13, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 194
    .line 195
    .line 196
    instance-of v7, v1, Lorg/wikipedia/util/Resource$Success;

    .line 197
    .line 198
    if-eqz v7, :cond_a

    .line 199
    .line 200
    const v5, 0x671c1eb0

    .line 201
    .line 202
    .line 203
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 204
    .line 205
    .line 206
    move-object v5, v1

    .line 207
    check-cast v5, Lorg/wikipedia/util/Resource$Success;

    .line 208
    .line 209
    iget-object v5, v5, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 212
    .line 213
    iget-object v7, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 214
    .line 215
    iget-object v7, v7, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    new-instance v8, Ljava/util/Locale;

    .line 221
    .line 222
    invoke-direct {v8, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v8}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    const/4 v8, 0x1

    .line 230
    if-ne v7, v8, :cond_9

    .line 231
    .line 232
    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_9
    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 236
    .line 237
    :goto_6
    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 238
    .line 239
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    new-instance v9, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 244
    .line 245
    const/4 v10, 0x0

    .line 246
    invoke-direct {v9, v2, v5, v6, v10}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 247
    .line 248
    .line 249
    const v5, 0x400bae79

    .line 250
    .line 251
    .line 252
    invoke-static {v5, v9, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    const/16 v6, 0x38

    .line 257
    .line 258
    invoke-static {v7, v5, v13, v6}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_11

    .line 265
    .line 266
    :cond_a
    const/16 v20, 0x1

    .line 267
    .line 268
    instance-of v6, v1, Lorg/wikipedia/util/Resource$Error;

    .line 269
    .line 270
    sget-object v30, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 271
    .line 272
    if-eqz v6, :cond_14

    .line 273
    .line 274
    const v6, 0x676b2bff

    .line 275
    .line 276
    .line 277
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 278
    .line 279
    .line 280
    const/high16 v6, 0x42000000    # 32.0f

    .line 281
    .line 282
    move-object/from16 v7, v17

    .line 283
    .line 284
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 289
    .line 290
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 291
    .line 292
    const/16 v1, 0x36

    .line 293
    .line 294
    invoke-static {v0, v7, v13, v1}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iget-wide v1, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 299
    .line 300
    ushr-long v21, v1, v29

    .line 301
    .line 302
    xor-long v1, v1, v21

    .line 303
    .line 304
    long-to-int v1, v1

    .line 305
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-static {v13, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 314
    .line 315
    .line 316
    iget-boolean v7, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 317
    .line 318
    if-eqz v7, :cond_b

    .line 319
    .line 320
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 325
    .line 326
    .line 327
    :goto_7
    invoke-static {v13, v0, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 328
    .line 329
    .line 330
    invoke-static {v13, v2, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v1, v13, v9, v13, v8}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 334
    .line 335
    .line 336
    invoke-static {v13, v6, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 337
    .line 338
    .line 339
    move-object/from16 v0, p0

    .line 340
    .line 341
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 342
    .line 343
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    if-nez v0, :cond_c

    .line 350
    .line 351
    const v0, -0x324528b8

    .line 352
    .line 353
    .line 354
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 355
    .line 356
    .line 357
    const v0, 0x7f1201e2

    .line 358
    .line 359
    .line 360
    invoke-static {v0, v13}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    const/4 v1, 0x0

    .line 365
    :goto_8
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 366
    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_c
    const/4 v1, 0x0

    .line 370
    const v2, -0x32452d14

    .line 371
    .line 372
    .line 373
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 374
    .line 375
    .line 376
    goto :goto_8

    .line 377
    :goto_9
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 378
    .line 379
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    check-cast v6, Landroidx/compose/material3/Typography;

    .line 384
    .line 385
    iget-object v6, v6, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 386
    .line 387
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 392
    .line 393
    move-object/from16 v31, v2

    .line 394
    .line 395
    iget-wide v1, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 396
    .line 397
    const/16 v27, 0x0

    .line 398
    .line 399
    const v28, 0x1fffa

    .line 400
    .line 401
    .line 402
    move-object/from16 v24, v6

    .line 403
    .line 404
    const/4 v6, 0x0

    .line 405
    move-object v7, v9

    .line 406
    const/4 v9, 0x0

    .line 407
    move-object/from16 v21, v10

    .line 408
    .line 409
    move-object/from16 v17, v11

    .line 410
    .line 411
    const-wide/16 v10, 0x0

    .line 412
    .line 413
    move-object/from16 v22, v12

    .line 414
    .line 415
    const/4 v12, 0x0

    .line 416
    const/4 v13, 0x0

    .line 417
    move-object/from16 v25, v14

    .line 418
    .line 419
    move-object/from16 v23, v15

    .line 420
    .line 421
    const-wide/16 v14, 0x0

    .line 422
    .line 423
    const/16 v26, 0x100

    .line 424
    .line 425
    const/16 v16, 0x0

    .line 426
    .line 427
    move-object/from16 v32, v17

    .line 428
    .line 429
    const/16 v33, 0x800

    .line 430
    .line 431
    const-wide/16 v17, 0x0

    .line 432
    .line 433
    const/16 v34, 0x0

    .line 434
    .line 435
    const/16 v19, 0x0

    .line 436
    .line 437
    move/from16 v35, v20

    .line 438
    .line 439
    const/16 v20, 0x0

    .line 440
    .line 441
    move-object/from16 v36, v21

    .line 442
    .line 443
    const/16 v21, 0x0

    .line 444
    .line 445
    move-object/from16 v37, v22

    .line 446
    .line 447
    const/16 v22, 0x0

    .line 448
    .line 449
    move-object/from16 v38, v23

    .line 450
    .line 451
    const/16 v23, 0x0

    .line 452
    .line 453
    move/from16 v39, v26

    .line 454
    .line 455
    const/16 v26, 0x0

    .line 456
    .line 457
    move-object/from16 v33, v7

    .line 458
    .line 459
    move-object/from16 v4, v25

    .line 460
    .line 461
    move-object/from16 v3, v32

    .line 462
    .line 463
    move-object/from16 v40, v36

    .line 464
    .line 465
    move-object/from16 v25, p4

    .line 466
    .line 467
    move/from16 v32, v5

    .line 468
    .line 469
    move-object v5, v0

    .line 470
    move-object/from16 v0, v38

    .line 471
    .line 472
    move-wide/from16 v41, v1

    .line 473
    .line 474
    move-object v2, v8

    .line 475
    move-wide/from16 v7, v41

    .line 476
    .line 477
    move/from16 v1, v34

    .line 478
    .line 479
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v13, v25

    .line 483
    .line 484
    const/16 v25, 0x0

    .line 485
    .line 486
    const/16 v26, 0xd

    .line 487
    .line 488
    const/16 v22, 0x0

    .line 489
    .line 490
    const/high16 v23, 0x41800000    # 16.0f

    .line 491
    .line 492
    const/16 v24, 0x0

    .line 493
    .line 494
    move-object/from16 v21, v30

    .line 495
    .line 496
    invoke-static/range {v21 .. v26}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 497
    .line 498
    .line 499
    move-result-object v5

    .line 500
    move-object/from16 v6, v21

    .line 501
    .line 502
    move/from16 v7, v23

    .line 503
    .line 504
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 505
    .line 506
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 507
    .line 508
    invoke-static {v8, v9, v13, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 509
    .line 510
    .line 511
    move-result-object v8

    .line 512
    iget-wide v9, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 513
    .line 514
    ushr-long v11, v9, v29

    .line 515
    .line 516
    xor-long/2addr v9, v11

    .line 517
    long-to-int v9, v9

    .line 518
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 519
    .line 520
    .line 521
    move-result-object v10

    .line 522
    invoke-static {v13, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 527
    .line 528
    .line 529
    iget-boolean v11, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 530
    .line 531
    if-eqz v11, :cond_d

    .line 532
    .line 533
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 534
    .line 535
    .line 536
    goto :goto_a

    .line 537
    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 538
    .line 539
    .line 540
    :goto_a
    invoke-static {v13, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 541
    .line 542
    .line 543
    invoke-static {v13, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 544
    .line 545
    .line 546
    move-object/from16 v0, v33

    .line 547
    .line 548
    invoke-static {v9, v13, v0, v13, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 549
    .line 550
    .line 551
    move-object/from16 v0, v40

    .line 552
    .line 553
    invoke-static {v13, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 554
    .line 555
    .line 556
    const v0, 0x7f1201d6

    .line 557
    .line 558
    .line 559
    invoke-static {v0, v13}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    move-object/from16 v0, v31

    .line 564
    .line 565
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 570
    .line 571
    iget-object v2, v2, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 572
    .line 573
    move-object/from16 v3, v37

    .line 574
    .line 575
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 580
    .line 581
    iget-wide v8, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 582
    .line 583
    const/high16 v4, 0x40800000    # 4.0f

    .line 584
    .line 585
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 586
    .line 587
    .line 588
    move-result-object v10

    .line 589
    invoke-static {v6, v10}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 590
    .line 591
    .line 592
    move-result-object v10

    .line 593
    move/from16 v11, v32

    .line 594
    .line 595
    and-int/lit16 v12, v11, 0x1c00

    .line 596
    .line 597
    const/16 v15, 0x800

    .line 598
    .line 599
    if-ne v12, v15, :cond_e

    .line 600
    .line 601
    const/4 v12, 0x1

    .line 602
    goto :goto_b

    .line 603
    :cond_e
    move v12, v1

    .line 604
    :goto_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v14

    .line 608
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 609
    .line 610
    if-nez v12, :cond_10

    .line 611
    .line 612
    if-ne v14, v15, :cond_f

    .line 613
    .line 614
    goto :goto_c

    .line 615
    :cond_f
    move/from16 v29, v4

    .line 616
    .line 617
    move-object/from16 v4, p3

    .line 618
    .line 619
    goto :goto_d

    .line 620
    :cond_10
    :goto_c
    new-instance v14, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 621
    .line 622
    const/16 v12, 0x17

    .line 623
    .line 624
    move/from16 v29, v4

    .line 625
    .line 626
    move-object/from16 v4, p3

    .line 627
    .line 628
    invoke-direct {v14, v12, v4}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 632
    .line 633
    .line 634
    :goto_d
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 635
    .line 636
    const/16 v12, 0xf

    .line 637
    .line 638
    move-wide/from16 v16, v8

    .line 639
    .line 640
    const/4 v9, 0x0

    .line 641
    invoke-static {v12, v10, v9, v14, v1}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 642
    .line 643
    .line 644
    move-result-object v8

    .line 645
    const/high16 v10, 0x41000000    # 8.0f

    .line 646
    .line 647
    invoke-static {v8, v7, v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 648
    .line 649
    .line 650
    move-result-object v8

    .line 651
    const/16 v27, 0x0

    .line 652
    .line 653
    const v28, 0x1fff8

    .line 654
    .line 655
    .line 656
    move-object v14, v9

    .line 657
    move/from16 v18, v10

    .line 658
    .line 659
    move/from16 v32, v11

    .line 660
    .line 661
    const-wide/16 v10, 0x0

    .line 662
    .line 663
    move/from16 v19, v12

    .line 664
    .line 665
    const/4 v12, 0x0

    .line 666
    const/4 v13, 0x0

    .line 667
    move-object/from16 v20, v14

    .line 668
    .line 669
    move-object/from16 v21, v15

    .line 670
    .line 671
    const-wide/16 v14, 0x0

    .line 672
    .line 673
    move/from16 v23, v7

    .line 674
    .line 675
    move-wide/from16 v41, v16

    .line 676
    .line 677
    move-object/from16 v17, v6

    .line 678
    .line 679
    move-object v6, v8

    .line 680
    move-wide/from16 v7, v41

    .line 681
    .line 682
    const/16 v16, 0x0

    .line 683
    .line 684
    move-object/from16 v22, v17

    .line 685
    .line 686
    move/from16 v24, v18

    .line 687
    .line 688
    const-wide/16 v17, 0x0

    .line 689
    .line 690
    move/from16 v25, v19

    .line 691
    .line 692
    const/16 v19, 0x0

    .line 693
    .line 694
    move-object/from16 v26, v20

    .line 695
    .line 696
    const/16 v20, 0x0

    .line 697
    .line 698
    move-object/from16 v30, v21

    .line 699
    .line 700
    const/16 v21, 0x0

    .line 701
    .line 702
    move-object/from16 v31, v22

    .line 703
    .line 704
    const/16 v22, 0x0

    .line 705
    .line 706
    move/from16 v33, v23

    .line 707
    .line 708
    const/16 v23, 0x0

    .line 709
    .line 710
    move-object/from16 v34, v26

    .line 711
    .line 712
    const/16 v26, 0x0

    .line 713
    .line 714
    move-object/from16 v25, p4

    .line 715
    .line 716
    move-object/from16 v24, v2

    .line 717
    .line 718
    move-object/from16 v1, v30

    .line 719
    .line 720
    move-object/from16 v4, v31

    .line 721
    .line 722
    move/from16 v2, v32

    .line 723
    .line 724
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 725
    .line 726
    .line 727
    move-object/from16 v13, v25

    .line 728
    .line 729
    const v5, 0x7f12052b

    .line 730
    .line 731
    .line 732
    invoke-static {v5, v13}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v5

    .line 736
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 741
    .line 742
    iget-object v0, v0, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 743
    .line 744
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 749
    .line 750
    iget-wide v7, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 751
    .line 752
    invoke-static/range {v29 .. v29}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 753
    .line 754
    .line 755
    move-result-object v3

    .line 756
    invoke-static {v4, v3}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    and-int/lit16 v2, v2, 0x380

    .line 761
    .line 762
    const/16 v4, 0x100

    .line 763
    .line 764
    if-ne v2, v4, :cond_11

    .line 765
    .line 766
    const/4 v10, 0x1

    .line 767
    goto :goto_e

    .line 768
    :cond_11
    const/4 v10, 0x0

    .line 769
    :goto_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    if-nez v10, :cond_13

    .line 774
    .line 775
    if-ne v2, v1, :cond_12

    .line 776
    .line 777
    goto :goto_f

    .line 778
    :cond_12
    move-object/from16 v4, p2

    .line 779
    .line 780
    goto :goto_10

    .line 781
    :cond_13
    :goto_f
    new-instance v2, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 782
    .line 783
    const/16 v1, 0x18

    .line 784
    .line 785
    move-object/from16 v4, p2

    .line 786
    .line 787
    invoke-direct {v2, v1, v4}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 791
    .line 792
    .line 793
    :goto_10
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 794
    .line 795
    const/16 v1, 0xf

    .line 796
    .line 797
    const/4 v10, 0x0

    .line 798
    const/4 v14, 0x0

    .line 799
    invoke-static {v1, v3, v14, v2, v10}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    const/high16 v2, 0x41800000    # 16.0f

    .line 804
    .line 805
    const/high16 v3, 0x41000000    # 8.0f

    .line 806
    .line 807
    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 808
    .line 809
    .line 810
    move-result-object v6

    .line 811
    const/16 v27, 0x0

    .line 812
    .line 813
    const v28, 0x1fff8

    .line 814
    .line 815
    .line 816
    const/4 v9, 0x0

    .line 817
    const-wide/16 v10, 0x0

    .line 818
    .line 819
    const/4 v12, 0x0

    .line 820
    const/4 v13, 0x0

    .line 821
    const-wide/16 v14, 0x0

    .line 822
    .line 823
    const/16 v16, 0x0

    .line 824
    .line 825
    const-wide/16 v17, 0x0

    .line 826
    .line 827
    const/16 v19, 0x0

    .line 828
    .line 829
    const/16 v20, 0x0

    .line 830
    .line 831
    const/16 v21, 0x0

    .line 832
    .line 833
    const/16 v22, 0x0

    .line 834
    .line 835
    const/16 v23, 0x0

    .line 836
    .line 837
    const/16 v26, 0x0

    .line 838
    .line 839
    move-object/from16 v25, p4

    .line 840
    .line 841
    move-object/from16 v24, v0

    .line 842
    .line 843
    invoke-static/range {v5 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 844
    .line 845
    .line 846
    move-object/from16 v13, v25

    .line 847
    .line 848
    const/4 v8, 0x1

    .line 849
    const/4 v10, 0x0

    .line 850
    invoke-static {v13, v8, v8, v10}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;ZZZ)V

    .line 851
    .line 852
    .line 853
    goto :goto_11

    .line 854
    :cond_14
    move-object v3, v12

    .line 855
    move-object/from16 v4, v30

    .line 856
    .line 857
    const v0, 0x6785a901

    .line 858
    .line 859
    .line 860
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 868
    .line 869
    iget-wide v6, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 870
    .line 871
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 872
    .line 873
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 874
    .line 875
    invoke-virtual {v1, v4, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 876
    .line 877
    .line 878
    move-result-object v5

    .line 879
    const/4 v14, 0x0

    .line 880
    const/16 v15, 0x3c

    .line 881
    .line 882
    const/4 v8, 0x0

    .line 883
    const-wide/16 v9, 0x0

    .line 884
    .line 885
    const/4 v11, 0x0

    .line 886
    const/4 v12, 0x0

    .line 887
    invoke-static/range {v5 .. v15}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-4lLiAd8(Landroidx/compose/ui/Modifier;JFJIFLandroidx/compose/runtime/GapComposer;II)V

    .line 888
    .line 889
    .line 890
    const/4 v10, 0x0

    .line 891
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 892
    .line 893
    .line 894
    const/4 v8, 0x1

    .line 895
    :goto_11
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 896
    .line 897
    .line 898
    goto :goto_12

    .line 899
    :cond_15
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 900
    .line 901
    .line 902
    :goto_12
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 903
    .line 904
    .line 905
    move-result-object v7

    .line 906
    if-eqz v7, :cond_16

    .line 907
    .line 908
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;

    .line 909
    .line 910
    const/16 v6, 0xa

    .line 911
    .line 912
    move-object/from16 v1, p0

    .line 913
    .line 914
    move-object/from16 v2, p1

    .line 915
    .line 916
    move-object/from16 v3, p2

    .line 917
    .line 918
    move-object/from16 v4, p3

    .line 919
    .line 920
    move/from16 v5, p5

    .line 921
    .line 922
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 923
    .line 924
    .line 925
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 926
    .line 927
    :cond_16
    return-void
.end method

.method public static final RandomScreen(Lorg/wikipedia/random/RandomViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 45

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    move-object/from16 v13, p4

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const v0, 0x5d0fb1e3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x2

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v2

    .line 39
    :goto_0
    or-int v0, p5, v0

    .line 40
    .line 41
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const/16 v22, 0x20

    .line 46
    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    move/from16 v7, v22

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/16 v7, 0x10

    .line 53
    .line 54
    :goto_1
    or-int/2addr v0, v7

    .line 55
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_2

    .line 60
    .line 61
    const/16 v7, 0x100

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/16 v7, 0x80

    .line 65
    .line 66
    :goto_2
    or-int/2addr v0, v7

    .line 67
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_3

    .line 72
    .line 73
    const/16 v7, 0x800

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const/16 v7, 0x400

    .line 77
    .line 78
    :goto_3
    or-int/2addr v0, v7

    .line 79
    and-int/lit16 v7, v0, 0x493

    .line 80
    .line 81
    const/16 v9, 0x492

    .line 82
    .line 83
    const/4 v10, 0x0

    .line 84
    if-eq v7, v9, :cond_4

    .line 85
    .line 86
    const/4 v7, 0x1

    .line 87
    goto :goto_4

    .line 88
    :cond_4
    move v7, v10

    .line 89
    :goto_4
    and-int/lit8 v9, v0, 0x1

    .line 90
    .line 91
    invoke-virtual {v13, v9, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_1b

    .line 96
    .line 97
    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 98
    .line 99
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    check-cast v7, Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 110
    .line 111
    if-ne v9, v12, :cond_5

    .line 112
    .line 113
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 121
    .line 122
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    if-ne v14, v12, :cond_6

    .line 127
    .line 128
    new-instance v14, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    const/16 v15, 0x1a

    .line 131
    .line 132
    invoke-direct {v14, v15}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 139
    .line 140
    const/16 v15, 0x186

    .line 141
    .line 142
    invoke-static {v14, v13, v15, v2}, Landroidx/compose/foundation/pager/PagerStateKt;->rememberPagerState(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    invoke-virtual {v14}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    move/from16 v23, v2

    .line 151
    .line 152
    iget-object v2, v3, Lorg/wikipedia/random/RandomViewModel;->items:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 153
    .line 154
    invoke-static {v2, v15}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 159
    .line 160
    invoke-virtual {v14}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v17

    .line 176
    or-int v16, v16, v17

    .line 177
    .line 178
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v17

    .line 182
    or-int v16, v16, v17

    .line 183
    .line 184
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    const/4 v1, 0x0

    .line 189
    if-nez v16, :cond_7

    .line 190
    .line 191
    if-ne v8, v12, :cond_8

    .line 192
    .line 193
    :cond_7
    new-instance v8, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 194
    .line 195
    invoke-direct {v8, v3, v2, v7, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Lorg/wikipedia/random/RandomViewModel;Lorg/wikipedia/page/PageTitle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 202
    .line 203
    invoke-static {v15, v2, v8, v13}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    or-int/2addr v8, v15

    .line 215
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    if-nez v8, :cond_9

    .line 220
    .line 221
    if-ne v15, v12, :cond_a

    .line 222
    .line 223
    :cond_9
    new-instance v15, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda2;

    .line 224
    .line 225
    invoke-direct {v15, v9, v14}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda2;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/pager/DefaultPagerState;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_a
    move-object v8, v15

    .line 232
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 233
    .line 234
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v15

    .line 238
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v16

    .line 242
    or-int v15, v15, v16

    .line 243
    .line 244
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    if-nez v15, :cond_b

    .line 249
    .line 250
    if-ne v1, v12, :cond_c

    .line 251
    .line 252
    :cond_b
    new-instance v1, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda2;

    .line 253
    .line 254
    invoke-direct {v1, v14, v9}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/pager/DefaultPagerState;Lkotlinx/coroutines/CoroutineScope;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :cond_c
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 261
    .line 262
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    or-int/2addr v9, v15

    .line 271
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v15

    .line 275
    if-nez v9, :cond_d

    .line 276
    .line 277
    if-ne v15, v12, :cond_e

    .line 278
    .line 279
    :cond_d
    new-instance v15, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda4;

    .line 280
    .line 281
    invoke-direct {v15, v7, v8, v10}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_e
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 288
    .line 289
    invoke-static {v15, v13, v10}, Lorg/wikipedia/random/RandomScreenKt;->ShakeToAdvance(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 290
    .line 291
    .line 292
    sget-object v9, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 293
    .line 294
    sget-object v15, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 295
    .line 296
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v15

    .line 300
    check-cast v15, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 301
    .line 302
    move-object/from16 v18, v12

    .line 303
    .line 304
    iget-wide v11, v15, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 305
    .line 306
    sget-object v15, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 307
    .line 308
    invoke-static {v9, v11, v12, v15}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 313
    .line 314
    move-object/from16 v19, v7

    .line 315
    .line 316
    invoke-static {v12, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    move-object/from16 v21, v11

    .line 321
    .line 322
    iget-wide v10, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 323
    .line 324
    ushr-long v25, v10, v22

    .line 325
    .line 326
    xor-long v10, v10, v25

    .line 327
    .line 328
    long-to-int v10, v10

    .line 329
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    move-object/from16 v25, v8

    .line 334
    .line 335
    move-object/from16 v8, v21

    .line 336
    .line 337
    invoke-static {v13, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 342
    .line 343
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    move/from16 v21, v10

    .line 347
    .line 348
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 349
    .line 350
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 351
    .line 352
    .line 353
    move-object/from16 v26, v12

    .line 354
    .line 355
    iget-boolean v12, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 356
    .line 357
    if-eqz v12, :cond_f

    .line 358
    .line 359
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 360
    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 364
    .line 365
    .line 366
    :goto_5
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 367
    .line 368
    invoke-static {v13, v7, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 369
    .line 370
    .line 371
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 372
    .line 373
    invoke-static {v13, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 374
    .line 375
    .line 376
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    move-object/from16 v21, v14

    .line 381
    .line 382
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 383
    .line 384
    invoke-static {v13, v11, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 385
    .line 386
    .line 387
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 388
    .line 389
    invoke-static {v13, v11}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 390
    .line 391
    .line 392
    move-object/from16 v27, v15

    .line 393
    .line 394
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 395
    .line 396
    invoke-static {v13, v8, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 397
    .line 398
    .line 399
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 400
    .line 401
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 402
    .line 403
    move/from16 v28, v0

    .line 404
    .line 405
    move-object/from16 v29, v2

    .line 406
    .line 407
    const/4 v0, 0x0

    .line 408
    invoke-static {v8, v6, v13, v0}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    move-object/from16 v30, v1

    .line 413
    .line 414
    iget-wide v0, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 415
    .line 416
    ushr-long v31, v0, v22

    .line 417
    .line 418
    xor-long v0, v0, v31

    .line 419
    .line 420
    long-to-int v0, v0

    .line 421
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-static {v13, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 426
    .line 427
    .line 428
    move-result-object v9

    .line 429
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 430
    .line 431
    .line 432
    move-object/from16 v31, v8

    .line 433
    .line 434
    iget-boolean v8, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 435
    .line 436
    if-eqz v8, :cond_10

    .line 437
    .line 438
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 439
    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_10
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 443
    .line 444
    .line 445
    :goto_6
    invoke-static {v13, v2, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 446
    .line 447
    .line 448
    invoke-static {v13, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 449
    .line 450
    .line 451
    invoke-static {v0, v13, v14, v13, v11}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 452
    .line 453
    .line 454
    const/high16 v0, 0x3f800000    # 1.0f

    .line 455
    .line 456
    const/4 v1, 0x1

    .line 457
    invoke-static {v13, v9, v15, v0, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    new-instance v2, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;

    .line 466
    .line 467
    const/4 v9, 0x0

    .line 468
    invoke-direct {v2, v3, v5, v4, v9}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 469
    .line 470
    .line 471
    const v1, 0x6c53e520

    .line 472
    .line 473
    .line 474
    invoke-static {v1, v2, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    const/16 v20, 0x6000

    .line 479
    .line 480
    move-object v2, v7

    .line 481
    move-object/from16 v7, v21

    .line 482
    .line 483
    const/16 v21, 0x3fec

    .line 484
    .line 485
    move/from16 v32, v9

    .line 486
    .line 487
    const/4 v9, 0x0

    .line 488
    move-object/from16 v33, v10

    .line 489
    .line 490
    const/4 v10, 0x0

    .line 491
    move-object/from16 v34, v11

    .line 492
    .line 493
    const/4 v11, 0x1

    .line 494
    move-object/from16 v35, v12

    .line 495
    .line 496
    const/4 v12, 0x0

    .line 497
    const/4 v13, 0x0

    .line 498
    move-object/from16 v36, v14

    .line 499
    .line 500
    const/4 v14, 0x0

    .line 501
    move-object/from16 v37, v15

    .line 502
    .line 503
    const/4 v15, 0x0

    .line 504
    const/16 v38, 0x1

    .line 505
    .line 506
    const/16 v16, 0x0

    .line 507
    .line 508
    const/16 v39, 0x800

    .line 509
    .line 510
    const/16 v17, 0x0

    .line 511
    .line 512
    move-object/from16 v40, v2

    .line 513
    .line 514
    move-object/from16 v5, v18

    .line 515
    .line 516
    move-object/from16 v2, v19

    .line 517
    .line 518
    move-object/from16 v0, v25

    .line 519
    .line 520
    move-object/from16 v44, v27

    .line 521
    .line 522
    move-object/from16 v4, v31

    .line 523
    .line 524
    move-object/from16 v42, v34

    .line 525
    .line 526
    move-object/from16 v41, v36

    .line 527
    .line 528
    move-object/from16 v43, v37

    .line 529
    .line 530
    move-object/from16 v19, p4

    .line 531
    .line 532
    move-object/from16 v18, v1

    .line 533
    .line 534
    move-object/from16 v1, v26

    .line 535
    .line 536
    invoke-static/range {v7 .. v21}, Landroidx/compose/ui/unit/DpKt;->HorizontalPager--8jOkeI(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;ILandroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 537
    .line 538
    .line 539
    move-object/from16 v13, v19

    .line 540
    .line 541
    iget-object v8, v3, Lorg/wikipedia/random/RandomViewModel;->saveButtonState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 542
    .line 543
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    check-cast v8, Ljava/lang/Boolean;

    .line 548
    .line 549
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 550
    .line 551
    .line 552
    move-result v8

    .line 553
    if-eqz v29, :cond_11

    .line 554
    .line 555
    const/4 v10, 0x1

    .line 556
    goto :goto_7

    .line 557
    :cond_11
    const/4 v10, 0x0

    .line 558
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    if-lez v7, :cond_12

    .line 563
    .line 564
    const/4 v9, 0x1

    .line 565
    goto :goto_8

    .line 566
    :cond_12
    const/4 v9, 0x0

    .line 567
    :goto_8
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v7

    .line 571
    move-object/from16 v11, v30

    .line 572
    .line 573
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v12

    .line 577
    or-int/2addr v7, v12

    .line 578
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v12

    .line 582
    if-nez v7, :cond_13

    .line 583
    .line 584
    if-ne v12, v5, :cond_14

    .line 585
    .line 586
    :cond_13
    new-instance v12, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda4;

    .line 587
    .line 588
    const/4 v7, 0x4

    .line 589
    invoke-direct {v12, v2, v11, v7}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;I)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    :cond_14
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 596
    .line 597
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v7

    .line 601
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result v11

    .line 605
    or-int/2addr v7, v11

    .line 606
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v11

    .line 610
    const/4 v15, 0x5

    .line 611
    if-nez v7, :cond_15

    .line 612
    .line 613
    if-ne v11, v5, :cond_16

    .line 614
    .line 615
    :cond_15
    new-instance v11, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda4;

    .line 616
    .line 617
    invoke-direct {v11, v2, v0, v15}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;I)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    :cond_16
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 624
    .line 625
    move-object/from16 v2, v29

    .line 626
    .line 627
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    move/from16 v7, v28

    .line 632
    .line 633
    and-int/lit16 v14, v7, 0x1c00

    .line 634
    .line 635
    move/from16 v16, v15

    .line 636
    .line 637
    const/16 v15, 0x800

    .line 638
    .line 639
    if-ne v14, v15, :cond_17

    .line 640
    .line 641
    const/4 v14, 0x1

    .line 642
    goto :goto_9

    .line 643
    :cond_17
    const/4 v14, 0x0

    .line 644
    :goto_9
    or-int/2addr v0, v14

    .line 645
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v14

    .line 649
    if-nez v0, :cond_19

    .line 650
    .line 651
    if-ne v14, v5, :cond_18

    .line 652
    .line 653
    goto :goto_a

    .line 654
    :cond_18
    move-object/from16 v0, p3

    .line 655
    .line 656
    goto :goto_b

    .line 657
    :cond_19
    :goto_a
    new-instance v14, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda5;

    .line 658
    .line 659
    move-object/from16 v0, p3

    .line 660
    .line 661
    invoke-direct {v14, v2, v0}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/jvm/functions/Function1;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    :goto_b
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 668
    .line 669
    move/from16 v28, v7

    .line 670
    .line 671
    move v7, v8

    .line 672
    move v8, v10

    .line 673
    move-object v10, v12

    .line 674
    move-object v12, v14

    .line 675
    const/4 v14, 0x0

    .line 676
    invoke-static/range {v7 .. v14}, Lorg/wikipedia/random/RandomScreenKt;->RandomControls(ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 677
    .line 678
    .line 679
    const/4 v2, 0x1

    .line 680
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 681
    .line 682
    .line 683
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 684
    .line 685
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 686
    .line 687
    invoke-virtual {v5, v7, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    const/4 v9, 0x0

    .line 692
    invoke-static {v4, v6, v13, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 693
    .line 694
    .line 695
    move-result-object v4

    .line 696
    iget-wide v5, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 697
    .line 698
    ushr-long v8, v5, v22

    .line 699
    .line 700
    xor-long/2addr v5, v8

    .line 701
    long-to-int v5, v5

    .line 702
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 703
    .line 704
    .line 705
    move-result-object v6

    .line 706
    invoke-static {v13, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 711
    .line 712
    .line 713
    iget-boolean v8, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 714
    .line 715
    if-eqz v8, :cond_1a

    .line 716
    .line 717
    move-object/from16 v8, v33

    .line 718
    .line 719
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 720
    .line 721
    .line 722
    :goto_c
    move-object/from16 v8, v35

    .line 723
    .line 724
    goto :goto_d

    .line 725
    :cond_1a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 726
    .line 727
    .line 728
    goto :goto_c

    .line 729
    :goto_d
    invoke-static {v13, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 730
    .line 731
    .line 732
    move-object/from16 v4, v40

    .line 733
    .line 734
    invoke-static {v13, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 735
    .line 736
    .line 737
    move-object/from16 v4, v41

    .line 738
    .line 739
    move-object/from16 v6, v42

    .line 740
    .line 741
    invoke-static {v5, v13, v4, v13, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 742
    .line 743
    .line 744
    move-object/from16 v4, v43

    .line 745
    .line 746
    invoke-static {v13, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 747
    .line 748
    .line 749
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 750
    .line 751
    const v1, 0x3f4ccccd    # 0.8f

    .line 752
    .line 753
    .line 754
    invoke-static {v1, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 755
    .line 756
    .line 757
    move-result-wide v8

    .line 758
    move-object/from16 v6, v44

    .line 759
    .line 760
    invoke-static {v7, v8, v9, v6}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 761
    .line 762
    .line 763
    move-result-object v6

    .line 764
    and-int/lit8 v8, v28, 0x70

    .line 765
    .line 766
    const/4 v9, 0x6

    .line 767
    or-int/2addr v8, v9

    .line 768
    move-object/from16 v10, p1

    .line 769
    .line 770
    invoke-static {v6, v10, v13, v8}, Lorg/wikipedia/random/RandomScreenKt;->RandomTopBar(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 771
    .line 772
    .line 773
    const/high16 v6, 0x3f800000    # 1.0f

    .line 774
    .line 775
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 776
    .line 777
    .line 778
    move-result-object v7

    .line 779
    const/high16 v6, 0x42a00000    # 80.0f

    .line 780
    .line 781
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 782
    .line 783
    .line 784
    move-result-object v6

    .line 785
    const/4 v7, 0x0

    .line 786
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 787
    .line 788
    .line 789
    move-result-object v7

    .line 790
    invoke-static {v1, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 791
    .line 792
    .line 793
    move-result-wide v11

    .line 794
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 795
    .line 796
    invoke-direct {v1, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 797
    .line 798
    .line 799
    new-instance v8, Lkotlin/Pair;

    .line 800
    .line 801
    invoke-direct {v8, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 802
    .line 803
    .line 804
    const v1, 0x3e3851ec    # 0.18f

    .line 805
    .line 806
    .line 807
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    const v7, 0x3f333333    # 0.7f

    .line 812
    .line 813
    .line 814
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 815
    .line 816
    .line 817
    move-result-wide v11

    .line 818
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 819
    .line 820
    invoke-direct {v7, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 821
    .line 822
    .line 823
    new-instance v11, Lkotlin/Pair;

    .line 824
    .line 825
    invoke-direct {v11, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    const v1, 0x3ec28f5c    # 0.38f

    .line 829
    .line 830
    .line 831
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    const/high16 v7, 0x3f000000    # 0.5f

    .line 836
    .line 837
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 838
    .line 839
    .line 840
    move-result-wide v14

    .line 841
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 842
    .line 843
    invoke-direct {v7, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 844
    .line 845
    .line 846
    new-instance v12, Lkotlin/Pair;

    .line 847
    .line 848
    invoke-direct {v12, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 849
    .line 850
    .line 851
    const v1, 0x3f147ae1    # 0.58f

    .line 852
    .line 853
    .line 854
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    const v7, 0x3e99999a    # 0.3f

    .line 859
    .line 860
    .line 861
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 862
    .line 863
    .line 864
    move-result-wide v14

    .line 865
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 866
    .line 867
    invoke-direct {v7, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 868
    .line 869
    .line 870
    new-instance v14, Lkotlin/Pair;

    .line 871
    .line 872
    invoke-direct {v14, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 873
    .line 874
    .line 875
    const v1, 0x3f428f5c    # 0.76f

    .line 876
    .line 877
    .line 878
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    const v7, 0x3e19999a    # 0.15f

    .line 883
    .line 884
    .line 885
    move/from16 v38, v2

    .line 886
    .line 887
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 888
    .line 889
    .line 890
    move-result-wide v2

    .line 891
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 892
    .line 893
    invoke-direct {v7, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 894
    .line 895
    .line 896
    new-instance v2, Lkotlin/Pair;

    .line 897
    .line 898
    invoke-direct {v2, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 899
    .line 900
    .line 901
    const v1, 0x3f666666    # 0.9f

    .line 902
    .line 903
    .line 904
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    const v3, 0x3d4ccccd    # 0.05f

    .line 909
    .line 910
    .line 911
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 912
    .line 913
    .line 914
    move-result-wide v3

    .line 915
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 916
    .line 917
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 918
    .line 919
    .line 920
    new-instance v3, Lkotlin/Pair;

    .line 921
    .line 922
    invoke-direct {v3, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 923
    .line 924
    .line 925
    const/high16 v25, 0x3f800000    # 1.0f

    .line 926
    .line 927
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 932
    .line 933
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 934
    .line 935
    invoke-direct {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 936
    .line 937
    .line 938
    new-instance v4, Lkotlin/Pair;

    .line 939
    .line 940
    invoke-direct {v4, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 941
    .line 942
    .line 943
    const/4 v1, 0x7

    .line 944
    new-array v1, v1, [Lkotlin/Pair;

    .line 945
    .line 946
    const/4 v5, 0x0

    .line 947
    aput-object v8, v1, v5

    .line 948
    .line 949
    aput-object v11, v1, v38

    .line 950
    .line 951
    aput-object v12, v1, v23

    .line 952
    .line 953
    const/4 v7, 0x3

    .line 954
    aput-object v14, v1, v7

    .line 955
    .line 956
    const/16 v24, 0x4

    .line 957
    .line 958
    aput-object v2, v1, v24

    .line 959
    .line 960
    aput-object v3, v1, v16

    .line 961
    .line 962
    aput-object v4, v1, v9

    .line 963
    .line 964
    invoke-static {v1}, Landroidx/collection/internal/Lock;->verticalGradient-8A-3gB4$default([Lkotlin/Pair;)Landroidx/compose/ui/graphics/LinearGradient;

    .line 965
    .line 966
    .line 967
    move-result-object v1

    .line 968
    const/4 v2, 0x0

    .line 969
    invoke-static {v6, v1, v2, v9}, Landroidx/compose/foundation/ImageKt;->background$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/LinearGradient;Landroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    invoke-static {v1, v13, v5}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 974
    .line 975
    .line 976
    move/from16 v1, v38

    .line 977
    .line 978
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 982
    .line 983
    .line 984
    goto :goto_e

    .line 985
    :cond_1b
    move-object v10, v4

    .line 986
    move-object v0, v6

    .line 987
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 988
    .line 989
    .line 990
    :goto_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 991
    .line 992
    .line 993
    move-result-object v8

    .line 994
    if-eqz v8, :cond_1c

    .line 995
    .line 996
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;

    .line 997
    .line 998
    const/4 v2, 0x0

    .line 999
    const/4 v7, 0x0

    .line 1000
    move-object/from16 v3, p0

    .line 1001
    .line 1002
    move-object/from16 v5, p2

    .line 1003
    .line 1004
    move-object/from16 v6, p3

    .line 1005
    .line 1006
    move/from16 v1, p5

    .line 1007
    .line 1008
    move-object v4, v10

    .line 1009
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1010
    .line 1011
    .line 1012
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1013
    .line 1014
    :cond_1c
    return-void
.end method

.method public static final RandomTopBar(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    const v2, 0xa901c83

    .line 8
    .line 9
    .line 10
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v2, 0x10

    .line 24
    .line 25
    :goto_0
    or-int v2, p3, v2

    .line 26
    .line 27
    and-int/lit8 v4, v2, 0x13

    .line 28
    .line 29
    const/16 v5, 0x12

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x1

    .line 33
    if-eq v4, v5, :cond_1

    .line 34
    .line 35
    move v4, v11

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v4, v10

    .line 38
    :goto_1
    and-int/lit8 v5, v2, 0x1

    .line 39
    .line 40
    invoke-virtual {v7, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    const/high16 v4, 0x3f800000    # 1.0f

    .line 47
    .line 48
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v4}, Landroidx/compose/foundation/layout/OffsetKt;->statusBarsPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/high16 v5, 0x42600000    # 56.0f

    .line 57
    .line 58
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/high16 v5, 0x40800000    # 4.0f

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v8, 0x2

    .line 66
    invoke-static {v4, v5, v6, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 71
    .line 72
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 73
    .line 74
    const/16 v8, 0x30

    .line 75
    .line 76
    invoke-static {v6, v5, v7, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iget-wide v8, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 81
    .line 82
    ushr-long v12, v8, v3

    .line 83
    .line 84
    xor-long/2addr v8, v12

    .line 85
    long-to-int v3, v8

    .line 86
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-static {v7, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 100
    .line 101
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 102
    .line 103
    .line 104
    iget-boolean v9, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 105
    .line 106
    if-eqz v9, :cond_2

    .line 107
    .line 108
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 113
    .line 114
    .line 115
    :goto_2
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 116
    .line 117
    invoke-static {v7, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 121
    .line 122
    invoke-static {v7, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 130
    .line 131
    invoke-static {v7, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 132
    .line 133
    .line 134
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 135
    .line 136
    invoke-static {v7, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 137
    .line 138
    .line 139
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 140
    .line 141
    invoke-static {v7, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 142
    .line 143
    .line 144
    shr-int/lit8 v2, v2, 0x3

    .line 145
    .line 146
    and-int/lit8 v2, v2, 0xe

    .line 147
    .line 148
    const/high16 v3, 0x180000

    .line 149
    .line 150
    or-int v8, v2, v3

    .line 151
    .line 152
    const/16 v9, 0x3e

    .line 153
    .line 154
    const/4 v2, 0x0

    .line 155
    const/4 v3, 0x0

    .line 156
    const/4 v4, 0x0

    .line 157
    const/4 v5, 0x0

    .line 158
    sget-object v6, Lorg/wikipedia/random/RandomScreenKt;->lambda$-1663354943:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 159
    .line 160
    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 161
    .line 162
    .line 163
    const/4 v5, 0x0

    .line 164
    const/16 v6, 0xe

    .line 165
    .line 166
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 167
    .line 168
    const/high16 v2, 0x41000000    # 8.0f

    .line 169
    .line 170
    const/4 v3, 0x0

    .line 171
    const/4 v4, 0x0

    .line 172
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const v1, 0x7f1209f0

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 184
    .line 185
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 190
    .line 191
    iget-object v12, v3, Landroidx/compose/material3/Typography;->headlineSmall:Landroidx/compose/ui/text/TextStyle;

    .line 192
    .line 193
    sget-object v17, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 194
    .line 195
    const/16 v23, 0x0

    .line 196
    .line 197
    const v24, 0xfffffb

    .line 198
    .line 199
    .line 200
    const-wide/16 v13, 0x0

    .line 201
    .line 202
    const-wide/16 v15, 0x0

    .line 203
    .line 204
    const/16 v18, 0x0

    .line 205
    .line 206
    const-wide/16 v19, 0x0

    .line 207
    .line 208
    const-wide/16 v21, 0x0

    .line 209
    .line 210
    invoke-static/range {v12 .. v24}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 211
    .line 212
    .line 213
    move-result-object v20

    .line 214
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->White:J

    .line 215
    .line 216
    const/16 v23, 0x0

    .line 217
    .line 218
    const v24, 0x1fff8

    .line 219
    .line 220
    .line 221
    const/4 v5, 0x0

    .line 222
    const-wide/16 v6, 0x0

    .line 223
    .line 224
    const/4 v8, 0x0

    .line 225
    const/4 v9, 0x0

    .line 226
    move v12, v10

    .line 227
    move v13, v11

    .line 228
    const-wide/16 v10, 0x0

    .line 229
    .line 230
    move v14, v12

    .line 231
    const/4 v12, 0x0

    .line 232
    move/from16 v16, v13

    .line 233
    .line 234
    move v15, v14

    .line 235
    const-wide/16 v13, 0x0

    .line 236
    .line 237
    move/from16 v17, v15

    .line 238
    .line 239
    const/4 v15, 0x0

    .line 240
    move/from16 v18, v16

    .line 241
    .line 242
    const/16 v16, 0x0

    .line 243
    .line 244
    move/from16 v19, v17

    .line 245
    .line 246
    const/16 v17, 0x0

    .line 247
    .line 248
    move/from16 v21, v18

    .line 249
    .line 250
    const/16 v18, 0x0

    .line 251
    .line 252
    move/from16 v22, v19

    .line 253
    .line 254
    const/16 v19, 0x0

    .line 255
    .line 256
    move/from16 v25, v22

    .line 257
    .line 258
    const/16 v22, 0x1b0

    .line 259
    .line 260
    move/from16 v0, v21

    .line 261
    .line 262
    move-object/from16 v21, p2

    .line 263
    .line 264
    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 265
    .line 266
    .line 267
    move-object/from16 v7, v21

    .line 268
    .line 269
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 274
    .line 275
    .line 276
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    if-eqz v0, :cond_4

    .line 281
    .line 282
    new-instance v1, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda9;

    .line 283
    .line 284
    move-object/from16 v2, p0

    .line 285
    .line 286
    move-object/from16 v3, p1

    .line 287
    .line 288
    move/from16 v4, p3

    .line 289
    .line 290
    const/4 v12, 0x0

    .line 291
    invoke-direct {v1, v4, v2, v3, v12}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda9;-><init>(ILandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;I)V

    .line 292
    .line 293
    .line 294
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 295
    .line 296
    :cond_4
    return-void
.end method

.method public static final ShakeToAdvance(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 5

    .line 1
    const v0, -0xc5f2b40

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    or-int/2addr v0, p2

    .line 18
    and-int/lit8 v2, v0, 0x3

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v2, v1, :cond_1

    .line 22
    .line 23
    move v1, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_1
    and-int/2addr v0, v3

    .line 27
    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/content/Context;

    .line 40
    .line 41
    sget-object v1, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    or-int/2addr v3, v4

    .line 62
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    or-int/2addr v3, v4

    .line 67
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 74
    .line 75
    if-ne v4, v3, :cond_3

    .line 76
    .line 77
    :cond_2
    new-instance v4, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 78
    .line 79
    const/16 v3, 0x1b

    .line 80
    .line 81
    invoke-direct {v4, v0, v1, v2, v3}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 88
    .line 89
    invoke-static {v1, v4, p1}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;

    .line 103
    .line 104
    invoke-direct {v0, p2, p0}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 108
    .line 109
    :cond_5
    return-void
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-class v1, Lorg/wikipedia/random/RandomActivity;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo p0, "wikiSite"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p0, "invokeSource"

    .line 21
    .line 22
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
