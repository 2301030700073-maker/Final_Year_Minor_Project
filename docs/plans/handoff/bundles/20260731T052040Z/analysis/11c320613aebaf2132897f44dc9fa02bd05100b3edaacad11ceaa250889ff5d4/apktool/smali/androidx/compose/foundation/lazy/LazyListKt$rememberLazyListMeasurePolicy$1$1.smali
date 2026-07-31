.class public final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# instance fields
.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field public final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic $stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

.field public final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;Landroidx/compose/ui/BiasAlignment$Horizontal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 15
    .line 16
    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 54

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
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-static {v1, v2, v1, v2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v16

    .line 13
    iget-object v1, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/compose/foundation/lazy/LazyListState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 18
    .line 19
    iget-object v4, v2, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Lcoil3/util/AndroidSystemCallbacks;

    .line 20
    .line 21
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-boolean v3, v2, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v24, 0x0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/16 v24, 0x1

    .line 39
    .line 40
    :goto_1
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 41
    .line 42
    invoke-static {v14, v15, v3}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 50
    .line 51
    invoke-interface {v8, v7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-interface {v1, v7}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-interface {v8, v10}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    invoke-interface {v1, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    invoke-interface {v8}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    invoke-interface {v1, v11}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    invoke-interface {v8}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    invoke-interface {v1, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    add-int/2addr v8, v11

    .line 88
    add-int/2addr v10, v7

    .line 89
    sub-int v17, v8, v11

    .line 90
    .line 91
    neg-int v12, v10

    .line 92
    neg-int v13, v8

    .line 93
    invoke-static {v12, v14, v15, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 94
    .line 95
    .line 96
    move-result-wide v12

    .line 97
    iget-object v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 98
    .line 99
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 104
    .line 105
    iget-object v6, v5, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 106
    .line 107
    move-object/from16 v20, v2

    .line 108
    .line 109
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    move-object/from16 v21, v3

    .line 114
    .line 115
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    move-object/from16 v22, v4

    .line 120
    .line 121
    iget-object v4, v6, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidthState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 122
    .line 123
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeightState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 129
    .line 130
    .line 131
    const-string v23, "null verticalArrangement when isVertical == true"

    .line 132
    .line 133
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 134
    .line 135
    const/16 v27, 0x0

    .line 136
    .line 137
    if-eqz v2, :cond_60

    .line 138
    .line 139
    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getItemCount()I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    sub-int/2addr v4, v8

    .line 156
    move-object/from16 v25, v1

    .line 157
    .line 158
    move-object/from16 v26, v2

    .line 159
    .line 160
    int-to-long v1, v7

    .line 161
    const/16 v7, 0x20

    .line 162
    .line 163
    shl-long/2addr v1, v7

    .line 164
    move-wide/from16 v28, v1

    .line 165
    .line 166
    int-to-long v1, v11

    .line 167
    const-wide v30, 0xffffffffL

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    and-long v1, v1, v30

    .line 173
    .line 174
    or-long v1, v28, v1

    .line 175
    .line 176
    move v7, v3

    .line 177
    move v9, v11

    .line 178
    move-wide/from16 v52, v12

    .line 179
    .line 180
    move-wide v11, v1

    .line 181
    move-wide/from16 v2, v52

    .line 182
    .line 183
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    .line 184
    .line 185
    move v13, v8

    .line 186
    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 187
    .line 188
    move/from16 v28, v13

    .line 189
    .line 190
    iget-object v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 191
    .line 192
    move/from16 v34, v4

    .line 193
    .line 194
    move-object v4, v5

    .line 195
    move/from16 v33, v10

    .line 196
    .line 197
    move/from16 v35, v16

    .line 198
    .line 199
    move/from16 v10, v17

    .line 200
    .line 201
    move-object/from16 v15, v20

    .line 202
    .line 203
    move-object/from16 v16, v21

    .line 204
    .line 205
    move-object/from16 v14, v22

    .line 206
    .line 207
    move-object/from16 v37, v25

    .line 208
    .line 209
    move-object/from16 v36, v26

    .line 210
    .line 211
    move/from16 v29, v28

    .line 212
    .line 213
    move-object/from16 v5, p1

    .line 214
    .line 215
    invoke-direct/range {v1 .. v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(JLandroidx/compose/foundation/lazy/LazyListItemProviderImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IILandroidx/compose/ui/BiasAlignment$Horizontal;IIJLandroidx/compose/foundation/lazy/LazyListState;)V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    if-eqz v5, :cond_2

    .line 223
    .line 224
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    goto :goto_2

    .line 229
    :cond_2
    move-object/from16 v8, v27

    .line 230
    .line 231
    :goto_2
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    :try_start_0
    iget-object v12, v14, Lcoil3/util/AndroidSystemCallbacks;->imageLoader:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v12, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 238
    .line 239
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    iget-object v13, v14, Lcoil3/util/AndroidSystemCallbacks;->componentCallbacks:Ljava/lang/Object;

    .line 244
    .line 245
    invoke-static {v12, v4, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    if-eq v12, v13, :cond_3

    .line 250
    .line 251
    move/from16 v38, v7

    .line 252
    .line 253
    iget-object v7, v14, Lcoil3/util/AndroidSystemCallbacks;->imageLoader:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v7, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 256
    .line 257
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 258
    .line 259
    .line 260
    iget-object v7, v14, Lcoil3/util/AndroidSystemCallbacks;->application:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 263
    .line 264
    invoke-virtual {v7, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    goto/16 :goto_4e

    .line 270
    .line 271
    :cond_3
    move/from16 v38, v7

    .line 272
    .line 273
    :goto_3
    iget-object v7, v14, Lcoil3/util/AndroidSystemCallbacks;->activityCallbacks:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v7, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 276
    .line 277
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 278
    .line 279
    .line 280
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-static {v5, v11, v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 282
    .line 283
    .line 284
    iget-object v5, v15, Landroidx/compose/foundation/lazy/LazyListState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 285
    .line 286
    iget-object v8, v15, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 287
    .line 288
    invoke-static {v4, v5, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-interface/range {v37 .. v37}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-nez v5, :cond_5

    .line 297
    .line 298
    if-nez v24, :cond_4

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_4
    iget-object v5, v15, Landroidx/compose/foundation/lazy/LazyListState;->_lazyLayoutScrollDeltaBetweenPasses:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 302
    .line 303
    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->_scrollDeltaBetweenPasses:Landroidx/compose/animation/core/AnimationState;

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
    iget v5, v15, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 319
    .line 320
    :goto_5
    iget-object v8, v15, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 321
    .line 322
    move-object/from16 v11, v23

    .line 323
    .line 324
    invoke-interface/range {v37 .. v37}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 325
    .line 326
    .line 327
    move-result v23

    .line 328
    iget-object v12, v15, Landroidx/compose/foundation/lazy/LazyListState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 329
    .line 330
    if-ltz v9, :cond_6

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_6
    const-string v14, "invalid beforeContentPadding"

    .line 334
    .line 335
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :goto_6
    if-ltz v10, :cond_7

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_7
    const-string v14, "invalid afterContentPadding"

    .line 342
    .line 343
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :goto_7
    sget-object v14, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 347
    .line 348
    move/from16 v17, v5

    .line 349
    .line 350
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 351
    .line 352
    move/from16 v18, v17

    .line 353
    .line 354
    move-object/from16 v17, v8

    .line 355
    .line 356
    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 357
    .line 358
    move-object/from16 v22, v1

    .line 359
    .line 360
    move-object v1, v12

    .line 361
    sget-object v12, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 362
    .line 363
    if-gtz v6, :cond_9

    .line 364
    .line 365
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 366
    .line 367
    .line 368
    move-result v18

    .line 369
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 370
    .line 371
    .line 372
    move-result v19

    .line 373
    new-instance v20, Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .line 377
    .line 378
    iget-object v0, v5, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Lcom/grack/nanojson/JsonParser;

    .line 379
    .line 380
    const/16 v25, 0x0

    .line 381
    .line 382
    const/16 v26, 0x0

    .line 383
    .line 384
    move-object/from16 v21, v0

    .line 385
    .line 386
    invoke-virtual/range {v17 .. v26}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IILjava/util/ArrayList;Lcom/grack/nanojson/JsonParser;Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;ZZII)V

    .line 387
    .line 388
    .line 389
    move-object/from16 v0, v22

    .line 390
    .line 391
    if-nez v23, :cond_8

    .line 392
    .line 393
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 394
    .line 395
    .line 396
    if-nez v35, :cond_8

    .line 397
    .line 398
    const/4 v1, 0x0

    .line 399
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 400
    .line 401
    .line 402
    move-result v18

    .line 403
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 404
    .line 405
    .line 406
    move-result v19

    .line 407
    goto :goto_8

    .line 408
    :cond_8
    const/4 v1, 0x0

    .line 409
    :goto_8
    new-instance v2, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;

    .line 410
    .line 411
    const/16 v3, 0x16

    .line 412
    .line 413
    invoke-direct {v2, v3}, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 414
    .line 415
    .line 416
    add-int v3, v18, v33

    .line 417
    .line 418
    move-wide/from16 v4, p2

    .line 419
    .line 420
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    add-int v6, v19, v29

    .line 425
    .line 426
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    move-object/from16 v5, v37

    .line 431
    .line 432
    invoke-interface {v5, v3, v4, v14, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    neg-int v13, v9

    .line 437
    add-int v14, v34, v10

    .line 438
    .line 439
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 440
    .line 441
    const/4 v7, 0x0

    .line 442
    move-object/from16 v20, v15

    .line 443
    .line 444
    const/4 v15, 0x0

    .line 445
    move/from16 v28, v1

    .line 446
    .line 447
    move-object v5, v2

    .line 448
    move-object v4, v3

    .line 449
    const/4 v3, 0x0

    .line 450
    move-object v6, v4

    .line 451
    const/4 v4, 0x0

    .line 452
    move-object v9, v6

    .line 453
    const/4 v6, 0x0

    .line 454
    iget-wide v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 455
    .line 456
    move-object v0, v9

    .line 457
    move/from16 v17, v10

    .line 458
    .line 459
    move-object/from16 v41, v20

    .line 460
    .line 461
    move-object/from16 v39, v37

    .line 462
    .line 463
    move/from16 v18, v38

    .line 464
    .line 465
    move-object/from16 v9, p1

    .line 466
    .line 467
    move-wide v10, v1

    .line 468
    const/4 v1, 0x0

    .line 469
    const/4 v2, 0x0

    .line 470
    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 471
    .line 472
    .line 473
    :goto_9
    move-object v3, v0

    .line 474
    goto/16 :goto_4d

    .line 475
    .line 476
    :cond_9
    move/from16 v19, v7

    .line 477
    .line 478
    move-object/from16 v28, v12

    .line 479
    .line 480
    move-object/from16 v41, v15

    .line 481
    .line 482
    move-object/from16 v12, v22

    .line 483
    .line 484
    move/from16 v7, v34

    .line 485
    .line 486
    move-object/from16 v39, v37

    .line 487
    .line 488
    move-object/from16 v37, v8

    .line 489
    .line 490
    move-object v15, v11

    .line 491
    move-object/from16 v34, v16

    .line 492
    .line 493
    move-object/from16 v8, p1

    .line 494
    .line 495
    move/from16 v16, v10

    .line 496
    .line 497
    if-lt v13, v6, :cond_a

    .line 498
    .line 499
    add-int/lit8 v13, v6, -0x1

    .line 500
    .line 501
    const/16 v19, 0x0

    .line 502
    .line 503
    :cond_a
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    .line 504
    .line 505
    .line 506
    move-result v20

    .line 507
    sub-int v19, v19, v20

    .line 508
    .line 509
    if-nez v13, :cond_b

    .line 510
    .line 511
    if-gez v19, :cond_b

    .line 512
    .line 513
    add-int v20, v20, v19

    .line 514
    .line 515
    const/16 v19, 0x0

    .line 516
    .line 517
    :cond_b
    move/from16 v21, v13

    .line 518
    .line 519
    new-instance v13, Lkotlin/collections/ArrayDeque;

    .line 520
    .line 521
    invoke-direct {v13}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 522
    .line 523
    .line 524
    move-object/from16 v22, v15

    .line 525
    .line 526
    neg-int v15, v9

    .line 527
    if-gez v38, :cond_c

    .line 528
    .line 529
    move/from16 v25, v38

    .line 530
    .line 531
    :goto_a
    move-object/from16 v42, v14

    .line 532
    .line 533
    goto :goto_b

    .line 534
    :cond_c
    const/16 v25, 0x0

    .line 535
    .line 536
    goto :goto_a

    .line 537
    :goto_b
    add-int v14, v15, v25

    .line 538
    .line 539
    add-int v19, v19, v14

    .line 540
    .line 541
    move-object/from16 v43, v1

    .line 542
    .line 543
    move/from16 v11, v19

    .line 544
    .line 545
    const/4 v10, 0x0

    .line 546
    :goto_c
    iget-wide v0, v12, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 547
    .line 548
    if-gez v11, :cond_d

    .line 549
    .line 550
    if-lez v21, :cond_d

    .line 551
    .line 552
    move/from16 v44, v15

    .line 553
    .line 554
    add-int/lit8 v15, v21, -0x1

    .line 555
    .line 556
    invoke-virtual {v12, v15, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    const/4 v1, 0x0

    .line 561
    invoke-virtual {v13, v1, v0}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 565
    .line 566
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 567
    .line 568
    .line 569
    move-result v10

    .line 570
    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 571
    .line 572
    add-int/2addr v11, v0

    .line 573
    move/from16 v21, v15

    .line 574
    .line 575
    move/from16 v15, v44

    .line 576
    .line 577
    goto :goto_c

    .line 578
    :cond_d
    move/from16 v44, v15

    .line 579
    .line 580
    const/4 v15, 0x0

    .line 581
    if-ge v11, v14, :cond_e

    .line 582
    .line 583
    sub-int v11, v14, v11

    .line 584
    .line 585
    sub-int v20, v20, v11

    .line 586
    .line 587
    move v11, v14

    .line 588
    :cond_e
    move/from16 v45, v20

    .line 589
    .line 590
    sub-int/2addr v11, v14

    .line 591
    add-int v40, v7, v16

    .line 592
    .line 593
    if-gez v40, :cond_f

    .line 594
    .line 595
    :goto_d
    move/from16 v19, v10

    .line 596
    .line 597
    goto :goto_e

    .line 598
    :cond_f
    move/from16 v15, v40

    .line 599
    .line 600
    goto :goto_d

    .line 601
    :goto_e
    neg-int v10, v11

    .line 602
    move-object/from16 v46, v5

    .line 603
    .line 604
    move/from16 v25, v11

    .line 605
    .line 606
    move/from16 v26, v21

    .line 607
    .line 608
    const/16 v20, 0x0

    .line 609
    .line 610
    move v11, v10

    .line 611
    const/4 v10, 0x0

    .line 612
    :goto_f
    iget v5, v13, Lkotlin/collections/ArrayDeque;->size:I

    .line 613
    .line 614
    if-ge v10, v5, :cond_11

    .line 615
    .line 616
    if-lt v11, v15, :cond_10

    .line 617
    .line 618
    invoke-virtual {v13, v10}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    const/16 v20, 0x1

    .line 622
    .line 623
    goto :goto_f

    .line 624
    :cond_10
    add-int/lit8 v26, v26, 0x1

    .line 625
    .line 626
    invoke-virtual {v13, v10}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 631
    .line 632
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 633
    .line 634
    add-int/2addr v11, v5

    .line 635
    add-int/lit8 v10, v10, 0x1

    .line 636
    .line 637
    goto :goto_f

    .line 638
    :cond_11
    move/from16 v10, v19

    .line 639
    .line 640
    move/from16 v47, v20

    .line 641
    .line 642
    move/from16 v5, v26

    .line 643
    .line 644
    :goto_10
    if-ge v5, v6, :cond_13

    .line 645
    .line 646
    if-lt v11, v15, :cond_12

    .line 647
    .line 648
    if-lez v11, :cond_12

    .line 649
    .line 650
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 651
    .line 652
    .line 653
    move-result v19

    .line 654
    if-eqz v19, :cond_13

    .line 655
    .line 656
    :cond_12
    move/from16 v19, v15

    .line 657
    .line 658
    goto :goto_11

    .line 659
    :cond_13
    move/from16 v48, v6

    .line 660
    .line 661
    goto :goto_13

    .line 662
    :goto_11
    invoke-virtual {v12, v5, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 663
    .line 664
    .line 665
    move-result-object v15

    .line 666
    move/from16 v48, v6

    .line 667
    .line 668
    iget v6, v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 669
    .line 670
    add-int/2addr v11, v6

    .line 671
    if-gt v11, v14, :cond_14

    .line 672
    .line 673
    move/from16 v20, v6

    .line 674
    .line 675
    add-int/lit8 v6, v48, -0x1

    .line 676
    .line 677
    if-eq v5, v6, :cond_14

    .line 678
    .line 679
    add-int/lit8 v6, v5, 0x1

    .line 680
    .line 681
    sub-int v25, v25, v20

    .line 682
    .line 683
    move/from16 v21, v6

    .line 684
    .line 685
    const/16 v47, 0x1

    .line 686
    .line 687
    goto :goto_12

    .line 688
    :cond_14
    iget v6, v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 689
    .line 690
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    .line 691
    .line 692
    .line 693
    move-result v6

    .line 694
    invoke-virtual {v13, v15}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    move v10, v6

    .line 698
    :goto_12
    add-int/lit8 v5, v5, 0x1

    .line 699
    .line 700
    move/from16 v15, v19

    .line 701
    .line 702
    move/from16 v6, v48

    .line 703
    .line 704
    goto :goto_10

    .line 705
    :goto_13
    if-ge v11, v7, :cond_17

    .line 706
    .line 707
    sub-int v6, v7, v11

    .line 708
    .line 709
    sub-int v25, v25, v6

    .line 710
    .line 711
    add-int/2addr v11, v6

    .line 712
    move v14, v10

    .line 713
    move/from16 v10, v25

    .line 714
    .line 715
    :goto_14
    if-ge v10, v9, :cond_15

    .line 716
    .line 717
    if-lez v21, :cond_15

    .line 718
    .line 719
    add-int/lit8 v15, v21, -0x1

    .line 720
    .line 721
    move/from16 v19, v6

    .line 722
    .line 723
    invoke-virtual {v12, v15, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 724
    .line 725
    .line 726
    move-result-object v6

    .line 727
    move/from16 v20, v9

    .line 728
    .line 729
    const/4 v9, 0x0

    .line 730
    invoke-virtual {v13, v9, v6}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    iget v9, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 734
    .line 735
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    .line 736
    .line 737
    .line 738
    move-result v14

    .line 739
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 740
    .line 741
    add-int/2addr v10, v6

    .line 742
    move/from16 v21, v15

    .line 743
    .line 744
    move/from16 v6, v19

    .line 745
    .line 746
    move/from16 v9, v20

    .line 747
    .line 748
    goto :goto_14

    .line 749
    :cond_15
    move/from16 v19, v6

    .line 750
    .line 751
    move/from16 v20, v9

    .line 752
    .line 753
    move/from16 v6, v45

    .line 754
    .line 755
    add-int v45, v6, v19

    .line 756
    .line 757
    if-gez v10, :cond_16

    .line 758
    .line 759
    add-int v45, v45, v10

    .line 760
    .line 761
    add-int/2addr v11, v10

    .line 762
    move/from16 v9, v21

    .line 763
    .line 764
    move/from16 v15, v45

    .line 765
    .line 766
    const/4 v10, 0x0

    .line 767
    goto :goto_15

    .line 768
    :cond_16
    move/from16 v9, v21

    .line 769
    .line 770
    move/from16 v15, v45

    .line 771
    .line 772
    goto :goto_15

    .line 773
    :cond_17
    move/from16 v20, v9

    .line 774
    .line 775
    move/from16 v6, v45

    .line 776
    .line 777
    move v15, v6

    .line 778
    move v14, v10

    .line 779
    move/from16 v9, v21

    .line 780
    .line 781
    move/from16 v10, v25

    .line 782
    .line 783
    :goto_15
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    .line 784
    .line 785
    .line 786
    move-result v19

    .line 787
    move/from16 v21, v14

    .line 788
    .line 789
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->signum(I)I

    .line 790
    .line 791
    .line 792
    move-result v14

    .line 793
    move/from16 v45, v5

    .line 794
    .line 795
    invoke-static {v15}, Ljava/lang/Integer;->signum(I)I

    .line 796
    .line 797
    .line 798
    move-result v5

    .line 799
    if-ne v14, v5, :cond_18

    .line 800
    .line 801
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    .line 802
    .line 803
    .line 804
    move-result v5

    .line 805
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 806
    .line 807
    .line 808
    move-result v5

    .line 809
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 810
    .line 811
    .line 812
    move-result v14

    .line 813
    if-lt v5, v14, :cond_18

    .line 814
    .line 815
    int-to-float v5, v15

    .line 816
    goto :goto_16

    .line 817
    :cond_18
    move/from16 v5, v18

    .line 818
    .line 819
    :goto_16
    sub-float v14, v18, v5

    .line 820
    .line 821
    const/16 v18, 0x0

    .line 822
    .line 823
    if-eqz v23, :cond_19

    .line 824
    .line 825
    if-le v15, v6, :cond_19

    .line 826
    .line 827
    cmpg-float v19, v14, v18

    .line 828
    .line 829
    if-gtz v19, :cond_19

    .line 830
    .line 831
    sub-int/2addr v15, v6

    .line 832
    int-to-float v6, v15

    .line 833
    add-float v18, v6, v14

    .line 834
    .line 835
    :cond_19
    move/from16 v6, v18

    .line 836
    .line 837
    if-ltz v10, :cond_1a

    .line 838
    .line 839
    goto :goto_17

    .line 840
    :cond_1a
    const-string v14, "negative currentFirstItemScrollOffset"

    .line 841
    .line 842
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    :goto_17
    neg-int v14, v10

    .line 846
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v15

    .line 850
    check-cast v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 851
    .line 852
    if-gtz v20, :cond_1b

    .line 853
    .line 854
    if-gez v38, :cond_1c

    .line 855
    .line 856
    :cond_1b
    move/from16 v49, v5

    .line 857
    .line 858
    goto :goto_19

    .line 859
    :cond_1c
    move/from16 v49, v5

    .line 860
    .line 861
    move/from16 v25, v10

    .line 862
    .line 863
    const/16 v32, 0x1

    .line 864
    .line 865
    :goto_18
    const/4 v5, 0x0

    .line 866
    goto :goto_1b

    .line 867
    :goto_19
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 868
    .line 869
    .line 870
    move-result v5

    .line 871
    move-object/from16 v18, v15

    .line 872
    .line 873
    move v15, v10

    .line 874
    const/4 v10, 0x0

    .line 875
    :goto_1a
    if-ge v10, v5, :cond_1d

    .line 876
    .line 877
    invoke-virtual {v13, v10}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v19

    .line 881
    move/from16 v20, v5

    .line 882
    .line 883
    move-object/from16 v5, v19

    .line 884
    .line 885
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 886
    .line 887
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 888
    .line 889
    if-eqz v15, :cond_1d

    .line 890
    .line 891
    if-gt v5, v15, :cond_1d

    .line 892
    .line 893
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 894
    .line 895
    .line 896
    move-result v19

    .line 897
    move/from16 v25, v5

    .line 898
    .line 899
    const/16 v32, 0x1

    .line 900
    .line 901
    add-int/lit8 v5, v19, -0x1

    .line 902
    .line 903
    if-eq v10, v5, :cond_1e

    .line 904
    .line 905
    sub-int v15, v15, v25

    .line 906
    .line 907
    add-int/lit8 v10, v10, 0x1

    .line 908
    .line 909
    invoke-virtual {v13, v10}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v5

    .line 913
    move-object/from16 v18, v5

    .line 914
    .line 915
    check-cast v18, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 916
    .line 917
    move/from16 v5, v20

    .line 918
    .line 919
    goto :goto_1a

    .line 920
    :cond_1d
    const/16 v32, 0x1

    .line 921
    .line 922
    :cond_1e
    move/from16 v25, v15

    .line 923
    .line 924
    move-object/from16 v15, v18

    .line 925
    .line 926
    goto :goto_18

    .line 927
    :goto_1b
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    .line 928
    .line 929
    .line 930
    move-result v10

    .line 931
    add-int/lit8 v9, v9, -0x1

    .line 932
    .line 933
    if-gt v10, v9, :cond_20

    .line 934
    .line 935
    move-object/from16 v5, v27

    .line 936
    .line 937
    :goto_1c
    if-nez v5, :cond_1f

    .line 938
    .line 939
    new-instance v5, Ljava/util/ArrayList;

    .line 940
    .line 941
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .line 943
    .line 944
    :cond_1f
    move/from16 v50, v6

    .line 945
    .line 946
    invoke-virtual {v12, v9, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 947
    .line 948
    .line 949
    move-result-object v6

    .line 950
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    .line 952
    .line 953
    if-eq v9, v10, :cond_21

    .line 954
    .line 955
    add-int/lit8 v9, v9, -0x1

    .line 956
    .line 957
    move/from16 v6, v50

    .line 958
    .line 959
    goto :goto_1c

    .line 960
    :cond_20
    move/from16 v50, v6

    .line 961
    .line 962
    move-object/from16 v5, v27

    .line 963
    .line 964
    :cond_21
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 965
    .line 966
    .line 967
    move-result v6

    .line 968
    const/4 v9, -0x1

    .line 969
    add-int/2addr v6, v9

    .line 970
    if-ltz v6, :cond_25

    .line 971
    .line 972
    :goto_1d
    add-int/lit8 v18, v6, -0x1

    .line 973
    .line 974
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v6

    .line 978
    check-cast v6, Ljava/lang/Number;

    .line 979
    .line 980
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 981
    .line 982
    .line 983
    move-result v6

    .line 984
    if-ge v6, v10, :cond_23

    .line 985
    .line 986
    if-nez v5, :cond_22

    .line 987
    .line 988
    new-instance v5, Ljava/util/ArrayList;

    .line 989
    .line 990
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .line 992
    .line 993
    :cond_22
    invoke-virtual {v12, v6, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 994
    .line 995
    .line 996
    move-result-object v6

    .line 997
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    :cond_23
    if-gez v18, :cond_24

    .line 1001
    .line 1002
    goto :goto_1e

    .line 1003
    :cond_24
    move/from16 v6, v18

    .line 1004
    .line 1005
    goto :goto_1d

    .line 1006
    :cond_25
    :goto_1e
    if-nez v5, :cond_26

    .line 1007
    .line 1008
    move-object/from16 v5, v28

    .line 1009
    .line 1010
    :cond_26
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 1011
    .line 1012
    .line 1013
    move-result v6

    .line 1014
    move/from16 v9, v21

    .line 1015
    .line 1016
    const/4 v10, 0x0

    .line 1017
    :goto_1f
    if-ge v10, v6, :cond_27

    .line 1018
    .line 1019
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v18

    .line 1023
    move/from16 v19, v6

    .line 1024
    .line 1025
    move-object/from16 v6, v18

    .line 1026
    .line 1027
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1028
    .line 1029
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 1030
    .line 1031
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    .line 1032
    .line 1033
    .line 1034
    move-result v9

    .line 1035
    add-int/lit8 v10, v10, 0x1

    .line 1036
    .line 1037
    move/from16 v6, v19

    .line 1038
    .line 1039
    goto :goto_1f

    .line 1040
    :cond_27
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v6

    .line 1044
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1045
    .line 1046
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1047
    .line 1048
    add-int/lit8 v10, v48, -0x1

    .line 1049
    .line 1050
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    .line 1051
    .line 1052
    .line 1053
    move-result v6

    .line 1054
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v10

    .line 1058
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1059
    .line 1060
    iget v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1061
    .line 1062
    add-int/lit8 v10, v10, 0x1

    .line 1063
    .line 1064
    if-gt v10, v6, :cond_29

    .line 1065
    .line 1066
    move-object/from16 v18, v27

    .line 1067
    .line 1068
    :goto_20
    if-nez v18, :cond_28

    .line 1069
    .line 1070
    new-instance v18, Ljava/util/ArrayList;

    .line 1071
    .line 1072
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    :cond_28
    move/from16 v19, v9

    .line 1076
    .line 1077
    move-object/from16 v9, v18

    .line 1078
    .line 1079
    move/from16 v18, v14

    .line 1080
    .line 1081
    invoke-virtual {v12, v10, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v14

    .line 1085
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    if-eq v10, v6, :cond_2a

    .line 1089
    .line 1090
    add-int/lit8 v10, v10, 0x1

    .line 1091
    .line 1092
    move/from16 v14, v18

    .line 1093
    .line 1094
    move-object/from16 v18, v9

    .line 1095
    .line 1096
    move/from16 v9, v19

    .line 1097
    .line 1098
    goto :goto_20

    .line 1099
    :cond_29
    move/from16 v19, v9

    .line 1100
    .line 1101
    move/from16 v18, v14

    .line 1102
    .line 1103
    move-object/from16 v9, v27

    .line 1104
    .line 1105
    :cond_2a
    if-eqz v9, :cond_2b

    .line 1106
    .line 1107
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v10

    .line 1111
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1112
    .line 1113
    iget v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1114
    .line 1115
    if-le v10, v6, :cond_2b

    .line 1116
    .line 1117
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v6

    .line 1121
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1122
    .line 1123
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1124
    .line 1125
    :cond_2b
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1126
    .line 1127
    .line 1128
    move-result v10

    .line 1129
    move-object v14, v9

    .line 1130
    const/4 v9, 0x0

    .line 1131
    :goto_21
    if-ge v9, v10, :cond_2e

    .line 1132
    .line 1133
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v20

    .line 1137
    check-cast v20, Ljava/lang/Number;

    .line 1138
    .line 1139
    move-object/from16 v21, v4

    .line 1140
    .line 1141
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    .line 1142
    .line 1143
    .line 1144
    move-result v4

    .line 1145
    if-le v4, v6, :cond_2d

    .line 1146
    .line 1147
    if-nez v14, :cond_2c

    .line 1148
    .line 1149
    new-instance v14, Ljava/util/ArrayList;

    .line 1150
    .line 1151
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    .line 1153
    .line 1154
    :cond_2c
    invoke-virtual {v12, v4, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v4

    .line 1158
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    .line 1160
    .line 1161
    :cond_2d
    add-int/lit8 v9, v9, 0x1

    .line 1162
    .line 1163
    move-object/from16 v4, v21

    .line 1164
    .line 1165
    goto :goto_21

    .line 1166
    :cond_2e
    if-nez v14, :cond_2f

    .line 1167
    .line 1168
    move-object/from16 v14, v28

    .line 1169
    .line 1170
    :cond_2f
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 1171
    .line 1172
    .line 1173
    move-result v4

    .line 1174
    move/from16 v9, v19

    .line 1175
    .line 1176
    const/4 v6, 0x0

    .line 1177
    :goto_22
    if-ge v6, v4, :cond_30

    .line 1178
    .line 1179
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v10

    .line 1183
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1184
    .line 1185
    iget v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    .line 1186
    .line 1187
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 1188
    .line 1189
    .line 1190
    move-result v9

    .line 1191
    add-int/lit8 v6, v6, 0x1

    .line 1192
    .line 1193
    goto :goto_22

    .line 1194
    :cond_30
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v4

    .line 1198
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1199
    .line 1200
    .line 1201
    move-result v4

    .line 1202
    if-eqz v4, :cond_31

    .line 1203
    .line 1204
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1205
    .line 1206
    .line 1207
    move-result v4

    .line 1208
    if-eqz v4, :cond_31

    .line 1209
    .line 1210
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 1211
    .line 1212
    .line 1213
    move-result v4

    .line 1214
    if-eqz v4, :cond_31

    .line 1215
    .line 1216
    move/from16 v4, v32

    .line 1217
    .line 1218
    goto :goto_23

    .line 1219
    :cond_31
    const/4 v4, 0x0

    .line 1220
    :goto_23
    invoke-static {v9, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 1221
    .line 1222
    .line 1223
    move-result v6

    .line 1224
    invoke-static {v11, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 1225
    .line 1226
    .line 1227
    move-result v9

    .line 1228
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    .line 1229
    .line 1230
    .line 1231
    move-result v10

    .line 1232
    if-ge v11, v10, :cond_32

    .line 1233
    .line 1234
    move/from16 v10, v32

    .line 1235
    .line 1236
    goto :goto_24

    .line 1237
    :cond_32
    const/4 v10, 0x0

    .line 1238
    :goto_24
    if-eqz v10, :cond_34

    .line 1239
    .line 1240
    if-nez v18, :cond_33

    .line 1241
    .line 1242
    goto :goto_25

    .line 1243
    :cond_33
    const-string v19, "non-zero itemsScrollOffset"

    .line 1244
    .line 1245
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1246
    .line 1247
    .line 1248
    :cond_34
    :goto_25
    move/from16 v51, v4

    .line 1249
    .line 1250
    new-instance v4, Ljava/util/ArrayList;

    .line 1251
    .line 1252
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1253
    .line 1254
    .line 1255
    move-result v19

    .line 1256
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1257
    .line 1258
    .line 1259
    move-result v20

    .line 1260
    add-int v20, v20, v19

    .line 1261
    .line 1262
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1263
    .line 1264
    .line 1265
    move-result v19

    .line 1266
    move/from16 v21, v10

    .line 1267
    .line 1268
    add-int v10, v19, v20

    .line 1269
    .line 1270
    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1271
    .line 1272
    .line 1273
    if-eqz v21, :cond_3b

    .line 1274
    .line 1275
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1276
    .line 1277
    .line 1278
    move-result v5

    .line 1279
    if-eqz v5, :cond_35

    .line 1280
    .line 1281
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 1282
    .line 1283
    .line 1284
    move-result v5

    .line 1285
    if-eqz v5, :cond_35

    .line 1286
    .line 1287
    goto :goto_26

    .line 1288
    :cond_35
    const-string v5, "no extra items"

    .line 1289
    .line 1290
    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1291
    .line 1292
    .line 1293
    :goto_26
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1294
    .line 1295
    .line 1296
    move-result v5

    .line 1297
    new-array v10, v5, [I

    .line 1298
    .line 1299
    const/4 v14, 0x0

    .line 1300
    :goto_27
    if-ge v14, v5, :cond_36

    .line 1301
    .line 1302
    invoke-virtual {v13, v14}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v18

    .line 1306
    move/from16 v26, v11

    .line 1307
    .line 1308
    move-object/from16 v11, v18

    .line 1309
    .line 1310
    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1311
    .line 1312
    iget v11, v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 1313
    .line 1314
    aput v11, v10, v14

    .line 1315
    .line 1316
    add-int/lit8 v14, v14, 0x1

    .line 1317
    .line 1318
    move/from16 v11, v26

    .line 1319
    .line 1320
    goto :goto_27

    .line 1321
    :cond_36
    move/from16 v26, v11

    .line 1322
    .line 1323
    new-array v5, v5, [I

    .line 1324
    .line 1325
    move-object/from16 v11, v36

    .line 1326
    .line 1327
    if-eqz v11, :cond_3a

    .line 1328
    .line 1329
    invoke-interface {v11, v9, v8, v10, v5}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(ILandroidx/compose/ui/layout/MeasureScope;[I[I)V

    .line 1330
    .line 1331
    .line 1332
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v10

    .line 1336
    iget v11, v10, Lkotlin/ranges/IntProgression;->first:I

    .line 1337
    .line 1338
    iget v14, v10, Lkotlin/ranges/IntProgression;->last:I

    .line 1339
    .line 1340
    iget v10, v10, Lkotlin/ranges/IntProgression;->step:I

    .line 1341
    .line 1342
    if-lez v10, :cond_37

    .line 1343
    .line 1344
    if-le v11, v14, :cond_38

    .line 1345
    .line 1346
    :cond_37
    if-gez v10, :cond_39

    .line 1347
    .line 1348
    if-gt v14, v11, :cond_39

    .line 1349
    .line 1350
    :cond_38
    move-object/from16 v18, v5

    .line 1351
    .line 1352
    :goto_28
    aget v5, v18, v11

    .line 1353
    .line 1354
    invoke-virtual {v13, v11}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v19

    .line 1358
    move-object/from16 v8, v19

    .line 1359
    .line 1360
    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1361
    .line 1362
    invoke-virtual {v8, v5, v6, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    .line 1367
    .line 1368
    if-eq v11, v14, :cond_39

    .line 1369
    .line 1370
    add-int/2addr v11, v10

    .line 1371
    move-object/from16 v8, p1

    .line 1372
    .line 1373
    goto :goto_28

    .line 1374
    :cond_39
    move-object/from16 v5, v46

    .line 1375
    .line 1376
    goto :goto_2c

    .line 1377
    :cond_3a
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 1378
    .line 1379
    .line 1380
    invoke-static {}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticBUOutline0;->m()V

    .line 1381
    .line 1382
    .line 1383
    return-object v27

    .line 1384
    :cond_3b
    move/from16 v26, v11

    .line 1385
    .line 1386
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 1387
    .line 1388
    .line 1389
    move-result v8

    .line 1390
    move/from16 v11, v18

    .line 1391
    .line 1392
    const/4 v10, 0x0

    .line 1393
    :goto_29
    if-ge v10, v8, :cond_3c

    .line 1394
    .line 1395
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v19

    .line 1399
    move-object/from16 v20, v5

    .line 1400
    .line 1401
    move-object/from16 v5, v19

    .line 1402
    .line 1403
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1404
    .line 1405
    move/from16 v19, v8

    .line 1406
    .line 1407
    iget v8, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1408
    .line 1409
    sub-int/2addr v11, v8

    .line 1410
    invoke-virtual {v5, v11, v6, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    .line 1415
    .line 1416
    add-int/lit8 v10, v10, 0x1

    .line 1417
    .line 1418
    move/from16 v8, v19

    .line 1419
    .line 1420
    move-object/from16 v5, v20

    .line 1421
    .line 1422
    goto :goto_29

    .line 1423
    :cond_3c
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1424
    .line 1425
    .line 1426
    move-result v5

    .line 1427
    move/from16 v10, v18

    .line 1428
    .line 1429
    const/4 v8, 0x0

    .line 1430
    :goto_2a
    if-ge v8, v5, :cond_3d

    .line 1431
    .line 1432
    invoke-virtual {v13, v8}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v11

    .line 1436
    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1437
    .line 1438
    invoke-virtual {v11, v10, v6, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1442
    .line 1443
    .line 1444
    iget v11, v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1445
    .line 1446
    add-int/2addr v10, v11

    .line 1447
    add-int/lit8 v8, v8, 0x1

    .line 1448
    .line 1449
    goto :goto_2a

    .line 1450
    :cond_3d
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 1451
    .line 1452
    .line 1453
    move-result v5

    .line 1454
    const/4 v8, 0x0

    .line 1455
    :goto_2b
    if-ge v8, v5, :cond_39

    .line 1456
    .line 1457
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v11

    .line 1461
    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1462
    .line 1463
    invoke-virtual {v11, v10, v6, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    .line 1468
    .line 1469
    iget v11, v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1470
    .line 1471
    add-int/2addr v10, v11

    .line 1472
    add-int/lit8 v8, v8, 0x1

    .line 1473
    .line 1474
    goto :goto_2b

    .line 1475
    :goto_2c
    iget-object v8, v5, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Lcom/grack/nanojson/JsonParser;

    .line 1476
    .line 1477
    move-object/from16 v20, v4

    .line 1478
    .line 1479
    move/from16 v18, v6

    .line 1480
    .line 1481
    move-object/from16 v21, v8

    .line 1482
    .line 1483
    move/from16 v19, v9

    .line 1484
    .line 1485
    move-object/from16 v22, v12

    .line 1486
    .line 1487
    invoke-virtual/range {v17 .. v26}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IILjava/util/ArrayList;Lcom/grack/nanojson/JsonParser;Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;ZZII)V

    .line 1488
    .line 1489
    .line 1490
    move-object/from16 v8, v20

    .line 1491
    .line 1492
    move/from16 v4, v23

    .line 1493
    .line 1494
    move/from16 v11, v26

    .line 1495
    .line 1496
    if-nez v4, :cond_3f

    .line 1497
    .line 1498
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 1499
    .line 1500
    .line 1501
    if-nez v35, :cond_3f

    .line 1502
    .line 1503
    const/4 v10, 0x0

    .line 1504
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 1505
    .line 1506
    .line 1507
    move-result v6

    .line 1508
    invoke-static {v6, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 1509
    .line 1510
    .line 1511
    move-result v6

    .line 1512
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 1513
    .line 1514
    .line 1515
    move-result v14

    .line 1516
    invoke-static {v14, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 1517
    .line 1518
    .line 1519
    move-result v2

    .line 1520
    if-eq v2, v9, :cond_3e

    .line 1521
    .line 1522
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1523
    .line 1524
    .line 1525
    move-result v3

    .line 1526
    const/4 v9, 0x0

    .line 1527
    :goto_2d
    if-ge v9, v3, :cond_3e

    .line 1528
    .line 1529
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v10

    .line 1533
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1534
    .line 1535
    iput v2, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    .line 1536
    .line 1537
    add-int/lit8 v9, v9, 0x1

    .line 1538
    .line 1539
    goto :goto_2d

    .line 1540
    :cond_3e
    move v9, v2

    .line 1541
    :cond_3f
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v2

    .line 1545
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1546
    .line 1547
    if-eqz v2, :cond_40

    .line 1548
    .line 1549
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1550
    .line 1551
    goto :goto_2e

    .line 1552
    :cond_40
    const/4 v2, 0x0

    .line 1553
    :goto_2e
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v3

    .line 1557
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1558
    .line 1559
    if-eqz v3, :cond_41

    .line 1560
    .line 1561
    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1562
    .line 1563
    goto :goto_2f

    .line 1564
    :cond_41
    const/4 v3, 0x0

    .line 1565
    :goto_2f
    iget-object v5, v5, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 1566
    .line 1567
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1568
    .line 1569
    .line 1570
    sget-object v5, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    .line 1571
    .line 1572
    move-object/from16 v10, p0

    .line 1573
    .line 1574
    iget-object v10, v10, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 1575
    .line 1576
    if-eqz v10, :cond_54

    .line 1577
    .line 1578
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1579
    .line 1580
    .line 1581
    move-result v10

    .line 1582
    if-nez v10, :cond_54

    .line 1583
    .line 1584
    iget v10, v5, Landroidx/collection/IntList;->_size:I

    .line 1585
    .line 1586
    if-eqz v10, :cond_54

    .line 1587
    .line 1588
    sub-int/2addr v3, v2

    .line 1589
    if-ltz v3, :cond_42

    .line 1590
    .line 1591
    if-nez v10, :cond_43

    .line 1592
    .line 1593
    :cond_42
    move-object/from16 v17, v13

    .line 1594
    .line 1595
    goto :goto_32

    .line 1596
    :cond_43
    const/4 v3, 0x0

    .line 1597
    invoke-static {v3, v10}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v10

    .line 1601
    iget v3, v10, Lkotlin/ranges/IntProgression;->first:I

    .line 1602
    .line 1603
    iget v10, v10, Lkotlin/ranges/IntProgression;->last:I

    .line 1604
    .line 1605
    move-object/from16 v17, v13

    .line 1606
    .line 1607
    if-gt v3, v10, :cond_45

    .line 1608
    .line 1609
    const/4 v14, -0x1

    .line 1610
    :goto_30
    invoke-virtual {v5, v3}, Landroidx/collection/IntList;->get(I)I

    .line 1611
    .line 1612
    .line 1613
    move-result v13

    .line 1614
    if-gt v13, v2, :cond_44

    .line 1615
    .line 1616
    invoke-virtual {v5, v3}, Landroidx/collection/IntList;->get(I)I

    .line 1617
    .line 1618
    .line 1619
    move-result v14

    .line 1620
    if-eq v3, v10, :cond_44

    .line 1621
    .line 1622
    add-int/lit8 v3, v3, 0x1

    .line 1623
    .line 1624
    goto :goto_30

    .line 1625
    :cond_44
    const/4 v2, -0x1

    .line 1626
    goto :goto_31

    .line 1627
    :cond_45
    const/4 v2, -0x1

    .line 1628
    const/4 v14, -0x1

    .line 1629
    :goto_31
    if-ne v14, v2, :cond_46

    .line 1630
    .line 1631
    sget-object v2, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    .line 1632
    .line 1633
    goto :goto_33

    .line 1634
    :cond_46
    new-instance v2, Landroidx/collection/MutableIntList;

    .line 1635
    .line 1636
    move/from16 v3, v32

    .line 1637
    .line 1638
    invoke-direct {v2, v3}, Landroidx/collection/MutableIntList;-><init>(I)V

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v2, v14}, Landroidx/collection/MutableIntList;->add(I)V

    .line 1642
    .line 1643
    .line 1644
    goto :goto_33

    .line 1645
    :goto_32
    move-object v2, v5

    .line 1646
    :goto_33
    new-instance v3, Ljava/util/ArrayList;

    .line 1647
    .line 1648
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1649
    .line 1650
    .line 1651
    new-instance v10, Ljava/util/ArrayList;

    .line 1652
    .line 1653
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1654
    .line 1655
    .line 1656
    move-result v13

    .line 1657
    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1661
    .line 1662
    .line 1663
    move-result v13

    .line 1664
    const/4 v14, 0x0

    .line 1665
    :goto_34
    if-ge v14, v13, :cond_49

    .line 1666
    .line 1667
    move/from16 p0, v13

    .line 1668
    .line 1669
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v13

    .line 1673
    move/from16 v18, v14

    .line 1674
    .line 1675
    move-object v14, v13

    .line 1676
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1677
    .line 1678
    iget v14, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1679
    .line 1680
    move-object/from16 v19, v15

    .line 1681
    .line 1682
    iget-object v15, v5, Landroidx/collection/IntList;->content:[I

    .line 1683
    .line 1684
    move-object/from16 v20, v15

    .line 1685
    .line 1686
    iget v15, v5, Landroidx/collection/IntList;->_size:I

    .line 1687
    .line 1688
    move-object/from16 v21, v5

    .line 1689
    .line 1690
    const/4 v5, 0x0

    .line 1691
    :goto_35
    if-ge v5, v15, :cond_48

    .line 1692
    .line 1693
    move/from16 v22, v5

    .line 1694
    .line 1695
    aget v5, v20, v22

    .line 1696
    .line 1697
    if-ne v5, v14, :cond_47

    .line 1698
    .line 1699
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    .line 1701
    .line 1702
    goto :goto_36

    .line 1703
    :cond_47
    add-int/lit8 v5, v22, 0x1

    .line 1704
    .line 1705
    goto :goto_35

    .line 1706
    :cond_48
    :goto_36
    add-int/lit8 v14, v18, 0x1

    .line 1707
    .line 1708
    move/from16 v13, p0

    .line 1709
    .line 1710
    move-object/from16 v15, v19

    .line 1711
    .line 1712
    move-object/from16 v5, v21

    .line 1713
    .line 1714
    goto :goto_34

    .line 1715
    :cond_49
    move-object/from16 v19, v15

    .line 1716
    .line 1717
    iget-object v5, v2, Landroidx/collection/IntList;->content:[I

    .line 1718
    .line 1719
    iget v2, v2, Landroidx/collection/IntList;->_size:I

    .line 1720
    .line 1721
    const/4 v13, 0x0

    .line 1722
    :goto_37
    if-ge v13, v2, :cond_53

    .line 1723
    .line 1724
    aget v14, v5, v13

    .line 1725
    .line 1726
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v15

    .line 1730
    const/16 v18, 0x0

    .line 1731
    .line 1732
    :goto_38
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 1733
    .line 1734
    .line 1735
    move-result v20

    .line 1736
    if-eqz v20, :cond_4b

    .line 1737
    .line 1738
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v20

    .line 1742
    move/from16 v21, v2

    .line 1743
    .line 1744
    move-object/from16 v2, v20

    .line 1745
    .line 1746
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1747
    .line 1748
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1749
    .line 1750
    if-ne v2, v14, :cond_4a

    .line 1751
    .line 1752
    move/from16 v2, v18

    .line 1753
    .line 1754
    :goto_39
    const/4 v15, -0x1

    .line 1755
    goto :goto_3a

    .line 1756
    :cond_4a
    add-int/lit8 v18, v18, 0x1

    .line 1757
    .line 1758
    move/from16 v2, v21

    .line 1759
    .line 1760
    goto :goto_38

    .line 1761
    :cond_4b
    move/from16 v21, v2

    .line 1762
    .line 1763
    const/4 v2, -0x1

    .line 1764
    goto :goto_39

    .line 1765
    :goto_3a
    if-ne v2, v15, :cond_4c

    .line 1766
    .line 1767
    invoke-virtual {v12, v14, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v18

    .line 1771
    :goto_3b
    move-wide/from16 v23, v0

    .line 1772
    .line 1773
    move-object/from16 v0, v18

    .line 1774
    .line 1775
    goto :goto_3c

    .line 1776
    :cond_4c
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v18

    .line 1780
    check-cast v18, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1781
    .line 1782
    goto :goto_3b

    .line 1783
    :goto_3c
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1784
    .line 1785
    if-ne v2, v15, :cond_4d

    .line 1786
    .line 1787
    move/from16 v18, v1

    .line 1788
    .line 1789
    const/high16 v1, -0x80000000

    .line 1790
    .line 1791
    goto :goto_3d

    .line 1792
    :cond_4d
    const/4 v2, 0x0

    .line 1793
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 1794
    .line 1795
    .line 1796
    move-result-wide v35

    .line 1797
    move/from16 v18, v1

    .line 1798
    .line 1799
    and-long v1, v35, v30

    .line 1800
    .line 1801
    long-to-int v1, v1

    .line 1802
    :goto_3d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1803
    .line 1804
    .line 1805
    move-result v2

    .line 1806
    const/4 v15, 0x0

    .line 1807
    :goto_3e
    if-ge v15, v2, :cond_4f

    .line 1808
    .line 1809
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v20

    .line 1813
    move/from16 p0, v2

    .line 1814
    .line 1815
    move-object/from16 v2, v20

    .line 1816
    .line 1817
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1818
    .line 1819
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1820
    .line 1821
    if-eq v2, v14, :cond_4e

    .line 1822
    .line 1823
    goto :goto_3f

    .line 1824
    :cond_4e
    add-int/lit8 v15, v15, 0x1

    .line 1825
    .line 1826
    move/from16 v2, p0

    .line 1827
    .line 1828
    goto :goto_3e

    .line 1829
    :cond_4f
    move-object/from16 v20, v27

    .line 1830
    .line 1831
    :goto_3f
    move-object/from16 v2, v20

    .line 1832
    .line 1833
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1834
    .line 1835
    if-eqz v2, :cond_50

    .line 1836
    .line 1837
    const/4 v15, 0x0

    .line 1838
    invoke-virtual {v2, v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 1839
    .line 1840
    .line 1841
    move-result-wide v35

    .line 1842
    move v2, v13

    .line 1843
    and-long v13, v35, v30

    .line 1844
    .line 1845
    long-to-int v13, v13

    .line 1846
    :goto_40
    const/high16 v14, -0x80000000

    .line 1847
    .line 1848
    goto :goto_41

    .line 1849
    :cond_50
    move v2, v13

    .line 1850
    const/4 v15, 0x0

    .line 1851
    const/high16 v13, -0x80000000

    .line 1852
    .line 1853
    goto :goto_40

    .line 1854
    :goto_41
    if-ne v1, v14, :cond_51

    .line 1855
    .line 1856
    move/from16 v1, v44

    .line 1857
    .line 1858
    move v15, v1

    .line 1859
    goto :goto_42

    .line 1860
    :cond_51
    move/from16 v15, v44

    .line 1861
    .line 1862
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 1863
    .line 1864
    .line 1865
    move-result v1

    .line 1866
    :goto_42
    if-eq v13, v14, :cond_52

    .line 1867
    .line 1868
    sub-int v13, v13, v18

    .line 1869
    .line 1870
    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    .line 1871
    .line 1872
    .line 1873
    move-result v1

    .line 1874
    :cond_52
    const/4 v13, 0x1

    .line 1875
    iput-boolean v13, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    .line 1876
    .line 1877
    invoke-virtual {v0, v1, v6, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1881
    .line 1882
    .line 1883
    add-int/lit8 v0, v2, 0x1

    .line 1884
    .line 1885
    move v13, v0

    .line 1886
    move/from16 v44, v15

    .line 1887
    .line 1888
    move/from16 v2, v21

    .line 1889
    .line 1890
    move-wide/from16 v0, v23

    .line 1891
    .line 1892
    goto/16 :goto_37

    .line 1893
    .line 1894
    :cond_53
    move/from16 v15, v44

    .line 1895
    .line 1896
    const/4 v13, 0x1

    .line 1897
    goto :goto_43

    .line 1898
    :cond_54
    move-object/from16 v17, v13

    .line 1899
    .line 1900
    move-object/from16 v19, v15

    .line 1901
    .line 1902
    move/from16 v13, v32

    .line 1903
    .line 1904
    move/from16 v15, v44

    .line 1905
    .line 1906
    move-object/from16 v3, v28

    .line 1907
    .line 1908
    :goto_43
    if-eqz v51, :cond_56

    .line 1909
    .line 1910
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v0

    .line 1914
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1915
    .line 1916
    if-eqz v0, :cond_55

    .line 1917
    .line 1918
    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1919
    .line 1920
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v0

    .line 1924
    goto :goto_44

    .line 1925
    :cond_55
    move-object/from16 v0, v27

    .line 1926
    .line 1927
    goto :goto_44

    .line 1928
    :cond_56
    invoke-virtual/range {v17 .. v17}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v0

    .line 1932
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1933
    .line 1934
    if-eqz v0, :cond_55

    .line 1935
    .line 1936
    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1937
    .line 1938
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v0

    .line 1942
    :goto_44
    if-eqz v51, :cond_58

    .line 1943
    .line 1944
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v1

    .line 1948
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1949
    .line 1950
    if-eqz v1, :cond_57

    .line 1951
    .line 1952
    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1953
    .line 1954
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v27

    .line 1958
    :cond_57
    :goto_45
    move/from16 v44, v15

    .line 1959
    .line 1960
    move/from16 v5, v45

    .line 1961
    .line 1962
    move/from16 v15, v48

    .line 1963
    .line 1964
    goto :goto_46

    .line 1965
    :cond_58
    invoke-virtual/range {v17 .. v17}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v1

    .line 1969
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1970
    .line 1971
    if-eqz v1, :cond_57

    .line 1972
    .line 1973
    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 1974
    .line 1975
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v27

    .line 1979
    goto :goto_45

    .line 1980
    :goto_46
    if-lt v5, v15, :cond_5a

    .line 1981
    .line 1982
    if-le v11, v7, :cond_59

    .line 1983
    .line 1984
    goto :goto_47

    .line 1985
    :cond_59
    const/4 v5, 0x0

    .line 1986
    goto :goto_48

    .line 1987
    :cond_5a
    :goto_47
    move v5, v13

    .line 1988
    :goto_48
    new-instance v1, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;

    .line 1989
    .line 1990
    move-object/from16 v2, v43

    .line 1991
    .line 1992
    invoke-direct {v1, v2, v8, v3, v4}, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;Z)V

    .line 1993
    .line 1994
    .line 1995
    add-int v6, v6, v33

    .line 1996
    .line 1997
    move-wide/from16 v10, p2

    .line 1998
    .line 1999
    invoke-static {v6, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 2000
    .line 2001
    .line 2002
    move-result v2

    .line 2003
    add-int v9, v9, v29

    .line 2004
    .line 2005
    invoke-static {v9, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 2006
    .line 2007
    .line 2008
    move-result v4

    .line 2009
    move-object/from16 v6, v39

    .line 2010
    .line 2011
    move-object/from16 v7, v42

    .line 2012
    .line 2013
    invoke-interface {v6, v2, v4, v7, v1}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v1

    .line 2017
    if-eqz v0, :cond_5b

    .line 2018
    .line 2019
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2020
    .line 2021
    .line 2022
    move-result v0

    .line 2023
    goto :goto_49

    .line 2024
    :cond_5b
    const/4 v0, 0x0

    .line 2025
    :goto_49
    if-eqz v27, :cond_5c

    .line 2026
    .line 2027
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    .line 2028
    .line 2029
    .line 2030
    move-result v2

    .line 2031
    goto :goto_4a

    .line 2032
    :cond_5c
    const/4 v2, 0x0

    .line 2033
    :goto_4a
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2034
    .line 2035
    .line 2036
    move-result v4

    .line 2037
    if-eqz v4, :cond_5d

    .line 2038
    .line 2039
    goto :goto_4c

    .line 2040
    :cond_5d
    new-instance v4, Ljava/util/ArrayList;

    .line 2041
    .line 2042
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2043
    .line 2044
    .line 2045
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 2046
    .line 2047
    .line 2048
    move-result v3

    .line 2049
    const/4 v7, 0x0

    .line 2050
    :goto_4b
    if-ge v7, v3, :cond_5f

    .line 2051
    .line 2052
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v9

    .line 2056
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 2057
    .line 2058
    iget v10, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 2059
    .line 2060
    if-gt v0, v10, :cond_5e

    .line 2061
    .line 2062
    if-gt v10, v2, :cond_5e

    .line 2063
    .line 2064
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2065
    .line 2066
    .line 2067
    :cond_5e
    add-int/lit8 v7, v7, 0x1

    .line 2068
    .line 2069
    goto :goto_4b

    .line 2070
    :cond_5f
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayoutMeasuredItemIndexComparator:Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;

    .line 2071
    .line 2072
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/Comparator;Ljava/util/List;)V

    .line 2073
    .line 2074
    .line 2075
    move-object/from16 v28, v4

    .line 2076
    .line 2077
    :goto_4c
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 2078
    .line 2079
    iget-wide v10, v12, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 2080
    .line 2081
    move-object/from16 v9, p1

    .line 2082
    .line 2083
    move v3, v5

    .line 2084
    move/from16 v17, v16

    .line 2085
    .line 2086
    move/from16 v2, v25

    .line 2087
    .line 2088
    move-object/from16 v12, v28

    .line 2089
    .line 2090
    move-object/from16 v16, v34

    .line 2091
    .line 2092
    move-object/from16 v8, v37

    .line 2093
    .line 2094
    move/from16 v18, v38

    .line 2095
    .line 2096
    move/from16 v14, v40

    .line 2097
    .line 2098
    move/from16 v13, v44

    .line 2099
    .line 2100
    move/from16 v7, v47

    .line 2101
    .line 2102
    move/from16 v4, v49

    .line 2103
    .line 2104
    move-object v5, v1

    .line 2105
    move-object/from16 v37, v6

    .line 2106
    .line 2107
    move-object/from16 v1, v19

    .line 2108
    .line 2109
    move/from16 v6, v50

    .line 2110
    .line 2111
    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 2112
    .line 2113
    .line 2114
    goto/16 :goto_9

    .line 2115
    .line 2116
    :goto_4d
    invoke-interface/range {v37 .. v37}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 2117
    .line 2118
    .line 2119
    move-result v0

    .line 2120
    move-object/from16 v1, v41

    .line 2121
    .line 2122
    const/4 v15, 0x0

    .line 2123
    invoke-virtual {v1, v3, v0, v15}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    .line 2124
    .line 2125
    .line 2126
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListState;->prefetchStrategy:Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;

    .line 2127
    .line 2128
    return-object v3

    .line 2129
    :goto_4e
    invoke-static {v5, v11, v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 2130
    .line 2131
    .line 2132
    throw v0

    .line 2133
    :cond_60
    move-object/from16 v22, v23

    .line 2134
    .line 2135
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 2136
    .line 2137
    .line 2138
    invoke-static {}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticBUOutline0;->m()V

    .line 2139
    .line 2140
    .line 2141
    return-object v27
.end method
