.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0x20

    .line 8
    .line 9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x6

    .line 14
    const/4 v8, 0x0

    .line 15
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 23
    .line 24
    move-object/from16 v9, p2

    .line 25
    .line 26
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    move-object/from16 v10, p3

    .line 29
    .line 30
    check-cast v10, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    and-int/lit8 v1, v10, 0x11

    .line 40
    .line 41
    const/16 v11, 0x10

    .line 42
    .line 43
    if-eq v1, v11, :cond_0

    .line 44
    .line 45
    move v6, v5

    .line 46
    :cond_0
    and-int/lit8 v1, v10, 0x1

    .line 47
    .line 48
    invoke-virtual {v9, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 55
    .line 56
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/high16 v6, 0x41000000    # 8.0f

    .line 61
    .line 62
    invoke-static {v4, v8, v6, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    new-instance v8, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 67
    .line 68
    new-instance v10, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    const/16 v11, 0xa

    .line 71
    .line 72
    invoke-direct {v10, v11}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {v8, v6, v5, v10}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 76
    .line 77
    .line 78
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 79
    .line 80
    invoke-static {v8, v6, v9, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    iget-wide v7, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 85
    .line 86
    ushr-long v10, v7, v3

    .line 87
    .line 88
    xor-long/2addr v7, v10

    .line 89
    long-to-int v3, v7

    .line 90
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-static {v9, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 104
    .line 105
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 106
    .line 107
    .line 108
    iget-boolean v10, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 109
    .line 110
    if-eqz v10, :cond_1

    .line 111
    .line 112
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 117
    .line 118
    .line 119
    :goto_0
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 120
    .line 121
    invoke-static {v9, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {v9, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 134
    .line 135
    invoke-static {v9, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 139
    .line 140
    invoke-static {v9, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 141
    .line 142
    .line 143
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 144
    .line 145
    invoke-static {v9, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 146
    .line 147
    .line 148
    const v3, 0x3ecccccd    # 0.4f

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v3}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 156
    .line 157
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 162
    .line 163
    iget-wide v11, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 164
    .line 165
    sget-object v4, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 166
    .line 167
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Landroidx/compose/material3/Typography;

    .line 172
    .line 173
    iget-object v6, v6, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 174
    .line 175
    const/16 v31, 0x0

    .line 176
    .line 177
    const v32, 0x1fff8

    .line 178
    .line 179
    .line 180
    move-object/from16 v29, v9

    .line 181
    .line 182
    const-string v9, "Title"

    .line 183
    .line 184
    const/4 v13, 0x0

    .line 185
    const-wide/16 v14, 0x0

    .line 186
    .line 187
    const/16 v16, 0x0

    .line 188
    .line 189
    const/16 v17, 0x0

    .line 190
    .line 191
    const-wide/16 v18, 0x0

    .line 192
    .line 193
    const/16 v20, 0x0

    .line 194
    .line 195
    const-wide/16 v21, 0x0

    .line 196
    .line 197
    const/16 v23, 0x0

    .line 198
    .line 199
    const/16 v24, 0x0

    .line 200
    .line 201
    const/16 v25, 0x0

    .line 202
    .line 203
    const/16 v26, 0x0

    .line 204
    .line 205
    const/16 v27, 0x0

    .line 206
    .line 207
    const/16 v30, 0x6

    .line 208
    .line 209
    move-object/from16 v28, v6

    .line 210
    .line 211
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 212
    .line 213
    .line 214
    move-object/from16 v6, v29

    .line 215
    .line 216
    const v7, 0x3e99999a    # 0.3f

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v7}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    check-cast v8, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 228
    .line 229
    iget-wide v11, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 230
    .line 231
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    check-cast v8, Landroidx/compose/material3/Typography;

    .line 236
    .line 237
    iget-object v8, v8, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 238
    .line 239
    const-string v9, "Language"

    .line 240
    .line 241
    move-object/from16 v28, v8

    .line 242
    .line 243
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 244
    .line 245
    .line 246
    if-eqz v0, :cond_2

    .line 247
    .line 248
    const-string v0, "Count"

    .line 249
    .line 250
    :goto_1
    move-object v9, v0

    .line 251
    goto :goto_2

    .line 252
    :cond_2
    const-string v0, "Timestamp"

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :goto_2
    invoke-static {v1, v7}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 264
    .line 265
    iget-wide v11, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 266
    .line 267
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 272
    .line 273
    iget-object v0, v0, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 274
    .line 275
    const/16 v31, 0x0

    .line 276
    .line 277
    const v32, 0x1fff8

    .line 278
    .line 279
    .line 280
    const/4 v13, 0x0

    .line 281
    const-wide/16 v14, 0x0

    .line 282
    .line 283
    const/16 v16, 0x0

    .line 284
    .line 285
    const/16 v17, 0x0

    .line 286
    .line 287
    const-wide/16 v18, 0x0

    .line 288
    .line 289
    const/16 v20, 0x0

    .line 290
    .line 291
    const-wide/16 v21, 0x0

    .line 292
    .line 293
    const/16 v23, 0x0

    .line 294
    .line 295
    const/16 v24, 0x0

    .line 296
    .line 297
    const/16 v25, 0x0

    .line 298
    .line 299
    const/16 v26, 0x0

    .line 300
    .line 301
    const/16 v27, 0x0

    .line 302
    .line 303
    const/16 v30, 0x0

    .line 304
    .line 305
    move-object/from16 v28, v0

    .line 306
    .line 307
    move-object/from16 v29, v6

    .line 308
    .line 309
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_3
    move-object v6, v9

    .line 317
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 318
    .line 319
    .line 320
    :goto_3
    return-object v2

    .line 321
    :pswitch_0
    move-object/from16 v1, p1

    .line 322
    .line 323
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 324
    .line 325
    move-object/from16 v9, p2

    .line 326
    .line 327
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 328
    .line 329
    move-object/from16 v10, p3

    .line 330
    .line 331
    check-cast v10, Ljava/lang/Integer;

    .line 332
    .line 333
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v10

    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    and-int/lit8 v11, v10, 0x6

    .line 341
    .line 342
    const/4 v12, 0x2

    .line 343
    if-nez v11, :cond_5

    .line 344
    .line 345
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v11

    .line 349
    if-eqz v11, :cond_4

    .line 350
    .line 351
    const/4 v11, 0x4

    .line 352
    goto :goto_4

    .line 353
    :cond_4
    move v11, v12

    .line 354
    :goto_4
    or-int/2addr v10, v11

    .line 355
    :cond_5
    and-int/lit8 v11, v10, 0x13

    .line 356
    .line 357
    const/16 v13, 0x12

    .line 358
    .line 359
    if-eq v11, v13, :cond_6

    .line 360
    .line 361
    move v11, v5

    .line 362
    goto :goto_5

    .line 363
    :cond_6
    move v11, v6

    .line 364
    :goto_5
    and-int/2addr v10, v5

    .line 365
    invoke-virtual {v9, v10, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 366
    .line 367
    .line 368
    move-result v10

    .line 369
    if-eqz v10, :cond_9

    .line 370
    .line 371
    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 372
    .line 373
    invoke-static {v10, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    const/high16 v10, 0x41c00000    # 24.0f

    .line 378
    .line 379
    invoke-static {v1, v10, v8, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {v9}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    invoke-static {v1, v8, v5}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 392
    .line 393
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 394
    .line 395
    invoke-static {v8, v11, v9, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    iget-wide v11, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 400
    .line 401
    ushr-long v13, v11, v3

    .line 402
    .line 403
    xor-long/2addr v11, v13

    .line 404
    long-to-int v3, v11

    .line 405
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 406
    .line 407
    .line 408
    move-result-object v11

    .line 409
    invoke-static {v9, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 414
    .line 415
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 419
    .line 420
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 421
    .line 422
    .line 423
    iget-boolean v13, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 424
    .line 425
    if-eqz v13, :cond_7

    .line 426
    .line 427
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 428
    .line 429
    .line 430
    goto :goto_6

    .line 431
    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 432
    .line 433
    .line 434
    :goto_6
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 435
    .line 436
    invoke-static {v9, v8, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 437
    .line 438
    .line 439
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 440
    .line 441
    invoke-static {v9, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 442
    .line 443
    .line 444
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 449
    .line 450
    invoke-static {v9, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 451
    .line 452
    .line 453
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 454
    .line 455
    invoke-static {v9, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 456
    .line 457
    .line 458
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 459
    .line 460
    invoke-static {v9, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 461
    .line 462
    .line 463
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 464
    .line 465
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 466
    .line 467
    .line 468
    move-result-object v11

    .line 469
    const/high16 v15, 0x42000000    # 32.0f

    .line 470
    .line 471
    const/16 v16, 0x5

    .line 472
    .line 473
    const/4 v12, 0x0

    .line 474
    const/high16 v13, 0x42680000    # 58.0f

    .line 475
    .line 476
    const/4 v14, 0x0

    .line 477
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    const v4, 0x7f120068

    .line 482
    .line 483
    .line 484
    invoke-static {v4, v9}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    sget-object v8, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 489
    .line 490
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    check-cast v8, Landroidx/compose/material3/Typography;

    .line 495
    .line 496
    iget-object v11, v8, Landroidx/compose/material3/Typography;->headlineLarge:Landroidx/compose/ui/text/TextStyle;

    .line 497
    .line 498
    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 499
    .line 500
    const/16 v22, 0x0

    .line 501
    .line 502
    const v23, 0xfffffb

    .line 503
    .line 504
    .line 505
    const-wide/16 v12, 0x0

    .line 506
    .line 507
    const-wide/16 v14, 0x0

    .line 508
    .line 509
    const/16 v17, 0x0

    .line 510
    .line 511
    const-wide/16 v18, 0x0

    .line 512
    .line 513
    const-wide/16 v20, 0x0

    .line 514
    .line 515
    invoke-static/range {v11 .. v23}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 516
    .line 517
    .line 518
    move-result-object v28

    .line 519
    sget-object v8, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 520
    .line 521
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    check-cast v8, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 526
    .line 527
    iget-wide v11, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 528
    .line 529
    new-instance v8, Landroidx/compose/ui/text/style/TextAlign;

    .line 530
    .line 531
    const/4 v13, 0x3

    .line 532
    invoke-direct {v8, v13}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 533
    .line 534
    .line 535
    const/16 v31, 0x0

    .line 536
    .line 537
    const v32, 0x1fbf8

    .line 538
    .line 539
    .line 540
    const/4 v13, 0x0

    .line 541
    const/16 v16, 0x0

    .line 542
    .line 543
    const-wide/16 v21, 0x0

    .line 544
    .line 545
    const/16 v23, 0x0

    .line 546
    .line 547
    const/16 v24, 0x0

    .line 548
    .line 549
    const/16 v25, 0x0

    .line 550
    .line 551
    const/16 v26, 0x0

    .line 552
    .line 553
    const/16 v27, 0x0

    .line 554
    .line 555
    const/16 v30, 0x30

    .line 556
    .line 557
    move/from16 v20, v10

    .line 558
    .line 559
    move-object v10, v3

    .line 560
    move/from16 v3, v20

    .line 561
    .line 562
    move-object/from16 v20, v8

    .line 563
    .line 564
    move-object/from16 v29, v9

    .line 565
    .line 566
    move-object v9, v4

    .line 567
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 568
    .line 569
    .line 570
    move-object/from16 v4, v29

    .line 571
    .line 572
    const v8, -0x72b91d51

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 576
    .line 577
    .line 578
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 583
    .line 584
    .line 585
    move-result v8

    .line 586
    if-eqz v8, :cond_8

    .line 587
    .line 588
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    check-cast v8, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 593
    .line 594
    const/16 v16, 0x0

    .line 595
    .line 596
    const/16 v18, 0x7

    .line 597
    .line 598
    const/4 v14, 0x0

    .line 599
    const/4 v15, 0x0

    .line 600
    move-object v13, v1

    .line 601
    move/from16 v17, v3

    .line 602
    .line 603
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    invoke-static {v1, v8, v4, v7, v6}, Lorg/wikipedia/compose/components/TabsBoxKt;->OnboardingListItem(Landroidx/compose/ui/Modifier;Lorg/wikipedia/compose/components/OnboardingItem;Landroidx/compose/runtime/GapComposer;II)V

    .line 608
    .line 609
    .line 610
    move-object v1, v13

    .line 611
    goto :goto_7

    .line 612
    :cond_8
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 616
    .line 617
    .line 618
    goto :goto_8

    .line 619
    :cond_9
    move-object v4, v9

    .line 620
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 621
    .line 622
    .line 623
    :goto_8
    return-object v2

    .line 624
    nop

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
