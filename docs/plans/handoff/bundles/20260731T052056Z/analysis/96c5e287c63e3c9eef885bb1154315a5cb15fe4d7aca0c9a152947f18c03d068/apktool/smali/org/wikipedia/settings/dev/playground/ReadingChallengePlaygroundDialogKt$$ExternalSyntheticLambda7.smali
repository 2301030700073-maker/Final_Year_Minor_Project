.class public final synthetic Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda7;->f$1:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    const/high16 v6, 0x41000000    # 8.0f

    .line 10
    .line 11
    const/high16 v7, 0x41800000    # 16.0f

    .line 12
    .line 13
    sget-object v8, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 14
    .line 15
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 16
    .line 17
    const/16 v10, 0x10

    .line 18
    .line 19
    const/4 v11, 0x1

    .line 20
    const/4 v12, 0x6

    .line 21
    iget-object v15, v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda7;->f$1:Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    iget-object v0, v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    const/16 v13, 0xa

    .line 26
    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    move-object/from16 v1, p1

    .line 31
    .line 32
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 33
    .line 34
    const/16 v40, 0x20

    .line 35
    .line 36
    move-object/from16 v14, p2

    .line 37
    .line 38
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 39
    .line 40
    move-object/from16 v16, p3

    .line 41
    .line 42
    check-cast v16, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v16

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    and-int/lit8 v1, v16, 0x11

    .line 52
    .line 53
    if-eq v1, v10, :cond_0

    .line 54
    .line 55
    move v1, v11

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    :goto_0
    and-int/lit8 v10, v16, 0x1

    .line 59
    .line 60
    invoke-virtual {v14, v10, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_8

    .line 65
    .line 66
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 67
    .line 68
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    check-cast v10, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 73
    .line 74
    iget-wide v4, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 75
    .line 76
    invoke-static {v9, v4, v5, v8}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 85
    .line 86
    new-instance v7, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    invoke-direct {v7, v13}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v5, v6, v11, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 92
    .line 93
    .line 94
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 95
    .line 96
    invoke-static {v5, v7, v14, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    iget-wide v7, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 101
    .line 102
    ushr-long v16, v7, v40

    .line 103
    .line 104
    xor-long v7, v7, v16

    .line 105
    .line 106
    long-to-int v7, v7

    .line 107
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {v14, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 116
    .line 117
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 121
    .line 122
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 123
    .line 124
    .line 125
    iget-boolean v12, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 126
    .line 127
    if-eqz v12, :cond_1

    .line 128
    .line 129
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 134
    .line 135
    .line 136
    :goto_1
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 137
    .line 138
    invoke-static {v14, v5, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 139
    .line 140
    .line 141
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 142
    .line 143
    invoke-static {v14, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 151
    .line 152
    invoke-static {v14, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 156
    .line 157
    invoke-static {v14, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 158
    .line 159
    .line 160
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 161
    .line 162
    invoke-static {v14, v4, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 163
    .line 164
    .line 165
    sget-object v4, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 166
    .line 167
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 172
    .line 173
    iget-object v4, v4, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 174
    .line 175
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v16

    .line 179
    move-object/from16 v11, v16

    .line 180
    .line 181
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 182
    .line 183
    move-object/from16 v36, v14

    .line 184
    .line 185
    iget-wide v13, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 186
    .line 187
    const/16 v38, 0x0

    .line 188
    .line 189
    const v39, 0x1fffa

    .line 190
    .line 191
    .line 192
    const-string v16, "readingChallengeEndDate"

    .line 193
    .line 194
    const/16 v17, 0x0

    .line 195
    .line 196
    const/16 v20, 0x0

    .line 197
    .line 198
    const-wide/16 v21, 0x0

    .line 199
    .line 200
    const/16 v23, 0x0

    .line 201
    .line 202
    const/16 v24, 0x0

    .line 203
    .line 204
    const-wide/16 v25, 0x0

    .line 205
    .line 206
    const/16 v27, 0x0

    .line 207
    .line 208
    const-wide/16 v28, 0x0

    .line 209
    .line 210
    const/16 v30, 0x0

    .line 211
    .line 212
    const/16 v31, 0x0

    .line 213
    .line 214
    const/16 v32, 0x0

    .line 215
    .line 216
    const/16 v33, 0x0

    .line 217
    .line 218
    const/16 v34, 0x0

    .line 219
    .line 220
    const/16 v37, 0x6

    .line 221
    .line 222
    move-object/from16 v35, v4

    .line 223
    .line 224
    move-wide/from16 v18, v13

    .line 225
    .line 226
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 227
    .line 228
    .line 229
    move-object/from16 v4, v36

    .line 230
    .line 231
    new-instance v11, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 232
    .line 233
    new-instance v13, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 234
    .line 235
    const/16 v14, 0xa

    .line 236
    .line 237
    invoke-direct {v13, v14}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 238
    .line 239
    .line 240
    move-object/from16 v42, v2

    .line 241
    .line 242
    const/4 v2, 0x1

    .line 243
    const/high16 v14, 0x41000000    # 8.0f

    .line 244
    .line 245
    invoke-direct {v11, v14, v2, v13}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 246
    .line 247
    .line 248
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 249
    .line 250
    const/16 v13, 0x36

    .line 251
    .line 252
    invoke-static {v11, v2, v4, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iget-wide v13, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 257
    .line 258
    ushr-long v16, v13, v40

    .line 259
    .line 260
    xor-long v13, v13, v16

    .line 261
    .line 262
    long-to-int v11, v13

    .line 263
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    invoke-static {v4, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 272
    .line 273
    .line 274
    iget-boolean v14, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 275
    .line 276
    if-eqz v14, :cond_2

    .line 277
    .line 278
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 283
    .line 284
    .line 285
    :goto_2
    invoke-static {v4, v2, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v4, v13, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v11, v4, v8, v4, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v4, v9, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    check-cast v2, Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 308
    .line 309
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 310
    .line 311
    sget-object v7, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 312
    .line 313
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    check-cast v8, Landroidx/compose/material3/ColorScheme;

    .line 318
    .line 319
    iget-wide v8, v8, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 320
    .line 321
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    check-cast v10, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 326
    .line 327
    iget-wide v10, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 328
    .line 329
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    check-cast v7, Landroidx/compose/material3/ColorScheme;

    .line 334
    .line 335
    iget-wide v12, v7, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 336
    .line 337
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 342
    .line 343
    move-wide/from16 v16, v5

    .line 344
    .line 345
    iget-wide v5, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 346
    .line 347
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 352
    .line 353
    move-object/from16 p0, v2

    .line 354
    .line 355
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 356
    .line 357
    const v29, 0x7fffe6f4

    .line 358
    .line 359
    .line 360
    move-wide/from16 v20, v1

    .line 361
    .line 362
    move-object/from16 v28, v4

    .line 363
    .line 364
    move-wide/from16 v22, v5

    .line 365
    .line 366
    move-wide/from16 v24, v8

    .line 367
    .line 368
    move-wide/from16 v18, v10

    .line 369
    .line 370
    move-wide/from16 v26, v12

    .line 371
    .line 372
    invoke-static/range {v16 .. v29}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/TextFieldColors;

    .line 373
    .line 374
    .line 375
    move-result-object v35

    .line 376
    new-instance v1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 377
    .line 378
    const/high16 v2, 0x3f800000    # 1.0f

    .line 379
    .line 380
    const/4 v5, 0x1

    .line 381
    invoke-direct {v1, v2, v5}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    if-ne v2, v3, :cond_3

    .line 389
    .line 390
    new-instance v2, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 391
    .line 392
    const/16 v5, 0x17

    .line 393
    .line 394
    invoke-direct {v2, v15, v5}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :cond_3
    move-object/from16 v17, v2

    .line 401
    .line 402
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 403
    .line 404
    sget-object v22, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$-1986544740:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 405
    .line 406
    const/high16 v38, 0xc00000

    .line 407
    .line 408
    const v39, 0x3dff78

    .line 409
    .line 410
    .line 411
    const/16 v19, 0x0

    .line 412
    .line 413
    const/16 v20, 0x0

    .line 414
    .line 415
    const/16 v21, 0x0

    .line 416
    .line 417
    const/16 v23, 0x0

    .line 418
    .line 419
    const/16 v24, 0x0

    .line 420
    .line 421
    const/16 v25, 0x0

    .line 422
    .line 423
    const/16 v26, 0x0

    .line 424
    .line 425
    const/16 v27, 0x0

    .line 426
    .line 427
    const/16 v28, 0x0

    .line 428
    .line 429
    const/16 v29, 0x0

    .line 430
    .line 431
    const/16 v30, 0x0

    .line 432
    .line 433
    const/16 v31, 0x1

    .line 434
    .line 435
    const/16 v32, 0x0

    .line 436
    .line 437
    const/16 v33, 0x0

    .line 438
    .line 439
    const/16 v34, 0x0

    .line 440
    .line 441
    const v37, 0xc00030

    .line 442
    .line 443
    .line 444
    move-object/from16 v16, p0

    .line 445
    .line 446
    move-object/from16 v18, v1

    .line 447
    .line 448
    move-object/from16 v36, v4

    .line 449
    .line 450
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/CardKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/GapComposer;III)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    if-nez v1, :cond_4

    .line 462
    .line 463
    if-ne v2, v3, :cond_5

    .line 464
    .line 465
    :cond_4
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;

    .line 466
    .line 467
    const/4 v1, 0x7

    .line 468
    invoke-direct {v2, v0, v15, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    :cond_5
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 475
    .line 476
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, Ljava/lang/String;

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-nez v0, :cond_6

    .line 487
    .line 488
    goto :goto_4

    .line 489
    :cond_6
    :try_start_0
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    check-cast v0, Ljava/lang/String;

    .line 494
    .line 495
    invoke-static {v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 496
    .line 497
    .line 498
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    goto :goto_3

    .line 500
    :catchall_0
    move-exception v0

    .line 501
    new-instance v1, Lkotlin/Result$Failure;

    .line 502
    .line 503
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 504
    .line 505
    .line 506
    move-object v0, v1

    .line 507
    :goto_3
    instance-of v0, v0, Lkotlin/Result$Failure;

    .line 508
    .line 509
    if-nez v0, :cond_7

    .line 510
    .line 511
    :goto_4
    const/4 v13, 0x1

    .line 512
    goto :goto_5

    .line 513
    :cond_7
    const/4 v13, 0x0

    .line 514
    :goto_5
    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 515
    .line 516
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 517
    .line 518
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 523
    .line 524
    iget-wide v5, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 525
    .line 526
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 531
    .line 532
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 533
    .line 534
    const/16 v21, 0xc

    .line 535
    .line 536
    move-wide/from16 v18, v0

    .line 537
    .line 538
    move-object/from16 v20, v4

    .line 539
    .line 540
    move-wide/from16 v16, v5

    .line 541
    .line 542
    invoke-static/range {v16 .. v21}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    sget-object v24, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$928789651:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 547
    .line 548
    const/high16 v26, 0x30000000

    .line 549
    .line 550
    const/16 v27, 0x1ea

    .line 551
    .line 552
    const/16 v17, 0x0

    .line 553
    .line 554
    const/16 v19, 0x0

    .line 555
    .line 556
    const/16 v21, 0x0

    .line 557
    .line 558
    const/16 v22, 0x0

    .line 559
    .line 560
    const/16 v23, 0x0

    .line 561
    .line 562
    move-object/from16 v20, v0

    .line 563
    .line 564
    move-object/from16 v16, v2

    .line 565
    .line 566
    move-object/from16 v25, v4

    .line 567
    .line 568
    move/from16 v18, v13

    .line 569
    .line 570
    invoke-static/range {v16 .. v27}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 571
    .line 572
    .line 573
    const/4 v2, 0x1

    .line 574
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 578
    .line 579
    .line 580
    goto :goto_6

    .line 581
    :cond_8
    move-object/from16 v42, v2

    .line 582
    .line 583
    move-object v4, v14

    .line 584
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 585
    .line 586
    .line 587
    :goto_6
    return-object v42

    .line 588
    :pswitch_0
    move-object/from16 v42, v2

    .line 589
    .line 590
    const/16 v40, 0x20

    .line 591
    .line 592
    move-object/from16 v1, p1

    .line 593
    .line 594
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 595
    .line 596
    move-object/from16 v2, p2

    .line 597
    .line 598
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 599
    .line 600
    move-object/from16 v4, p3

    .line 601
    .line 602
    check-cast v4, Ljava/lang/Integer;

    .line 603
    .line 604
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    and-int/lit8 v1, v4, 0x11

    .line 612
    .line 613
    if-eq v1, v10, :cond_9

    .line 614
    .line 615
    const/4 v1, 0x1

    .line 616
    :goto_7
    const/16 v41, 0x1

    .line 617
    .line 618
    goto :goto_8

    .line 619
    :cond_9
    const/4 v1, 0x0

    .line 620
    goto :goto_7

    .line 621
    :goto_8
    and-int/lit8 v4, v4, 0x1

    .line 622
    .line 623
    invoke-virtual {v2, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    if-eqz v1, :cond_11

    .line 628
    .line 629
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 630
    .line 631
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 636
    .line 637
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 638
    .line 639
    invoke-static {v9, v4, v5, v8}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 644
    .line 645
    .line 646
    move-result-object v4

    .line 647
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 648
    .line 649
    new-instance v6, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 650
    .line 651
    const/16 v14, 0xa

    .line 652
    .line 653
    invoke-direct {v6, v14}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 654
    .line 655
    .line 656
    const/4 v7, 0x1

    .line 657
    const/high16 v14, 0x41000000    # 8.0f

    .line 658
    .line 659
    invoke-direct {v5, v14, v7, v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 660
    .line 661
    .line 662
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 663
    .line 664
    invoke-static {v5, v6, v2, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 665
    .line 666
    .line 667
    move-result-object v5

    .line 668
    iget-wide v6, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 669
    .line 670
    ushr-long v10, v6, v40

    .line 671
    .line 672
    xor-long/2addr v6, v10

    .line 673
    long-to-int v6, v6

    .line 674
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 675
    .line 676
    .line 677
    move-result-object v7

    .line 678
    invoke-static {v2, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 679
    .line 680
    .line 681
    move-result-object v4

    .line 682
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 683
    .line 684
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 688
    .line 689
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 690
    .line 691
    .line 692
    iget-boolean v10, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 693
    .line 694
    if-eqz v10, :cond_a

    .line 695
    .line 696
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 697
    .line 698
    .line 699
    goto :goto_9

    .line 700
    :cond_a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 701
    .line 702
    .line 703
    :goto_9
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 704
    .line 705
    invoke-static {v2, v5, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 706
    .line 707
    .line 708
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 709
    .line 710
    invoke-static {v2, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 711
    .line 712
    .line 713
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 714
    .line 715
    .line 716
    move-result-object v6

    .line 717
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 718
    .line 719
    invoke-static {v2, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 720
    .line 721
    .line 722
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 723
    .line 724
    invoke-static {v2, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 725
    .line 726
    .line 727
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 728
    .line 729
    invoke-static {v2, v4, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 730
    .line 731
    .line 732
    sget-object v4, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 733
    .line 734
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v4

    .line 738
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 739
    .line 740
    iget-object v4, v4, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 741
    .line 742
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v12

    .line 746
    check-cast v12, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 747
    .line 748
    iget-wide v12, v12, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 749
    .line 750
    const/16 v38, 0x0

    .line 751
    .line 752
    const v39, 0x1fffa

    .line 753
    .line 754
    .line 755
    const-string v16, "readingChallengeStartDate"

    .line 756
    .line 757
    const/16 v17, 0x0

    .line 758
    .line 759
    const/16 v20, 0x0

    .line 760
    .line 761
    const-wide/16 v21, 0x0

    .line 762
    .line 763
    const/16 v23, 0x0

    .line 764
    .line 765
    const/16 v24, 0x0

    .line 766
    .line 767
    const-wide/16 v25, 0x0

    .line 768
    .line 769
    const/16 v27, 0x0

    .line 770
    .line 771
    const-wide/16 v28, 0x0

    .line 772
    .line 773
    const/16 v30, 0x0

    .line 774
    .line 775
    const/16 v31, 0x0

    .line 776
    .line 777
    const/16 v32, 0x0

    .line 778
    .line 779
    const/16 v33, 0x0

    .line 780
    .line 781
    const/16 v34, 0x0

    .line 782
    .line 783
    const/16 v37, 0x6

    .line 784
    .line 785
    move-object/from16 v36, v2

    .line 786
    .line 787
    move-object/from16 v35, v4

    .line 788
    .line 789
    move-wide/from16 v18, v12

    .line 790
    .line 791
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 792
    .line 793
    .line 794
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 795
    .line 796
    new-instance v12, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 797
    .line 798
    const/16 v14, 0xa

    .line 799
    .line 800
    invoke-direct {v12, v14}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 801
    .line 802
    .line 803
    const/4 v13, 0x1

    .line 804
    const/high16 v14, 0x41000000    # 8.0f

    .line 805
    .line 806
    invoke-direct {v4, v14, v13, v12}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 807
    .line 808
    .line 809
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 810
    .line 811
    const/16 v13, 0x36

    .line 812
    .line 813
    invoke-static {v4, v12, v2, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 814
    .line 815
    .line 816
    move-result-object v4

    .line 817
    iget-wide v12, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 818
    .line 819
    ushr-long v16, v12, v40

    .line 820
    .line 821
    xor-long v12, v12, v16

    .line 822
    .line 823
    long-to-int v12, v12

    .line 824
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 825
    .line 826
    .line 827
    move-result-object v13

    .line 828
    invoke-static {v2, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 829
    .line 830
    .line 831
    move-result-object v9

    .line 832
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 833
    .line 834
    .line 835
    iget-boolean v14, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 836
    .line 837
    if-eqz v14, :cond_b

    .line 838
    .line 839
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 840
    .line 841
    .line 842
    goto :goto_a

    .line 843
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 844
    .line 845
    .line 846
    :goto_a
    invoke-static {v2, v4, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 847
    .line 848
    .line 849
    invoke-static {v2, v13, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 850
    .line 851
    .line 852
    invoke-static {v12, v2, v7, v2, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 853
    .line 854
    .line 855
    invoke-static {v2, v9, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 856
    .line 857
    .line 858
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v4

    .line 862
    check-cast v4, Ljava/lang/String;

    .line 863
    .line 864
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v5

    .line 868
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 869
    .line 870
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 871
    .line 872
    sget-object v7, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 873
    .line 874
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v8

    .line 878
    check-cast v8, Landroidx/compose/material3/ColorScheme;

    .line 879
    .line 880
    iget-wide v8, v8, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 881
    .line 882
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v10

    .line 886
    check-cast v10, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 887
    .line 888
    iget-wide v10, v10, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 889
    .line 890
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v7

    .line 894
    check-cast v7, Landroidx/compose/material3/ColorScheme;

    .line 895
    .line 896
    iget-wide v12, v7, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 897
    .line 898
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v7

    .line 902
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 903
    .line 904
    move-object/from16 p0, v4

    .line 905
    .line 906
    move-wide/from16 v16, v5

    .line 907
    .line 908
    iget-wide v4, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 909
    .line 910
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 915
    .line 916
    iget-wide v6, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 917
    .line 918
    const v29, 0x7fffe6f4

    .line 919
    .line 920
    .line 921
    move-object/from16 v28, v2

    .line 922
    .line 923
    move-wide/from16 v22, v4

    .line 924
    .line 925
    move-wide/from16 v20, v6

    .line 926
    .line 927
    move-wide/from16 v24, v8

    .line 928
    .line 929
    move-wide/from16 v18, v10

    .line 930
    .line 931
    move-wide/from16 v26, v12

    .line 932
    .line 933
    invoke-static/range {v16 .. v29}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/TextFieldColors;

    .line 934
    .line 935
    .line 936
    move-result-object v35

    .line 937
    new-instance v1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 938
    .line 939
    const/high16 v4, 0x3f800000    # 1.0f

    .line 940
    .line 941
    const/4 v13, 0x1

    .line 942
    invoke-direct {v1, v4, v13}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v4

    .line 949
    if-ne v4, v3, :cond_c

    .line 950
    .line 951
    new-instance v4, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 952
    .line 953
    const/16 v5, 0x15

    .line 954
    .line 955
    invoke-direct {v4, v15, v5}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 959
    .line 960
    .line 961
    :cond_c
    move-object/from16 v17, v4

    .line 962
    .line 963
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 964
    .line 965
    sget-object v22, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$836143963:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 966
    .line 967
    const/high16 v38, 0xc00000

    .line 968
    .line 969
    const v39, 0x3dff78

    .line 970
    .line 971
    .line 972
    const/16 v19, 0x0

    .line 973
    .line 974
    const/16 v20, 0x0

    .line 975
    .line 976
    const/16 v21, 0x0

    .line 977
    .line 978
    const/16 v23, 0x0

    .line 979
    .line 980
    const/16 v24, 0x0

    .line 981
    .line 982
    const/16 v25, 0x0

    .line 983
    .line 984
    const/16 v26, 0x0

    .line 985
    .line 986
    const/16 v27, 0x0

    .line 987
    .line 988
    const/16 v28, 0x0

    .line 989
    .line 990
    const/16 v29, 0x0

    .line 991
    .line 992
    const/16 v30, 0x0

    .line 993
    .line 994
    const/16 v31, 0x1

    .line 995
    .line 996
    const/16 v32, 0x0

    .line 997
    .line 998
    const/16 v33, 0x0

    .line 999
    .line 1000
    const/16 v34, 0x0

    .line 1001
    .line 1002
    const v37, 0xc00030

    .line 1003
    .line 1004
    .line 1005
    move-object/from16 v16, p0

    .line 1006
    .line 1007
    move-object/from16 v18, v1

    .line 1008
    .line 1009
    move-object/from16 v36, v2

    .line 1010
    .line 1011
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/CardKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/GapComposer;III)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v1

    .line 1018
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v4

    .line 1022
    if-nez v1, :cond_d

    .line 1023
    .line 1024
    if-ne v4, v3, :cond_e

    .line 1025
    .line 1026
    :cond_d
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;

    .line 1027
    .line 1028
    const/4 v1, 0x5

    .line 1029
    invoke-direct {v4, v0, v15, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1033
    .line 1034
    .line 1035
    :cond_e
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 1036
    .line 1037
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    check-cast v0, Ljava/lang/String;

    .line 1042
    .line 1043
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    if-nez v0, :cond_f

    .line 1048
    .line 1049
    goto :goto_c

    .line 1050
    :cond_f
    :try_start_1
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    check-cast v0, Ljava/lang/String;

    .line 1055
    .line 1056
    invoke-static {v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1060
    goto :goto_b

    .line 1061
    :catchall_1
    move-exception v0

    .line 1062
    new-instance v1, Lkotlin/Result$Failure;

    .line 1063
    .line 1064
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 1065
    .line 1066
    .line 1067
    move-object v0, v1

    .line 1068
    :goto_b
    instance-of v0, v0, Lkotlin/Result$Failure;

    .line 1069
    .line 1070
    if-nez v0, :cond_10

    .line 1071
    .line 1072
    :goto_c
    const/4 v13, 0x1

    .line 1073
    goto :goto_d

    .line 1074
    :cond_10
    const/4 v13, 0x0

    .line 1075
    :goto_d
    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 1076
    .line 1077
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1078
    .line 1079
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v1

    .line 1083
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1084
    .line 1085
    iget-wide v5, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 1086
    .line 1087
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1092
    .line 1093
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 1094
    .line 1095
    const/16 v21, 0xc

    .line 1096
    .line 1097
    move-wide/from16 v18, v0

    .line 1098
    .line 1099
    move-object/from16 v20, v2

    .line 1100
    .line 1101
    move-wide/from16 v16, v5

    .line 1102
    .line 1103
    invoke-static/range {v16 .. v21}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    sget-object v24, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$-543488942:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1108
    .line 1109
    const/high16 v26, 0x30000000

    .line 1110
    .line 1111
    const/16 v27, 0x1ea

    .line 1112
    .line 1113
    const/16 v17, 0x0

    .line 1114
    .line 1115
    const/16 v19, 0x0

    .line 1116
    .line 1117
    const/16 v21, 0x0

    .line 1118
    .line 1119
    const/16 v22, 0x0

    .line 1120
    .line 1121
    const/16 v23, 0x0

    .line 1122
    .line 1123
    move-object/from16 v20, v0

    .line 1124
    .line 1125
    move-object/from16 v25, v2

    .line 1126
    .line 1127
    move-object/from16 v16, v4

    .line 1128
    .line 1129
    move/from16 v18, v13

    .line 1130
    .line 1131
    invoke-static/range {v16 .. v27}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 1132
    .line 1133
    .line 1134
    const/4 v13, 0x1

    .line 1135
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1139
    .line 1140
    .line 1141
    goto :goto_e

    .line 1142
    :cond_11
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1143
    .line 1144
    .line 1145
    :goto_e
    return-object v42

    .line 1146
    nop

    .line 1147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
