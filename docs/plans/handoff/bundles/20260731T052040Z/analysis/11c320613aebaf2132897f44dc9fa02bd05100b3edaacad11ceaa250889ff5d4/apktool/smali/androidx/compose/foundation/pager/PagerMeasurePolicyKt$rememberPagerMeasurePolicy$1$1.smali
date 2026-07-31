.class public final Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# instance fields
.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field public final synthetic $pageCount:Lkotlin/jvm/functions/Function0;

.field public final synthetic $pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

.field public final synthetic $snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

.field public final synthetic $state:Landroidx/compose/foundation/pager/DefaultPagerState;

.field public final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/DefaultPagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageCount:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 53

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v12, p2

    .line 6
    .line 7
    iget-object v14, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 8
    .line 9
    iget-object v2, v14, Landroidx/compose/foundation/pager/PagerState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object v15, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 15
    .line 16
    invoke-static {v12, v13, v15}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 20
    .line 21
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 26
    .line 27
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SpacerKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SpacerKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-interface {v2, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-interface {v2, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    add-int/2addr v4, v6

    .line 64
    add-int/2addr v5, v3

    .line 65
    sub-int v7, v5, v3

    .line 66
    .line 67
    neg-int v8, v5

    .line 68
    neg-int v9, v4

    .line 69
    invoke-static {v8, v12, v13, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 70
    .line 71
    .line 72
    move-result-wide v8

    .line 73
    iput-object v1, v14, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    .line 74
    .line 75
    const/4 v10, 0x0

    .line 76
    invoke-interface {v2, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 81
    .line 82
    .line 83
    move-result v16

    .line 84
    move-object/from16 v17, v15

    .line 85
    .line 86
    sub-int v15, v16, v5

    .line 87
    .line 88
    move/from16 v16, v10

    .line 89
    .line 90
    move/from16 v18, v11

    .line 91
    .line 92
    int-to-long v10, v3

    .line 93
    const/16 v19, 0x20

    .line 94
    .line 95
    shl-long v10, v10, v19

    .line 96
    .line 97
    move/from16 v19, v4

    .line 98
    .line 99
    move/from16 v20, v5

    .line 100
    .line 101
    int-to-long v4, v6

    .line 102
    const-wide v21, 0xffffffffL

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    and-long v4, v4, v21

    .line 108
    .line 109
    or-long/2addr v4, v10

    .line 110
    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    if-gez v15, :cond_0

    .line 116
    .line 117
    const/4 v10, 0x0

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    move v10, v15

    .line 120
    :goto_0
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    const/4 v6, 0x5

    .line 125
    invoke-static {v10, v11, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    .line 126
    .line 127
    .line 128
    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 129
    .line 130
    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    check-cast v11, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 135
    .line 136
    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 137
    .line 138
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    move/from16 v23, v15

    .line 143
    .line 144
    if-eqz v1, :cond_1

    .line 145
    .line 146
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 147
    .line 148
    .line 149
    move-result-object v24

    .line 150
    move-object/from16 v15, v24

    .line 151
    .line 152
    :goto_1
    move-wide/from16 v25, v4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_1
    const/4 v15, 0x0

    .line 156
    goto :goto_1

    .line 157
    :goto_2
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    :try_start_0
    invoke-virtual {v14}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    move-object/from16 v27, v6

    .line 166
    .line 167
    iget-object v6, v14, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 168
    .line 169
    move/from16 v28, v7

    .line 170
    .line 171
    iget-object v7, v6, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 172
    .line 173
    invoke-static {v5, v11, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eq v5, v7, :cond_2

    .line 178
    .line 179
    move-wide/from16 v29, v8

    .line 180
    .line 181
    iget-object v8, v6, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v8, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 184
    .line 185
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 186
    .line 187
    .line 188
    iget-object v6, v6, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 191
    .line 192
    invoke-virtual {v6, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_2
    move-wide/from16 v29, v8

    .line 197
    .line 198
    :goto_3
    invoke-virtual {v14}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 199
    .line 200
    .line 201
    invoke-virtual {v14}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    invoke-virtual {v14}, Landroidx/compose/foundation/pager/DefaultPagerState;->getPageCount()I

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    add-int v6, v10, v18

    .line 212
    .line 213
    int-to-float v8, v6

    .line 214
    mul-float/2addr v5, v8

    .line 215
    sub-float v5, v16, v5

    .line 216
    .line 217
    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 218
    .line 219
    .line 220
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    invoke-static {v1, v4, v15}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v14, Landroidx/compose/foundation/pager/PagerState;->pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 225
    .line 226
    iget-object v4, v14, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 227
    .line 228
    invoke-static {v11, v1, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v15

    .line 232
    sget-object v1, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    .line 233
    .line 234
    move-object v4, v11

    .line 235
    new-instance v11, Landroidx/collection/MutableIntObjectMap;

    .line 236
    .line 237
    invoke-direct {v11}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageCount:Lkotlin/jvm/functions/Function0;

    .line 241
    .line 242
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    check-cast v1, Ljava/lang/Number;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    iget-object v8, v14, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 253
    .line 254
    if-ltz v3, :cond_3

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_3
    const-string v9, "negative beforeContentPadding"

    .line 258
    .line 259
    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :goto_4
    if-ltz v28, :cond_4

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_4
    const-string v9, "negative afterContentPadding"

    .line 266
    .line 267
    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :goto_5
    if-gez v6, :cond_5

    .line 271
    .line 272
    const/4 v9, 0x0

    .line 273
    goto :goto_6

    .line 274
    :cond_5
    move v9, v6

    .line 275
    :goto_6
    move/from16 v27, v6

    .line 276
    .line 277
    if-gez v1, :cond_6

    .line 278
    .line 279
    move v6, v1

    .line 280
    :goto_7
    move-object/from16 v31, v4

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_6
    const/4 v6, 0x0

    .line 284
    goto :goto_7

    .line 285
    :goto_8
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    move/from16 v32, v5

    .line 290
    .line 291
    const/4 v5, 0x5

    .line 292
    invoke-static {v10, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    .line 293
    .line 294
    .line 295
    move-result-wide v4

    .line 296
    move-object/from16 v22, v14

    .line 297
    .line 298
    sget-object v14, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 299
    .line 300
    move-object/from16 v33, v15

    .line 301
    .line 302
    move/from16 v34, v7

    .line 303
    .line 304
    iget-object v7, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 305
    .line 306
    move/from16 v35, v9

    .line 307
    .line 308
    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 309
    .line 310
    if-gtz v1, :cond_7

    .line 311
    .line 312
    move-wide/from16 v36, v4

    .line 313
    .line 314
    neg-int v4, v3

    .line 315
    add-int v5, v23, v28

    .line 316
    .line 317
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    new-instance v3, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;

    .line 326
    .line 327
    const/16 v8, 0x16

    .line 328
    .line 329
    invoke-direct {v3, v8}, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 330
    .line 331
    .line 332
    add-int v0, v0, v20

    .line 333
    .line 334
    invoke-static {v0, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    add-int v1, v1, v19

    .line 339
    .line 340
    invoke-static {v1, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    invoke-interface {v2, v0, v1, v14, v3}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 349
    .line 350
    move-object v13, v2

    .line 351
    move v1, v10

    .line 352
    move/from16 v2, v18

    .line 353
    .line 354
    move/from16 v3, v28

    .line 355
    .line 356
    move-wide/from16 v11, v36

    .line 357
    .line 358
    const/16 v21, 0x0

    .line 359
    .line 360
    move-object/from16 v10, p1

    .line 361
    .line 362
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;J)V

    .line 363
    .line 364
    .line 365
    move-object/from16 v1, p1

    .line 366
    .line 367
    move-object/from16 v25, v13

    .line 368
    .line 369
    move-object/from16 v50, v22

    .line 370
    .line 371
    const/16 v32, 0x1

    .line 372
    .line 373
    goto/16 :goto_40

    .line 374
    .line 375
    :cond_7
    move-wide/from16 v36, v4

    .line 376
    .line 377
    move-object/from16 v38, v7

    .line 378
    .line 379
    move/from16 v4, v19

    .line 380
    .line 381
    const/16 v21, 0x0

    .line 382
    .line 383
    move-object/from16 v19, v9

    .line 384
    .line 385
    move v9, v10

    .line 386
    move/from16 v5, v32

    .line 387
    .line 388
    move/from16 v7, v34

    .line 389
    .line 390
    :goto_9
    if-lez v7, :cond_8

    .line 391
    .line 392
    if-lez v5, :cond_8

    .line 393
    .line 394
    add-int/lit8 v7, v7, -0x1

    .line 395
    .line 396
    sub-int v5, v5, v35

    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_8
    mul-int/lit8 v5, v5, -0x1

    .line 400
    .line 401
    if-lt v7, v1, :cond_9

    .line 402
    .line 403
    add-int/lit8 v7, v1, -0x1

    .line 404
    .line 405
    move/from16 v5, v21

    .line 406
    .line 407
    :cond_9
    new-instance v10, Lkotlin/collections/ArrayDeque;

    .line 408
    .line 409
    invoke-direct {v10}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 410
    .line 411
    .line 412
    const/16 v32, 0x1

    .line 413
    .line 414
    neg-int v15, v3

    .line 415
    if-gez v18, :cond_a

    .line 416
    .line 417
    move/from16 v34, v18

    .line 418
    .line 419
    :goto_a
    move/from16 v39, v15

    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_a
    move/from16 v34, v21

    .line 423
    .line 424
    goto :goto_a

    .line 425
    :goto_b
    add-int v15, v39, v34

    .line 426
    .line 427
    add-int/2addr v5, v15

    .line 428
    move/from16 v34, v7

    .line 429
    .line 430
    move-object/from16 v40, v8

    .line 431
    .line 432
    move/from16 v7, v21

    .line 433
    .line 434
    :goto_c
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 435
    .line 436
    if-gez v5, :cond_b

    .line 437
    .line 438
    if-lez v34, :cond_b

    .line 439
    .line 440
    add-int/lit8 v34, v34, -0x1

    .line 441
    .line 442
    move-object/from16 v41, v10

    .line 443
    .line 444
    move v10, v9

    .line 445
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    move v0, v5

    .line 450
    move/from16 v45, v6

    .line 451
    .line 452
    move/from16 v13, v21

    .line 453
    .line 454
    move-wide/from16 v42, v29

    .line 455
    .line 456
    move-object/from16 v5, v31

    .line 457
    .line 458
    move-object/from16 v44, v40

    .line 459
    .line 460
    move-object/from16 v12, v41

    .line 461
    .line 462
    move/from16 v30, v1

    .line 463
    .line 464
    move/from16 v29, v3

    .line 465
    .line 466
    move/from16 v21, v4

    .line 467
    .line 468
    move-wide/from16 v3, v36

    .line 469
    .line 470
    move-object/from16 v1, p1

    .line 471
    .line 472
    move-wide/from16 v51, v25

    .line 473
    .line 474
    move-object/from16 v25, v2

    .line 475
    .line 476
    move/from16 v26, v18

    .line 477
    .line 478
    move/from16 v2, v34

    .line 479
    .line 480
    move/from16 v18, v16

    .line 481
    .line 482
    move-object/from16 v16, v14

    .line 483
    .line 484
    move v14, v7

    .line 485
    move-wide/from16 v6, v51

    .line 486
    .line 487
    invoke-static/range {v1 .. v11}, Lokio/Okio;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    move-object v4, v5

    .line 492
    move-wide v5, v6

    .line 493
    move v9, v10

    .line 494
    move-object v10, v11

    .line 495
    invoke-virtual {v12, v13, v8}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    iget v1, v8, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    .line 499
    .line 500
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    add-int v0, v0, v35

    .line 505
    .line 506
    move-object/from16 v31, v4

    .line 507
    .line 508
    move-object v10, v12

    .line 509
    move-object/from16 v14, v16

    .line 510
    .line 511
    move/from16 v16, v18

    .line 512
    .line 513
    move/from16 v4, v21

    .line 514
    .line 515
    move-object/from16 v2, v25

    .line 516
    .line 517
    move/from16 v18, v26

    .line 518
    .line 519
    move/from16 v3, v29

    .line 520
    .line 521
    move/from16 v1, v30

    .line 522
    .line 523
    move-wide/from16 v29, v42

    .line 524
    .line 525
    move-wide/from16 v25, v5

    .line 526
    .line 527
    move/from16 v21, v13

    .line 528
    .line 529
    move/from16 v6, v45

    .line 530
    .line 531
    move-wide/from16 v12, p2

    .line 532
    .line 533
    move v5, v0

    .line 534
    move-object/from16 v0, p0

    .line 535
    .line 536
    goto :goto_c

    .line 537
    :cond_b
    move v0, v5

    .line 538
    move/from16 v45, v6

    .line 539
    .line 540
    move-object v12, v10

    .line 541
    move-object v10, v11

    .line 542
    move/from16 v13, v21

    .line 543
    .line 544
    move-wide/from16 v5, v25

    .line 545
    .line 546
    move-wide/from16 v42, v29

    .line 547
    .line 548
    move-object/from16 v44, v40

    .line 549
    .line 550
    move/from16 v30, v1

    .line 551
    .line 552
    move-object/from16 v25, v2

    .line 553
    .line 554
    move/from16 v29, v3

    .line 555
    .line 556
    move/from16 v21, v4

    .line 557
    .line 558
    move/from16 v26, v18

    .line 559
    .line 560
    move-object/from16 v4, v31

    .line 561
    .line 562
    move/from16 v18, v16

    .line 563
    .line 564
    move-object/from16 v16, v14

    .line 565
    .line 566
    move v14, v7

    .line 567
    move-object v7, v8

    .line 568
    if-ge v0, v15, :cond_c

    .line 569
    .line 570
    move v0, v15

    .line 571
    :cond_c
    sub-int/2addr v0, v15

    .line 572
    add-int v11, v23, v28

    .line 573
    .line 574
    if-gez v11, :cond_d

    .line 575
    .line 576
    move v1, v13

    .line 577
    goto :goto_d

    .line 578
    :cond_d
    move v1, v11

    .line 579
    :goto_d
    neg-int v2, v0

    .line 580
    move v3, v13

    .line 581
    move v8, v3

    .line 582
    move/from16 v31, v34

    .line 583
    .line 584
    :goto_e
    iget v13, v12, Lkotlin/collections/ArrayDeque;->size:I

    .line 585
    .line 586
    if-ge v3, v13, :cond_f

    .line 587
    .line 588
    if-lt v2, v1, :cond_e

    .line 589
    .line 590
    invoke-virtual {v12, v3}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move/from16 v8, v32

    .line 594
    .line 595
    goto :goto_e

    .line 596
    :cond_e
    add-int/lit8 v31, v31, 0x1

    .line 597
    .line 598
    add-int v2, v2, v35

    .line 599
    .line 600
    add-int/lit8 v3, v3, 0x1

    .line 601
    .line 602
    goto :goto_e

    .line 603
    :cond_f
    move v3, v14

    .line 604
    move v14, v0

    .line 605
    move v0, v3

    .line 606
    move v13, v2

    .line 607
    move/from16 v3, v30

    .line 608
    .line 609
    move/from16 v2, v31

    .line 610
    .line 611
    move-object/from16 v30, v16

    .line 612
    .line 613
    move/from16 v16, v8

    .line 614
    .line 615
    :goto_f
    if-ge v2, v3, :cond_14

    .line 616
    .line 617
    if-lt v13, v1, :cond_11

    .line 618
    .line 619
    if-lez v13, :cond_11

    .line 620
    .line 621
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 622
    .line 623
    .line 624
    move-result v8

    .line 625
    if-eqz v8, :cond_10

    .line 626
    .line 627
    goto :goto_10

    .line 628
    :cond_10
    move/from16 p0, v11

    .line 629
    .line 630
    move/from16 v31, v14

    .line 631
    .line 632
    move/from16 v15, v23

    .line 633
    .line 634
    move v11, v0

    .line 635
    move v0, v2

    .line 636
    move v14, v3

    .line 637
    move-wide/from16 v2, v36

    .line 638
    .line 639
    goto/16 :goto_13

    .line 640
    .line 641
    :cond_11
    :goto_10
    invoke-interface/range {v25 .. v25}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 642
    .line 643
    .line 644
    move-result-object v8

    .line 645
    move/from16 p0, v11

    .line 646
    .line 647
    move/from16 v31, v14

    .line 648
    .line 649
    move v11, v0

    .line 650
    move v14, v3

    .line 651
    move-object/from16 v0, p1

    .line 652
    .line 653
    move-wide/from16 v51, v36

    .line 654
    .line 655
    move/from16 v36, v1

    .line 656
    .line 657
    move v1, v2

    .line 658
    move-wide/from16 v2, v51

    .line 659
    .line 660
    invoke-static/range {v0 .. v10}, Lokio/Okio;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 661
    .line 662
    .line 663
    move-result-object v8

    .line 664
    move v0, v1

    .line 665
    add-int/lit8 v1, v14, -0x1

    .line 666
    .line 667
    if-ne v0, v1, :cond_12

    .line 668
    .line 669
    move/from16 v37, v9

    .line 670
    .line 671
    goto :goto_11

    .line 672
    :cond_12
    move/from16 v37, v35

    .line 673
    .line 674
    :goto_11
    add-int v13, v13, v37

    .line 675
    .line 676
    if-gt v13, v15, :cond_13

    .line 677
    .line 678
    if-eq v0, v1, :cond_13

    .line 679
    .line 680
    add-int/lit8 v1, v0, 0x1

    .line 681
    .line 682
    sub-int v8, v31, v35

    .line 683
    .line 684
    move/from16 v34, v1

    .line 685
    .line 686
    move/from16 v31, v8

    .line 687
    .line 688
    move v1, v11

    .line 689
    move/from16 v16, v32

    .line 690
    .line 691
    goto :goto_12

    .line 692
    :cond_13
    iget v1, v8, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    .line 693
    .line 694
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    invoke-virtual {v12, v8}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    :goto_12
    add-int/lit8 v0, v0, 0x1

    .line 702
    .line 703
    move-wide/from16 v51, v2

    .line 704
    .line 705
    move v2, v0

    .line 706
    move v0, v1

    .line 707
    move/from16 v1, v36

    .line 708
    .line 709
    move-wide/from16 v36, v51

    .line 710
    .line 711
    move/from16 v11, p0

    .line 712
    .line 713
    move v3, v14

    .line 714
    move/from16 v14, v31

    .line 715
    .line 716
    goto :goto_f

    .line 717
    :cond_14
    move/from16 p0, v11

    .line 718
    .line 719
    move/from16 v31, v14

    .line 720
    .line 721
    move v11, v0

    .line 722
    move v0, v2

    .line 723
    move v14, v3

    .line 724
    move-wide/from16 v2, v36

    .line 725
    .line 726
    move/from16 v15, v23

    .line 727
    .line 728
    :goto_13
    if-ge v13, v15, :cond_17

    .line 729
    .line 730
    sub-int v1, v15, v13

    .line 731
    .line 732
    sub-int v8, v31, v1

    .line 733
    .line 734
    add-int/2addr v13, v1

    .line 735
    move v1, v8

    .line 736
    :goto_14
    move/from16 v8, v29

    .line 737
    .line 738
    if-ge v1, v8, :cond_15

    .line 739
    .line 740
    if-lez v34, :cond_15

    .line 741
    .line 742
    add-int/lit8 v34, v34, -0x1

    .line 743
    .line 744
    move/from16 v29, v8

    .line 745
    .line 746
    invoke-interface/range {v25 .. v25}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 747
    .line 748
    .line 749
    move-result-object v8

    .line 750
    move/from16 v31, v1

    .line 751
    .line 752
    move/from16 v23, v13

    .line 753
    .line 754
    move/from16 v1, v34

    .line 755
    .line 756
    move v13, v0

    .line 757
    move-object/from16 v0, p1

    .line 758
    .line 759
    invoke-static/range {v0 .. v10}, Lokio/Okio;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 760
    .line 761
    .line 762
    move-result-object v8

    .line 763
    const/4 v0, 0x0

    .line 764
    invoke-virtual {v12, v0, v8}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 765
    .line 766
    .line 767
    iget v0, v8, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    .line 768
    .line 769
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 770
    .line 771
    .line 772
    move-result v11

    .line 773
    add-int v0, v31, v35

    .line 774
    .line 775
    move v1, v0

    .line 776
    move v0, v13

    .line 777
    move/from16 v13, v23

    .line 778
    .line 779
    goto :goto_14

    .line 780
    :cond_15
    move/from16 v31, v1

    .line 781
    .line 782
    move/from16 v29, v8

    .line 783
    .line 784
    move/from16 v23, v13

    .line 785
    .line 786
    move v13, v0

    .line 787
    if-gez v31, :cond_16

    .line 788
    .line 789
    add-int v0, v23, v31

    .line 790
    .line 791
    move/from16 v23, v0

    .line 792
    .line 793
    const/4 v0, 0x0

    .line 794
    goto :goto_16

    .line 795
    :cond_16
    :goto_15
    move/from16 v0, v31

    .line 796
    .line 797
    goto :goto_16

    .line 798
    :cond_17
    move/from16 v51, v13

    .line 799
    .line 800
    move v13, v0

    .line 801
    move/from16 v0, v51

    .line 802
    .line 803
    move/from16 v23, v0

    .line 804
    .line 805
    goto :goto_15

    .line 806
    :goto_16
    if-ltz v0, :cond_18

    .line 807
    .line 808
    goto :goto_17

    .line 809
    :cond_18
    const-string v1, "invalid currentFirstPageScrollOffset"

    .line 810
    .line 811
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    :goto_17
    neg-int v1, v0

    .line 815
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v8

    .line 819
    check-cast v8, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 820
    .line 821
    if-gtz v29, :cond_19

    .line 822
    .line 823
    if-gez v26, :cond_1a

    .line 824
    .line 825
    :cond_19
    move/from16 v29, v0

    .line 826
    .line 827
    goto :goto_18

    .line 828
    :cond_1a
    move/from16 v31, v0

    .line 829
    .line 830
    move/from16 v29, v1

    .line 831
    .line 832
    move/from16 v36, v11

    .line 833
    .line 834
    move/from16 v11, v35

    .line 835
    .line 836
    goto :goto_1a

    .line 837
    :goto_18
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    move-object/from16 v31, v8

    .line 842
    .line 843
    move/from16 v8, v29

    .line 844
    .line 845
    move/from16 v29, v1

    .line 846
    .line 847
    const/4 v1, 0x0

    .line 848
    :goto_19
    if-ge v1, v0, :cond_1b

    .line 849
    .line 850
    if-eqz v8, :cond_1b

    .line 851
    .line 852
    move/from16 v36, v11

    .line 853
    .line 854
    move/from16 v11, v35

    .line 855
    .line 856
    if-gt v11, v8, :cond_1c

    .line 857
    .line 858
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 859
    .line 860
    .line 861
    move-result v35

    .line 862
    move/from16 v37, v0

    .line 863
    .line 864
    add-int/lit8 v0, v35, -0x1

    .line 865
    .line 866
    if-eq v1, v0, :cond_1c

    .line 867
    .line 868
    sub-int/2addr v8, v11

    .line 869
    add-int/lit8 v1, v1, 0x1

    .line 870
    .line 871
    invoke-virtual {v12, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    move-object/from16 v31, v0

    .line 876
    .line 877
    check-cast v31, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 878
    .line 879
    move/from16 v35, v11

    .line 880
    .line 881
    move/from16 v11, v36

    .line 882
    .line 883
    move/from16 v0, v37

    .line 884
    .line 885
    goto :goto_19

    .line 886
    :cond_1b
    move/from16 v36, v11

    .line 887
    .line 888
    move/from16 v11, v35

    .line 889
    .line 890
    :cond_1c
    move-object/from16 v51, v31

    .line 891
    .line 892
    move/from16 v31, v8

    .line 893
    .line 894
    move-object/from16 v8, v51

    .line 895
    .line 896
    :goto_1a
    sub-int v0, v34, v45

    .line 897
    .line 898
    const/4 v1, 0x0

    .line 899
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 900
    .line 901
    .line 902
    move-result v0

    .line 903
    add-int/lit8 v1, v34, -0x1

    .line 904
    .line 905
    if-gt v0, v1, :cond_1e

    .line 906
    .line 907
    const/16 v34, 0x0

    .line 908
    .line 909
    :goto_1b
    if-nez v34, :cond_1d

    .line 910
    .line 911
    new-instance v34, Ljava/util/ArrayList;

    .line 912
    .line 913
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .line 915
    .line 916
    :cond_1d
    move/from16 v35, v13

    .line 917
    .line 918
    move-object/from16 v13, v34

    .line 919
    .line 920
    move-object/from16 v34, v8

    .line 921
    .line 922
    invoke-interface/range {v25 .. v25}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 923
    .line 924
    .line 925
    move-result-object v8

    .line 926
    move/from16 v37, v23

    .line 927
    .line 928
    move/from16 v23, v15

    .line 929
    .line 930
    move-object/from16 v15, v34

    .line 931
    .line 932
    move/from16 v34, v37

    .line 933
    .line 934
    move/from16 v37, v11

    .line 935
    .line 936
    move-object/from16 v41, v12

    .line 937
    .line 938
    move/from16 v12, v45

    .line 939
    .line 940
    move v11, v0

    .line 941
    move-object/from16 v0, p1

    .line 942
    .line 943
    invoke-static/range {v0 .. v10}, Lokio/Okio;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 944
    .line 945
    .line 946
    move-result-object v8

    .line 947
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    .line 949
    .line 950
    if-eq v1, v11, :cond_1f

    .line 951
    .line 952
    add-int/lit8 v1, v1, -0x1

    .line 953
    .line 954
    move v0, v11

    .line 955
    move/from16 v45, v12

    .line 956
    .line 957
    move-object v8, v15

    .line 958
    move/from16 v15, v23

    .line 959
    .line 960
    move/from16 v23, v34

    .line 961
    .line 962
    move/from16 v11, v37

    .line 963
    .line 964
    move-object/from16 v12, v41

    .line 965
    .line 966
    move-object/from16 v34, v13

    .line 967
    .line 968
    move/from16 v13, v35

    .line 969
    .line 970
    goto :goto_1b

    .line 971
    :cond_1e
    move/from16 v37, v11

    .line 972
    .line 973
    move-object/from16 v41, v12

    .line 974
    .line 975
    move/from16 v35, v13

    .line 976
    .line 977
    move/from16 v34, v23

    .line 978
    .line 979
    move/from16 v12, v45

    .line 980
    .line 981
    move v11, v0

    .line 982
    move/from16 v23, v15

    .line 983
    .line 984
    move-object v15, v8

    .line 985
    const/4 v13, 0x0

    .line 986
    :cond_1f
    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->size()I

    .line 987
    .line 988
    .line 989
    move-result v0

    .line 990
    move-object v1, v13

    .line 991
    const/4 v13, 0x0

    .line 992
    :goto_1c
    if-ge v13, v0, :cond_22

    .line 993
    .line 994
    move-object/from16 v8, v33

    .line 995
    .line 996
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v33

    .line 1000
    check-cast v33, Ljava/lang/Number;

    .line 1001
    .line 1002
    move/from16 v45, v0

    .line 1003
    .line 1004
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Number;->intValue()I

    .line 1005
    .line 1006
    .line 1007
    move-result v0

    .line 1008
    if-ge v0, v11, :cond_21

    .line 1009
    .line 1010
    if-nez v1, :cond_20

    .line 1011
    .line 1012
    new-instance v1, Ljava/util/ArrayList;

    .line 1013
    .line 1014
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .line 1016
    .line 1017
    :cond_20
    move-object/from16 v33, v8

    .line 1018
    .line 1019
    invoke-interface/range {v25 .. v25}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v8

    .line 1023
    move-object/from16 v46, v33

    .line 1024
    .line 1025
    move/from16 v33, v11

    .line 1026
    .line 1027
    move-object v11, v1

    .line 1028
    move v1, v0

    .line 1029
    move-object/from16 v0, p1

    .line 1030
    .line 1031
    invoke-static/range {v0 .. v10}, Lokio/Okio;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v1

    .line 1035
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    .line 1037
    .line 1038
    move-object v1, v11

    .line 1039
    goto :goto_1d

    .line 1040
    :cond_21
    move-object/from16 v46, v8

    .line 1041
    .line 1042
    move/from16 v33, v11

    .line 1043
    .line 1044
    :goto_1d
    add-int/lit8 v13, v13, 0x1

    .line 1045
    .line 1046
    move/from16 v11, v33

    .line 1047
    .line 1048
    move/from16 v0, v45

    .line 1049
    .line 1050
    move-object/from16 v33, v46

    .line 1051
    .line 1052
    goto :goto_1c

    .line 1053
    :cond_22
    move-object/from16 v46, v33

    .line 1054
    .line 1055
    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 1056
    .line 1057
    if-nez v1, :cond_23

    .line 1058
    .line 1059
    move-object v13, v11

    .line 1060
    goto :goto_1e

    .line 1061
    :cond_23
    move-object v13, v1

    .line 1062
    :goto_1e
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 1063
    .line 1064
    .line 1065
    move-result v0

    .line 1066
    move/from16 v8, v36

    .line 1067
    .line 1068
    const/4 v1, 0x0

    .line 1069
    :goto_1f
    if-ge v1, v0, :cond_24

    .line 1070
    .line 1071
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v33

    .line 1075
    move/from16 v36, v0

    .line 1076
    .line 1077
    move-object/from16 v0, v33

    .line 1078
    .line 1079
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1080
    .line 1081
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    .line 1082
    .line 1083
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 1084
    .line 1085
    .line 1086
    move-result v8

    .line 1087
    add-int/lit8 v1, v1, 0x1

    .line 1088
    .line 1089
    move/from16 v0, v36

    .line 1090
    .line 1091
    goto :goto_1f

    .line 1092
    :cond_24
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1097
    .line 1098
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1099
    .line 1100
    sub-int v1, v14, v0

    .line 1101
    .line 1102
    add-int/lit8 v1, v1, -0x1

    .line 1103
    .line 1104
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    .line 1105
    .line 1106
    .line 1107
    move-result v1

    .line 1108
    add-int/2addr v1, v0

    .line 1109
    add-int/lit8 v0, v0, 0x1

    .line 1110
    .line 1111
    if-gt v0, v1, :cond_26

    .line 1112
    .line 1113
    const/16 v33, 0x0

    .line 1114
    .line 1115
    :goto_20
    if-nez v33, :cond_25

    .line 1116
    .line 1117
    new-instance v33, Ljava/util/ArrayList;

    .line 1118
    .line 1119
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    .line 1121
    .line 1122
    :cond_25
    move-object/from16 v36, v11

    .line 1123
    .line 1124
    move-object/from16 v11, v33

    .line 1125
    .line 1126
    move/from16 v33, v8

    .line 1127
    .line 1128
    invoke-interface/range {v25 .. v25}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v8

    .line 1132
    move/from16 v45, v12

    .line 1133
    .line 1134
    move v12, v1

    .line 1135
    move v1, v0

    .line 1136
    move-object/from16 v0, p1

    .line 1137
    .line 1138
    invoke-static/range {v0 .. v10}, Lokio/Okio;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v8

    .line 1142
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    .line 1144
    .line 1145
    if-eq v1, v12, :cond_27

    .line 1146
    .line 1147
    add-int/lit8 v0, v1, 0x1

    .line 1148
    .line 1149
    move v1, v12

    .line 1150
    move/from16 v8, v33

    .line 1151
    .line 1152
    move/from16 v12, v45

    .line 1153
    .line 1154
    move-object/from16 v33, v11

    .line 1155
    .line 1156
    move-object/from16 v11, v36

    .line 1157
    .line 1158
    goto :goto_20

    .line 1159
    :cond_26
    move/from16 v33, v8

    .line 1160
    .line 1161
    move-object/from16 v36, v11

    .line 1162
    .line 1163
    move/from16 v45, v12

    .line 1164
    .line 1165
    move v12, v1

    .line 1166
    const/4 v11, 0x0

    .line 1167
    :cond_27
    invoke-interface/range {v46 .. v46}, Ljava/util/Collection;->size()I

    .line 1168
    .line 1169
    .line 1170
    move-result v0

    .line 1171
    move-object v1, v11

    .line 1172
    const/4 v11, 0x0

    .line 1173
    :goto_21
    if-ge v11, v0, :cond_2a

    .line 1174
    .line 1175
    move-object/from16 v8, v46

    .line 1176
    .line 1177
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v46

    .line 1181
    check-cast v46, Ljava/lang/Number;

    .line 1182
    .line 1183
    move/from16 v47, v0

    .line 1184
    .line 1185
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Number;->intValue()I

    .line 1186
    .line 1187
    .line 1188
    move-result v0

    .line 1189
    move-object/from16 v46, v1

    .line 1190
    .line 1191
    add-int/lit8 v1, v12, 0x1

    .line 1192
    .line 1193
    if-gt v1, v0, :cond_29

    .line 1194
    .line 1195
    if-ge v0, v14, :cond_29

    .line 1196
    .line 1197
    if-nez v46, :cond_28

    .line 1198
    .line 1199
    new-instance v1, Ljava/util/ArrayList;

    .line 1200
    .line 1201
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    .line 1203
    .line 1204
    :goto_22
    move-object/from16 v46, v8

    .line 1205
    .line 1206
    goto :goto_23

    .line 1207
    :cond_28
    move-object/from16 v1, v46

    .line 1208
    .line 1209
    goto :goto_22

    .line 1210
    :goto_23
    invoke-interface/range {v25 .. v25}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v8

    .line 1214
    move/from16 v49, v11

    .line 1215
    .line 1216
    move/from16 v48, v47

    .line 1217
    .line 1218
    move-object v11, v1

    .line 1219
    move-object/from16 v47, v46

    .line 1220
    .line 1221
    move v1, v0

    .line 1222
    move-object/from16 v0, p1

    .line 1223
    .line 1224
    invoke-static/range {v0 .. v10}, Lokio/Okio;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    move-object v0, v7

    .line 1229
    move/from16 v7, v21

    .line 1230
    .line 1231
    move-object/from16 v8, v22

    .line 1232
    .line 1233
    move-wide/from16 v21, v2

    .line 1234
    .line 1235
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    move-object v1, v11

    .line 1239
    goto :goto_24

    .line 1240
    :cond_29
    move-object v0, v7

    .line 1241
    move/from16 v49, v11

    .line 1242
    .line 1243
    move/from16 v7, v21

    .line 1244
    .line 1245
    move/from16 v48, v47

    .line 1246
    .line 1247
    move-object/from16 v47, v8

    .line 1248
    .line 1249
    move-object/from16 v8, v22

    .line 1250
    .line 1251
    move-wide/from16 v21, v2

    .line 1252
    .line 1253
    move-object/from16 v1, v46

    .line 1254
    .line 1255
    :goto_24
    add-int/lit8 v11, v49, 0x1

    .line 1256
    .line 1257
    move-wide/from16 v2, v21

    .line 1258
    .line 1259
    move-object/from16 v46, v47

    .line 1260
    .line 1261
    move/from16 v21, v7

    .line 1262
    .line 1263
    move-object/from16 v22, v8

    .line 1264
    .line 1265
    move-object v7, v0

    .line 1266
    move/from16 v0, v48

    .line 1267
    .line 1268
    goto :goto_21

    .line 1269
    :cond_2a
    move-object/from16 v46, v1

    .line 1270
    .line 1271
    move/from16 v7, v21

    .line 1272
    .line 1273
    move-object/from16 v8, v22

    .line 1274
    .line 1275
    move-wide/from16 v21, v2

    .line 1276
    .line 1277
    if-nez v46, :cond_2b

    .line 1278
    .line 1279
    move-object/from16 v6, v36

    .line 1280
    .line 1281
    goto :goto_25

    .line 1282
    :cond_2b
    move-object/from16 v6, v46

    .line 1283
    .line 1284
    :goto_25
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 1285
    .line 1286
    .line 1287
    move-result v0

    .line 1288
    move/from16 v2, v33

    .line 1289
    .line 1290
    const/4 v1, 0x0

    .line 1291
    :goto_26
    if-ge v1, v0, :cond_2c

    .line 1292
    .line 1293
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v3

    .line 1297
    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1298
    .line 1299
    iget v3, v3, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    .line 1300
    .line 1301
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 1302
    .line 1303
    .line 1304
    move-result v2

    .line 1305
    add-int/lit8 v1, v1, 0x1

    .line 1306
    .line 1307
    goto :goto_26

    .line 1308
    :cond_2c
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v0

    .line 1316
    if-eqz v0, :cond_2d

    .line 1317
    .line 1318
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 1319
    .line 1320
    .line 1321
    move-result v0

    .line 1322
    if-eqz v0, :cond_2d

    .line 1323
    .line 1324
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1325
    .line 1326
    .line 1327
    move-result v0

    .line 1328
    if-eqz v0, :cond_2d

    .line 1329
    .line 1330
    move/from16 v10, v32

    .line 1331
    .line 1332
    :goto_27
    move/from16 v11, v34

    .line 1333
    .line 1334
    move-wide/from16 v0, v42

    .line 1335
    .line 1336
    goto :goto_28

    .line 1337
    :cond_2d
    const/4 v10, 0x0

    .line 1338
    goto :goto_27

    .line 1339
    :goto_28
    invoke-static {v11, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 1340
    .line 1341
    .line 1342
    move-result v3

    .line 1343
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 1344
    .line 1345
    .line 1346
    move-result v12

    .line 1347
    move/from16 v0, v23

    .line 1348
    .line 1349
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 1350
    .line 1351
    .line 1352
    move-result v1

    .line 1353
    if-ge v11, v1, :cond_2e

    .line 1354
    .line 1355
    move/from16 v1, v32

    .line 1356
    .line 1357
    goto :goto_29

    .line 1358
    :cond_2e
    const/4 v1, 0x0

    .line 1359
    :goto_29
    if-eqz v1, :cond_30

    .line 1360
    .line 1361
    if-nez v29, :cond_2f

    .line 1362
    .line 1363
    goto :goto_2a

    .line 1364
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    const-string v4, "non-zero pagesScrollOffset="

    .line 1367
    .line 1368
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1369
    .line 1370
    .line 1371
    move/from16 v4, v29

    .line 1372
    .line 1373
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v2

    .line 1380
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    goto :goto_2b

    .line 1384
    :cond_30
    :goto_2a
    move/from16 v4, v29

    .line 1385
    .line 1386
    :goto_2b
    new-instance v2, Ljava/util/ArrayList;

    .line 1387
    .line 1388
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1389
    .line 1390
    .line 1391
    move-result v5

    .line 1392
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 1393
    .line 1394
    .line 1395
    move-result v23

    .line 1396
    add-int v23, v23, v5

    .line 1397
    .line 1398
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1399
    .line 1400
    .line 1401
    move-result v5

    .line 1402
    add-int v5, v5, v23

    .line 1403
    .line 1404
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1405
    .line 1406
    .line 1407
    if-eqz v1, :cond_36

    .line 1408
    .line 1409
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 1410
    .line 1411
    .line 1412
    move-result v1

    .line 1413
    if-eqz v1, :cond_31

    .line 1414
    .line 1415
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1416
    .line 1417
    .line 1418
    move-result v1

    .line 1419
    if-eqz v1, :cond_31

    .line 1420
    .line 1421
    goto :goto_2c

    .line 1422
    :cond_31
    const-string v1, "No extra pages"

    .line 1423
    .line 1424
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1425
    .line 1426
    .line 1427
    :goto_2c
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1428
    .line 1429
    .line 1430
    move-result v1

    .line 1431
    move-object v4, v2

    .line 1432
    move v2, v3

    .line 1433
    new-array v3, v1, [I

    .line 1434
    .line 1435
    const/4 v5, 0x0

    .line 1436
    :goto_2d
    if-ge v5, v1, :cond_32

    .line 1437
    .line 1438
    aput v9, v3, v5

    .line 1439
    .line 1440
    add-int/lit8 v5, v5, 0x1

    .line 1441
    .line 1442
    goto :goto_2d

    .line 1443
    :cond_32
    new-array v5, v1, [I

    .line 1444
    .line 1445
    move/from16 v23, v7

    .line 1446
    .line 1447
    move-object/from16 v1, v25

    .line 1448
    .line 1449
    move/from16 v7, v26

    .line 1450
    .line 1451
    move/from16 v25, v0

    .line 1452
    .line 1453
    invoke-interface {v1, v7}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 1454
    .line 1455
    .line 1456
    move-result v0

    .line 1457
    move-object/from16 v26, v1

    .line 1458
    .line 1459
    new-instance v1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 1460
    .line 1461
    move/from16 v24, v2

    .line 1462
    .line 1463
    move/from16 v29, v7

    .line 1464
    .line 1465
    const/4 v2, 0x0

    .line 1466
    const/4 v7, 0x0

    .line 1467
    invoke-direct {v1, v0, v2, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;)V

    .line 1468
    .line 1469
    .line 1470
    move-object v0, v4

    .line 1471
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1472
    .line 1473
    move/from16 v2, v25

    .line 1474
    .line 1475
    move/from16 v25, v9

    .line 1476
    .line 1477
    move v9, v2

    .line 1478
    move-object v7, v0

    .line 1479
    move-object v0, v1

    .line 1480
    move/from16 v2, v24

    .line 1481
    .line 1482
    move-object/from16 v1, p1

    .line 1483
    .line 1484
    move-object/from16 v24, v8

    .line 1485
    .line 1486
    move-object/from16 v8, v26

    .line 1487
    .line 1488
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->arrange(Landroidx/compose/ui/layout/MeasureScope;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 1489
    .line 1490
    .line 1491
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v0

    .line 1495
    iget v1, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 1496
    .line 1497
    iget v0, v0, Lkotlin/ranges/IntProgression;->step:I

    .line 1498
    .line 1499
    if-lez v0, :cond_33

    .line 1500
    .line 1501
    if-gez v1, :cond_34

    .line 1502
    .line 1503
    :cond_33
    if-gez v0, :cond_35

    .line 1504
    .line 1505
    if-gtz v1, :cond_35

    .line 1506
    .line 1507
    :cond_34
    const/4 v3, 0x0

    .line 1508
    :goto_2e
    aget v4, v5, v3

    .line 1509
    .line 1510
    move/from16 v26, v0

    .line 1511
    .line 1512
    move-object/from16 v0, v41

    .line 1513
    .line 1514
    invoke-virtual {v0, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v27

    .line 1518
    move-object/from16 v34, v5

    .line 1519
    .line 1520
    move-object/from16 v5, v27

    .line 1521
    .line 1522
    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1523
    .line 1524
    invoke-virtual {v5, v4, v2, v12}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    .line 1529
    .line 1530
    if-eq v3, v1, :cond_39

    .line 1531
    .line 1532
    add-int v3, v3, v26

    .line 1533
    .line 1534
    move-object/from16 v41, v0

    .line 1535
    .line 1536
    move/from16 v0, v26

    .line 1537
    .line 1538
    move-object/from16 v5, v34

    .line 1539
    .line 1540
    goto :goto_2e

    .line 1541
    :cond_35
    move-object/from16 v0, v41

    .line 1542
    .line 1543
    goto :goto_32

    .line 1544
    :cond_36
    move/from16 v23, v7

    .line 1545
    .line 1546
    move-object/from16 v24, v8

    .line 1547
    .line 1548
    move-object/from16 v8, v25

    .line 1549
    .line 1550
    move/from16 v29, v26

    .line 1551
    .line 1552
    move-object v7, v2

    .line 1553
    move v2, v3

    .line 1554
    move/from16 v25, v9

    .line 1555
    .line 1556
    move v9, v0

    .line 1557
    move-object/from16 v0, v41

    .line 1558
    .line 1559
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 1560
    .line 1561
    .line 1562
    move-result v1

    .line 1563
    move v3, v4

    .line 1564
    const/4 v5, 0x0

    .line 1565
    :goto_2f
    if-ge v5, v1, :cond_37

    .line 1566
    .line 1567
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v26

    .line 1571
    move/from16 v34, v1

    .line 1572
    .line 1573
    move-object/from16 v1, v26

    .line 1574
    .line 1575
    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1576
    .line 1577
    sub-int v3, v3, v27

    .line 1578
    .line 1579
    invoke-virtual {v1, v3, v2, v12}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    .line 1584
    .line 1585
    add-int/lit8 v5, v5, 0x1

    .line 1586
    .line 1587
    move/from16 v1, v34

    .line 1588
    .line 1589
    goto :goto_2f

    .line 1590
    :cond_37
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1591
    .line 1592
    .line 1593
    move-result v1

    .line 1594
    const/4 v3, 0x0

    .line 1595
    :goto_30
    if-ge v3, v1, :cond_38

    .line 1596
    .line 1597
    invoke-virtual {v0, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v5

    .line 1601
    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1602
    .line 1603
    invoke-virtual {v5, v4, v2, v12}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    .line 1608
    .line 1609
    add-int v4, v4, v27

    .line 1610
    .line 1611
    add-int/lit8 v3, v3, 0x1

    .line 1612
    .line 1613
    goto :goto_30

    .line 1614
    :cond_38
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 1615
    .line 1616
    .line 1617
    move-result v1

    .line 1618
    const/4 v3, 0x0

    .line 1619
    :goto_31
    if-ge v3, v1, :cond_39

    .line 1620
    .line 1621
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v5

    .line 1625
    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1626
    .line 1627
    invoke-virtual {v5, v4, v2, v12}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 1628
    .line 1629
    .line 1630
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    .line 1632
    .line 1633
    add-int v4, v4, v27

    .line 1634
    .line 1635
    add-int/lit8 v3, v3, 0x1

    .line 1636
    .line 1637
    goto :goto_31

    .line 1638
    :cond_39
    :goto_32
    if-eqz v10, :cond_3b

    .line 1639
    .line 1640
    move-object v1, v7

    .line 1641
    :cond_3a
    move-object/from16 v41, v0

    .line 1642
    .line 1643
    move/from16 v27, v2

    .line 1644
    .line 1645
    goto :goto_34

    .line 1646
    :cond_3b
    new-instance v1, Ljava/util/ArrayList;

    .line 1647
    .line 1648
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1649
    .line 1650
    .line 1651
    move-result v3

    .line 1652
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1656
    .line 1657
    .line 1658
    move-result v3

    .line 1659
    const/4 v4, 0x0

    .line 1660
    :goto_33
    if-ge v4, v3, :cond_3a

    .line 1661
    .line 1662
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v5

    .line 1666
    move-object v10, v5

    .line 1667
    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1668
    .line 1669
    move-object/from16 v41, v0

    .line 1670
    .line 1671
    iget v0, v10, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1672
    .line 1673
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v26

    .line 1677
    move/from16 v27, v2

    .line 1678
    .line 1679
    move-object/from16 v2, v26

    .line 1680
    .line 1681
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1682
    .line 1683
    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1684
    .line 1685
    if-lt v0, v2, :cond_3c

    .line 1686
    .line 1687
    iget v0, v10, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1688
    .line 1689
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v2

    .line 1693
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1694
    .line 1695
    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1696
    .line 1697
    if-gt v0, v2, :cond_3c

    .line 1698
    .line 1699
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    .line 1701
    .line 1702
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    .line 1703
    .line 1704
    move/from16 v2, v27

    .line 1705
    .line 1706
    move-object/from16 v0, v41

    .line 1707
    .line 1708
    goto :goto_33

    .line 1709
    :goto_34
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 1710
    .line 1711
    .line 1712
    move-result v0

    .line 1713
    if-eqz v0, :cond_3d

    .line 1714
    .line 1715
    move-object/from16 v0, v36

    .line 1716
    .line 1717
    goto :goto_36

    .line 1718
    :cond_3d
    new-instance v0, Ljava/util/ArrayList;

    .line 1719
    .line 1720
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1721
    .line 1722
    .line 1723
    move-result v2

    .line 1724
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1728
    .line 1729
    .line 1730
    move-result v2

    .line 1731
    const/4 v3, 0x0

    .line 1732
    :goto_35
    if-ge v3, v2, :cond_3f

    .line 1733
    .line 1734
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v4

    .line 1738
    move-object v5, v4

    .line 1739
    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1740
    .line 1741
    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1742
    .line 1743
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v10

    .line 1747
    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1748
    .line 1749
    iget v10, v10, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1750
    .line 1751
    if-ge v5, v10, :cond_3e

    .line 1752
    .line 1753
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1754
    .line 1755
    .line 1756
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    .line 1757
    .line 1758
    goto :goto_35

    .line 1759
    :cond_3f
    :goto_36
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1760
    .line 1761
    .line 1762
    move-result v2

    .line 1763
    if-eqz v2, :cond_40

    .line 1764
    .line 1765
    move-object/from16 v2, v36

    .line 1766
    .line 1767
    goto :goto_38

    .line 1768
    :cond_40
    new-instance v2, Ljava/util/ArrayList;

    .line 1769
    .line 1770
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1771
    .line 1772
    .line 1773
    move-result v3

    .line 1774
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1775
    .line 1776
    .line 1777
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1778
    .line 1779
    .line 1780
    move-result v3

    .line 1781
    const/4 v6, 0x0

    .line 1782
    :goto_37
    if-ge v6, v3, :cond_42

    .line 1783
    .line 1784
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v4

    .line 1788
    move-object v5, v4

    .line 1789
    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1790
    .line 1791
    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1792
    .line 1793
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v10

    .line 1797
    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1798
    .line 1799
    iget v10, v10, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1800
    .line 1801
    if-le v5, v10, :cond_41

    .line 1802
    .line 1803
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    .line 1805
    .line 1806
    :cond_41
    add-int/lit8 v6, v6, 0x1

    .line 1807
    .line 1808
    goto :goto_37

    .line 1809
    :cond_42
    :goto_38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1810
    .line 1811
    .line 1812
    move-result v3

    .line 1813
    if-eqz v3, :cond_43

    .line 1814
    .line 1815
    const/16 v33, 0x0

    .line 1816
    .line 1817
    goto :goto_3a

    .line 1818
    :cond_43
    const/4 v13, 0x0

    .line 1819
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v3

    .line 1823
    move-object v4, v3

    .line 1824
    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1825
    .line 1826
    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    .line 1827
    .line 1828
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1829
    .line 1830
    .line 1831
    int-to-float v4, v4

    .line 1832
    sub-float v4, v4, v18

    .line 1833
    .line 1834
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 1835
    .line 1836
    .line 1837
    move-result v4

    .line 1838
    neg-float v4, v4

    .line 1839
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1840
    .line 1841
    .line 1842
    move-result v5

    .line 1843
    add-int/lit8 v5, v5, -0x1

    .line 1844
    .line 1845
    move/from16 v6, v32

    .line 1846
    .line 1847
    if-gt v6, v5, :cond_45

    .line 1848
    .line 1849
    move v10, v6

    .line 1850
    :goto_39
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v13

    .line 1854
    move-object v6, v13

    .line 1855
    check-cast v6, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1856
    .line 1857
    iget v6, v6, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    .line 1858
    .line 1859
    int-to-float v6, v6

    .line 1860
    sub-float v6, v6, v18

    .line 1861
    .line 1862
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 1863
    .line 1864
    .line 1865
    move-result v6

    .line 1866
    neg-float v6, v6

    .line 1867
    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    .line 1868
    .line 1869
    .line 1870
    move-result v26

    .line 1871
    if-gez v26, :cond_44

    .line 1872
    .line 1873
    move v4, v6

    .line 1874
    move-object v3, v13

    .line 1875
    :cond_44
    if-eq v10, v5, :cond_45

    .line 1876
    .line 1877
    add-int/lit8 v10, v10, 0x1

    .line 1878
    .line 1879
    const/4 v6, 0x1

    .line 1880
    goto :goto_39

    .line 1881
    :cond_45
    move-object/from16 v33, v3

    .line 1882
    .line 1883
    :goto_3a
    move-object/from16 v10, v33

    .line 1884
    .line 1885
    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1886
    .line 1887
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1888
    .line 1889
    .line 1890
    if-eqz v10, :cond_46

    .line 1891
    .line 1892
    iget v6, v10, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    .line 1893
    .line 1894
    goto :goto_3b

    .line 1895
    :cond_46
    const/4 v6, 0x0

    .line 1896
    :goto_3b
    if-nez v37, :cond_47

    .line 1897
    .line 1898
    const/16 v40, 0x0

    .line 1899
    .line 1900
    goto :goto_3c

    .line 1901
    :cond_47
    const/16 v40, 0x0

    .line 1902
    .line 1903
    rsub-int/lit8 v6, v6, 0x0

    .line 1904
    .line 1905
    int-to-float v3, v6

    .line 1906
    move/from16 v6, v37

    .line 1907
    .line 1908
    int-to-float v4, v6

    .line 1909
    div-float/2addr v3, v4

    .line 1910
    const/high16 v4, -0x41000000    # -0.5f

    .line 1911
    .line 1912
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1913
    .line 1914
    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 1915
    .line 1916
    .line 1917
    move-result v3

    .line 1918
    move/from16 v18, v3

    .line 1919
    .line 1920
    :goto_3c
    new-instance v3, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 1921
    .line 1922
    const/16 v4, 0x14

    .line 1923
    .line 1924
    move-object/from16 v5, v44

    .line 1925
    .line 1926
    invoke-direct {v3, v5, v7, v4}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1927
    .line 1928
    .line 1929
    add-int v4, v27, v20

    .line 1930
    .line 1931
    move-wide/from16 v5, p2

    .line 1932
    .line 1933
    invoke-static {v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    .line 1934
    .line 1935
    .line 1936
    move-result v4

    .line 1937
    add-int v12, v12, v23

    .line 1938
    .line 1939
    invoke-static {v12, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 1940
    .line 1941
    .line 1942
    move-result v5

    .line 1943
    move-object/from16 v6, v30

    .line 1944
    .line 1945
    invoke-interface {v8, v4, v5, v6, v3}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v3

    .line 1949
    move/from16 v13, v35

    .line 1950
    .line 1951
    if-lt v13, v14, :cond_49

    .line 1952
    .line 1953
    if-le v11, v9, :cond_48

    .line 1954
    .line 1955
    goto :goto_3e

    .line 1956
    :cond_48
    move/from16 v13, v40

    .line 1957
    .line 1958
    :goto_3d
    move-object/from16 v5, v17

    .line 1959
    .line 1960
    move-object/from16 v17, v0

    .line 1961
    .line 1962
    goto :goto_3f

    .line 1963
    :cond_49
    :goto_3e
    const/4 v13, 0x1

    .line 1964
    goto :goto_3d

    .line 1965
    :goto_3f
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 1966
    .line 1967
    move/from16 v7, p0

    .line 1968
    .line 1969
    move-object/from16 v20, p1

    .line 1970
    .line 1971
    move-object v9, v15

    .line 1972
    move/from16 v11, v18

    .line 1973
    .line 1974
    move-object/from16 v50, v24

    .line 1975
    .line 1976
    move/from16 v4, v28

    .line 1977
    .line 1978
    move/from16 v12, v31

    .line 1979
    .line 1980
    move-object/from16 v14, v38

    .line 1981
    .line 1982
    move/from16 v6, v39

    .line 1983
    .line 1984
    const/16 v32, 0x1

    .line 1985
    .line 1986
    move-object/from16 v18, v2

    .line 1987
    .line 1988
    move-object v15, v3

    .line 1989
    move/from16 v2, v25

    .line 1990
    .line 1991
    move/from16 v3, v29

    .line 1992
    .line 1993
    move-object/from16 v25, v8

    .line 1994
    .line 1995
    move/from16 v8, v45

    .line 1996
    .line 1997
    invoke-direct/range {v0 .. v22}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;J)V

    .line 1998
    .line 1999
    .line 2000
    move-object/from16 v1, v20

    .line 2001
    .line 2002
    :goto_40
    invoke-interface/range {v25 .. v25}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 2003
    .line 2004
    .line 2005
    move-result v2

    .line 2006
    move-object/from16 v8, v50

    .line 2007
    .line 2008
    const/4 v13, 0x0

    .line 2009
    invoke-virtual {v8, v0, v2, v13}, Landroidx/compose/foundation/pager/PagerState;->applyMeasureResult$foundation(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V

    .line 2010
    .line 2011
    .line 2012
    iget-object v2, v8, Landroidx/compose/foundation/pager/PagerState;->cacheWindowLogic:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 2013
    .line 2014
    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 2015
    .line 2016
    const-string v4, "compose:pager:cache_window:keepAroundItems"

    .line 2017
    .line 2018
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2019
    .line 2020
    .line 2021
    :try_start_1
    iget v4, v2, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 2022
    .line 2023
    const v5, 0x7fffffff

    .line 2024
    .line 2025
    .line 2026
    if-eq v4, v5, :cond_4a

    .line 2027
    .line 2028
    iget v4, v2, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 2029
    .line 2030
    const/high16 v5, -0x80000000

    .line 2031
    .line 2032
    if-eq v4, v5, :cond_4a

    .line 2033
    .line 2034
    move/from16 v6, v32

    .line 2035
    .line 2036
    goto :goto_41

    .line 2037
    :cond_4a
    move v6, v13

    .line 2038
    :goto_41
    if-eqz v6, :cond_4c

    .line 2039
    .line 2040
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 2041
    .line 2042
    .line 2043
    move-result v4

    .line 2044
    if-nez v4, :cond_4c

    .line 2045
    .line 2046
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v4

    .line 2050
    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2051
    .line 2052
    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 2053
    .line 2054
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 2055
    .line 2056
    .line 2057
    move-result-object v3

    .line 2058
    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2059
    .line 2060
    iget v3, v3, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 2061
    .line 2062
    iget v5, v2, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 2063
    .line 2064
    :goto_42
    if-ge v5, v4, :cond_4b

    .line 2065
    .line 2066
    invoke-virtual {v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->compose(I)Ljava/util/List;

    .line 2067
    .line 2068
    .line 2069
    add-int/lit8 v5, v5, 0x1

    .line 2070
    .line 2071
    goto :goto_42

    .line 2072
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    .line 2073
    .line 2074
    iget v2, v2, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 2075
    .line 2076
    if-gt v3, v2, :cond_4c

    .line 2077
    .line 2078
    :goto_43
    invoke-virtual {v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->compose(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2079
    .line 2080
    .line 2081
    if-eq v3, v2, :cond_4c

    .line 2082
    .line 2083
    add-int/lit8 v3, v3, 0x1

    .line 2084
    .line 2085
    goto :goto_43

    .line 2086
    :catchall_0
    move-exception v0

    .line 2087
    goto :goto_44

    .line 2088
    :cond_4c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2089
    .line 2090
    .line 2091
    return-object v0

    .line 2092
    :goto_44
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2093
    .line 2094
    .line 2095
    throw v0

    .line 2096
    :catchall_1
    move-exception v0

    .line 2097
    invoke-static {v1, v4, v15}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 2098
    .line 2099
    .line 2100
    throw v0
.end method
