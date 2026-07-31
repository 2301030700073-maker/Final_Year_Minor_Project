.class public final synthetic Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final invoke$org$wikipedia$settings$dev$playground$ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v0, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 10
    .line 11
    move-object/from16 v2, p1

    .line 12
    .line 13
    check-cast v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 14
    .line 15
    move-object/from16 v9, p2

    .line 16
    .line 17
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v3, p3

    .line 20
    .line 21
    check-cast v3, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    and-int/lit8 v2, v3, 0x11

    .line 31
    .line 32
    const/16 v4, 0x10

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-eq v2, v4, :cond_0

    .line 36
    .line 37
    move v2, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    and-int/2addr v3, v5

    .line 41
    invoke-virtual {v9, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_7

    .line 46
    .line 47
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 48
    .line 49
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 54
    .line 55
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 56
    .line 57
    sget-object v6, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 58
    .line 59
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 60
    .line 61
    invoke-static {v7, v3, v4, v6}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/high16 v4, 0x41800000    # 16.0f

    .line 66
    .line 67
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 72
    .line 73
    new-instance v6, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const/16 v8, 0xa

    .line 76
    .line 77
    invoke-direct {v6, v8}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 78
    .line 79
    .line 80
    const/high16 v10, 0x41000000    # 8.0f

    .line 81
    .line 82
    invoke-direct {v4, v10, v5, v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 83
    .line 84
    .line 85
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 86
    .line 87
    const/4 v11, 0x6

    .line 88
    invoke-static {v4, v6, v9, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget-wide v11, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 93
    .line 94
    const/16 v27, 0x20

    .line 95
    .line 96
    ushr-long v13, v11, v27

    .line 97
    .line 98
    xor-long/2addr v11, v13

    .line 99
    long-to-int v6, v11

    .line 100
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-static {v9, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 109
    .line 110
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 114
    .line 115
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 116
    .line 117
    .line 118
    iget-boolean v13, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 119
    .line 120
    if-eqz v13, :cond_1

    .line 121
    .line 122
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 127
    .line 128
    .line 129
    :goto_1
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 130
    .line 131
    invoke-static {v9, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 132
    .line 133
    .line 134
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 135
    .line 136
    invoke-static {v9, v11, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 144
    .line 145
    invoke-static {v9, v6, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 146
    .line 147
    .line 148
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 149
    .line 150
    invoke-static {v9, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 151
    .line 152
    .line 153
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 154
    .line 155
    invoke-static {v9, v3, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 156
    .line 157
    .line 158
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 159
    .line 160
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    check-cast v15, Landroidx/compose/material3/Typography;

    .line 165
    .line 166
    iget-object v15, v15, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 167
    .line 168
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v16

    .line 172
    move-object/from16 v5, v16

    .line 173
    .line 174
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 175
    .line 176
    move-object/from16 v23, v9

    .line 177
    .line 178
    iget-wide v8, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 179
    .line 180
    const/16 v25, 0x0

    .line 181
    .line 182
    const v26, 0x1fffa

    .line 183
    .line 184
    .line 185
    move-object v5, v3

    .line 186
    const-string v3, "readingChallengeStreak"

    .line 187
    .line 188
    move-object/from16 v16, v4

    .line 189
    .line 190
    const/4 v4, 0x0

    .line 191
    move-object/from16 v17, v7

    .line 192
    .line 193
    const/4 v7, 0x0

    .line 194
    move-object/from16 v19, v5

    .line 195
    .line 196
    move-object/from16 v18, v6

    .line 197
    .line 198
    move-wide v5, v8

    .line 199
    const-wide/16 v8, 0x0

    .line 200
    .line 201
    move/from16 v20, v10

    .line 202
    .line 203
    const/4 v10, 0x0

    .line 204
    move-object/from16 v21, v11

    .line 205
    .line 206
    const/4 v11, 0x0

    .line 207
    move-object/from16 v22, v12

    .line 208
    .line 209
    move-object/from16 v24, v13

    .line 210
    .line 211
    const-wide/16 v12, 0x0

    .line 212
    .line 213
    move-object/from16 v28, v14

    .line 214
    .line 215
    const/4 v14, 0x0

    .line 216
    move-object/from16 v29, v16

    .line 217
    .line 218
    move-object/from16 v30, v22

    .line 219
    .line 220
    move-object/from16 v22, v15

    .line 221
    .line 222
    const-wide/16 v15, 0x0

    .line 223
    .line 224
    move-object/from16 v31, v17

    .line 225
    .line 226
    const/16 v17, 0x0

    .line 227
    .line 228
    move-object/from16 v32, v18

    .line 229
    .line 230
    const/16 v18, 0x0

    .line 231
    .line 232
    move-object/from16 v33, v19

    .line 233
    .line 234
    const/16 v19, 0x0

    .line 235
    .line 236
    move/from16 v34, v20

    .line 237
    .line 238
    const/16 v20, 0x0

    .line 239
    .line 240
    move-object/from16 v35, v21

    .line 241
    .line 242
    const/16 v21, 0x0

    .line 243
    .line 244
    move-object/from16 v36, v24

    .line 245
    .line 246
    const/16 v24, 0x6

    .line 247
    .line 248
    move-object/from16 p0, v0

    .line 249
    .line 250
    move-object/from16 p2, v2

    .line 251
    .line 252
    move-object/from16 v39, v28

    .line 253
    .line 254
    move-object/from16 v2, v30

    .line 255
    .line 256
    move-object/from16 v41, v31

    .line 257
    .line 258
    move-object/from16 v38, v32

    .line 259
    .line 260
    move-object/from16 v40, v33

    .line 261
    .line 262
    move-object/from16 v37, v35

    .line 263
    .line 264
    move-object/from16 v0, v36

    .line 265
    .line 266
    move-object/from16 v28, v1

    .line 267
    .line 268
    const/16 v1, 0xa

    .line 269
    .line 270
    invoke-static/range {v3 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 271
    .line 272
    .line 273
    move-object/from16 v9, v23

    .line 274
    .line 275
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 276
    .line 277
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 278
    .line 279
    new-instance v5, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 280
    .line 281
    invoke-direct {v5, v1}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 282
    .line 283
    .line 284
    const/4 v1, 0x1

    .line 285
    const/high16 v6, 0x41000000    # 8.0f

    .line 286
    .line 287
    invoke-direct {v4, v6, v1, v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 288
    .line 289
    .line 290
    const/16 v5, 0x36

    .line 291
    .line 292
    invoke-static {v4, v3, v9, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    iget-wide v4, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 297
    .line 298
    ushr-long v6, v4, v27

    .line 299
    .line 300
    xor-long/2addr v4, v6

    .line 301
    long-to-int v4, v4

    .line 302
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    move-object/from16 v6, v41

    .line 307
    .line 308
    invoke-static {v9, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 313
    .line 314
    .line 315
    iget-boolean v7, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 316
    .line 317
    if-eqz v7, :cond_2

    .line 318
    .line 319
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 320
    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_2
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 324
    .line 325
    .line 326
    :goto_2
    invoke-static {v9, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 327
    .line 328
    .line 329
    move-object/from16 v0, v29

    .line 330
    .line 331
    invoke-static {v9, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 332
    .line 333
    .line 334
    move-object/from16 v0, v37

    .line 335
    .line 336
    move-object/from16 v2, v38

    .line 337
    .line 338
    invoke-static {v4, v9, v0, v9, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v0, v39

    .line 342
    .line 343
    invoke-static {v9, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 344
    .line 345
    .line 346
    move-object/from16 v0, v28

    .line 347
    .line 348
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 357
    .line 358
    if-nez v2, :cond_4

    .line 359
    .line 360
    if-ne v3, v12, :cond_3

    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_3
    move-object/from16 v2, p0

    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_4
    :goto_3
    new-instance v3, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda12;

    .line 367
    .line 368
    move-object/from16 v2, p0

    .line 369
    .line 370
    invoke-direct {v3, v0, v2, v1}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :goto_4
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 377
    .line 378
    sget-object v8, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$-558935227:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 379
    .line 380
    const/high16 v10, 0x180000

    .line 381
    .line 382
    const/16 v11, 0x3e

    .line 383
    .line 384
    const/4 v4, 0x0

    .line 385
    const/4 v5, 0x0

    .line 386
    const/4 v6, 0x0

    .line 387
    const/4 v7, 0x0

    .line 388
    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    move-object/from16 v5, v40

    .line 400
    .line 401
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 406
    .line 407
    iget-object v4, v4, Landroidx/compose/material3/Typography;->headlineMedium:Landroidx/compose/ui/text/TextStyle;

    .line 408
    .line 409
    move-object/from16 v5, p2

    .line 410
    .line 411
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 416
    .line 417
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 418
    .line 419
    const/16 v25, 0x0

    .line 420
    .line 421
    const v26, 0x1fffa

    .line 422
    .line 423
    .line 424
    move-object/from16 v22, v4

    .line 425
    .line 426
    const/4 v4, 0x0

    .line 427
    move-object/from16 v23, v9

    .line 428
    .line 429
    const-wide/16 v8, 0x0

    .line 430
    .line 431
    const/4 v10, 0x0

    .line 432
    const/4 v11, 0x0

    .line 433
    move-object v14, v12

    .line 434
    const-wide/16 v12, 0x0

    .line 435
    .line 436
    move-object v15, v14

    .line 437
    const/4 v14, 0x0

    .line 438
    move-object/from16 v17, v15

    .line 439
    .line 440
    const-wide/16 v15, 0x0

    .line 441
    .line 442
    move-object/from16 v18, v17

    .line 443
    .line 444
    const/16 v17, 0x0

    .line 445
    .line 446
    move-object/from16 v19, v18

    .line 447
    .line 448
    const/16 v18, 0x0

    .line 449
    .line 450
    move-object/from16 v20, v19

    .line 451
    .line 452
    const/16 v19, 0x0

    .line 453
    .line 454
    move-object/from16 v21, v20

    .line 455
    .line 456
    const/16 v20, 0x0

    .line 457
    .line 458
    move-object/from16 v24, v21

    .line 459
    .line 460
    const/16 v21, 0x0

    .line 461
    .line 462
    move-object/from16 v27, v24

    .line 463
    .line 464
    const/16 v24, 0x0

    .line 465
    .line 466
    move-object/from16 v1, v27

    .line 467
    .line 468
    invoke-static/range {v3 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 469
    .line 470
    .line 471
    move-object/from16 v9, v23

    .line 472
    .line 473
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    if-nez v3, :cond_5

    .line 482
    .line 483
    if-ne v4, v1, :cond_6

    .line 484
    .line 485
    :cond_5
    new-instance v4, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda12;

    .line 486
    .line 487
    const/4 v1, 0x2

    .line 488
    invoke-direct {v4, v0, v2, v1}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    :cond_6
    move-object v3, v4

    .line 495
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 496
    .line 497
    sget-object v8, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$-1602158724:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 498
    .line 499
    const/high16 v10, 0x180000

    .line 500
    .line 501
    const/16 v11, 0x3e

    .line 502
    .line 503
    const/4 v4, 0x0

    .line 504
    const/4 v5, 0x0

    .line 505
    const/4 v6, 0x0

    .line 506
    const/4 v7, 0x0

    .line 507
    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 508
    .line 509
    .line 510
    const/4 v1, 0x1

    .line 511
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 515
    .line 516
    .line 517
    goto :goto_5

    .line 518
    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 519
    .line 520
    .line 521
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 522
    .line 523
    return-object v0
.end method

.method private final invoke$org$wikipedia$settings$homefeed$FeedConfigurationScreenKt$$ExternalSyntheticLambda4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/wikipedia/settings/homefeed/FeedConfigurationState;

    .line 6
    .line 7
    iget-object v0, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    move-object/from16 v2, p1

    .line 12
    .line 13
    check-cast v2, Landroidx/compose/foundation/layout/PaddingValues;

    .line 14
    .line 15
    move-object/from16 v11, p2

    .line 16
    .line 17
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v3, p3

    .line 20
    .line 21
    check-cast v3, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    and-int/lit8 v4, v3, 0x6

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v4, v5

    .line 44
    :goto_0
    or-int/2addr v3, v4

    .line 45
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 46
    .line 47
    const/16 v6, 0x12

    .line 48
    .line 49
    const/4 v14, 0x1

    .line 50
    const/4 v15, 0x0

    .line 51
    if-eq v4, v6, :cond_2

    .line 52
    .line 53
    move v4, v14

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v4, v15

    .line 56
    :goto_1
    and-int/2addr v3, v14

    .line 57
    invoke-virtual {v11, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_a

    .line 62
    .line 63
    sget-object v3, Lorg/wikipedia/settings/homefeed/FeedConfigurationState$Loading;->INSTANCE:Lorg/wikipedia/settings/homefeed/FeedConfigurationState$Loading;

    .line 64
    .line 65
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/16 v4, 0x20

    .line 70
    .line 71
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    const v0, -0x59d9f244

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 79
    .line 80
    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    .line 83
    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/high16 v1, 0x42000000    # 32.0f

    .line 88
    .line 89
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 94
    .line 95
    invoke-static {v1, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-wide v2, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 100
    .line 101
    ushr-long v4, v2, v4

    .line 102
    .line 103
    xor-long/2addr v2, v4

    .line 104
    long-to-int v2, v2

    .line 105
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 119
    .line 120
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 121
    .line 122
    .line 123
    iget-boolean v5, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 124
    .line 125
    if-eqz v5, :cond_3

    .line 126
    .line 127
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 132
    .line 133
    .line 134
    :goto_2
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 135
    .line 136
    invoke-static {v11, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    .line 138
    .line 139
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 140
    .line 141
    invoke-static {v11, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 149
    .line 150
    invoke-static {v11, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 154
    .line 155
    invoke-static {v11, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 156
    .line 157
    .line 158
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 159
    .line 160
    invoke-static {v11, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 161
    .line 162
    .line 163
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 164
    .line 165
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 170
    .line 171
    iget-wide v4, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 172
    .line 173
    const/4 v12, 0x0

    .line 174
    const/16 v13, 0x3d

    .line 175
    .line 176
    const/4 v3, 0x0

    .line 177
    const/4 v6, 0x0

    .line 178
    const-wide/16 v7, 0x0

    .line 179
    .line 180
    const/4 v9, 0x0

    .line 181
    const/4 v10, 0x0

    .line 182
    invoke-static/range {v3 .. v13}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-4lLiAd8(Landroidx/compose/ui/Modifier;JFJIFLandroidx/compose/runtime/GapComposer;II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_5

    .line 192
    .line 193
    :cond_4
    instance-of v3, v1, Lorg/wikipedia/settings/homefeed/FeedConfigurationState$Success;

    .line 194
    .line 195
    if-eqz v3, :cond_9

    .line 196
    .line 197
    const v3, -0x59d2f7c5

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 201
    .line 202
    .line 203
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 204
    .line 205
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v11}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-static {v2, v3, v14}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 218
    .line 219
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 220
    .line 221
    invoke-static {v3, v7, v11, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    iget-wide v7, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 226
    .line 227
    ushr-long v9, v7, v4

    .line 228
    .line 229
    xor-long/2addr v7, v9

    .line 230
    long-to-int v4, v7

    .line 231
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-static {v11, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 240
    .line 241
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 245
    .line 246
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 247
    .line 248
    .line 249
    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 250
    .line 251
    if-eqz v9, :cond_5

    .line 252
    .line 253
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 258
    .line 259
    .line 260
    :goto_3
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 261
    .line 262
    invoke-static {v11, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 263
    .line 264
    .line 265
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 266
    .line 267
    invoke-static {v11, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 275
    .line 276
    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 277
    .line 278
    .line 279
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 280
    .line 281
    invoke-static {v11, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 282
    .line 283
    .line 284
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 285
    .line 286
    invoke-static {v11, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 287
    .line 288
    .line 289
    const/high16 v2, 0x41800000    # 16.0f

    .line 290
    .line 291
    const/4 v3, 0x0

    .line 292
    invoke-static {v6, v2, v3, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    const/high16 v5, 0x41000000    # 8.0f

    .line 297
    .line 298
    invoke-static {v4, v3, v5, v14}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    const v3, 0x7f1202a0

    .line 303
    .line 304
    .line 305
    invoke-static {v3, v11}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    sget-object v5, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 310
    .line 311
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 316
    .line 317
    iget-object v5, v5, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 318
    .line 319
    sget-object v7, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 320
    .line 321
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 326
    .line 327
    iget-wide v7, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 328
    .line 329
    const/16 v25, 0x0

    .line 330
    .line 331
    const v26, 0x1fff8

    .line 332
    .line 333
    .line 334
    move-object/from16 v22, v5

    .line 335
    .line 336
    move-wide/from16 v31, v7

    .line 337
    .line 338
    move-object v8, v6

    .line 339
    move-wide/from16 v5, v31

    .line 340
    .line 341
    const/4 v7, 0x0

    .line 342
    move-object v10, v8

    .line 343
    const-wide/16 v8, 0x0

    .line 344
    .line 345
    move-object v12, v10

    .line 346
    const/4 v10, 0x0

    .line 347
    move-object/from16 v23, v11

    .line 348
    .line 349
    const/4 v11, 0x0

    .line 350
    move-object/from16 v16, v12

    .line 351
    .line 352
    const-wide/16 v12, 0x0

    .line 353
    .line 354
    move/from16 v17, v14

    .line 355
    .line 356
    const/4 v14, 0x0

    .line 357
    move/from16 v19, v15

    .line 358
    .line 359
    move-object/from16 v18, v16

    .line 360
    .line 361
    const-wide/16 v15, 0x0

    .line 362
    .line 363
    move/from16 v20, v17

    .line 364
    .line 365
    const/16 v17, 0x0

    .line 366
    .line 367
    move-object/from16 v21, v18

    .line 368
    .line 369
    const/16 v18, 0x0

    .line 370
    .line 371
    move/from16 v24, v19

    .line 372
    .line 373
    const/16 v19, 0x0

    .line 374
    .line 375
    move/from16 v27, v20

    .line 376
    .line 377
    const/16 v20, 0x0

    .line 378
    .line 379
    move-object/from16 v28, v21

    .line 380
    .line 381
    const/16 v21, 0x0

    .line 382
    .line 383
    move/from16 v29, v24

    .line 384
    .line 385
    const/16 v24, 0x30

    .line 386
    .line 387
    move-object/from16 v30, v1

    .line 388
    .line 389
    move-object/from16 v1, v28

    .line 390
    .line 391
    invoke-static/range {v3 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 392
    .line 393
    .line 394
    move-object/from16 v11, v23

    .line 395
    .line 396
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-static {v11, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 401
    .line 402
    .line 403
    const v1, 0x10090a14

    .line 404
    .line 405
    .line 406
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 407
    .line 408
    .line 409
    move-object/from16 v1, v30

    .line 410
    .line 411
    check-cast v1, Lorg/wikipedia/settings/homefeed/FeedConfigurationState$Success;

    .line 412
    .line 413
    iget-object v1, v1, Lorg/wikipedia/settings/homefeed/FeedConfigurationState$Success;->items:Ljava/util/List;

    .line 414
    .line 415
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    if-eqz v2, :cond_8

    .line 424
    .line 425
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    check-cast v2, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;

    .line 430
    .line 431
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    or-int/2addr v3, v4

    .line 440
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    if-nez v3, :cond_6

    .line 445
    .line 446
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 447
    .line 448
    if-ne v4, v3, :cond_7

    .line 449
    .line 450
    :cond_6
    new-instance v4, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;

    .line 451
    .line 452
    const/16 v3, 0x9

    .line 453
    .line 454
    invoke-direct {v4, v3, v0, v2}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :cond_7
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 461
    .line 462
    const/4 v3, 0x0

    .line 463
    invoke-static {v2, v4, v11, v3}, Lokio/Okio__OkioKt;->FeedConfigurationItemView(Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 464
    .line 465
    .line 466
    goto :goto_4

    .line 467
    :cond_8
    const/4 v2, 0x1

    .line 468
    const/4 v3, 0x0

    .line 469
    invoke-static {v11, v3, v2, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;ZZZ)V

    .line 470
    .line 471
    .line 472
    goto :goto_5

    .line 473
    :cond_9
    move v3, v15

    .line 474
    const v0, 0x26644fe7

    .line 475
    .line 476
    .line 477
    invoke-static {v11, v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    throw v0

    .line 482
    :cond_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 483
    .line 484
    .line 485
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 486
    .line 487
    return-object v0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 70

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0xd

    .line 6
    .line 7
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    .line 9
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 10
    .line 11
    const/16 v8, 0x12

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v12, 0x3

    .line 15
    const/4 v15, 0x2

    .line 16
    const/16 v16, 0x20

    .line 17
    .line 18
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 19
    .line 20
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    const/4 v10, 0x1

    .line 23
    const/4 v14, 0x0

    .line 24
    iget-object v13, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v6, v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 27
    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    check-cast v13, Ljava/util/List;

    .line 34
    .line 35
    move-object/from16 v0, p1

    .line 36
    .line 37
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 38
    .line 39
    move-object/from16 v1, p2

    .line 40
    .line 41
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    move-object/from16 v5, p3

    .line 44
    .line 45
    check-cast v5, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    sget v17, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;->$r8$clinit:I

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    and-int/lit8 v17, v5, 0x6

    .line 57
    .line 58
    if-nez v17, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v17

    .line 64
    if-eqz v17, :cond_0

    .line 65
    .line 66
    const/16 v18, 0x4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move/from16 v18, v15

    .line 70
    .line 71
    :goto_0
    or-int v5, v5, v18

    .line 72
    .line 73
    :cond_1
    and-int/lit8 v11, v5, 0x13

    .line 74
    .line 75
    if-eq v11, v8, :cond_2

    .line 76
    .line 77
    move v8, v10

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v8, v14

    .line 80
    :goto_1
    and-int/2addr v5, v10

    .line 81
    invoke-virtual {v1, v5, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_7

    .line 86
    .line 87
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 88
    .line 89
    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/high16 v5, 0x41800000    # 16.0f

    .line 94
    .line 95
    invoke-static {v0, v5, v9, v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v1}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-static {v0, v8, v10}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 108
    .line 109
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 110
    .line 111
    invoke-static {v8, v11, v1, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    iget-wide v10, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 116
    .line 117
    ushr-long v16, v10, v16

    .line 118
    .line 119
    xor-long v10, v10, v16

    .line 120
    .line 121
    long-to-int v10, v10

    .line 122
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 131
    .line 132
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 138
    .line 139
    .line 140
    iget-boolean v14, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 141
    .line 142
    if-eqz v14, :cond_3

    .line 143
    .line 144
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 149
    .line 150
    .line 151
    :goto_2
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 152
    .line 153
    invoke-static {v1, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 154
    .line 155
    .line 156
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 157
    .line 158
    invoke-static {v1, v11, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 166
    .line 167
    invoke-static {v1, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 171
    .line 172
    invoke-static {v1, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 173
    .line 174
    .line 175
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 176
    .line 177
    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 181
    .line 182
    new-instance v5, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    .line 183
    .line 184
    invoke-direct {v5, v0}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    .line 185
    .line 186
    .line 187
    const/high16 v20, 0x41400000    # 12.0f

    .line 188
    .line 189
    const/16 v21, 0x7

    .line 190
    .line 191
    const/16 v17, 0x0

    .line 192
    .line 193
    const/16 v18, 0x0

    .line 194
    .line 195
    const/16 v19, 0x0

    .line 196
    .line 197
    move-object/from16 v16, v5

    .line 198
    .line 199
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0, v9, v15}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v20

    .line 207
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    if-nez v0, :cond_4

    .line 216
    .line 217
    if-ne v5, v7, :cond_5

    .line 218
    .line 219
    :cond_4
    new-instance v5, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;

    .line 220
    .line 221
    invoke-direct {v5, v2, v6}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_5
    move-object/from16 v19, v5

    .line 228
    .line 229
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 230
    .line 231
    sget-object v24, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->lambda$1116339918:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 232
    .line 233
    const/high16 v26, 0x180000

    .line 234
    .line 235
    const/16 v27, 0x3c

    .line 236
    .line 237
    const/16 v21, 0x0

    .line 238
    .line 239
    const/16 v22, 0x0

    .line 240
    .line 241
    const/16 v23, 0x0

    .line 242
    .line 243
    move-object/from16 v25, v1

    .line 244
    .line 245
    invoke-static/range {v19 .. v27}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v0, v25

    .line 249
    .line 250
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 251
    .line 252
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    const/high16 v9, 0x42000000    # 32.0f

    .line 257
    .line 258
    const/4 v10, 0x7

    .line 259
    const/4 v6, 0x0

    .line 260
    const/4 v7, 0x0

    .line 261
    const/4 v8, 0x0

    .line 262
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 263
    .line 264
    .line 265
    move-result-object v20

    .line 266
    const v2, 0x7f120714

    .line 267
    .line 268
    .line 269
    invoke-static {v2, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v19

    .line 273
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 280
    .line 281
    iget-object v2, v2, Landroidx/compose/material3/Typography;->headlineSmall:Landroidx/compose/ui/text/TextStyle;

    .line 282
    .line 283
    sget-object v26, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 284
    .line 285
    const/16 v32, 0x0

    .line 286
    .line 287
    const v33, 0xfffffb

    .line 288
    .line 289
    .line 290
    const-wide/16 v22, 0x0

    .line 291
    .line 292
    const-wide/16 v24, 0x0

    .line 293
    .line 294
    const/16 v27, 0x0

    .line 295
    .line 296
    const-wide/16 v28, 0x0

    .line 297
    .line 298
    const-wide/16 v30, 0x0

    .line 299
    .line 300
    move-object/from16 v21, v2

    .line 301
    .line 302
    invoke-static/range {v21 .. v33}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 303
    .line 304
    .line 305
    move-result-object v38

    .line 306
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 307
    .line 308
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 313
    .line 314
    iget-wide v5, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 315
    .line 316
    new-instance v2, Landroidx/compose/ui/text/style/TextAlign;

    .line 317
    .line 318
    invoke-direct {v2, v12}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 319
    .line 320
    .line 321
    const/16 v41, 0x0

    .line 322
    .line 323
    const v42, 0x1fbf8

    .line 324
    .line 325
    .line 326
    const/16 v23, 0x0

    .line 327
    .line 328
    const/16 v26, 0x0

    .line 329
    .line 330
    const-wide/16 v31, 0x0

    .line 331
    .line 332
    const/16 v33, 0x0

    .line 333
    .line 334
    const/16 v34, 0x0

    .line 335
    .line 336
    const/16 v35, 0x0

    .line 337
    .line 338
    const/16 v36, 0x0

    .line 339
    .line 340
    const/16 v37, 0x0

    .line 341
    .line 342
    const/16 v40, 0x30

    .line 343
    .line 344
    move-object/from16 v39, v0

    .line 345
    .line 346
    move-object/from16 v30, v2

    .line 347
    .line 348
    move-wide/from16 v21, v5

    .line 349
    .line 350
    invoke-static/range {v19 .. v42}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 351
    .line 352
    .line 353
    const v2, -0x7093cbd2

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_6

    .line 368
    .line 369
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    check-cast v5, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 374
    .line 375
    const/16 v20, 0x0

    .line 376
    .line 377
    const/16 v22, 0x7

    .line 378
    .line 379
    const/16 v18, 0x0

    .line 380
    .line 381
    const/16 v19, 0x0

    .line 382
    .line 383
    move-object/from16 v17, v1

    .line 384
    .line 385
    const/high16 v21, 0x41800000    # 16.0f

    .line 386
    .line 387
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    move-object/from16 v8, v17

    .line 392
    .line 393
    const/4 v6, 0x6

    .line 394
    const/4 v7, 0x0

    .line 395
    invoke-static {v1, v5, v0, v6, v7}, Lorg/wikipedia/compose/components/TabsBoxKt;->OnboardingListItem(Landroidx/compose/ui/Modifier;Lorg/wikipedia/compose/components/OnboardingItem;Landroidx/compose/runtime/GapComposer;II)V

    .line 396
    .line 397
    .line 398
    move-object v1, v8

    .line 399
    goto :goto_3

    .line 400
    :cond_6
    move-object v8, v1

    .line 401
    const/4 v7, 0x0

    .line 402
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 403
    .line 404
    .line 405
    new-instance v1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 406
    .line 407
    const/4 v2, 0x1

    .line 408
    invoke-direct {v1, v3, v2}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 409
    .line 410
    .line 411
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v8, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 415
    .line 416
    .line 417
    move-result-object v20

    .line 418
    const v1, 0x7f120719

    .line 419
    .line 420
    .line 421
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v19

    .line 425
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 432
    .line 433
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 434
    .line 435
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 436
    .line 437
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 442
    .line 443
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 444
    .line 445
    new-instance v5, Landroidx/compose/ui/text/style/TextAlign;

    .line 446
    .line 447
    invoke-direct {v5, v12}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 448
    .line 449
    .line 450
    const/16 v41, 0x0

    .line 451
    .line 452
    const v42, 0x1fbf8

    .line 453
    .line 454
    .line 455
    const/16 v23, 0x0

    .line 456
    .line 457
    const-wide/16 v24, 0x0

    .line 458
    .line 459
    const/16 v26, 0x0

    .line 460
    .line 461
    const/16 v27, 0x0

    .line 462
    .line 463
    const-wide/16 v28, 0x0

    .line 464
    .line 465
    const-wide/16 v31, 0x0

    .line 466
    .line 467
    const/16 v33, 0x0

    .line 468
    .line 469
    const/16 v34, 0x0

    .line 470
    .line 471
    const/16 v35, 0x0

    .line 472
    .line 473
    const/16 v36, 0x0

    .line 474
    .line 475
    const/16 v37, 0x0

    .line 476
    .line 477
    const/16 v40, 0x30

    .line 478
    .line 479
    move-object/from16 v39, v0

    .line 480
    .line 481
    move-object/from16 v38, v1

    .line 482
    .line 483
    move-wide/from16 v21, v2

    .line 484
    .line 485
    move-object/from16 v30, v5

    .line 486
    .line 487
    invoke-static/range {v19 .. v42}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 488
    .line 489
    .line 490
    const/4 v2, 0x1

    .line 491
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 492
    .line 493
    .line 494
    goto :goto_4

    .line 495
    :cond_7
    move-object v0, v1

    .line 496
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 497
    .line 498
    .line 499
    :goto_4
    return-object v4

    .line 500
    :pswitch_0
    invoke-direct/range {p0 .. p3}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->invoke$org$wikipedia$settings$homefeed$FeedConfigurationScreenKt$$ExternalSyntheticLambda4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    return-object v0

    .line 505
    :pswitch_1
    invoke-direct/range {p0 .. p3}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->invoke$org$wikipedia$settings$dev$playground$ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    return-object v0

    .line 510
    :pswitch_2
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 511
    .line 512
    check-cast v13, Ljava/lang/String;

    .line 513
    .line 514
    move-object/from16 v0, p1

    .line 515
    .line 516
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 517
    .line 518
    move-object/from16 v1, p2

    .line 519
    .line 520
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 521
    .line 522
    move-object/from16 v2, p3

    .line 523
    .line 524
    check-cast v2, Ljava/lang/Integer;

    .line 525
    .line 526
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    sget v3, Lorg/wikipedia/settings/LicenseActivity;->$r8$clinit:I

    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    and-int/lit8 v3, v2, 0x6

    .line 536
    .line 537
    if-nez v3, :cond_9

    .line 538
    .line 539
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    if-eqz v3, :cond_8

    .line 544
    .line 545
    const/4 v10, 0x4

    .line 546
    goto :goto_5

    .line 547
    :cond_8
    move v10, v15

    .line 548
    :goto_5
    or-int/2addr v2, v10

    .line 549
    :cond_9
    and-int/lit8 v3, v2, 0x13

    .line 550
    .line 551
    if-eq v3, v8, :cond_a

    .line 552
    .line 553
    const/4 v3, 0x1

    .line 554
    :goto_6
    const/4 v5, 0x1

    .line 555
    goto :goto_7

    .line 556
    :cond_a
    const/4 v3, 0x0

    .line 557
    goto :goto_6

    .line 558
    :goto_7
    and-int/2addr v2, v5

    .line 559
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    if-eqz v2, :cond_c

    .line 564
    .line 565
    invoke-static {v1}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    invoke-static {v6, v2, v5}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    const/high16 v2, 0x41800000    # 16.0f

    .line 578
    .line 579
    const/high16 v3, 0x41000000    # 8.0f

    .line 580
    .line 581
    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 586
    .line 587
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 588
    .line 589
    const/4 v7, 0x0

    .line 590
    invoke-static {v2, v3, v1, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    iget-wide v5, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 595
    .line 596
    ushr-long v7, v5, v16

    .line 597
    .line 598
    xor-long/2addr v5, v7

    .line 599
    long-to-int v3, v5

    .line 600
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 601
    .line 602
    .line 603
    move-result-object v5

    .line 604
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 609
    .line 610
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 614
    .line 615
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 616
    .line 617
    .line 618
    iget-boolean v7, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 619
    .line 620
    if-eqz v7, :cond_b

    .line 621
    .line 622
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 623
    .line 624
    .line 625
    goto :goto_8

    .line 626
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 627
    .line 628
    .line 629
    :goto_8
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 630
    .line 631
    invoke-static {v1, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 632
    .line 633
    .line 634
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 635
    .line 636
    invoke-static {v1, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 637
    .line 638
    .line 639
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 644
    .line 645
    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 646
    .line 647
    .line 648
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 649
    .line 650
    invoke-static {v1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 651
    .line 652
    .line 653
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 654
    .line 655
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 656
    .line 657
    .line 658
    sget v0, Landroidx/compose/ui/text/AnnotatedString;->$r8$clinit:I

    .line 659
    .line 660
    const/4 v0, 0x0

    .line 661
    const/4 v6, 0x6

    .line 662
    invoke-static {v13, v0, v6}, Landroidx/compose/ui/text/ParagraphKt;->fromHtml$default(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;I)Landroidx/compose/ui/text/AnnotatedString;

    .line 663
    .line 664
    .line 665
    move-result-object v46

    .line 666
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 667
    .line 668
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 673
    .line 674
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 675
    .line 676
    const v0, 0x3f19999a    # 0.6f

    .line 677
    .line 678
    .line 679
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 680
    .line 681
    .line 682
    move-result-wide v48

    .line 683
    const/16 v67, 0x0

    .line 684
    .line 685
    const v68, 0x7fffa

    .line 686
    .line 687
    .line 688
    const/16 v47, 0x0

    .line 689
    .line 690
    const-wide/16 v50, 0x0

    .line 691
    .line 692
    const/16 v52, 0x0

    .line 693
    .line 694
    const-wide/16 v53, 0x0

    .line 695
    .line 696
    const/16 v55, 0x0

    .line 697
    .line 698
    const-wide/16 v56, 0x0

    .line 699
    .line 700
    const/16 v58, 0x0

    .line 701
    .line 702
    const/16 v59, 0x0

    .line 703
    .line 704
    const/16 v60, 0x0

    .line 705
    .line 706
    const/16 v61, 0x0

    .line 707
    .line 708
    const/16 v62, 0x0

    .line 709
    .line 710
    const/16 v63, 0x0

    .line 711
    .line 712
    const/16 v64, 0x0

    .line 713
    .line 714
    const/16 v66, 0x0

    .line 715
    .line 716
    move-object/from16 v65, v1

    .line 717
    .line 718
    invoke-static/range {v46 .. v68}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 719
    .line 720
    .line 721
    move-object/from16 v0, v65

    .line 722
    .line 723
    const/4 v2, 0x1

    .line 724
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 725
    .line 726
    .line 727
    goto :goto_9

    .line 728
    :cond_c
    move-object v0, v1

    .line 729
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 730
    .line 731
    .line 732
    :goto_9
    return-object v4

    .line 733
    :pswitch_3
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 734
    .line 735
    check-cast v13, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 736
    .line 737
    move-object/from16 v0, p1

    .line 738
    .line 739
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 740
    .line 741
    move-object/from16 v1, p2

    .line 742
    .line 743
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 744
    .line 745
    move-object/from16 v2, p3

    .line 746
    .line 747
    check-cast v2, Ljava/lang/Integer;

    .line 748
    .line 749
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 754
    .line 755
    .line 756
    and-int/lit8 v0, v2, 0x11

    .line 757
    .line 758
    const/16 v3, 0x10

    .line 759
    .line 760
    if-eq v0, v3, :cond_d

    .line 761
    .line 762
    const/4 v0, 0x1

    .line 763
    :goto_a
    const/16 v44, 0x1

    .line 764
    .line 765
    goto :goto_b

    .line 766
    :cond_d
    const/4 v0, 0x0

    .line 767
    goto :goto_a

    .line 768
    :goto_b
    and-int/lit8 v2, v2, 0x1

    .line 769
    .line 770
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 771
    .line 772
    .line 773
    move-result v0

    .line 774
    if-eqz v0, :cond_10

    .line 775
    .line 776
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v2

    .line 784
    if-nez v0, :cond_e

    .line 785
    .line 786
    if-ne v2, v7, :cond_f

    .line 787
    .line 788
    :cond_e
    new-instance v2, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 789
    .line 790
    const/16 v0, 0x1b

    .line 791
    .line 792
    invoke-direct {v2, v0, v6}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 796
    .line 797
    .line 798
    :cond_f
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 799
    .line 800
    const/16 v0, 0xf

    .line 801
    .line 802
    const/4 v3, 0x0

    .line 803
    const/4 v7, 0x0

    .line 804
    invoke-static {v0, v5, v3, v2, v7}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    const/4 v2, 0x1

    .line 809
    const/high16 v3, 0x41000000    # 8.0f

    .line 810
    .line 811
    invoke-static {v0, v9, v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    invoke-static {v13, v0, v1, v7}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->SourceView(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 816
    .line 817
    .line 818
    goto :goto_c

    .line 819
    :cond_10
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 820
    .line 821
    .line 822
    :goto_c
    return-object v4

    .line 823
    :pswitch_4
    check-cast v6, Landroid/content/Context;

    .line 824
    .line 825
    check-cast v13, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;

    .line 826
    .line 827
    move-object/from16 v0, p1

    .line 828
    .line 829
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 830
    .line 831
    move-object/from16 v1, p2

    .line 832
    .line 833
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 834
    .line 835
    move-object/from16 v2, p3

    .line 836
    .line 837
    check-cast v2, Ljava/lang/Integer;

    .line 838
    .line 839
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    .line 845
    .line 846
    and-int/lit8 v0, v2, 0x11

    .line 847
    .line 848
    const/16 v3, 0x10

    .line 849
    .line 850
    if-eq v0, v3, :cond_11

    .line 851
    .line 852
    const/4 v0, 0x1

    .line 853
    :goto_d
    const/16 v44, 0x1

    .line 854
    .line 855
    goto :goto_e

    .line 856
    :cond_11
    const/4 v0, 0x0

    .line 857
    goto :goto_d

    .line 858
    :goto_e
    and-int/lit8 v2, v2, 0x1

    .line 859
    .line 860
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-eqz v0, :cond_12

    .line 865
    .line 866
    iget-object v0, v13, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;->langCode:Ljava/lang/String;

    .line 867
    .line 868
    const v2, 0x7f1204d9

    .line 869
    .line 870
    .line 871
    const/4 v7, 0x0

    .line 872
    new-array v3, v7, [Ljava/lang/Object;

    .line 873
    .line 874
    invoke-static {v6, v0, v2, v3}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v20

    .line 878
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 879
    .line 880
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 885
    .line 886
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 887
    .line 888
    sget-object v26, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 889
    .line 890
    const/16 v32, 0x0

    .line 891
    .line 892
    const v33, 0xfffffb

    .line 893
    .line 894
    .line 895
    const-wide/16 v22, 0x0

    .line 896
    .line 897
    const-wide/16 v24, 0x0

    .line 898
    .line 899
    const/16 v27, 0x0

    .line 900
    .line 901
    const-wide/16 v28, 0x0

    .line 902
    .line 903
    const-wide/16 v30, 0x0

    .line 904
    .line 905
    move-object/from16 v21, v0

    .line 906
    .line 907
    invoke-static/range {v21 .. v33}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 908
    .line 909
    .line 910
    move-result-object v39

    .line 911
    new-instance v0, Landroidx/compose/ui/text/style/TextAlign;

    .line 912
    .line 913
    invoke-direct {v0, v12}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 914
    .line 915
    .line 916
    const/16 v42, 0x0

    .line 917
    .line 918
    const v43, 0x1fbfe

    .line 919
    .line 920
    .line 921
    const/16 v21, 0x0

    .line 922
    .line 923
    const/16 v24, 0x0

    .line 924
    .line 925
    const-wide/16 v25, 0x0

    .line 926
    .line 927
    const/16 v28, 0x0

    .line 928
    .line 929
    const-wide/16 v29, 0x0

    .line 930
    .line 931
    const-wide/16 v32, 0x0

    .line 932
    .line 933
    const/16 v34, 0x0

    .line 934
    .line 935
    const/16 v35, 0x0

    .line 936
    .line 937
    const/16 v36, 0x0

    .line 938
    .line 939
    const/16 v37, 0x0

    .line 940
    .line 941
    const/16 v38, 0x0

    .line 942
    .line 943
    const/16 v41, 0x0

    .line 944
    .line 945
    move-object/from16 v31, v0

    .line 946
    .line 947
    move-object/from16 v40, v1

    .line 948
    .line 949
    invoke-static/range {v20 .. v43}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 950
    .line 951
    .line 952
    goto :goto_f

    .line 953
    :cond_12
    move-object/from16 v40, v1

    .line 954
    .line 955
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 956
    .line 957
    .line 958
    :goto_f
    return-object v4

    .line 959
    :pswitch_5
    check-cast v6, Landroid/content/Context;

    .line 960
    .line 961
    check-cast v13, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;

    .line 962
    .line 963
    move-object/from16 v0, p1

    .line 964
    .line 965
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 966
    .line 967
    move-object/from16 v1, p2

    .line 968
    .line 969
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 970
    .line 971
    move-object/from16 v2, p3

    .line 972
    .line 973
    check-cast v2, Ljava/lang/Integer;

    .line 974
    .line 975
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 976
    .line 977
    .line 978
    move-result v2

    .line 979
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 980
    .line 981
    .line 982
    and-int/lit8 v0, v2, 0x11

    .line 983
    .line 984
    const/16 v3, 0x10

    .line 985
    .line 986
    if-eq v0, v3, :cond_13

    .line 987
    .line 988
    const/4 v0, 0x1

    .line 989
    :goto_10
    const/16 v44, 0x1

    .line 990
    .line 991
    goto :goto_11

    .line 992
    :cond_13
    const/4 v0, 0x0

    .line 993
    goto :goto_10

    .line 994
    :goto_11
    and-int/lit8 v2, v2, 0x1

    .line 995
    .line 996
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 997
    .line 998
    .line 999
    move-result v0

    .line 1000
    if-eqz v0, :cond_14

    .line 1001
    .line 1002
    iget-object v0, v13, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;->langCode:Ljava/lang/String;

    .line 1003
    .line 1004
    const v2, 0x7f1204c0

    .line 1005
    .line 1006
    .line 1007
    const/4 v7, 0x0

    .line 1008
    new-array v3, v7, [Ljava/lang/Object;

    .line 1009
    .line 1010
    invoke-static {v6, v0, v2, v3}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v20

    .line 1014
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1015
    .line 1016
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1021
    .line 1022
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1023
    .line 1024
    sget-object v26, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 1025
    .line 1026
    const/16 v32, 0x0

    .line 1027
    .line 1028
    const v33, 0xfffffb

    .line 1029
    .line 1030
    .line 1031
    const-wide/16 v22, 0x0

    .line 1032
    .line 1033
    const-wide/16 v24, 0x0

    .line 1034
    .line 1035
    const/16 v27, 0x0

    .line 1036
    .line 1037
    const-wide/16 v28, 0x0

    .line 1038
    .line 1039
    const-wide/16 v30, 0x0

    .line 1040
    .line 1041
    move-object/from16 v21, v0

    .line 1042
    .line 1043
    invoke-static/range {v21 .. v33}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v39

    .line 1047
    new-instance v0, Landroidx/compose/ui/text/style/TextAlign;

    .line 1048
    .line 1049
    invoke-direct {v0, v12}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 1050
    .line 1051
    .line 1052
    const/16 v42, 0x0

    .line 1053
    .line 1054
    const v43, 0x1fbfe

    .line 1055
    .line 1056
    .line 1057
    const/16 v21, 0x0

    .line 1058
    .line 1059
    const/16 v24, 0x0

    .line 1060
    .line 1061
    const-wide/16 v25, 0x0

    .line 1062
    .line 1063
    const/16 v28, 0x0

    .line 1064
    .line 1065
    const-wide/16 v29, 0x0

    .line 1066
    .line 1067
    const-wide/16 v32, 0x0

    .line 1068
    .line 1069
    const/16 v34, 0x0

    .line 1070
    .line 1071
    const/16 v35, 0x0

    .line 1072
    .line 1073
    const/16 v36, 0x0

    .line 1074
    .line 1075
    const/16 v37, 0x0

    .line 1076
    .line 1077
    const/16 v38, 0x0

    .line 1078
    .line 1079
    const/16 v41, 0x0

    .line 1080
    .line 1081
    move-object/from16 v31, v0

    .line 1082
    .line 1083
    move-object/from16 v40, v1

    .line 1084
    .line 1085
    invoke-static/range {v20 .. v43}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_12

    .line 1089
    :cond_14
    move-object/from16 v40, v1

    .line 1090
    .line 1091
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1092
    .line 1093
    .line 1094
    :goto_12
    return-object v4

    .line 1095
    :pswitch_6
    check-cast v6, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;

    .line 1096
    .line 1097
    move-object v7, v13

    .line 1098
    check-cast v7, Lorg/wikipedia/dataclient/WikiSite;

    .line 1099
    .line 1100
    move-object/from16 v8, p1

    .line 1101
    .line 1102
    check-cast v8, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 1103
    .line 1104
    move-object/from16 v0, p2

    .line 1105
    .line 1106
    check-cast v0, Ljava/lang/Integer;

    .line 1107
    .line 1108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1109
    .line 1110
    .line 1111
    move-result v9

    .line 1112
    move-object/from16 v10, p3

    .line 1113
    .line 1114
    check-cast v10, Ljava/lang/String;

    .line 1115
    .line 1116
    sget v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;->$r8$clinit:I

    .line 1117
    .line 1118
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1122
    .line 1123
    .line 1124
    iget-object v0, v6, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;->pageOverflowMenuViewModel$delegate:Lokhttp3/Request$Builder;

    .line 1125
    .line 1126
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    move-object v5, v0

    .line 1131
    check-cast v5, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;

    .line 1132
    .line 1133
    new-instance v11, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda3;

    .line 1134
    .line 1135
    invoke-direct {v11, v6, v12}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 1136
    .line 1137
    .line 1138
    new-instance v12, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda3;

    .line 1139
    .line 1140
    const/4 v0, 0x4

    .line 1141
    invoke-direct {v12, v6, v0}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 1142
    .line 1143
    .line 1144
    new-instance v13, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;

    .line 1145
    .line 1146
    const/4 v0, 0x0

    .line 1147
    invoke-direct {v13, v6, v0}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 1148
    .line 1149
    .line 1150
    new-instance v14, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;

    .line 1151
    .line 1152
    invoke-direct {v14, v6, v15}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 1153
    .line 1154
    .line 1155
    new-instance v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;

    .line 1156
    .line 1157
    const/4 v2, 0x1

    .line 1158
    invoke-direct {v0, v6, v2}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 1159
    .line 1160
    .line 1161
    new-instance v1, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda3;

    .line 1162
    .line 1163
    invoke-direct {v1, v6, v2}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 1164
    .line 1165
    .line 1166
    new-instance v2, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda3;

    .line 1167
    .line 1168
    invoke-direct {v2, v6, v15}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 1169
    .line 1170
    .line 1171
    move-object v15, v0

    .line 1172
    move-object/from16 v16, v1

    .line 1173
    .line 1174
    move-object/from16 v17, v2

    .line 1175
    .line 1176
    invoke-virtual/range {v5 .. v17}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;->onPageOverflowClick(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/page/PageSummary;ILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 1177
    .line 1178
    .line 1179
    return-object v4

    .line 1180
    :pswitch_7
    check-cast v6, Lorg/wikipedia/feed/ForYouContentState;

    .line 1181
    .line 1182
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 1183
    .line 1184
    move-object/from16 v0, p1

    .line 1185
    .line 1186
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1187
    .line 1188
    move-object/from16 v1, p2

    .line 1189
    .line 1190
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1191
    .line 1192
    move-object/from16 v3, p3

    .line 1193
    .line 1194
    check-cast v3, Ljava/lang/Integer;

    .line 1195
    .line 1196
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1197
    .line 1198
    .line 1199
    move-result v3

    .line 1200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    .line 1202
    .line 1203
    and-int/lit8 v0, v3, 0x11

    .line 1204
    .line 1205
    const/16 v5, 0x10

    .line 1206
    .line 1207
    if-eq v0, v5, :cond_15

    .line 1208
    .line 1209
    const/4 v0, 0x1

    .line 1210
    :goto_13
    const/16 v44, 0x1

    .line 1211
    .line 1212
    goto :goto_14

    .line 1213
    :cond_15
    const/4 v0, 0x0

    .line 1214
    goto :goto_13

    .line 1215
    :goto_14
    and-int/lit8 v3, v3, 0x1

    .line 1216
    .line 1217
    invoke-virtual {v1, v3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1218
    .line 1219
    .line 1220
    move-result v0

    .line 1221
    if-eqz v0, :cond_18

    .line 1222
    .line 1223
    iget-object v0, v6, Lorg/wikipedia/feed/ForYouContentState;->error:Ljava/lang/Throwable;

    .line 1224
    .line 1225
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v3

    .line 1229
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v5

    .line 1233
    if-nez v3, :cond_16

    .line 1234
    .line 1235
    if-ne v5, v7, :cond_17

    .line 1236
    .line 1237
    :cond_16
    new-instance v5, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 1238
    .line 1239
    invoke-direct {v5, v13, v2}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1243
    .line 1244
    .line 1245
    :cond_17
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 1246
    .line 1247
    const/4 v7, 0x0

    .line 1248
    invoke-static {v0, v5, v1, v7}, Lorg/wikipedia/feed/ForYouCardKt;->ErrorState(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 1249
    .line 1250
    .line 1251
    goto :goto_15

    .line 1252
    :cond_18
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1253
    .line 1254
    .line 1255
    :goto_15
    return-object v4

    .line 1256
    :pswitch_8
    move-object v8, v6

    .line 1257
    check-cast v8, Landroidx/compose/ui/graphics/painter/Painter;

    .line 1258
    .line 1259
    move-object/from16 v46, v13

    .line 1260
    .line 1261
    check-cast v46, Ljava/lang/String;

    .line 1262
    .line 1263
    move-object/from16 v0, p1

    .line 1264
    .line 1265
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1266
    .line 1267
    move-object/from16 v13, p2

    .line 1268
    .line 1269
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 1270
    .line 1271
    move-object/from16 v1, p3

    .line 1272
    .line 1273
    check-cast v1, Ljava/lang/Integer;

    .line 1274
    .line 1275
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1276
    .line 1277
    .line 1278
    move-result v1

    .line 1279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1280
    .line 1281
    .line 1282
    and-int/lit8 v0, v1, 0x11

    .line 1283
    .line 1284
    const/16 v3, 0x10

    .line 1285
    .line 1286
    if-eq v0, v3, :cond_19

    .line 1287
    .line 1288
    const/4 v14, 0x1

    .line 1289
    :goto_16
    const/16 v44, 0x1

    .line 1290
    .line 1291
    goto :goto_17

    .line 1292
    :cond_19
    const/4 v14, 0x0

    .line 1293
    goto :goto_16

    .line 1294
    :goto_17
    and-int/lit8 v0, v1, 0x1

    .line 1295
    .line 1296
    invoke-virtual {v13, v0, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v0

    .line 1300
    if-eqz v0, :cond_1a

    .line 1301
    .line 1302
    sget-wide v48, Lorg/wikipedia/compose/ComposeColors;->Gray100:J

    .line 1303
    .line 1304
    const/high16 v0, 0x41a00000    # 20.0f

    .line 1305
    .line 1306
    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v10

    .line 1310
    const/16 v14, 0xdb8

    .line 1311
    .line 1312
    const/4 v15, 0x0

    .line 1313
    const/4 v9, 0x0

    .line 1314
    move-wide/from16 v11, v48

    .line 1315
    .line 1316
    invoke-static/range {v8 .. v15}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1317
    .line 1318
    .line 1319
    const/high16 v3, 0x41000000    # 8.0f

    .line 1320
    .line 1321
    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 1326
    .line 1327
    .line 1328
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1329
    .line 1330
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1335
    .line 1336
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1337
    .line 1338
    const/16 v68, 0x0

    .line 1339
    .line 1340
    const v69, 0x1fffa

    .line 1341
    .line 1342
    .line 1343
    const/16 v47, 0x0

    .line 1344
    .line 1345
    const/16 v50, 0x0

    .line 1346
    .line 1347
    const-wide/16 v51, 0x0

    .line 1348
    .line 1349
    const/16 v53, 0x0

    .line 1350
    .line 1351
    const/16 v54, 0x0

    .line 1352
    .line 1353
    const-wide/16 v55, 0x0

    .line 1354
    .line 1355
    const/16 v57, 0x0

    .line 1356
    .line 1357
    const-wide/16 v58, 0x0

    .line 1358
    .line 1359
    const/16 v60, 0x0

    .line 1360
    .line 1361
    const/16 v61, 0x0

    .line 1362
    .line 1363
    const/16 v62, 0x0

    .line 1364
    .line 1365
    const/16 v63, 0x0

    .line 1366
    .line 1367
    const/16 v64, 0x0

    .line 1368
    .line 1369
    const/16 v67, 0x180

    .line 1370
    .line 1371
    move-object/from16 v65, v0

    .line 1372
    .line 1373
    move-object/from16 v66, v13

    .line 1374
    .line 1375
    invoke-static/range {v46 .. v69}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1376
    .line 1377
    .line 1378
    goto :goto_18

    .line 1379
    :cond_1a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1380
    .line 1381
    .line 1382
    :goto_18
    return-object v4

    .line 1383
    :pswitch_9
    check-cast v6, Lorg/wikipedia/feed/CommunityContentState;

    .line 1384
    .line 1385
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 1386
    .line 1387
    move-object/from16 v0, p1

    .line 1388
    .line 1389
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1390
    .line 1391
    move-object/from16 v1, p2

    .line 1392
    .line 1393
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1394
    .line 1395
    move-object/from16 v2, p3

    .line 1396
    .line 1397
    check-cast v2, Ljava/lang/Integer;

    .line 1398
    .line 1399
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1400
    .line 1401
    .line 1402
    move-result v2

    .line 1403
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1404
    .line 1405
    .line 1406
    and-int/lit8 v0, v2, 0x11

    .line 1407
    .line 1408
    const/16 v3, 0x10

    .line 1409
    .line 1410
    if-eq v0, v3, :cond_1b

    .line 1411
    .line 1412
    const/4 v0, 0x1

    .line 1413
    :goto_19
    const/16 v44, 0x1

    .line 1414
    .line 1415
    goto :goto_1a

    .line 1416
    :cond_1b
    const/4 v0, 0x0

    .line 1417
    goto :goto_19

    .line 1418
    :goto_1a
    and-int/lit8 v2, v2, 0x1

    .line 1419
    .line 1420
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1421
    .line 1422
    .line 1423
    move-result v0

    .line 1424
    if-eqz v0, :cond_1e

    .line 1425
    .line 1426
    iget-object v0, v6, Lorg/wikipedia/feed/CommunityContentState;->error:Ljava/lang/Throwable;

    .line 1427
    .line 1428
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v2

    .line 1432
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v3

    .line 1436
    if-nez v2, :cond_1c

    .line 1437
    .line 1438
    if-ne v3, v7, :cond_1d

    .line 1439
    .line 1440
    :cond_1c
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 1441
    .line 1442
    invoke-direct {v3, v13, v12}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1446
    .line 1447
    .line 1448
    :cond_1d
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 1449
    .line 1450
    const/4 v7, 0x0

    .line 1451
    invoke-static {v0, v3, v1, v7}, Lorg/wikipedia/feed/ForYouCardKt;->ErrorState(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 1452
    .line 1453
    .line 1454
    goto :goto_1b

    .line 1455
    :cond_1e
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1456
    .line 1457
    .line 1458
    :goto_1b
    return-object v4

    .line 1459
    :pswitch_a
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1460
    .line 1461
    check-cast v13, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    .line 1462
    .line 1463
    move-object/from16 v0, p1

    .line 1464
    .line 1465
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 1466
    .line 1467
    move-object/from16 v1, p2

    .line 1468
    .line 1469
    check-cast v1, Ljava/lang/Integer;

    .line 1470
    .line 1471
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1472
    .line 1473
    .line 1474
    move-result v1

    .line 1475
    move-object/from16 v2, p3

    .line 1476
    .line 1477
    check-cast v2, Ljava/lang/Integer;

    .line 1478
    .line 1479
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1480
    .line 1481
    .line 1482
    move-result v2

    .line 1483
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1484
    .line 1485
    .line 1486
    new-instance v3, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;

    .line 1487
    .line 1488
    iget v5, v13, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->age:I

    .line 1489
    .line 1490
    const-string v7, "on-this-day-"

    .line 1491
    .line 1492
    const-string v8, "-"

    .line 1493
    .line 1494
    invoke-static {v5, v1, v7, v8, v8}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v1

    .line 1498
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v1

    .line 1505
    const/16 v2, 0x2e

    .line 1506
    .line 1507
    invoke-direct {v3, v13, v0, v2, v1}, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/dataclient/page/PageSummary;ILjava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-interface {v6, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    return-object v4

    .line 1514
    :pswitch_b
    move-object v10, v6

    .line 1515
    check-cast v10, Landroidx/compose/animation/core/Easing;

    .line 1516
    .line 1517
    move-object v8, v13

    .line 1518
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1519
    .line 1520
    move-object/from16 v0, p1

    .line 1521
    .line 1522
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1523
    .line 1524
    move-object/from16 v1, p2

    .line 1525
    .line 1526
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1527
    .line 1528
    move-object/from16 v2, p3

    .line 1529
    .line 1530
    check-cast v2, Ljava/lang/Integer;

    .line 1531
    .line 1532
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1536
    .line 1537
    .line 1538
    const v2, 0x4eb4c14c

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v2

    .line 1548
    if-ne v2, v7, :cond_1f

    .line 1549
    .line 1550
    new-instance v2, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1551
    .line 1552
    invoke-direct {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1556
    .line 1557
    .line 1558
    :cond_1f
    move-object v11, v2

    .line 1559
    check-cast v11, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1560
    .line 1561
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 1562
    .line 1563
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v2

    .line 1567
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v9

    .line 1571
    const/4 v2, 0x1

    .line 1572
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1573
    .line 1574
    .line 1575
    move-result v2

    .line 1576
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 1577
    .line 1578
    .line 1579
    move-result v5

    .line 1580
    or-int/2addr v2, v5

    .line 1581
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1582
    .line 1583
    .line 1584
    move-result v5

    .line 1585
    or-int/2addr v2, v5

    .line 1586
    const/16 v5, 0x12c

    .line 1587
    .line 1588
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1589
    .line 1590
    .line 1591
    move-result v5

    .line 1592
    or-int/2addr v2, v5

    .line 1593
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1594
    .line 1595
    .line 1596
    move-result v5

    .line 1597
    or-int/2addr v2, v5

    .line 1598
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1599
    .line 1600
    .line 1601
    move-result v5

    .line 1602
    or-int/2addr v2, v5

    .line 1603
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v5

    .line 1607
    if-nez v2, :cond_20

    .line 1608
    .line 1609
    if-ne v5, v7, :cond_21

    .line 1610
    .line 1611
    :cond_20
    new-instance v7, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;

    .line 1612
    .line 1613
    const/4 v12, 0x0

    .line 1614
    invoke-direct/range {v7 .. v12}, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Easing;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Lkotlin/coroutines/Continuation;)V

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1618
    .line 1619
    .line 1620
    move-object v5, v7

    .line 1621
    :cond_21
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 1622
    .line 1623
    invoke-static {v1, v4, v5}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 1627
    .line 1628
    .line 1629
    move-result v12

    .line 1630
    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 1631
    .line 1632
    .line 1633
    move-result v13

    .line 1634
    cmpg-float v2, v12, v3

    .line 1635
    .line 1636
    if-nez v2, :cond_22

    .line 1637
    .line 1638
    cmpg-float v2, v13, v3

    .line 1639
    .line 1640
    if-nez v2, :cond_22

    .line 1641
    .line 1642
    goto :goto_1c

    .line 1643
    :cond_22
    const/16 v16, 0x0

    .line 1644
    .line 1645
    const v17, 0x7fffc

    .line 1646
    .line 1647
    .line 1648
    const/4 v14, 0x0

    .line 1649
    const/4 v15, 0x0

    .line 1650
    move-object v11, v0

    .line 1651
    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer-_6ThJ44$default(Landroidx/compose/ui/Modifier;FFFFLandroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v0

    .line 1655
    :goto_1c
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1656
    .line 1657
    invoke-static {v2, v2}, Landroidx/compose/ui/graphics/ColorKt;->TransformOrigin(FF)J

    .line 1658
    .line 1659
    .line 1660
    const/4 v7, 0x0

    .line 1661
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1662
    .line 1663
    .line 1664
    return-object v0

    .line 1665
    :pswitch_c
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 1666
    .line 1667
    check-cast v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1668
    .line 1669
    move-object/from16 v0, p1

    .line 1670
    .line 1671
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 1672
    .line 1673
    move-object/from16 v1, p2

    .line 1674
    .line 1675
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1676
    .line 1677
    move-object/from16 v2, p3

    .line 1678
    .line 1679
    check-cast v2, Ljava/lang/Integer;

    .line 1680
    .line 1681
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1682
    .line 1683
    .line 1684
    move-result v2

    .line 1685
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1686
    .line 1687
    .line 1688
    and-int/lit8 v0, v2, 0x11

    .line 1689
    .line 1690
    const/16 v3, 0x10

    .line 1691
    .line 1692
    if-eq v0, v3, :cond_23

    .line 1693
    .line 1694
    const/4 v0, 0x1

    .line 1695
    :goto_1d
    const/16 v44, 0x1

    .line 1696
    .line 1697
    goto :goto_1e

    .line 1698
    :cond_23
    const/4 v0, 0x0

    .line 1699
    goto :goto_1d

    .line 1700
    :goto_1e
    and-int/lit8 v2, v2, 0x1

    .line 1701
    .line 1702
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1703
    .line 1704
    .line 1705
    move-result v0

    .line 1706
    if-eqz v0, :cond_28

    .line 1707
    .line 1708
    if-eqz v6, :cond_24

    .line 1709
    .line 1710
    const/4 v0, 0x1

    .line 1711
    goto :goto_1f

    .line 1712
    :cond_24
    const/4 v0, 0x0

    .line 1713
    :goto_1f
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1714
    .line 1715
    .line 1716
    move-result v2

    .line 1717
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v3

    .line 1721
    if-nez v2, :cond_25

    .line 1722
    .line 1723
    if-ne v3, v7, :cond_26

    .line 1724
    .line 1725
    :cond_25
    new-instance v3, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 1726
    .line 1727
    const/16 v2, 0xa

    .line 1728
    .line 1729
    invoke-direct {v3, v2, v6}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 1730
    .line 1731
    .line 1732
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1733
    .line 1734
    .line 1735
    :cond_26
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 1736
    .line 1737
    const/16 v2, 0xe

    .line 1738
    .line 1739
    const/4 v6, 0x0

    .line 1740
    invoke-static {v2, v5, v6, v3, v0}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v0

    .line 1744
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 1745
    .line 1746
    const/4 v7, 0x0

    .line 1747
    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v2

    .line 1751
    iget-wide v5, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1752
    .line 1753
    ushr-long v7, v5, v16

    .line 1754
    .line 1755
    xor-long/2addr v5, v7

    .line 1756
    long-to-int v3, v5

    .line 1757
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v5

    .line 1761
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v0

    .line 1765
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1766
    .line 1767
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1768
    .line 1769
    .line 1770
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1771
    .line 1772
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1773
    .line 1774
    .line 1775
    iget-boolean v7, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1776
    .line 1777
    if-eqz v7, :cond_27

    .line 1778
    .line 1779
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1780
    .line 1781
    .line 1782
    goto :goto_20

    .line 1783
    :cond_27
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1784
    .line 1785
    .line 1786
    :goto_20
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1787
    .line 1788
    invoke-static {v1, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1789
    .line 1790
    .line 1791
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1792
    .line 1793
    invoke-static {v1, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1794
    .line 1795
    .line 1796
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v2

    .line 1800
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1801
    .line 1802
    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1803
    .line 1804
    .line 1805
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1806
    .line 1807
    invoke-static {v1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1808
    .line 1809
    .line 1810
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1811
    .line 1812
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1813
    .line 1814
    .line 1815
    const/16 v45, 0x0

    .line 1816
    .line 1817
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v0

    .line 1821
    invoke-virtual {v13, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    const/4 v2, 0x1

    .line 1825
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1826
    .line 1827
    .line 1828
    goto :goto_21

    .line 1829
    :cond_28
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1830
    .line 1831
    .line 1832
    :goto_21
    return-object v4

    .line 1833
    :pswitch_d
    check-cast v6, Ljava/util/Map;

    .line 1834
    .line 1835
    check-cast v13, Lcoil3/ImageLoader$Builder;

    .line 1836
    .line 1837
    move-object/from16 v0, p1

    .line 1838
    .line 1839
    check-cast v0, Ljava/lang/Integer;

    .line 1840
    .line 1841
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1842
    .line 1843
    .line 1844
    move-result v0

    .line 1845
    move-object/from16 v1, p2

    .line 1846
    .line 1847
    check-cast v1, Ljava/lang/String;

    .line 1848
    .line 1849
    move-object/from16 v2, p3

    .line 1850
    .line 1851
    check-cast v2, Landroidx/navigation/NavType;

    .line 1852
    .line 1853
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1854
    .line 1855
    .line 1856
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1857
    .line 1858
    .line 1859
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v3

    .line 1863
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1864
    .line 1865
    .line 1866
    check-cast v3, Ljava/util/List;

    .line 1867
    .line 1868
    instance-of v2, v2, Landroidx/navigation/CollectionNavType;

    .line 1869
    .line 1870
    if-nez v2, :cond_2a

    .line 1871
    .line 1872
    iget-object v2, v13, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 1873
    .line 1874
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 1875
    .line 1876
    invoke-interface {v2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v2

    .line 1880
    invoke-interface {v2, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isElementOptional(I)Z

    .line 1881
    .line 1882
    .line 1883
    move-result v0

    .line 1884
    if-eqz v0, :cond_29

    .line 1885
    .line 1886
    goto :goto_22

    .line 1887
    :cond_29
    sget-object v0, Landroidx/navigation/serialization/RouteBuilder$ParamType;->PATH:Landroidx/navigation/serialization/RouteBuilder$ParamType;

    .line 1888
    .line 1889
    goto :goto_23

    .line 1890
    :cond_2a
    :goto_22
    sget-object v0, Landroidx/navigation/serialization/RouteBuilder$ParamType;->QUERY:Landroidx/navigation/serialization/RouteBuilder$ParamType;

    .line 1891
    .line 1892
    :goto_23
    sget-object v2, Landroidx/navigation/serialization/RouteBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1893
    .line 1894
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1895
    .line 1896
    .line 1897
    move-result v0

    .line 1898
    aget v0, v2, v0

    .line 1899
    .line 1900
    const/4 v2, 0x1

    .line 1901
    if-eq v0, v2, :cond_2c

    .line 1902
    .line 1903
    if-ne v0, v15, :cond_2b

    .line 1904
    .line 1905
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v0

    .line 1909
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1910
    .line 1911
    .line 1912
    move-result v2

    .line 1913
    if-eqz v2, :cond_2d

    .line 1914
    .line 1915
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v2

    .line 1919
    check-cast v2, Ljava/lang/String;

    .line 1920
    .line 1921
    invoke-virtual {v13, v1, v2}, Lcoil3/ImageLoader$Builder;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    .line 1923
    .line 1924
    goto :goto_24

    .line 1925
    :cond_2b
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1926
    .line 1927
    .line 1928
    const/4 v13, 0x0

    .line 1929
    goto :goto_25

    .line 1930
    :cond_2c
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1931
    .line 1932
    .line 1933
    move-result v0

    .line 1934
    const/4 v2, 0x1

    .line 1935
    if-ne v0, v2, :cond_2e

    .line 1936
    .line 1937
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v0

    .line 1941
    check-cast v0, Ljava/lang/String;

    .line 1942
    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1944
    .line 1945
    iget-object v2, v13, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 1946
    .line 1947
    check-cast v2, Ljava/lang/String;

    .line 1948
    .line 1949
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1950
    .line 1951
    .line 1952
    const/16 v2, 0x2f

    .line 1953
    .line 1954
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1955
    .line 1956
    .line 1957
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    .line 1959
    .line 1960
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v0

    .line 1964
    iput-object v0, v13, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 1965
    .line 1966
    :cond_2d
    move-object v13, v4

    .line 1967
    :goto_25
    return-object v13

    .line 1968
    :cond_2e
    const-string v0, "Expected one value for argument "

    .line 1969
    .line 1970
    const-string v2, ", found "

    .line 1971
    .line 1972
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v0

    .line 1976
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1977
    .line 1978
    .line 1979
    move-result v1

    .line 1980
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1981
    .line 1982
    .line 1983
    const-string/jumbo v1, "values instead."

    .line 1984
    .line 1985
    .line 1986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    .line 1988
    .line 1989
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v0

    .line 1993
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1994
    .line 1995
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v0

    .line 1999
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2000
    .line 2001
    .line 2002
    throw v1

    .line 2003
    :pswitch_e
    check-cast v6, Landroid/text/Spannable;

    .line 2004
    .line 2005
    check-cast v13, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;

    .line 2006
    .line 2007
    move-object/from16 v0, p1

    .line 2008
    .line 2009
    check-cast v0, Landroidx/compose/ui/text/SpanStyle;

    .line 2010
    .line 2011
    move-object/from16 v1, p2

    .line 2012
    .line 2013
    check-cast v1, Ljava/lang/Integer;

    .line 2014
    .line 2015
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2016
    .line 2017
    .line 2018
    move-result v1

    .line 2019
    move-object/from16 v2, p3

    .line 2020
    .line 2021
    check-cast v2, Ljava/lang/Integer;

    .line 2022
    .line 2023
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2024
    .line 2025
    .line 2026
    move-result v2

    .line 2027
    new-instance v3, Landroidx/compose/ui/text/android/style/TypefaceSpan;

    .line 2028
    .line 2029
    iget-object v5, v0, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 2030
    .line 2031
    iget-object v7, v0, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 2032
    .line 2033
    if-nez v7, :cond_2f

    .line 2034
    .line 2035
    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 2036
    .line 2037
    :cond_2f
    iget-object v8, v0, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 2038
    .line 2039
    if-eqz v8, :cond_30

    .line 2040
    .line 2041
    iget v8, v8, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 2042
    .line 2043
    goto :goto_26

    .line 2044
    :cond_30
    const/4 v8, 0x0

    .line 2045
    :goto_26
    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 2046
    .line 2047
    if-eqz v0, :cond_31

    .line 2048
    .line 2049
    iget v0, v0, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 2050
    .line 2051
    goto :goto_27

    .line 2052
    :cond_31
    const v0, 0xffff

    .line 2053
    .line 2054
    .line 2055
    :goto_27
    iget-object v9, v13, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2056
    .line 2057
    check-cast v9, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2058
    .line 2059
    iget-object v10, v9, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 2060
    .line 2061
    check-cast v10, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 2062
    .line 2063
    invoke-virtual {v10, v5, v7, v8, v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v0

    .line 2067
    instance-of v5, v0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 2068
    .line 2069
    if-nez v5, :cond_32

    .line 2070
    .line 2071
    new-instance v5, Lcom/caverock/androidsvg/SVG;

    .line 2072
    .line 2073
    iget-object v7, v9, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lcom/caverock/androidsvg/SVG;

    .line 2074
    .line 2075
    invoke-direct {v5, v0, v7}, Lcom/caverock/androidsvg/SVG;-><init>(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;Lcom/caverock/androidsvg/SVG;)V

    .line 2076
    .line 2077
    .line 2078
    iput-object v5, v9, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lcom/caverock/androidsvg/SVG;

    .line 2079
    .line 2080
    iget-object v0, v5, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 2081
    .line 2082
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2083
    .line 2084
    .line 2085
    check-cast v0, Landroid/graphics/Typeface;

    .line 2086
    .line 2087
    :goto_28
    const/4 v7, 0x0

    .line 2088
    goto :goto_29

    .line 2089
    :cond_32
    iget-object v0, v0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    .line 2090
    .line 2091
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2092
    .line 2093
    .line 2094
    check-cast v0, Landroid/graphics/Typeface;

    .line 2095
    .line 2096
    goto :goto_28

    .line 2097
    :goto_29
    invoke-direct {v3, v7, v0}, Landroidx/compose/ui/text/android/style/TypefaceSpan;-><init>(ILjava/lang/Object;)V

    .line 2098
    .line 2099
    .line 2100
    const/16 v0, 0x21

    .line 2101
    .line 2102
    invoke-interface {v6, v3, v1, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2103
    .line 2104
    .line 2105
    return-object v4

    .line 2106
    :pswitch_f
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 2107
    .line 2108
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 2109
    .line 2110
    move-object/from16 v0, p1

    .line 2111
    .line 2112
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 2113
    .line 2114
    move-object/from16 v0, p2

    .line 2115
    .line 2116
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2117
    .line 2118
    move-object/from16 v1, p3

    .line 2119
    .line 2120
    check-cast v1, Ljava/lang/Integer;

    .line 2121
    .line 2122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2123
    .line 2124
    .line 2125
    const v1, 0x2d4acc1b

    .line 2126
    .line 2127
    .line 2128
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2129
    .line 2130
    .line 2131
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v1

    .line 2135
    if-ne v1, v7, :cond_33

    .line 2136
    .line 2137
    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v1

    .line 2141
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2142
    .line 2143
    .line 2144
    :cond_33
    check-cast v1, Landroidx/compose/runtime/State;

    .line 2145
    .line 2146
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v2

    .line 2150
    if-ne v2, v7, :cond_34

    .line 2151
    .line 2152
    new-instance v2, Landroidx/compose/animation/core/Animatable;

    .line 2153
    .line 2154
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v3

    .line 2158
    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    .line 2159
    .line 2160
    iget-wide v5, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 2161
    .line 2162
    sget-object v5, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedSafeOffsetVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 2163
    .line 2164
    sget-wide v8, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->OffsetDisplacementThreshold:J

    .line 2165
    .line 2166
    new-instance v6, Landroidx/compose/ui/geometry/Offset;

    .line 2167
    .line 2168
    invoke-direct {v6, v8, v9}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 2169
    .line 2170
    .line 2171
    const/16 v8, 0x8

    .line 2172
    .line 2173
    invoke-direct {v2, v3, v5, v6, v8}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    .line 2174
    .line 2175
    .line 2176
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2177
    .line 2178
    .line 2179
    :cond_34
    check-cast v2, Landroidx/compose/animation/core/Animatable;

    .line 2180
    .line 2181
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 2182
    .line 2183
    .line 2184
    move-result v3

    .line 2185
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v5

    .line 2189
    if-nez v3, :cond_35

    .line 2190
    .line 2191
    if-ne v5, v7, :cond_36

    .line 2192
    .line 2193
    :cond_35
    new-instance v5, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 2194
    .line 2195
    const/16 v3, 0xe

    .line 2196
    .line 2197
    const/4 v6, 0x0

    .line 2198
    invoke-direct {v5, v1, v2, v6, v3}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2199
    .line 2200
    .line 2201
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2202
    .line 2203
    .line 2204
    :cond_36
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 2205
    .line 2206
    invoke-static {v0, v4, v5}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2207
    .line 2208
    .line 2209
    iget-object v1, v2, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 2210
    .line 2211
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 2212
    .line 2213
    .line 2214
    move-result v2

    .line 2215
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v3

    .line 2219
    if-nez v2, :cond_37

    .line 2220
    .line 2221
    if-ne v3, v7, :cond_38

    .line 2222
    .line 2223
    :cond_37
    new-instance v3, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;

    .line 2224
    .line 2225
    const/4 v2, 0x1

    .line 2226
    invoke-direct {v3, v1, v2}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/runtime/State;I)V

    .line 2227
    .line 2228
    .line 2229
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2230
    .line 2231
    .line 2232
    :cond_38
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 2233
    .line 2234
    invoke-interface {v13, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    .line 2236
    .line 2237
    move-result-object v1

    .line 2238
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 2239
    .line 2240
    const/4 v7, 0x0

    .line 2241
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2242
    .line 2243
    .line 2244
    return-object v1

    .line 2245
    :pswitch_10
    check-cast v6, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;

    .line 2246
    .line 2247
    check-cast v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 2248
    .line 2249
    move-object/from16 v0, p1

    .line 2250
    .line 2251
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 2252
    .line 2253
    move-object/from16 v0, p2

    .line 2254
    .line 2255
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2256
    .line 2257
    move-object/from16 v1, p3

    .line 2258
    .line 2259
    check-cast v1, Ljava/lang/Integer;

    .line 2260
    .line 2261
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2262
    .line 2263
    .line 2264
    const v1, -0x620472b

    .line 2265
    .line 2266
    .line 2267
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2268
    .line 2269
    .line 2270
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2271
    .line 2272
    .line 2273
    move-result-object v1

    .line 2274
    if-ne v1, v7, :cond_39

    .line 2275
    .line 2276
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    .line 2277
    .line 2278
    .line 2279
    move-result-object v1

    .line 2280
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2281
    .line 2282
    .line 2283
    :cond_39
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 2284
    .line 2285
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v2

    .line 2289
    if-ne v2, v7, :cond_3a

    .line 2290
    .line 2291
    const/16 v20, 0x0

    .line 2292
    .line 2293
    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2294
    .line 2295
    .line 2296
    move-result-object v2

    .line 2297
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2298
    .line 2299
    .line 2300
    :cond_3a
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 2301
    .line 2302
    invoke-static {v6, v0}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 2303
    .line 2304
    .line 2305
    move-result-object v3

    .line 2306
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 2307
    .line 2308
    .line 2309
    move-result v4

    .line 2310
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2311
    .line 2312
    .line 2313
    move-result-object v5

    .line 2314
    if-nez v4, :cond_3b

    .line 2315
    .line 2316
    if-ne v5, v7, :cond_3c

    .line 2317
    .line 2318
    :cond_3b
    new-instance v5, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 2319
    .line 2320
    invoke-direct {v5, v15, v2, v13}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2321
    .line 2322
    .line 2323
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2324
    .line 2325
    .line 2326
    :cond_3c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 2327
    .line 2328
    invoke-static {v13, v5, v0}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 2329
    .line 2330
    .line 2331
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 2332
    .line 2333
    .line 2334
    move-result v4

    .line 2335
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 2336
    .line 2337
    .line 2338
    move-result v5

    .line 2339
    or-int/2addr v4, v5

    .line 2340
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 2341
    .line 2342
    .line 2343
    move-result v5

    .line 2344
    or-int/2addr v4, v5

    .line 2345
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v5

    .line 2349
    if-nez v4, :cond_3d

    .line 2350
    .line 2351
    if-ne v5, v7, :cond_3e

    .line 2352
    .line 2353
    :cond_3d
    new-instance v5, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1;

    .line 2354
    .line 2355
    invoke-direct {v5, v1, v2, v13, v3}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/MutableState;)V

    .line 2356
    .line 2357
    .line 2358
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2359
    .line 2360
    .line 2361
    :cond_3e
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 2362
    .line 2363
    new-instance v1, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 2364
    .line 2365
    const/4 v3, 0x0

    .line 2366
    const/4 v6, 0x6

    .line 2367
    invoke-direct {v1, v13, v3, v5, v6}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 2368
    .line 2369
    .line 2370
    const/4 v7, 0x0

    .line 2371
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2372
    .line 2373
    .line 2374
    return-object v1

    .line 2375
    :pswitch_11
    check-cast v6, Landroidx/compose/foundation/pager/PagerState;

    .line 2376
    .line 2377
    check-cast v13, Landroidx/compose/ui/unit/LayoutDirection;

    .line 2378
    .line 2379
    move-object/from16 v0, p1

    .line 2380
    .line 2381
    check-cast v0, Ljava/lang/Float;

    .line 2382
    .line 2383
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 2384
    .line 2385
    .line 2386
    move-result v0

    .line 2387
    move-object/from16 v1, p2

    .line 2388
    .line 2389
    check-cast v1, Ljava/lang/Float;

    .line 2390
    .line 2391
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 2392
    .line 2393
    .line 2394
    move-result v1

    .line 2395
    move-object/from16 v2, p3

    .line 2396
    .line 2397
    check-cast v2, Ljava/lang/Float;

    .line 2398
    .line 2399
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2400
    .line 2401
    .line 2402
    move-result v2

    .line 2403
    invoke-static {v6, v0}, Landroidx/compose/ui/unit/DpKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;F)Z

    .line 2404
    .line 2405
    .line 2406
    move-result v3

    .line 2407
    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v4

    .line 2411
    iget-object v4, v4, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2412
    .line 2413
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 2414
    .line 2415
    if-ne v4, v5, :cond_3f

    .line 2416
    .line 2417
    goto :goto_2a

    .line 2418
    :cond_3f
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2419
    .line 2420
    if-ne v13, v4, :cond_40

    .line 2421
    .line 2422
    goto :goto_2a

    .line 2423
    :cond_40
    if-nez v3, :cond_41

    .line 2424
    .line 2425
    const/4 v3, 0x1

    .line 2426
    goto :goto_2a

    .line 2427
    :cond_41
    const/4 v3, 0x0

    .line 2428
    :goto_2a
    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v4

    .line 2432
    iget v4, v4, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 2433
    .line 2434
    if-nez v4, :cond_42

    .line 2435
    .line 2436
    move v5, v9

    .line 2437
    goto :goto_2b

    .line 2438
    :cond_42
    invoke-static {v6}, Landroidx/compose/ui/unit/DpKt;->dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F

    .line 2439
    .line 2440
    .line 2441
    move-result v5

    .line 2442
    int-to-float v4, v4

    .line 2443
    div-float/2addr v5, v4

    .line 2444
    :goto_2b
    float-to-int v4, v5

    .line 2445
    int-to-float v4, v4

    .line 2446
    sub-float v4, v5, v4

    .line 2447
    .line 2448
    iget-object v7, v6, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    .line 2449
    .line 2450
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 2451
    .line 2452
    .line 2453
    move-result v8

    .line 2454
    const/high16 v10, 0x43c80000    # 400.0f

    .line 2455
    .line 2456
    invoke-interface {v7, v10}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 2457
    .line 2458
    .line 2459
    move-result v7

    .line 2460
    cmpg-float v7, v8, v7

    .line 2461
    .line 2462
    if-gez v7, :cond_43

    .line 2463
    .line 2464
    const/4 v14, 0x0

    .line 2465
    goto :goto_2c

    .line 2466
    :cond_43
    cmpl-float v0, v0, v9

    .line 2467
    .line 2468
    if-lez v0, :cond_44

    .line 2469
    .line 2470
    const/4 v14, 0x1

    .line 2471
    goto :goto_2c

    .line 2472
    :cond_44
    move v14, v15

    .line 2473
    :goto_2c
    if-nez v14, :cond_49

    .line 2474
    .line 2475
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 2476
    .line 2477
    .line 2478
    move-result v0

    .line 2479
    const/high16 v4, 0x3f000000    # 0.5f

    .line 2480
    .line 2481
    cmpl-float v0, v0, v4

    .line 2482
    .line 2483
    if-lez v0, :cond_45

    .line 2484
    .line 2485
    if-eqz v3, :cond_47

    .line 2486
    .line 2487
    goto :goto_2e

    .line 2488
    :cond_45
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 2489
    .line 2490
    .line 2491
    move-result v0

    .line 2492
    iget-object v4, v6, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    .line 2493
    .line 2494
    sget-object v5, Landroidx/compose/foundation/pager/PagerStateKt;->UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 2495
    .line 2496
    const/high16 v5, 0x42600000    # 56.0f

    .line 2497
    .line 2498
    invoke-interface {v4, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 2499
    .line 2500
    .line 2501
    move-result v4

    .line 2502
    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation()I

    .line 2503
    .line 2504
    .line 2505
    move-result v5

    .line 2506
    int-to-float v5, v5

    .line 2507
    const/high16 v7, 0x40000000    # 2.0f

    .line 2508
    .line 2509
    div-float/2addr v5, v7

    .line 2510
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 2511
    .line 2512
    .line 2513
    move-result v4

    .line 2514
    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation()I

    .line 2515
    .line 2516
    .line 2517
    move-result v5

    .line 2518
    int-to-float v5, v5

    .line 2519
    div-float/2addr v4, v5

    .line 2520
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 2521
    .line 2522
    .line 2523
    move-result v4

    .line 2524
    cmpl-float v0, v0, v4

    .line 2525
    .line 2526
    if-ltz v0, :cond_46

    .line 2527
    .line 2528
    if-eqz v3, :cond_48

    .line 2529
    .line 2530
    goto :goto_2d

    .line 2531
    :cond_46
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 2532
    .line 2533
    .line 2534
    move-result v0

    .line 2535
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 2536
    .line 2537
    .line 2538
    move-result v3

    .line 2539
    cmpg-float v0, v0, v3

    .line 2540
    .line 2541
    if-gez v0, :cond_48

    .line 2542
    .line 2543
    :cond_47
    :goto_2d
    move v9, v1

    .line 2544
    goto :goto_2f

    .line 2545
    :cond_48
    :goto_2e
    move v9, v2

    .line 2546
    goto :goto_2f

    .line 2547
    :cond_49
    const/4 v5, 0x1

    .line 2548
    if-ne v14, v5, :cond_4a

    .line 2549
    .line 2550
    goto :goto_2e

    .line 2551
    :cond_4a
    if-ne v14, v15, :cond_4b

    .line 2552
    .line 2553
    goto :goto_2d

    .line 2554
    :cond_4b
    :goto_2f
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2555
    .line 2556
    .line 2557
    move-result-object v0

    .line 2558
    return-object v0

    .line 2559
    :pswitch_12
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 2560
    .line 2561
    check-cast v13, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 2562
    .line 2563
    move-object/from16 v0, p1

    .line 2564
    .line 2565
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 2566
    .line 2567
    move-object/from16 v0, p2

    .line 2568
    .line 2569
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2570
    .line 2571
    move-object/from16 v1, p3

    .line 2572
    .line 2573
    check-cast v1, Ljava/lang/Integer;

    .line 2574
    .line 2575
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2576
    .line 2577
    .line 2578
    move-result v1

    .line 2579
    and-int/lit8 v2, v1, 0x11

    .line 2580
    .line 2581
    const/16 v3, 0x10

    .line 2582
    .line 2583
    if-eq v2, v3, :cond_4c

    .line 2584
    .line 2585
    const/4 v2, 0x1

    .line 2586
    :goto_30
    const/16 v44, 0x1

    .line 2587
    .line 2588
    goto :goto_31

    .line 2589
    :cond_4c
    const/4 v2, 0x0

    .line 2590
    goto :goto_30

    .line 2591
    :goto_31
    and-int/lit8 v1, v1, 0x1

    .line 2592
    .line 2593
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2594
    .line 2595
    .line 2596
    move-result v1

    .line 2597
    if-eqz v1, :cond_4e

    .line 2598
    .line 2599
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2600
    .line 2601
    .line 2602
    move-result-object v1

    .line 2603
    if-ne v1, v7, :cond_4d

    .line 2604
    .line 2605
    new-instance v1, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 2606
    .line 2607
    invoke-direct {v1}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;-><init>()V

    .line 2608
    .line 2609
    .line 2610
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2611
    .line 2612
    .line 2613
    :cond_4d
    check-cast v1, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 2614
    .line 2615
    iget-object v2, v1, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->composables:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2616
    .line 2617
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 2618
    .line 2619
    .line 2620
    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2621
    .line 2622
    .line 2623
    const/4 v7, 0x0

    .line 2624
    invoke-virtual {v1, v13, v0, v7}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->Content$foundation(Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 2625
    .line 2626
    .line 2627
    goto :goto_32

    .line 2628
    :cond_4e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2629
    .line 2630
    .line 2631
    :goto_32
    return-object v4

    .line 2632
    :pswitch_13
    move/from16 v44, v10

    .line 2633
    .line 2634
    const/4 v0, 0x4

    .line 2635
    const/4 v3, 0x0

    .line 2636
    check-cast v6, Lkotlin/jvm/functions/Function4;

    .line 2637
    .line 2638
    check-cast v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 2639
    .line 2640
    move-object/from16 v1, p1

    .line 2641
    .line 2642
    check-cast v1, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 2643
    .line 2644
    move-object/from16 v2, p2

    .line 2645
    .line 2646
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 2647
    .line 2648
    move-object/from16 v5, p3

    .line 2649
    .line 2650
    check-cast v5, Ljava/lang/Integer;

    .line 2651
    .line 2652
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 2653
    .line 2654
    .line 2655
    move-result v5

    .line 2656
    and-int/lit8 v7, v5, 0x6

    .line 2657
    .line 2658
    if-nez v7, :cond_50

    .line 2659
    .line 2660
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 2661
    .line 2662
    .line 2663
    move-result v7

    .line 2664
    if-eqz v7, :cond_4f

    .line 2665
    .line 2666
    move v10, v0

    .line 2667
    goto :goto_33

    .line 2668
    :cond_4f
    move v10, v15

    .line 2669
    :goto_33
    or-int/2addr v5, v10

    .line 2670
    :cond_50
    and-int/lit8 v0, v5, 0x13

    .line 2671
    .line 2672
    if-eq v0, v8, :cond_51

    .line 2673
    .line 2674
    move/from16 v10, v44

    .line 2675
    .line 2676
    goto :goto_34

    .line 2677
    :cond_51
    const/4 v10, 0x0

    .line 2678
    :goto_34
    and-int/lit8 v0, v5, 0x1

    .line 2679
    .line 2680
    invoke-virtual {v2, v0, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2681
    .line 2682
    .line 2683
    move-result v0

    .line 2684
    if-eqz v0, :cond_57

    .line 2685
    .line 2686
    iget-object v0, v1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 2687
    .line 2688
    iget-object v0, v0, Lcoil3/compose/AsyncImagePainter;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2689
    .line 2690
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 2691
    .line 2692
    .line 2693
    move-result-object v7

    .line 2694
    const/4 v8, 0x0

    .line 2695
    invoke-static {v0, v7, v2, v8, v8}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/runtime/MutableState;

    .line 2696
    .line 2697
    .line 2698
    move-result-object v0

    .line 2699
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2700
    .line 2701
    .line 2702
    move-result-object v0

    .line 2703
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State;

    .line 2704
    .line 2705
    instance-of v7, v0, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 2706
    .line 2707
    if-eqz v7, :cond_53

    .line 2708
    .line 2709
    if-eqz v6, :cond_52

    .line 2710
    .line 2711
    const v3, 0x5df5e9e2

    .line 2712
    .line 2713
    .line 2714
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2715
    .line 2716
    .line 2717
    const/16 v17, 0xe

    .line 2718
    .line 2719
    and-int/lit8 v3, v5, 0xe

    .line 2720
    .line 2721
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2722
    .line 2723
    .line 2724
    move-result-object v3

    .line 2725
    invoke-interface {v6, v1, v0, v2, v3}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2726
    .line 2727
    .line 2728
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2729
    .line 2730
    .line 2731
    goto :goto_35

    .line 2732
    :cond_52
    const v0, 0x60c7a135

    .line 2733
    .line 2734
    .line 2735
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2736
    .line 2737
    .line 2738
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2739
    .line 2740
    .line 2741
    goto :goto_36

    .line 2742
    :cond_53
    instance-of v6, v0, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 2743
    .line 2744
    if-eqz v6, :cond_54

    .line 2745
    .line 2746
    const v3, 0x5df5f5a2

    .line 2747
    .line 2748
    .line 2749
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2750
    .line 2751
    .line 2752
    const/16 v17, 0xe

    .line 2753
    .line 2754
    and-int/lit8 v3, v5, 0xe

    .line 2755
    .line 2756
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2757
    .line 2758
    .line 2759
    move-result-object v3

    .line 2760
    invoke-virtual {v13, v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2761
    .line 2762
    .line 2763
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2764
    .line 2765
    .line 2766
    :goto_35
    const v0, 0x60cc9c15

    .line 2767
    .line 2768
    .line 2769
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2770
    .line 2771
    .line 2772
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2773
    .line 2774
    .line 2775
    goto :goto_37

    .line 2776
    :cond_54
    instance-of v6, v0, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 2777
    .line 2778
    if-eqz v6, :cond_55

    .line 2779
    .line 2780
    const v0, 0x60ca6275

    .line 2781
    .line 2782
    .line 2783
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2784
    .line 2785
    .line 2786
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2787
    .line 2788
    .line 2789
    goto :goto_36

    .line 2790
    :cond_55
    instance-of v0, v0, Lcoil3/compose/AsyncImagePainter$State$Empty;

    .line 2791
    .line 2792
    if-eqz v0, :cond_56

    .line 2793
    .line 2794
    :goto_36
    const v0, 0x5df6120a

    .line 2795
    .line 2796
    .line 2797
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2798
    .line 2799
    .line 2800
    const/16 v25, 0x0

    .line 2801
    .line 2802
    const/16 v17, 0xe

    .line 2803
    .line 2804
    and-int/lit8 v27, v5, 0xe

    .line 2805
    .line 2806
    const/16 v19, 0x0

    .line 2807
    .line 2808
    const/16 v20, 0x0

    .line 2809
    .line 2810
    const/16 v21, 0x0

    .line 2811
    .line 2812
    const/16 v22, 0x0

    .line 2813
    .line 2814
    const/16 v23, 0x0

    .line 2815
    .line 2816
    const/16 v24, 0x0

    .line 2817
    .line 2818
    move-object/from16 v18, v1

    .line 2819
    .line 2820
    move-object/from16 v26, v2

    .line 2821
    .line 2822
    invoke-static/range {v18 .. v27}, Lcoil3/compose/AsyncImageKt;->SubcomposeAsyncImageContent(Lcoil3/compose/RealSubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLandroidx/compose/runtime/GapComposer;I)V

    .line 2823
    .line 2824
    .line 2825
    move-object/from16 v0, v26

    .line 2826
    .line 2827
    const/4 v7, 0x0

    .line 2828
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2829
    .line 2830
    .line 2831
    goto :goto_37

    .line 2832
    :cond_56
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 2833
    .line 2834
    .line 2835
    move-object v13, v3

    .line 2836
    goto :goto_38

    .line 2837
    :cond_57
    move-object v0, v2

    .line 2838
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2839
    .line 2840
    .line 2841
    :goto_37
    move-object v13, v4

    .line 2842
    :goto_38
    return-object v13

    .line 2843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
