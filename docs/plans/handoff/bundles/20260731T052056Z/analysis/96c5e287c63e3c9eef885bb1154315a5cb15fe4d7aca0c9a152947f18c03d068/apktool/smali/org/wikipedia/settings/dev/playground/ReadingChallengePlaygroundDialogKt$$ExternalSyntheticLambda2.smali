.class public final synthetic Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroidx/compose/material3/SwitchColors;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/material3/SwitchColors;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    const/high16 v7, 0x41000000    # 8.0f

    .line 10
    .line 11
    const/high16 v8, 0x41800000    # 16.0f

    .line 12
    .line 13
    sget-object v9, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 14
    .line 15
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 16
    .line 17
    const/16 v11, 0x10

    .line 18
    .line 19
    iget-object v12, v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/runtime/MutableState;

    .line 20
    .line 21
    iget-object v13, v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    const/high16 v14, 0x3f800000    # 1.0f

    .line 24
    .line 25
    const/4 v15, 0x1

    .line 26
    const/16 v16, 0x20

    .line 27
    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    move-object/from16 v1, p1

    .line 32
    .line 33
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 34
    .line 35
    move-object/from16 v4, p2

    .line 36
    .line 37
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    move-object/from16 v18, p3

    .line 40
    .line 41
    check-cast v18, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v18

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    and-int/lit8 v1, v18, 0x11

    .line 51
    .line 52
    if-eq v1, v11, :cond_0

    .line 53
    .line 54
    move v1, v15

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    and-int/lit8 v11, v18, 0x1

    .line 58
    .line 59
    invoke-virtual {v4, v11, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 66
    .line 67
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 72
    .line 73
    iget-wide v5, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 74
    .line 75
    invoke-static {v10, v5, v6, v9}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v5, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 88
    .line 89
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    const/16 v9, 0xa

    .line 92
    .line 93
    invoke-direct {v8, v9}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v6, v7, v15, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 97
    .line 98
    .line 99
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 100
    .line 101
    const/16 v8, 0x36

    .line 102
    .line 103
    invoke-static {v6, v7, v4, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    iget-wide v7, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 108
    .line 109
    ushr-long v9, v7, v16

    .line 110
    .line 111
    xor-long/2addr v7, v9

    .line 112
    long-to-int v7, v7

    .line 113
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-static {v4, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 122
    .line 123
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 127
    .line 128
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 129
    .line 130
    .line 131
    iget-boolean v10, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 132
    .line 133
    if-eqz v10, :cond_1

    .line 134
    .line 135
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 140
    .line 141
    .line 142
    :goto_1
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 143
    .line 144
    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 148
    .line 149
    invoke-static {v4, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 157
    .line 158
    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 159
    .line 160
    .line 161
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 162
    .line 163
    invoke-static {v4, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 164
    .line 165
    .line 166
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 167
    .line 168
    invoke-static {v4, v5, v6, v14, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 169
    .line 170
    .line 171
    move-result-object v18

    .line 172
    sget-object v5, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 173
    .line 174
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 179
    .line 180
    iget-object v5, v5, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 181
    .line 182
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 187
    .line 188
    iget-wide v6, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 189
    .line 190
    const/16 v39, 0x0

    .line 191
    .line 192
    const v40, 0x1fff8

    .line 193
    .line 194
    .line 195
    const-string v17, "readingChallengeInstallPromptShown"

    .line 196
    .line 197
    const/16 v21, 0x0

    .line 198
    .line 199
    const-wide/16 v22, 0x0

    .line 200
    .line 201
    const/16 v24, 0x0

    .line 202
    .line 203
    const/16 v25, 0x0

    .line 204
    .line 205
    const-wide/16 v26, 0x0

    .line 206
    .line 207
    const/16 v28, 0x0

    .line 208
    .line 209
    const-wide/16 v29, 0x0

    .line 210
    .line 211
    const/16 v31, 0x0

    .line 212
    .line 213
    const/16 v32, 0x0

    .line 214
    .line 215
    const/16 v33, 0x0

    .line 216
    .line 217
    const/16 v34, 0x0

    .line 218
    .line 219
    const/16 v35, 0x0

    .line 220
    .line 221
    const/16 v38, 0x6

    .line 222
    .line 223
    move-object/from16 v37, v4

    .line 224
    .line 225
    move-object/from16 v36, v5

    .line 226
    .line 227
    move-wide/from16 v19, v6

    .line 228
    .line 229
    invoke-static/range {v17 .. v40}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 230
    .line 231
    .line 232
    move-object/from16 v1, v37

    .line 233
    .line 234
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Ljava/lang/Boolean;

    .line 239
    .line 240
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 241
    .line 242
    .line 243
    move-result v17

    .line 244
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    if-nez v4, :cond_2

    .line 253
    .line 254
    if-ne v5, v3, :cond_3

    .line 255
    .line 256
    :cond_2
    new-instance v5, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12;

    .line 257
    .line 258
    invoke-direct {v5, v13, v12, v15}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_3
    move-object/from16 v18, v5

    .line 265
    .line 266
    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 267
    .line 268
    const/16 v20, 0x0

    .line 269
    .line 270
    const/16 v23, 0x0

    .line 271
    .line 272
    const/16 v19, 0x0

    .line 273
    .line 274
    iget-object v0, v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/material3/SwitchColors;

    .line 275
    .line 276
    move-object/from16 v21, v0

    .line 277
    .line 278
    move-object/from16 v22, v1

    .line 279
    .line 280
    invoke-static/range {v17 .. v23}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_4
    move-object v1, v4

    .line 288
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 289
    .line 290
    .line 291
    :goto_2
    return-object v2

    .line 292
    :pswitch_0
    move-object/from16 v1, p1

    .line 293
    .line 294
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 295
    .line 296
    move-object/from16 v4, p2

    .line 297
    .line 298
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 299
    .line 300
    move-object/from16 v5, p3

    .line 301
    .line 302
    check-cast v5, Ljava/lang/Integer;

    .line 303
    .line 304
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    and-int/lit8 v1, v5, 0x11

    .line 312
    .line 313
    if-eq v1, v11, :cond_5

    .line 314
    .line 315
    move v1, v15

    .line 316
    goto :goto_3

    .line 317
    :cond_5
    const/4 v1, 0x0

    .line 318
    :goto_3
    and-int/2addr v5, v15

    .line 319
    invoke-virtual {v4, v5, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-eqz v1, :cond_9

    .line 324
    .line 325
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 326
    .line 327
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 332
    .line 333
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 334
    .line 335
    invoke-static {v10, v5, v6, v9}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-static {v5, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 348
    .line 349
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 350
    .line 351
    const/16 v9, 0xa

    .line 352
    .line 353
    invoke-direct {v8, v9}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 354
    .line 355
    .line 356
    invoke-direct {v6, v7, v15, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 357
    .line 358
    .line 359
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 360
    .line 361
    const/16 v8, 0x36

    .line 362
    .line 363
    invoke-static {v6, v7, v4, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    iget-wide v7, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 368
    .line 369
    ushr-long v9, v7, v16

    .line 370
    .line 371
    xor-long/2addr v7, v9

    .line 372
    long-to-int v7, v7

    .line 373
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    invoke-static {v4, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 382
    .line 383
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 387
    .line 388
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 389
    .line 390
    .line 391
    iget-boolean v10, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 392
    .line 393
    if-eqz v10, :cond_6

    .line 394
    .line 395
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_6
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 400
    .line 401
    .line 402
    :goto_4
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 403
    .line 404
    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 405
    .line 406
    .line 407
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 408
    .line 409
    invoke-static {v4, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 410
    .line 411
    .line 412
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 417
    .line 418
    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 419
    .line 420
    .line 421
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 422
    .line 423
    invoke-static {v4, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 424
    .line 425
    .line 426
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 427
    .line 428
    invoke-static {v4, v5, v6, v14, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 429
    .line 430
    .line 431
    move-result-object v21

    .line 432
    sget-object v5, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 433
    .line 434
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 439
    .line 440
    iget-object v5, v5, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 441
    .line 442
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 447
    .line 448
    iget-wide v6, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 449
    .line 450
    const/16 v42, 0x0

    .line 451
    .line 452
    const v43, 0x1fff8

    .line 453
    .line 454
    .line 455
    const-string v20, "readingChallengeOnboardingShown"

    .line 456
    .line 457
    const/16 v24, 0x0

    .line 458
    .line 459
    const-wide/16 v25, 0x0

    .line 460
    .line 461
    const/16 v27, 0x0

    .line 462
    .line 463
    const/16 v28, 0x0

    .line 464
    .line 465
    const-wide/16 v29, 0x0

    .line 466
    .line 467
    const/16 v31, 0x0

    .line 468
    .line 469
    const-wide/16 v32, 0x0

    .line 470
    .line 471
    const/16 v34, 0x0

    .line 472
    .line 473
    const/16 v35, 0x0

    .line 474
    .line 475
    const/16 v36, 0x0

    .line 476
    .line 477
    const/16 v37, 0x0

    .line 478
    .line 479
    const/16 v38, 0x0

    .line 480
    .line 481
    const/16 v41, 0x6

    .line 482
    .line 483
    move-object/from16 v40, v4

    .line 484
    .line 485
    move-object/from16 v39, v5

    .line 486
    .line 487
    move-wide/from16 v22, v6

    .line 488
    .line 489
    invoke-static/range {v20 .. v43}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 490
    .line 491
    .line 492
    move-object/from16 v1, v40

    .line 493
    .line 494
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    check-cast v4, Ljava/lang/Boolean;

    .line 499
    .line 500
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 501
    .line 502
    .line 503
    move-result v20

    .line 504
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    if-nez v4, :cond_7

    .line 513
    .line 514
    if-ne v5, v3, :cond_8

    .line 515
    .line 516
    :cond_7
    new-instance v5, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12;

    .line 517
    .line 518
    const/4 v3, 0x3

    .line 519
    invoke-direct {v5, v13, v12, v3}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    :cond_8
    move-object/from16 v21, v5

    .line 526
    .line 527
    check-cast v21, Lkotlin/jvm/functions/Function1;

    .line 528
    .line 529
    const/16 v23, 0x0

    .line 530
    .line 531
    const/16 v26, 0x0

    .line 532
    .line 533
    const/16 v22, 0x0

    .line 534
    .line 535
    iget-object v0, v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/material3/SwitchColors;

    .line 536
    .line 537
    move-object/from16 v24, v0

    .line 538
    .line 539
    move-object/from16 v25, v1

    .line 540
    .line 541
    invoke-static/range {v20 .. v26}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 545
    .line 546
    .line 547
    goto :goto_5

    .line 548
    :cond_9
    move-object v1, v4

    .line 549
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 550
    .line 551
    .line 552
    :goto_5
    return-object v2

    .line 553
    :pswitch_1
    move-object/from16 v1, p1

    .line 554
    .line 555
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 556
    .line 557
    move-object/from16 v4, p2

    .line 558
    .line 559
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 560
    .line 561
    move-object/from16 v5, p3

    .line 562
    .line 563
    check-cast v5, Ljava/lang/Integer;

    .line 564
    .line 565
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    .line 571
    .line 572
    and-int/lit8 v1, v5, 0x11

    .line 573
    .line 574
    if-eq v1, v11, :cond_a

    .line 575
    .line 576
    move v1, v15

    .line 577
    goto :goto_6

    .line 578
    :cond_a
    const/4 v1, 0x0

    .line 579
    :goto_6
    and-int/2addr v5, v15

    .line 580
    invoke-virtual {v4, v5, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    if-eqz v1, :cond_f

    .line 585
    .line 586
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 587
    .line 588
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 593
    .line 594
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 595
    .line 596
    invoke-static {v10, v5, v6, v9}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 601
    .line 602
    .line 603
    move-result-object v5

    .line 604
    invoke-static {v5, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 609
    .line 610
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 611
    .line 612
    const/16 v9, 0xa

    .line 613
    .line 614
    invoke-direct {v8, v9}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 615
    .line 616
    .line 617
    invoke-direct {v6, v7, v15, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 618
    .line 619
    .line 620
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 621
    .line 622
    const/16 v8, 0x36

    .line 623
    .line 624
    invoke-static {v6, v7, v4, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 625
    .line 626
    .line 627
    move-result-object v6

    .line 628
    iget-wide v7, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 629
    .line 630
    ushr-long v9, v7, v16

    .line 631
    .line 632
    xor-long/2addr v7, v9

    .line 633
    long-to-int v7, v7

    .line 634
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 635
    .line 636
    .line 637
    move-result-object v8

    .line 638
    invoke-static {v4, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 643
    .line 644
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 648
    .line 649
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 650
    .line 651
    .line 652
    iget-boolean v10, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 653
    .line 654
    if-eqz v10, :cond_b

    .line 655
    .line 656
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 657
    .line 658
    .line 659
    goto :goto_7

    .line 660
    :cond_b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 661
    .line 662
    .line 663
    :goto_7
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 664
    .line 665
    invoke-static {v4, v6, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 666
    .line 667
    .line 668
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 669
    .line 670
    invoke-static {v4, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 671
    .line 672
    .line 673
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 674
    .line 675
    .line 676
    move-result-object v7

    .line 677
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 678
    .line 679
    invoke-static {v4, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 680
    .line 681
    .line 682
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 683
    .line 684
    invoke-static {v4, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 685
    .line 686
    .line 687
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 688
    .line 689
    invoke-static {v4, v5, v11, v14, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 690
    .line 691
    .line 692
    move-result-object v5

    .line 693
    sget-object v14, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 694
    .line 695
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 696
    .line 697
    move-object/from16 v45, v2

    .line 698
    .line 699
    const/4 v2, 0x0

    .line 700
    invoke-static {v14, v15, v4, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    iget-wide v14, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 705
    .line 706
    ushr-long v16, v14, v16

    .line 707
    .line 708
    xor-long v14, v14, v16

    .line 709
    .line 710
    long-to-int v14, v14

    .line 711
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 712
    .line 713
    .line 714
    move-result-object v15

    .line 715
    invoke-static {v4, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 720
    .line 721
    .line 722
    iget-boolean v0, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 723
    .line 724
    if-eqz v0, :cond_c

    .line 725
    .line 726
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 727
    .line 728
    .line 729
    goto :goto_8

    .line 730
    :cond_c
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 731
    .line 732
    .line 733
    :goto_8
    invoke-static {v4, v2, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 734
    .line 735
    .line 736
    invoke-static {v4, v15, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 737
    .line 738
    .line 739
    invoke-static {v14, v4, v8, v4, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 740
    .line 741
    .line 742
    invoke-static {v4, v5, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 743
    .line 744
    .line 745
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 746
    .line 747
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 752
    .line 753
    iget-object v2, v2, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 754
    .line 755
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v5

    .line 759
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 760
    .line 761
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 762
    .line 763
    const/16 v42, 0x0

    .line 764
    .line 765
    const v43, 0x1fffa

    .line 766
    .line 767
    .line 768
    const-string v20, "readingChallengeWidgetFastCycle"

    .line 769
    .line 770
    const/16 v21, 0x0

    .line 771
    .line 772
    const/16 v24, 0x0

    .line 773
    .line 774
    const-wide/16 v25, 0x0

    .line 775
    .line 776
    const/16 v27, 0x0

    .line 777
    .line 778
    const/16 v28, 0x0

    .line 779
    .line 780
    const-wide/16 v29, 0x0

    .line 781
    .line 782
    const/16 v31, 0x0

    .line 783
    .line 784
    const-wide/16 v32, 0x0

    .line 785
    .line 786
    const/16 v34, 0x0

    .line 787
    .line 788
    const/16 v35, 0x0

    .line 789
    .line 790
    const/16 v36, 0x0

    .line 791
    .line 792
    const/16 v37, 0x0

    .line 793
    .line 794
    const/16 v38, 0x0

    .line 795
    .line 796
    const/16 v41, 0x6

    .line 797
    .line 798
    move-object/from16 v39, v2

    .line 799
    .line 800
    move-object/from16 v40, v4

    .line 801
    .line 802
    move-wide/from16 v22, v5

    .line 803
    .line 804
    invoke-static/range {v20 .. v43}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 805
    .line 806
    .line 807
    move-object/from16 v2, v40

    .line 808
    .line 809
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 814
    .line 815
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 816
    .line 817
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 822
    .line 823
    iget-wide v4, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 824
    .line 825
    const-string v20, "Updates every 1 min instead of midnight"

    .line 826
    .line 827
    move-object/from16 v39, v0

    .line 828
    .line 829
    move-wide/from16 v22, v4

    .line 830
    .line 831
    invoke-static/range {v20 .. v43}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 832
    .line 833
    .line 834
    const/4 v0, 0x1

    .line 835
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 836
    .line 837
    .line 838
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    check-cast v0, Ljava/lang/Boolean;

    .line 843
    .line 844
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 845
    .line 846
    .line 847
    move-result v20

    .line 848
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v0

    .line 852
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v1

    .line 856
    if-nez v0, :cond_d

    .line 857
    .line 858
    if-ne v1, v3, :cond_e

    .line 859
    .line 860
    :cond_d
    new-instance v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12;

    .line 861
    .line 862
    const/4 v0, 0x2

    .line 863
    invoke-direct {v1, v13, v12, v0}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 867
    .line 868
    .line 869
    :cond_e
    move-object/from16 v21, v1

    .line 870
    .line 871
    check-cast v21, Lkotlin/jvm/functions/Function1;

    .line 872
    .line 873
    const/16 v23, 0x0

    .line 874
    .line 875
    const/16 v26, 0x0

    .line 876
    .line 877
    const/16 v22, 0x0

    .line 878
    .line 879
    move-object/from16 v0, p0

    .line 880
    .line 881
    iget-object v0, v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/material3/SwitchColors;

    .line 882
    .line 883
    move-object/from16 v24, v0

    .line 884
    .line 885
    move-object/from16 v25, v2

    .line 886
    .line 887
    invoke-static/range {v20 .. v26}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 888
    .line 889
    .line 890
    const/4 v0, 0x1

    .line 891
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 892
    .line 893
    .line 894
    goto :goto_9

    .line 895
    :cond_f
    move-object/from16 v45, v2

    .line 896
    .line 897
    move-object v2, v4

    .line 898
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 899
    .line 900
    .line 901
    :goto_9
    return-object v45

    .line 902
    :pswitch_2
    move-object/from16 v45, v2

    .line 903
    .line 904
    move-object/from16 v1, p1

    .line 905
    .line 906
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 907
    .line 908
    move-object/from16 v2, p2

    .line 909
    .line 910
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 911
    .line 912
    move-object/from16 v4, p3

    .line 913
    .line 914
    check-cast v4, Ljava/lang/Integer;

    .line 915
    .line 916
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 917
    .line 918
    .line 919
    move-result v4

    .line 920
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    .line 922
    .line 923
    and-int/lit8 v1, v4, 0x11

    .line 924
    .line 925
    if-eq v1, v11, :cond_10

    .line 926
    .line 927
    const/4 v1, 0x1

    .line 928
    :goto_a
    const/16 v44, 0x1

    .line 929
    .line 930
    goto :goto_b

    .line 931
    :cond_10
    const/4 v1, 0x0

    .line 932
    goto :goto_a

    .line 933
    :goto_b
    and-int/lit8 v4, v4, 0x1

    .line 934
    .line 935
    invoke-virtual {v2, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 936
    .line 937
    .line 938
    move-result v1

    .line 939
    if-eqz v1, :cond_14

    .line 940
    .line 941
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 942
    .line 943
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 948
    .line 949
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 950
    .line 951
    invoke-static {v10, v4, v5, v9}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 952
    .line 953
    .line 954
    move-result-object v4

    .line 955
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 956
    .line 957
    .line 958
    move-result-object v4

    .line 959
    invoke-static {v4, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 960
    .line 961
    .line 962
    move-result-object v4

    .line 963
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 964
    .line 965
    new-instance v6, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 966
    .line 967
    const/16 v9, 0xa

    .line 968
    .line 969
    invoke-direct {v6, v9}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 970
    .line 971
    .line 972
    const/4 v8, 0x1

    .line 973
    invoke-direct {v5, v7, v8, v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 974
    .line 975
    .line 976
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 977
    .line 978
    const/16 v8, 0x36

    .line 979
    .line 980
    invoke-static {v5, v6, v2, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 981
    .line 982
    .line 983
    move-result-object v5

    .line 984
    iget-wide v6, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 985
    .line 986
    ushr-long v8, v6, v16

    .line 987
    .line 988
    xor-long/2addr v6, v8

    .line 989
    long-to-int v6, v6

    .line 990
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 991
    .line 992
    .line 993
    move-result-object v7

    .line 994
    invoke-static {v2, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 995
    .line 996
    .line 997
    move-result-object v4

    .line 998
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 999
    .line 1000
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1001
    .line 1002
    .line 1003
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1004
    .line 1005
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1006
    .line 1007
    .line 1008
    iget-boolean v9, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1009
    .line 1010
    if-eqz v9, :cond_11

    .line 1011
    .line 1012
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_c

    .line 1016
    :cond_11
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1017
    .line 1018
    .line 1019
    :goto_c
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1020
    .line 1021
    invoke-static {v2, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1022
    .line 1023
    .line 1024
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1025
    .line 1026
    invoke-static {v2, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v5

    .line 1033
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1034
    .line 1035
    invoke-static {v2, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1036
    .line 1037
    .line 1038
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1039
    .line 1040
    invoke-static {v2, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1041
    .line 1042
    .line 1043
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1044
    .line 1045
    const/4 v8, 0x1

    .line 1046
    invoke-static {v2, v4, v5, v14, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v21

    .line 1050
    sget-object v4, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1051
    .line 1052
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v4

    .line 1056
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 1057
    .line 1058
    iget-object v4, v4, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 1059
    .line 1060
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1065
    .line 1066
    iget-wide v5, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1067
    .line 1068
    const/16 v42, 0x0

    .line 1069
    .line 1070
    const v43, 0x1fff8

    .line 1071
    .line 1072
    .line 1073
    const-string v20, "readingChallengeEnrolled"

    .line 1074
    .line 1075
    const/16 v24, 0x0

    .line 1076
    .line 1077
    const-wide/16 v25, 0x0

    .line 1078
    .line 1079
    const/16 v27, 0x0

    .line 1080
    .line 1081
    const/16 v28, 0x0

    .line 1082
    .line 1083
    const-wide/16 v29, 0x0

    .line 1084
    .line 1085
    const/16 v31, 0x0

    .line 1086
    .line 1087
    const-wide/16 v32, 0x0

    .line 1088
    .line 1089
    const/16 v34, 0x0

    .line 1090
    .line 1091
    const/16 v35, 0x0

    .line 1092
    .line 1093
    const/16 v36, 0x0

    .line 1094
    .line 1095
    const/16 v37, 0x0

    .line 1096
    .line 1097
    const/16 v38, 0x0

    .line 1098
    .line 1099
    const/16 v41, 0x6

    .line 1100
    .line 1101
    move-object/from16 v40, v2

    .line 1102
    .line 1103
    move-object/from16 v39, v4

    .line 1104
    .line 1105
    move-wide/from16 v22, v5

    .line 1106
    .line 1107
    invoke-static/range {v20 .. v43}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1108
    .line 1109
    .line 1110
    move-object/from16 v1, v40

    .line 1111
    .line 1112
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v2

    .line 1116
    check-cast v2, Ljava/lang/Boolean;

    .line 1117
    .line 1118
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v20

    .line 1122
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v2

    .line 1126
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v4

    .line 1130
    if-nez v2, :cond_12

    .line 1131
    .line 1132
    if-ne v4, v3, :cond_13

    .line 1133
    .line 1134
    :cond_12
    new-instance v4, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12;

    .line 1135
    .line 1136
    const/4 v2, 0x0

    .line 1137
    invoke-direct {v4, v13, v12, v2}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1141
    .line 1142
    .line 1143
    :cond_13
    move-object/from16 v21, v4

    .line 1144
    .line 1145
    check-cast v21, Lkotlin/jvm/functions/Function1;

    .line 1146
    .line 1147
    const/16 v23, 0x0

    .line 1148
    .line 1149
    const/16 v26, 0x0

    .line 1150
    .line 1151
    const/16 v22, 0x0

    .line 1152
    .line 1153
    iget-object v0, v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/material3/SwitchColors;

    .line 1154
    .line 1155
    move-object/from16 v24, v0

    .line 1156
    .line 1157
    move-object/from16 v25, v1

    .line 1158
    .line 1159
    invoke-static/range {v20 .. v26}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 1160
    .line 1161
    .line 1162
    const/4 v0, 0x1

    .line 1163
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1164
    .line 1165
    .line 1166
    goto :goto_d

    .line 1167
    :cond_14
    move-object v1, v2

    .line 1168
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1169
    .line 1170
    .line 1171
    :goto_d
    return-object v45

    .line 1172
    nop

    .line 1173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
