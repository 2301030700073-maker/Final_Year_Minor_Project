.class public final Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $items:Ljava/util/List;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const v3, 0x3ecccccd    # 0.4f

    .line 8
    .line 9
    .line 10
    const/16 v4, 0xa

    .line 11
    .line 12
    const/high16 v5, 0x41000000    # 8.0f

    .line 13
    .line 14
    const/high16 v6, 0x3f800000    # 1.0f

    .line 15
    .line 16
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 19
    .line 20
    const/16 v8, 0x92

    .line 21
    .line 22
    const/4 v12, 0x6

    .line 23
    const/4 v13, 0x1

    .line 24
    const/4 v9, 0x0

    .line 25
    const v10, 0x3e99999a    # 0.3f

    .line 26
    .line 27
    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    move-object/from16 v1, p1

    .line 32
    .line 33
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 34
    .line 35
    move-object/from16 v17, p2

    .line 36
    .line 37
    check-cast v17, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    const/16 v17, 0x20

    .line 44
    .line 45
    move-object/from16 v14, p3

    .line 46
    .line 47
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 48
    .line 49
    move-object/from16 v18, p4

    .line 50
    .line 51
    check-cast v18, Ljava/lang/Number;

    .line 52
    .line 53
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v18

    .line 57
    and-int/lit8 v19, v18, 0x6

    .line 58
    .line 59
    if-nez v19, :cond_1

    .line 60
    .line 61
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    const/16 v16, 0x4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/16 v16, 0x2

    .line 71
    .line 72
    :goto_0
    or-int v1, v18, v16

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move/from16 v1, v18

    .line 76
    .line 77
    :goto_1
    and-int/lit8 v16, v18, 0x30

    .line 78
    .line 79
    if-nez v16, :cond_3

    .line 80
    .line 81
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 82
    .line 83
    .line 84
    move-result v16

    .line 85
    if-eqz v16, :cond_2

    .line 86
    .line 87
    move/from16 v16, v17

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const/16 v16, 0x10

    .line 91
    .line 92
    :goto_2
    or-int v1, v1, v16

    .line 93
    .line 94
    :cond_3
    and-int/lit16 v15, v1, 0x93

    .line 95
    .line 96
    if-eq v15, v8, :cond_4

    .line 97
    .line 98
    move v8, v13

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    const/4 v8, 0x0

    .line 101
    :goto_3
    and-int/2addr v1, v13

    .line 102
    invoke-virtual {v14, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lorg/wikipedia/categories/db/Category;

    .line 113
    .line 114
    const v1, 0x118f63d8

    .line 115
    .line 116
    .line 117
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1, v9, v5, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 129
    .line 130
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    invoke-direct {v8, v4}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-direct {v6, v5, v13, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 136
    .line 137
    .line 138
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 139
    .line 140
    invoke-static {v6, v4, v14, v12}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 145
    .line 146
    ushr-long v8, v5, v17

    .line 147
    .line 148
    xor-long/2addr v5, v8

    .line 149
    long-to-int v5, v5

    .line 150
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 159
    .line 160
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 164
    .line 165
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 166
    .line 167
    .line 168
    iget-boolean v9, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 169
    .line 170
    if-eqz v9, :cond_5

    .line 171
    .line 172
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 177
    .line 178
    .line 179
    :goto_4
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 180
    .line 181
    invoke-static {v14, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 185
    .line 186
    invoke-static {v14, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 194
    .line 195
    invoke-static {v14, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 196
    .line 197
    .line 198
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 199
    .line 200
    invoke-static {v14, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 201
    .line 202
    .line 203
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 204
    .line 205
    invoke-static {v14, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 209
    .line 210
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 211
    .line 212
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 217
    .line 218
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 219
    .line 220
    invoke-static {v7, v3}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 221
    .line 222
    .line 223
    move-result-object v19

    .line 224
    const/16 v40, 0x0

    .line 225
    .line 226
    const v41, 0x3fff8

    .line 227
    .line 228
    .line 229
    const/16 v22, 0x0

    .line 230
    .line 231
    const-wide/16 v23, 0x0

    .line 232
    .line 233
    const/16 v25, 0x0

    .line 234
    .line 235
    const/16 v26, 0x0

    .line 236
    .line 237
    const-wide/16 v27, 0x0

    .line 238
    .line 239
    const/16 v29, 0x0

    .line 240
    .line 241
    const-wide/16 v30, 0x0

    .line 242
    .line 243
    const/16 v32, 0x0

    .line 244
    .line 245
    const/16 v33, 0x0

    .line 246
    .line 247
    const/16 v34, 0x0

    .line 248
    .line 249
    const/16 v35, 0x0

    .line 250
    .line 251
    const/16 v36, 0x0

    .line 252
    .line 253
    const/16 v37, 0x0

    .line 254
    .line 255
    const/16 v39, 0x0

    .line 256
    .line 257
    move-object/from16 v18, v1

    .line 258
    .line 259
    move-wide/from16 v20, v5

    .line 260
    .line 261
    move-object/from16 v38, v14

    .line 262
    .line 263
    invoke-static/range {v18 .. v41}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 264
    .line 265
    .line 266
    move-object/from16 v1, v38

    .line 267
    .line 268
    iget-object v3, v0, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 275
    .line 276
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 277
    .line 278
    invoke-static {v7, v10}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 279
    .line 280
    .line 281
    move-result-object v19

    .line 282
    move-object/from16 v18, v3

    .line 283
    .line 284
    move-wide/from16 v20, v5

    .line 285
    .line 286
    invoke-static/range {v18 .. v41}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 287
    .line 288
    .line 289
    iget v0, v0, Lorg/wikipedia/categories/db/Category;->year:I

    .line 290
    .line 291
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v18

    .line 295
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 300
    .line 301
    iget-wide v3, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 302
    .line 303
    invoke-static {v7, v10}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 304
    .line 305
    .line 306
    move-result-object v19

    .line 307
    move-wide/from16 v20, v3

    .line 308
    .line 309
    invoke-static/range {v18 .. v41}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 313
    .line 314
    .line 315
    const/4 v0, 0x0

    .line 316
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_6
    move-object v1, v14

    .line 321
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 322
    .line 323
    .line 324
    :goto_5
    return-object v2

    .line 325
    :pswitch_0
    const/16 v17, 0x20

    .line 326
    .line 327
    move-object/from16 v1, p1

    .line 328
    .line 329
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 330
    .line 331
    move-object/from16 v11, p2

    .line 332
    .line 333
    check-cast v11, Ljava/lang/Number;

    .line 334
    .line 335
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v11

    .line 339
    move-object/from16 v14, p3

    .line 340
    .line 341
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 342
    .line 343
    move-object/from16 v15, p4

    .line 344
    .line 345
    check-cast v15, Ljava/lang/Number;

    .line 346
    .line 347
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 348
    .line 349
    .line 350
    move-result v15

    .line 351
    and-int/lit8 v18, v15, 0x6

    .line 352
    .line 353
    if-nez v18, :cond_8

    .line 354
    .line 355
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_7

    .line 360
    .line 361
    const/16 v16, 0x4

    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_7
    const/16 v16, 0x2

    .line 365
    .line 366
    :goto_6
    or-int v1, v15, v16

    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_8
    move v1, v15

    .line 370
    :goto_7
    and-int/lit8 v15, v15, 0x30

    .line 371
    .line 372
    if-nez v15, :cond_a

    .line 373
    .line 374
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 375
    .line 376
    .line 377
    move-result v15

    .line 378
    if-eqz v15, :cond_9

    .line 379
    .line 380
    move/from16 v15, v17

    .line 381
    .line 382
    goto :goto_8

    .line 383
    :cond_9
    const/16 v15, 0x10

    .line 384
    .line 385
    :goto_8
    or-int/2addr v1, v15

    .line 386
    :cond_a
    and-int/lit16 v15, v1, 0x93

    .line 387
    .line 388
    if-eq v15, v8, :cond_b

    .line 389
    .line 390
    move v8, v13

    .line 391
    goto :goto_9

    .line 392
    :cond_b
    const/4 v8, 0x0

    .line 393
    :goto_9
    and-int/2addr v1, v13

    .line 394
    invoke-virtual {v14, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_d

    .line 399
    .line 400
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Lorg/wikipedia/categories/db/Category;

    .line 405
    .line 406
    const v1, 0x763d0db1

    .line 407
    .line 408
    .line 409
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 410
    .line 411
    .line 412
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-static {v1, v9, v5, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 421
    .line 422
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 423
    .line 424
    invoke-direct {v8, v4}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 425
    .line 426
    .line 427
    invoke-direct {v6, v5, v13, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 428
    .line 429
    .line 430
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 431
    .line 432
    invoke-static {v6, v4, v14, v12}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 437
    .line 438
    ushr-long v8, v5, v17

    .line 439
    .line 440
    xor-long/2addr v5, v8

    .line 441
    long-to-int v5, v5

    .line 442
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 443
    .line 444
    .line 445
    move-result-object v6

    .line 446
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 451
    .line 452
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 456
    .line 457
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 458
    .line 459
    .line 460
    iget-boolean v9, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 461
    .line 462
    if-eqz v9, :cond_c

    .line 463
    .line 464
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 465
    .line 466
    .line 467
    goto :goto_a

    .line 468
    :cond_c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 469
    .line 470
    .line 471
    :goto_a
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 472
    .line 473
    invoke-static {v14, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 474
    .line 475
    .line 476
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 477
    .line 478
    invoke-static {v14, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 479
    .line 480
    .line 481
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 486
    .line 487
    invoke-static {v14, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 488
    .line 489
    .line 490
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 491
    .line 492
    invoke-static {v14, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 493
    .line 494
    .line 495
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 496
    .line 497
    invoke-static {v14, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 498
    .line 499
    .line 500
    iget-object v1, v0, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 501
    .line 502
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 503
    .line 504
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 509
    .line 510
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 511
    .line 512
    invoke-static {v7, v3}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 513
    .line 514
    .line 515
    move-result-object v19

    .line 516
    const/16 v40, 0x0

    .line 517
    .line 518
    const v41, 0x3fff8

    .line 519
    .line 520
    .line 521
    const/16 v22, 0x0

    .line 522
    .line 523
    const-wide/16 v23, 0x0

    .line 524
    .line 525
    const/16 v25, 0x0

    .line 526
    .line 527
    const/16 v26, 0x0

    .line 528
    .line 529
    const-wide/16 v27, 0x0

    .line 530
    .line 531
    const/16 v29, 0x0

    .line 532
    .line 533
    const-wide/16 v30, 0x0

    .line 534
    .line 535
    const/16 v32, 0x0

    .line 536
    .line 537
    const/16 v33, 0x0

    .line 538
    .line 539
    const/16 v34, 0x0

    .line 540
    .line 541
    const/16 v35, 0x0

    .line 542
    .line 543
    const/16 v36, 0x0

    .line 544
    .line 545
    const/16 v37, 0x0

    .line 546
    .line 547
    const/16 v39, 0x0

    .line 548
    .line 549
    move-object/from16 v18, v1

    .line 550
    .line 551
    move-wide/from16 v20, v5

    .line 552
    .line 553
    move-object/from16 v38, v14

    .line 554
    .line 555
    invoke-static/range {v18 .. v41}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 556
    .line 557
    .line 558
    move-object/from16 v1, v38

    .line 559
    .line 560
    iget-object v3, v0, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 561
    .line 562
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 567
    .line 568
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 569
    .line 570
    invoke-static {v7, v10}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 571
    .line 572
    .line 573
    move-result-object v19

    .line 574
    move-object/from16 v18, v3

    .line 575
    .line 576
    move-wide/from16 v20, v5

    .line 577
    .line 578
    invoke-static/range {v18 .. v41}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 579
    .line 580
    .line 581
    iget v0, v0, Lorg/wikipedia/categories/db/Category;->count:I

    .line 582
    .line 583
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v18

    .line 587
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 592
    .line 593
    iget-wide v3, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 594
    .line 595
    invoke-static {v7, v10}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 596
    .line 597
    .line 598
    move-result-object v19

    .line 599
    move-wide/from16 v20, v3

    .line 600
    .line 601
    invoke-static/range {v18 .. v41}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 605
    .line 606
    .line 607
    const/4 v0, 0x0

    .line 608
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 609
    .line 610
    .line 611
    goto :goto_b

    .line 612
    :cond_d
    move-object v1, v14

    .line 613
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 614
    .line 615
    .line 616
    :goto_b
    return-object v2

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
