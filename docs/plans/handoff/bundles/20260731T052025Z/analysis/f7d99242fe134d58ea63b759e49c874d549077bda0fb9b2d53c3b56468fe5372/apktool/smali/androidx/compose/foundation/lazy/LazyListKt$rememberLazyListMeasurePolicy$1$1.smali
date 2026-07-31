.class public final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final synthetic $horizontalAlignment:Ljava/lang/Object;

.field public final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field public final synthetic $r8$classId:I

.field public final synthetic $state:Landroidx/compose/foundation/gestures/ScrollableState;

.field public final synthetic $stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

.field public final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;Landroidx/compose/ui/Alignment$Horizontal;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 14
    .line 15
    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 16
    .line 17
    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 18
    .line 19
    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    .line 20
    .line 21
    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;)V
    .locals 0

    const/4 p6, 0x1

    iput p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$r8$classId:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    return-void
.end method

.method private final measure-0kLqBqw$androidx$compose$foundation$lazy$LazyListKt$rememberLazyListMeasurePolicy$1$1(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 58

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-wide/from16 v14, p2

    .line 6
    .line 7
    iget-object v1, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListState;

    .line 13
    .line 14
    iget-object v4, v3, Landroidx/compose/foundation/lazy/LazyListState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-boolean v4, v3, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    .line 20
    .line 21
    const/16 v16, 0x1

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v26, 0x0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move/from16 v26, v16

    .line 36
    .line 37
    :goto_1
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 38
    .line 39
    invoke-static {v14, v15, v4}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 47
    .line 48
    invoke-interface {v7, v6}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-interface {v7, v8}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    invoke-interface {v1, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-interface {v7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    invoke-interface {v1, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    invoke-interface {v7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-interface {v1, v7}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    add-int/2addr v7, v10

    .line 85
    add-int/2addr v8, v6

    .line 86
    sub-int v17, v7, v10

    .line 87
    .line 88
    neg-int v11, v8

    .line 89
    neg-int v12, v7

    .line 90
    invoke-static {v11, v12, v14, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    .line 91
    .line 92
    .line 93
    move-result-wide v11

    .line 94
    iget-object v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 101
    .line 102
    iget-object v5, v13, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 103
    .line 104
    move-object/from16 v19, v2

    .line 105
    .line 106
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    move-object/from16 v20, v3

    .line 111
    .line 112
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    move-object/from16 v21, v4

    .line 117
    .line 118
    iget-object v4, v5, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidthState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 119
    .line 120
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 121
    .line 122
    .line 123
    iget-object v2, v5, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeightState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 126
    .line 127
    .line 128
    const/16 v31, 0x0

    .line 129
    .line 130
    const-string v22, "null verticalArrangement when isVertical == true"

    .line 131
    .line 132
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 133
    .line 134
    if-eqz v2, :cond_4c

    .line 135
    .line 136
    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getItemCount()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    sub-int/2addr v5, v7

    .line 153
    move-object/from16 v23, v1

    .line 154
    .line 155
    move-object/from16 v24, v2

    .line 156
    .line 157
    int-to-long v1, v6

    .line 158
    const/16 v32, 0x20

    .line 159
    .line 160
    shl-long v1, v1, v32

    .line 161
    .line 162
    move-wide/from16 v27, v1

    .line 163
    .line 164
    int-to-long v1, v10

    .line 165
    const-wide v33, 0xffffffffL

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    and-long v1, v1, v33

    .line 171
    .line 172
    or-long v1, v27, v1

    .line 173
    .line 174
    move v6, v7

    .line 175
    move v7, v3

    .line 176
    move-wide/from16 v56, v11

    .line 177
    .line 178
    move-wide v11, v1

    .line 179
    move-wide/from16 v2, v56

    .line 180
    .line 181
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    .line 182
    .line 183
    move-object/from16 v25, v1

    .line 184
    .line 185
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v1, Landroidx/compose/ui/Alignment$Horizontal;

    .line 188
    .line 189
    check-cast v19, Landroidx/compose/foundation/lazy/LazyListState;

    .line 190
    .line 191
    move v15, v5

    .line 192
    move/from16 v38, v6

    .line 193
    .line 194
    move/from16 v37, v8

    .line 195
    .line 196
    move-object v5, v9

    .line 197
    move v9, v10

    .line 198
    move/from16 v40, v16

    .line 199
    .line 200
    move/from16 v10, v17

    .line 201
    .line 202
    move-object/from16 v14, v20

    .line 203
    .line 204
    move-object/from16 v16, v21

    .line 205
    .line 206
    move-object/from16 v36, v23

    .line 207
    .line 208
    move-object/from16 v39, v24

    .line 209
    .line 210
    move-object v8, v1

    .line 211
    move v6, v4

    .line 212
    move-object v4, v13

    .line 213
    move-object/from16 v13, v19

    .line 214
    .line 215
    move-object/from16 v1, v25

    .line 216
    .line 217
    invoke-direct/range {v1 .. v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(JLandroidx/compose/foundation/lazy/LazyListItemProviderImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IILandroidx/compose/ui/Alignment$Horizontal;IIJLandroidx/compose/foundation/lazy/LazyListState;)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    if-eqz v5, :cond_2

    .line 225
    .line 226
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    goto :goto_2

    .line 231
    :cond_2
    move-object/from16 v8, v31

    .line 232
    .line 233
    :goto_2
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    :try_start_0
    iget-object v12, v14, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 238
    .line 239
    iget-object v13, v12, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 240
    .line 241
    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    move/from16 v41, v7

    .line 246
    .line 247
    iget-object v7, v12, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    .line 248
    .line 249
    invoke-static {v13, v4, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-eq v13, v7, :cond_3

    .line 254
    .line 255
    move/from16 v42, v10

    .line 256
    .line 257
    iget-object v10, v12, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 258
    .line 259
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 260
    .line 261
    .line 262
    iget-object v10, v12, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 263
    .line 264
    invoke-virtual {v10, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    goto/16 :goto_3b

    .line 270
    .line 271
    :cond_3
    move/from16 v42, v10

    .line 272
    .line 273
    :goto_3
    iget-object v10, v12, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 274
    .line 275
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 276
    .line 277
    .line 278
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-static {v5, v11, v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 280
    .line 281
    .line 282
    iget-object v5, v14, Landroidx/compose/foundation/lazy/LazyListState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 283
    .line 284
    iget-object v8, v14, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 285
    .line 286
    invoke-static {v4, v5, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-nez v5, :cond_5

    .line 295
    .line 296
    if-nez v26, :cond_4

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_4
    iget-object v5, v14, Landroidx/compose/foundation/lazy/LazyListState;->_lazyLayoutScrollDeltaBetweenPasses:Landroidx/cardview/widget/CardView$1;

    .line 300
    .line 301
    iget-object v5, v5, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v5, Landroidx/compose/animation/core/AnimationState;

    .line 304
    .line 305
    iget-object v5, v5, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 306
    .line 307
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    check-cast v5, Ljava/lang/Number;

    .line 312
    .line 313
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    goto :goto_5

    .line 318
    :cond_5
    :goto_4
    iget v5, v14, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 319
    .line 320
    :goto_5
    iget-object v8, v14, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 321
    .line 322
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 323
    .line 324
    .line 325
    move-result v24

    .line 326
    iget-object v11, v14, Landroidx/compose/foundation/lazy/LazyListState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 327
    .line 328
    iget-boolean v12, v14, Landroidx/compose/foundation/lazy/LazyListState;->skipItemPlacementAnimation:Z

    .line 329
    .line 330
    if-ltz v9, :cond_6

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_6
    const-string v13, "invalid beforeContentPadding"

    .line 334
    .line 335
    invoke-static {v13}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :goto_6
    if-ltz v42, :cond_7

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_7
    const-string v13, "invalid afterContentPadding"

    .line 342
    .line 343
    invoke-static {v13}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :goto_7
    sget-object v13, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 347
    .line 348
    move/from16 v17, v5

    .line 349
    .line 350
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 351
    .line 352
    move-object/from16 v23, v1

    .line 353
    .line 354
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 355
    .line 356
    move-object/from16 v29, v1

    .line 357
    .line 358
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 359
    .line 360
    move/from16 v18, v10

    .line 361
    .line 362
    move-object/from16 v44, v11

    .line 363
    .line 364
    const-wide/16 v10, 0x0

    .line 365
    .line 366
    move/from16 v19, v12

    .line 367
    .line 368
    sget-object v12, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 369
    .line 370
    if-gtz v6, :cond_9

    .line 371
    .line 372
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 373
    .line 374
    .line 375
    move-result v19

    .line 376
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 377
    .line 378
    .line 379
    move-result v20

    .line 380
    new-instance v21, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .line 384
    .line 385
    iget-object v0, v5, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Lde/cketti/changelog/XmlParser;

    .line 386
    .line 387
    const/16 v27, 0x0

    .line 388
    .line 389
    const/16 v28, 0x0

    .line 390
    .line 391
    const/16 v18, 0x0

    .line 392
    .line 393
    const/16 v25, 0x1

    .line 394
    .line 395
    move-object/from16 v22, v0

    .line 396
    .line 397
    move-object/from16 v30, v1

    .line 398
    .line 399
    move-object/from16 v17, v8

    .line 400
    .line 401
    invoke-virtual/range {v17 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsqueryresult/DnsQueryResult;ZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 402
    .line 403
    .line 404
    move-object/from16 v1, v23

    .line 405
    .line 406
    if-nez v24, :cond_8

    .line 407
    .line 408
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 409
    .line 410
    .line 411
    move-result-wide v4

    .line 412
    invoke-static {v4, v5, v10, v11}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-nez v0, :cond_8

    .line 417
    .line 418
    shr-long v6, v4, v32

    .line 419
    .line 420
    long-to-int v0, v6

    .line 421
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 422
    .line 423
    .line 424
    move-result v19

    .line 425
    and-long v4, v4, v33

    .line 426
    .line 427
    long-to-int v0, v4

    .line 428
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 429
    .line 430
    .line 431
    move-result v20

    .line 432
    :cond_8
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 433
    .line 434
    const/16 v2, 0x1d

    .line 435
    .line 436
    invoke-direct {v0, v2}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 437
    .line 438
    .line 439
    add-int v2, v19, v37

    .line 440
    .line 441
    move-wide/from16 v3, p2

    .line 442
    .line 443
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    add-int v5, v20, v38

    .line 448
    .line 449
    invoke-static {v5, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    move-object/from16 v4, v36

    .line 454
    .line 455
    invoke-interface {v4, v2, v3, v13, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    neg-int v13, v9

    .line 460
    move-object/from16 v20, v14

    .line 461
    .line 462
    add-int v14, v15, v42

    .line 463
    .line 464
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 465
    .line 466
    const/4 v7, 0x0

    .line 467
    const/4 v15, 0x0

    .line 468
    const/4 v2, 0x0

    .line 469
    move-object v3, v2

    .line 470
    const/4 v2, 0x0

    .line 471
    move-object v6, v3

    .line 472
    const/4 v3, 0x0

    .line 473
    const/4 v4, 0x0

    .line 474
    move-object v8, v6

    .line 475
    const/4 v6, 0x0

    .line 476
    iget-wide v10, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 477
    .line 478
    move-object/from16 v9, p1

    .line 479
    .line 480
    move-object v1, v8

    .line 481
    move-object/from16 v50, v20

    .line 482
    .line 483
    move-object/from16 v8, v29

    .line 484
    .line 485
    move-object/from16 v49, v36

    .line 486
    .line 487
    move/from16 v18, v41

    .line 488
    .line 489
    move/from16 v17, v42

    .line 490
    .line 491
    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 492
    .line 493
    .line 494
    goto/16 :goto_3a

    .line 495
    .line 496
    :cond_9
    move-object/from16 v30, v1

    .line 497
    .line 498
    move-object/from16 v50, v14

    .line 499
    .line 500
    move-object/from16 v1, v23

    .line 501
    .line 502
    move-object/from16 v49, v36

    .line 503
    .line 504
    move-object/from16 v14, p1

    .line 505
    .line 506
    if-lt v7, v6, :cond_a

    .line 507
    .line 508
    add-int/lit8 v7, v6, -0x1

    .line 509
    .line 510
    const/16 v18, 0x0

    .line 511
    .line 512
    :cond_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 513
    .line 514
    .line 515
    move-result v20

    .line 516
    sub-int v18, v18, v20

    .line 517
    .line 518
    if-nez v7, :cond_b

    .line 519
    .line 520
    if-gez v18, :cond_b

    .line 521
    .line 522
    add-int v20, v20, v18

    .line 523
    .line 524
    const/16 v18, 0x0

    .line 525
    .line 526
    :cond_b
    new-instance v10, Lkotlin/collections/ArrayDeque;

    .line 527
    .line 528
    invoke-direct {v10}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 529
    .line 530
    .line 531
    neg-int v11, v9

    .line 532
    if-gez v41, :cond_c

    .line 533
    .line 534
    move/from16 v21, v41

    .line 535
    .line 536
    :goto_8
    move/from16 v23, v7

    .line 537
    .line 538
    goto :goto_9

    .line 539
    :cond_c
    const/16 v21, 0x0

    .line 540
    .line 541
    goto :goto_8

    .line 542
    :goto_9
    add-int v7, v11, v21

    .line 543
    .line 544
    add-int v18, v18, v7

    .line 545
    .line 546
    move-object/from16 v21, v8

    .line 547
    .line 548
    move/from16 v36, v11

    .line 549
    .line 550
    move-object/from16 v51, v13

    .line 551
    .line 552
    move/from16 v11, v18

    .line 553
    .line 554
    const/4 v8, 0x0

    .line 555
    move-object/from16 v18, v12

    .line 556
    .line 557
    :goto_a
    iget-wide v12, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 558
    .line 559
    if-gez v11, :cond_d

    .line 560
    .line 561
    if-lez v23, :cond_d

    .line 562
    .line 563
    add-int/lit8 v0, v23, -0x1

    .line 564
    .line 565
    invoke-virtual {v1, v0, v12, v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 566
    .line 567
    .line 568
    move-result-object v12

    .line 569
    const/4 v13, 0x0

    .line 570
    invoke-virtual {v10, v13, v12}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    iget v13, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 574
    .line 575
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    .line 576
    .line 577
    .line 578
    move-result v8

    .line 579
    iget v12, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 580
    .line 581
    add-int/2addr v11, v12

    .line 582
    move/from16 v23, v0

    .line 583
    .line 584
    move-object/from16 v0, p0

    .line 585
    .line 586
    goto :goto_a

    .line 587
    :cond_d
    const/4 v0, 0x0

    .line 588
    if-ge v11, v7, :cond_e

    .line 589
    .line 590
    sub-int v11, v7, v11

    .line 591
    .line 592
    sub-int v20, v20, v11

    .line 593
    .line 594
    move v11, v7

    .line 595
    :cond_e
    move/from16 v52, v20

    .line 596
    .line 597
    sub-int/2addr v11, v7

    .line 598
    add-int v35, v15, v42

    .line 599
    .line 600
    if-gez v35, :cond_f

    .line 601
    .line 602
    :goto_b
    move/from16 v20, v8

    .line 603
    .line 604
    goto :goto_c

    .line 605
    :cond_f
    move/from16 v0, v35

    .line 606
    .line 607
    goto :goto_b

    .line 608
    :goto_c
    neg-int v8, v11

    .line 609
    move-object/from16 v43, v5

    .line 610
    .line 611
    move/from16 v27, v11

    .line 612
    .line 613
    move/from16 v28, v23

    .line 614
    .line 615
    const/16 v25, 0x0

    .line 616
    .line 617
    move v11, v8

    .line 618
    const/4 v8, 0x0

    .line 619
    :goto_d
    iget v5, v10, Lkotlin/collections/ArrayDeque;->size:I

    .line 620
    .line 621
    if-ge v8, v5, :cond_11

    .line 622
    .line 623
    if-lt v11, v0, :cond_10

    .line 624
    .line 625
    invoke-virtual {v10, v8}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move/from16 v25, v40

    .line 629
    .line 630
    goto :goto_d

    .line 631
    :cond_10
    add-int/lit8 v28, v28, 0x1

    .line 632
    .line 633
    invoke-virtual {v10, v8}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v5

    .line 637
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 638
    .line 639
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 640
    .line 641
    add-int/2addr v11, v5

    .line 642
    add-int/lit8 v8, v8, 0x1

    .line 643
    .line 644
    goto :goto_d

    .line 645
    :cond_11
    move/from16 v8, v20

    .line 646
    .line 647
    move/from16 v53, v25

    .line 648
    .line 649
    move/from16 v20, v27

    .line 650
    .line 651
    move/from16 v5, v28

    .line 652
    .line 653
    :goto_e
    if-ge v5, v6, :cond_13

    .line 654
    .line 655
    if-lt v11, v0, :cond_12

    .line 656
    .line 657
    if-lez v11, :cond_12

    .line 658
    .line 659
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 660
    .line 661
    .line 662
    move-result v25

    .line 663
    if-eqz v25, :cond_13

    .line 664
    .line 665
    :cond_12
    move/from16 v25, v0

    .line 666
    .line 667
    goto :goto_f

    .line 668
    :cond_13
    move/from16 v54, v6

    .line 669
    .line 670
    goto :goto_11

    .line 671
    :goto_f
    invoke-virtual {v1, v5, v12, v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    move/from16 v54, v6

    .line 676
    .line 677
    iget v6, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 678
    .line 679
    add-int/2addr v11, v6

    .line 680
    if-gt v11, v7, :cond_14

    .line 681
    .line 682
    move/from16 v27, v6

    .line 683
    .line 684
    add-int/lit8 v6, v54, -0x1

    .line 685
    .line 686
    if-eq v5, v6, :cond_14

    .line 687
    .line 688
    add-int/lit8 v0, v5, 0x1

    .line 689
    .line 690
    sub-int v6, v20, v27

    .line 691
    .line 692
    move/from16 v23, v0

    .line 693
    .line 694
    move/from16 v20, v6

    .line 695
    .line 696
    move/from16 v53, v40

    .line 697
    .line 698
    goto :goto_10

    .line 699
    :cond_14
    iget v6, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 700
    .line 701
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 702
    .line 703
    .line 704
    move-result v6

    .line 705
    invoke-virtual {v10, v0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    move v8, v6

    .line 709
    :goto_10
    add-int/lit8 v5, v5, 0x1

    .line 710
    .line 711
    move/from16 v0, v25

    .line 712
    .line 713
    move/from16 v6, v54

    .line 714
    .line 715
    goto :goto_e

    .line 716
    :goto_11
    if-ge v11, v15, :cond_17

    .line 717
    .line 718
    sub-int v0, v15, v11

    .line 719
    .line 720
    sub-int v20, v20, v0

    .line 721
    .line 722
    add-int/2addr v11, v0

    .line 723
    move/from16 v6, v20

    .line 724
    .line 725
    :goto_12
    if-ge v6, v9, :cond_15

    .line 726
    .line 727
    if-lez v23, :cond_15

    .line 728
    .line 729
    add-int/lit8 v7, v23, -0x1

    .line 730
    .line 731
    move/from16 v25, v0

    .line 732
    .line 733
    invoke-virtual {v1, v7, v12, v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    move/from16 v20, v6

    .line 738
    .line 739
    const/4 v6, 0x0

    .line 740
    invoke-virtual {v10, v6, v0}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 741
    .line 742
    .line 743
    iget v6, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 744
    .line 745
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 746
    .line 747
    .line 748
    move-result v8

    .line 749
    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 750
    .line 751
    add-int v6, v20, v0

    .line 752
    .line 753
    move/from16 v23, v7

    .line 754
    .line 755
    move/from16 v0, v25

    .line 756
    .line 757
    goto :goto_12

    .line 758
    :cond_15
    move/from16 v25, v0

    .line 759
    .line 760
    move/from16 v20, v6

    .line 761
    .line 762
    move/from16 v0, v52

    .line 763
    .line 764
    add-int v52, v0, v25

    .line 765
    .line 766
    if-gez v20, :cond_16

    .line 767
    .line 768
    add-int v52, v52, v20

    .line 769
    .line 770
    add-int v11, v11, v20

    .line 771
    .line 772
    move/from16 v7, v23

    .line 773
    .line 774
    move/from16 v20, v52

    .line 775
    .line 776
    const/4 v6, 0x0

    .line 777
    goto :goto_13

    .line 778
    :cond_16
    move/from16 v6, v20

    .line 779
    .line 780
    move/from16 v7, v23

    .line 781
    .line 782
    move/from16 v20, v52

    .line 783
    .line 784
    goto :goto_13

    .line 785
    :cond_17
    move/from16 v0, v52

    .line 786
    .line 787
    move/from16 v6, v20

    .line 788
    .line 789
    move/from16 v7, v23

    .line 790
    .line 791
    move/from16 v20, v0

    .line 792
    .line 793
    :goto_13
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 794
    .line 795
    .line 796
    move-result v23

    .line 797
    move/from16 v25, v8

    .line 798
    .line 799
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->signum(I)I

    .line 800
    .line 801
    .line 802
    move-result v8

    .line 803
    move/from16 v47, v9

    .line 804
    .line 805
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->signum(I)I

    .line 806
    .line 807
    .line 808
    move-result v9

    .line 809
    if-ne v8, v9, :cond_18

    .line 810
    .line 811
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 812
    .line 813
    .line 814
    move-result v8

    .line 815
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 816
    .line 817
    .line 818
    move-result v8

    .line 819
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    .line 820
    .line 821
    .line 822
    move-result v9

    .line 823
    if-lt v8, v9, :cond_18

    .line 824
    .line 825
    move/from16 v8, v20

    .line 826
    .line 827
    int-to-float v9, v8

    .line 828
    goto :goto_14

    .line 829
    :cond_18
    move/from16 v8, v20

    .line 830
    .line 831
    move/from16 v9, v17

    .line 832
    .line 833
    :goto_14
    sub-float v17, v17, v9

    .line 834
    .line 835
    const/16 v20, 0x0

    .line 836
    .line 837
    if-eqz v24, :cond_19

    .line 838
    .line 839
    if-le v8, v0, :cond_19

    .line 840
    .line 841
    cmpg-float v23, v17, v20

    .line 842
    .line 843
    if-gtz v23, :cond_19

    .line 844
    .line 845
    sub-int v0, v8, v0

    .line 846
    .line 847
    int-to-float v0, v0

    .line 848
    add-float v20, v0, v17

    .line 849
    .line 850
    :cond_19
    move/from16 v0, v20

    .line 851
    .line 852
    if-ltz v6, :cond_1a

    .line 853
    .line 854
    goto :goto_15

    .line 855
    :cond_1a
    const-string v8, "negative currentFirstItemScrollOffset"

    .line 856
    .line 857
    invoke-static {v8}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    :goto_15
    neg-int v8, v6

    .line 861
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v17

    .line 865
    check-cast v17, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 866
    .line 867
    if-gtz v47, :cond_1b

    .line 868
    .line 869
    if-gez v41, :cond_1c

    .line 870
    .line 871
    :cond_1b
    move/from16 v52, v0

    .line 872
    .line 873
    goto :goto_17

    .line 874
    :cond_1c
    move/from16 v52, v0

    .line 875
    .line 876
    move/from16 v27, v6

    .line 877
    .line 878
    move-object/from16 v0, v17

    .line 879
    .line 880
    move/from16 v17, v8

    .line 881
    .line 882
    :goto_16
    const/4 v6, 0x0

    .line 883
    goto :goto_19

    .line 884
    :goto_17
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 885
    .line 886
    .line 887
    move-result v0

    .line 888
    move-object/from16 v20, v17

    .line 889
    .line 890
    move/from16 v17, v8

    .line 891
    .line 892
    move v8, v6

    .line 893
    const/4 v6, 0x0

    .line 894
    :goto_18
    if-ge v6, v0, :cond_1d

    .line 895
    .line 896
    invoke-virtual {v10, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v23

    .line 900
    move/from16 v27, v0

    .line 901
    .line 902
    move-object/from16 v0, v23

    .line 903
    .line 904
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 905
    .line 906
    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 907
    .line 908
    if-eqz v8, :cond_1d

    .line 909
    .line 910
    if-gt v0, v8, :cond_1d

    .line 911
    .line 912
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 913
    .line 914
    .line 915
    move-result v23

    .line 916
    move/from16 v28, v0

    .line 917
    .line 918
    add-int/lit8 v0, v23, -0x1

    .line 919
    .line 920
    if-eq v6, v0, :cond_1d

    .line 921
    .line 922
    sub-int v8, v8, v28

    .line 923
    .line 924
    add-int/lit8 v6, v6, 0x1

    .line 925
    .line 926
    invoke-virtual {v10, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    move-object/from16 v20, v0

    .line 931
    .line 932
    check-cast v20, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 933
    .line 934
    move/from16 v0, v27

    .line 935
    .line 936
    goto :goto_18

    .line 937
    :cond_1d
    move/from16 v27, v8

    .line 938
    .line 939
    move-object/from16 v0, v20

    .line 940
    .line 941
    goto :goto_16

    .line 942
    :goto_19
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 943
    .line 944
    .line 945
    move-result v8

    .line 946
    add-int/lit8 v7, v7, -0x1

    .line 947
    .line 948
    if-gt v8, v7, :cond_1f

    .line 949
    .line 950
    move-object/from16 v20, v31

    .line 951
    .line 952
    :goto_1a
    if-nez v20, :cond_1e

    .line 953
    .line 954
    new-instance v20, Ljava/util/ArrayList;

    .line 955
    .line 956
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .line 958
    .line 959
    :cond_1e
    move/from16 v48, v5

    .line 960
    .line 961
    move-object/from16 v6, v20

    .line 962
    .line 963
    invoke-virtual {v1, v7, v12, v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 964
    .line 965
    .line 966
    move-result-object v5

    .line 967
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    .line 969
    .line 970
    if-eq v7, v8, :cond_20

    .line 971
    .line 972
    add-int/lit8 v7, v7, -0x1

    .line 973
    .line 974
    move-object/from16 v20, v6

    .line 975
    .line 976
    move/from16 v5, v48

    .line 977
    .line 978
    const/4 v6, 0x0

    .line 979
    goto :goto_1a

    .line 980
    :cond_1f
    move/from16 v48, v5

    .line 981
    .line 982
    move-object/from16 v6, v31

    .line 983
    .line 984
    :cond_20
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 985
    .line 986
    .line 987
    move-result v5

    .line 988
    add-int/lit8 v5, v5, -0x1

    .line 989
    .line 990
    if-ltz v5, :cond_24

    .line 991
    .line 992
    :goto_1b
    add-int/lit8 v7, v5, -0x1

    .line 993
    .line 994
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v5

    .line 998
    check-cast v5, Ljava/lang/Number;

    .line 999
    .line 1000
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 1001
    .line 1002
    .line 1003
    move-result v5

    .line 1004
    if-ge v5, v8, :cond_22

    .line 1005
    .line 1006
    if-nez v6, :cond_21

    .line 1007
    .line 1008
    new-instance v6, Ljava/util/ArrayList;

    .line 1009
    .line 1010
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .line 1012
    .line 1013
    :cond_21
    invoke-virtual {v1, v5, v12, v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v5

    .line 1017
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    :cond_22
    if-gez v7, :cond_23

    .line 1021
    .line 1022
    goto :goto_1c

    .line 1023
    :cond_23
    move v5, v7

    .line 1024
    goto :goto_1b

    .line 1025
    :cond_24
    :goto_1c
    if-nez v6, :cond_25

    .line 1026
    .line 1027
    move-object/from16 v6, v18

    .line 1028
    .line 1029
    :cond_25
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 1030
    .line 1031
    .line 1032
    move-result v5

    .line 1033
    move/from16 v8, v25

    .line 1034
    .line 1035
    const/4 v7, 0x0

    .line 1036
    :goto_1d
    if-ge v7, v5, :cond_26

    .line 1037
    .line 1038
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v20

    .line 1042
    move/from16 v23, v5

    .line 1043
    .line 1044
    move-object/from16 v5, v20

    .line 1045
    .line 1046
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1047
    .line 1048
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 1049
    .line 1050
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 1051
    .line 1052
    .line 1053
    move-result v8

    .line 1054
    add-int/lit8 v7, v7, 0x1

    .line 1055
    .line 1056
    move/from16 v5, v23

    .line 1057
    .line 1058
    goto :goto_1d

    .line 1059
    :cond_26
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v5

    .line 1063
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1064
    .line 1065
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1066
    .line 1067
    add-int/lit8 v7, v54, -0x1

    .line 1068
    .line 1069
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 1070
    .line 1071
    .line 1072
    move-result v5

    .line 1073
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v7

    .line 1077
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1078
    .line 1079
    iget v7, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1080
    .line 1081
    add-int/lit8 v7, v7, 0x1

    .line 1082
    .line 1083
    if-gt v7, v5, :cond_28

    .line 1084
    .line 1085
    move-object/from16 v20, v31

    .line 1086
    .line 1087
    :goto_1e
    if-nez v20, :cond_27

    .line 1088
    .line 1089
    new-instance v20, Ljava/util/ArrayList;

    .line 1090
    .line 1091
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .line 1093
    .line 1094
    :cond_27
    move/from16 v23, v8

    .line 1095
    .line 1096
    move/from16 v55, v9

    .line 1097
    .line 1098
    move-object/from16 v8, v20

    .line 1099
    .line 1100
    invoke-virtual {v1, v7, v12, v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v9

    .line 1104
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    .line 1106
    .line 1107
    if-eq v7, v5, :cond_29

    .line 1108
    .line 1109
    add-int/lit8 v7, v7, 0x1

    .line 1110
    .line 1111
    move-object/from16 v20, v8

    .line 1112
    .line 1113
    move/from16 v8, v23

    .line 1114
    .line 1115
    move/from16 v9, v55

    .line 1116
    .line 1117
    goto :goto_1e

    .line 1118
    :cond_28
    move/from16 v23, v8

    .line 1119
    .line 1120
    move/from16 v55, v9

    .line 1121
    .line 1122
    move-object/from16 v8, v31

    .line 1123
    .line 1124
    :cond_29
    if-eqz v8, :cond_2a

    .line 1125
    .line 1126
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v7

    .line 1130
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1131
    .line 1132
    iget v7, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1133
    .line 1134
    if-le v7, v5, :cond_2a

    .line 1135
    .line 1136
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v5

    .line 1140
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1141
    .line 1142
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1143
    .line 1144
    :cond_2a
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1145
    .line 1146
    .line 1147
    move-result v7

    .line 1148
    move-object v9, v8

    .line 1149
    const/4 v8, 0x0

    .line 1150
    :goto_1f
    if-ge v8, v7, :cond_2d

    .line 1151
    .line 1152
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v20

    .line 1156
    check-cast v20, Ljava/lang/Number;

    .line 1157
    .line 1158
    move-object/from16 v25, v4

    .line 1159
    .line 1160
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    .line 1161
    .line 1162
    .line 1163
    move-result v4

    .line 1164
    if-le v4, v5, :cond_2c

    .line 1165
    .line 1166
    if-nez v9, :cond_2b

    .line 1167
    .line 1168
    new-instance v9, Ljava/util/ArrayList;

    .line 1169
    .line 1170
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .line 1172
    .line 1173
    :cond_2b
    invoke-virtual {v1, v4, v12, v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v4

    .line 1177
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    :cond_2c
    add-int/lit8 v8, v8, 0x1

    .line 1181
    .line 1182
    move-object/from16 v4, v25

    .line 1183
    .line 1184
    goto :goto_1f

    .line 1185
    :cond_2d
    if-nez v9, :cond_2e

    .line 1186
    .line 1187
    move-object/from16 v12, v18

    .line 1188
    .line 1189
    goto :goto_20

    .line 1190
    :cond_2e
    move-object v12, v9

    .line 1191
    :goto_20
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 1192
    .line 1193
    .line 1194
    move-result v4

    .line 1195
    move/from16 v8, v23

    .line 1196
    .line 1197
    const/4 v5, 0x0

    .line 1198
    :goto_21
    if-ge v5, v4, :cond_2f

    .line 1199
    .line 1200
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v7

    .line 1204
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1205
    .line 1206
    iget v7, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 1207
    .line 1208
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 1209
    .line 1210
    .line 1211
    move-result v8

    .line 1212
    add-int/lit8 v5, v5, 0x1

    .line 1213
    .line 1214
    goto :goto_21

    .line 1215
    :cond_2f
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v4

    .line 1219
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1220
    .line 1221
    .line 1222
    move-result v4

    .line 1223
    if-eqz v4, :cond_30

    .line 1224
    .line 1225
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1226
    .line 1227
    .line 1228
    move-result v4

    .line 1229
    if-eqz v4, :cond_30

    .line 1230
    .line 1231
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 1232
    .line 1233
    .line 1234
    move-result v4

    .line 1235
    if-eqz v4, :cond_30

    .line 1236
    .line 1237
    move/from16 v5, v40

    .line 1238
    .line 1239
    goto :goto_22

    .line 1240
    :cond_30
    const/4 v5, 0x0

    .line 1241
    :goto_22
    invoke-static {v8, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 1242
    .line 1243
    .line 1244
    move-result v4

    .line 1245
    invoke-static {v11, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 1246
    .line 1247
    .line 1248
    move-result v7

    .line 1249
    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    .line 1250
    .line 1251
    .line 1252
    move-result v8

    .line 1253
    if-ge v11, v8, :cond_31

    .line 1254
    .line 1255
    move/from16 v8, v40

    .line 1256
    .line 1257
    goto :goto_23

    .line 1258
    :cond_31
    const/4 v8, 0x0

    .line 1259
    :goto_23
    if-eqz v8, :cond_33

    .line 1260
    .line 1261
    if-nez v17, :cond_32

    .line 1262
    .line 1263
    goto :goto_24

    .line 1264
    :cond_32
    const-string v9, "non-zero itemsScrollOffset"

    .line 1265
    .line 1266
    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1267
    .line 1268
    .line 1269
    :cond_33
    :goto_24
    new-instance v9, Ljava/util/ArrayList;

    .line 1270
    .line 1271
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1272
    .line 1273
    .line 1274
    move-result v13

    .line 1275
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1276
    .line 1277
    .line 1278
    move-result v18

    .line 1279
    add-int v18, v18, v13

    .line 1280
    .line 1281
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 1282
    .line 1283
    .line 1284
    move-result v13

    .line 1285
    add-int v13, v13, v18

    .line 1286
    .line 1287
    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1288
    .line 1289
    .line 1290
    if-eqz v8, :cond_3a

    .line 1291
    .line 1292
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1293
    .line 1294
    .line 1295
    move-result v6

    .line 1296
    if-eqz v6, :cond_34

    .line 1297
    .line 1298
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 1299
    .line 1300
    .line 1301
    move-result v6

    .line 1302
    if-eqz v6, :cond_34

    .line 1303
    .line 1304
    goto :goto_25

    .line 1305
    :cond_34
    const-string v6, "no extra items"

    .line 1306
    .line 1307
    invoke-static {v6}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    :goto_25
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1311
    .line 1312
    .line 1313
    move-result v6

    .line 1314
    new-array v8, v6, [I

    .line 1315
    .line 1316
    const/4 v12, 0x0

    .line 1317
    :goto_26
    if-ge v12, v6, :cond_35

    .line 1318
    .line 1319
    invoke-virtual {v10, v12}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v13

    .line 1323
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1324
    .line 1325
    iget v13, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 1326
    .line 1327
    aput v13, v8, v12

    .line 1328
    .line 1329
    add-int/lit8 v12, v12, 0x1

    .line 1330
    .line 1331
    goto :goto_26

    .line 1332
    :cond_35
    new-array v6, v6, [I

    .line 1333
    .line 1334
    move-object/from16 v12, v39

    .line 1335
    .line 1336
    if-eqz v12, :cond_39

    .line 1337
    .line 1338
    invoke-interface {v12, v14, v7, v8, v6}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 1339
    .line 1340
    .line 1341
    invoke-static {v6}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v8

    .line 1345
    iget v12, v8, Lkotlin/ranges/IntProgression;->first:I

    .line 1346
    .line 1347
    iget v13, v8, Lkotlin/ranges/IntProgression;->last:I

    .line 1348
    .line 1349
    iget v8, v8, Lkotlin/ranges/IntProgression;->step:I

    .line 1350
    .line 1351
    if-lez v8, :cond_36

    .line 1352
    .line 1353
    if-le v12, v13, :cond_37

    .line 1354
    .line 1355
    :cond_36
    if-gez v8, :cond_38

    .line 1356
    .line 1357
    if-gt v13, v12, :cond_38

    .line 1358
    .line 1359
    :cond_37
    move-object/from16 v39, v0

    .line 1360
    .line 1361
    :goto_27
    aget v0, v6, v12

    .line 1362
    .line 1363
    invoke-virtual {v10, v12}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v17

    .line 1367
    move-object/from16 v23, v1

    .line 1368
    .line 1369
    move-object/from16 v1, v17

    .line 1370
    .line 1371
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1372
    .line 1373
    invoke-virtual {v1, v0, v4, v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    .line 1378
    .line 1379
    if-eq v12, v13, :cond_3d

    .line 1380
    .line 1381
    add-int/2addr v12, v8

    .line 1382
    move-object/from16 v1, v23

    .line 1383
    .line 1384
    goto :goto_27

    .line 1385
    :cond_38
    move-object/from16 v39, v0

    .line 1386
    .line 1387
    move-object/from16 v23, v1

    .line 1388
    .line 1389
    goto :goto_2b

    .line 1390
    :cond_39
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 1391
    .line 1392
    .line 1393
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 1394
    .line 1395
    .line 1396
    return-object v31

    .line 1397
    :cond_3a
    move-object/from16 v39, v0

    .line 1398
    .line 1399
    move-object/from16 v23, v1

    .line 1400
    .line 1401
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 1402
    .line 1403
    .line 1404
    move-result v0

    .line 1405
    move/from16 v8, v17

    .line 1406
    .line 1407
    const/4 v1, 0x0

    .line 1408
    :goto_28
    if-ge v1, v0, :cond_3b

    .line 1409
    .line 1410
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v13

    .line 1414
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1415
    .line 1416
    move/from16 v18, v0

    .line 1417
    .line 1418
    iget v0, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1419
    .line 1420
    sub-int/2addr v8, v0

    .line 1421
    invoke-virtual {v13, v8, v4, v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    .line 1426
    .line 1427
    add-int/lit8 v1, v1, 0x1

    .line 1428
    .line 1429
    move/from16 v0, v18

    .line 1430
    .line 1431
    goto :goto_28

    .line 1432
    :cond_3b
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1433
    .line 1434
    .line 1435
    move-result v0

    .line 1436
    move/from16 v8, v17

    .line 1437
    .line 1438
    const/4 v1, 0x0

    .line 1439
    :goto_29
    if-ge v1, v0, :cond_3c

    .line 1440
    .line 1441
    invoke-virtual {v10, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v6

    .line 1445
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1446
    .line 1447
    invoke-virtual {v6, v8, v4, v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    .line 1452
    .line 1453
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1454
    .line 1455
    add-int/2addr v8, v6

    .line 1456
    add-int/lit8 v1, v1, 0x1

    .line 1457
    .line 1458
    goto :goto_29

    .line 1459
    :cond_3c
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 1460
    .line 1461
    .line 1462
    move-result v0

    .line 1463
    const/4 v1, 0x0

    .line 1464
    :goto_2a
    if-ge v1, v0, :cond_3d

    .line 1465
    .line 1466
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v6

    .line 1470
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1471
    .line 1472
    invoke-virtual {v6, v8, v4, v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    .line 1477
    .line 1478
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1479
    .line 1480
    add-int/2addr v8, v6

    .line 1481
    add-int/lit8 v1, v1, 0x1

    .line 1482
    .line 1483
    goto :goto_2a

    .line 1484
    :cond_3d
    :goto_2b
    if-nez v19, :cond_3e

    .line 1485
    .line 1486
    move/from16 v0, v55

    .line 1487
    .line 1488
    float-to-int v1, v0

    .line 1489
    move-object/from16 v6, v43

    .line 1490
    .line 1491
    iget-object v8, v6, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Lde/cketti/changelog/XmlParser;

    .line 1492
    .line 1493
    const/16 v25, 0x1

    .line 1494
    .line 1495
    move/from16 v18, v1

    .line 1496
    .line 1497
    move/from16 v19, v4

    .line 1498
    .line 1499
    move/from16 v20, v7

    .line 1500
    .line 1501
    move-object/from16 v22, v8

    .line 1502
    .line 1503
    move/from16 v28, v11

    .line 1504
    .line 1505
    move-object/from16 v17, v21

    .line 1506
    .line 1507
    move-object/from16 v21, v9

    .line 1508
    .line 1509
    invoke-virtual/range {v17 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsqueryresult/DnsQueryResult;ZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 1510
    .line 1511
    .line 1512
    move-object/from16 v8, v21

    .line 1513
    .line 1514
    :goto_2c
    move-object/from16 v1, v23

    .line 1515
    .line 1516
    move/from16 v9, v47

    .line 1517
    .line 1518
    move/from16 v47, v24

    .line 1519
    .line 1520
    goto :goto_2d

    .line 1521
    :cond_3e
    move-object v8, v9

    .line 1522
    move-object/from16 v17, v21

    .line 1523
    .line 1524
    move-object/from16 v6, v43

    .line 1525
    .line 1526
    move/from16 v0, v55

    .line 1527
    .line 1528
    goto :goto_2c

    .line 1529
    :goto_2d
    if-nez v47, :cond_40

    .line 1530
    .line 1531
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 1532
    .line 1533
    .line 1534
    move-result-wide v12

    .line 1535
    move/from16 v22, v9

    .line 1536
    .line 1537
    move-object/from16 v26, v10

    .line 1538
    .line 1539
    const-wide/16 v9, 0x0

    .line 1540
    .line 1541
    invoke-static {v12, v13, v9, v10}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 1542
    .line 1543
    .line 1544
    move-result v9

    .line 1545
    if-nez v9, :cond_41

    .line 1546
    .line 1547
    shr-long v9, v12, v32

    .line 1548
    .line 1549
    long-to-int v9, v9

    .line 1550
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 1551
    .line 1552
    .line 1553
    move-result v4

    .line 1554
    invoke-static {v4, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 1555
    .line 1556
    .line 1557
    move-result v4

    .line 1558
    and-long v9, v12, v33

    .line 1559
    .line 1560
    long-to-int v9, v9

    .line 1561
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 1562
    .line 1563
    .line 1564
    move-result v9

    .line 1565
    invoke-static {v9, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 1566
    .line 1567
    .line 1568
    move-result v2

    .line 1569
    if-eq v2, v7, :cond_3f

    .line 1570
    .line 1571
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1572
    .line 1573
    .line 1574
    move-result v3

    .line 1575
    const/4 v7, 0x0

    .line 1576
    :goto_2e
    if-ge v7, v3, :cond_3f

    .line 1577
    .line 1578
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v9

    .line 1582
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1583
    .line 1584
    iput v2, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    .line 1585
    .line 1586
    iget v10, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->afterContentPadding:I

    .line 1587
    .line 1588
    add-int/2addr v10, v2

    .line 1589
    iput v10, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->maxMainAxisOffset:I

    .line 1590
    .line 1591
    add-int/lit8 v7, v7, 0x1

    .line 1592
    .line 1593
    goto :goto_2e

    .line 1594
    :cond_3f
    move/from16 v24, v2

    .line 1595
    .line 1596
    :goto_2f
    move/from16 v23, v4

    .line 1597
    .line 1598
    goto :goto_30

    .line 1599
    :cond_40
    move/from16 v22, v9

    .line 1600
    .line 1601
    move-object/from16 v26, v10

    .line 1602
    .line 1603
    :cond_41
    move/from16 v24, v7

    .line 1604
    .line 1605
    goto :goto_2f

    .line 1606
    :goto_30
    invoke-virtual/range {v26 .. v26}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v2

    .line 1610
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1611
    .line 1612
    if-eqz v2, :cond_42

    .line 1613
    .line 1614
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1615
    .line 1616
    move/from16 v18, v2

    .line 1617
    .line 1618
    goto :goto_31

    .line 1619
    :cond_42
    const/16 v18, 0x0

    .line 1620
    .line 1621
    :goto_31
    invoke-virtual/range {v26 .. v26}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v2

    .line 1625
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1626
    .line 1627
    if-eqz v2, :cond_43

    .line 1628
    .line 1629
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1630
    .line 1631
    move/from16 v19, v2

    .line 1632
    .line 1633
    goto :goto_32

    .line 1634
    :cond_43
    const/16 v19, 0x0

    .line 1635
    .line 1636
    :goto_32
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 1637
    .line 1638
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1639
    .line 1640
    .line 1641
    sget-object v21, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    .line 1642
    .line 1643
    new-instance v2, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 1644
    .line 1645
    const/16 v3, 0xe

    .line 1646
    .line 1647
    invoke-direct {v2, v3, v1}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1648
    .line 1649
    .line 1650
    move-object/from16 v3, p0

    .line 1651
    .line 1652
    iget-object v3, v3, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    .line 1653
    .line 1654
    move-object/from16 v25, v2

    .line 1655
    .line 1656
    move-object/from16 v17, v3

    .line 1657
    .line 1658
    move-object/from16 v20, v8

    .line 1659
    .line 1660
    invoke-static/range {v17 .. v25}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;IILjava/util/ArrayList;Landroidx/collection/MutableIntList;IIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v46

    .line 1664
    move-object/from16 v45, v20

    .line 1665
    .line 1666
    if-eqz v5, :cond_45

    .line 1667
    .line 1668
    invoke-static/range {v45 .. v45}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v2

    .line 1672
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1673
    .line 1674
    if-eqz v2, :cond_44

    .line 1675
    .line 1676
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1677
    .line 1678
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v2

    .line 1682
    goto :goto_33

    .line 1683
    :cond_44
    move-object/from16 v2, v31

    .line 1684
    .line 1685
    goto :goto_33

    .line 1686
    :cond_45
    invoke-virtual/range {v26 .. v26}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v2

    .line 1690
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1691
    .line 1692
    if-eqz v2, :cond_44

    .line 1693
    .line 1694
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1695
    .line 1696
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v2

    .line 1700
    :goto_33
    if-eqz v5, :cond_47

    .line 1701
    .line 1702
    invoke-static/range {v45 .. v45}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v3

    .line 1706
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1707
    .line 1708
    if-eqz v3, :cond_46

    .line 1709
    .line 1710
    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1711
    .line 1712
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v31

    .line 1716
    :cond_46
    :goto_34
    move/from16 v5, v48

    .line 1717
    .line 1718
    move/from16 v6, v54

    .line 1719
    .line 1720
    goto :goto_35

    .line 1721
    :cond_47
    invoke-virtual/range {v26 .. v26}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v3

    .line 1725
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1726
    .line 1727
    if-eqz v3, :cond_46

    .line 1728
    .line 1729
    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1730
    .line 1731
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v31

    .line 1735
    goto :goto_34

    .line 1736
    :goto_35
    if-lt v5, v6, :cond_49

    .line 1737
    .line 1738
    if-le v11, v15, :cond_48

    .line 1739
    .line 1740
    goto :goto_36

    .line 1741
    :cond_48
    const/4 v3, 0x0

    .line 1742
    goto :goto_37

    .line 1743
    :cond_49
    :goto_36
    move/from16 v3, v40

    .line 1744
    .line 1745
    :goto_37
    new-instance v43, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda1;

    .line 1746
    .line 1747
    const/16 v48, 0x0

    .line 1748
    .line 1749
    invoke-direct/range {v43 .. v48}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    .line 1750
    .line 1751
    .line 1752
    move-object/from16 v5, v43

    .line 1753
    .line 1754
    move-object/from16 v8, v45

    .line 1755
    .line 1756
    move-object/from16 v4, v46

    .line 1757
    .line 1758
    add-int v7, v23, v37

    .line 1759
    .line 1760
    move-wide/from16 v9, p2

    .line 1761
    .line 1762
    invoke-static {v7, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 1763
    .line 1764
    .line 1765
    move-result v7

    .line 1766
    add-int v11, v24, v38

    .line 1767
    .line 1768
    invoke-static {v11, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 1769
    .line 1770
    .line 1771
    move-result v9

    .line 1772
    move-object/from16 v10, v49

    .line 1773
    .line 1774
    move-object/from16 v11, v51

    .line 1775
    .line 1776
    invoke-interface {v10, v7, v9, v11, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v5

    .line 1780
    if-eqz v2, :cond_4a

    .line 1781
    .line 1782
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1783
    .line 1784
    .line 1785
    move-result v2

    .line 1786
    goto :goto_38

    .line 1787
    :cond_4a
    const/4 v2, 0x0

    .line 1788
    :goto_38
    if-eqz v31, :cond_4b

    .line 1789
    .line 1790
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    .line 1791
    .line 1792
    .line 1793
    move-result v7

    .line 1794
    goto :goto_39

    .line 1795
    :cond_4b
    const/4 v7, 0x0

    .line 1796
    :goto_39
    invoke-static {v2, v7, v8, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->updatedVisibleItems(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v12

    .line 1800
    move v4, v0

    .line 1801
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 1802
    .line 1803
    iget-wide v1, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 1804
    .line 1805
    move v15, v6

    .line 1806
    move-object v9, v14

    .line 1807
    move-object/from16 v8, v29

    .line 1808
    .line 1809
    move/from16 v14, v35

    .line 1810
    .line 1811
    move/from16 v13, v36

    .line 1812
    .line 1813
    move/from16 v18, v41

    .line 1814
    .line 1815
    move/from16 v17, v42

    .line 1816
    .line 1817
    move/from16 v6, v52

    .line 1818
    .line 1819
    move/from16 v7, v53

    .line 1820
    .line 1821
    move-object/from16 v36, v10

    .line 1822
    .line 1823
    move-wide v10, v1

    .line 1824
    move/from16 v2, v27

    .line 1825
    .line 1826
    move-object/from16 v1, v39

    .line 1827
    .line 1828
    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 1829
    .line 1830
    .line 1831
    :goto_3a
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 1832
    .line 1833
    .line 1834
    move-result v1

    .line 1835
    move-object/from16 v14, v50

    .line 1836
    .line 1837
    const/4 v6, 0x0

    .line 1838
    invoke-virtual {v14, v0, v1, v6}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    .line 1839
    .line 1840
    .line 1841
    return-object v0

    .line 1842
    :goto_3b
    invoke-static {v5, v11, v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 1843
    .line 1844
    .line 1845
    throw v0

    .line 1846
    :cond_4c
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 1847
    .line 1848
    .line 1849
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 1850
    .line 1851
    .line 1852
    return-object v31
.end method


# virtual methods
.method public final measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 65

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-wide/from16 v10, p2

    .line 6
    .line 7
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$r8$classId:I

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v12, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 15
    .line 16
    move-object v13, v1

    .line 17
    check-cast v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 18
    .line 19
    iget-object v2, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 20
    .line 21
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-boolean v2, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v25, 0x0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/16 v25, 0x1

    .line 39
    .line 40
    :goto_1
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 41
    .line 42
    invoke-static {v10, v11, v2}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 50
    .line 51
    invoke-interface {v4, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-interface {v12, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {v4, v5}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-interface {v12, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-interface {v12, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-interface {v12, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    add-int/2addr v4, v6

    .line 88
    add-int/2addr v5, v3

    .line 89
    sub-int v18, v4, v6

    .line 90
    .line 91
    neg-int v7, v5

    .line 92
    neg-int v8, v4

    .line 93
    invoke-static {v7, v8, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    const/16 v30, 0x1

    .line 98
    .line 99
    iget-object v14, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 100
    .line 101
    invoke-interface {v14}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    check-cast v14, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 106
    .line 107
    iget-object v15, v14, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 108
    .line 109
    iget-object v15, v15, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->spanLayoutProvider:Lokhttp3/internal/http/RealInterceptorChain;

    .line 110
    .line 111
    move-object/from16 v16, v1

    .line 112
    .line 113
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    .line 116
    .line 117
    move-object/from16 v17, v2

    .line 118
    .line 119
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedSizes:Landroidx/cardview/widget/CardView$1;

    .line 120
    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    move v2, v4

    .line 124
    move/from16 v19, v5

    .line 125
    .line 126
    iget-wide v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedConstraints:J

    .line 127
    .line 128
    invoke-static {v4, v5, v7, v8}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_3

    .line 133
    .line 134
    iget v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedDensity:F

    .line 135
    .line 136
    invoke-interface {v12}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    cmpg-float v4, v4, v5

    .line 141
    .line 142
    if-nez v4, :cond_3

    .line 143
    .line 144
    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedSizes:Landroidx/cardview/widget/CardView$1;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_2
    move v2, v4

    .line 151
    move/from16 v19, v5

    .line 152
    .line 153
    :cond_3
    iput-wide v7, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedConstraints:J

    .line 154
    .line 155
    invoke-interface {v12}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    iput v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedDensity:F

    .line 160
    .line 161
    iget-object v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->calculation:Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 162
    .line 163
    new-instance v5, Landroidx/compose/ui/unit/Constraints;

    .line 164
    .line 165
    invoke-direct {v5, v7, v8}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v9, v5}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Landroidx/cardview/widget/CardView$1;

    .line 173
    .line 174
    iput-object v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedSizes:Landroidx/cardview/widget/CardView$1;

    .line 175
    .line 176
    move-object v1, v4

    .line 177
    :goto_2
    iget-object v4, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v4, [I

    .line 180
    .line 181
    array-length v4, v4

    .line 182
    iget v5, v15, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 183
    .line 184
    move-object/from16 v20, v14

    .line 185
    .line 186
    if-eq v4, v5, :cond_4

    .line 187
    .line 188
    iput v4, v15, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 189
    .line 190
    iget-object v5, v15, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 193
    .line 194
    .line 195
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 196
    .line 197
    const/4 v10, 0x0

    .line 198
    invoke-direct {v14, v10, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    iput v10, v15, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    .line 205
    .line 206
    iput v10, v15, Lokhttp3/internal/http/RealInterceptorChain;->connectTimeoutMillis:I

    .line 207
    .line 208
    iput v10, v15, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    .line 209
    .line 210
    const/4 v5, -0x1

    .line 211
    iput v5, v15, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeoutMillis:I

    .line 212
    .line 213
    iget-object v5, v15, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v5, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_4
    const/4 v10, 0x0

    .line 222
    :goto_3
    iget-object v14, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 223
    .line 224
    if-eqz v14, :cond_58

    .line 225
    .line 226
    invoke-interface {v14}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    invoke-interface {v12, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 231
    .line 232
    .line 233
    move-result v22

    .line 234
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->getItemCount()I

    .line 235
    .line 236
    .line 237
    move-result v21

    .line 238
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    sub-int/2addr v5, v2

    .line 243
    int-to-long v10, v3

    .line 244
    const/16 v32, 0x20

    .line 245
    .line 246
    shl-long v10, v10, v32

    .line 247
    .line 248
    move-object/from16 v23, v1

    .line 249
    .line 250
    move v3, v2

    .line 251
    int-to-long v1, v6

    .line 252
    const-wide v33, 0xffffffffL

    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    and-long v1, v1, v33

    .line 258
    .line 259
    or-long/2addr v1, v10

    .line 260
    new-instance v35, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    .line 261
    .line 262
    move-object/from16 v10, v16

    .line 263
    .line 264
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 265
    .line 266
    move-object v11, v10

    .line 267
    move v10, v5

    .line 268
    move-object v5, v11

    .line 269
    move/from16 v44, v3

    .line 270
    .line 271
    move/from16 v16, v4

    .line 272
    .line 273
    move-wide/from16 v42, v7

    .line 274
    .line 275
    move-object v3, v9

    .line 276
    move/from16 v7, v18

    .line 277
    .line 278
    move/from16 v11, v19

    .line 279
    .line 280
    move/from16 v4, v22

    .line 281
    .line 282
    move-wide v8, v1

    .line 283
    move-object/from16 v2, v20

    .line 284
    .line 285
    move-object/from16 v20, v23

    .line 286
    .line 287
    move-object/from16 v1, v35

    .line 288
    .line 289
    move-object/from16 v35, v17

    .line 290
    .line 291
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;ILandroidx/compose/foundation/lazy/grid/LazyGridState;IIJ)V

    .line 292
    .line 293
    .line 294
    move-object/from16 v22, v1

    .line 295
    .line 296
    move/from16 v19, v4

    .line 297
    .line 298
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 299
    .line 300
    move-object/from16 v24, v15

    .line 301
    .line 302
    move-object/from16 v23, v22

    .line 303
    .line 304
    move/from16 v22, v19

    .line 305
    .line 306
    move-object/from16 v19, v1

    .line 307
    .line 308
    invoke-direct/range {v19 .. v24}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;-><init>(Landroidx/cardview/widget/CardView$1;IILandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;Lokhttp3/internal/http/RealInterceptorChain;)V

    .line 309
    .line 310
    .line 311
    move-object/from16 v8, v19

    .line 312
    .line 313
    move/from16 v3, v21

    .line 314
    .line 315
    move/from16 v4, v22

    .line 316
    .line 317
    move-object/from16 v5, v23

    .line 318
    .line 319
    move-object/from16 v1, v24

    .line 320
    .line 321
    iget-object v9, v8, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v9, Lokhttp3/internal/http/RealInterceptorChain;

    .line 324
    .line 325
    move v15, v11

    .line 326
    new-instance v11, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 327
    .line 328
    move/from16 v36, v4

    .line 329
    .line 330
    const/16 v4, 0x1c

    .line 331
    .line 332
    invoke-direct {v11, v4, v1, v8}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    new-instance v4, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 336
    .line 337
    move/from16 v37, v7

    .line 338
    .line 339
    const/16 v7, 0x10

    .line 340
    .line 341
    invoke-direct {v4, v7, v1}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    if-eqz v7, :cond_5

    .line 349
    .line 350
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 351
    .line 352
    .line 353
    move-result-object v17

    .line 354
    move-object/from16 v38, v4

    .line 355
    .line 356
    move-object/from16 v4, v17

    .line 357
    .line 358
    :goto_4
    move-object/from16 v39, v11

    .line 359
    .line 360
    goto :goto_5

    .line 361
    :cond_5
    move-object/from16 v38, v4

    .line 362
    .line 363
    const/4 v4, 0x0

    .line 364
    goto :goto_4

    .line 365
    :goto_5
    invoke-static {v7}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    move/from16 v45, v15

    .line 370
    .line 371
    :try_start_0
    iget-object v15, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 372
    .line 373
    move-object/from16 v17, v14

    .line 374
    .line 375
    iget-object v14, v15, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 376
    .line 377
    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 378
    .line 379
    .line 380
    move-result v14

    .line 381
    move-object/from16 v18, v9

    .line 382
    .line 383
    iget-object v9, v15, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    .line 384
    .line 385
    invoke-static {v14, v2, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 386
    .line 387
    .line 388
    move-result v9

    .line 389
    if-eq v14, v9, :cond_6

    .line 390
    .line 391
    move/from16 v46, v10

    .line 392
    .line 393
    iget-object v10, v15, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 394
    .line 395
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 396
    .line 397
    .line 398
    iget-object v10, v15, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 399
    .line 400
    invoke-virtual {v10, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 401
    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_6
    move/from16 v46, v10

    .line 405
    .line 406
    :goto_6
    if-lt v9, v3, :cond_8

    .line 407
    .line 408
    if-gtz v3, :cond_7

    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_7
    add-int/lit8 v9, v3, -0x1

    .line 412
    .line 413
    invoke-virtual {v1, v9}, Lokhttp3/internal/http/RealInterceptorChain;->getLineIndexOfItem(I)I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    const/4 v9, 0x0

    .line 418
    goto :goto_8

    .line 419
    :catchall_0
    move-exception v0

    .line 420
    goto/16 :goto_4f

    .line 421
    .line 422
    :cond_8
    :goto_7
    invoke-virtual {v1, v9}, Lokhttp3/internal/http/RealInterceptorChain;->getLineIndexOfItem(I)I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    iget-object v9, v15, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 427
    .line 428
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 429
    .line 430
    .line 431
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :goto_8
    invoke-static {v7, v11, v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 433
    .line 434
    .line 435
    iget-object v4, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 436
    .line 437
    iget-object v7, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 438
    .line 439
    invoke-static {v2, v4, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-nez v4, :cond_a

    .line 448
    .line 449
    if-nez v25, :cond_9

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_9
    iget-object v4, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->_lazyLayoutScrollDeltaBetweenPasses:Landroidx/cardview/widget/CardView$1;

    .line 453
    .line 454
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    .line 457
    .line 458
    iget-object v4, v4, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 459
    .line 460
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    check-cast v4, Ljava/lang/Number;

    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    goto :goto_a

    .line 471
    :cond_a
    :goto_9
    iget v4, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 472
    .line 473
    :goto_a
    iget-object v7, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 474
    .line 475
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 476
    .line 477
    .line 478
    move-result v23

    .line 479
    iget-object v10, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 480
    .line 481
    iget-object v11, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 482
    .line 483
    if-ltz v6, :cond_b

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_b
    const-string v14, "negative beforeContentPadding"

    .line 487
    .line 488
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    :goto_b
    if-ltz v37, :cond_c

    .line 492
    .line 493
    goto :goto_c

    .line 494
    :cond_c
    const-string v14, "negative afterContentPadding"

    .line 495
    .line 496
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    :goto_c
    sget-object v15, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 500
    .line 501
    iget-object v14, v5, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 502
    .line 503
    move/from16 v19, v1

    .line 504
    .line 505
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 506
    .line 507
    move-object/from16 v28, v1

    .line 508
    .line 509
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 510
    .line 511
    move/from16 v20, v4

    .line 512
    .line 513
    move-object/from16 v22, v5

    .line 514
    .line 515
    const-wide/16 v4, 0x0

    .line 516
    .line 517
    move-object/from16 v40, v13

    .line 518
    .line 519
    sget-object v13, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 520
    .line 521
    if-gtz v3, :cond_e

    .line 522
    .line 523
    invoke-static/range {v42 .. v43}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 524
    .line 525
    .line 526
    move-result v18

    .line 527
    invoke-static/range {v42 .. v43}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 528
    .line 529
    .line 530
    move-result v19

    .line 531
    new-instance v20, Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .line 535
    .line 536
    iget-object v0, v14, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->keyIndexMap:Lde/cketti/changelog/XmlParser;

    .line 537
    .line 538
    const/16 v26, 0x0

    .line 539
    .line 540
    const/16 v27, 0x0

    .line 541
    .line 542
    const/16 v17, 0x0

    .line 543
    .line 544
    move-object/from16 v21, v0

    .line 545
    .line 546
    move-object/from16 v29, v1

    .line 547
    .line 548
    move/from16 v24, v16

    .line 549
    .line 550
    move-object/from16 v16, v7

    .line 551
    .line 552
    invoke-virtual/range {v16 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsqueryresult/DnsQueryResult;ZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 553
    .line 554
    .line 555
    if-nez v23, :cond_d

    .line 556
    .line 557
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 558
    .line 559
    .line 560
    move-result-wide v0

    .line 561
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-nez v2, :cond_d

    .line 566
    .line 567
    shr-long v2, v0, v32

    .line 568
    .line 569
    long-to-int v2, v2

    .line 570
    move-wide/from16 v3, v42

    .line 571
    .line 572
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 573
    .line 574
    .line 575
    move-result v18

    .line 576
    and-long v0, v0, v33

    .line 577
    .line 578
    long-to-int v0, v0

    .line 579
    invoke-static {v0, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 580
    .line 581
    .line 582
    move-result v19

    .line 583
    :cond_d
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 584
    .line 585
    const/16 v1, 0x1d

    .line 586
    .line 587
    invoke-direct {v0, v1}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 588
    .line 589
    .line 590
    add-int v1, v18, v45

    .line 591
    .line 592
    move-wide/from16 v2, p2

    .line 593
    .line 594
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    add-int v4, v19, v44

    .line 599
    .line 600
    invoke-static {v4, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    invoke-interface {v12, v1, v2, v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    neg-int v14, v6

    .line 609
    add-int v15, v46, v37

    .line 610
    .line 611
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 612
    .line 613
    const/4 v7, 0x0

    .line 614
    const/16 v16, 0x0

    .line 615
    .line 616
    const/4 v1, 0x0

    .line 617
    const/4 v2, 0x0

    .line 618
    const/4 v3, 0x0

    .line 619
    const/4 v4, 0x0

    .line 620
    const/4 v6, 0x0

    .line 621
    move-object/from16 v9, p1

    .line 622
    .line 623
    move-object/from16 v48, v12

    .line 624
    .line 625
    move/from16 v10, v24

    .line 626
    .line 627
    move-object/from16 v8, v28

    .line 628
    .line 629
    move-object/from16 v17, v35

    .line 630
    .line 631
    move/from16 v19, v36

    .line 632
    .line 633
    move/from16 v18, v37

    .line 634
    .line 635
    move-object/from16 v12, v38

    .line 636
    .line 637
    move-object/from16 v11, v39

    .line 638
    .line 639
    move-object/from16 v49, v40

    .line 640
    .line 641
    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 642
    .line 643
    .line 644
    :goto_d
    move-object v11, v0

    .line 645
    goto/16 :goto_4e

    .line 646
    .line 647
    :cond_e
    move-object/from16 v29, v1

    .line 648
    .line 649
    move/from16 v21, v9

    .line 650
    .line 651
    move-object/from16 v50, v11

    .line 652
    .line 653
    move-object/from16 v48, v12

    .line 654
    .line 655
    move/from16 v24, v16

    .line 656
    .line 657
    move-object/from16 v12, v22

    .line 658
    .line 659
    move-object/from16 v51, v35

    .line 660
    .line 661
    move/from16 v1, v36

    .line 662
    .line 663
    move-object/from16 v31, v38

    .line 664
    .line 665
    move-object/from16 v11, v39

    .line 666
    .line 667
    move-object/from16 v49, v40

    .line 668
    .line 669
    move-object/from16 v9, p1

    .line 670
    .line 671
    move-object/from16 v16, v7

    .line 672
    .line 673
    move/from16 v7, v37

    .line 674
    .line 675
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 676
    .line 677
    .line 678
    move-result v22

    .line 679
    sub-int v21, v21, v22

    .line 680
    .line 681
    if-nez v19, :cond_f

    .line 682
    .line 683
    if-gez v21, :cond_f

    .line 684
    .line 685
    add-int v22, v22, v21

    .line 686
    .line 687
    const/16 v21, 0x0

    .line 688
    .line 689
    :cond_f
    new-instance v4, Lkotlin/collections/ArrayDeque;

    .line 690
    .line 691
    invoke-direct {v4}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 692
    .line 693
    .line 694
    neg-int v5, v6

    .line 695
    if-gez v1, :cond_10

    .line 696
    .line 697
    move/from16 v35, v1

    .line 698
    .line 699
    move/from16 v52, v35

    .line 700
    .line 701
    goto :goto_e

    .line 702
    :cond_10
    move/from16 v52, v1

    .line 703
    .line 704
    const/16 v35, 0x0

    .line 705
    .line 706
    :goto_e
    add-int v1, v5, v35

    .line 707
    .line 708
    add-int v21, v21, v1

    .line 709
    .line 710
    move/from16 v53, v5

    .line 711
    .line 712
    move/from16 v5, v21

    .line 713
    .line 714
    :goto_f
    if-gez v5, :cond_11

    .line 715
    .line 716
    if-lez v19, :cond_11

    .line 717
    .line 718
    move/from16 v54, v7

    .line 719
    .line 720
    add-int/lit8 v7, v19, -0x1

    .line 721
    .line 722
    move-object/from16 v55, v11

    .line 723
    .line 724
    invoke-virtual {v8, v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 725
    .line 726
    .line 727
    move-result-object v11

    .line 728
    move/from16 v19, v7

    .line 729
    .line 730
    const/4 v7, 0x0

    .line 731
    invoke-virtual {v4, v7, v11}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 732
    .line 733
    .line 734
    iget v11, v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 735
    .line 736
    add-int/2addr v5, v11

    .line 737
    move/from16 v7, v54

    .line 738
    .line 739
    move-object/from16 v11, v55

    .line 740
    .line 741
    goto :goto_f

    .line 742
    :cond_11
    move/from16 v54, v7

    .line 743
    .line 744
    move-object/from16 v55, v11

    .line 745
    .line 746
    const/4 v7, 0x0

    .line 747
    if-ge v5, v1, :cond_12

    .line 748
    .line 749
    sub-int v5, v1, v5

    .line 750
    .line 751
    sub-int v22, v22, v5

    .line 752
    .line 753
    move v5, v1

    .line 754
    :cond_12
    move/from16 v11, v22

    .line 755
    .line 756
    sub-int/2addr v5, v1

    .line 757
    add-int v47, v46, v54

    .line 758
    .line 759
    if-gez v47, :cond_13

    .line 760
    .line 761
    :goto_10
    move-object/from16 v21, v13

    .line 762
    .line 763
    goto :goto_11

    .line 764
    :cond_13
    move/from16 v7, v47

    .line 765
    .line 766
    goto :goto_10

    .line 767
    :goto_11
    neg-int v13, v5

    .line 768
    move/from16 v22, v5

    .line 769
    .line 770
    move-object/from16 v57, v15

    .line 771
    .line 772
    move/from16 v36, v19

    .line 773
    .line 774
    const/4 v5, 0x0

    .line 775
    const/16 v35, 0x0

    .line 776
    .line 777
    :goto_12
    iget v15, v4, Lkotlin/collections/ArrayDeque;->size:I

    .line 778
    .line 779
    if-ge v5, v15, :cond_15

    .line 780
    .line 781
    if-lt v13, v7, :cond_14

    .line 782
    .line 783
    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move/from16 v35, v30

    .line 787
    .line 788
    goto :goto_12

    .line 789
    :cond_14
    add-int/lit8 v36, v36, 0x1

    .line 790
    .line 791
    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v15

    .line 795
    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 796
    .line 797
    iget v15, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 798
    .line 799
    add-int/2addr v13, v15

    .line 800
    add-int/lit8 v5, v5, 0x1

    .line 801
    .line 802
    goto :goto_12

    .line 803
    :cond_15
    move/from16 v15, v22

    .line 804
    .line 805
    move/from16 v58, v35

    .line 806
    .line 807
    move/from16 v5, v36

    .line 808
    .line 809
    :goto_13
    if-ge v5, v3, :cond_17

    .line 810
    .line 811
    if-lt v13, v7, :cond_16

    .line 812
    .line 813
    if-lez v13, :cond_16

    .line 814
    .line 815
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 816
    .line 817
    .line 818
    move-result v22

    .line 819
    if-eqz v22, :cond_17

    .line 820
    .line 821
    :cond_16
    move/from16 v22, v7

    .line 822
    .line 823
    goto :goto_15

    .line 824
    :cond_17
    move/from16 v37, v15

    .line 825
    .line 826
    :goto_14
    move/from16 v5, v46

    .line 827
    .line 828
    goto :goto_18

    .line 829
    :goto_15
    invoke-virtual {v8, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 830
    .line 831
    .line 832
    move-result-object v7

    .line 833
    move/from16 v35, v5

    .line 834
    .line 835
    iget v5, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 836
    .line 837
    move/from16 v36, v5

    .line 838
    .line 839
    iget-object v5, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 840
    .line 841
    move/from16 v37, v15

    .line 842
    .line 843
    array-length v15, v5

    .line 844
    if-nez v15, :cond_18

    .line 845
    .line 846
    goto :goto_14

    .line 847
    :cond_18
    add-int v13, v13, v36

    .line 848
    .line 849
    if-gt v13, v1, :cond_1a

    .line 850
    .line 851
    array-length v15, v5

    .line 852
    if-eqz v15, :cond_19

    .line 853
    .line 854
    array-length v15, v5

    .line 855
    add-int/lit8 v15, v15, -0x1

    .line 856
    .line 857
    aget-object v5, v5, v15

    .line 858
    .line 859
    iget v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 860
    .line 861
    add-int/lit8 v15, v3, -0x1

    .line 862
    .line 863
    if-eq v5, v15, :cond_1a

    .line 864
    .line 865
    add-int/lit8 v5, v35, 0x1

    .line 866
    .line 867
    sub-int v15, v37, v36

    .line 868
    .line 869
    move/from16 v19, v5

    .line 870
    .line 871
    move/from16 v58, v30

    .line 872
    .line 873
    goto :goto_17

    .line 874
    :cond_19
    const-string v0, "Array is empty."

    .line 875
    .line 876
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    :goto_16
    const/4 v11, 0x0

    .line 880
    goto/16 :goto_50

    .line 881
    .line 882
    :cond_1a
    invoke-virtual {v4, v7}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 883
    .line 884
    .line 885
    move/from16 v15, v37

    .line 886
    .line 887
    :goto_17
    add-int/lit8 v5, v35, 0x1

    .line 888
    .line 889
    move/from16 v7, v22

    .line 890
    .line 891
    goto :goto_13

    .line 892
    :goto_18
    if-ge v13, v5, :cond_1c

    .line 893
    .line 894
    sub-int v1, v5, v13

    .line 895
    .line 896
    sub-int v15, v37, v1

    .line 897
    .line 898
    add-int/2addr v13, v1

    .line 899
    :goto_19
    if-ge v15, v6, :cond_1b

    .line 900
    .line 901
    if-lez v19, :cond_1b

    .line 902
    .line 903
    add-int/lit8 v7, v19, -0x1

    .line 904
    .line 905
    move/from16 v19, v1

    .line 906
    .line 907
    invoke-virtual {v8, v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    move/from16 v46, v6

    .line 912
    .line 913
    const/4 v6, 0x0

    .line 914
    invoke-virtual {v4, v6, v1}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 915
    .line 916
    .line 917
    iget v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 918
    .line 919
    add-int/2addr v15, v1

    .line 920
    move/from16 v1, v19

    .line 921
    .line 922
    move/from16 v6, v46

    .line 923
    .line 924
    move/from16 v19, v7

    .line 925
    .line 926
    goto :goto_19

    .line 927
    :cond_1b
    move/from16 v19, v1

    .line 928
    .line 929
    move/from16 v46, v6

    .line 930
    .line 931
    add-int v1, v11, v19

    .line 932
    .line 933
    if-gez v15, :cond_1d

    .line 934
    .line 935
    add-int/2addr v1, v15

    .line 936
    add-int/2addr v13, v15

    .line 937
    const/4 v15, 0x0

    .line 938
    goto :goto_1a

    .line 939
    :cond_1c
    move/from16 v46, v6

    .line 940
    .line 941
    move v1, v11

    .line 942
    move/from16 v15, v37

    .line 943
    .line 944
    :cond_1d
    :goto_1a
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 945
    .line 946
    .line 947
    move-result v6

    .line 948
    invoke-static {v6}, Ljava/lang/Integer;->signum(I)I

    .line 949
    .line 950
    .line 951
    move-result v6

    .line 952
    invoke-static {v1}, Ljava/lang/Integer;->signum(I)I

    .line 953
    .line 954
    .line 955
    move-result v7

    .line 956
    if-ne v6, v7, :cond_1e

    .line 957
    .line 958
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 959
    .line 960
    .line 961
    move-result v6

    .line 962
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 963
    .line 964
    .line 965
    move-result v6

    .line 966
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 967
    .line 968
    .line 969
    move-result v7

    .line 970
    if-lt v6, v7, :cond_1e

    .line 971
    .line 972
    int-to-float v6, v1

    .line 973
    goto :goto_1b

    .line 974
    :cond_1e
    move/from16 v6, v20

    .line 975
    .line 976
    :goto_1b
    sub-float v7, v20, v6

    .line 977
    .line 978
    const/16 v19, 0x0

    .line 979
    .line 980
    if-eqz v23, :cond_1f

    .line 981
    .line 982
    if-le v1, v11, :cond_1f

    .line 983
    .line 984
    cmpg-float v20, v7, v19

    .line 985
    .line 986
    if-gtz v20, :cond_1f

    .line 987
    .line 988
    sub-int/2addr v1, v11

    .line 989
    int-to-float v1, v1

    .line 990
    add-float v19, v1, v7

    .line 991
    .line 992
    :cond_1f
    move/from16 v1, v19

    .line 993
    .line 994
    if-ltz v15, :cond_20

    .line 995
    .line 996
    goto :goto_1c

    .line 997
    :cond_20
    const-string v7, "negative initial offset"

    .line 998
    .line 999
    invoke-static {v7}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    :goto_1c
    neg-int v7, v15

    .line 1003
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v11

    .line 1007
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1008
    .line 1009
    move/from16 v59, v1

    .line 1010
    .line 1011
    if-eqz v11, :cond_21

    .line 1012
    .line 1013
    iget-object v1, v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1014
    .line 1015
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v1

    .line 1019
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1020
    .line 1021
    if-eqz v1, :cond_21

    .line 1022
    .line 1023
    iget v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1024
    .line 1025
    goto :goto_1d

    .line 1026
    :cond_21
    const/4 v1, 0x0

    .line 1027
    :goto_1d
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v19

    .line 1031
    move/from16 v20, v7

    .line 1032
    .line 1033
    move-object/from16 v7, v19

    .line 1034
    .line 1035
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1036
    .line 1037
    if-eqz v7, :cond_23

    .line 1038
    .line 1039
    iget-object v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1040
    .line 1041
    move-object/from16 v19, v11

    .line 1042
    .line 1043
    array-length v11, v7

    .line 1044
    if-nez v11, :cond_22

    .line 1045
    .line 1046
    const/4 v7, 0x0

    .line 1047
    goto :goto_1e

    .line 1048
    :cond_22
    array-length v11, v7

    .line 1049
    add-int/lit8 v11, v11, -0x1

    .line 1050
    .line 1051
    aget-object v7, v7, v11

    .line 1052
    .line 1053
    :goto_1e
    if-eqz v7, :cond_24

    .line 1054
    .line 1055
    iget v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1056
    .line 1057
    goto :goto_1f

    .line 1058
    :cond_23
    move-object/from16 v19, v11

    .line 1059
    .line 1060
    :cond_24
    const/4 v7, 0x0

    .line 1061
    :goto_1f
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 1062
    .line 1063
    .line 1064
    move-result v11

    .line 1065
    move/from16 v60, v15

    .line 1066
    .line 1067
    const/4 v15, 0x0

    .line 1068
    const/16 v22, 0x0

    .line 1069
    .line 1070
    :goto_20
    if-ge v15, v11, :cond_27

    .line 1071
    .line 1072
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v35

    .line 1076
    check-cast v35, Ljava/lang/Number;

    .line 1077
    .line 1078
    move/from16 v61, v11

    .line 1079
    .line 1080
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Number;->intValue()I

    .line 1081
    .line 1082
    .line 1083
    move-result v11

    .line 1084
    if-ltz v11, :cond_26

    .line 1085
    .line 1086
    if-ge v11, v1, :cond_26

    .line 1087
    .line 1088
    move/from16 v62, v1

    .line 1089
    .line 1090
    move-object/from16 v1, v18

    .line 1091
    .line 1092
    move/from16 v18, v15

    .line 1093
    .line 1094
    iget v15, v1, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 1095
    .line 1096
    invoke-virtual {v1, v11}, Lokhttp3/internal/http/RealInterceptorChain;->spanOf(I)I

    .line 1097
    .line 1098
    .line 1099
    move-result v15

    .line 1100
    move/from16 v36, v11

    .line 1101
    .line 1102
    const/4 v11, 0x0

    .line 1103
    invoke-virtual {v8, v11, v15}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->childConstraints-JhjzzOo$foundation(II)J

    .line 1104
    .line 1105
    .line 1106
    move-result-wide v37

    .line 1107
    const/16 v39, 0x0

    .line 1108
    .line 1109
    iget v11, v12, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->defaultMainAxisSpacing:I

    .line 1110
    .line 1111
    move/from16 v41, v11

    .line 1112
    .line 1113
    move-object/from16 v35, v12

    .line 1114
    .line 1115
    move/from16 v40, v15

    .line 1116
    .line 1117
    invoke-virtual/range {v35 .. v41}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v11

    .line 1121
    if-nez v22, :cond_25

    .line 1122
    .line 1123
    new-instance v15, Ljava/util/ArrayList;

    .line 1124
    .line 1125
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .line 1127
    .line 1128
    goto :goto_21

    .line 1129
    :cond_25
    move-object/from16 v15, v22

    .line 1130
    .line 1131
    :goto_21
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    .line 1133
    .line 1134
    move-object/from16 v22, v15

    .line 1135
    .line 1136
    goto :goto_22

    .line 1137
    :cond_26
    move/from16 v62, v1

    .line 1138
    .line 1139
    move-object/from16 v1, v18

    .line 1140
    .line 1141
    move/from16 v18, v15

    .line 1142
    .line 1143
    :goto_22
    add-int/lit8 v15, v18, 0x1

    .line 1144
    .line 1145
    move-object/from16 v18, v1

    .line 1146
    .line 1147
    move/from16 v11, v61

    .line 1148
    .line 1149
    move/from16 v1, v62

    .line 1150
    .line 1151
    goto :goto_20

    .line 1152
    :cond_27
    move/from16 v62, v1

    .line 1153
    .line 1154
    move-object/from16 v1, v18

    .line 1155
    .line 1156
    if-nez v22, :cond_28

    .line 1157
    .line 1158
    move-object/from16 v11, v21

    .line 1159
    .line 1160
    goto :goto_23

    .line 1161
    :cond_28
    move-object/from16 v11, v22

    .line 1162
    .line 1163
    :goto_23
    if-eqz v23, :cond_33

    .line 1164
    .line 1165
    if-eqz v10, :cond_33

    .line 1166
    .line 1167
    iget-object v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 1168
    .line 1169
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 1170
    .line 1171
    .line 1172
    move-result v15

    .line 1173
    if-nez v15, :cond_33

    .line 1174
    .line 1175
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 1176
    .line 1177
    .line 1178
    move-result v15

    .line 1179
    add-int/lit8 v15, v15, -0x1

    .line 1180
    .line 1181
    :goto_24
    const/4 v0, -0x1

    .line 1182
    if-ge v0, v15, :cond_2b

    .line 1183
    .line 1184
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1189
    .line 1190
    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1191
    .line 1192
    if-le v0, v7, :cond_2a

    .line 1193
    .line 1194
    if-eqz v15, :cond_29

    .line 1195
    .line 1196
    add-int/lit8 v0, v15, -0x1

    .line 1197
    .line 1198
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1203
    .line 1204
    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1205
    .line 1206
    if-gt v0, v7, :cond_2a

    .line 1207
    .line 1208
    :cond_29
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1213
    .line 1214
    goto :goto_25

    .line 1215
    :cond_2a
    add-int/lit8 v15, v15, -0x1

    .line 1216
    .line 1217
    goto :goto_24

    .line 1218
    :cond_2b
    const/4 v0, 0x0

    .line 1219
    :goto_25
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v10

    .line 1223
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1224
    .line 1225
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v15

    .line 1229
    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1230
    .line 1231
    if-eqz v15, :cond_2c

    .line 1232
    .line 1233
    iget v15, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->index:I

    .line 1234
    .line 1235
    add-int/lit8 v15, v15, 0x1

    .line 1236
    .line 1237
    goto :goto_26

    .line 1238
    :cond_2c
    const/4 v15, 0x0

    .line 1239
    :goto_26
    if-eqz v0, :cond_33

    .line 1240
    .line 1241
    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1242
    .line 1243
    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1244
    .line 1245
    move/from16 v61, v7

    .line 1246
    .line 1247
    add-int/lit8 v7, v3, -0x1

    .line 1248
    .line 1249
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    .line 1250
    .line 1251
    .line 1252
    move-result v7

    .line 1253
    if-gt v0, v7, :cond_32

    .line 1254
    .line 1255
    const/4 v10, 0x0

    .line 1256
    :goto_27
    if-eqz v10, :cond_30

    .line 1257
    .line 1258
    move-object/from16 v63, v14

    .line 1259
    .line 1260
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 1261
    .line 1262
    .line 1263
    move-result v14

    .line 1264
    move/from16 v64, v6

    .line 1265
    .line 1266
    const/4 v6, 0x0

    .line 1267
    :goto_28
    if-ge v6, v14, :cond_2f

    .line 1268
    .line 1269
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v18

    .line 1273
    move/from16 v22, v6

    .line 1274
    .line 1275
    move-object/from16 v6, v18

    .line 1276
    .line 1277
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1278
    .line 1279
    iget-object v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1280
    .line 1281
    move-object/from16 v18, v10

    .line 1282
    .line 1283
    array-length v10, v6

    .line 1284
    move-object/from16 v35, v6

    .line 1285
    .line 1286
    const/4 v6, 0x0

    .line 1287
    :goto_29
    if-ge v6, v10, :cond_2e

    .line 1288
    .line 1289
    move/from16 v36, v6

    .line 1290
    .line 1291
    aget-object v6, v35, v36

    .line 1292
    .line 1293
    iget v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1294
    .line 1295
    if-ne v6, v0, :cond_2d

    .line 1296
    .line 1297
    move-object/from16 v10, v18

    .line 1298
    .line 1299
    goto :goto_2d

    .line 1300
    :cond_2d
    add-int/lit8 v6, v36, 0x1

    .line 1301
    .line 1302
    goto :goto_29

    .line 1303
    :cond_2e
    add-int/lit8 v6, v22, 0x1

    .line 1304
    .line 1305
    move-object/from16 v10, v18

    .line 1306
    .line 1307
    goto :goto_28

    .line 1308
    :cond_2f
    :goto_2a
    move-object/from16 v18, v10

    .line 1309
    .line 1310
    goto :goto_2b

    .line 1311
    :cond_30
    move/from16 v64, v6

    .line 1312
    .line 1313
    move-object/from16 v63, v14

    .line 1314
    .line 1315
    goto :goto_2a

    .line 1316
    :goto_2b
    if-nez v18, :cond_31

    .line 1317
    .line 1318
    new-instance v6, Ljava/util/ArrayList;

    .line 1319
    .line 1320
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1321
    .line 1322
    .line 1323
    move-object v10, v6

    .line 1324
    goto :goto_2c

    .line 1325
    :cond_31
    move-object/from16 v10, v18

    .line 1326
    .line 1327
    :goto_2c
    invoke-virtual {v8, v15}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v6

    .line 1331
    add-int/lit8 v15, v15, 0x1

    .line 1332
    .line 1333
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    .line 1335
    .line 1336
    :goto_2d
    if-eq v0, v7, :cond_34

    .line 1337
    .line 1338
    add-int/lit8 v0, v0, 0x1

    .line 1339
    .line 1340
    move-object/from16 v14, v63

    .line 1341
    .line 1342
    move/from16 v6, v64

    .line 1343
    .line 1344
    goto :goto_27

    .line 1345
    :cond_32
    move/from16 v64, v6

    .line 1346
    .line 1347
    :goto_2e
    move-object/from16 v63, v14

    .line 1348
    .line 1349
    goto :goto_2f

    .line 1350
    :cond_33
    move/from16 v64, v6

    .line 1351
    .line 1352
    move/from16 v61, v7

    .line 1353
    .line 1354
    goto :goto_2e

    .line 1355
    :goto_2f
    const/4 v10, 0x0

    .line 1356
    :cond_34
    if-nez v10, :cond_35

    .line 1357
    .line 1358
    move-object/from16 v10, v21

    .line 1359
    .line 1360
    :cond_35
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 1361
    .line 1362
    .line 1363
    move-result v0

    .line 1364
    const/4 v6, 0x0

    .line 1365
    const/4 v15, 0x0

    .line 1366
    :goto_30
    if-ge v15, v0, :cond_3c

    .line 1367
    .line 1368
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v7

    .line 1372
    check-cast v7, Ljava/lang/Number;

    .line 1373
    .line 1374
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 1375
    .line 1376
    .line 1377
    move-result v7

    .line 1378
    add-int/lit8 v14, v61, 0x1

    .line 1379
    .line 1380
    if-gt v14, v7, :cond_3b

    .line 1381
    .line 1382
    if-ge v7, v3, :cond_3b

    .line 1383
    .line 1384
    if-eqz v23, :cond_39

    .line 1385
    .line 1386
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 1387
    .line 1388
    .line 1389
    move-result v14

    .line 1390
    move/from16 v18, v0

    .line 1391
    .line 1392
    const/4 v0, 0x0

    .line 1393
    :goto_31
    if-ge v0, v14, :cond_38

    .line 1394
    .line 1395
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v22

    .line 1399
    move/from16 v35, v0

    .line 1400
    .line 1401
    move-object/from16 v0, v22

    .line 1402
    .line 1403
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1404
    .line 1405
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1406
    .line 1407
    move-object/from16 v22, v2

    .line 1408
    .line 1409
    array-length v2, v0

    .line 1410
    move-object/from16 v36, v0

    .line 1411
    .line 1412
    const/4 v0, 0x0

    .line 1413
    :goto_32
    if-ge v0, v2, :cond_37

    .line 1414
    .line 1415
    move/from16 v37, v0

    .line 1416
    .line 1417
    aget-object v0, v36, v37

    .line 1418
    .line 1419
    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1420
    .line 1421
    if-ne v0, v7, :cond_36

    .line 1422
    .line 1423
    goto :goto_35

    .line 1424
    :cond_36
    add-int/lit8 v0, v37, 0x1

    .line 1425
    .line 1426
    goto :goto_32

    .line 1427
    :cond_37
    add-int/lit8 v0, v35, 0x1

    .line 1428
    .line 1429
    move-object/from16 v2, v22

    .line 1430
    .line 1431
    goto :goto_31

    .line 1432
    :cond_38
    :goto_33
    move-object/from16 v22, v2

    .line 1433
    .line 1434
    goto :goto_34

    .line 1435
    :cond_39
    move/from16 v18, v0

    .line 1436
    .line 1437
    goto :goto_33

    .line 1438
    :goto_34
    iget v0, v1, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 1439
    .line 1440
    invoke-virtual {v1, v7}, Lokhttp3/internal/http/RealInterceptorChain;->spanOf(I)I

    .line 1441
    .line 1442
    .line 1443
    move-result v0

    .line 1444
    const/4 v2, 0x0

    .line 1445
    invoke-virtual {v8, v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->childConstraints-JhjzzOo$foundation(II)J

    .line 1446
    .line 1447
    .line 1448
    move-result-wide v37

    .line 1449
    const/16 v39, 0x0

    .line 1450
    .line 1451
    iget v2, v12, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->defaultMainAxisSpacing:I

    .line 1452
    .line 1453
    move/from16 v40, v0

    .line 1454
    .line 1455
    move/from16 v41, v2

    .line 1456
    .line 1457
    move/from16 v36, v7

    .line 1458
    .line 1459
    move-object/from16 v35, v12

    .line 1460
    .line 1461
    invoke-virtual/range {v35 .. v41}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v0

    .line 1465
    if-nez v6, :cond_3a

    .line 1466
    .line 1467
    new-instance v2, Ljava/util/ArrayList;

    .line 1468
    .line 1469
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    .line 1471
    .line 1472
    move-object v6, v2

    .line 1473
    :cond_3a
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    .line 1475
    .line 1476
    goto :goto_35

    .line 1477
    :cond_3b
    move/from16 v18, v0

    .line 1478
    .line 1479
    move-object/from16 v22, v2

    .line 1480
    .line 1481
    :goto_35
    add-int/lit8 v15, v15, 0x1

    .line 1482
    .line 1483
    move/from16 v0, v18

    .line 1484
    .line 1485
    move-object/from16 v2, v22

    .line 1486
    .line 1487
    goto :goto_30

    .line 1488
    :cond_3c
    if-nez v6, :cond_3d

    .line 1489
    .line 1490
    move-object/from16 v6, v21

    .line 1491
    .line 1492
    :cond_3d
    if-gtz v46, :cond_3f

    .line 1493
    .line 1494
    if-gez v52, :cond_3e

    .line 1495
    .line 1496
    goto :goto_37

    .line 1497
    :cond_3e
    move/from16 v2, v60

    .line 1498
    .line 1499
    :goto_36
    move-object/from16 v1, v19

    .line 1500
    .line 1501
    goto :goto_39

    .line 1502
    :cond_3f
    :goto_37
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1503
    .line 1504
    .line 1505
    move-result v0

    .line 1506
    move/from16 v1, v60

    .line 1507
    .line 1508
    const/4 v15, 0x0

    .line 1509
    :goto_38
    if-ge v15, v0, :cond_40

    .line 1510
    .line 1511
    invoke-virtual {v4, v15}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v2

    .line 1515
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1516
    .line 1517
    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 1518
    .line 1519
    if-eqz v1, :cond_40

    .line 1520
    .line 1521
    if-gt v2, v1, :cond_40

    .line 1522
    .line 1523
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1524
    .line 1525
    .line 1526
    move-result v7

    .line 1527
    add-int/lit8 v7, v7, -0x1

    .line 1528
    .line 1529
    if-eq v15, v7, :cond_40

    .line 1530
    .line 1531
    sub-int/2addr v1, v2

    .line 1532
    add-int/lit8 v15, v15, 0x1

    .line 1533
    .line 1534
    invoke-virtual {v4, v15}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v2

    .line 1538
    move-object/from16 v19, v2

    .line 1539
    .line 1540
    check-cast v19, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1541
    .line 1542
    goto :goto_38

    .line 1543
    :cond_40
    move v2, v1

    .line 1544
    goto :goto_36

    .line 1545
    :goto_39
    invoke-static/range {v42 .. v43}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1546
    .line 1547
    .line 1548
    move-result v0

    .line 1549
    move-wide/from16 v14, v42

    .line 1550
    .line 1551
    invoke-static {v13, v14, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 1552
    .line 1553
    .line 1554
    move-result v7

    .line 1555
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 1556
    .line 1557
    .line 1558
    move-result v18

    .line 1559
    if-eqz v18, :cond_41

    .line 1560
    .line 1561
    goto :goto_3a

    .line 1562
    :cond_41
    invoke-static {v4, v10}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v4

    .line 1566
    :goto_3a
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 1567
    .line 1568
    .line 1569
    move-result v10

    .line 1570
    if-ge v13, v10, :cond_42

    .line 1571
    .line 1572
    move/from16 v10, v30

    .line 1573
    .line 1574
    goto :goto_3b

    .line 1575
    :cond_42
    const/4 v10, 0x0

    .line 1576
    :goto_3b
    if-eqz v10, :cond_44

    .line 1577
    .line 1578
    if-nez v20, :cond_43

    .line 1579
    .line 1580
    goto :goto_3c

    .line 1581
    :cond_43
    const-string v18, "non-zero firstLineScrollOffset"

    .line 1582
    .line 1583
    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1584
    .line 1585
    .line 1586
    :cond_44
    :goto_3c
    move-object/from16 v35, v1

    .line 1587
    .line 1588
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1589
    .line 1590
    .line 1591
    move-result v1

    .line 1592
    move/from16 v18, v2

    .line 1593
    .line 1594
    move/from16 v36, v3

    .line 1595
    .line 1596
    const/4 v2, 0x0

    .line 1597
    const/4 v3, 0x0

    .line 1598
    :goto_3d
    if-ge v2, v1, :cond_45

    .line 1599
    .line 1600
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v19

    .line 1604
    move/from16 v21, v1

    .line 1605
    .line 1606
    move-object/from16 v1, v19

    .line 1607
    .line 1608
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1609
    .line 1610
    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1611
    .line 1612
    array-length v1, v1

    .line 1613
    add-int/2addr v3, v1

    .line 1614
    add-int/lit8 v2, v2, 0x1

    .line 1615
    .line 1616
    move/from16 v1, v21

    .line 1617
    .line 1618
    goto :goto_3d

    .line 1619
    :cond_45
    new-instance v1, Ljava/util/ArrayList;

    .line 1620
    .line 1621
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1622
    .line 1623
    .line 1624
    if-eqz v10, :cond_4d

    .line 1625
    .line 1626
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 1627
    .line 1628
    .line 1629
    move-result v2

    .line 1630
    if-eqz v2, :cond_46

    .line 1631
    .line 1632
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1633
    .line 1634
    .line 1635
    move-result v2

    .line 1636
    if-eqz v2, :cond_46

    .line 1637
    .line 1638
    goto :goto_3e

    .line 1639
    :cond_46
    const-string v2, "no items"

    .line 1640
    .line 1641
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1642
    .line 1643
    .line 1644
    :goto_3e
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1645
    .line 1646
    .line 1647
    move-result v2

    .line 1648
    new-array v3, v2, [I

    .line 1649
    .line 1650
    const/4 v6, 0x0

    .line 1651
    :goto_3f
    if-ge v6, v2, :cond_47

    .line 1652
    .line 1653
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v10

    .line 1657
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1658
    .line 1659
    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSize:I

    .line 1660
    .line 1661
    aput v10, v3, v6

    .line 1662
    .line 1663
    add-int/lit8 v6, v6, 0x1

    .line 1664
    .line 1665
    goto :goto_3f

    .line 1666
    :cond_47
    new-array v2, v2, [I

    .line 1667
    .line 1668
    if-eqz v17, :cond_4c

    .line 1669
    .line 1670
    move-object/from16 v6, v17

    .line 1671
    .line 1672
    invoke-interface {v6, v9, v7, v3, v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 1673
    .line 1674
    .line 1675
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v3

    .line 1679
    iget v6, v3, Lkotlin/ranges/IntProgression;->first:I

    .line 1680
    .line 1681
    iget v10, v3, Lkotlin/ranges/IntProgression;->last:I

    .line 1682
    .line 1683
    iget v3, v3, Lkotlin/ranges/IntProgression;->step:I

    .line 1684
    .line 1685
    if-lez v3, :cond_48

    .line 1686
    .line 1687
    if-le v6, v10, :cond_49

    .line 1688
    .line 1689
    :cond_48
    if-gez v3, :cond_4b

    .line 1690
    .line 1691
    if-gt v10, v6, :cond_4b

    .line 1692
    .line 1693
    :cond_49
    :goto_40
    aget v11, v2, v6

    .line 1694
    .line 1695
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v17

    .line 1699
    move-object/from16 v19, v2

    .line 1700
    .line 1701
    move-object/from16 v2, v17

    .line 1702
    .line 1703
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1704
    .line 1705
    invoke-virtual {v2, v11, v0, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v2

    .line 1709
    array-length v11, v2

    .line 1710
    move-object/from16 v17, v2

    .line 1711
    .line 1712
    const/4 v2, 0x0

    .line 1713
    :goto_41
    if-ge v2, v11, :cond_4a

    .line 1714
    .line 1715
    move/from16 v20, v2

    .line 1716
    .line 1717
    aget-object v2, v17, v20

    .line 1718
    .line 1719
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    .line 1721
    .line 1722
    add-int/lit8 v2, v20, 0x1

    .line 1723
    .line 1724
    goto :goto_41

    .line 1725
    :cond_4a
    if-eq v6, v10, :cond_4b

    .line 1726
    .line 1727
    add-int/2addr v6, v3

    .line 1728
    move-object/from16 v2, v19

    .line 1729
    .line 1730
    goto :goto_40

    .line 1731
    :cond_4b
    move/from16 v4, v64

    .line 1732
    .line 1733
    const/4 v10, 0x0

    .line 1734
    goto/16 :goto_47

    .line 1735
    .line 1736
    :cond_4c
    const-string v0, "null verticalArrangement"

    .line 1737
    .line 1738
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 1739
    .line 1740
    .line 1741
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 1742
    .line 1743
    .line 1744
    goto/16 :goto_16

    .line 1745
    .line 1746
    :cond_4d
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 1747
    .line 1748
    .line 1749
    move-result v2

    .line 1750
    const/16 v26, -0x1

    .line 1751
    .line 1752
    add-int/lit8 v2, v2, -0x1

    .line 1753
    .line 1754
    if-ltz v2, :cond_4f

    .line 1755
    .line 1756
    move/from16 v3, v20

    .line 1757
    .line 1758
    :goto_42
    add-int/lit8 v10, v2, -0x1

    .line 1759
    .line 1760
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v2

    .line 1764
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1765
    .line 1766
    move/from16 v17, v3

    .line 1767
    .line 1768
    iget v3, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1769
    .line 1770
    sub-int v3, v17, v3

    .line 1771
    .line 1772
    const/4 v9, 0x0

    .line 1773
    invoke-virtual {v2, v3, v9, v0, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    .line 1778
    .line 1779
    if-gez v10, :cond_4e

    .line 1780
    .line 1781
    goto :goto_43

    .line 1782
    :cond_4e
    move-object/from16 v9, p1

    .line 1783
    .line 1784
    move v2, v10

    .line 1785
    goto :goto_42

    .line 1786
    :cond_4f
    :goto_43
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1787
    .line 1788
    .line 1789
    move-result v2

    .line 1790
    move/from16 v3, v20

    .line 1791
    .line 1792
    const/4 v9, 0x0

    .line 1793
    :goto_44
    if-ge v9, v2, :cond_51

    .line 1794
    .line 1795
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v10

    .line 1799
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1800
    .line 1801
    invoke-virtual {v10, v3, v0, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v11

    .line 1805
    move/from16 v17, v2

    .line 1806
    .line 1807
    array-length v2, v11

    .line 1808
    move/from16 v19, v3

    .line 1809
    .line 1810
    const/4 v3, 0x0

    .line 1811
    :goto_45
    if-ge v3, v2, :cond_50

    .line 1812
    .line 1813
    move/from16 v20, v2

    .line 1814
    .line 1815
    aget-object v2, v11, v3

    .line 1816
    .line 1817
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    .line 1819
    .line 1820
    add-int/lit8 v3, v3, 0x1

    .line 1821
    .line 1822
    move/from16 v2, v20

    .line 1823
    .line 1824
    goto :goto_45

    .line 1825
    :cond_50
    iget v2, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 1826
    .line 1827
    add-int v3, v19, v2

    .line 1828
    .line 1829
    add-int/lit8 v9, v9, 0x1

    .line 1830
    .line 1831
    move/from16 v2, v17

    .line 1832
    .line 1833
    goto :goto_44

    .line 1834
    :cond_51
    move/from16 v19, v3

    .line 1835
    .line 1836
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 1837
    .line 1838
    .line 1839
    move-result v2

    .line 1840
    const/4 v4, 0x0

    .line 1841
    :goto_46
    if-ge v4, v2, :cond_52

    .line 1842
    .line 1843
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v9

    .line 1847
    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1848
    .line 1849
    const/4 v10, 0x0

    .line 1850
    invoke-virtual {v9, v3, v10, v0, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    .line 1855
    .line 1856
    iget v9, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1857
    .line 1858
    add-int/2addr v3, v9

    .line 1859
    add-int/lit8 v4, v4, 0x1

    .line 1860
    .line 1861
    goto :goto_46

    .line 1862
    :cond_52
    const/4 v10, 0x0

    .line 1863
    move/from16 v4, v64

    .line 1864
    .line 1865
    :goto_47
    float-to-int v2, v4

    .line 1866
    move-object/from16 v3, v63

    .line 1867
    .line 1868
    iget-object v6, v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->keyIndexMap:Lde/cketti/changelog/XmlParser;

    .line 1869
    .line 1870
    move-object/from16 v20, v1

    .line 1871
    .line 1872
    move/from16 v17, v2

    .line 1873
    .line 1874
    move-object/from16 v21, v6

    .line 1875
    .line 1876
    move/from16 v19, v7

    .line 1877
    .line 1878
    move-object/from16 v22, v12

    .line 1879
    .line 1880
    move/from16 v27, v13

    .line 1881
    .line 1882
    move/from16 v26, v18

    .line 1883
    .line 1884
    move/from16 v18, v0

    .line 1885
    .line 1886
    invoke-virtual/range {v16 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsqueryresult/DnsQueryResult;ZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 1887
    .line 1888
    .line 1889
    move/from16 v56, v10

    .line 1890
    .line 1891
    move-object/from16 v6, v20

    .line 1892
    .line 1893
    move/from16 v1, v23

    .line 1894
    .line 1895
    move/from16 v10, v24

    .line 1896
    .line 1897
    move/from16 v2, v26

    .line 1898
    .line 1899
    if-nez v1, :cond_54

    .line 1900
    .line 1901
    move v9, v1

    .line 1902
    move/from16 v26, v2

    .line 1903
    .line 1904
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 1905
    .line 1906
    .line 1907
    move-result-wide v1

    .line 1908
    move/from16 v25, v9

    .line 1909
    .line 1910
    move v11, v10

    .line 1911
    const-wide/16 v9, 0x0

    .line 1912
    .line 1913
    invoke-static {v1, v2, v9, v10}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 1914
    .line 1915
    .line 1916
    move-result v9

    .line 1917
    if-nez v9, :cond_55

    .line 1918
    .line 1919
    shr-long v9, v1, v32

    .line 1920
    .line 1921
    long-to-int v9, v9

    .line 1922
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    .line 1923
    .line 1924
    .line 1925
    move-result v0

    .line 1926
    invoke-static {v0, v14, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 1927
    .line 1928
    .line 1929
    move-result v0

    .line 1930
    and-long v1, v1, v33

    .line 1931
    .line 1932
    long-to-int v1, v1

    .line 1933
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 1934
    .line 1935
    .line 1936
    move-result v1

    .line 1937
    invoke-static {v1, v14, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 1938
    .line 1939
    .line 1940
    move-result v1

    .line 1941
    if-eq v1, v7, :cond_53

    .line 1942
    .line 1943
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1944
    .line 1945
    .line 1946
    move-result v2

    .line 1947
    move/from16 v15, v56

    .line 1948
    .line 1949
    :goto_48
    if-ge v15, v2, :cond_53

    .line 1950
    .line 1951
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v7

    .line 1955
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1956
    .line 1957
    iput v1, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    .line 1958
    .line 1959
    iget v9, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    .line 1960
    .line 1961
    add-int/2addr v9, v1

    .line 1962
    iput v9, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    .line 1963
    .line 1964
    add-int/lit8 v15, v15, 0x1

    .line 1965
    .line 1966
    goto :goto_48

    .line 1967
    :cond_53
    move/from16 v23, v1

    .line 1968
    .line 1969
    :goto_49
    move/from16 v22, v0

    .line 1970
    .line 1971
    goto :goto_4a

    .line 1972
    :cond_54
    move/from16 v25, v1

    .line 1973
    .line 1974
    move/from16 v26, v2

    .line 1975
    .line 1976
    move v11, v10

    .line 1977
    :cond_55
    move/from16 v23, v7

    .line 1978
    .line 1979
    goto :goto_49

    .line 1980
    :goto_4a
    iget-object v0, v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 1981
    .line 1982
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1983
    .line 1984
    .line 1985
    sget-object v20, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    .line 1986
    .line 1987
    new-instance v0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 1988
    .line 1989
    const/16 v1, 0x1d

    .line 1990
    .line 1991
    invoke-direct {v0, v1, v8, v12}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1992
    .line 1993
    .line 1994
    move-object/from16 v1, p0

    .line 1995
    .line 1996
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    .line 1997
    .line 1998
    move-object/from16 v24, v0

    .line 1999
    .line 2000
    move-object/from16 v16, v1

    .line 2001
    .line 2002
    move-object/from16 v19, v6

    .line 2003
    .line 2004
    move/from16 v21, v46

    .line 2005
    .line 2006
    move/from16 v18, v61

    .line 2007
    .line 2008
    move/from16 v17, v62

    .line 2009
    .line 2010
    invoke-static/range {v16 .. v24}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;IILjava/util/ArrayList;Landroidx/collection/MutableIntList;IIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v0

    .line 2014
    move/from16 v1, v17

    .line 2015
    .line 2016
    move/from16 v7, v18

    .line 2017
    .line 2018
    move/from16 v2, v22

    .line 2019
    .line 2020
    move/from16 v3, v23

    .line 2021
    .line 2022
    add-int/lit8 v6, v36, -0x1

    .line 2023
    .line 2024
    if-ne v7, v6, :cond_57

    .line 2025
    .line 2026
    if-le v13, v5, :cond_56

    .line 2027
    .line 2028
    goto :goto_4c

    .line 2029
    :cond_56
    move/from16 v14, v56

    .line 2030
    .line 2031
    :goto_4b
    move-object/from16 v20, v19

    .line 2032
    .line 2033
    goto :goto_4d

    .line 2034
    :cond_57
    :goto_4c
    move/from16 v14, v30

    .line 2035
    .line 2036
    goto :goto_4b

    .line 2037
    :goto_4d
    new-instance v19, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda1;

    .line 2038
    .line 2039
    const/16 v24, 0x1

    .line 2040
    .line 2041
    move-object/from16 v22, v0

    .line 2042
    .line 2043
    move-object/from16 v21, v20

    .line 2044
    .line 2045
    move/from16 v23, v25

    .line 2046
    .line 2047
    move-object/from16 v20, v50

    .line 2048
    .line 2049
    invoke-direct/range {v19 .. v24}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    .line 2050
    .line 2051
    .line 2052
    move-object/from16 v5, v19

    .line 2053
    .line 2054
    move-object/from16 v6, v21

    .line 2055
    .line 2056
    add-int v2, v2, v45

    .line 2057
    .line 2058
    move-wide/from16 v8, p2

    .line 2059
    .line 2060
    invoke-static {v2, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 2061
    .line 2062
    .line 2063
    move-result v2

    .line 2064
    add-int v3, v3, v44

    .line 2065
    .line 2066
    invoke-static {v3, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 2067
    .line 2068
    .line 2069
    move-result v3

    .line 2070
    move-object/from16 v8, v48

    .line 2071
    .line 2072
    move-object/from16 v9, v57

    .line 2073
    .line 2074
    invoke-interface {v8, v2, v3, v9, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v5

    .line 2078
    invoke-static {v1, v7, v6, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->updatedVisibleItems(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v13

    .line 2082
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 2083
    .line 2084
    move-object/from16 v9, p1

    .line 2085
    .line 2086
    move v10, v11

    .line 2087
    move v3, v14

    .line 2088
    move/from16 v2, v26

    .line 2089
    .line 2090
    move-object/from16 v8, v28

    .line 2091
    .line 2092
    move-object/from16 v12, v31

    .line 2093
    .line 2094
    move-object/from16 v1, v35

    .line 2095
    .line 2096
    move/from16 v16, v36

    .line 2097
    .line 2098
    move/from16 v15, v47

    .line 2099
    .line 2100
    move-object/from16 v17, v51

    .line 2101
    .line 2102
    move/from16 v19, v52

    .line 2103
    .line 2104
    move/from16 v14, v53

    .line 2105
    .line 2106
    move/from16 v18, v54

    .line 2107
    .line 2108
    move-object/from16 v11, v55

    .line 2109
    .line 2110
    move/from16 v7, v58

    .line 2111
    .line 2112
    move/from16 v6, v59

    .line 2113
    .line 2114
    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 2115
    .line 2116
    .line 2117
    goto/16 :goto_d

    .line 2118
    .line 2119
    :goto_4e
    invoke-interface/range {v48 .. v48}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 2120
    .line 2121
    .line 2122
    move-result v0

    .line 2123
    move-object/from16 v1, v49

    .line 2124
    .line 2125
    const/4 v10, 0x0

    .line 2126
    invoke-virtual {v1, v11, v0, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V

    .line 2127
    .line 2128
    .line 2129
    goto :goto_50

    .line 2130
    :goto_4f
    invoke-static {v7, v11, v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 2131
    .line 2132
    .line 2133
    throw v0

    .line 2134
    :cond_58
    const-string v0, "null verticalArrangement when isVertical == true"

    .line 2135
    .line 2136
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 2137
    .line 2138
    .line 2139
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 2140
    .line 2141
    .line 2142
    goto/16 :goto_16

    .line 2143
    .line 2144
    :goto_50
    return-object v11

    .line 2145
    :pswitch_0
    move-object v1, v0

    .line 2146
    move-wide v8, v10

    .line 2147
    invoke-direct/range {p0 .. p3}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->measure-0kLqBqw$androidx$compose$foundation$lazy$LazyListKt$rememberLazyListMeasurePolicy$1$1(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v0

    .line 2151
    return-object v0

    .line 2152
    nop

    .line 2153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
