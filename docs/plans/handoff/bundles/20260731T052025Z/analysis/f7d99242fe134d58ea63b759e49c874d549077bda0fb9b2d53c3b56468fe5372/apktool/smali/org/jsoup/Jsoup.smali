.class public abstract Lorg/jsoup/Jsoup;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final AccountLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 18

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
    move/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v0, p3

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v5, 0x3665b8cd

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v5, v4, 0x6

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v5, 0x2

    .line 32
    :goto_0
    or-int/2addr v5, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v5, v4

    .line 35
    :goto_1
    and-int/lit8 v6, v4, 0x30

    .line 36
    .line 37
    const/16 v7, 0x20

    .line 38
    .line 39
    if-nez v6, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    move v6, v7

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v6, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v5, v6

    .line 52
    :cond_3
    and-int/lit16 v6, v4, 0x180

    .line 53
    .line 54
    if-nez v6, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_4

    .line 61
    .line 62
    const/16 v6, 0x100

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/16 v6, 0x80

    .line 66
    .line 67
    :goto_3
    or-int/2addr v5, v6

    .line 68
    :cond_5
    and-int/lit16 v6, v5, 0x93

    .line 69
    .line 70
    const/16 v8, 0x92

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    if-eq v6, v8, :cond_6

    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    goto :goto_4

    .line 77
    :cond_6
    move v6, v9

    .line 78
    :goto_4
    and-int/lit8 v8, v5, 0x1

    .line 79
    .line 80
    invoke-virtual {v0, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_9

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/16 v8, 0xf

    .line 88
    .line 89
    invoke-static {v2, v9, v6, v1, v8}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    sget-object v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 94
    .line 95
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 100
    .line 101
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 109
    .line 110
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 118
    .line 119
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 127
    .line 128
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const/high16 v11, 0x41c00000    # 24.0f

    .line 132
    .line 133
    const/high16 v12, 0x41000000    # 8.0f

    .line 134
    .line 135
    const/high16 v13, 0x41800000    # 16.0f

    .line 136
    .line 137
    invoke-static {v6, v11, v12, v13, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 142
    .line 143
    invoke-static {v11, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    iget-wide v11, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 148
    .line 149
    ushr-long v14, v11, v7

    .line 150
    .line 151
    xor-long/2addr v11, v14

    .line 152
    long-to-int v11, v11

    .line 153
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    invoke-static {v0, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 162
    .line 163
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 169
    .line 170
    .line 171
    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 172
    .line 173
    if-eqz v15, :cond_7

    .line 174
    .line 175
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 180
    .line 181
    .line 182
    :goto_5
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 183
    .line 184
    invoke-static {v0, v9, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 185
    .line 186
    .line 187
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 188
    .line 189
    invoke-static {v0, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 197
    .line 198
    invoke-static {v0, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 199
    .line 200
    .line 201
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 202
    .line 203
    invoke-static {v0, v11}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 204
    .line 205
    .line 206
    move/from16 p3, v7

    .line 207
    .line 208
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 209
    .line 210
    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 211
    .line 212
    .line 213
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 214
    .line 215
    sget-object v10, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 216
    .line 217
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    check-cast v10, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 222
    .line 223
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    const/high16 v10, 0x42800000    # 64.0f

    .line 227
    .line 228
    invoke-static {v6, v10}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 233
    .line 234
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    check-cast v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 239
    .line 240
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v8, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 244
    .line 245
    new-instance v13, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 246
    .line 247
    const/4 v1, 0x7

    .line 248
    invoke-direct {v13, v1}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 249
    .line 250
    .line 251
    const/high16 v1, 0x41800000    # 16.0f

    .line 252
    .line 253
    const/4 v2, 0x1

    .line 254
    invoke-direct {v8, v1, v2, v13}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 255
    .line 256
    .line 257
    const/16 v1, 0x30

    .line 258
    .line 259
    invoke-static {v8, v10, v0, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    move v2, v5

    .line 264
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 265
    .line 266
    ushr-long v16, v4, p3

    .line 267
    .line 268
    xor-long v4, v4, v16

    .line 269
    .line 270
    long-to-int v4, v4

    .line 271
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-static {v0, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 280
    .line 281
    .line 282
    iget-boolean v8, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 283
    .line 284
    if-eqz v8, :cond_8

    .line 285
    .line 286
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 287
    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 291
    .line 292
    .line 293
    :goto_6
    invoke-static {v0, v1, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v0, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v4, v0, v12, v0, v11}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 303
    .line 304
    .line 305
    shr-int/lit8 v1, v2, 0x3

    .line 306
    .line 307
    and-int/lit8 v1, v1, 0x70

    .line 308
    .line 309
    const/4 v2, 0x6

    .line 310
    or-int/2addr v1, v2

    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 316
    .line 317
    invoke-virtual {v3, v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    const/4 v2, 0x1

    .line 321
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 329
    .line 330
    .line 331
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    if-eqz v6, :cond_a

    .line 336
    .line 337
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/organism/ModalBottomSheetKt$$ExternalSyntheticLambda0;

    .line 338
    .line 339
    const/4 v5, 0x1

    .line 340
    move-object/from16 v1, p0

    .line 341
    .line 342
    move-object/from16 v2, p1

    .line 343
    .line 344
    move/from16 v4, p4

    .line 345
    .line 346
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/compose/designsystem/organism/ModalBottomSheetKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 347
    .line 348
    .line 349
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 350
    .line 351
    :cond_a
    return-void
.end method

.method public static final AccountSelectedView(Landroidx/compose/foundation/layout/RowScope;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    move-object v7, p4

    .line 2
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p4, -0x16be6c3d

    .line 5
    .line 6
    .line 7
    invoke-virtual {v7, p4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 p4, p5, 0x6

    .line 11
    .line 12
    if-nez p4, :cond_1

    .line 13
    .line 14
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    const/4 p4, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p4, 0x2

    .line 23
    :goto_0
    or-int/2addr p4, p5

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p4, p5

    .line 26
    :goto_1
    and-int/lit8 v0, p5, 0x30

    .line 27
    .line 28
    if-nez v0, :cond_4

    .line 29
    .line 30
    and-int/lit8 v0, p5, 0x40

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_2
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/16 v0, 0x20

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    const/16 v0, 0x10

    .line 49
    .line 50
    :goto_3
    or-int/2addr p4, v0

    .line 51
    :cond_4
    and-int/lit16 v0, p5, 0x180

    .line 52
    .line 53
    if-nez v0, :cond_6

    .line 54
    .line 55
    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    const/16 v0, 0x100

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_5
    const/16 v0, 0x80

    .line 65
    .line 66
    :goto_4
    or-int/2addr p4, v0

    .line 67
    :cond_6
    and-int/lit16 v0, p5, 0xc00

    .line 68
    .line 69
    const/16 v1, 0x800

    .line 70
    .line 71
    if-nez v0, :cond_8

    .line 72
    .line 73
    invoke-virtual {v7, p3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    move v0, v1

    .line 80
    goto :goto_5

    .line 81
    :cond_7
    const/16 v0, 0x400

    .line 82
    .line 83
    :goto_5
    or-int/2addr p4, v0

    .line 84
    :cond_8
    and-int/lit16 v0, p4, 0x493

    .line 85
    .line 86
    const/16 v2, 0x492

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    const/4 v4, 0x1

    .line 90
    if-eq v0, v2, :cond_9

    .line 91
    .line 92
    move v0, v4

    .line 93
    goto :goto_6

    .line 94
    :cond_9
    move v0, v3

    .line 95
    :goto_6
    and-int/lit8 v2, p4, 0x1

    .line 96
    .line 97
    invoke-virtual {v7, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_e

    .line 102
    .line 103
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 104
    .line 105
    const/high16 v2, 0x3f800000    # 1.0f

    .line 106
    .line 107
    invoke-interface {p0, v0, v2}, Landroidx/compose/foundation/layout/RowScope;->weight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    and-int/lit16 v2, p4, 0x1c00

    .line 112
    .line 113
    if-ne v2, v1, :cond_a

    .line 114
    .line 115
    move v3, v4

    .line 116
    :cond_a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 121
    .line 122
    if-nez v3, :cond_b

    .line 123
    .line 124
    if-ne v1, v2, :cond_c

    .line 125
    .line 126
    :cond_b
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;

    .line 127
    .line 128
    invoke-direct {v1, p3, v4}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;-><init>(ZI)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_c
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 135
    .line 136
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    if-ne v3, v2, :cond_d

    .line 141
    .line 142
    new-instance v3, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    const/16 v2, 0x15

    .line 145
    .line 146
    invoke-direct {v3, v2}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_d
    move-object v5, v3

    .line 153
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 154
    .line 155
    new-instance v2, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;

    .line 156
    .line 157
    const/4 v3, 0x6

    .line 158
    invoke-direct {v2, v3, p2}, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 159
    .line 160
    .line 161
    const v3, 0x2a56e49f

    .line 162
    .line 163
    .line 164
    invoke-static {v3, v2, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    shr-int/lit8 p4, p4, 0x3

    .line 169
    .line 170
    and-int/lit8 p4, p4, 0xe

    .line 171
    .line 172
    const v2, 0x1b6000

    .line 173
    .line 174
    .line 175
    or-int v8, p4, v2

    .line 176
    .line 177
    const/16 v9, 0x8

    .line 178
    .line 179
    const/4 v3, 0x0

    .line 180
    const-string v4, "AccountSelectedContent"

    .line 181
    .line 182
    move-object v2, v1

    .line 183
    move-object v1, v0

    .line 184
    move-object v0, p1

    .line 185
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 186
    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_e
    move-object v0, p1

    .line 190
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 191
    .line 192
    .line 193
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    if-eqz v1, :cond_f

    .line 198
    .line 199
    move-object p1, p0

    .line 200
    new-instance p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;

    .line 201
    .line 202
    move p4, p3

    .line 203
    move-object p3, p2

    .line 204
    move-object p2, v0

    .line 205
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/layout/RowScope;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function0;ZI)V

    .line 206
    .line 207
    .line 208
    iput-object p0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 209
    .line 210
    :cond_f
    return-void
.end method

.method public static final AccountSelectionView(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v8, p1

    .line 6
    .line 7
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v2, -0x270dd047

    .line 10
    .line 11
    .line 12
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v2, v1, 0x6

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v2, v3

    .line 29
    :goto_0
    or-int/2addr v2, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v2, v1

    .line 32
    :goto_1
    and-int/lit8 v4, v2, 0x3

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    if-eq v4, v3, :cond_2

    .line 37
    .line 38
    move v3, v5

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v3, v6

    .line 41
    :goto_2
    and-int/2addr v2, v5

    .line 42
    invoke-virtual {v8, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    const v2, 0x65252f58

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 55
    .line 56
    invoke-direct {v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 57
    .line 58
    .line 59
    const v3, 0x6525338b

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 63
    .line 64
    .line 65
    new-instance v9, Landroidx/compose/ui/text/SpanStyle;

    .line 66
    .line 67
    sget-object v14, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 68
    .line 69
    const/16 v27, 0x0

    .line 70
    .line 71
    const v28, 0xfffb

    .line 72
    .line 73
    .line 74
    const-wide/16 v10, 0x0

    .line 75
    .line 76
    const-wide/16 v12, 0x0

    .line 77
    .line 78
    const/4 v15, 0x0

    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const/16 v17, 0x0

    .line 82
    .line 83
    const/16 v18, 0x0

    .line 84
    .line 85
    const-wide/16 v19, 0x0

    .line 86
    .line 87
    const/16 v21, 0x0

    .line 88
    .line 89
    const/16 v22, 0x0

    .line 90
    .line 91
    const/16 v23, 0x0

    .line 92
    .line 93
    const-wide/16 v24, 0x0

    .line 94
    .line 95
    const/16 v26, 0x0

    .line 96
    .line 97
    invoke-direct/range {v9 .. v28}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v9}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const v4, 0x7f1204d2

    .line 105
    .line 106
    .line 107
    :try_start_0
    invoke-static {v8, v4}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v2, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 125
    .line 126
    .line 127
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 128
    .line 129
    const/high16 v4, 0x3f800000    # 1.0f

    .line 130
    .line 131
    invoke-interface {v0, v3, v4}, Landroidx/compose/foundation/layout/RowScope;->weight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const/4 v9, 0x0

    .line 136
    const/16 v10, 0x3c

    .line 137
    .line 138
    const-wide/16 v4, 0x0

    .line 139
    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v7, 0x0

    .line 142
    invoke-static/range {v2 .. v10}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextBodyLarge-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 152
    .line 153
    .line 154
    :goto_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_4

    .line 159
    .line 160
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    const/4 v4, 0x5

    .line 163
    invoke-direct {v3, v1, v4, v0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 167
    .line 168
    :cond_4
    return-void
.end method

.method public static final AccountView(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v0, p6

    .line 8
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v6, 0x616f5253

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    const/4 v6, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v6, 0x2

    .line 25
    :goto_0
    or-int v6, p7, v6

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_1

    .line 32
    .line 33
    const/16 v7, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v7, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v6, v7

    .line 39
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    const/16 v7, 0x100

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v7, 0x80

    .line 49
    .line 50
    :goto_2
    or-int/2addr v6, v7

    .line 51
    invoke-virtual {v0, p3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    const/16 v7, 0x800

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const/16 v7, 0x400

    .line 61
    .line 62
    :goto_3
    or-int/2addr v6, v7

    .line 63
    invoke-virtual {v0, p4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_4

    .line 68
    .line 69
    const/16 v7, 0x4000

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    const/16 v7, 0x2000

    .line 73
    .line 74
    :goto_4
    or-int/2addr v6, v7

    .line 75
    const/high16 v7, 0x30000

    .line 76
    .line 77
    or-int/2addr v6, v7

    .line 78
    const v7, 0x12493

    .line 79
    .line 80
    .line 81
    and-int/2addr v7, v6

    .line 82
    const v8, 0x12492

    .line 83
    .line 84
    .line 85
    if-eq v7, v8, :cond_5

    .line 86
    .line 87
    const/4 v7, 0x1

    .line 88
    goto :goto_5

    .line 89
    :cond_5
    const/4 v7, 0x0

    .line 90
    :goto_5
    and-int/lit8 v8, v6, 0x1

    .line 91
    .line 92
    invoke-virtual {v0, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_6

    .line 97
    .line 98
    new-instance v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;

    .line 99
    .line 100
    invoke-direct {v7, p3, p0, p2, p4}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;-><init>(ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function0;Z)V

    .line 101
    .line 102
    .line 103
    const v8, -0x2c14fd8f

    .line 104
    .line 105
    .line 106
    invoke-static {v8, v7, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    shr-int/lit8 v6, v6, 0x3

    .line 111
    .line 112
    and-int/lit8 v6, v6, 0xe

    .line 113
    .line 114
    or-int/lit16 v6, v6, 0x1b0

    .line 115
    .line 116
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 117
    .line 118
    invoke-static {p1, v8, v7, v0, v6}, Lorg/jsoup/Jsoup;->AccountLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 119
    .line 120
    .line 121
    move-object v6, v8

    .line 122
    goto :goto_6

    .line 123
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 124
    .line 125
    .line 126
    move-object v6, p5

    .line 127
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    if-eqz v8, :cond_7

    .line 132
    .line 133
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$$ExternalSyntheticLambda1;

    .line 134
    .line 135
    move-object v1, p0

    .line 136
    move-object v2, p1

    .line 137
    move-object v3, p2

    .line 138
    move v4, p3

    .line 139
    move v5, p4

    .line 140
    move/from16 v7, p7

    .line 141
    .line 142
    invoke-direct/range {v0 .. v7}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLandroidx/compose/ui/Modifier;I)V

    .line 143
    .line 144
    .line 145
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 146
    .line 147
    :cond_7
    return-void
.end method

.method public static final AvatarImage(Ljava/lang/String;Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v6, p3

    .line 5
    .line 6
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, 0x21a9dbe0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x2

    .line 23
    :goto_0
    or-int v1, p4, v1

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/16 v2, 0x20

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v2, 0x10

    .line 39
    .line 40
    :goto_1
    or-int/2addr v1, v2

    .line 41
    or-int/lit16 v1, v1, 0x180

    .line 42
    .line 43
    and-int/lit16 v2, v1, 0x93

    .line 44
    .line 45
    const/16 v3, 0x92

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x1

    .line 49
    if-eq v2, v3, :cond_2

    .line 50
    .line 51
    move v2, v5

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v2, v4

    .line 54
    :goto_2
    and-int/lit8 v3, v1, 0x1

    .line 55
    .line 56
    invoke-virtual {v6, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_b

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    if-ne v2, v5, :cond_3

    .line 69
    .line 70
    const v2, 0x6adfcf7f

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 74
    .line 75
    .line 76
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 77
    .line 78
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 88
    .line 89
    .line 90
    const/high16 v2, 0x41000000    # 8.0f

    .line 91
    .line 92
    :goto_3
    move v3, v1

    .line 93
    goto :goto_4

    .line 94
    :cond_3
    const v0, 0x6adfc1b7

    .line 95
    .line 96
    .line 97
    invoke-static {v6, v0, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    throw v0

    .line 102
    :cond_4
    const v2, 0x6adfc8fc

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 106
    .line 107
    .line 108
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 109
    .line 110
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 120
    .line 121
    .line 122
    const/high16 v2, 0x40800000    # 4.0f

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :goto_4
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 126
    .line 127
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Image:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 128
    .line 129
    sget-object v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 130
    .line 131
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 136
    .line 137
    iget-wide v7, v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSecondary:J

    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    const v9, 0x1db58629

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 146
    .line 147
    .line 148
    sget-object v9, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 149
    .line 150
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    check-cast v9, Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-nez v9, :cond_5

    .line 161
    .line 162
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 163
    .line 164
    .line 165
    const/4 v4, 0x0

    .line 166
    move-object v5, v4

    .line 167
    goto :goto_6

    .line 168
    :cond_5
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/vector/PathParserKt;->rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v6, v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 181
    .line 182
    if-nez v9, :cond_6

    .line 183
    .line 184
    if-ne v10, v11, :cond_7

    .line 185
    .line 186
    :cond_6
    new-instance v10, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 187
    .line 188
    const/4 v9, 0x5

    .line 189
    invoke-direct {v10, v9, v7, v8}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(IJ)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_7
    check-cast v10, Landroidx/compose/ui/graphics/ColorFilter;

    .line 196
    .line 197
    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 198
    .line 199
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 204
    .line 205
    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 206
    .line 207
    invoke-static {v2, v8}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-nez v8, :cond_8

    .line 212
    .line 213
    invoke-interface {v7, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    goto :goto_5

    .line 218
    :cond_8
    const/4 v7, 0x0

    .line 219
    :goto_5
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    or-int/2addr v8, v9

    .line 228
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    if-nez v8, :cond_9

    .line 233
    .line 234
    if-ne v9, v11, :cond_a

    .line 235
    .line 236
    :cond_9
    new-instance v9, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;

    .line 237
    .line 238
    invoke-direct {v9, v5, v7, v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorPainter;FLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    :cond_a
    move-object v5, v9

    .line 245
    check-cast v5, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt$rememberPreviewPlaceholder$1$1;

    .line 246
    .line 247
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 248
    .line 249
    .line 250
    :goto_6
    new-instance v4, Lnet/thunderbird/feature/account/avatar/ui/AvatarImageKt$$ExternalSyntheticLambda0;

    .line 251
    .line 252
    invoke-direct {v4, v2}, Lnet/thunderbird/feature/account/avatar/ui/AvatarImageKt$$ExternalSyntheticLambda0;-><init>(F)V

    .line 253
    .line 254
    .line 255
    const v2, 0x1b8898f1

    .line 256
    .line 257
    .line 258
    invoke-static {v2, v4, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    and-int/lit8 v3, v3, 0xe

    .line 263
    .line 264
    const v4, 0x206180

    .line 265
    .line 266
    .line 267
    or-int v7, v3, v4

    .line 268
    .line 269
    const/16 v8, 0x28

    .line 270
    .line 271
    const/4 v3, 0x0

    .line 272
    const/4 v4, 0x0

    .line 273
    move-object v0, p0

    .line 274
    invoke-static/range {v0 .. v8}, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt;->RemoteImage(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/Composer;II)V

    .line 275
    .line 276
    .line 277
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 278
    .line 279
    move-object v10, v0

    .line 280
    goto :goto_7

    .line 281
    :cond_b
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 282
    .line 283
    .line 284
    move-object v10, p2

    .line 285
    :goto_7
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    if-eqz v0, :cond_c

    .line 290
    .line 291
    new-instance v7, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 292
    .line 293
    const/16 v12, 0x16

    .line 294
    .line 295
    move-object v8, p0

    .line 296
    move-object v9, p1

    .line 297
    move/from16 v11, p4

    .line 298
    .line 299
    invoke-direct/range {v7 .. v12}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 300
    .line 301
    .line 302
    iput-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 303
    .line 304
    :cond_c
    return-void
.end method

.method public static final Change-3IgeMak(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-wide/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v11, p3

    .line 4
    .line 5
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x7abbf562

    .line 8
    .line 9
    .line 10
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p5

    .line 14
    .line 15
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int v0, p0, v0

    .line 25
    .line 26
    invoke-virtual {v11, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/16 v5, 0x20

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    move v4, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v4, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v4

    .line 39
    or-int/lit16 v0, v0, 0x180

    .line 40
    .line 41
    and-int/lit16 v4, v0, 0x93

    .line 42
    .line 43
    const/16 v6, 0x92

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v14, 0x1

    .line 47
    if-eq v4, v6, :cond_2

    .line 48
    .line 49
    move v4, v14

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v4, v7

    .line 52
    :goto_2
    and-int/lit8 v6, v0, 0x1

    .line 53
    .line 54
    invoke-virtual {v11, v6, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    sget-object v4, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 61
    .line 62
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 63
    .line 64
    invoke-static {v4, v6, v11, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-wide v6, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 69
    .line 70
    ushr-long v8, v6, v5

    .line 71
    .line 72
    xor-long/2addr v6, v8

    .line 73
    long-to-int v5, v6

    .line 74
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 79
    .line 80
    invoke-static {v11, v15}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 90
    .line 91
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 92
    .line 93
    .line 94
    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 95
    .line 96
    if-eqz v9, :cond_3

    .line 97
    .line 98
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 103
    .line 104
    .line 105
    :goto_3
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 106
    .line 107
    invoke-static {v11, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 108
    .line 109
    .line 110
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 111
    .line 112
    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 120
    .line 121
    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 125
    .line 126
    invoke-static {v11, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 127
    .line 128
    .line 129
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 130
    .line 131
    invoke-static {v11, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 132
    .line 133
    .line 134
    shr-int/lit8 v4, v0, 0x3

    .line 135
    .line 136
    and-int/lit8 v4, v4, 0xe

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    invoke-static {v4, v2, v3, v11, v5}, Lorg/jsoup/Jsoup;->ChangeDot-3J-VO9M(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 140
    .line 141
    .line 142
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 143
    .line 144
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    const/high16 v4, 0x41000000    # 8.0f

    .line 154
    .line 155
    invoke-static {v15, v4}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-static {v11, v4}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 160
    .line 161
    .line 162
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 163
    .line 164
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 169
    .line 170
    iget-wide v6, v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 171
    .line 172
    and-int/lit8 v12, v0, 0xe

    .line 173
    .line 174
    const/16 v13, 0x7a

    .line 175
    .line 176
    const/4 v8, 0x0

    .line 177
    const/4 v9, 0x0

    .line 178
    const/4 v10, 0x0

    .line 179
    move-object v4, v1

    .line 180
    invoke-static/range {v4 .. v13}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 184
    .line 185
    .line 186
    move-object v4, v15

    .line 187
    goto :goto_4

    .line 188
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 189
    .line 190
    .line 191
    move-object/from16 v4, p4

    .line 192
    .line 193
    :goto_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    if-eqz v6, :cond_5

    .line 198
    .line 199
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda14;

    .line 200
    .line 201
    move/from16 v5, p0

    .line 202
    .line 203
    move-object/from16 v1, p5

    .line 204
    .line 205
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;JLandroidx/compose/ui/Modifier;I)V

    .line 206
    .line 207
    .line 208
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 209
    .line 210
    :cond_5
    return-void
.end method

.method public static final ChangeDot-3J-VO9M(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v3, -0x4a46fa36

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v3, v0, 0x6

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v6, v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x2

    .line 28
    :goto_0
    or-int/2addr v3, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v3, v0

    .line 31
    :goto_1
    or-int/lit8 v3, v3, 0x30

    .line 32
    .line 33
    and-int/lit8 v4, v3, 0x13

    .line 34
    .line 35
    const/16 v5, 0x12

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v9, 0x1

    .line 39
    if-eq v4, v5, :cond_2

    .line 40
    .line 41
    move v4, v9

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v4, v7

    .line 44
    :goto_2
    and-int/lit8 v5, v3, 0x1

    .line 45
    .line 46
    invoke-virtual {v6, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 53
    .line 54
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const/4 v14, 0x0

    .line 64
    const/16 v15, 0xd

    .line 65
    .line 66
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    const/high16 v12, 0x40800000    # 4.0f

    .line 70
    .line 71
    const/4 v13, 0x0

    .line 72
    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 77
    .line 78
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iget-wide v7, v6, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 83
    .line 84
    const/16 v11, 0x20

    .line 85
    .line 86
    ushr-long v11, v7, v11

    .line 87
    .line 88
    xor-long/2addr v7, v11

    .line 89
    long-to-int v7, v7

    .line 90
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-static {v6, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 99
    .line 100
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 104
    .line 105
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 106
    .line 107
    .line 108
    iget-boolean v12, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 109
    .line 110
    if-eqz v12, :cond_3

    .line 111
    .line 112
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 117
    .line 118
    .line 119
    :goto_3
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 120
    .line 121
    invoke-static {v6, v5, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {v6, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 134
    .line 135
    invoke-static {v6, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 139
    .line 140
    invoke-static {v6, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 141
    .line 142
    .line 143
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 144
    .line 145
    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 146
    .line 147
    .line 148
    move v4, v3

    .line 149
    sget-object v3, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Dot:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 150
    .line 151
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 152
    .line 153
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const/high16 v5, 0x41000000    # 8.0f

    .line 163
    .line 164
    invoke-static {v10, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    move v7, v4

    .line 169
    move-object v4, v5

    .line 170
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 171
    .line 172
    invoke-direct {v5, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 173
    .line 174
    .line 175
    shl-int/lit8 v7, v7, 0x9

    .line 176
    .line 177
    and-int/lit16 v7, v7, 0x1c00

    .line 178
    .line 179
    or-int/lit16 v7, v7, 0x180

    .line 180
    .line 181
    const/4 v8, 0x0

    .line 182
    invoke-static/range {v3 .. v8}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 190
    .line 191
    .line 192
    move-object/from16 v10, p4

    .line 193
    .line 194
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    if-eqz v3, :cond_5

    .line 199
    .line 200
    new-instance v4, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;

    .line 201
    .line 202
    invoke-direct {v4, v1, v2, v10, v0}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;-><init>(JLandroidx/compose/ui/Modifier;I)V

    .line 203
    .line 204
    .line 205
    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 206
    .line 207
    :cond_5
    return-void
.end method

.method public static final ChangeGroupHeader-eopBjH0(Ljava/util/Map$Entry;JJLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-wide/from16 v2, p1

    .line 2
    .line 3
    move-wide/from16 v9, p3

    .line 4
    .line 5
    move-object/from16 v4, p6

    .line 6
    .line 7
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, 0x4ea3686a

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    move-object/from16 v11, p0

    .line 16
    .line 17
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int v0, p7, v0

    .line 27
    .line 28
    invoke-virtual {v4, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v1, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v1

    .line 40
    invoke-virtual {v4, v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v1, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v1

    .line 52
    or-int/lit16 v0, v0, 0xc00

    .line 53
    .line 54
    and-int/lit16 v1, v0, 0x493

    .line 55
    .line 56
    const/16 v6, 0x492

    .line 57
    .line 58
    if-eq v1, v6, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    :goto_3
    and-int/lit8 v6, v0, 0x1

    .line 64
    .line 65
    invoke-virtual {v4, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_8

    .line 70
    .line 71
    sget-object v14, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 72
    .line 73
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const/high16 v19, 0x41000000    # 8.0f

    .line 92
    .line 93
    const/16 v20, 0x5

    .line 94
    .line 95
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 96
    .line 97
    const/16 v16, 0x0

    .line 98
    .line 99
    const/high16 v17, 0x41800000    # 16.0f

    .line 100
    .line 101
    const/16 v18, 0x0

    .line 102
    .line 103
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 108
    .line 109
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 110
    .line 111
    const/16 p6, 0x20

    .line 112
    .line 113
    const/16 v5, 0x30

    .line 114
    .line 115
    invoke-static {v8, v6, v4, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    iget-wide v12, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 120
    .line 121
    ushr-long v18, v12, p6

    .line 122
    .line 123
    xor-long v12, v12, v18

    .line 124
    .line 125
    long-to-int v6, v12

    .line 126
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-static {v4, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 135
    .line 136
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 140
    .line 141
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 142
    .line 143
    .line 144
    iget-boolean v13, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 145
    .line 146
    if-eqz v13, :cond_4

    .line 147
    .line 148
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 153
    .line 154
    .line 155
    :goto_4
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 156
    .line 157
    invoke-static {v4, v5, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 161
    .line 162
    invoke-static {v4, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 170
    .line 171
    invoke-static {v4, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 172
    .line 173
    .line 174
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 175
    .line 176
    invoke-static {v4, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 177
    .line 178
    .line 179
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 180
    .line 181
    invoke-static {v4, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapesKt;->LocalThemeShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 185
    .line 186
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 191
    .line 192
    iget-object v1, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;->extraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 193
    .line 194
    invoke-static {v15, v9, v10, v1}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    move/from16 v19, v0

    .line 199
    .line 200
    const/high16 v0, 0x3f000000    # 0.5f

    .line 201
    .line 202
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 203
    .line 204
    .line 205
    move-result-wide v9

    .line 206
    sget-object v0, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 207
    .line 208
    const/high16 v11, 0x3f800000    # 1.0f

    .line 209
    .line 210
    invoke-static {v1, v11, v9, v10, v0}, Landroidx/compose/foundation/ImageKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 215
    .line 216
    const/4 v9, 0x0

    .line 217
    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iget-wide v9, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 222
    .line 223
    ushr-long v20, v9, p6

    .line 224
    .line 225
    xor-long v9, v9, v20

    .line 226
    .line 227
    long-to-int v9, v9

    .line 228
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    invoke-static {v4, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 237
    .line 238
    .line 239
    iget-boolean v11, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 240
    .line 241
    if-eqz v11, :cond_5

    .line 242
    .line 243
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 248
    .line 249
    .line 250
    :goto_5
    invoke-static {v4, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v4, v10, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v9, v4, v8, v4, v6}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v4, v0, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 260
    .line 261
    .line 262
    invoke-interface/range {p0 .. p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Ljava/lang/String;

    .line 267
    .line 268
    const-string v1, "NEW"

    .line 269
    .line 270
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_6

    .line 275
    .line 276
    const v0, -0x157fcce6

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 280
    .line 281
    .line 282
    const v0, 0x7f120204

    .line 283
    .line 284
    .line 285
    invoke-static {v4, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const/4 v9, 0x0

    .line 290
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_6
    const/4 v9, 0x0

    .line 295
    const-string v1, "FIXED"

    .line 296
    .line 297
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_7

    .line 302
    .line 303
    const v0, -0x157fc324

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 307
    .line 308
    .line 309
    const v0, 0x7f120203

    .line 310
    .line 311
    .line 312
    invoke-static {v4, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_7
    const v0, -0x157fbb42

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 324
    .line 325
    .line 326
    const v0, 0x7f120202

    .line 327
    .line 328
    .line 329
    invoke-static {v4, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 334
    .line 335
    .line 336
    :goto_6
    invoke-static {v0}, Landroidx/core/util/DebugUtils;->bold(Ljava/lang/String;)Landroidx/compose/ui/text/AnnotatedString;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    const/high16 v1, 0x40800000    # 4.0f

    .line 359
    .line 360
    const/high16 v5, 0x41800000    # 16.0f

    .line 361
    .line 362
    invoke-static {v15, v5, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    shl-int/lit8 v5, v19, 0x3

    .line 367
    .line 368
    and-int/lit16 v8, v5, 0x380

    .line 369
    .line 370
    move-object v7, v4

    .line 371
    const/4 v4, 0x0

    .line 372
    const/4 v5, 0x0

    .line 373
    const/4 v6, 0x0

    .line 374
    invoke-static/range {v0 .. v8}, Lorg/jsoup/helper/Validate;->TextLabelLarge-ZHfKjFs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;I)V

    .line 375
    .line 376
    .line 377
    const/4 v8, 0x1

    .line 378
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    const/high16 v0, 0x41000000    # 8.0f

    .line 391
    .line 392
    const/4 v1, 0x0

    .line 393
    const/4 v2, 0x2

    .line 394
    invoke-static {v15, v0, v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    new-instance v1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 399
    .line 400
    const/high16 v2, 0x3f800000    # 1.0f

    .line 401
    .line 402
    invoke-direct {v1, v2, v8}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 403
    .line 404
    .line 405
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    const/4 v6, 0x4

    .line 419
    const/high16 v1, 0x40000000    # 2.0f

    .line 420
    .line 421
    const-wide/16 v2, 0x0

    .line 422
    .line 423
    move-object v4, v7

    .line 424
    invoke-static/range {v0 .. v6}, Landroidx/appcompat/app/ActionBar;->DividerHorizontal-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 428
    .line 429
    .line 430
    move-object v6, v15

    .line 431
    goto :goto_7

    .line 432
    :cond_8
    move-object v7, v4

    .line 433
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 434
    .line 435
    .line 436
    move-object/from16 v6, p5

    .line 437
    .line 438
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    if-eqz v8, :cond_9

    .line 443
    .line 444
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda13;

    .line 445
    .line 446
    move-object/from16 v1, p0

    .line 447
    .line 448
    move-wide/from16 v2, p1

    .line 449
    .line 450
    move-wide/from16 v4, p3

    .line 451
    .line 452
    move/from16 v7, p7

    .line 453
    .line 454
    invoke-direct/range {v0 .. v7}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda13;-><init>(Ljava/util/Map$Entry;JJLandroidx/compose/ui/Modifier;I)V

    .line 455
    .line 456
    .line 457
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 458
    .line 459
    :cond_9
    return-void
.end method

.method public static final ChangelogScreen(Lkotlinx/collections/immutable/ImmutableList;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    .line 1
    move/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-object/from16 v12, p5

    .line 17
    .line 18
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    const v0, 0x7e5a5471

    .line 21
    .line 22
    .line 23
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x2

    .line 35
    :goto_0
    or-int v0, p6, v0

    .line 36
    .line 37
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const/16 v1, 0x20

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v1, 0x10

    .line 47
    .line 48
    :goto_1
    or-int/2addr v0, v1

    .line 49
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const/16 v1, 0x100

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v1, 0x80

    .line 59
    .line 60
    :goto_2
    or-int/2addr v0, v1

    .line 61
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    const/16 v1, 0x800

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/16 v1, 0x400

    .line 71
    .line 72
    :goto_3
    or-int/2addr v0, v1

    .line 73
    or-int/lit16 v0, v0, 0x6000

    .line 74
    .line 75
    and-int/lit16 v1, v0, 0x2493

    .line 76
    .line 77
    const/16 v5, 0x2492

    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    if-eq v1, v5, :cond_4

    .line 81
    .line 82
    move v1, v6

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    const/4 v1, 0x0

    .line 85
    :goto_4
    and-int/2addr v0, v6

    .line 86
    invoke-virtual {v12, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/4 v1, 0x6

    .line 95
    invoke-direct {v0, v1, v4}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    const v1, -0x29ac5fd3

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    new-instance v0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    invoke-direct {v0, p0, v3, v2}, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Z)V

    .line 108
    .line 109
    .line 110
    const v1, 0x65d25465

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    const v13, 0x180036

    .line 118
    .line 119
    .line 120
    const/16 v14, 0x3c

    .line 121
    .line 122
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v9, 0x0

    .line 127
    const/4 v10, 0x0

    .line 128
    invoke-static/range {v5 .. v14}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 133
    .line 134
    .line 135
    move-object/from16 v5, p4

    .line 136
    .line 137
    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-eqz v7, :cond_6

    .line 142
    .line 143
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;

    .line 144
    .line 145
    move-object v1, p0

    .line 146
    move/from16 v6, p6

    .line 147
    .line 148
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;-><init>(Lkotlinx/collections/immutable/ImmutableList;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V

    .line 149
    .line 150
    .line 151
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 152
    .line 153
    :cond_6
    return-void
.end method

.method public static final Placeholder(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    move-object v3, p1

    .line 2
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, 0x60dad108

    .line 5
    .line 6
    .line 7
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x2

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v0

    .line 20
    :goto_0
    or-int/2addr p1, p2

    .line 21
    and-int/lit8 v1, p1, 0x3

    .line 22
    .line 23
    if-eq v1, v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_1
    and-int/lit8 v1, p1, 0x1

    .line 29
    .line 30
    invoke-virtual {v3, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Image:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 37
    .line 38
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 45
    .line 46
    iget-wide v1, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSecondary:J

    .line 47
    .line 48
    move-wide v4, v1

    .line 49
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 50
    .line 51
    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 52
    .line 53
    .line 54
    shl-int/lit8 p1, p1, 0x3

    .line 55
    .line 56
    and-int/lit8 p1, p1, 0x70

    .line 57
    .line 58
    or-int/lit16 v4, p1, 0x180

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    move-object v1, p0

    .line 62
    invoke-static/range {v0 .. v5}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move-object v1, p0

    .line 67
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 68
    .line 69
    .line 70
    :goto_2
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    new-instance p1, Landroidx/compose/foundation/layout/BoxKt$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/4 v0, 0x5

    .line 79
    invoke-direct {p1, v1, p2, v0}, Landroidx/compose/foundation/layout/BoxKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;II)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method public static final ReleaseComposable(Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move-object v4, p2

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p2, -0x6ff35480

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p2, v0

    .line 20
    :goto_0
    or-int/2addr p2, p3

    .line 21
    or-int/lit8 p2, p2, 0x30

    .line 22
    .line 23
    and-int/lit8 v1, p2, 0x13

    .line 24
    .line 25
    const/16 v2, 0x12

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v8, 0x1

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    move v1, v8

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v3

    .line 34
    :goto_1
    and-int/2addr p2, v8

    .line 35
    invoke-virtual {v4, p2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_5

    .line 40
    .line 41
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 42
    .line 43
    sget-object p2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 44
    .line 45
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/high16 p2, 0x41800000    # 16.0f

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-static {p1, p2, v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Landroidx/compose/foundation/layout/OffsetKt;->height(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object p2, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 66
    .line 67
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 68
    .line 69
    invoke-static {p2, v0, v4, v3}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget-wide v0, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 74
    .line 75
    const/16 v2, 0x20

    .line 76
    .line 77
    ushr-long v5, v0, v2

    .line 78
    .line 79
    xor-long/2addr v0, v5

    .line 80
    long-to-int v0, v0

    .line 81
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v4, p1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 97
    .line 98
    .line 99
    iget-boolean v6, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 100
    .line 101
    if-eqz v6, :cond_2

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 108
    .line 109
    .line 110
    :goto_2
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 111
    .line 112
    invoke-static {v4, p2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 113
    .line 114
    .line 115
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 116
    .line 117
    invoke-static {v4, v1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 130
    .line 131
    invoke-static {v4, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 132
    .line 133
    .line 134
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 135
    .line 136
    invoke-static {v4, p1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    .line 138
    .line 139
    const/4 p1, 0x0

    .line 140
    invoke-static {p1, v4, v3}, Lorg/jsoup/Jsoup;->ReleaseItemTimeline(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 144
    .line 145
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 146
    .line 147
    invoke-static {p1, v9, v4, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-wide v9, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 152
    .line 153
    ushr-long v2, v9, v2

    .line 154
    .line 155
    xor-long/2addr v2, v9

    .line 156
    long-to-int v2, v2

    .line 157
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 162
    .line 163
    invoke-static {v4, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 168
    .line 169
    .line 170
    iget-boolean v11, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 171
    .line 172
    if-eqz v11, :cond_3

    .line 173
    .line 174
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 179
    .line 180
    .line 181
    :goto_3
    invoke-static {v4, p1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v4, v3, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v2, v4, v1, v4, v0}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v4, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;->version:Ljava/lang/String;

    .line 194
    .line 195
    iget-boolean v1, p0, Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;->isLatest:Z

    .line 196
    .line 197
    iget-object p1, p0, Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;->date:Ljava/lang/String;

    .line 198
    .line 199
    if-nez p1, :cond_4

    .line 200
    .line 201
    const-string p1, ""

    .line 202
    .line 203
    :cond_4
    move-object v2, p1

    .line 204
    const/4 v3, 0x0

    .line 205
    const/4 v5, 0x0

    .line 206
    invoke-static/range {v0 .. v5}, Lorg/jsoup/Jsoup;->ReleaseItemHeader(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 207
    .line 208
    .line 209
    new-instance p1, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    const/16 p2, 0xd

    .line 212
    .line 213
    invoke-direct {p1, p2, p0}, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    const p2, -0x23cddc72

    .line 217
    .line 218
    .line 219
    invoke-static {p2, p1, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const/high16 v6, 0x30000

    .line 224
    .line 225
    const/16 v7, 0x1f

    .line 226
    .line 227
    const/4 v0, 0x0

    .line 228
    const/4 v1, 0x0

    .line 229
    const/4 v2, 0x0

    .line 230
    move-object v5, v4

    .line 231
    move-object v4, p1

    .line 232
    invoke-static/range {v0 .. v7}, Landroidx/appcompat/app/ActionBar;->CardFilled(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 233
    .line 234
    .line 235
    move-object v4, v5

    .line 236
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 240
    .line 241
    .line 242
    move-object p1, v9

    .line 243
    goto :goto_4

    .line 244
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 245
    .line 246
    .line 247
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    if-eqz p2, :cond_6

    .line 252
    .line 253
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;

    .line 254
    .line 255
    const/16 v1, 0xe

    .line 256
    .line 257
    invoke-direct {v0, p3, v1, p0, p1}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 261
    .line 262
    :cond_6
    return-void
.end method

.method public static final ReleaseItemHeader(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    .line 1
    move/from16 v2, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, 0x2d4cb9cf

    .line 11
    .line 12
    .line 13
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    move-object/from16 v1, p0

    .line 17
    .line 18
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int v0, p5, v0

    .line 28
    .line 29
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/16 v11, 0x20

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    move v3, v11

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v3, 0x10

    .line 40
    .line 41
    :goto_1
    or-int/2addr v0, v3

    .line 42
    move-object/from16 v12, p2

    .line 43
    .line 44
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const/16 v3, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v3, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v3

    .line 56
    or-int/lit16 v0, v0, 0xc00

    .line 57
    .line 58
    and-int/lit16 v3, v0, 0x493

    .line 59
    .line 60
    const/16 v4, 0x492

    .line 61
    .line 62
    if-eq v3, v4, :cond_3

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/4 v3, 0x0

    .line 67
    :goto_3
    and-int/lit8 v4, v0, 0x1

    .line 68
    .line 69
    invoke-virtual {v9, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_7

    .line 74
    .line 75
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const/high16 v19, 0x40800000    # 4.0f

    .line 90
    .line 91
    const/16 v20, 0x3

    .line 92
    .line 93
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 94
    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    const/high16 v18, 0x41000000    # 8.0f

    .line 100
    .line 101
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 106
    .line 107
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 108
    .line 109
    const/16 v6, 0x30

    .line 110
    .line 111
    invoke-static {v5, v4, v9, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iget-wide v5, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 116
    .line 117
    ushr-long v7, v5, v11

    .line 118
    .line 119
    xor-long/2addr v5, v7

    .line 120
    long-to-int v5, v5

    .line 121
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v9, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 135
    .line 136
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 137
    .line 138
    .line 139
    iget-boolean v8, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 140
    .line 141
    if-eqz v8, :cond_4

    .line 142
    .line 143
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_4
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 148
    .line 149
    .line 150
    :goto_4
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 151
    .line 152
    invoke-static {v9, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 156
    .line 157
    invoke-static {v9, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 165
    .line 166
    invoke-static {v9, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 170
    .line 171
    invoke-static {v9, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 172
    .line 173
    .line 174
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 175
    .line 176
    invoke-static {v9, v3, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v1}, Landroidx/core/util/DebugUtils;->bold(Ljava/lang/String;)Landroidx/compose/ui/text/AnnotatedString;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    move/from16 p4, v11

    .line 184
    .line 185
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    iget-wide v13, v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 190
    .line 191
    move-object v11, v8

    .line 192
    const/4 v8, 0x0

    .line 193
    move-object/from16 v18, v10

    .line 194
    .line 195
    const/4 v10, 0x0

    .line 196
    move-object/from16 v19, v4

    .line 197
    .line 198
    const/4 v4, 0x0

    .line 199
    move-object/from16 v20, v7

    .line 200
    .line 201
    const/4 v7, 0x0

    .line 202
    move-object v1, v5

    .line 203
    move-object/from16 v2, v18

    .line 204
    .line 205
    move/from16 v18, v0

    .line 206
    .line 207
    move-object v0, v6

    .line 208
    move-wide v5, v13

    .line 209
    move-object/from16 v14, v19

    .line 210
    .line 211
    move-object v13, v11

    .line 212
    move-object/from16 v11, v20

    .line 213
    .line 214
    invoke-static/range {v3 .. v10}, Landroidx/room/util/DBUtil;->TextTitleLarge-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)V

    .line 215
    .line 216
    .line 217
    if-eqz p1, :cond_6

    .line 218
    .line 219
    const v3, -0x2473656d

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 223
    .line 224
    .line 225
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    const/high16 v3, 0x41000000    # 8.0f

    .line 233
    .line 234
    invoke-static {v15, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-static {v9, v3}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    iget-wide v3, v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->outlineVariant:J

    .line 246
    .line 247
    const v5, 0x3dcccccd    # 0.1f

    .line 248
    .line 249
    .line 250
    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 251
    .line 252
    .line 253
    move-result-wide v3

    .line 254
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapesKt;->LocalThemeShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 255
    .line 256
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 261
    .line 262
    iget-object v6, v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;->extraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 263
    .line 264
    invoke-static {v15, v3, v4, v6}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    iget-wide v6, v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->outlineVariant:J

    .line 273
    .line 274
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 279
    .line 280
    iget-object v4, v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;->extraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 281
    .line 282
    const/high16 v5, 0x3f800000    # 1.0f

    .line 283
    .line 284
    invoke-static {v3, v5, v6, v7, v4}, Landroidx/compose/foundation/ImageKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 289
    .line 290
    const/4 v5, 0x0

    .line 291
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    iget-wide v5, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 296
    .line 297
    ushr-long v7, v5, p4

    .line 298
    .line 299
    xor-long/2addr v5, v7

    .line 300
    long-to-int v5, v5

    .line 301
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-static {v9, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 310
    .line 311
    .line 312
    iget-boolean v7, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 313
    .line 314
    if-eqz v7, :cond_5

    .line 315
    .line 316
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 321
    .line 322
    .line 323
    :goto_5
    invoke-static {v9, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v9, v6, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v5, v9, v0, v9, v1}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 330
    .line 331
    .line 332
    invoke-static {v9, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 333
    .line 334
    .line 335
    const v0, 0x7f1201fb

    .line 336
    .line 337
    .line 338
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    const/high16 v0, 0x40800000    # 4.0f

    .line 357
    .line 358
    const/high16 v1, 0x41800000    # 16.0f

    .line 359
    .line 360
    invoke-static {v15, v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    const/4 v10, 0x0

    .line 365
    const/16 v11, 0x3c

    .line 366
    .line 367
    const-wide/16 v5, 0x0

    .line 368
    .line 369
    const/4 v7, 0x0

    .line 370
    const/4 v8, 0x0

    .line 371
    invoke-static/range {v3 .. v11}, Lorg/slf4j/helpers/Util;->TextLabelSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 372
    .line 373
    .line 374
    const/4 v0, 0x1

    .line 375
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 376
    .line 377
    .line 378
    const/4 v5, 0x0

    .line 379
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 380
    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_6
    const/4 v0, 0x1

    .line 384
    const/4 v5, 0x0

    .line 385
    const v1, -0x246632e9

    .line 386
    .line 387
    .line 388
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 392
    .line 393
    .line 394
    :goto_6
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 395
    .line 396
    .line 397
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    const/high16 v7, 0x41800000    # 16.0f

    .line 405
    .line 406
    const/4 v8, 0x7

    .line 407
    const/4 v4, 0x0

    .line 408
    const/4 v5, 0x0

    .line 409
    const/4 v6, 0x0

    .line 410
    move-object v3, v15

    .line 411
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->getColors(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget-wide v5, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 420
    .line 421
    shr-int/lit8 v0, v18, 0x6

    .line 422
    .line 423
    and-int/lit8 v10, v0, 0xe

    .line 424
    .line 425
    const/16 v11, 0x38

    .line 426
    .line 427
    const/4 v7, 0x0

    .line 428
    const/4 v8, 0x0

    .line 429
    move-object v3, v12

    .line 430
    invoke-static/range {v3 .. v11}, Landroidx/sqlite/SQLite;->TextLabelMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 431
    .line 432
    .line 433
    move-object v4, v15

    .line 434
    goto :goto_7

    .line 435
    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 436
    .line 437
    .line 438
    move-object/from16 v4, p3

    .line 439
    .line 440
    :goto_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    if-eqz v7, :cond_8

    .line 445
    .line 446
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;

    .line 447
    .line 448
    const/4 v6, 0x0

    .line 449
    move-object/from16 v1, p0

    .line 450
    .line 451
    move/from16 v2, p1

    .line 452
    .line 453
    move-object/from16 v3, p2

    .line 454
    .line 455
    move/from16 v5, p5

    .line 456
    .line 457
    invoke-direct/range {v0 .. v6}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;ZLjava/lang/Object;Landroidx/compose/ui/Modifier;II)V

    .line 458
    .line 459
    .line 460
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 461
    .line 462
    :cond_8
    return-void
.end method

.method public static final ReleaseItemTimeline(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, 0x7a53bddf

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    or-int/lit8 p1, p2, 0x6

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x1

    .line 16
    if-eq v0, v6, :cond_0

    .line 17
    .line 18
    move v0, v7

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    and-int/2addr p1, v7

    .line 22
    invoke-virtual {v4, p1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 29
    .line 30
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const/high16 p1, 0x41c00000    # 24.0f

    .line 40
    .line 41
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 42
    .line 43
    invoke-static {v8, p1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    .line 48
    .line 49
    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 54
    .line 55
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 56
    .line 57
    const/16 v2, 0x30

    .line 58
    .line 59
    invoke-static {v1, v0, v4, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-wide v1, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 64
    .line 65
    const/16 v3, 0x20

    .line 66
    .line 67
    ushr-long v9, v1, v3

    .line 68
    .line 69
    xor-long/2addr v1, v9

    .line 70
    long-to-int v1, v1

    .line 71
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v4, p1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 87
    .line 88
    .line 89
    iget-boolean v5, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 90
    .line 91
    if-eqz v5, :cond_1

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 98
    .line 99
    .line 100
    :goto_1
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 101
    .line 102
    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 106
    .line 107
    invoke-static {v4, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 115
    .line 116
    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 120
    .line 121
    invoke-static {v4, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {v4, p1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 134
    .line 135
    const/high16 v9, 0x41000000    # 8.0f

    .line 136
    .line 137
    invoke-static {p1, v8, v9, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 138
    .line 139
    .line 140
    sget-object p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 141
    .line 142
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 147
    .line 148
    iget-wide v2, p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->outlineVariant:J

    .line 149
    .line 150
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    const/high16 v0, 0x41400000    # 12.0f

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    const/4 v5, 0x0

    .line 163
    invoke-static/range {v0 .. v5}, Lorg/jsoup/Jsoup;->TimelineDot-DxzAY5Q(FIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v4, p1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    const/4 p1, 0x0

    .line 192
    invoke-static {v8, v9, p1, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    new-instance v0, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 197
    .line 198
    const/high16 v1, 0x3f800000    # 1.0f

    .line 199
    .line 200
    invoke-direct {v0, v1, v7}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    const-wide/16 v2, 0x0

    .line 217
    .line 218
    const/4 v1, 0x0

    .line 219
    const/high16 v0, 0x40000000    # 2.0f

    .line 220
    .line 221
    invoke-static/range {v0 .. v5}, Landroidx/room/util/SchemaInfoUtilKt;->DividerVertical-9IZ8Weo(FIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 225
    .line 226
    .line 227
    move-object p0, v8

    .line 228
    goto :goto_2

    .line 229
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 230
    .line 231
    .line 232
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    if-eqz p1, :cond_3

    .line 237
    .line 238
    new-instance v0, Landroidx/compose/foundation/layout/BoxKt$$ExternalSyntheticLambda0;

    .line 239
    .line 240
    const/4 v1, 0x6

    .line 241
    invoke-direct {v0, p0, p2, v1}, Landroidx/compose/foundation/layout/BoxKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;II)V

    .line 242
    .line 243
    .line 244
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 245
    .line 246
    :cond_3
    return-void
.end method

.method public static final SettingDialogLayout(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    .line 1
    move-object/from16 v7, p6

    .line 2
    .line 3
    move/from16 v8, p8

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-object/from16 v0, p7

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    const v1, 0x7e89ba51

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    .line 27
    and-int/lit8 v1, v8, 0x6

    .line 28
    .line 29
    move-object/from16 v9, p0

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x2

    .line 42
    :goto_0
    or-int/2addr v1, v8

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v1, v8

    .line 45
    :goto_1
    and-int/lit8 v2, v8, 0x30

    .line 46
    .line 47
    move-object/from16 v13, p1

    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    const/16 v2, 0x20

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v2, 0x10

    .line 61
    .line 62
    :goto_2
    or-int/2addr v1, v2

    .line 63
    :cond_3
    and-int/lit16 v2, v8, 0x180

    .line 64
    .line 65
    move-object/from16 v11, p2

    .line 66
    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    const/16 v2, 0x100

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    const/16 v2, 0x80

    .line 79
    .line 80
    :goto_3
    or-int/2addr v1, v2

    .line 81
    :cond_5
    and-int/lit16 v2, v8, 0xc00

    .line 82
    .line 83
    move-object/from16 v15, p3

    .line 84
    .line 85
    if-nez v2, :cond_7

    .line 86
    .line 87
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_6

    .line 92
    .line 93
    const/16 v2, 0x800

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    const/16 v2, 0x400

    .line 97
    .line 98
    :goto_4
    or-int/2addr v1, v2

    .line 99
    :cond_7
    and-int/lit16 v2, v8, 0x6000

    .line 100
    .line 101
    move-object/from16 v12, p4

    .line 102
    .line 103
    if-nez v2, :cond_9

    .line 104
    .line 105
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_8

    .line 110
    .line 111
    const/16 v2, 0x4000

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_8
    const/16 v2, 0x2000

    .line 115
    .line 116
    :goto_5
    or-int/2addr v1, v2

    .line 117
    :cond_9
    const/high16 v2, 0x30000

    .line 118
    .line 119
    and-int/2addr v2, v8

    .line 120
    if-nez v2, :cond_b

    .line 121
    .line 122
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_a

    .line 129
    .line 130
    const/high16 v2, 0x20000

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_a
    const/high16 v2, 0x10000

    .line 134
    .line 135
    :goto_6
    or-int/2addr v1, v2

    .line 136
    :cond_b
    and-int/lit8 v2, p9, 0x40

    .line 137
    .line 138
    const/high16 v3, 0x180000

    .line 139
    .line 140
    if-eqz v2, :cond_d

    .line 141
    .line 142
    or-int/2addr v1, v3

    .line 143
    :cond_c
    move/from16 v3, p5

    .line 144
    .line 145
    goto :goto_8

    .line 146
    :cond_d
    and-int/2addr v3, v8

    .line 147
    if-nez v3, :cond_c

    .line 148
    .line 149
    move/from16 v3, p5

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_e

    .line 156
    .line 157
    const/high16 v4, 0x100000

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_e
    const/high16 v4, 0x80000

    .line 161
    .line 162
    :goto_7
    or-int/2addr v1, v4

    .line 163
    :goto_8
    const/high16 v4, 0xc00000

    .line 164
    .line 165
    and-int/2addr v4, v8

    .line 166
    if-nez v4, :cond_10

    .line 167
    .line 168
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_f

    .line 173
    .line 174
    const/high16 v4, 0x800000

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_f
    const/high16 v4, 0x400000

    .line 178
    .line 179
    :goto_9
    or-int/2addr v1, v4

    .line 180
    :cond_10
    const v4, 0x492493

    .line 181
    .line 182
    .line 183
    and-int/2addr v4, v1

    .line 184
    const v5, 0x492492

    .line 185
    .line 186
    .line 187
    const/4 v6, 0x1

    .line 188
    if-eq v4, v5, :cond_11

    .line 189
    .line 190
    move v4, v6

    .line 191
    goto :goto_a

    .line 192
    :cond_11
    const/4 v4, 0x0

    .line 193
    :goto_a
    and-int/lit8 v5, v1, 0x1

    .line 194
    .line 195
    invoke-virtual {v0, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_13

    .line 200
    .line 201
    if-eqz v2, :cond_12

    .line 202
    .line 203
    move/from16 v16, v6

    .line 204
    .line 205
    goto :goto_b

    .line 206
    :cond_12
    move/from16 v16, v3

    .line 207
    .line 208
    :goto_b
    const v2, 0x7f120226

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    const v2, 0x7f120227

    .line 216
    .line 217
    .line 218
    invoke-static {v0, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v14

    .line 222
    new-instance v2, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;

    .line 223
    .line 224
    const/16 v3, 0xb

    .line 225
    .line 226
    invoke-direct {v2, v7, v3}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 227
    .line 228
    .line 229
    const v3, 0x67fa28a1

    .line 230
    .line 231
    .line 232
    invoke-static {v3, v2, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 233
    .line 234
    .line 235
    move-result-object v17

    .line 236
    and-int/lit8 v2, v1, 0xe

    .line 237
    .line 238
    const/high16 v3, 0x30000000

    .line 239
    .line 240
    or-int/2addr v2, v3

    .line 241
    and-int/lit16 v3, v1, 0x380

    .line 242
    .line 243
    or-int/2addr v2, v3

    .line 244
    shr-int/lit8 v3, v1, 0x3

    .line 245
    .line 246
    and-int/lit16 v4, v3, 0x1c00

    .line 247
    .line 248
    or-int/2addr v2, v4

    .line 249
    const v4, 0xe000

    .line 250
    .line 251
    .line 252
    and-int/2addr v3, v4

    .line 253
    or-int/2addr v2, v3

    .line 254
    shl-int/lit8 v3, v1, 0xc

    .line 255
    .line 256
    const/high16 v4, 0x70000

    .line 257
    .line 258
    and-int/2addr v4, v3

    .line 259
    or-int/2addr v2, v4

    .line 260
    const/high16 v4, 0x1c00000

    .line 261
    .line 262
    and-int/2addr v3, v4

    .line 263
    or-int/2addr v2, v3

    .line 264
    const/high16 v3, 0xe000000

    .line 265
    .line 266
    shl-int/lit8 v1, v1, 0x6

    .line 267
    .line 268
    and-int/2addr v1, v3

    .line 269
    or-int v19, v2, v1

    .line 270
    .line 271
    move-object/from16 v18, v0

    .line 272
    .line 273
    invoke-static/range {v9 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->AlertDialog(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 274
    .line 275
    .line 276
    move/from16 v6, v16

    .line 277
    .line 278
    goto :goto_c

    .line 279
    :cond_13
    move-object/from16 v18, v0

    .line 280
    .line 281
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 282
    .line 283
    .line 284
    move v6, v3

    .line 285
    :goto_c
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    if-eqz v10, :cond_14

    .line 290
    .line 291
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda0;

    .line 292
    .line 293
    move-object/from16 v1, p0

    .line 294
    .line 295
    move-object/from16 v2, p1

    .line 296
    .line 297
    move-object/from16 v3, p2

    .line 298
    .line 299
    move-object/from16 v4, p3

    .line 300
    .line 301
    move-object/from16 v5, p4

    .line 302
    .line 303
    move/from16 v9, p9

    .line 304
    .line 305
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 306
    .line 307
    .line 308
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 309
    .line 310
    :cond_14
    return-void
.end method

.method public static final SetupArchiveFolderDialog(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$ViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    move-object/from16 v12, p4

    check-cast v12, Landroidx/compose/runtime/GapComposer;

    const v0, -0x986128c

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    or-int/lit16 v0, v0, 0x580

    and-int/lit16 v3, v0, 0x493

    const/16 v5, 0x492

    const/4 v7, 0x0

    if-eq v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v7

    :goto_2
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v12, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v3, p5, 0x1

    const/16 v5, 0xa

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v3, :cond_4

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 657
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int/lit16 v0, v0, -0x1c01

    move-object/from16 v9, p2

    move v3, v0

    move-object/from16 v0, p3

    goto :goto_4

    .line 658
    :cond_4
    :goto_3
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    .line 659
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_5

    if-ne v9, v8, :cond_6

    .line 660
    :cond_5
    new-instance v9, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v5}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;I)V

    .line 661
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 662
    :cond_6
    move-object/from16 v18, v9

    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 663
    invoke-static {v12}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 664
    invoke-static {v3}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v15

    .line 665
    invoke-static {v12}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    move-result-object v17

    const-class v9, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$ViewModel;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v13

    .line 666
    invoke-interface {v3}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v14

    const/16 v16, 0x0

    .line 667
    invoke-static/range {v13 .. v18}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$ViewModel;

    and-int/lit16 v0, v0, -0x1c01

    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v19, v3

    move v3, v0

    move-object/from16 v0, v19

    .line 668
    :goto_4
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 669
    iget-object v10, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 670
    invoke-static {v10, v12}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    .line 671
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    .line 672
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_7

    if-ne v13, v8, :cond_8

    .line 673
    :cond_7
    new-instance v13, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    const/16 v11, 0xf

    invoke-direct {v13, v11, v0}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    .line 674
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 675
    :cond_8
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 676
    iget-object v11, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 677
    new-instance v14, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    const/4 v15, 0x6

    const/4 v6, 0x0

    invoke-direct {v14, v0, v6, v2, v15}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;I)V

    invoke-static {v12, v11, v14}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 678
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v14

    and-int/lit8 v3, v3, 0x70

    if-ne v3, v4, :cond_9

    const/4 v7, 0x1

    :cond_9
    or-int v3, v14, v7

    .line 680
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_a

    if-ne v4, v8, :cond_b

    .line 681
    :cond_a
    new-instance v4, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    const/16 v3, 0x17

    invoke-direct {v4, v10, v2, v6, v3}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 682
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 683
    :cond_b
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v11, v4, v12}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 684
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 685
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 686
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_c

    if-ne v6, v8, :cond_d

    .line 687
    :cond_c
    new-instance v6, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    const/4 v4, 0x7

    invoke-direct {v6, v4, v13}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 688
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 689
    :cond_d
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 690
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 691
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_e

    if-ne v7, v8, :cond_f

    .line 692
    :cond_e
    new-instance v7, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    const/16 v4, 0x8

    invoke-direct {v7, v4, v13}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 693
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 694
    :cond_f
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 695
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 696
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_10

    if-ne v10, v8, :cond_11

    .line 697
    :cond_10
    new-instance v10, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    const/16 v4, 0x9

    invoke-direct {v10, v4, v13}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 698
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 699
    :cond_11
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 700
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 701
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_12

    if-ne v11, v8, :cond_13

    .line 702
    :cond_12
    new-instance v11, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    invoke-direct {v11, v5, v13}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 703
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 704
    :cond_13
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 705
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 706
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_14

    if-ne v5, v8, :cond_15

    .line 707
    :cond_14
    new-instance v5, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    const/16 v4, 0xb

    invoke-direct {v5, v4, v13}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 708
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 709
    :cond_15
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 710
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 711
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v4, :cond_16

    if-ne v14, v8, :cond_17

    .line 712
    :cond_16
    new-instance v14, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    const/16 v4, 0xc

    invoke-direct {v14, v4, v13}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 713
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 714
    :cond_17
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 715
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 716
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v4, :cond_18

    if-ne v15, v8, :cond_19

    .line 717
    :cond_18
    new-instance v15, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    const/16 v4, 0xd

    invoke-direct {v15, v4, v13}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 718
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 719
    :cond_19
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/16 v13, 0x30

    move-object v4, v9

    move-object v8, v11

    move-object v11, v15

    move-object v9, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    move-object v10, v14

    .line 720
    invoke-static/range {v3 .. v13}, Lorg/jsoup/Jsoup;->SetupArchiveFolderDialog(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v3, v4

    move-object v4, v0

    goto :goto_5

    .line 721
    :cond_1a
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    return-void

    .line 722
    :cond_1b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 723
    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_1c

    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    const/16 v6, 0x13

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 724
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

.method public static final SetupArchiveFolderDialog(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p7

    .line 4
    .line 5
    move/from16 v10, p10

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v9, p9

    .line 11
    .line 12
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v0, 0x1a69f112

    .line 15
    .line 16
    .line 17
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v0, v10, 0x6

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    and-int/lit8 v0, v10, 0x8

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :goto_0
    if-eqz v0, :cond_1

    .line 39
    .line 40
    move v0, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v0, 0x2

    .line 43
    :goto_1
    or-int/2addr v0, v10

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move v0, v10

    .line 46
    :goto_2
    and-int/lit8 v3, v10, 0x30

    .line 47
    .line 48
    move-object/from16 v15, p1

    .line 49
    .line 50
    if-nez v3, :cond_4

    .line 51
    .line 52
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    const/16 v3, 0x20

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/16 v3, 0x10

    .line 62
    .line 63
    :goto_3
    or-int/2addr v0, v3

    .line 64
    :cond_4
    and-int/lit16 v3, v10, 0x180

    .line 65
    .line 66
    if-nez v3, :cond_6

    .line 67
    .line 68
    move-object/from16 v3, p2

    .line 69
    .line 70
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_5

    .line 75
    .line 76
    const/16 v4, 0x100

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    const/16 v4, 0x80

    .line 80
    .line 81
    :goto_4
    or-int/2addr v0, v4

    .line 82
    goto :goto_5

    .line 83
    :cond_6
    move-object/from16 v3, p2

    .line 84
    .line 85
    :goto_5
    and-int/lit16 v4, v10, 0xc00

    .line 86
    .line 87
    if-nez v4, :cond_8

    .line 88
    .line 89
    move-object/from16 v4, p3

    .line 90
    .line 91
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_7

    .line 96
    .line 97
    const/16 v5, 0x800

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_7
    const/16 v5, 0x400

    .line 101
    .line 102
    :goto_6
    or-int/2addr v0, v5

    .line 103
    goto :goto_7

    .line 104
    :cond_8
    move-object/from16 v4, p3

    .line 105
    .line 106
    :goto_7
    and-int/lit16 v5, v10, 0x6000

    .line 107
    .line 108
    move-object/from16 v12, p4

    .line 109
    .line 110
    if-nez v5, :cond_a

    .line 111
    .line 112
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_9

    .line 117
    .line 118
    const/16 v5, 0x4000

    .line 119
    .line 120
    goto :goto_8

    .line 121
    :cond_9
    const/16 v5, 0x2000

    .line 122
    .line 123
    :goto_8
    or-int/2addr v0, v5

    .line 124
    :cond_a
    const/high16 v5, 0x30000

    .line 125
    .line 126
    and-int/2addr v5, v10

    .line 127
    move-object/from16 v6, p5

    .line 128
    .line 129
    if-nez v5, :cond_c

    .line 130
    .line 131
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_b

    .line 136
    .line 137
    const/high16 v5, 0x20000

    .line 138
    .line 139
    goto :goto_9

    .line 140
    :cond_b
    const/high16 v5, 0x10000

    .line 141
    .line 142
    :goto_9
    or-int/2addr v0, v5

    .line 143
    :cond_c
    const/high16 v5, 0x180000

    .line 144
    .line 145
    and-int/2addr v5, v10

    .line 146
    move-object/from16 v7, p6

    .line 147
    .line 148
    if-nez v5, :cond_e

    .line 149
    .line 150
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_d

    .line 155
    .line 156
    const/high16 v5, 0x100000

    .line 157
    .line 158
    goto :goto_a

    .line 159
    :cond_d
    const/high16 v5, 0x80000

    .line 160
    .line 161
    :goto_a
    or-int/2addr v0, v5

    .line 162
    :cond_e
    const/high16 v5, 0xc00000

    .line 163
    .line 164
    and-int/2addr v5, v10

    .line 165
    if-nez v5, :cond_10

    .line 166
    .line 167
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_f

    .line 172
    .line 173
    const/high16 v5, 0x800000

    .line 174
    .line 175
    goto :goto_b

    .line 176
    :cond_f
    const/high16 v5, 0x400000

    .line 177
    .line 178
    :goto_b
    or-int/2addr v0, v5

    .line 179
    :cond_10
    const/high16 v5, 0x6000000

    .line 180
    .line 181
    and-int/2addr v5, v10

    .line 182
    if-nez v5, :cond_12

    .line 183
    .line 184
    move-object/from16 v5, p8

    .line 185
    .line 186
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    if-eqz v11, :cond_11

    .line 191
    .line 192
    const/high16 v11, 0x4000000

    .line 193
    .line 194
    goto :goto_c

    .line 195
    :cond_11
    const/high16 v11, 0x2000000

    .line 196
    .line 197
    :goto_c
    or-int/2addr v0, v11

    .line 198
    :goto_d
    move v11, v0

    .line 199
    goto :goto_e

    .line 200
    :cond_12
    move-object/from16 v5, p8

    .line 201
    .line 202
    goto :goto_d

    .line 203
    :goto_e
    const v0, 0x2492493

    .line 204
    .line 205
    .line 206
    and-int/2addr v0, v11

    .line 207
    const v13, 0x2492492

    .line 208
    .line 209
    .line 210
    if-eq v0, v13, :cond_13

    .line 211
    .line 212
    const/4 v0, 0x1

    .line 213
    goto :goto_f

    .line 214
    :cond_13
    const/4 v0, 0x0

    .line 215
    :goto_f
    and-int/lit8 v13, v11, 0x1

    .line 216
    .line 217
    invoke-virtual {v9, v13, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_24

    .line 222
    .line 223
    instance-of v0, v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$Closed;

    .line 224
    .line 225
    if-nez v0, :cond_23

    .line 226
    .line 227
    const v0, -0x316bdc51

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 231
    .line 232
    .line 233
    and-int/lit8 v0, v11, 0xe

    .line 234
    .line 235
    if-eq v0, v2, :cond_15

    .line 236
    .line 237
    and-int/lit8 v13, v11, 0x8

    .line 238
    .line 239
    if-eqz v13, :cond_14

    .line 240
    .line 241
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    if-eqz v13, :cond_14

    .line 246
    .line 247
    goto :goto_11

    .line 248
    :cond_14
    const/4 v13, 0x0

    .line 249
    :goto_10
    const/16 v16, 0x0

    .line 250
    .line 251
    goto :goto_12

    .line 252
    :cond_15
    :goto_11
    const/4 v13, 0x1

    .line 253
    goto :goto_10

    .line 254
    :goto_12
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v14

    .line 258
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 259
    .line 260
    if-nez v13, :cond_16

    .line 261
    .line 262
    if-ne v14, v2, :cond_19

    .line 263
    .line 264
    :cond_16
    instance-of v13, v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 265
    .line 266
    if-eqz v13, :cond_18

    .line 267
    .line 268
    move-object v13, v1

    .line 269
    check-cast v13, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 270
    .line 271
    iget-object v13, v13, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->syncingMessage:Ljava/lang/String;

    .line 272
    .line 273
    if-eqz v13, :cond_18

    .line 274
    .line 275
    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    if-eqz v13, :cond_17

    .line 280
    .line 281
    goto :goto_13

    .line 282
    :cond_17
    move/from16 v13, v16

    .line 283
    .line 284
    goto :goto_14

    .line 285
    :cond_18
    :goto_13
    const/4 v13, 0x1

    .line 286
    :goto_14
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :cond_19
    check-cast v14, Ljava/lang/Boolean;

    .line 294
    .line 295
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    const/4 v14, 0x1

    .line 300
    new-array v3, v14, [Ljava/lang/Object;

    .line 301
    .line 302
    aput-object v1, v3, v16

    .line 303
    .line 304
    const/4 v14, 0x4

    .line 305
    if-eq v0, v14, :cond_1b

    .line 306
    .line 307
    and-int/lit8 v0, v11, 0x8

    .line 308
    .line 309
    if-eqz v0, :cond_1a

    .line 310
    .line 311
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_1a

    .line 316
    .line 317
    goto :goto_15

    .line 318
    :cond_1a
    move/from16 v0, v16

    .line 319
    .line 320
    goto :goto_16

    .line 321
    :cond_1b
    :goto_15
    const/4 v0, 0x1

    .line 322
    :goto_16
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v14

    .line 326
    if-nez v0, :cond_1c

    .line 327
    .line 328
    if-ne v14, v2, :cond_1d

    .line 329
    .line 330
    :cond_1c
    new-instance v14, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 331
    .line 332
    const/16 v0, 0xb

    .line 333
    .line 334
    invoke-direct {v14, v0, v1}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_1d
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 341
    .line 342
    move/from16 v0, v16

    .line 343
    .line 344
    invoke-static {v3, v14, v9, v0}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 349
    .line 350
    instance-of v3, v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 351
    .line 352
    if-eqz v3, :cond_1e

    .line 353
    .line 354
    const v3, 0x27b26039

    .line 355
    .line 356
    .line 357
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 358
    .line 359
    .line 360
    const v3, 0x7f1205e2

    .line 361
    .line 362
    .line 363
    invoke-static {v9, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 368
    .line 369
    .line 370
    :goto_17
    move-object v14, v3

    .line 371
    goto :goto_18

    .line 372
    :cond_1e
    instance-of v3, v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 373
    .line 374
    if-eqz v3, :cond_1f

    .line 375
    .line 376
    const v3, 0x27b26f58

    .line 377
    .line 378
    .line 379
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 380
    .line 381
    .line 382
    const v3, 0x7f1205dc

    .line 383
    .line 384
    .line 385
    invoke-static {v9, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 390
    .line 391
    .line 392
    goto :goto_17

    .line 393
    :cond_1f
    instance-of v3, v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;

    .line 394
    .line 395
    if-eqz v3, :cond_22

    .line 396
    .line 397
    const v3, 0x27b280e0

    .line 398
    .line 399
    .line 400
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 401
    .line 402
    .line 403
    const v3, 0x7f1205df

    .line 404
    .line 405
    .line 406
    invoke-static {v9, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 411
    .line 412
    .line 413
    goto :goto_17

    .line 414
    :goto_18
    instance-of v3, v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;

    .line 415
    .line 416
    if-eqz v3, :cond_20

    .line 417
    .line 418
    const v0, 0x27b29a9f

    .line 419
    .line 420
    .line 421
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 422
    .line 423
    .line 424
    const v0, 0x7f1205da

    .line 425
    .line 426
    .line 427
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    move-object/from16 v18, v0

    .line 432
    .line 433
    const/4 v0, 0x0

    .line 434
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 435
    .line 436
    .line 437
    move-object/from16 v19, v18

    .line 438
    .line 439
    move/from16 v18, v3

    .line 440
    .line 441
    goto :goto_19

    .line 442
    :cond_20
    move/from16 v18, v3

    .line 443
    .line 444
    const v3, -0x315dc075

    .line 445
    .line 446
    .line 447
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 451
    .line 452
    .line 453
    const/4 v3, 0x0

    .line 454
    move-object/from16 v19, v3

    .line 455
    .line 456
    :goto_19
    new-instance v3, Landroidx/compose/ui/window/DialogProperties;

    .line 457
    .line 458
    const/4 v0, 0x4

    .line 459
    invoke-direct {v3, v0, v13, v13}, Landroidx/compose/ui/window/DialogProperties;-><init>(IZZ)V

    .line 460
    .line 461
    .line 462
    const/4 v0, 0x0

    .line 463
    if-eqz v18, :cond_21

    .line 464
    .line 465
    const v13, -0x314d189f

    .line 466
    .line 467
    .line 468
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 469
    .line 470
    .line 471
    const/4 v13, 0x0

    .line 472
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 473
    .line 474
    .line 475
    const/4 v13, 0x3

    .line 476
    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    move-object/from16 v21, v3

    .line 481
    .line 482
    const/4 v13, 0x0

    .line 483
    :goto_1a
    move-object/from16 v17, v0

    .line 484
    .line 485
    const/4 v0, 0x1

    .line 486
    goto :goto_1b

    .line 487
    :cond_21
    const v13, -0x314c48f2

    .line 488
    .line 489
    .line 490
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 491
    .line 492
    .line 493
    sget-object v13, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 494
    .line 495
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v17

    .line 499
    check-cast v17, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 500
    .line 501
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v13

    .line 508
    check-cast v13, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 509
    .line 510
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    const/high16 v13, 0x41800000    # 16.0f

    .line 514
    .line 515
    move-object/from16 v21, v3

    .line 516
    .line 517
    const/4 v3, 0x5

    .line 518
    const/high16 v4, 0x41400000    # 12.0f

    .line 519
    .line 520
    invoke-static {v0, v4, v13, v3}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    const/4 v13, 0x0

    .line 525
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 526
    .line 527
    .line 528
    goto :goto_1a

    .line 529
    :goto_1b
    xor-int/lit8 v18, v18, 0x1

    .line 530
    .line 531
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 532
    .line 533
    const/16 v3, 0x1a

    .line 534
    .line 535
    invoke-direct {v0, v1, v8, v2, v3}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 536
    .line 537
    .line 538
    const v3, 0x5608600e

    .line 539
    .line 540
    .line 541
    invoke-static {v3, v0, v9}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 542
    .line 543
    .line 544
    move-result-object v16

    .line 545
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContentKt$$ExternalSyntheticLambda0;

    .line 546
    .line 547
    move-object/from16 v3, p2

    .line 548
    .line 549
    move-object v4, v6

    .line 550
    move-object v6, v7

    .line 551
    move-object v7, v2

    .line 552
    move-object/from16 v2, p3

    .line 553
    .line 554
    invoke-direct/range {v0 .. v7}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContentKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    .line 555
    .line 556
    .line 557
    const v1, 0x4b36f137    # 1.1989303E7f

    .line 558
    .line 559
    .line 560
    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    shr-int/lit8 v1, v11, 0x9

    .line 565
    .line 566
    and-int/lit8 v1, v1, 0x70

    .line 567
    .line 568
    or-int/lit16 v1, v1, 0xd80

    .line 569
    .line 570
    const v2, 0xe000

    .line 571
    .line 572
    .line 573
    shl-int/lit8 v3, v11, 0x9

    .line 574
    .line 575
    and-int/2addr v2, v3

    .line 576
    or-int v23, v1, v2

    .line 577
    .line 578
    const/16 v24, 0x100

    .line 579
    .line 580
    move v1, v13

    .line 581
    move-object/from16 v13, v16

    .line 582
    .line 583
    move-object/from16 v16, v19

    .line 584
    .line 585
    const-wide/16 v19, 0x0

    .line 586
    .line 587
    move-object/from16 v22, v9

    .line 588
    .line 589
    move-object v11, v14

    .line 590
    move-object v14, v0

    .line 591
    move v0, v1

    .line 592
    invoke-static/range {v11 .. v24}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->BasicDialog-FItCLgY(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V

    .line 593
    .line 594
    .line 595
    move-object/from16 v1, v22

    .line 596
    .line 597
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 598
    .line 599
    .line 600
    goto :goto_1c

    .line 601
    :cond_22
    move-object v1, v9

    .line 602
    const v2, 0x27b259b2

    .line 603
    .line 604
    .line 605
    invoke-static {v1, v2, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    throw v0

    .line 610
    :cond_23
    move-object v1, v9

    .line 611
    const/4 v0, 0x0

    .line 612
    const v2, -0x31499770

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 619
    .line 620
    .line 621
    goto :goto_1c

    .line 622
    :cond_24
    move-object v1, v9

    .line 623
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 624
    .line 625
    .line 626
    :goto_1c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 627
    .line 628
    .line 629
    move-result-object v11

    .line 630
    if-eqz v11, :cond_25

    .line 631
    .line 632
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda2;

    .line 633
    .line 634
    move-object/from16 v1, p0

    .line 635
    .line 636
    move-object/from16 v2, p1

    .line 637
    .line 638
    move-object/from16 v3, p2

    .line 639
    .line 640
    move-object/from16 v4, p3

    .line 641
    .line 642
    move-object/from16 v5, p4

    .line 643
    .line 644
    move-object/from16 v6, p5

    .line 645
    .line 646
    move-object/from16 v7, p6

    .line 647
    .line 648
    move-object/from16 v9, p8

    .line 649
    .line 650
    invoke-direct/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 651
    .line 652
    .line 653
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 654
    .line 655
    :cond_25
    return-void
.end method

.method public static final SetupArchiveFolderDialogButtons(Landroidx/compose/foundation/layout/RowScope;Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v7, p6

    .line 6
    .line 7
    move/from16 v9, p9

    .line 8
    .line 9
    move-object/from16 v14, p8

    .line 10
    .line 11
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x55b1c528

    .line 14
    .line 15
    .line 16
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v9, 0x6

    .line 20
    .line 21
    move-object/from16 v10, p0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int/2addr v0, v9

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v9

    .line 37
    :goto_1
    and-int/lit8 v1, v9, 0x30

    .line 38
    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    and-int/lit8 v1, v9, 0x40

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :goto_2
    if-eqz v1, :cond_3

    .line 55
    .line 56
    const/16 v1, 0x20

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/16 v1, 0x10

    .line 60
    .line 61
    :goto_3
    or-int/2addr v0, v1

    .line 62
    :cond_4
    and-int/lit16 v1, v9, 0x180

    .line 63
    .line 64
    if-nez v1, :cond_6

    .line 65
    .line 66
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    const/16 v1, 0x100

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    const/16 v1, 0x80

    .line 76
    .line 77
    :goto_4
    or-int/2addr v0, v1

    .line 78
    :cond_6
    and-int/lit16 v1, v9, 0xc00

    .line 79
    .line 80
    move-object/from16 v13, p3

    .line 81
    .line 82
    if-nez v1, :cond_8

    .line 83
    .line 84
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    const/16 v1, 0x800

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_7
    const/16 v1, 0x400

    .line 94
    .line 95
    :goto_5
    or-int/2addr v0, v1

    .line 96
    :cond_8
    and-int/lit16 v1, v9, 0x6000

    .line 97
    .line 98
    move-object/from16 v11, p4

    .line 99
    .line 100
    if-nez v1, :cond_a

    .line 101
    .line 102
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_9

    .line 107
    .line 108
    const/16 v1, 0x4000

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_9
    const/16 v1, 0x2000

    .line 112
    .line 113
    :goto_6
    or-int/2addr v0, v1

    .line 114
    :cond_a
    const/high16 v1, 0x30000

    .line 115
    .line 116
    and-int/2addr v1, v9

    .line 117
    move-object/from16 v6, p5

    .line 118
    .line 119
    if-nez v1, :cond_c

    .line 120
    .line 121
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_b

    .line 126
    .line 127
    const/high16 v1, 0x20000

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_b
    const/high16 v1, 0x10000

    .line 131
    .line 132
    :goto_7
    or-int/2addr v0, v1

    .line 133
    :cond_c
    const/high16 v1, 0x180000

    .line 134
    .line 135
    and-int/2addr v1, v9

    .line 136
    const/high16 v5, 0x100000

    .line 137
    .line 138
    if-nez v1, :cond_e

    .line 139
    .line 140
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_d

    .line 145
    .line 146
    move v1, v5

    .line 147
    goto :goto_8

    .line 148
    :cond_d
    const/high16 v1, 0x80000

    .line 149
    .line 150
    :goto_8
    or-int/2addr v0, v1

    .line 151
    :cond_e
    const/high16 v1, 0xc00000

    .line 152
    .line 153
    and-int/2addr v1, v9

    .line 154
    move-object/from16 v8, p7

    .line 155
    .line 156
    if-nez v1, :cond_10

    .line 157
    .line 158
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_f

    .line 163
    .line 164
    const/high16 v1, 0x800000

    .line 165
    .line 166
    goto :goto_9

    .line 167
    :cond_f
    const/high16 v1, 0x400000

    .line 168
    .line 169
    :goto_9
    or-int/2addr v0, v1

    .line 170
    :cond_10
    const v1, 0x492493

    .line 171
    .line 172
    .line 173
    and-int/2addr v1, v0

    .line 174
    const v12, 0x492492

    .line 175
    .line 176
    .line 177
    const/4 v15, 0x1

    .line 178
    const/4 v4, 0x0

    .line 179
    if-eq v1, v12, :cond_11

    .line 180
    .line 181
    move v1, v15

    .line 182
    goto :goto_a

    .line 183
    :cond_11
    move v1, v4

    .line 184
    :goto_a
    and-int/lit8 v12, v0, 0x1

    .line 185
    .line 186
    invoke-virtual {v14, v12, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_1b

    .line 191
    .line 192
    instance-of v1, v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 193
    .line 194
    if-eqz v1, :cond_12

    .line 195
    .line 196
    const v1, 0x5a535fbb

    .line 197
    .line 198
    .line 199
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 200
    .line 201
    .line 202
    move-object v11, v2

    .line 203
    check-cast v11, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 204
    .line 205
    and-int/lit8 v1, v0, 0x7e

    .line 206
    .line 207
    shr-int/lit8 v5, v0, 0x6

    .line 208
    .line 209
    and-int/lit16 v5, v5, 0x380

    .line 210
    .line 211
    or-int/2addr v1, v5

    .line 212
    and-int/lit16 v0, v0, 0x1c00

    .line 213
    .line 214
    or-int v15, v1, v0

    .line 215
    .line 216
    move-object/from16 v12, p4

    .line 217
    .line 218
    invoke-static/range {v10 .. v15}, Lkotlin/ranges/RangesKt;->ChooseArchiveFolderDialogButtons(Landroidx/compose/foundation/layout/RowScope;Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_e

    .line 225
    .line 226
    :cond_12
    instance-of v1, v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$Closed;

    .line 227
    .line 228
    if-eqz v1, :cond_13

    .line 229
    .line 230
    const v0, -0x4faaa3f4

    .line 231
    .line 232
    .line 233
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_e

    .line 240
    .line 241
    :cond_13
    instance-of v1, v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 242
    .line 243
    if-eqz v1, :cond_19

    .line 244
    .line 245
    const v1, -0x4faa9d4d

    .line 246
    .line 247
    .line 248
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 249
    .line 250
    .line 251
    move-object v1, v2

    .line 252
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;

    .line 253
    .line 254
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$CreateArchiveFolder;->syncingMessage:Ljava/lang/String;

    .line 255
    .line 256
    if-eqz v1, :cond_14

    .line 257
    .line 258
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    xor-int/2addr v1, v15

    .line 263
    if-ne v1, v15, :cond_14

    .line 264
    .line 265
    move v11, v15

    .line 266
    goto :goto_b

    .line 267
    :cond_14
    move v11, v4

    .line 268
    :goto_b
    const/high16 v1, 0x380000

    .line 269
    .line 270
    and-int/2addr v1, v0

    .line 271
    if-ne v1, v5, :cond_15

    .line 272
    .line 273
    move v1, v15

    .line 274
    goto :goto_c

    .line 275
    :cond_15
    move v1, v4

    .line 276
    :goto_c
    and-int/lit16 v5, v0, 0x380

    .line 277
    .line 278
    const/16 v10, 0x100

    .line 279
    .line 280
    if-ne v5, v10, :cond_16

    .line 281
    .line 282
    goto :goto_d

    .line 283
    :cond_16
    move v15, v4

    .line 284
    :goto_d
    or-int/2addr v1, v15

    .line 285
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    if-nez v1, :cond_17

    .line 290
    .line 291
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 292
    .line 293
    if-ne v5, v1, :cond_18

    .line 294
    .line 295
    :cond_17
    new-instance v5, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;

    .line 296
    .line 297
    const/16 v1, 0x8

    .line 298
    .line 299
    invoke-direct {v5, v1, v7, v3}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    :cond_18
    move-object v13, v5

    .line 306
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 307
    .line 308
    and-int/lit8 v1, v0, 0xe

    .line 309
    .line 310
    shr-int/lit8 v0, v0, 0x9

    .line 311
    .line 312
    and-int/lit16 v0, v0, 0x380

    .line 313
    .line 314
    or-int v15, v1, v0

    .line 315
    .line 316
    move-object/from16 v10, p0

    .line 317
    .line 318
    move-object v12, v6

    .line 319
    invoke-static/range {v10 .. v15}, Lkotlin/text/CharsKt__CharKt;->CreateNewArchiveFolderDialogButtons(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 323
    .line 324
    .line 325
    goto :goto_e

    .line 326
    :cond_19
    instance-of v1, v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;

    .line 327
    .line 328
    if-eqz v1, :cond_1a

    .line 329
    .line 330
    const v1, -0x4faa7ab8

    .line 331
    .line 332
    .line 333
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 334
    .line 335
    .line 336
    move-object v10, v2

    .line 337
    check-cast v10, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;

    .line 338
    .line 339
    shr-int/lit8 v1, v0, 0x3

    .line 340
    .line 341
    and-int/lit8 v1, v1, 0xe

    .line 342
    .line 343
    shr-int/lit8 v5, v0, 0x9

    .line 344
    .line 345
    and-int/lit8 v6, v5, 0x70

    .line 346
    .line 347
    or-int/2addr v1, v6

    .line 348
    and-int/lit16 v5, v5, 0x380

    .line 349
    .line 350
    or-int/2addr v1, v5

    .line 351
    shr-int/lit8 v0, v0, 0xc

    .line 352
    .line 353
    and-int/lit16 v0, v0, 0x1c00

    .line 354
    .line 355
    or-int v16, v1, v0

    .line 356
    .line 357
    move-object v15, v14

    .line 358
    const/4 v14, 0x0

    .line 359
    move-object/from16 v11, p4

    .line 360
    .line 361
    move-object/from16 v12, p5

    .line 362
    .line 363
    move-object v13, v8

    .line 364
    invoke-static/range {v10 .. v16}, Lkotlin/text/StringsKt__IndentKt;->EmailCantBeArchivedDialogButtons(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 365
    .line 366
    .line 367
    move-object v14, v15

    .line 368
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 369
    .line 370
    .line 371
    goto :goto_e

    .line 372
    :cond_1a
    const v0, -0x4faabf3c

    .line 373
    .line 374
    .line 375
    invoke-static {v14, v0, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    throw v0

    .line 380
    :cond_1b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 381
    .line 382
    .line 383
    :goto_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 384
    .line 385
    .line 386
    move-result-object v10

    .line 387
    if-eqz v10, :cond_1c

    .line 388
    .line 389
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;

    .line 390
    .line 391
    move-object/from16 v1, p0

    .line 392
    .line 393
    move-object/from16 v4, p3

    .line 394
    .line 395
    move-object/from16 v5, p4

    .line 396
    .line 397
    move-object/from16 v6, p5

    .line 398
    .line 399
    move-object/from16 v8, p7

    .line 400
    .line 401
    invoke-direct/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/layout/RowScope;Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 402
    .line 403
    .line 404
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 405
    .line 406
    :cond_1c
    return-void
.end method

.method public static final SetupArchiveFolderDialogContent(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v12, p5

    .line 8
    .line 9
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x63834555

    .line 12
    .line 13
    .line 14
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    or-int v0, p6, v0

    .line 28
    .line 29
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    const/16 v5, 0x20

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v5, 0x10

    .line 39
    .line 40
    :goto_1
    or-int/2addr v0, v5

    .line 41
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    const/16 v5, 0x100

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v5, 0x80

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v5

    .line 53
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    const/16 v5, 0x800

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/16 v5, 0x400

    .line 63
    .line 64
    :goto_3
    or-int/2addr v0, v5

    .line 65
    or-int/lit16 v0, v0, 0x6000

    .line 66
    .line 67
    and-int/lit16 v5, v0, 0x2493

    .line 68
    .line 69
    const/16 v6, 0x2492

    .line 70
    .line 71
    if-eq v5, v6, :cond_4

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const/4 v5, 0x0

    .line 76
    :goto_4
    and-int/lit8 v6, v0, 0x1

    .line 77
    .line 78
    invoke-virtual {v12, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_7

    .line 83
    .line 84
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 89
    .line 90
    if-ne v5, v6, :cond_5

    .line 91
    .line 92
    new-instance v5, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/4 v7, 0x6

    .line 95
    invoke-direct {v5, v7}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    move-object v7, v5

    .line 102
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-ne v5, v6, :cond_6

    .line 109
    .line 110
    new-instance v5, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/4 v6, 0x7

    .line 113
    invoke-direct {v5, v6}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    move-object v10, v5

    .line 120
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 121
    .line 122
    new-instance v5, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;

    .line 123
    .line 124
    invoke-direct {v5, v3, v2, v4, v1}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    const v1, -0x11c4f2d7

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v5, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    and-int/lit8 v0, v0, 0xe

    .line 135
    .line 136
    const v1, 0x1b01b0

    .line 137
    .line 138
    .line 139
    or-int v13, v0, v1

    .line 140
    .line 141
    const/16 v14, 0x18

    .line 142
    .line 143
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 144
    .line 145
    const/4 v8, 0x0

    .line 146
    const/4 v9, 0x0

    .line 147
    move-object v5, p0

    .line 148
    invoke-static/range {v5 .. v14}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 149
    .line 150
    .line 151
    move-object v5, v6

    .line 152
    goto :goto_5

    .line 153
    :cond_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 154
    .line 155
    .line 156
    move-object/from16 v5, p4

    .line 157
    .line 158
    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    if-eqz v8, :cond_8

    .line 163
    .line 164
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 165
    .line 166
    const/16 v7, 0x14

    .line 167
    .line 168
    move-object v1, p0

    .line 169
    move/from16 v6, p6

    .line 170
    .line 171
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 172
    .line 173
    .line 174
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 175
    .line 176
    :cond_8
    return-void
.end method

.method public static final TimelineDot-DxzAY5Q(FIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 10

    .line 1
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x4cc62797    # 1.03890104E8f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p4, p2, p3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p1

    .line 19
    or-int/lit8 v0, v0, 0x30

    .line 20
    .line 21
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/16 v1, 0x100

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/16 v1, 0x80

    .line 31
    .line 32
    :goto_1
    or-int/2addr v0, v1

    .line 33
    and-int/lit16 v1, v0, 0x93

    .line 34
    .line 35
    const/16 v2, 0x92

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    if-eq v1, v2, :cond_2

    .line 40
    .line 41
    move v1, v4

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v1, v3

    .line 44
    :goto_2
    and-int/2addr v0, v4

    .line 45
    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 52
    .line 53
    .line 54
    and-int/lit8 v0, p1, 0x1

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    :goto_3
    sget-object p5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 70
    .line 71
    :goto_4
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 72
    .line 73
    .line 74
    invoke-static {p5, p0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget-object v1, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 79
    .line 80
    invoke-static {v0, p2, p3, v1}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0, p4, v3}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 85
    .line 86
    .line 87
    :goto_5
    move-object v7, p5

    .line 88
    goto :goto_6

    .line 89
    :cond_5
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 90
    .line 91
    .line 92
    goto :goto_5

    .line 93
    :goto_6
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    if-eqz p4, :cond_6

    .line 98
    .line 99
    new-instance v4, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda15;

    .line 100
    .line 101
    move v8, p0

    .line 102
    move v9, p1

    .line 103
    move-wide v5, p2

    .line 104
    invoke-direct/range {v4 .. v9}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda15;-><init>(JLandroidx/compose/ui/Modifier;FI)V

    .line 105
    .line 106
    .line 107
    iput-object v4, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 108
    .line 109
    :cond_6
    return-void
.end method

.method public static final basicFormats$lambda$2$rec(Lkotlin/collections/builders/ListBuilder;Lkotlinx/datetime/internal/format/FormatStructure;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 6
    .line 7
    iget-object p1, p1, Lkotlinx/datetime/internal/format/BasicFormatStructure;->directive:Lkotlinx/datetime/internal/format/FieldFormatDirective;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    instance-of v0, p1, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p1, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    .line 18
    .line 19
    iget-object p1, p1, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;->formats:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;

    .line 36
    .line 37
    invoke-static {p0, v0}, Lorg/jsoup/Jsoup;->basicFormats$lambda$2$rec(Lkotlin/collections/builders/ListBuilder;Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of v0, p1, Lkotlinx/datetime/internal/format/ConstantFormatStructure;

    .line 42
    .line 43
    if-nez v0, :cond_6

    .line 44
    .line 45
    instance-of v0, p1, Lkotlinx/datetime/internal/format/SignedFormatStructure;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    check-cast p1, Lkotlinx/datetime/internal/format/SignedFormatStructure;

    .line 50
    .line 51
    iget-object p1, p1, Lkotlinx/datetime/internal/format/SignedFormatStructure;->format:Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 52
    .line 53
    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->basicFormats$lambda$2$rec(Lkotlin/collections/builders/ListBuilder;Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    instance-of v0, p1, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    check-cast p1, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;

    .line 62
    .line 63
    iget-object v0, p1, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->mainFormat:Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    .line 64
    .line 65
    invoke-static {p0, v0}, Lorg/jsoup/Jsoup;->basicFormats$lambda$2$rec(Lkotlin/collections/builders/ListBuilder;Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p1, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->formats:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lkotlinx/datetime/internal/format/FormatStructure;

    .line 85
    .line 86
    invoke-static {p0, v0}, Lorg/jsoup/Jsoup;->basicFormats$lambda$2$rec(Lkotlin/collections/builders/ListBuilder;Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    return-void

    .line 91
    :cond_4
    instance-of v0, p1, Lkotlinx/datetime/internal/format/OptionalFormatStructure;

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    check-cast p1, Lkotlinx/datetime/internal/format/OptionalFormatStructure;

    .line 96
    .line 97
    iget-object p1, p1, Lkotlinx/datetime/internal/format/OptionalFormatStructure;->format:Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    .line 98
    .line 99
    :try_start_0
    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->basicFormats$lambda$2$rec(Lkotlin/collections/builders/ListBuilder;Lkotlinx/datetime/internal/format/FormatStructure;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    throw p0

    .line 105
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 106
    .line 107
    .line 108
    :cond_6
    return-void
.end method

.method public static final calculateWindowSizeInfo(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;
    .locals 8

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/compose/ui/platform/WindowInfo;

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 20
    .line 21
    iget-object v2, v1, Landroidx/compose/ui/platform/LazyWindowInfo;->_containerSize:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    iget-object v2, v1, Landroidx/compose/ui/platform/LazyWindowInfo;->onInitializeContainerSize:Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroidx/compose/ui/platform/DerivedSize;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    :cond_0
    sget-object v2, Landroidx/compose/ui/platform/DerivedSize;->Zero:Landroidx/compose/ui/platform/DerivedSize;

    .line 39
    .line 40
    :cond_1
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, v1, Landroidx/compose/ui/platform/LazyWindowInfo;->_containerSize:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 45
    .line 46
    iput-object v3, v1, Landroidx/compose/ui/platform/LazyWindowInfo;->onInitializeContainerSize:Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    :cond_2
    iget-object v2, v1, Landroidx/compose/ui/platform/LazyWindowInfo;->_containerSize:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/compose/ui/platform/DerivedSize;

    .line 58
    .line 59
    iget-wide v4, v2, Landroidx/compose/ui/platform/DerivedSize;->pxSize:J

    .line 60
    .line 61
    invoke-static {v4, v5}, Lorg/jsoup/helper/Validate;->toSize-ozmzZPI(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    invoke-interface {v0, v4, v5}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    sget-object v2, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->Companion:Lcom/bumptech/glide/load/Option$1;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-ltz v6, :cond_c

    .line 84
    .line 85
    sget v6, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->BREAKPOINT_SMALL:F

    .line 86
    .line 87
    invoke-static {v0, v6}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-gez v6, :cond_3

    .line 92
    .line 93
    sget-object v0, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->Small:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    sget v6, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->BREAKPOINT_COMPACT:F

    .line 97
    .line 98
    invoke-static {v0, v6}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-gez v6, :cond_4

    .line 103
    .line 104
    sget-object v0, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->Compact:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    sget v6, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->BREAKPOINT_MEDIUM:F

    .line 108
    .line 109
    invoke-static {v0, v6}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-gez v0, :cond_5

    .line 114
    .line 115
    sget-object v0, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->Medium:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    sget-object v0, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->Expanded:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 119
    .line 120
    :goto_0
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    sget-object v7, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Companion:Landroidx/transition/Transition$1;

    .line 125
    .line 126
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v6, v2}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-ltz v2, :cond_b

    .line 134
    .line 135
    sget v2, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->BREAKPOINT_SMALL:F

    .line 136
    .line 137
    invoke-static {v6, v2}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-gez v2, :cond_6

    .line 142
    .line 143
    sget-object v2, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Small:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    sget v2, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->BREAKPOINT_COMPACT:F

    .line 147
    .line 148
    invoke-static {v6, v2}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-gez v2, :cond_7

    .line 153
    .line 154
    sget-object v2, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Compact:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    sget v2, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->BREAKPOINT_MEDIUM:F

    .line 158
    .line 159
    invoke-static {v6, v2}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-gez v2, :cond_8

    .line 164
    .line 165
    sget-object v2, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Medium:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_8
    sget-object v2, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Expanded:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 169
    .line 170
    :goto_1
    new-instance v3, Lnet/thunderbird/core/ui/common/window/WindowSizeClass;

    .line 171
    .line 172
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/core/ui/common/window/WindowSizeClass;-><init>(Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-nez v0, :cond_9

    .line 184
    .line 185
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 186
    .line 187
    if-ne v1, v0, :cond_a

    .line 188
    .line 189
    :cond_9
    new-instance v1, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;

    .line 190
    .line 191
    invoke-direct {v1, v3, v4, v5}, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;-><init>(Lnet/thunderbird/core/ui/common/window/WindowSizeClass;J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_a
    check-cast v1, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;

    .line 198
    .line 199
    return-object v1

    .line 200
    :cond_b
    const-string p0, "Width must be positive"

    .line 201
    .line 202
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-object v3

    .line 206
    :cond_c
    const-string p0, "Height must be positive"

    .line 207
    .line 208
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-object v3
.end method

.method public static iterableToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    xor-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    const-string v3, "individual scopes cannot be null or empty"

    .line 32
    .line 33
    invoke-static {v3, v2}, Lokio/Okio;->checkArgument(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    :goto_1
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_2
    const-string p0, " "

    .line 49
    .line 50
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/StringReader;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lorg/jsoup/parser/Parser;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 14
    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->initialiseParse(Ljava/io/StringReader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->runParser()V

    .line 22
    .line 23
    .line 24
    iget-object p0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final permitsRequestBody(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "GET"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "HEAD"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static final rememberInAppNotificationHostStateHolder(Lkotlinx/collections/immutable/ImmutableSet;Landroidx/compose/runtime/Composer;)Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;-><init>(Lkotlinx/collections/immutable/ImmutableSet;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;

    .line 20
    .line 21
    return-object v0
.end method

.method public static final toUInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/jsoup/Jsoup;->toUIntOrNull(Ljava/lang/String;I)Lkotlin/UInt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p0, v0, Lkotlin/UInt;->data:I

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->numberFormatError(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0
.end method

.method public static final toUIntOrNull(Ljava/lang/String;I)Lkotlin/UInt;
    .locals 12

    .line 1
    invoke-static {p1}, Lkotlin/text/CharsKt__CharKt;->checkRadix(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/16 v3, 0x30

    .line 17
    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v0, v3, :cond_5

    .line 22
    .line 23
    const/16 v4, 0x2b

    .line 24
    .line 25
    if-eq v2, v4, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v3, v1

    .line 29
    :cond_2
    const v2, 0x71c71c7

    .line 30
    .line 31
    .line 32
    move v4, v2

    .line 33
    :goto_0
    if-ge v3, v0, :cond_7

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {v5, p1}, Ljava/lang/Character;->digit(II)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-gez v5, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/high16 v6, -0x80000000

    .line 47
    .line 48
    xor-int v7, v1, v6

    .line 49
    .line 50
    xor-int v8, v4, v6

    .line 51
    .line 52
    invoke-static {v7, v8}, Ljava/lang/Integer;->compare(II)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-lez v8, :cond_4

    .line 57
    .line 58
    if-ne v4, v2, :cond_5

    .line 59
    .line 60
    int-to-long v8, p1

    .line 61
    const-wide v10, 0xffffffffL

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    and-long/2addr v8, v10

    .line 67
    div-long/2addr v10, v8

    .line 68
    long-to-int v4, v10

    .line 69
    xor-int v8, v4, v6

    .line 70
    .line 71
    invoke-static {v7, v8}, Ljava/lang/Integer;->compare(II)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-lez v7, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    mul-int/2addr v1, p1

    .line 79
    add-int/2addr v5, v1

    .line 80
    xor-int v7, v5, v6

    .line 81
    .line 82
    xor-int/2addr v1, v6

    .line 83
    invoke-static {v7, v1}, Ljava/lang/Integer;->compare(II)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-gez v1, :cond_6

    .line 88
    .line 89
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 90
    return-object p0

    .line 91
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    move v1, v5

    .line 94
    goto :goto_0

    .line 95
    :cond_7
    new-instance p0, Lkotlin/UInt;

    .line 96
    .line 97
    invoke-direct {p0, v1}, Lkotlin/UInt;-><init>(I)V

    .line 98
    .line 99
    .line 100
    return-object p0
.end method

.method public static final toULongOrNull(Ljava/lang/String;)Lkotlin/ULong;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/text/CharsKt__CharKt;->checkRadix(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v5, 0x30

    .line 24
    .line 25
    if-ge v4, v5, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-eq v2, v3, :cond_5

    .line 29
    .line 30
    const/16 v5, 0x2b

    .line 31
    .line 32
    if-eq v4, v5, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    const-wide v6, 0x71c71c71c71c71cL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    move-wide v8, v6

    .line 43
    :goto_0
    if-ge v3, v2, :cond_7

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    invoke-static {v10, v1}, Ljava/lang/Character;->digit(II)I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-gez v10, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-wide/high16 v11, -0x8000000000000000L

    .line 57
    .line 58
    xor-long v13, v4, v11

    .line 59
    .line 60
    move v15, v2

    .line 61
    xor-long v1, v8, v11

    .line 62
    .line 63
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Long;->compare(JJ)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lez v1, :cond_4

    .line 68
    .line 69
    cmp-long v1, v8, v6

    .line 70
    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    const-wide v1, -0x6666666666666667L    # -2.353437368264535E-185

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Long;->compare(JJ)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-lez v1, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const-wide v8, 0x1999999999999999L    # 2.353437368264535E-185

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    :cond_4
    const-wide/16 v1, 0xa

    .line 91
    .line 92
    mul-long/2addr v4, v1

    .line 93
    int-to-long v1, v10

    .line 94
    const-wide v13, 0xffffffffL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    and-long/2addr v1, v13

    .line 100
    add-long/2addr v1, v4

    .line 101
    xor-long v13, v1, v11

    .line 102
    .line 103
    xor-long/2addr v4, v11

    .line 104
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-gez v4, :cond_6

    .line 109
    .line 110
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 111
    return-object v0

    .line 112
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    move-wide v4, v1

    .line 115
    move v2, v15

    .line 116
    const/16 v1, 0xa

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_7
    new-instance v0, Lkotlin/ULong;

    .line 120
    .line 121
    invoke-direct {v0, v4, v5}, Lkotlin/ULong;-><init>(J)V

    .line 122
    .line 123
    .line 124
    return-object v0
.end method
