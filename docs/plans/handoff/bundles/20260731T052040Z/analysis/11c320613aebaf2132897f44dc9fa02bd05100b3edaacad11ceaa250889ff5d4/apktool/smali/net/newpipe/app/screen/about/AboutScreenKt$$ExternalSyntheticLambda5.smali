.class public final synthetic Lnet/newpipe/app/screen/about/AboutScreenKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/material3/ColorScheme;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/material3/ColorScheme;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/newpipe/app/screen/about/AboutScreenKt$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/newpipe/app/screen/about/AboutScreenKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/material3/ColorScheme;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/newpipe/app/screen/about/AboutScreenKt$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v4, v3, 0x6

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    move-object v4, v2

    .line 28
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v4, v5

    .line 39
    :goto_0
    or-int/2addr v3, v4

    .line 40
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 41
    .line 42
    const/16 v6, 0x12

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x1

    .line 46
    if-eq v4, v6, :cond_2

    .line 47
    .line 48
    move v4, v8

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v4, v7

    .line 51
    :goto_1
    and-int/2addr v3, v8

    .line 52
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_9

    .line 59
    .line 60
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 61
    .line 62
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/16 v4, 0xd

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-static {v3, v6, v1, v6, v4}, Landroidx/compose/foundation/layout/SpacerKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFI)Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sget-object v4, Landroidx/compose/foundation/layout/SpacerKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 74
    .line 75
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 76
    .line 77
    invoke-static {v4, v9, v2, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    iget-wide v9, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 82
    .line 83
    const/16 v11, 0x20

    .line 84
    .line 85
    ushr-long v11, v9, v11

    .line 86
    .line 87
    xor-long/2addr v9, v11

    .line 88
    long-to-int v9, v9

    .line 89
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 98
    .line 99
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 105
    .line 106
    .line 107
    iget-boolean v12, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 108
    .line 109
    if-eqz v12, :cond_3

    .line 110
    .line 111
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 116
    .line 117
    .line 118
    :goto_2
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 119
    .line 120
    invoke-static {v2, v4, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 121
    .line 122
    .line 123
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 124
    .line 125
    invoke-static {v2, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 133
    .line 134
    invoke-static {v2, v4, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 135
    .line 136
    .line 137
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 138
    .line 139
    invoke-static {v2, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 140
    .line 141
    .line 142
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 143
    .line 144
    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lnet/newpipe/app/screen/about/AboutScreenKt$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    .line 148
    .line 149
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 158
    .line 159
    if-nez v4, :cond_4

    .line 160
    .line 161
    if-ne v9, v10, :cond_5

    .line 162
    .line 163
    :cond_4
    new-instance v9, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    invoke-direct {v9, v5, v1}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_5
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 172
    .line 173
    sget-object v4, Landroidx/compose/foundation/pager/PagerStateKt;->UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 174
    .line 175
    new-array v4, v7, [Ljava/lang/Object;

    .line 176
    .line 177
    sget-object v5, Landroidx/compose/foundation/pager/DefaultPagerState;->Saver:Landroidx/cardview/widget/CardView$1;

    .line 178
    .line 179
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    or-int/2addr v6, v11

    .line 188
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    or-int/2addr v6, v11

    .line 193
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    if-nez v6, :cond_6

    .line 198
    .line 199
    if-ne v11, v10, :cond_7

    .line 200
    .line 201
    :cond_6
    new-instance v11, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 202
    .line 203
    invoke-direct {v11, v8, v9}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 210
    .line 211
    invoke-static {v4, v5, v11, v2, v7}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable$1([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    check-cast v4, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 216
    .line 217
    iget-object v5, v4, Landroidx/compose/foundation/pager/DefaultPagerState;->pageCountState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 218
    .line 219
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    if-ne v5, v10, :cond_8

    .line 227
    .line 228
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    :cond_8
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 236
    .line 237
    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 238
    .line 239
    iget-object v6, v0, Lnet/newpipe/app/screen/about/AboutScreenKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/material3/ColorScheme;

    .line 240
    .line 241
    iget-wide v11, v6, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    .line 242
    .line 243
    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    new-instance v7, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;

    .line 248
    .line 249
    const/4 v13, 0x5

    .line 250
    invoke-direct {v7, v4, v6, v13}, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 251
    .line 252
    .line 253
    const v13, -0x7dc95759

    .line 254
    .line 255
    .line 256
    invoke-static {v13, v7, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 257
    .line 258
    .line 259
    move-result-object v15

    .line 260
    new-instance v7, Lnet/newpipe/app/composable/PreferenceRowKt$$ExternalSyntheticLambda2;

    .line 261
    .line 262
    invoke-direct {v7, v1, v4, v5, v6}, Lnet/newpipe/app/composable/PreferenceRowKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/ColorScheme;)V

    .line 263
    .line 264
    .line 265
    const v5, -0x54a0f143

    .line 266
    .line 267
    .line 268
    invoke-static {v5, v7, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 269
    .line 270
    .line 271
    move-result-object v17

    .line 272
    const v19, 0x186030

    .line 273
    .line 274
    .line 275
    const-wide/16 v13, 0x0

    .line 276
    .line 277
    const/16 v16, 0x0

    .line 278
    .line 279
    move-object/from16 v18, v2

    .line 280
    .line 281
    invoke-static/range {v9 .. v19}, Landroidx/compose/material3/BadgeKt;->SecondaryTabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 282
    .line 283
    .line 284
    new-instance v5, Lnet/newpipe/app/screen/about/AboutScreenKt$$ExternalSyntheticLambda10;

    .line 285
    .line 286
    iget-object v0, v0, Lnet/newpipe/app/screen/about/AboutScreenKt$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function3;

    .line 287
    .line 288
    invoke-direct {v5, v0, v1}, Lnet/newpipe/app/screen/about/AboutScreenKt$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function3;Ljava/util/List;)V

    .line 289
    .line 290
    .line 291
    const v0, -0x6d21337c

    .line 292
    .line 293
    .line 294
    invoke-static {v0, v5, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 295
    .line 296
    .line 297
    move-result-object v19

    .line 298
    const/16 v21, 0x30

    .line 299
    .line 300
    const/4 v11, 0x0

    .line 301
    const/4 v12, 0x0

    .line 302
    const/4 v13, 0x0

    .line 303
    const/4 v14, 0x0

    .line 304
    const/4 v15, 0x0

    .line 305
    const/16 v17, 0x0

    .line 306
    .line 307
    const/16 v18, 0x0

    .line 308
    .line 309
    move-object/from16 v20, v2

    .line 310
    .line 311
    move-object v10, v3

    .line 312
    move-object v9, v4

    .line 313
    invoke-static/range {v9 .. v21}, Lnet/newpipe/app/AppKt;->HorizontalPager--8jOkeI(Landroidx/compose/foundation/pager/DefaultPagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 317
    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 321
    .line 322
    .line 323
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 324
    .line 325
    return-object v0
.end method
