.class public final synthetic Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 18
    .line 19
    move-object/from16 v5, p2

    .line 20
    .line 21
    check-cast v5, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    move-object/from16 v15, p3

    .line 28
    .line 29
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    move-object/from16 v6, p4

    .line 32
    .line 33
    check-cast v6, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    and-int/lit8 v1, v6, 0x30

    .line 43
    .line 44
    const/16 v7, 0x20

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    move v1, v7

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 v1, 0x10

    .line 57
    .line 58
    :goto_0
    or-int/2addr v6, v1

    .line 59
    :cond_1
    and-int/lit16 v1, v6, 0x91

    .line 60
    .line 61
    const/16 v8, 0x90

    .line 62
    .line 63
    const/4 v9, 0x1

    .line 64
    if-eq v1, v8, :cond_2

    .line 65
    .line 66
    move v1, v9

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v1, v4

    .line 69
    :goto_1
    and-int/lit8 v8, v6, 0x1

    .line 70
    .line 71
    invoke-virtual {v15, v8, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_c

    .line 76
    .line 77
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lkotlin/Pair;

    .line 82
    .line 83
    iget-object v8, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v8, Ljava/lang/String;

    .line 86
    .line 87
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_3

    .line 96
    .line 97
    const v10, -0x61992112

    .line 98
    .line 99
    .line 100
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 101
    .line 102
    .line 103
    sget-object v10, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 104
    .line 105
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 110
    .line 111
    iget-wide v11, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 112
    .line 113
    :goto_2
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 114
    .line 115
    .line 116
    move-wide/from16 v17, v11

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    const v10, -0x61991bd0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 123
    .line 124
    .line 125
    sget-object v10, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 126
    .line 127
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 132
    .line 133
    iget-wide v11, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :goto_3
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 137
    .line 138
    const/high16 v12, 0x3f800000    # 1.0f

    .line 139
    .line 140
    invoke-static {v11, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    if-lez v1, :cond_7

    .line 145
    .line 146
    const v14, 0x2e789a4a

    .line 147
    .line 148
    .line 149
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    and-int/lit8 v6, v6, 0x70

    .line 157
    .line 158
    if-ne v6, v7, :cond_4

    .line 159
    .line 160
    move v6, v9

    .line 161
    goto :goto_4

    .line 162
    :cond_4
    move v6, v4

    .line 163
    :goto_4
    or-int/2addr v6, v14

    .line 164
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    if-nez v6, :cond_5

    .line 169
    .line 170
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 171
    .line 172
    if-ne v14, v6, :cond_6

    .line 173
    .line 174
    :cond_5
    new-instance v14, Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda3;

    .line 175
    .line 176
    invoke-direct {v14, v5, v4, v3}, Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 183
    .line 184
    const/16 v3, 0xf

    .line 185
    .line 186
    const/4 v5, 0x0

    .line 187
    invoke-static {v3, v11, v5, v14, v4}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_7
    const v3, -0x6198f3f8

    .line 196
    .line 197
    .line 198
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 202
    .line 203
    .line 204
    move-object v3, v11

    .line 205
    :goto_5
    invoke-interface {v13, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    const/high16 v5, 0x41800000    # 16.0f

    .line 210
    .line 211
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 216
    .line 217
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 218
    .line 219
    const/16 v13, 0x30

    .line 220
    .line 221
    invoke-static {v6, v5, v15, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    iget-wide v13, v15, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 226
    .line 227
    ushr-long v19, v13, v7

    .line 228
    .line 229
    xor-long v13, v13, v19

    .line 230
    .line 231
    long-to-int v13, v13

    .line 232
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    invoke-static {v15, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 241
    .line 242
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    move-object/from16 p0, v11

    .line 246
    .line 247
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 248
    .line 249
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 250
    .line 251
    .line 252
    iget-boolean v7, v15, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 253
    .line 254
    if-eqz v7, :cond_8

    .line 255
    .line 256
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_8
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 261
    .line 262
    .line 263
    :goto_6
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 264
    .line 265
    invoke-static {v15, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 266
    .line 267
    .line 268
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 269
    .line 270
    invoke-static {v15, v14, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 278
    .line 279
    invoke-static {v15, v13, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    .line 281
    .line 282
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 283
    .line 284
    invoke-static {v15, v13}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 285
    .line 286
    .line 287
    move-object/from16 p2, v11

    .line 288
    .line 289
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 290
    .line 291
    invoke-static {v15, v3, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 292
    .line 293
    .line 294
    if-nez v1, :cond_9

    .line 295
    .line 296
    const v1, -0x1d9f0e32

    .line 297
    .line 298
    .line 299
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 300
    .line 301
    .line 302
    const v1, 0x7f120851

    .line 303
    .line 304
    .line 305
    invoke-static {v1, v15}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    :goto_7
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 310
    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_9
    const v3, -0x1d9f06b4

    .line 314
    .line 315
    .line 316
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 317
    .line 318
    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    new-array v12, v9, [Ljava/lang/Object;

    .line 324
    .line 325
    aput-object v3, v12, v4

    .line 326
    .line 327
    const v3, 0x7f10002b

    .line 328
    .line 329
    .line 330
    invoke-static {v3, v1, v12, v15}, Lcoil3/util/UtilsKt;->pluralStringResource(II[Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    goto :goto_7

    .line 335
    :goto_8
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 336
    .line 337
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 342
    .line 343
    iget-object v3, v3, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 344
    .line 345
    sget-object v24, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 346
    .line 347
    const/16 v30, 0x0

    .line 348
    .line 349
    const v31, 0xfffffb

    .line 350
    .line 351
    .line 352
    const-wide/16 v20, 0x0

    .line 353
    .line 354
    const-wide/16 v22, 0x0

    .line 355
    .line 356
    const/16 v25, 0x0

    .line 357
    .line 358
    const-wide/16 v26, 0x0

    .line 359
    .line 360
    const-wide/16 v28, 0x0

    .line 361
    .line 362
    move-object/from16 v19, v3

    .line 363
    .line 364
    invoke-static/range {v19 .. v31}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 365
    .line 366
    .line 367
    move-result-object v25

    .line 368
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 373
    .line 374
    move-object/from16 p4, v5

    .line 375
    .line 376
    iget-wide v4, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 377
    .line 378
    move-object v3, v7

    .line 379
    new-instance v7, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 380
    .line 381
    const/high16 v12, 0x3f800000    # 1.0f

    .line 382
    .line 383
    invoke-direct {v7, v12, v9}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 384
    .line 385
    .line 386
    const/16 v28, 0x0

    .line 387
    .line 388
    const v29, 0x1fff8

    .line 389
    .line 390
    .line 391
    move-object/from16 v16, v10

    .line 392
    .line 393
    const/4 v10, 0x0

    .line 394
    move-object/from16 v19, v11

    .line 395
    .line 396
    move/from16 v20, v12

    .line 397
    .line 398
    const-wide/16 v11, 0x0

    .line 399
    .line 400
    move-object/from16 v21, v13

    .line 401
    .line 402
    const/4 v13, 0x0

    .line 403
    move-object/from16 v22, v14

    .line 404
    .line 405
    const/4 v14, 0x0

    .line 406
    move-object/from16 v26, v15

    .line 407
    .line 408
    move-object/from16 v23, v16

    .line 409
    .line 410
    const-wide/16 v15, 0x0

    .line 411
    .line 412
    move-wide/from16 v31, v17

    .line 413
    .line 414
    const/16 v17, 0x0

    .line 415
    .line 416
    move-object/from16 v24, v19

    .line 417
    .line 418
    const-wide/16 v18, 0x0

    .line 419
    .line 420
    move/from16 v27, v20

    .line 421
    .line 422
    const/16 v20, 0x0

    .line 423
    .line 424
    move-object/from16 v33, v21

    .line 425
    .line 426
    const/16 v21, 0x0

    .line 427
    .line 428
    move-object/from16 v34, v22

    .line 429
    .line 430
    const/16 v22, 0x0

    .line 431
    .line 432
    move-object/from16 v35, v23

    .line 433
    .line 434
    const/16 v23, 0x0

    .line 435
    .line 436
    move-object/from16 v36, v24

    .line 437
    .line 438
    const/16 v24, 0x0

    .line 439
    .line 440
    move/from16 v37, v27

    .line 441
    .line 442
    const/16 v27, 0x0

    .line 443
    .line 444
    move-object/from16 v41, p0

    .line 445
    .line 446
    move-object/from16 v39, v33

    .line 447
    .line 448
    move-object/from16 v38, v34

    .line 449
    .line 450
    move-object/from16 v40, v36

    .line 451
    .line 452
    move-object/from16 v34, v6

    .line 453
    .line 454
    move-object/from16 v33, v8

    .line 455
    .line 456
    move-object v6, v1

    .line 457
    move v1, v9

    .line 458
    move-wide v8, v4

    .line 459
    move-object/from16 v5, v35

    .line 460
    .line 461
    const/16 v35, 0x20

    .line 462
    .line 463
    move-object/from16 v42, v2

    .line 464
    .line 465
    move-object/from16 v2, p2

    .line 466
    .line 467
    move-wide/from16 v43, v31

    .line 468
    .line 469
    move-object/from16 v32, v0

    .line 470
    .line 471
    move-object/from16 v31, v42

    .line 472
    .line 473
    move-object v0, v3

    .line 474
    move-wide/from16 v3, v43

    .line 475
    .line 476
    invoke-static/range {v6 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 477
    .line 478
    .line 479
    move-object/from16 v15, v26

    .line 480
    .line 481
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    if-le v6, v1, :cond_b

    .line 486
    .line 487
    const v6, 0x69c75bbc

    .line 488
    .line 489
    .line 490
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 491
    .line 492
    .line 493
    new-instance v6, Landroidx/compose/foundation/layout/VerticalAlignElement;

    .line 494
    .line 495
    move-object/from16 v7, p4

    .line 496
    .line 497
    invoke-direct {v6, v7}, Landroidx/compose/foundation/layout/VerticalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Vertical;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 505
    .line 506
    iget-wide v7, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 507
    .line 508
    sget-object v5, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 509
    .line 510
    invoke-static {v6, v7, v8, v5}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    const/high16 v6, 0x40800000    # 4.0f

    .line 515
    .line 516
    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 521
    .line 522
    invoke-static {v5, v7, v3, v4, v6}, Landroidx/compose/foundation/ImageKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    const/high16 v6, 0x41a00000    # 20.0f

    .line 527
    .line 528
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 529
    .line 530
    .line 531
    move-result-object v5

    .line 532
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 533
    .line 534
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 535
    .line 536
    const/16 v8, 0x36

    .line 537
    .line 538
    invoke-static {v6, v7, v15, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 539
    .line 540
    .line 541
    move-result-object v6

    .line 542
    iget-wide v7, v15, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 543
    .line 544
    ushr-long v9, v7, v35

    .line 545
    .line 546
    xor-long/2addr v7, v9

    .line 547
    long-to-int v7, v7

    .line 548
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    invoke-static {v15, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 557
    .line 558
    .line 559
    iget-boolean v9, v15, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 560
    .line 561
    if-eqz v9, :cond_a

    .line 562
    .line 563
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 564
    .line 565
    .line 566
    goto :goto_9

    .line 567
    :cond_a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 568
    .line 569
    .line 570
    :goto_9
    invoke-static {v15, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 571
    .line 572
    .line 573
    move-object/from16 v0, v34

    .line 574
    .line 575
    invoke-static {v15, v8, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 576
    .line 577
    .line 578
    move-object/from16 v0, v38

    .line 579
    .line 580
    move-object/from16 v2, v39

    .line 581
    .line 582
    invoke-static {v7, v15, v0, v15, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 583
    .line 584
    .line 585
    move-object/from16 v0, v40

    .line 586
    .line 587
    invoke-static {v15, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 588
    .line 589
    .line 590
    move-object/from16 v0, v41

    .line 591
    .line 592
    const/high16 v12, 0x3f800000    # 1.0f

    .line 593
    .line 594
    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 595
    .line 596
    .line 597
    move-result-object v7

    .line 598
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 599
    .line 600
    move-object/from16 v8, v33

    .line 601
    .line 602
    invoke-virtual {v8, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    const-string v2, "-"

    .line 610
    .line 611
    const-string v5, "-\n"

    .line 612
    .line 613
    invoke-static {v0, v2, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v6

    .line 617
    invoke-static {v1}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 618
    .line 619
    .line 620
    move-result-wide v9

    .line 621
    const/16 v0, 0xa

    .line 622
    .line 623
    invoke-static {v0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 624
    .line 625
    .line 626
    move-result-wide v11

    .line 627
    invoke-static {v1}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 628
    .line 629
    .line 630
    move-result-wide v13

    .line 631
    new-instance v8, Landroidx/compose/foundation/text/AutoSizeStepBased;

    .line 632
    .line 633
    invoke-direct/range {v8 .. v14}, Landroidx/compose/foundation/text/AutoSizeStepBased;-><init>(JJJ)V

    .line 634
    .line 635
    .line 636
    move-object v14, v8

    .line 637
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 638
    .line 639
    new-instance v16, Landroidx/compose/ui/text/TextStyle;

    .line 640
    .line 641
    const-wide/16 v26, 0x0

    .line 642
    .line 643
    const v28, 0xff7ffa

    .line 644
    .line 645
    .line 646
    const-wide/16 v19, 0x0

    .line 647
    .line 648
    const/16 v22, 0x0

    .line 649
    .line 650
    const-wide/16 v23, 0x0

    .line 651
    .line 652
    const/16 v25, 0x3

    .line 653
    .line 654
    move-wide/from16 v17, v3

    .line 655
    .line 656
    invoke-direct/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;JIJI)V

    .line 657
    .line 658
    .line 659
    const/16 v0, 0x30

    .line 660
    .line 661
    const/16 v17, 0x1f8

    .line 662
    .line 663
    const/4 v9, 0x0

    .line 664
    const/4 v10, 0x0

    .line 665
    const/4 v11, 0x0

    .line 666
    const/4 v12, 0x0

    .line 667
    const/4 v13, 0x0

    .line 668
    move-object/from16 v8, v16

    .line 669
    .line 670
    move/from16 v16, v0

    .line 671
    .line 672
    invoke-static/range {v6 .. v17}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/foundation/text/AutoSizeStepBased;Landroidx/compose/runtime/GapComposer;II)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 676
    .line 677
    .line 678
    const/4 v0, 0x0

    .line 679
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 680
    .line 681
    .line 682
    goto :goto_a

    .line 683
    :cond_b
    const/4 v0, 0x0

    .line 684
    const v2, 0x69dabe66

    .line 685
    .line 686
    .line 687
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 691
    .line 692
    .line 693
    :goto_a
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 694
    .line 695
    .line 696
    goto :goto_b

    .line 697
    :cond_c
    move-object/from16 v31, v2

    .line 698
    .line 699
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 700
    .line 701
    .line 702
    :goto_b
    return-object v31

    .line 703
    :pswitch_0
    move-object/from16 v32, v0

    .line 704
    .line 705
    move-object/from16 v31, v2

    .line 706
    .line 707
    move-object/from16 v0, p1

    .line 708
    .line 709
    check-cast v0, Landroidx/compose/foundation/pager/PagerScopeImpl;

    .line 710
    .line 711
    move-object/from16 v1, p2

    .line 712
    .line 713
    check-cast v1, Ljava/lang/Integer;

    .line 714
    .line 715
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 716
    .line 717
    .line 718
    move-result v1

    .line 719
    move-object/from16 v2, p3

    .line 720
    .line 721
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 722
    .line 723
    move-object/from16 v4, p4

    .line 724
    .line 725
    check-cast v4, Ljava/lang/Integer;

    .line 726
    .line 727
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    move-object/from16 v0, v32

    .line 734
    .line 735
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    check-cast v0, Lorg/wikipedia/feed/news/NewsItem;

    .line 740
    .line 741
    const/4 v1, 0x0

    .line 742
    invoke-static {v0, v3, v2, v1}, Lokhttp3/HttpUrl$Companion;->NewsItemContent(Lorg/wikipedia/feed/news/NewsItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 743
    .line 744
    .line 745
    return-object v31

    .line 746
    nop

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
