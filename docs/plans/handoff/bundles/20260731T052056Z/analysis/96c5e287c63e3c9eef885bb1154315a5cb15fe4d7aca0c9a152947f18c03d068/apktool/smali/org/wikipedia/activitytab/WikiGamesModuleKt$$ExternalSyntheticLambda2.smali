.class public final synthetic Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:D


# direct methods
.method public synthetic constructor <init>(ZILkotlin/jvm/functions/Function0;IID)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$0:Z

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput p4, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$4:I

    .line 13
    .line 14
    iput-wide p6, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$5:D

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 16
    .line 17
    and-int/lit8 v3, v1, 0x3

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x2

    .line 22
    if-eq v3, v7, :cond_0

    .line 23
    .line 24
    move v3, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v3, v6

    .line 27
    :goto_0
    and-int/2addr v1, v4

    .line 28
    invoke-virtual {v5, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_c

    .line 33
    .line 34
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 35
    .line 36
    const/high16 v3, 0x41800000    # 16.0f

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    new-instance v9, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 43
    .line 44
    new-instance v10, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/16 v11, 0xa

    .line 47
    .line 48
    invoke-direct {v10, v11}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v9, v3, v4, v10}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 52
    .line 53
    .line 54
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 55
    .line 56
    const/4 v12, 0x6

    .line 57
    invoke-static {v9, v10, v5, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iget-wide v13, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 62
    .line 63
    const/16 v25, 0x20

    .line 64
    .line 65
    ushr-long v15, v13, v25

    .line 66
    .line 67
    xor-long/2addr v13, v15

    .line 68
    long-to-int v10, v13

    .line 69
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    invoke-static {v5, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 78
    .line 79
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 83
    .line 84
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 85
    .line 86
    .line 87
    iget-boolean v15, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 88
    .line 89
    if-eqz v15, :cond_1

    .line 90
    .line 91
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 96
    .line 97
    .line 98
    :goto_1
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 99
    .line 100
    invoke-static {v5, v9, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 101
    .line 102
    .line 103
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 104
    .line 105
    invoke-static {v5, v13, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 113
    .line 114
    invoke-static {v5, v10, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 115
    .line 116
    .line 117
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 118
    .line 119
    invoke-static {v5, v10}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 120
    .line 121
    .line 122
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 123
    .line 124
    invoke-static {v5, v8, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    const/high16 v8, 0x3f800000    # 1.0f

    .line 128
    .line 129
    iget-boolean v3, v0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$0:Z

    .line 130
    .line 131
    if-eqz v3, :cond_3

    .line 132
    .line 133
    const v3, -0xb43b91d

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    sget-object v11, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 144
    .line 145
    invoke-static {v11, v2, v5, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    move-object/from16 v18, v7

    .line 150
    .line 151
    iget-wide v6, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 152
    .line 153
    ushr-long v19, v6, v25

    .line 154
    .line 155
    xor-long v6, v6, v19

    .line 156
    .line 157
    long-to-int v6, v6

    .line 158
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-static {v5, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 167
    .line 168
    .line 169
    iget-boolean v12, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 170
    .line 171
    if-eqz v12, :cond_2

    .line 172
    .line 173
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_2
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 178
    .line 179
    .line 180
    :goto_2
    invoke-static {v5, v11, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v5, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v6, v5, v13, v5, v10}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 187
    .line 188
    .line 189
    move-object/from16 v6, v18

    .line 190
    .line 191
    invoke-static {v5, v3, v6, v8, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    const v7, 0x7f120045

    .line 196
    .line 197
    .line 198
    invoke-static {v7, v5}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    sget-object v11, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 203
    .line 204
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    check-cast v12, Landroidx/compose/material3/Typography;

    .line 209
    .line 210
    iget-object v12, v12, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 211
    .line 212
    sget-object v31, Landroidx/compose/ui/text/font/FontWeight;->SemiBold:Landroidx/compose/ui/text/font/FontWeight;

    .line 213
    .line 214
    const/16 v37, 0x0

    .line 215
    .line 216
    const v38, 0xfffffb

    .line 217
    .line 218
    .line 219
    const-wide/16 v27, 0x0

    .line 220
    .line 221
    const-wide/16 v29, 0x0

    .line 222
    .line 223
    const/16 v32, 0x0

    .line 224
    .line 225
    const-wide/16 v33, 0x0

    .line 226
    .line 227
    const-wide/16 v35, 0x0

    .line 228
    .line 229
    move-object/from16 v26, v12

    .line 230
    .line 231
    invoke-static/range {v26 .. v38}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 232
    .line 233
    .line 234
    move-result-object v20

    .line 235
    sget-object v12, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 236
    .line 237
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v18

    .line 241
    move-object/from16 v4, v18

    .line 242
    .line 243
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 244
    .line 245
    move-object/from16 v18, v9

    .line 246
    .line 247
    iget-wide v8, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 248
    .line 249
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 254
    .line 255
    iget-object v4, v4, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 256
    .line 257
    iget-object v4, v4, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 258
    .line 259
    move-object/from16 v23, v1

    .line 260
    .line 261
    move-object v11, v2

    .line 262
    iget-wide v1, v4, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 263
    .line 264
    move-object/from16 v4, v23

    .line 265
    .line 266
    const/16 v23, 0x0

    .line 267
    .line 268
    const v24, 0x1f7f8

    .line 269
    .line 270
    .line 271
    move-object/from16 v21, v5

    .line 272
    .line 273
    const/16 v26, 0x1

    .line 274
    .line 275
    const/4 v5, 0x0

    .line 276
    move-object/from16 v27, v6

    .line 277
    .line 278
    move-object/from16 v28, v13

    .line 279
    .line 280
    move-wide/from16 v49, v1

    .line 281
    .line 282
    move-object v1, v7

    .line 283
    move-object v2, v14

    .line 284
    move-wide/from16 v13, v49

    .line 285
    .line 286
    const-wide/16 v6, 0x0

    .line 287
    .line 288
    move-object/from16 v29, v4

    .line 289
    .line 290
    move-wide/from16 v49, v8

    .line 291
    .line 292
    move-object v9, v2

    .line 293
    move-object v2, v3

    .line 294
    move-wide/from16 v3, v49

    .line 295
    .line 296
    const/4 v8, 0x0

    .line 297
    move-object/from16 v30, v9

    .line 298
    .line 299
    const/4 v9, 0x0

    .line 300
    move-object/from16 v32, v10

    .line 301
    .line 302
    move-object/from16 v31, v11

    .line 303
    .line 304
    const-wide/16 v10, 0x0

    .line 305
    .line 306
    move-object/from16 v33, v12

    .line 307
    .line 308
    const/4 v12, 0x0

    .line 309
    move-object/from16 v34, v15

    .line 310
    .line 311
    const/4 v15, 0x0

    .line 312
    const/16 v35, 0xa

    .line 313
    .line 314
    const/16 v16, 0x0

    .line 315
    .line 316
    const/16 v36, 0x0

    .line 317
    .line 318
    const/16 v17, 0x0

    .line 319
    .line 320
    move-object/from16 v37, v18

    .line 321
    .line 322
    const/16 v18, 0x0

    .line 323
    .line 324
    const/16 v38, 0x6

    .line 325
    .line 326
    const/16 v19, 0x0

    .line 327
    .line 328
    const/high16 v39, 0x3f800000    # 1.0f

    .line 329
    .line 330
    const/16 v22, 0x0

    .line 331
    .line 332
    move-object/from16 v45, v27

    .line 333
    .line 334
    move-object/from16 v43, v28

    .line 335
    .line 336
    move-object/from16 v0, v29

    .line 337
    .line 338
    move-object/from16 v40, v30

    .line 339
    .line 340
    move-object/from16 v44, v32

    .line 341
    .line 342
    move-object/from16 v41, v34

    .line 343
    .line 344
    move-object/from16 v42, v37

    .line 345
    .line 346
    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 347
    .line 348
    .line 349
    move-object/from16 v5, v21

    .line 350
    .line 351
    const/high16 v1, 0x41c00000    # 24.0f

    .line 352
    .line 353
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    const v1, 0x7f08013e

    .line 358
    .line 359
    .line 360
    const/4 v14, 0x0

    .line 361
    invoke-static {v1, v14, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    move-object/from16 v2, v33

    .line 366
    .line 367
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 372
    .line 373
    iget-wide v6, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 374
    .line 375
    move-wide v4, v6

    .line 376
    const/16 v7, 0x1b8

    .line 377
    .line 378
    const/4 v8, 0x0

    .line 379
    const/4 v2, 0x0

    .line 380
    move-object/from16 v6, v21

    .line 381
    .line 382
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 383
    .line 384
    .line 385
    move-object v5, v6

    .line 386
    const/4 v15, 0x1

    .line 387
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 391
    .line 392
    .line 393
    :goto_3
    const/high16 v7, 0x3f800000    # 1.0f

    .line 394
    .line 395
    goto :goto_4

    .line 396
    :cond_3
    move-object v0, v1

    .line 397
    move-object/from16 v31, v2

    .line 398
    .line 399
    move-object/from16 v45, v7

    .line 400
    .line 401
    move-object/from16 v42, v9

    .line 402
    .line 403
    move-object/from16 v44, v10

    .line 404
    .line 405
    move-object/from16 v43, v13

    .line 406
    .line 407
    move-object/from16 v40, v14

    .line 408
    .line 409
    move-object/from16 v41, v15

    .line 410
    .line 411
    move v15, v4

    .line 412
    move v14, v6

    .line 413
    const v1, -0xb357490

    .line 414
    .line 415
    .line 416
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 420
    .line 421
    .line 422
    goto :goto_3

    .line 423
    :goto_4
    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 428
    .line 429
    new-instance v3, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 430
    .line 431
    const/16 v8, 0xa

    .line 432
    .line 433
    invoke-direct {v3, v8}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 434
    .line 435
    .line 436
    const/high16 v9, 0x41800000    # 16.0f

    .line 437
    .line 438
    invoke-direct {v2, v9, v15, v3}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 439
    .line 440
    .line 441
    move-object/from16 v10, v31

    .line 442
    .line 443
    const/4 v11, 0x6

    .line 444
    invoke-static {v2, v10, v5, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    iget-wide v3, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 449
    .line 450
    ushr-long v12, v3, v25

    .line 451
    .line 452
    xor-long/2addr v3, v12

    .line 453
    long-to-int v3, v3

    .line 454
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    invoke-static {v5, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 463
    .line 464
    .line 465
    iget-boolean v6, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 466
    .line 467
    if-eqz v6, :cond_4

    .line 468
    .line 469
    move-object/from16 v12, v40

    .line 470
    .line 471
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 472
    .line 473
    .line 474
    :goto_5
    move-object/from16 v13, v41

    .line 475
    .line 476
    goto :goto_6

    .line 477
    :cond_4
    move-object/from16 v12, v40

    .line 478
    .line 479
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 480
    .line 481
    .line 482
    goto :goto_5

    .line 483
    :goto_6
    invoke-static {v5, v2, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 484
    .line 485
    .line 486
    move-object/from16 v2, v42

    .line 487
    .line 488
    invoke-static {v5, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 489
    .line 490
    .line 491
    move-object/from16 v4, v43

    .line 492
    .line 493
    move-object/from16 v6, v44

    .line 494
    .line 495
    invoke-static {v3, v5, v4, v5, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 496
    .line 497
    .line 498
    move-object/from16 v3, v45

    .line 499
    .line 500
    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 501
    .line 502
    .line 503
    invoke-static {v0, v7}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    move-object/from16 v14, p0

    .line 508
    .line 509
    iget v9, v14, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$1:I

    .line 510
    .line 511
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    const v8, 0x7f10001b

    .line 516
    .line 517
    .line 518
    invoke-static {v8, v9, v5}, Lcoil3/util/UtilsKt;->pluralStringResource(IILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    move-object/from16 v32, v6

    .line 523
    .line 524
    const/4 v6, 0x0

    .line 525
    move-object/from16 v18, v2

    .line 526
    .line 527
    const v2, 0x7f0800c1

    .line 528
    .line 529
    .line 530
    move-object v4, v8

    .line 531
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/activitytab/ImpactModuleKt;->WikiGamesStatView(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 532
    .line 533
    .line 534
    invoke-static {v0, v7}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    iget v2, v14, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$3:I

    .line 539
    .line 540
    const-string v19, "-"

    .line 541
    .line 542
    if-nez v2, :cond_5

    .line 543
    .line 544
    move-object/from16 v3, v19

    .line 545
    .line 546
    goto :goto_7

    .line 547
    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    move-object v3, v2

    .line 552
    :goto_7
    const v2, 0x7f1204f1

    .line 553
    .line 554
    .line 555
    invoke-static {v2, v5}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    const/4 v6, 0x0

    .line 560
    const v2, 0x7f0802d4

    .line 561
    .line 562
    .line 563
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/activitytab/ImpactModuleKt;->WikiGamesStatView(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 567
    .line 568
    .line 569
    move-object/from16 v30, v12

    .line 570
    .line 571
    const/4 v12, 0x0

    .line 572
    move-object/from16 v34, v13

    .line 573
    .line 574
    const/16 v13, 0xd

    .line 575
    .line 576
    move v1, v9

    .line 577
    const/4 v9, 0x0

    .line 578
    move-object/from16 v31, v10

    .line 579
    .line 580
    const/high16 v10, 0x41000000    # 8.0f

    .line 581
    .line 582
    move/from16 v46, v11

    .line 583
    .line 584
    const/4 v11, 0x0

    .line 585
    move-object v8, v0

    .line 586
    move/from16 v16, v1

    .line 587
    .line 588
    move-object/from16 v3, v18

    .line 589
    .line 590
    move-object/from16 v2, v30

    .line 591
    .line 592
    move-object/from16 v0, v31

    .line 593
    .line 594
    move-object/from16 v6, v32

    .line 595
    .line 596
    move-object/from16 v1, v34

    .line 597
    .line 598
    move-object/from16 v4, v43

    .line 599
    .line 600
    move-object/from16 v48, v45

    .line 601
    .line 602
    const/16 v15, 0xa

    .line 603
    .line 604
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 605
    .line 606
    .line 607
    move-result-object v9

    .line 608
    invoke-static {v5, v9}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 609
    .line 610
    .line 611
    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 612
    .line 613
    .line 614
    move-result-object v9

    .line 615
    new-instance v10, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 616
    .line 617
    new-instance v11, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 618
    .line 619
    invoke-direct {v11, v15}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 620
    .line 621
    .line 622
    const/high16 v12, 0x41800000    # 16.0f

    .line 623
    .line 624
    const/4 v15, 0x1

    .line 625
    invoke-direct {v10, v12, v15, v11}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 626
    .line 627
    .line 628
    const/4 v11, 0x6

    .line 629
    invoke-static {v10, v0, v5, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    iget-wide v10, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 634
    .line 635
    ushr-long v22, v10, v25

    .line 636
    .line 637
    xor-long v10, v10, v22

    .line 638
    .line 639
    long-to-int v10, v10

    .line 640
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 641
    .line 642
    .line 643
    move-result-object v11

    .line 644
    invoke-static {v5, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 645
    .line 646
    .line 647
    move-result-object v9

    .line 648
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 649
    .line 650
    .line 651
    iget-boolean v13, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 652
    .line 653
    if-eqz v13, :cond_6

    .line 654
    .line 655
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 656
    .line 657
    .line 658
    goto :goto_8

    .line 659
    :cond_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 660
    .line 661
    .line 662
    :goto_8
    invoke-static {v5, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 663
    .line 664
    .line 665
    invoke-static {v5, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 666
    .line 667
    .line 668
    invoke-static {v10, v5, v4, v5, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 669
    .line 670
    .line 671
    move-object/from16 v3, v48

    .line 672
    .line 673
    invoke-static {v5, v9, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 674
    .line 675
    .line 676
    invoke-static {v8, v7}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    iget v0, v14, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$4:I

    .line 681
    .line 682
    if-nez v0, :cond_7

    .line 683
    .line 684
    move-object/from16 v3, v19

    .line 685
    .line 686
    goto :goto_9

    .line 687
    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    move-object v3, v0

    .line 692
    :goto_9
    const v0, 0x7f120046

    .line 693
    .line 694
    .line 695
    invoke-static {v0, v5}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v4

    .line 699
    const/4 v6, 0x0

    .line 700
    const v2, 0x7f0800e9

    .line 701
    .line 702
    .line 703
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/activitytab/ImpactModuleKt;->WikiGamesStatView(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 704
    .line 705
    .line 706
    invoke-static {v8, v7}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    iget-wide v2, v14, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$5:D

    .line 711
    .line 712
    const-wide/16 v6, 0x0

    .line 713
    .line 714
    cmpg-double v0, v2, v6

    .line 715
    .line 716
    if-nez v0, :cond_8

    .line 717
    .line 718
    :goto_a
    move-object/from16 v3, v19

    .line 719
    .line 720
    goto :goto_b

    .line 721
    :cond_8
    new-instance v0, Ljava/text/DecimalFormat;

    .line 722
    .line 723
    const-string v4, "0.#"

    .line 724
    .line 725
    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v19

    .line 732
    goto :goto_a

    .line 733
    :goto_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 734
    .line 735
    .line 736
    const v0, 0x7f1204ec

    .line 737
    .line 738
    .line 739
    invoke-static {v0, v5}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v4

    .line 743
    const/4 v6, 0x0

    .line 744
    const v2, 0x7f0802da

    .line 745
    .line 746
    .line 747
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/activitytab/ImpactModuleKt;->WikiGamesStatView(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 748
    .line 749
    .line 750
    const/4 v15, 0x1

    .line 751
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 752
    .line 753
    .line 754
    if-nez v16, :cond_b

    .line 755
    .line 756
    const v0, -0xb17da46

    .line 757
    .line 758
    .line 759
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 760
    .line 761
    .line 762
    move/from16 v47, v12

    .line 763
    .line 764
    const/4 v12, 0x0

    .line 765
    const/16 v13, 0xd

    .line 766
    .line 767
    const/4 v9, 0x0

    .line 768
    const/4 v11, 0x0

    .line 769
    move/from16 v10, v47

    .line 770
    .line 771
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 776
    .line 777
    new-instance v2, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    .line 778
    .line 779
    invoke-direct {v2, v1}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    .line 780
    .line 781
    .line 782
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    const/high16 v1, 0x41900000    # 18.0f

    .line 787
    .line 788
    const/4 v2, 0x2

    .line 789
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 790
    .line 791
    .line 792
    move-result-object v7

    .line 793
    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 794
    .line 795
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 796
    .line 797
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 802
    .line 803
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 804
    .line 805
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->White:J

    .line 806
    .line 807
    const/16 v6, 0xc

    .line 808
    .line 809
    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 810
    .line 811
    .line 812
    move-result-object v4

    .line 813
    iget-object v1, v14, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    .line 814
    .line 815
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    move-result v2

    .line 819
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    if-nez v2, :cond_9

    .line 824
    .line 825
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 826
    .line 827
    if-ne v3, v2, :cond_a

    .line 828
    .line 829
    :cond_9
    new-instance v3, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 830
    .line 831
    const/16 v2, 0x9

    .line 832
    .line 833
    invoke-direct {v3, v2, v1}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    :cond_a
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 840
    .line 841
    sget-object v8, Lorg/wikipedia/activitytab/ImpactModuleKt;->lambda$-455803052:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 842
    .line 843
    const/high16 v10, 0x30c00000

    .line 844
    .line 845
    const/16 v11, 0x16c

    .line 846
    .line 847
    const/4 v2, 0x0

    .line 848
    move-object v1, v0

    .line 849
    move-object v0, v3

    .line 850
    const/4 v3, 0x0

    .line 851
    move-object v6, v5

    .line 852
    const/4 v5, 0x0

    .line 853
    move-object v9, v6

    .line 854
    const/4 v6, 0x0

    .line 855
    const/4 v14, 0x0

    .line 856
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 857
    .line 858
    .line 859
    move-object v5, v9

    .line 860
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 861
    .line 862
    .line 863
    :goto_c
    const/4 v15, 0x1

    .line 864
    goto :goto_d

    .line 865
    :cond_b
    const/4 v14, 0x0

    .line 866
    const v0, -0xb0c0e70

    .line 867
    .line 868
    .line 869
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 873
    .line 874
    .line 875
    goto :goto_c

    .line 876
    :goto_d
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 877
    .line 878
    .line 879
    goto :goto_e

    .line 880
    :cond_c
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 881
    .line 882
    .line 883
    :goto_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 884
    .line 885
    return-object v0
.end method
