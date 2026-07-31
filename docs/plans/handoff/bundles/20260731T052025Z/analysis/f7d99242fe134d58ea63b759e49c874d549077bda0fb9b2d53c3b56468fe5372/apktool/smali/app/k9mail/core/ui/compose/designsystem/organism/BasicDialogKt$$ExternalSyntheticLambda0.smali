.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    iput p2, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/high16 v5, 0x41400000    # 12.0f

    .line 10
    .line 11
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 12
    .line 13
    const/4 v7, 0x2

    .line 14
    const/16 v8, 0x10

    .line 15
    .line 16
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x1

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 26
    .line 27
    move-object/from16 v2, p2

    .line 28
    .line 29
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 30
    .line 31
    move-object/from16 v3, p3

    .line 32
    .line 33
    check-cast v3, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    and-int/lit8 v1, v3, 0x11

    .line 43
    .line 44
    if-eq v1, v8, :cond_0

    .line 45
    .line 46
    move v1, v11

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v1, v10

    .line 49
    :goto_0
    and-int/2addr v3, v11

    .line 50
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 51
    .line 52
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-object v11, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v11, :cond_1

    .line 61
    .line 62
    const v0, 0x715c7d0a

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const v0, 0x715c7d0b

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 85
    .line 86
    invoke-static {v0, v6, v5, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 96
    .line 97
    iget-wide v13, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 98
    .line 99
    const/16 v19, 0x0

    .line 100
    .line 101
    const/16 v20, 0x3a

    .line 102
    .line 103
    const/4 v12, 0x0

    .line 104
    const/4 v15, 0x0

    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    const/16 v17, 0x0

    .line 108
    .line 109
    move-object/from16 v18, v2

    .line 110
    .line 111
    invoke-static/range {v11 .. v20}, Lkotlin/math/MathKt;->TextBodySmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 119
    .line 120
    .line 121
    :goto_1
    return-object v9

    .line 122
    :pswitch_0
    move-object/from16 v1, p1

    .line 123
    .line 124
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 125
    .line 126
    move-object/from16 v2, p2

    .line 127
    .line 128
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 129
    .line 130
    move-object/from16 v3, p3

    .line 131
    .line 132
    check-cast v3, Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    and-int/lit8 v1, v3, 0x11

    .line 142
    .line 143
    if-eq v1, v8, :cond_3

    .line 144
    .line 145
    move v1, v11

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    move v1, v10

    .line 148
    :goto_2
    and-int/2addr v3, v11

    .line 149
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 150
    .line 151
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    sget-object v13, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 158
    .line 159
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 160
    .line 161
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    const/high16 v3, 0x41c00000    # 24.0f

    .line 180
    .line 181
    invoke-static {v13, v5, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    sget-object v7, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 186
    .line 187
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 188
    .line 189
    invoke-static {v7, v8, v2, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    iget-wide v14, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 194
    .line 195
    const/16 v8, 0x20

    .line 196
    .line 197
    ushr-long v16, v14, v8

    .line 198
    .line 199
    xor-long v14, v14, v16

    .line 200
    .line 201
    long-to-int v8, v14

    .line 202
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    invoke-static {v2, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 211
    .line 212
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 216
    .line 217
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 218
    .line 219
    .line 220
    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 221
    .line 222
    if-eqz v15, :cond_4

    .line 223
    .line 224
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 229
    .line 230
    .line 231
    :goto_3
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 232
    .line 233
    invoke-static {v2, v7, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 234
    .line 235
    .line 236
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 237
    .line 238
    invoke-static {v2, v12, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 246
    .line 247
    invoke-static {v2, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 248
    .line 249
    .line 250
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 251
    .line 252
    invoke-static {v2, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 253
    .line 254
    .line 255
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 256
    .line 257
    invoke-static {v2, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 265
    .line 266
    invoke-static {v1, v6, v3, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 267
    .line 268
    .line 269
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 270
    .line 271
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 276
    .line 277
    iget-wide v14, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 278
    .line 279
    new-instance v1, Landroidx/compose/ui/text/style/TextAlign;

    .line 280
    .line 281
    invoke-direct {v1, v4}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 282
    .line 283
    .line 284
    const v20, 0x36030

    .line 285
    .line 286
    .line 287
    const/16 v21, 0x0

    .line 288
    .line 289
    iget-object v12, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 290
    .line 291
    const/16 v17, 0x2

    .line 292
    .line 293
    const/16 v18, 0x1

    .line 294
    .line 295
    move-object/from16 v16, v1

    .line 296
    .line 297
    move-object/from16 v19, v2

    .line 298
    .line 299
    invoke-static/range {v12 .. v21}, Landroidx/compose/ui/unit/IntRectKt;->TextHeadlineSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 300
    .line 301
    .line 302
    const v0, 0x5813e92e

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 316
    .line 317
    .line 318
    :goto_4
    return-object v9

    .line 319
    :pswitch_1
    move-object/from16 v0, p1

    .line 320
    .line 321
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 322
    .line 323
    move-object/from16 v1, p2

    .line 324
    .line 325
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 326
    .line 327
    move-object/from16 v4, p3

    .line 328
    .line 329
    check-cast v4, Ljava/lang/Integer;

    .line 330
    .line 331
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    and-int/lit8 v0, v4, 0x11

    .line 339
    .line 340
    if-eq v0, v8, :cond_6

    .line 341
    .line 342
    move v0, v11

    .line 343
    goto :goto_5

    .line 344
    :cond_6
    move v0, v10

    .line 345
    :goto_5
    and-int/2addr v4, v11

    .line 346
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 347
    .line 348
    invoke-virtual {v1, v4, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_7

    .line 353
    .line 354
    invoke-static {v3, v2, v1, v10, v7}, Landroidx/room/util/DBUtil;->AppTitleTopHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 355
    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 359
    .line 360
    .line 361
    :goto_6
    return-object v9

    .line 362
    :pswitch_2
    move-object/from16 v0, p1

    .line 363
    .line 364
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 365
    .line 366
    move-object/from16 v1, p2

    .line 367
    .line 368
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 369
    .line 370
    move-object/from16 v4, p3

    .line 371
    .line 372
    check-cast v4, Ljava/lang/Integer;

    .line 373
    .line 374
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    and-int/lit8 v0, v4, 0x11

    .line 382
    .line 383
    if-eq v0, v8, :cond_8

    .line 384
    .line 385
    move v0, v11

    .line 386
    goto :goto_7

    .line 387
    :cond_8
    move v0, v10

    .line 388
    :goto_7
    and-int/2addr v4, v11

    .line 389
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 390
    .line 391
    invoke-virtual {v1, v4, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-eqz v0, :cond_9

    .line 396
    .line 397
    invoke-static {v3, v2, v1, v10, v7}, Landroidx/room/util/DBUtil;->AppTitleTopHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 398
    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 402
    .line 403
    .line 404
    :goto_8
    return-object v9

    .line 405
    :pswitch_3
    move-object/from16 v1, p1

    .line 406
    .line 407
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 408
    .line 409
    move-object/from16 v2, p2

    .line 410
    .line 411
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 412
    .line 413
    move-object/from16 v3, p3

    .line 414
    .line 415
    check-cast v3, Ljava/lang/Integer;

    .line 416
    .line 417
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    and-int/lit8 v1, v3, 0x11

    .line 425
    .line 426
    if-eq v1, v8, :cond_a

    .line 427
    .line 428
    move v10, v11

    .line 429
    :cond_a
    and-int/lit8 v1, v3, 0x1

    .line 430
    .line 431
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 432
    .line 433
    invoke-virtual {v2, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_b

    .line 438
    .line 439
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 440
    .line 441
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 446
    .line 447
    iget-wide v13, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 448
    .line 449
    const/16 v19, 0x0

    .line 450
    .line 451
    const/16 v20, 0x7a

    .line 452
    .line 453
    iget-object v11, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 454
    .line 455
    const/4 v12, 0x0

    .line 456
    const/4 v15, 0x0

    .line 457
    const/16 v16, 0x0

    .line 458
    .line 459
    const/16 v17, 0x0

    .line 460
    .line 461
    move-object/from16 v18, v2

    .line 462
    .line 463
    invoke-static/range {v11 .. v20}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 464
    .line 465
    .line 466
    goto :goto_9

    .line 467
    :cond_b
    move-object/from16 v18, v2

    .line 468
    .line 469
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 470
    .line 471
    .line 472
    :goto_9
    return-object v9

    .line 473
    :pswitch_4
    move-object/from16 v1, p1

    .line 474
    .line 475
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 476
    .line 477
    move-object/from16 v2, p2

    .line 478
    .line 479
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 480
    .line 481
    move-object/from16 v3, p3

    .line 482
    .line 483
    check-cast v3, Ljava/lang/Integer;

    .line 484
    .line 485
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    and-int/lit8 v5, v3, 0x6

    .line 493
    .line 494
    if-nez v5, :cond_d

    .line 495
    .line 496
    move-object v5, v2

    .line 497
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 498
    .line 499
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    if-eqz v1, :cond_c

    .line 504
    .line 505
    const/4 v7, 0x4

    .line 506
    :cond_c
    or-int/2addr v3, v7

    .line 507
    :cond_d
    and-int/lit8 v1, v3, 0x13

    .line 508
    .line 509
    const/16 v5, 0x12

    .line 510
    .line 511
    if-eq v1, v5, :cond_e

    .line 512
    .line 513
    move v1, v11

    .line 514
    goto :goto_a

    .line 515
    :cond_e
    move v1, v10

    .line 516
    :goto_a
    and-int/2addr v3, v11

    .line 517
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 518
    .line 519
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_f

    .line 524
    .line 525
    const v1, -0x1d8631bc

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 532
    .line 533
    .line 534
    new-instance v1, Landroidx/compose/ui/text/style/TextAlign;

    .line 535
    .line 536
    invoke-direct {v1, v4}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 537
    .line 538
    .line 539
    const/16 v30, 0x0

    .line 540
    .line 541
    const v31, 0x3fbfe

    .line 542
    .line 543
    .line 544
    iget-object v11, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 545
    .line 546
    const/4 v12, 0x0

    .line 547
    const-wide/16 v13, 0x0

    .line 548
    .line 549
    const-wide/16 v15, 0x0

    .line 550
    .line 551
    const-wide/16 v17, 0x0

    .line 552
    .line 553
    const-wide/16 v20, 0x0

    .line 554
    .line 555
    const/16 v22, 0x0

    .line 556
    .line 557
    const/16 v23, 0x0

    .line 558
    .line 559
    const/16 v24, 0x0

    .line 560
    .line 561
    const/16 v25, 0x0

    .line 562
    .line 563
    const/16 v26, 0x0

    .line 564
    .line 565
    const/16 v27, 0x0

    .line 566
    .line 567
    const/16 v29, 0x0

    .line 568
    .line 569
    move-object/from16 v19, v1

    .line 570
    .line 571
    move-object/from16 v28, v2

    .line 572
    .line 573
    invoke-static/range {v11 .. v31}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 574
    .line 575
    .line 576
    goto :goto_b

    .line 577
    :cond_f
    move-object/from16 v28, v2

    .line 578
    .line 579
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 580
    .line 581
    .line 582
    :goto_b
    return-object v9

    .line 583
    :pswitch_5
    move-object/from16 v1, p1

    .line 584
    .line 585
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 586
    .line 587
    move-object/from16 v2, p2

    .line 588
    .line 589
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 590
    .line 591
    move-object/from16 v3, p3

    .line 592
    .line 593
    check-cast v3, Ljava/lang/Integer;

    .line 594
    .line 595
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 596
    .line 597
    .line 598
    move-result v3

    .line 599
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    and-int/lit8 v1, v3, 0x11

    .line 603
    .line 604
    if-eq v1, v8, :cond_10

    .line 605
    .line 606
    move v10, v11

    .line 607
    :cond_10
    and-int/lit8 v1, v3, 0x1

    .line 608
    .line 609
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 610
    .line 611
    invoke-virtual {v2, v1, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    if-eqz v1, :cond_11

    .line 616
    .line 617
    const/16 v19, 0x0

    .line 618
    .line 619
    const/16 v20, 0x3e

    .line 620
    .line 621
    iget-object v11, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 622
    .line 623
    const/4 v12, 0x0

    .line 624
    const-wide/16 v13, 0x0

    .line 625
    .line 626
    const/4 v15, 0x0

    .line 627
    const/16 v16, 0x0

    .line 628
    .line 629
    const/16 v17, 0x0

    .line 630
    .line 631
    move-object/from16 v18, v2

    .line 632
    .line 633
    invoke-static/range {v11 .. v20}, Landroidx/compose/ui/unit/IntRectKt;->TextHeadlineSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 634
    .line 635
    .line 636
    goto :goto_c

    .line 637
    :cond_11
    move-object/from16 v18, v2

    .line 638
    .line 639
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 640
    .line 641
    .line 642
    :goto_c
    return-object v9

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
