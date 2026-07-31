.class public final synthetic Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/DefaultPagerState;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/pager/PagerState;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p2, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iget-object v6, v0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iget-object v7, v0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 23
    .line 24
    move-object/from16 v14, p2

    .line 25
    .line 26
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    move-object/from16 v9, p3

    .line 29
    .line 30
    check-cast v9, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    and-int/lit8 v1, v9, 0x11

    .line 40
    .line 41
    if-eq v1, v4, :cond_0

    .line 42
    .line 43
    move v1, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v1, v8

    .line 46
    :goto_0
    and-int/lit8 v4, v9, 0x1

    .line 47
    .line 48
    invoke-virtual {v14, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_6

    .line 53
    .line 54
    iget-object v0, v0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/pager/PagerState;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lorg/wikipedia/yearinreview/YearInReviewScreenData;

    .line 65
    .line 66
    iget-boolean v1, v1, Lorg/wikipedia/yearinreview/YearInReviewScreenData;->allowDonate:Z

    .line 67
    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lorg/wikipedia/yearinreview/YearInReviewScreenData;

    .line 79
    .line 80
    iget-boolean v1, v1, Lorg/wikipedia/yearinreview/YearInReviewScreenData;->showDonateInToolbar:Z

    .line 81
    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    const v1, -0x48fd3c66

    .line 85
    .line 86
    .line 87
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    or-int/2addr v1, v4

    .line 99
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    or-int/2addr v1, v4

    .line 104
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-nez v1, :cond_1

    .line 109
    .line 110
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 111
    .line 112
    if-ne v4, v1, :cond_2

    .line 113
    .line 114
    :cond_1
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 115
    .line 116
    const/16 v1, 0x17

    .line 117
    .line 118
    invoke-direct {v4, v6, v7, v0, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 125
    .line 126
    const/16 v0, 0xf

    .line 127
    .line 128
    const/4 v1, 0x0

    .line 129
    invoke-static {v0, v3, v1, v4, v8}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 134
    .line 135
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iget-wide v6, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 140
    .line 141
    const/16 v9, 0x20

    .line 142
    .line 143
    ushr-long v10, v6, v9

    .line 144
    .line 145
    xor-long/2addr v6, v10

    .line 146
    long-to-int v6, v6

    .line 147
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-static {v14, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 156
    .line 157
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 161
    .line 162
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 163
    .line 164
    .line 165
    iget-boolean v11, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 166
    .line 167
    if-eqz v11, :cond_3

    .line 168
    .line 169
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_3
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 174
    .line 175
    .line 176
    :goto_1
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 177
    .line 178
    invoke-static {v14, v4, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 179
    .line 180
    .line 181
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 182
    .line 183
    invoke-static {v14, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 191
    .line 192
    invoke-static {v14, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 193
    .line 194
    .line 195
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 196
    .line 197
    invoke-static {v14, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 198
    .line 199
    .line 200
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 201
    .line 202
    invoke-static {v14, v0, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 203
    .line 204
    .line 205
    const/high16 v0, 0x41800000    # 16.0f

    .line 206
    .line 207
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const/4 v3, 0x3

    .line 212
    invoke-static {v0, v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentWidth$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment$Horizontal;I)Landroidx/compose/ui/Modifier;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 217
    .line 218
    new-instance v3, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 219
    .line 220
    new-instance v13, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 221
    .line 222
    const/16 v15, 0xa

    .line 223
    .line 224
    invoke-direct {v13, v15}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 225
    .line 226
    .line 227
    const/high16 v15, 0x41200000    # 10.0f

    .line 228
    .line 229
    invoke-direct {v3, v15, v5, v13}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 230
    .line 231
    .line 232
    const/16 v13, 0x36

    .line 233
    .line 234
    invoke-static {v3, v1, v14, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    move/from16 p0, v9

    .line 239
    .line 240
    iget-wide v8, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 241
    .line 242
    ushr-long v15, v8, p0

    .line 243
    .line 244
    xor-long/2addr v8, v15

    .line 245
    long-to-int v3, v8

    .line 246
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    invoke-static {v14, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 255
    .line 256
    .line 257
    iget-boolean v9, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 258
    .line 259
    if-eqz v9, :cond_4

    .line 260
    .line 261
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_4
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 266
    .line 267
    .line 268
    :goto_2
    invoke-static {v14, v1, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v14, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v3, v14, v7, v14, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v14, v0, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 278
    .line 279
    .line 280
    const v0, 0x7f080175

    .line 281
    .line 282
    .line 283
    const/4 v1, 0x0

    .line 284
    invoke-static {v0, v1, v14}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 289
    .line 290
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 295
    .line 296
    iget-wide v12, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 297
    .line 298
    const v1, 0x7f120aa5

    .line 299
    .line 300
    .line 301
    invoke-static {v1, v14}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v10

    .line 305
    const/16 v15, 0x8

    .line 306
    .line 307
    const/16 v16, 0x4

    .line 308
    .line 309
    const/4 v11, 0x0

    .line 310
    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 311
    .line 312
    .line 313
    const v1, 0x7f120a9d

    .line 314
    .line 315
    .line 316
    invoke-static {v1, v14}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 321
    .line 322
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 327
    .line 328
    iget-object v1, v1, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 329
    .line 330
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 335
    .line 336
    iget-wide v11, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 337
    .line 338
    const/16 v31, 0x0

    .line 339
    .line 340
    const v32, 0x1fffa

    .line 341
    .line 342
    .line 343
    const/4 v10, 0x0

    .line 344
    const/4 v13, 0x0

    .line 345
    move-object/from16 v29, v14

    .line 346
    .line 347
    const-wide/16 v14, 0x0

    .line 348
    .line 349
    const/16 v16, 0x0

    .line 350
    .line 351
    const/16 v17, 0x0

    .line 352
    .line 353
    const-wide/16 v18, 0x0

    .line 354
    .line 355
    const/16 v20, 0x0

    .line 356
    .line 357
    const-wide/16 v21, 0x0

    .line 358
    .line 359
    const/16 v23, 0x0

    .line 360
    .line 361
    const/16 v24, 0x0

    .line 362
    .line 363
    const/16 v25, 0x0

    .line 364
    .line 365
    const/16 v26, 0x0

    .line 366
    .line 367
    const/16 v27, 0x0

    .line 368
    .line 369
    const/16 v30, 0x0

    .line 370
    .line 371
    move-object/from16 v28, v1

    .line 372
    .line 373
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 374
    .line 375
    .line 376
    move-object/from16 v14, v29

    .line 377
    .line 378
    const/4 v1, 0x0

    .line 379
    invoke-static {v14, v5, v5, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;ZZZ)V

    .line 380
    .line 381
    .line 382
    goto :goto_3

    .line 383
    :cond_5
    move v1, v8

    .line 384
    const v0, -0x48e5287c

    .line 385
    .line 386
    .line 387
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 391
    .line 392
    .line 393
    goto :goto_3

    .line 394
    :cond_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 395
    .line 396
    .line 397
    :goto_3
    return-object v2

    .line 398
    :pswitch_0
    move-object/from16 v1, p1

    .line 399
    .line 400
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 401
    .line 402
    move-object/from16 v8, p2

    .line 403
    .line 404
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 405
    .line 406
    move-object/from16 v9, p3

    .line 407
    .line 408
    check-cast v9, Ljava/lang/Integer;

    .line 409
    .line 410
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 411
    .line 412
    .line 413
    move-result v9

    .line 414
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    and-int/lit8 v1, v9, 0x11

    .line 418
    .line 419
    if-eq v1, v4, :cond_7

    .line 420
    .line 421
    move v1, v5

    .line 422
    goto :goto_4

    .line 423
    :cond_7
    const/4 v1, 0x0

    .line 424
    :goto_4
    and-int/lit8 v4, v9, 0x1

    .line 425
    .line 426
    invoke-virtual {v8, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-eqz v1, :cond_9

    .line 431
    .line 432
    const/high16 v1, 0x3f800000    # 1.0f

    .line 433
    .line 434
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    new-instance v4, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;

    .line 439
    .line 440
    const/4 v10, 0x0

    .line 441
    invoke-direct {v4, v7, v6, v10}, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;I)V

    .line 442
    .line 443
    .line 444
    const v6, -0x453ffcd3

    .line 445
    .line 446
    .line 447
    invoke-static {v6, v4, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 448
    .line 449
    .line 450
    move-result-object v19

    .line 451
    const/16 v21, 0x30

    .line 452
    .line 453
    const/16 v22, 0x3ffc

    .line 454
    .line 455
    iget-object v0, v0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/pager/PagerState;

    .line 456
    .line 457
    const/4 v10, 0x0

    .line 458
    const/4 v11, 0x0

    .line 459
    const/4 v12, 0x0

    .line 460
    const/4 v13, 0x0

    .line 461
    const/4 v14, 0x0

    .line 462
    const/4 v15, 0x0

    .line 463
    const/16 v16, 0x0

    .line 464
    .line 465
    const/16 v17, 0x0

    .line 466
    .line 467
    const/16 v18, 0x0

    .line 468
    .line 469
    move-object/from16 v20, v8

    .line 470
    .line 471
    move-object v8, v0

    .line 472
    invoke-static/range {v8 .. v22}, Landroidx/compose/ui/unit/DpKt;->HorizontalPager--8jOkeI(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;ILandroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 473
    .line 474
    .line 475
    move-object/from16 v0, v20

    .line 476
    .line 477
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    if-le v4, v5, :cond_8

    .line 482
    .line 483
    const v4, -0x6ddf54b4

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 487
    .line 488
    .line 489
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 490
    .line 491
    .line 492
    move-result-object v9

    .line 493
    const/high16 v13, 0x41800000    # 16.0f

    .line 494
    .line 495
    const/4 v14, 0x7

    .line 496
    const/4 v10, 0x0

    .line 497
    const/4 v11, 0x0

    .line 498
    const/4 v12, 0x0

    .line 499
    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    const/16 v18, 0x6

    .line 504
    .line 505
    const/16 v19, 0x7c

    .line 506
    .line 507
    const/4 v10, 0x0

    .line 508
    const-wide/16 v13, 0x0

    .line 509
    .line 510
    const-wide/16 v15, 0x0

    .line 511
    .line 512
    move-object/from16 v17, v0

    .line 513
    .line 514
    move-object v9, v8

    .line 515
    move-object v8, v1

    .line 516
    invoke-static/range {v8 .. v19}, Lorg/wikipedia/compose/components/TabsBoxKt;->PageIndicator-X-DZ_kE(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;IFFJJLandroidx/compose/runtime/GapComposer;II)V

    .line 517
    .line 518
    .line 519
    const/4 v1, 0x0

    .line 520
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 521
    .line 522
    .line 523
    goto :goto_5

    .line 524
    :cond_8
    const/4 v1, 0x0

    .line 525
    const v4, -0x6ddcde0c

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 532
    .line 533
    .line 534
    :goto_5
    const/high16 v1, 0x41c00000    # 24.0f

    .line 535
    .line 536
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 541
    .line 542
    .line 543
    goto :goto_6

    .line 544
    :cond_9
    move-object v0, v8

    .line 545
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 546
    .line 547
    .line 548
    :goto_6
    return-object v2

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
