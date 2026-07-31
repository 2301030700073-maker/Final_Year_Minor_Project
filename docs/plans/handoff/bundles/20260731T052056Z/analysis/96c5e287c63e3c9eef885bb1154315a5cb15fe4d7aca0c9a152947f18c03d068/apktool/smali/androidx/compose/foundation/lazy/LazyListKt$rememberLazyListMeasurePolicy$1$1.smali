.class public final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# instance fields
.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic $isVertical:Z

.field public final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field public final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic $stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

.field public final synthetic $verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 21
    .line 22
    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 59

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-wide/from16 v1, p2

    .line 6
    .line 7
    iget-object v3, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 10
    .line 11
    iget-object v5, v4, Landroidx/compose/foundation/lazy/LazyListState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-boolean v5, v4, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    .line 17
    .line 18
    const/16 v16, 0x1

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v27, 0x0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move/from16 v27, v16

    .line 33
    .line 34
    :goto_1
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 35
    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 42
    .line 43
    :goto_2
    invoke-static {v1, v2, v7}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 44
    .line 45
    .line 46
    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 47
    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-interface {v7, v8}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    invoke-interface {v3, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/OffsetKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-interface {v3, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    :goto_3
    if-eqz v5, :cond_4

    .line 76
    .line 77
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    invoke-interface {v7, v10}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    invoke-interface {v3, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    invoke-static {v7, v10}, Landroidx/compose/foundation/layout/OffsetKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    invoke-interface {v3, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    :goto_4
    invoke-interface {v7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    invoke-interface {v3, v11}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    invoke-interface {v7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-interface {v3, v7}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    add-int/2addr v7, v11

    .line 119
    add-int v12, v8, v10

    .line 120
    .line 121
    if-eqz v5, :cond_5

    .line 122
    .line 123
    move v13, v7

    .line 124
    goto :goto_5

    .line 125
    :cond_5
    move v13, v12

    .line 126
    :goto_5
    if-eqz v5, :cond_6

    .line 127
    .line 128
    move/from16 v22, v11

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_6
    if-nez v5, :cond_7

    .line 132
    .line 133
    move/from16 v22, v8

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_7
    move/from16 v22, v10

    .line 137
    .line 138
    :goto_6
    sub-int v17, v13, v22

    .line 139
    .line 140
    neg-int v10, v12

    .line 141
    neg-int v13, v7

    .line 142
    invoke-static {v10, v13, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    .line 143
    .line 144
    .line 145
    move-result-wide v13

    .line 146
    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 147
    .line 148
    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 153
    .line 154
    iget-object v15, v10, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 155
    .line 156
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    iget-object v2, v15, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidthState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 165
    .line 166
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 167
    .line 168
    .line 169
    iget-object v2, v15, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeightState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 170
    .line 171
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 175
    .line 176
    const-string v19, "null verticalArrangement when isVertical == true"

    .line 177
    .line 178
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 179
    .line 180
    if-eqz v5, :cond_9

    .line 181
    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    goto :goto_7

    .line 189
    :cond_8
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    throw v0

    .line 194
    :cond_9
    if-eqz v1, :cond_5f

    .line 195
    .line 196
    invoke-interface {v1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    :goto_7
    invoke-interface {v3, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getItemCount()I

    .line 205
    .line 206
    .line 207
    move-result v15

    .line 208
    if-eqz v5, :cond_a

    .line 209
    .line 210
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    sub-int/2addr v5, v7

    .line 215
    :goto_8
    move-object/from16 v20, v1

    .line 216
    .line 217
    move-object/from16 v21, v2

    .line 218
    .line 219
    goto :goto_9

    .line 220
    :cond_a
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    sub-int/2addr v5, v12

    .line 225
    goto :goto_8

    .line 226
    :goto_9
    int-to-long v1, v8

    .line 227
    const/16 v32, 0x20

    .line 228
    .line 229
    shl-long v1, v1, v32

    .line 230
    .line 231
    move-wide/from16 v23, v1

    .line 232
    .line 233
    int-to-long v1, v11

    .line 234
    const-wide v33, 0xffffffffL

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    and-long v1, v1, v33

    .line 240
    .line 241
    or-long v1, v23, v1

    .line 242
    .line 243
    new-instance v23, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    .line 244
    .line 245
    move v8, v5

    .line 246
    move-object v5, v10

    .line 247
    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 248
    .line 249
    move v11, v7

    .line 250
    move v7, v15

    .line 251
    iget-object v15, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 252
    .line 253
    move-object/from16 v24, v4

    .line 254
    .line 255
    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 256
    .line 257
    iget-object v9, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 258
    .line 259
    move-object/from16 v36, v3

    .line 260
    .line 261
    move/from16 v39, v8

    .line 262
    .line 263
    move/from16 v37, v11

    .line 264
    .line 265
    move/from16 v38, v12

    .line 266
    .line 267
    move/from16 v12, v17

    .line 268
    .line 269
    move-object/from16 v40, v21

    .line 270
    .line 271
    move/from16 v11, v22

    .line 272
    .line 273
    move-object/from16 v41, v24

    .line 274
    .line 275
    move v8, v6

    .line 276
    move-object/from16 v6, p1

    .line 277
    .line 278
    move-wide/from16 v57, v1

    .line 279
    .line 280
    move-object/from16 v1, v23

    .line 281
    .line 282
    move-wide v2, v13

    .line 283
    move-wide/from16 v13, v57

    .line 284
    .line 285
    invoke-direct/range {v1 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProviderImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;IIJLandroidx/compose/foundation/lazy/LazyListState;)V

    .line 286
    .line 287
    .line 288
    move v15, v7

    .line 289
    move-wide/from16 v57, v2

    .line 290
    .line 291
    move-object v2, v1

    .line 292
    move v1, v8

    .line 293
    move-wide/from16 v7, v57

    .line 294
    .line 295
    iget-object v9, v2, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 296
    .line 297
    iget-object v3, v9, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Lokhttp3/internal/http/StatusLine;

    .line 298
    .line 299
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    if-eqz v4, :cond_b

    .line 304
    .line 305
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    goto :goto_a

    .line 310
    :cond_b
    const/4 v6, 0x0

    .line 311
    :goto_a
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 312
    .line 313
    .line 314
    move-result-object v13

    .line 315
    :try_start_0
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    .line 316
    .line 317
    .line 318
    move-result v14

    .line 319
    move/from16 v42, v1

    .line 320
    .line 321
    move-object/from16 v1, v41

    .line 322
    .line 323
    iget-object v10, v1, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 324
    .line 325
    move-object/from16 v23, v2

    .line 326
    .line 327
    iget-object v2, v10, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    .line 328
    .line 329
    invoke-static {v14, v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eq v14, v2, :cond_c

    .line 334
    .line 335
    move-object/from16 v22, v3

    .line 336
    .line 337
    iget-object v3, v10, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 338
    .line 339
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 340
    .line 341
    .line 342
    iget-object v3, v10, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 343
    .line 344
    invoke-virtual {v3, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 345
    .line 346
    .line 347
    goto :goto_b

    .line 348
    :cond_c
    move-object/from16 v22, v3

    .line 349
    .line 350
    :goto_b
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

    .line 351
    .line 352
    .line 353
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-static {v4, v13, v6}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 355
    .line 356
    .line 357
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 358
    .line 359
    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 360
    .line 361
    invoke-static {v5, v4, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    if-nez v5, :cond_e

    .line 370
    .line 371
    if-nez v27, :cond_d

    .line 372
    .line 373
    goto :goto_c

    .line 374
    :cond_d
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListState;->_lazyLayoutScrollDeltaBetweenPasses:Landroidx/cardview/widget/CardView$1;

    .line 375
    .line 376
    iget-object v5, v5, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v5, Landroidx/compose/animation/core/AnimationState;

    .line 379
    .line 380
    iget-object v5, v5, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 381
    .line 382
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    check-cast v5, Ljava/lang/Number;

    .line 387
    .line 388
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    goto :goto_d

    .line 393
    :cond_e
    :goto_c
    iget v5, v1, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 394
    .line 395
    :goto_d
    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 396
    .line 397
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 398
    .line 399
    .line 400
    move-result v25

    .line 401
    iget-object v10, v1, Landroidx/compose/foundation/lazy/LazyListState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 402
    .line 403
    iget-boolean v13, v1, Landroidx/compose/foundation/lazy/LazyListState;->skipItemPlacementAnimation:Z

    .line 404
    .line 405
    if-ltz v11, :cond_f

    .line 406
    .line 407
    goto :goto_e

    .line 408
    :cond_f
    const-string v14, "invalid beforeContentPadding"

    .line 409
    .line 410
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :goto_e
    if-ltz v12, :cond_10

    .line 414
    .line 415
    goto :goto_f

    .line 416
    :cond_10
    const-string v14, "invalid afterContentPadding"

    .line 417
    .line 418
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    :goto_f
    sget-object v14, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 422
    .line 423
    move-object/from16 v43, v1

    .line 424
    .line 425
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 426
    .line 427
    move/from16 v24, v1

    .line 428
    .line 429
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 430
    .line 431
    move-object/from16 v30, v1

    .line 432
    .line 433
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 434
    .line 435
    move/from16 v44, v12

    .line 436
    .line 437
    move/from16 v17, v13

    .line 438
    .line 439
    const-wide/16 v12, 0x0

    .line 440
    .line 441
    sget-object v45, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 442
    .line 443
    if-gtz v15, :cond_13

    .line 444
    .line 445
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 446
    .line 447
    .line 448
    move-result v19

    .line 449
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 450
    .line 451
    .line 452
    move-result v20

    .line 453
    new-instance v21, Ljava/util/ArrayList;

    .line 454
    .line 455
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .line 457
    .line 458
    const/16 v28, 0x0

    .line 459
    .line 460
    const/16 v29, 0x0

    .line 461
    .line 462
    const/16 v18, 0x0

    .line 463
    .line 464
    const/16 v26, 0x1

    .line 465
    .line 466
    move-object/from16 v31, v1

    .line 467
    .line 468
    move-object/from16 v17, v6

    .line 469
    .line 470
    invoke-virtual/range {v17 .. v31}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lokhttp3/internal/http/StatusLine;Lorg/wikipedia/settings/BasePreferenceLoader;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 471
    .line 472
    .line 473
    move-object/from16 v18, v17

    .line 474
    .line 475
    move-object/from16 v1, v23

    .line 476
    .line 477
    if-nez v25, :cond_11

    .line 478
    .line 479
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 480
    .line 481
    .line 482
    move-result-wide v2

    .line 483
    invoke-static {v2, v3, v12, v13}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-nez v0, :cond_11

    .line 488
    .line 489
    shr-long v4, v2, v32

    .line 490
    .line 491
    long-to-int v0, v4

    .line 492
    invoke-static {v7, v8, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 493
    .line 494
    .line 495
    move-result v19

    .line 496
    and-long v2, v2, v33

    .line 497
    .line 498
    long-to-int v0, v2

    .line 499
    invoke-static {v7, v8, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 500
    .line 501
    .line 502
    move-result v20

    .line 503
    :cond_11
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 504
    .line 505
    const/16 v2, 0xd

    .line 506
    .line 507
    invoke-direct {v0, v2}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 508
    .line 509
    .line 510
    add-int v2, v19, v38

    .line 511
    .line 512
    move-wide/from16 v3, p2

    .line 513
    .line 514
    invoke-static {v3, v4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    add-int v5, v20, v37

    .line 519
    .line 520
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    move-object/from16 v4, v36

    .line 525
    .line 526
    invoke-interface {v4, v2, v3, v14, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    neg-int v13, v11

    .line 531
    move/from16 v6, v39

    .line 532
    .line 533
    add-int v14, v6, v44

    .line 534
    .line 535
    if-eqz v24, :cond_12

    .line 536
    .line 537
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 538
    .line 539
    :goto_10
    move-object/from16 v16, v0

    .line 540
    .line 541
    goto :goto_11

    .line 542
    :cond_12
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 543
    .line 544
    goto :goto_10

    .line 545
    :goto_11
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 546
    .line 547
    const/4 v7, 0x0

    .line 548
    const/4 v15, 0x0

    .line 549
    const/4 v2, 0x0

    .line 550
    move-object v3, v2

    .line 551
    const/4 v2, 0x0

    .line 552
    move-object v6, v3

    .line 553
    const/4 v3, 0x0

    .line 554
    move-object/from16 v36, v4

    .line 555
    .line 556
    const/4 v4, 0x0

    .line 557
    move-object v8, v6

    .line 558
    const/4 v6, 0x0

    .line 559
    iget-wide v10, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 560
    .line 561
    move-object/from16 v9, p1

    .line 562
    .line 563
    move-object v1, v8

    .line 564
    move-object/from16 v8, v30

    .line 565
    .line 566
    move-object/from16 v49, v36

    .line 567
    .line 568
    move/from16 v18, v42

    .line 569
    .line 570
    move-object/from16 v50, v43

    .line 571
    .line 572
    move/from16 v17, v44

    .line 573
    .line 574
    move-object/from16 v12, v45

    .line 575
    .line 576
    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_4b

    .line 580
    .line 581
    :cond_13
    move-object/from16 v31, v1

    .line 582
    .line 583
    move-object/from16 v18, v6

    .line 584
    .line 585
    move-object/from16 v1, v23

    .line 586
    .line 587
    move-object/from16 v49, v36

    .line 588
    .line 589
    move/from16 v6, v39

    .line 590
    .line 591
    move-object/from16 v50, v43

    .line 592
    .line 593
    move/from16 v39, v44

    .line 594
    .line 595
    move-object/from16 v36, v14

    .line 596
    .line 597
    if-lt v2, v15, :cond_14

    .line 598
    .line 599
    add-int/lit8 v2, v15, -0x1

    .line 600
    .line 601
    const/4 v3, 0x0

    .line 602
    :cond_14
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 603
    .line 604
    .line 605
    move-result v21

    .line 606
    sub-int v3, v3, v21

    .line 607
    .line 608
    if-nez v2, :cond_15

    .line 609
    .line 610
    if-gez v3, :cond_15

    .line 611
    .line 612
    add-int v21, v21, v3

    .line 613
    .line 614
    const/4 v3, 0x0

    .line 615
    :cond_15
    move-object/from16 v46, v10

    .line 616
    .line 617
    new-instance v10, Lkotlin/collections/ArrayDeque;

    .line 618
    .line 619
    invoke-direct {v10}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 620
    .line 621
    .line 622
    neg-int v13, v11

    .line 623
    if-gez v42, :cond_16

    .line 624
    .line 625
    move/from16 v14, v42

    .line 626
    .line 627
    goto :goto_12

    .line 628
    :cond_16
    const/4 v14, 0x0

    .line 629
    :goto_12
    add-int/2addr v14, v13

    .line 630
    add-int/2addr v3, v14

    .line 631
    move/from16 v23, v2

    .line 632
    .line 633
    move/from16 v51, v13

    .line 634
    .line 635
    const/4 v2, 0x0

    .line 636
    :goto_13
    iget-wide v12, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 637
    .line 638
    if-gez v3, :cond_17

    .line 639
    .line 640
    if-lez v23, :cond_17

    .line 641
    .line 642
    move/from16 v26, v5

    .line 643
    .line 644
    add-int/lit8 v5, v23, -0x1

    .line 645
    .line 646
    invoke-virtual {v1, v12, v13, v5}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(JI)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 647
    .line 648
    .line 649
    move-result-object v12

    .line 650
    const/4 v13, 0x0

    .line 651
    invoke-virtual {v10, v13, v12}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    iget v13, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 655
    .line 656
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    iget v12, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 661
    .line 662
    add-int/2addr v3, v12

    .line 663
    move/from16 v23, v5

    .line 664
    .line 665
    move/from16 v5, v26

    .line 666
    .line 667
    goto :goto_13

    .line 668
    :cond_17
    move/from16 v26, v5

    .line 669
    .line 670
    const/4 v5, 0x0

    .line 671
    if-ge v3, v14, :cond_18

    .line 672
    .line 673
    sub-int v3, v14, v3

    .line 674
    .line 675
    sub-int v21, v21, v3

    .line 676
    .line 677
    move v3, v14

    .line 678
    :cond_18
    move/from16 v52, v21

    .line 679
    .line 680
    sub-int/2addr v3, v14

    .line 681
    add-int v35, v6, v39

    .line 682
    .line 683
    if-gez v35, :cond_19

    .line 684
    .line 685
    :goto_14
    move/from16 v28, v2

    .line 686
    .line 687
    goto :goto_15

    .line 688
    :cond_19
    move/from16 v5, v35

    .line 689
    .line 690
    goto :goto_14

    .line 691
    :goto_15
    neg-int v2, v3

    .line 692
    move/from16 v29, v3

    .line 693
    .line 694
    move/from16 v48, v23

    .line 695
    .line 696
    const/4 v3, 0x0

    .line 697
    const/16 v47, 0x0

    .line 698
    .line 699
    :goto_16
    iget v0, v10, Lkotlin/collections/ArrayDeque;->size:I

    .line 700
    .line 701
    if-ge v3, v0, :cond_1b

    .line 702
    .line 703
    if-lt v2, v5, :cond_1a

    .line 704
    .line 705
    invoke-virtual {v10, v3}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move/from16 v47, v16

    .line 709
    .line 710
    goto :goto_16

    .line 711
    :cond_1a
    add-int/lit8 v48, v48, 0x1

    .line 712
    .line 713
    invoke-virtual {v10, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 718
    .line 719
    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 720
    .line 721
    add-int/2addr v2, v0

    .line 722
    add-int/lit8 v3, v3, 0x1

    .line 723
    .line 724
    goto :goto_16

    .line 725
    :cond_1b
    move/from16 v0, v28

    .line 726
    .line 727
    move/from16 v53, v47

    .line 728
    .line 729
    move/from16 v3, v48

    .line 730
    .line 731
    :goto_17
    if-ge v3, v15, :cond_1d

    .line 732
    .line 733
    if-lt v2, v5, :cond_1c

    .line 734
    .line 735
    if-lez v2, :cond_1c

    .line 736
    .line 737
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 738
    .line 739
    .line 740
    move-result v28

    .line 741
    if-eqz v28, :cond_1d

    .line 742
    .line 743
    :cond_1c
    move/from16 v28, v5

    .line 744
    .line 745
    goto :goto_18

    .line 746
    :cond_1d
    move/from16 v54, v15

    .line 747
    .line 748
    goto :goto_1a

    .line 749
    :goto_18
    invoke-virtual {v1, v12, v13, v3}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(JI)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 750
    .line 751
    .line 752
    move-result-object v5

    .line 753
    move/from16 v54, v15

    .line 754
    .line 755
    iget v15, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 756
    .line 757
    add-int/2addr v2, v15

    .line 758
    if-gt v2, v14, :cond_1e

    .line 759
    .line 760
    move/from16 v47, v2

    .line 761
    .line 762
    add-int/lit8 v2, v54, -0x1

    .line 763
    .line 764
    if-eq v3, v2, :cond_1f

    .line 765
    .line 766
    add-int/lit8 v2, v3, 0x1

    .line 767
    .line 768
    sub-int v29, v29, v15

    .line 769
    .line 770
    move/from16 v23, v2

    .line 771
    .line 772
    move/from16 v53, v16

    .line 773
    .line 774
    goto :goto_19

    .line 775
    :cond_1e
    move/from16 v47, v2

    .line 776
    .line 777
    :cond_1f
    iget v2, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 778
    .line 779
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    invoke-virtual {v10, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 784
    .line 785
    .line 786
    :goto_19
    add-int/lit8 v3, v3, 0x1

    .line 787
    .line 788
    move/from16 v5, v28

    .line 789
    .line 790
    move/from16 v2, v47

    .line 791
    .line 792
    move/from16 v15, v54

    .line 793
    .line 794
    goto :goto_17

    .line 795
    :goto_1a
    if-ge v2, v6, :cond_22

    .line 796
    .line 797
    sub-int v5, v6, v2

    .line 798
    .line 799
    sub-int v29, v29, v5

    .line 800
    .line 801
    add-int/2addr v2, v5

    .line 802
    move/from16 v14, v29

    .line 803
    .line 804
    :goto_1b
    if-ge v14, v11, :cond_20

    .line 805
    .line 806
    if-lez v23, :cond_20

    .line 807
    .line 808
    add-int/lit8 v15, v23, -0x1

    .line 809
    .line 810
    move/from16 v28, v2

    .line 811
    .line 812
    invoke-virtual {v1, v12, v13, v15}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(JI)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    move/from16 v47, v3

    .line 817
    .line 818
    const/4 v3, 0x0

    .line 819
    invoke-virtual {v10, v3, v2}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 820
    .line 821
    .line 822
    iget v3, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 823
    .line 824
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 825
    .line 826
    .line 827
    move-result v0

    .line 828
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 829
    .line 830
    add-int/2addr v14, v2

    .line 831
    move/from16 v23, v15

    .line 832
    .line 833
    move/from16 v2, v28

    .line 834
    .line 835
    move/from16 v3, v47

    .line 836
    .line 837
    goto :goto_1b

    .line 838
    :cond_20
    move/from16 v28, v2

    .line 839
    .line 840
    move/from16 v47, v3

    .line 841
    .line 842
    move/from16 v3, v52

    .line 843
    .line 844
    add-int v52, v3, v5

    .line 845
    .line 846
    if-gez v14, :cond_21

    .line 847
    .line 848
    add-int v52, v52, v14

    .line 849
    .line 850
    add-int v2, v28, v14

    .line 851
    .line 852
    move v14, v2

    .line 853
    move/from16 v5, v23

    .line 854
    .line 855
    move/from16 v15, v52

    .line 856
    .line 857
    const/4 v2, 0x0

    .line 858
    goto :goto_1c

    .line 859
    :cond_21
    move v2, v14

    .line 860
    move/from16 v5, v23

    .line 861
    .line 862
    move/from16 v14, v28

    .line 863
    .line 864
    move/from16 v15, v52

    .line 865
    .line 866
    goto :goto_1c

    .line 867
    :cond_22
    move/from16 v47, v3

    .line 868
    .line 869
    move/from16 v3, v52

    .line 870
    .line 871
    move v14, v2

    .line 872
    move v15, v3

    .line 873
    move/from16 v5, v23

    .line 874
    .line 875
    move/from16 v2, v29

    .line 876
    .line 877
    :goto_1c
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    .line 878
    .line 879
    .line 880
    move-result v23

    .line 881
    move/from16 v28, v0

    .line 882
    .line 883
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->signum(I)I

    .line 884
    .line 885
    .line 886
    move-result v0

    .line 887
    move/from16 v48, v11

    .line 888
    .line 889
    invoke-static {v15}, Ljava/lang/Integer;->signum(I)I

    .line 890
    .line 891
    .line 892
    move-result v11

    .line 893
    if-ne v0, v11, :cond_23

    .line 894
    .line 895
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    .line 896
    .line 897
    .line 898
    move-result v0

    .line 899
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 900
    .line 901
    .line 902
    move-result v0

    .line 903
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 904
    .line 905
    .line 906
    move-result v11

    .line 907
    if-lt v0, v11, :cond_23

    .line 908
    .line 909
    int-to-float v0, v15

    .line 910
    goto :goto_1d

    .line 911
    :cond_23
    move/from16 v0, v26

    .line 912
    .line 913
    :goto_1d
    sub-float v11, v26, v0

    .line 914
    .line 915
    const/16 v23, 0x0

    .line 916
    .line 917
    if-eqz v25, :cond_24

    .line 918
    .line 919
    if-le v15, v3, :cond_24

    .line 920
    .line 921
    cmpg-float v26, v11, v23

    .line 922
    .line 923
    if-gtz v26, :cond_24

    .line 924
    .line 925
    sub-int/2addr v15, v3

    .line 926
    int-to-float v3, v15

    .line 927
    add-float v23, v3, v11

    .line 928
    .line 929
    :cond_24
    move/from16 v11, v23

    .line 930
    .line 931
    if-ltz v2, :cond_25

    .line 932
    .line 933
    goto :goto_1e

    .line 934
    :cond_25
    const-string v3, "negative currentFirstItemScrollOffset"

    .line 935
    .line 936
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    :goto_1e
    neg-int v3, v2

    .line 940
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v15

    .line 944
    check-cast v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 945
    .line 946
    if-gtz v48, :cond_26

    .line 947
    .line 948
    if-gez v42, :cond_27

    .line 949
    .line 950
    :cond_26
    move/from16 v23, v2

    .line 951
    .line 952
    goto :goto_20

    .line 953
    :cond_27
    move-object/from16 v23, v15

    .line 954
    .line 955
    move v15, v2

    .line 956
    move-object/from16 v2, v23

    .line 957
    .line 958
    move/from16 v23, v3

    .line 959
    .line 960
    :goto_1f
    move/from16 v52, v11

    .line 961
    .line 962
    const/4 v3, 0x0

    .line 963
    goto :goto_22

    .line 964
    :goto_20
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 965
    .line 966
    .line 967
    move-result v2

    .line 968
    move-object/from16 v26, v15

    .line 969
    .line 970
    move/from16 v15, v23

    .line 971
    .line 972
    move/from16 v23, v3

    .line 973
    .line 974
    const/4 v3, 0x0

    .line 975
    :goto_21
    if-ge v3, v2, :cond_28

    .line 976
    .line 977
    invoke-virtual {v10, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v29

    .line 981
    move/from16 v52, v2

    .line 982
    .line 983
    move-object/from16 v2, v29

    .line 984
    .line 985
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 986
    .line 987
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 988
    .line 989
    if-eqz v15, :cond_28

    .line 990
    .line 991
    if-gt v2, v15, :cond_28

    .line 992
    .line 993
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 994
    .line 995
    .line 996
    move-result v29

    .line 997
    move/from16 v55, v2

    .line 998
    .line 999
    add-int/lit8 v2, v29, -0x1

    .line 1000
    .line 1001
    if-eq v3, v2, :cond_28

    .line 1002
    .line 1003
    sub-int v15, v15, v55

    .line 1004
    .line 1005
    add-int/lit8 v3, v3, 0x1

    .line 1006
    .line 1007
    invoke-virtual {v10, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v2

    .line 1011
    move-object/from16 v26, v2

    .line 1012
    .line 1013
    check-cast v26, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1014
    .line 1015
    move/from16 v2, v52

    .line 1016
    .line 1017
    goto :goto_21

    .line 1018
    :cond_28
    move-object/from16 v2, v26

    .line 1019
    .line 1020
    goto :goto_1f

    .line 1021
    :goto_22
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 1022
    .line 1023
    .line 1024
    move-result v11

    .line 1025
    add-int/lit8 v5, v5, -0x1

    .line 1026
    .line 1027
    if-gt v11, v5, :cond_2a

    .line 1028
    .line 1029
    const/16 v21, 0x0

    .line 1030
    .line 1031
    :goto_23
    if-nez v21, :cond_29

    .line 1032
    .line 1033
    new-instance v21, Ljava/util/ArrayList;

    .line 1034
    .line 1035
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    .line 1037
    .line 1038
    :cond_29
    move-object/from16 v3, v21

    .line 1039
    .line 1040
    move/from16 v21, v15

    .line 1041
    .line 1042
    invoke-virtual {v1, v12, v13, v5}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(JI)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v15

    .line 1046
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    if-eq v5, v11, :cond_2b

    .line 1050
    .line 1051
    add-int/lit8 v5, v5, -0x1

    .line 1052
    .line 1053
    move/from16 v15, v21

    .line 1054
    .line 1055
    move-object/from16 v21, v3

    .line 1056
    .line 1057
    const/4 v3, 0x0

    .line 1058
    goto :goto_23

    .line 1059
    :cond_2a
    move/from16 v21, v15

    .line 1060
    .line 1061
    const/4 v3, 0x0

    .line 1062
    :cond_2b
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1063
    .line 1064
    .line 1065
    move-result v5

    .line 1066
    add-int/lit8 v5, v5, -0x1

    .line 1067
    .line 1068
    if-ltz v5, :cond_2f

    .line 1069
    .line 1070
    :goto_24
    add-int/lit8 v15, v5, -0x1

    .line 1071
    .line 1072
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v5

    .line 1076
    check-cast v5, Ljava/lang/Number;

    .line 1077
    .line 1078
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 1079
    .line 1080
    .line 1081
    move-result v5

    .line 1082
    if-ge v5, v11, :cond_2d

    .line 1083
    .line 1084
    if-nez v3, :cond_2c

    .line 1085
    .line 1086
    new-instance v3, Ljava/util/ArrayList;

    .line 1087
    .line 1088
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .line 1090
    .line 1091
    :cond_2c
    invoke-virtual {v1, v12, v13, v5}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(JI)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v5

    .line 1095
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    :cond_2d
    if-gez v15, :cond_2e

    .line 1099
    .line 1100
    goto :goto_25

    .line 1101
    :cond_2e
    move v5, v15

    .line 1102
    goto :goto_24

    .line 1103
    :cond_2f
    :goto_25
    if-nez v3, :cond_30

    .line 1104
    .line 1105
    move-object/from16 v3, v45

    .line 1106
    .line 1107
    :cond_30
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1108
    .line 1109
    .line 1110
    move-result v5

    .line 1111
    move/from16 v11, v28

    .line 1112
    .line 1113
    const/4 v15, 0x0

    .line 1114
    :goto_26
    if-ge v15, v5, :cond_31

    .line 1115
    .line 1116
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v28

    .line 1120
    move/from16 v29, v5

    .line 1121
    .line 1122
    move-object/from16 v5, v28

    .line 1123
    .line 1124
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1125
    .line 1126
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 1127
    .line 1128
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    .line 1129
    .line 1130
    .line 1131
    move-result v11

    .line 1132
    add-int/lit8 v15, v15, 0x1

    .line 1133
    .line 1134
    move/from16 v5, v29

    .line 1135
    .line 1136
    goto :goto_26

    .line 1137
    :cond_31
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v5

    .line 1141
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1142
    .line 1143
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1144
    .line 1145
    add-int/lit8 v15, v54, -0x1

    .line 1146
    .line 1147
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    .line 1148
    .line 1149
    .line 1150
    move-result v5

    .line 1151
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v15

    .line 1155
    check-cast v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1156
    .line 1157
    iget v15, v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1158
    .line 1159
    add-int/lit8 v15, v15, 0x1

    .line 1160
    .line 1161
    if-gt v15, v5, :cond_33

    .line 1162
    .line 1163
    const/16 v28, 0x0

    .line 1164
    .line 1165
    :goto_27
    if-nez v28, :cond_32

    .line 1166
    .line 1167
    new-instance v28, Ljava/util/ArrayList;

    .line 1168
    .line 1169
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    .line 1171
    .line 1172
    :cond_32
    move-object/from16 v55, v9

    .line 1173
    .line 1174
    move/from16 v29, v11

    .line 1175
    .line 1176
    move-object/from16 v11, v28

    .line 1177
    .line 1178
    invoke-virtual {v1, v12, v13, v15}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(JI)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v9

    .line 1182
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    .line 1184
    .line 1185
    if-eq v15, v5, :cond_34

    .line 1186
    .line 1187
    add-int/lit8 v15, v15, 0x1

    .line 1188
    .line 1189
    move-object/from16 v28, v11

    .line 1190
    .line 1191
    move/from16 v11, v29

    .line 1192
    .line 1193
    move-object/from16 v9, v55

    .line 1194
    .line 1195
    goto :goto_27

    .line 1196
    :cond_33
    move-object/from16 v55, v9

    .line 1197
    .line 1198
    move/from16 v29, v11

    .line 1199
    .line 1200
    const/4 v11, 0x0

    .line 1201
    :cond_34
    if-eqz v11, :cond_35

    .line 1202
    .line 1203
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v9

    .line 1207
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1208
    .line 1209
    iget v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1210
    .line 1211
    if-le v9, v5, :cond_35

    .line 1212
    .line 1213
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v5

    .line 1217
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1218
    .line 1219
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1220
    .line 1221
    :cond_35
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1222
    .line 1223
    .line 1224
    move-result v9

    .line 1225
    move-object v15, v11

    .line 1226
    const/4 v11, 0x0

    .line 1227
    :goto_28
    if-ge v11, v9, :cond_38

    .line 1228
    .line 1229
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v28

    .line 1233
    check-cast v28, Ljava/lang/Number;

    .line 1234
    .line 1235
    move-object/from16 v56, v4

    .line 1236
    .line 1237
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->intValue()I

    .line 1238
    .line 1239
    .line 1240
    move-result v4

    .line 1241
    if-le v4, v5, :cond_37

    .line 1242
    .line 1243
    if-nez v15, :cond_36

    .line 1244
    .line 1245
    new-instance v15, Ljava/util/ArrayList;

    .line 1246
    .line 1247
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    .line 1249
    .line 1250
    :cond_36
    invoke-virtual {v1, v12, v13, v4}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(JI)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v4

    .line 1254
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    .line 1256
    .line 1257
    :cond_37
    add-int/lit8 v11, v11, 0x1

    .line 1258
    .line 1259
    move-object/from16 v4, v56

    .line 1260
    .line 1261
    goto :goto_28

    .line 1262
    :cond_38
    if-nez v15, :cond_39

    .line 1263
    .line 1264
    move-object/from16 v15, v45

    .line 1265
    .line 1266
    :cond_39
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 1267
    .line 1268
    .line 1269
    move-result v4

    .line 1270
    move/from16 v11, v29

    .line 1271
    .line 1272
    const/4 v5, 0x0

    .line 1273
    :goto_29
    if-ge v5, v4, :cond_3a

    .line 1274
    .line 1275
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v9

    .line 1279
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1280
    .line 1281
    iget v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 1282
    .line 1283
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    .line 1284
    .line 1285
    .line 1286
    move-result v11

    .line 1287
    add-int/lit8 v5, v5, 0x1

    .line 1288
    .line 1289
    goto :goto_29

    .line 1290
    :cond_3a
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v4

    .line 1294
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1295
    .line 1296
    .line 1297
    move-result v4

    .line 1298
    if-eqz v4, :cond_3b

    .line 1299
    .line 1300
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1301
    .line 1302
    .line 1303
    move-result v4

    .line 1304
    if-eqz v4, :cond_3b

    .line 1305
    .line 1306
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 1307
    .line 1308
    .line 1309
    move-result v4

    .line 1310
    if-eqz v4, :cond_3b

    .line 1311
    .line 1312
    move/from16 v9, v16

    .line 1313
    .line 1314
    goto :goto_2a

    .line 1315
    :cond_3b
    const/4 v9, 0x0

    .line 1316
    :goto_2a
    if-eqz v24, :cond_3c

    .line 1317
    .line 1318
    move v4, v11

    .line 1319
    goto :goto_2b

    .line 1320
    :cond_3c
    move v4, v14

    .line 1321
    :goto_2b
    invoke-static {v7, v8, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 1322
    .line 1323
    .line 1324
    move-result v12

    .line 1325
    if-eqz v24, :cond_3d

    .line 1326
    .line 1327
    move v11, v14

    .line 1328
    :cond_3d
    invoke-static {v7, v8, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 1329
    .line 1330
    .line 1331
    move-result v11

    .line 1332
    move-object v4, v3

    .line 1333
    if-eqz v24, :cond_3e

    .line 1334
    .line 1335
    move v3, v11

    .line 1336
    goto :goto_2c

    .line 1337
    :cond_3e
    move v3, v12

    .line 1338
    :goto_2c
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 1339
    .line 1340
    .line 1341
    move-result v5

    .line 1342
    if-ge v14, v5, :cond_3f

    .line 1343
    .line 1344
    move/from16 v5, v16

    .line 1345
    .line 1346
    goto :goto_2d

    .line 1347
    :cond_3f
    const/4 v5, 0x0

    .line 1348
    :goto_2d
    if-eqz v5, :cond_41

    .line 1349
    .line 1350
    if-nez v23, :cond_40

    .line 1351
    .line 1352
    goto :goto_2e

    .line 1353
    :cond_40
    const-string v13, "non-zero itemsScrollOffset"

    .line 1354
    .line 1355
    invoke-static {v13}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    :cond_41
    :goto_2e
    new-instance v13, Ljava/util/ArrayList;

    .line 1359
    .line 1360
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1361
    .line 1362
    .line 1363
    move-result v28

    .line 1364
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1365
    .line 1366
    .line 1367
    move-result v29

    .line 1368
    add-int v29, v29, v28

    .line 1369
    .line 1370
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1371
    .line 1372
    .line 1373
    move-result v28

    .line 1374
    move-object/from16 v45, v1

    .line 1375
    .line 1376
    add-int v1, v28, v29

    .line 1377
    .line 1378
    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1379
    .line 1380
    .line 1381
    if-eqz v5, :cond_4a

    .line 1382
    .line 1383
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 1384
    .line 1385
    .line 1386
    move-result v1

    .line 1387
    if-eqz v1, :cond_42

    .line 1388
    .line 1389
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 1390
    .line 1391
    .line 1392
    move-result v1

    .line 1393
    if-eqz v1, :cond_42

    .line 1394
    .line 1395
    goto :goto_2f

    .line 1396
    :cond_42
    const-string v1, "no extra items"

    .line 1397
    .line 1398
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1399
    .line 1400
    .line 1401
    :goto_2f
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1402
    .line 1403
    .line 1404
    move-result v1

    .line 1405
    new-array v4, v1, [I

    .line 1406
    .line 1407
    const/4 v5, 0x0

    .line 1408
    :goto_30
    if-ge v5, v1, :cond_43

    .line 1409
    .line 1410
    invoke-virtual {v10, v5}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v15

    .line 1414
    check-cast v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1415
    .line 1416
    iget v15, v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 1417
    .line 1418
    aput v15, v4, v5

    .line 1419
    .line 1420
    add-int/lit8 v5, v5, 0x1

    .line 1421
    .line 1422
    goto :goto_30

    .line 1423
    :cond_43
    new-array v1, v1, [I

    .line 1424
    .line 1425
    if-eqz v24, :cond_45

    .line 1426
    .line 1427
    move-object/from16 v5, v40

    .line 1428
    .line 1429
    if-eqz v5, :cond_44

    .line 1430
    .line 1431
    move-object/from16 v15, p1

    .line 1432
    .line 1433
    invoke-interface {v5, v15, v3, v4, v1}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 1434
    .line 1435
    .line 1436
    move-object/from16 v56, v2

    .line 1437
    .line 1438
    move v15, v6

    .line 1439
    move/from16 v40, v9

    .line 1440
    .line 1441
    move/from16 v9, v47

    .line 1442
    .line 1443
    move-object v6, v1

    .line 1444
    goto :goto_31

    .line 1445
    :cond_44
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v0

    .line 1449
    throw v0

    .line 1450
    :cond_45
    move-object/from16 v15, p1

    .line 1451
    .line 1452
    if-eqz v20, :cond_49

    .line 1453
    .line 1454
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1455
    .line 1456
    move-object/from16 v56, v2

    .line 1457
    .line 1458
    move/from16 v40, v9

    .line 1459
    .line 1460
    move-object v2, v15

    .line 1461
    move/from16 v9, v47

    .line 1462
    .line 1463
    move v15, v6

    .line 1464
    move-object v6, v1

    .line 1465
    move-object/from16 v1, v20

    .line 1466
    .line 1467
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 1468
    .line 1469
    .line 1470
    :goto_31
    invoke-static {v6}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v1

    .line 1474
    iget v2, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 1475
    .line 1476
    iget v1, v1, Lkotlin/ranges/IntProgression;->step:I

    .line 1477
    .line 1478
    if-lez v1, :cond_46

    .line 1479
    .line 1480
    if-gez v2, :cond_47

    .line 1481
    .line 1482
    :cond_46
    if-gez v1, :cond_48

    .line 1483
    .line 1484
    if-gtz v2, :cond_48

    .line 1485
    .line 1486
    :cond_47
    const/4 v3, 0x0

    .line 1487
    :goto_32
    aget v4, v6, v3

    .line 1488
    .line 1489
    invoke-virtual {v10, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v5

    .line 1493
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1494
    .line 1495
    invoke-virtual {v5, v4, v12, v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    .line 1500
    .line 1501
    if-eq v3, v2, :cond_48

    .line 1502
    .line 1503
    add-int/2addr v3, v1

    .line 1504
    goto :goto_32

    .line 1505
    :cond_48
    move v6, v15

    .line 1506
    goto :goto_36

    .line 1507
    :cond_49
    const-string v0, "null horizontalArrangement when isVertical == false"

    .line 1508
    .line 1509
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v0

    .line 1513
    throw v0

    .line 1514
    :cond_4a
    move-object/from16 v56, v2

    .line 1515
    .line 1516
    move/from16 v40, v9

    .line 1517
    .line 1518
    move/from16 v9, v47

    .line 1519
    .line 1520
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1521
    .line 1522
    .line 1523
    move-result v1

    .line 1524
    move/from16 v3, v23

    .line 1525
    .line 1526
    const/4 v2, 0x0

    .line 1527
    :goto_33
    if-ge v2, v1, :cond_4b

    .line 1528
    .line 1529
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v5

    .line 1533
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1534
    .line 1535
    move/from16 v19, v1

    .line 1536
    .line 1537
    iget v1, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1538
    .line 1539
    sub-int/2addr v3, v1

    .line 1540
    invoke-virtual {v5, v3, v12, v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    .line 1545
    .line 1546
    add-int/lit8 v2, v2, 0x1

    .line 1547
    .line 1548
    move/from16 v1, v19

    .line 1549
    .line 1550
    goto :goto_33

    .line 1551
    :cond_4b
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1552
    .line 1553
    .line 1554
    move-result v1

    .line 1555
    move/from16 v3, v23

    .line 1556
    .line 1557
    const/4 v2, 0x0

    .line 1558
    :goto_34
    if-ge v2, v1, :cond_4c

    .line 1559
    .line 1560
    invoke-virtual {v10, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v4

    .line 1564
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1565
    .line 1566
    invoke-virtual {v4, v3, v12, v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    .line 1571
    .line 1572
    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1573
    .line 1574
    add-int/2addr v3, v4

    .line 1575
    add-int/lit8 v2, v2, 0x1

    .line 1576
    .line 1577
    goto :goto_34

    .line 1578
    :cond_4c
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 1579
    .line 1580
    .line 1581
    move-result v1

    .line 1582
    const/4 v2, 0x0

    .line 1583
    :goto_35
    if-ge v2, v1, :cond_4d

    .line 1584
    .line 1585
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v4

    .line 1589
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1590
    .line 1591
    invoke-virtual {v4, v3, v12, v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    .line 1596
    .line 1597
    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1598
    .line 1599
    add-int/2addr v3, v4

    .line 1600
    add-int/lit8 v2, v2, 0x1

    .line 1601
    .line 1602
    goto :goto_35

    .line 1603
    :cond_4d
    :goto_36
    if-nez v17, :cond_4e

    .line 1604
    .line 1605
    float-to-int v1, v0

    .line 1606
    const/16 v26, 0x1

    .line 1607
    .line 1608
    move/from16 v20, v11

    .line 1609
    .line 1610
    move/from16 v19, v12

    .line 1611
    .line 1612
    move/from16 v29, v14

    .line 1613
    .line 1614
    move-object/from16 v17, v18

    .line 1615
    .line 1616
    move/from16 v28, v21

    .line 1617
    .line 1618
    move-object/from16 v23, v45

    .line 1619
    .line 1620
    move/from16 v18, v1

    .line 1621
    .line 1622
    move-object/from16 v21, v13

    .line 1623
    .line 1624
    invoke-virtual/range {v17 .. v31}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lokhttp3/internal/http/StatusLine;Lorg/wikipedia/settings/BasePreferenceLoader;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 1625
    .line 1626
    .line 1627
    move/from16 v1, v20

    .line 1628
    .line 1629
    move-object/from16 v4, v21

    .line 1630
    .line 1631
    move-object/from16 v2, v23

    .line 1632
    .line 1633
    move/from16 v3, v29

    .line 1634
    .line 1635
    :goto_37
    move/from16 v5, v24

    .line 1636
    .line 1637
    move/from16 v47, v25

    .line 1638
    .line 1639
    goto :goto_38

    .line 1640
    :cond_4e
    move v1, v11

    .line 1641
    move-object v4, v13

    .line 1642
    move v3, v14

    .line 1643
    move-object/from16 v17, v18

    .line 1644
    .line 1645
    move/from16 v28, v21

    .line 1646
    .line 1647
    move-object/from16 v2, v45

    .line 1648
    .line 1649
    goto :goto_37

    .line 1650
    :goto_38
    if-nez v47, :cond_52

    .line 1651
    .line 1652
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 1653
    .line 1654
    .line 1655
    move-result-wide v13

    .line 1656
    move-object v15, v10

    .line 1657
    const-wide/16 v10, 0x0

    .line 1658
    .line 1659
    invoke-static {v13, v14, v10, v11}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 1660
    .line 1661
    .line 1662
    move-result v10

    .line 1663
    if-nez v10, :cond_53

    .line 1664
    .line 1665
    if-eqz v5, :cond_4f

    .line 1666
    .line 1667
    move v10, v1

    .line 1668
    :goto_39
    move-wide/from16 v17, v13

    .line 1669
    .line 1670
    goto :goto_3a

    .line 1671
    :cond_4f
    move v10, v12

    .line 1672
    goto :goto_39

    .line 1673
    :goto_3a
    shr-long v13, v17, v32

    .line 1674
    .line 1675
    long-to-int v11, v13

    .line 1676
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    .line 1677
    .line 1678
    .line 1679
    move-result v11

    .line 1680
    invoke-static {v7, v8, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 1681
    .line 1682
    .line 1683
    move-result v12

    .line 1684
    and-long v13, v17, v33

    .line 1685
    .line 1686
    long-to-int v11, v13

    .line 1687
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 1688
    .line 1689
    .line 1690
    move-result v1

    .line 1691
    invoke-static {v7, v8, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 1692
    .line 1693
    .line 1694
    move-result v11

    .line 1695
    if-eqz v5, :cond_50

    .line 1696
    .line 1697
    move v1, v11

    .line 1698
    goto :goto_3b

    .line 1699
    :cond_50
    move v1, v12

    .line 1700
    :goto_3b
    if-eq v1, v10, :cond_51

    .line 1701
    .line 1702
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1703
    .line 1704
    .line 1705
    move-result v7

    .line 1706
    const/4 v8, 0x0

    .line 1707
    :goto_3c
    if-ge v8, v7, :cond_51

    .line 1708
    .line 1709
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v10

    .line 1713
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1714
    .line 1715
    iput v1, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    .line 1716
    .line 1717
    iget v13, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->afterContentPadding:I

    .line 1718
    .line 1719
    add-int/2addr v13, v1

    .line 1720
    iput v13, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->maxMainAxisOffset:I

    .line 1721
    .line 1722
    add-int/lit8 v8, v8, 0x1

    .line 1723
    .line 1724
    goto :goto_3c

    .line 1725
    :cond_51
    move/from16 v24, v11

    .line 1726
    .line 1727
    :goto_3d
    move/from16 v23, v12

    .line 1728
    .line 1729
    goto :goto_3e

    .line 1730
    :cond_52
    move-object v15, v10

    .line 1731
    :cond_53
    move/from16 v24, v1

    .line 1732
    .line 1733
    goto :goto_3d

    .line 1734
    :goto_3e
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v1

    .line 1738
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1739
    .line 1740
    if-eqz v1, :cond_54

    .line 1741
    .line 1742
    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1743
    .line 1744
    move/from16 v18, v1

    .line 1745
    .line 1746
    goto :goto_3f

    .line 1747
    :cond_54
    const/16 v18, 0x0

    .line 1748
    .line 1749
    :goto_3f
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v1

    .line 1753
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1754
    .line 1755
    if-eqz v1, :cond_55

    .line 1756
    .line 1757
    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1758
    .line 1759
    move/from16 v19, v1

    .line 1760
    .line 1761
    :goto_40
    move-object/from16 v1, v55

    .line 1762
    .line 1763
    goto :goto_41

    .line 1764
    :cond_55
    const/16 v19, 0x0

    .line 1765
    .line 1766
    goto :goto_40

    .line 1767
    :goto_41
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 1768
    .line 1769
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1770
    .line 1771
    .line 1772
    sget-object v21, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    .line 1773
    .line 1774
    new-instance v1, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 1775
    .line 1776
    const/16 v7, 0x9

    .line 1777
    .line 1778
    invoke-direct {v1, v7, v2}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 1779
    .line 1780
    .line 1781
    move-object/from16 v7, p0

    .line 1782
    .line 1783
    iget-object v7, v7, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 1784
    .line 1785
    move-object/from16 v25, v1

    .line 1786
    .line 1787
    move-object/from16 v20, v4

    .line 1788
    .line 1789
    move-object/from16 v17, v7

    .line 1790
    .line 1791
    move/from16 v22, v48

    .line 1792
    .line 1793
    invoke-static/range {v17 .. v25}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;IILjava/util/ArrayList;Landroidx/collection/MutableIntList;IIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v1

    .line 1797
    move-object/from16 v45, v20

    .line 1798
    .line 1799
    if-eqz v40, :cond_57

    .line 1800
    .line 1801
    invoke-static/range {v45 .. v45}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v4

    .line 1805
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1806
    .line 1807
    if-eqz v4, :cond_56

    .line 1808
    .line 1809
    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1810
    .line 1811
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v4

    .line 1815
    goto :goto_42

    .line 1816
    :cond_56
    const/4 v4, 0x0

    .line 1817
    goto :goto_42

    .line 1818
    :cond_57
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v4

    .line 1822
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1823
    .line 1824
    if-eqz v4, :cond_56

    .line 1825
    .line 1826
    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1827
    .line 1828
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v4

    .line 1832
    :goto_42
    if-eqz v40, :cond_59

    .line 1833
    .line 1834
    invoke-static/range {v45 .. v45}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v7

    .line 1838
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1839
    .line 1840
    if-eqz v7, :cond_58

    .line 1841
    .line 1842
    iget v7, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1843
    .line 1844
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v10

    .line 1848
    :goto_43
    move/from16 v15, v54

    .line 1849
    .line 1850
    goto :goto_44

    .line 1851
    :cond_58
    move/from16 v15, v54

    .line 1852
    .line 1853
    const/4 v10, 0x0

    .line 1854
    goto :goto_44

    .line 1855
    :cond_59
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v7

    .line 1859
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1860
    .line 1861
    if-eqz v7, :cond_58

    .line 1862
    .line 1863
    iget v7, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1864
    .line 1865
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v10

    .line 1869
    goto :goto_43

    .line 1870
    :goto_44
    if-lt v9, v15, :cond_5b

    .line 1871
    .line 1872
    if-le v3, v6, :cond_5a

    .line 1873
    .line 1874
    goto :goto_45

    .line 1875
    :cond_5a
    const/4 v3, 0x0

    .line 1876
    goto :goto_46

    .line 1877
    :cond_5b
    :goto_45
    move/from16 v3, v16

    .line 1878
    .line 1879
    :goto_46
    new-instance v43, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda2;

    .line 1880
    .line 1881
    const/16 v48, 0x0

    .line 1882
    .line 1883
    move-object/from16 v44, v46

    .line 1884
    .line 1885
    move-object/from16 v46, v1

    .line 1886
    .line 1887
    invoke-direct/range {v43 .. v48}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    .line 1888
    .line 1889
    .line 1890
    move-object/from16 v7, v43

    .line 1891
    .line 1892
    move-object/from16 v1, v45

    .line 1893
    .line 1894
    move-object/from16 v6, v46

    .line 1895
    .line 1896
    add-int v8, v23, v38

    .line 1897
    .line 1898
    move-wide/from16 v13, p2

    .line 1899
    .line 1900
    invoke-static {v13, v14, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 1901
    .line 1902
    .line 1903
    move-result v8

    .line 1904
    add-int v9, v24, v37

    .line 1905
    .line 1906
    invoke-static {v13, v14, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 1907
    .line 1908
    .line 1909
    move-result v9

    .line 1910
    move-object/from16 v12, v36

    .line 1911
    .line 1912
    move-object/from16 v11, v49

    .line 1913
    .line 1914
    invoke-interface {v11, v8, v9, v12, v7}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v7

    .line 1918
    if-eqz v4, :cond_5c

    .line 1919
    .line 1920
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1921
    .line 1922
    .line 1923
    move-result v4

    .line 1924
    goto :goto_47

    .line 1925
    :cond_5c
    const/4 v4, 0x0

    .line 1926
    :goto_47
    if-eqz v10, :cond_5d

    .line 1927
    .line 1928
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1929
    .line 1930
    .line 1931
    move-result v8

    .line 1932
    goto :goto_48

    .line 1933
    :cond_5d
    const/4 v8, 0x0

    .line 1934
    :goto_48
    invoke-static {v4, v8, v1, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->updatedVisibleItems(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v12

    .line 1938
    if-eqz v5, :cond_5e

    .line 1939
    .line 1940
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 1941
    .line 1942
    :goto_49
    move v4, v0

    .line 1943
    move-object/from16 v16, v1

    .line 1944
    .line 1945
    goto :goto_4a

    .line 1946
    :cond_5e
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 1947
    .line 1948
    goto :goto_49

    .line 1949
    :goto_4a
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 1950
    .line 1951
    iget-wide v1, v2, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 1952
    .line 1953
    move-object/from16 v9, p1

    .line 1954
    .line 1955
    move-object v5, v7

    .line 1956
    move-object/from16 v36, v11

    .line 1957
    .line 1958
    move-object/from16 v8, v30

    .line 1959
    .line 1960
    move/from16 v14, v35

    .line 1961
    .line 1962
    move/from16 v17, v39

    .line 1963
    .line 1964
    move/from16 v18, v42

    .line 1965
    .line 1966
    move/from16 v13, v51

    .line 1967
    .line 1968
    move/from16 v6, v52

    .line 1969
    .line 1970
    move/from16 v7, v53

    .line 1971
    .line 1972
    move-wide v10, v1

    .line 1973
    move/from16 v2, v28

    .line 1974
    .line 1975
    move-object/from16 v1, v56

    .line 1976
    .line 1977
    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 1978
    .line 1979
    .line 1980
    :goto_4b
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 1981
    .line 1982
    .line 1983
    move-result v1

    .line 1984
    move-object/from16 v2, v50

    .line 1985
    .line 1986
    const/4 v3, 0x0

    .line 1987
    invoke-virtual {v2, v0, v1, v3}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    .line 1988
    .line 1989
    .line 1990
    iget-object v1, v2, Landroidx/compose/foundation/lazy/LazyListState;->prefetchStrategy:Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;

    .line 1991
    .line 1992
    return-object v0

    .line 1993
    :catchall_0
    move-exception v0

    .line 1994
    invoke-static {v4, v13, v6}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 1995
    .line 1996
    .line 1997
    throw v0

    .line 1998
    :cond_5f
    const-string v0, "null horizontalAlignment when isVertical == false"

    .line 1999
    .line 2000
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v0

    .line 2004
    throw v0
.end method
