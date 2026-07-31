.class public final Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# instance fields
.field public final synthetic $beyondViewportPageCount:I

.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field public final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final synthetic $pageCount:Lkotlin/jvm/functions/Function0;

.field public final synthetic $pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

.field public final synthetic $snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

.field public final synthetic $state:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic $verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;Lkotlin/reflect/KProperty0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/BiasAlignment$Vertical;ILandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageCount:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 17
    .line 18
    iput p8, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$beyondViewportPageCount:I

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 21
    .line 22
    iput-object p10, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 60

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v13, p2

    .line 6
    .line 7
    iget-object v15, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    .line 10
    .line 11
    iget-object v3, v2, Landroidx/compose/foundation/pager/PagerState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 17
    .line 18
    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 19
    .line 20
    if-ne v6, v3, :cond_0

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v7, 0x0

    .line 25
    :goto_0
    if-eqz v7, :cond_1

    .line 26
    .line 27
    move-object v8, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 30
    .line 31
    :goto_1
    invoke-static {v13, v14, v8}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 32
    .line 33
    .line 34
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 35
    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-interface {v8, v9}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    invoke-interface {v15, v9}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/OffsetKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    invoke-interface {v15, v9}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    :goto_2
    if-eqz v7, :cond_3

    .line 64
    .line 65
    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-interface {v8, v10}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    invoke-interface {v15, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-static {v8, v10}, Landroidx/compose/foundation/layout/OffsetKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    invoke-interface {v15, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    :goto_3
    invoke-interface {v8}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    invoke-interface {v15, v11}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    invoke-interface {v8}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    invoke-interface {v15, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    add-int/2addr v8, v11

    .line 107
    add-int v12, v9, v10

    .line 108
    .line 109
    if-eqz v7, :cond_4

    .line 110
    .line 111
    move/from16 v16, v8

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_4
    move/from16 v16, v12

    .line 115
    .line 116
    :goto_4
    if-eqz v7, :cond_5

    .line 117
    .line 118
    move v10, v11

    .line 119
    goto :goto_5

    .line 120
    :cond_5
    if-nez v7, :cond_6

    .line 121
    .line 122
    move v10, v9

    .line 123
    :cond_6
    :goto_5
    sub-int v4, v16, v10

    .line 124
    .line 125
    neg-int v5, v12

    .line 126
    move/from16 v18, v7

    .line 127
    .line 128
    neg-int v7, v8

    .line 129
    move/from16 v19, v8

    .line 130
    .line 131
    invoke-static {v5, v7, v13, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    .line 132
    .line 133
    .line 134
    move-result-wide v7

    .line 135
    iput-object v1, v2, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-interface {v15, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 139
    .line 140
    .line 141
    move-result v20

    .line 142
    if-eqz v18, :cond_7

    .line 143
    .line 144
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 145
    .line 146
    .line 147
    move-result v18

    .line 148
    sub-int v18, v18, v19

    .line 149
    .line 150
    :goto_6
    move/from16 v1, v18

    .line 151
    .line 152
    move-object/from16 v18, v6

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_7
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 156
    .line 157
    .line 158
    move-result v18

    .line 159
    sub-int v18, v18, v12

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :goto_7
    int-to-long v5, v9

    .line 163
    const/16 v9, 0x20

    .line 164
    .line 165
    shl-long/2addr v5, v9

    .line 166
    move-wide/from16 v22, v5

    .line 167
    .line 168
    int-to-long v5, v11

    .line 169
    const-wide v24, 0xffffffffL

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    and-long v5, v5, v24

    .line 175
    .line 176
    or-long v5, v22, v5

    .line 177
    .line 178
    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 179
    .line 180
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    if-gez v1, :cond_8

    .line 184
    .line 185
    const/4 v11, 0x0

    .line 186
    :goto_8
    move-object/from16 v9, v18

    .line 187
    .line 188
    goto :goto_9

    .line 189
    :cond_8
    move v11, v1

    .line 190
    goto :goto_8

    .line 191
    :goto_9
    if-ne v9, v3, :cond_9

    .line 192
    .line 193
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 194
    .line 195
    .line 196
    move-result v18

    .line 197
    move/from16 v57, v18

    .line 198
    .line 199
    move/from16 v18, v1

    .line 200
    .line 201
    move/from16 v1, v57

    .line 202
    .line 203
    goto :goto_a

    .line 204
    :cond_9
    move/from16 v18, v1

    .line 205
    .line 206
    move v1, v11

    .line 207
    :goto_a
    if-eq v9, v3, :cond_a

    .line 208
    .line 209
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    :goto_b
    move-wide/from16 v22, v5

    .line 214
    .line 215
    goto :goto_c

    .line 216
    :cond_a
    move v9, v11

    .line 217
    goto :goto_b

    .line 218
    :goto_c
    const/4 v5, 0x5

    .line 219
    const/4 v6, 0x0

    .line 220
    invoke-static {v6, v1, v6, v9, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 224
    .line 225
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 230
    .line 231
    add-int v6, v18, v10

    .line 232
    .line 233
    add-int/2addr v6, v4

    .line 234
    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 235
    .line 236
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    move-wide/from16 v25, v7

    .line 241
    .line 242
    if-eqz v5, :cond_b

    .line 243
    .line 244
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    goto :goto_d

    .line 249
    :cond_b
    const/4 v8, 0x0

    .line 250
    :goto_d
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    move/from16 v28, v12

    .line 255
    .line 256
    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 257
    .line 258
    .line 259
    move-result v12

    .line 260
    move-object/from16 v29, v15

    .line 261
    .line 262
    iget-object v15, v2, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 263
    .line 264
    iget-object v13, v15, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 265
    .line 266
    invoke-static {v12, v1, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 267
    .line 268
    .line 269
    move-result v13

    .line 270
    if-eq v12, v13, :cond_c

    .line 271
    .line 272
    iget-object v14, v15, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v14, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 275
    .line 276
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 277
    .line 278
    .line 279
    iget-object v14, v15, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 282
    .line 283
    invoke-virtual {v14, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 284
    .line 285
    .line 286
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, v6, v11, v10, v4}, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->position(IIII)I

    .line 297
    .line 298
    .line 299
    move-result v9

    .line 300
    int-to-float v9, v9

    .line 301
    add-int v14, v11, v20

    .line 302
    .line 303
    int-to-float v15, v14

    .line 304
    mul-float/2addr v12, v15

    .line 305
    sub-float/2addr v9, v12

    .line 306
    invoke-static {v9}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 307
    .line 308
    .line 309
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 310
    invoke-static {v5, v7, v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 311
    .line 312
    .line 313
    iget-object v5, v2, Landroidx/compose/foundation/pager/PagerState;->pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 314
    .line 315
    iget-object v7, v2, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 316
    .line 317
    invoke-static {v1, v5, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    .line 318
    .line 319
    .line 320
    move-result-object v15

    .line 321
    sget-object v5, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    .line 322
    .line 323
    new-instance v12, Landroidx/collection/MutableIntObjectMap;

    .line 324
    .line 325
    invoke-direct {v12}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 326
    .line 327
    .line 328
    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageCount:Lkotlin/jvm/functions/Function0;

    .line 329
    .line 330
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    check-cast v5, Ljava/lang/Number;

    .line 335
    .line 336
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    iget-object v7, v2, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 341
    .line 342
    if-ltz v10, :cond_d

    .line 343
    .line 344
    goto :goto_e

    .line 345
    :cond_d
    const-string v8, "negative beforeContentPadding"

    .line 346
    .line 347
    invoke-static {v8}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    :goto_e
    if-ltz v4, :cond_e

    .line 351
    .line 352
    goto :goto_f

    .line 353
    :cond_e
    const-string v8, "negative afterContentPadding"

    .line 354
    .line 355
    invoke-static {v8}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :goto_f
    if-gez v14, :cond_f

    .line 359
    .line 360
    const/4 v8, 0x0

    .line 361
    :goto_10
    move-object/from16 v30, v1

    .line 362
    .line 363
    goto :goto_11

    .line 364
    :cond_f
    move v8, v14

    .line 365
    goto :goto_10

    .line 366
    :goto_11
    iget v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$beyondViewportPageCount:I

    .line 367
    .line 368
    if-le v1, v5, :cond_10

    .line 369
    .line 370
    move v1, v5

    .line 371
    :cond_10
    move/from16 v31, v4

    .line 372
    .line 373
    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 374
    .line 375
    if-ne v4, v3, :cond_11

    .line 376
    .line 377
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 378
    .line 379
    .line 380
    move-result v32

    .line 381
    move/from16 v57, v32

    .line 382
    .line 383
    move/from16 v32, v1

    .line 384
    .line 385
    move/from16 v1, v57

    .line 386
    .line 387
    goto :goto_12

    .line 388
    :cond_11
    move/from16 v32, v1

    .line 389
    .line 390
    move v1, v11

    .line 391
    :goto_12
    if-eq v4, v3, :cond_12

    .line 392
    .line 393
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    :goto_13
    move-object/from16 v16, v2

    .line 398
    .line 399
    move-object/from16 v24, v4

    .line 400
    .line 401
    const/4 v2, 0x5

    .line 402
    const/4 v4, 0x0

    .line 403
    goto :goto_14

    .line 404
    :cond_12
    move v3, v11

    .line 405
    goto :goto_13

    .line 406
    :goto_14
    invoke-static {v4, v1, v4, v3, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 407
    .line 408
    .line 409
    move-result-wide v2

    .line 410
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 411
    .line 412
    move/from16 v33, v8

    .line 413
    .line 414
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 415
    .line 416
    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 417
    .line 418
    if-gtz v5, :cond_13

    .line 419
    .line 420
    neg-int v5, v10

    .line 421
    add-int v6, v18, v31

    .line 422
    .line 423
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    new-instance v9, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 432
    .line 433
    const/16 v10, 0x17

    .line 434
    .line 435
    invoke-direct {v9, v10}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 436
    .line 437
    .line 438
    add-int v0, v0, v28

    .line 439
    .line 440
    move-wide/from16 v12, p2

    .line 441
    .line 442
    invoke-static {v12, v13, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    add-int v7, v7, v19

    .line 447
    .line 448
    invoke-static {v12, v13, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 449
    .line 450
    .line 451
    move-result v7

    .line 452
    move-object/from16 v14, v29

    .line 453
    .line 454
    invoke-interface {v14, v0, v7, v1, v9}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 459
    .line 460
    move-wide v12, v2

    .line 461
    move-object v10, v4

    .line 462
    move v1, v11

    .line 463
    move-object/from16 v15, v16

    .line 464
    .line 465
    move/from16 v2, v20

    .line 466
    .line 467
    move-object/from16 v4, v24

    .line 468
    .line 469
    move/from16 v3, v31

    .line 470
    .line 471
    move/from16 v7, v32

    .line 472
    .line 473
    const/16 v16, 0x0

    .line 474
    .line 475
    const/16 v17, 0x1

    .line 476
    .line 477
    move-object/from16 v11, p1

    .line 478
    .line 479
    invoke-direct/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(IIILandroidx/compose/foundation/gestures/Orientation;IIILandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;J)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v1, p1

    .line 483
    .line 484
    move-object/from16 v53, v15

    .line 485
    .line 486
    move/from16 v52, v17

    .line 487
    .line 488
    goto/16 :goto_52

    .line 489
    .line 490
    :cond_13
    move/from16 v34, v19

    .line 491
    .line 492
    const/16 v17, 0x1

    .line 493
    .line 494
    move-object/from16 v19, v4

    .line 495
    .line 496
    move-wide v3, v2

    .line 497
    move/from16 v2, v20

    .line 498
    .line 499
    move/from16 v20, v14

    .line 500
    .line 501
    move-object v14, v8

    .line 502
    move-object/from16 v8, v16

    .line 503
    .line 504
    const/16 v16, 0x0

    .line 505
    .line 506
    :goto_15
    if-lez v13, :cond_14

    .line 507
    .line 508
    if-lez v9, :cond_14

    .line 509
    .line 510
    add-int/lit8 v13, v13, -0x1

    .line 511
    .line 512
    sub-int v9, v9, v33

    .line 513
    .line 514
    goto :goto_15

    .line 515
    :cond_14
    mul-int/lit8 v9, v9, -0x1

    .line 516
    .line 517
    if-lt v13, v5, :cond_15

    .line 518
    .line 519
    add-int/lit8 v13, v5, -0x1

    .line 520
    .line 521
    move/from16 v9, v16

    .line 522
    .line 523
    :cond_15
    move/from16 v35, v13

    .line 524
    .line 525
    new-instance v13, Lkotlin/collections/ArrayDeque;

    .line 526
    .line 527
    invoke-direct {v13}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 528
    .line 529
    .line 530
    move-object/from16 v36, v14

    .line 531
    .line 532
    neg-int v14, v10

    .line 533
    if-gez v2, :cond_16

    .line 534
    .line 535
    move/from16 v37, v2

    .line 536
    .line 537
    :goto_16
    move/from16 v38, v14

    .line 538
    .line 539
    goto :goto_17

    .line 540
    :cond_16
    move/from16 v37, v16

    .line 541
    .line 542
    goto :goto_16

    .line 543
    :goto_17
    add-int v14, v38, v37

    .line 544
    .line 545
    add-int/2addr v9, v14

    .line 546
    move-object/from16 v39, v1

    .line 547
    .line 548
    move/from16 v37, v35

    .line 549
    .line 550
    move-object/from16 v35, v15

    .line 551
    .line 552
    move v15, v9

    .line 553
    move/from16 v9, v16

    .line 554
    .line 555
    :goto_18
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 556
    .line 557
    if-gez v15, :cond_17

    .line 558
    .line 559
    if-lez v37, :cond_17

    .line 560
    .line 561
    add-int/lit8 v37, v37, -0x1

    .line 562
    .line 563
    move/from16 v40, v10

    .line 564
    .line 565
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 566
    .line 567
    .line 568
    move-result-object v10

    .line 569
    move/from16 v0, v16

    .line 570
    .line 571
    move/from16 v16, v14

    .line 572
    .line 573
    move v14, v0

    .line 574
    move/from16 v45, v2

    .line 575
    .line 576
    move/from16 v48, v5

    .line 577
    .line 578
    move/from16 v47, v6

    .line 579
    .line 580
    move-object/from16 v49, v7

    .line 581
    .line 582
    move-object/from16 v53, v8

    .line 583
    .line 584
    move v0, v9

    .line 585
    move/from16 v46, v18

    .line 586
    .line 587
    move-wide/from16 v6, v22

    .line 588
    .line 589
    move-object/from16 v8, v24

    .line 590
    .line 591
    move-wide/from16 v43, v25

    .line 592
    .line 593
    move-object/from16 v5, v30

    .line 594
    .line 595
    move/from16 v42, v31

    .line 596
    .line 597
    move/from16 v50, v32

    .line 598
    .line 599
    move/from16 v2, v37

    .line 600
    .line 601
    move-object/from16 v51, v39

    .line 602
    .line 603
    move/from16 v41, v40

    .line 604
    .line 605
    const/16 v21, 0x0

    .line 606
    .line 607
    move-object v9, v1

    .line 608
    move-object/from16 v1, p1

    .line 609
    .line 610
    invoke-static/range {v1 .. v12}, Landroidx/work/OperationKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 611
    .line 612
    .line 613
    move-result-object v9

    .line 614
    move v10, v11

    .line 615
    move-object v11, v12

    .line 616
    move-wide/from16 v57, v3

    .line 617
    .line 618
    move-object v4, v5

    .line 619
    move-wide v5, v6

    .line 620
    move-wide/from16 v7, v57

    .line 621
    .line 622
    invoke-virtual {v13, v14, v9}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    iget v1, v9, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    .line 626
    .line 627
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 628
    .line 629
    .line 630
    move-result v9

    .line 631
    add-int v15, v15, v33

    .line 632
    .line 633
    move/from16 v0, v16

    .line 634
    .line 635
    move/from16 v16, v14

    .line 636
    .line 637
    move v14, v0

    .line 638
    move-object/from16 v0, p0

    .line 639
    .line 640
    move-object/from16 v30, v4

    .line 641
    .line 642
    move-wide/from16 v22, v5

    .line 643
    .line 644
    move-wide v3, v7

    .line 645
    move/from16 v2, v45

    .line 646
    .line 647
    move/from16 v6, v47

    .line 648
    .line 649
    move/from16 v5, v48

    .line 650
    .line 651
    move-object/from16 v7, v49

    .line 652
    .line 653
    move-object/from16 v8, v53

    .line 654
    .line 655
    const/16 v17, 0x1

    .line 656
    .line 657
    move v11, v10

    .line 658
    move/from16 v10, v41

    .line 659
    .line 660
    goto :goto_18

    .line 661
    :cond_17
    move/from16 v0, v16

    .line 662
    .line 663
    move/from16 v16, v14

    .line 664
    .line 665
    move v14, v0

    .line 666
    move/from16 v45, v2

    .line 667
    .line 668
    move/from16 v48, v5

    .line 669
    .line 670
    move/from16 v47, v6

    .line 671
    .line 672
    move-object/from16 v49, v7

    .line 673
    .line 674
    move-object/from16 v53, v8

    .line 675
    .line 676
    move v0, v9

    .line 677
    move/from16 v41, v10

    .line 678
    .line 679
    move v10, v11

    .line 680
    move-object v11, v12

    .line 681
    move/from16 v46, v18

    .line 682
    .line 683
    move-wide/from16 v5, v22

    .line 684
    .line 685
    move-wide/from16 v43, v25

    .line 686
    .line 687
    move/from16 v42, v31

    .line 688
    .line 689
    move/from16 v50, v32

    .line 690
    .line 691
    move-object/from16 v51, v39

    .line 692
    .line 693
    const/16 v21, 0x0

    .line 694
    .line 695
    move-object v9, v1

    .line 696
    move-wide v7, v3

    .line 697
    move-object/from16 v4, v30

    .line 698
    .line 699
    move/from16 v12, v16

    .line 700
    .line 701
    if-ge v15, v12, :cond_18

    .line 702
    .line 703
    move v15, v12

    .line 704
    :cond_18
    sub-int/2addr v15, v12

    .line 705
    move/from16 v31, v42

    .line 706
    .line 707
    add-int v16, v46, v31

    .line 708
    .line 709
    if-gez v16, :cond_19

    .line 710
    .line 711
    move v1, v14

    .line 712
    goto :goto_19

    .line 713
    :cond_19
    move/from16 v1, v16

    .line 714
    .line 715
    :goto_19
    neg-int v2, v15

    .line 716
    move/from16 v22, v0

    .line 717
    .line 718
    move v3, v14

    .line 719
    move/from16 v18, v37

    .line 720
    .line 721
    :goto_1a
    iget v0, v13, Lkotlin/collections/ArrayDeque;->size:I

    .line 722
    .line 723
    if-ge v14, v0, :cond_1b

    .line 724
    .line 725
    if-lt v2, v1, :cond_1a

    .line 726
    .line 727
    invoke-virtual {v13, v14}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    const/4 v3, 0x1

    .line 731
    goto :goto_1a

    .line 732
    :cond_1a
    add-int/lit8 v18, v18, 0x1

    .line 733
    .line 734
    add-int v2, v2, v33

    .line 735
    .line 736
    add-int/lit8 v14, v14, 0x1

    .line 737
    .line 738
    goto :goto_1a

    .line 739
    :cond_1b
    move v14, v2

    .line 740
    move/from16 v0, v18

    .line 741
    .line 742
    move/from16 v2, v48

    .line 743
    .line 744
    move/from16 v18, v16

    .line 745
    .line 746
    move/from16 v16, v3

    .line 747
    .line 748
    :goto_1b
    if-ge v0, v2, :cond_20

    .line 749
    .line 750
    if-lt v14, v1, :cond_1c

    .line 751
    .line 752
    if-lez v14, :cond_1c

    .line 753
    .line 754
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 755
    .line 756
    .line 757
    move-result v3

    .line 758
    if-eqz v3, :cond_1d

    .line 759
    .line 760
    :cond_1c
    move/from16 v48, v2

    .line 761
    .line 762
    move-wide v2, v7

    .line 763
    move-object v8, v9

    .line 764
    goto :goto_1d

    .line 765
    :cond_1d
    move/from16 p0, v14

    .line 766
    .line 767
    move v14, v2

    .line 768
    move/from16 v2, p0

    .line 769
    .line 770
    move/from16 p0, v15

    .line 771
    .line 772
    move/from16 v15, v22

    .line 773
    .line 774
    :goto_1c
    move-wide/from16 v25, v7

    .line 775
    .line 776
    move-object v8, v9

    .line 777
    move-object/from16 v7, v24

    .line 778
    .line 779
    move/from16 v54, v31

    .line 780
    .line 781
    move/from16 v12, v46

    .line 782
    .line 783
    goto/16 :goto_21

    .line 784
    .line 785
    :goto_1d
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 786
    .line 787
    .line 788
    move-result-object v9

    .line 789
    move/from16 v23, v1

    .line 790
    .line 791
    move/from16 p0, v15

    .line 792
    .line 793
    move/from16 v15, v22

    .line 794
    .line 795
    move-object/from16 v7, v24

    .line 796
    .line 797
    move/from16 v54, v31

    .line 798
    .line 799
    move/from16 v55, v46

    .line 800
    .line 801
    move v1, v0

    .line 802
    move/from16 v22, v14

    .line 803
    .line 804
    move/from16 v14, v48

    .line 805
    .line 806
    move-object/from16 v0, p1

    .line 807
    .line 808
    invoke-static/range {v0 .. v11}, Landroidx/work/OperationKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 809
    .line 810
    .line 811
    move-result-object v9

    .line 812
    move v0, v1

    .line 813
    add-int/lit8 v1, v14, -0x1

    .line 814
    .line 815
    if-ne v0, v1, :cond_1e

    .line 816
    .line 817
    move/from16 v24, v10

    .line 818
    .line 819
    :goto_1e
    move-wide/from16 v25, v2

    .line 820
    .line 821
    goto :goto_1f

    .line 822
    :cond_1e
    move/from16 v24, v33

    .line 823
    .line 824
    goto :goto_1e

    .line 825
    :goto_1f
    add-int v2, v22, v24

    .line 826
    .line 827
    if-gt v2, v12, :cond_1f

    .line 828
    .line 829
    if-eq v0, v1, :cond_1f

    .line 830
    .line 831
    add-int/lit8 v1, v0, 0x1

    .line 832
    .line 833
    sub-int v3, p0, v33

    .line 834
    .line 835
    move/from16 v37, v1

    .line 836
    .line 837
    move/from16 v22, v15

    .line 838
    .line 839
    const/16 v16, 0x1

    .line 840
    .line 841
    move v15, v3

    .line 842
    goto :goto_20

    .line 843
    :cond_1f
    iget v1, v9, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    .line 844
    .line 845
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 846
    .line 847
    .line 848
    move-result v1

    .line 849
    invoke-virtual {v13, v9}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 850
    .line 851
    .line 852
    move/from16 v15, p0

    .line 853
    .line 854
    move/from16 v22, v1

    .line 855
    .line 856
    :goto_20
    add-int/lit8 v0, v0, 0x1

    .line 857
    .line 858
    move v1, v14

    .line 859
    move v14, v2

    .line 860
    move v2, v1

    .line 861
    move-object/from16 v24, v7

    .line 862
    .line 863
    move-object v9, v8

    .line 864
    move/from16 v1, v23

    .line 865
    .line 866
    move-wide/from16 v7, v25

    .line 867
    .line 868
    move/from16 v31, v54

    .line 869
    .line 870
    move/from16 v46, v55

    .line 871
    .line 872
    goto :goto_1b

    .line 873
    :cond_20
    move/from16 p0, v15

    .line 874
    .line 875
    move/from16 v15, v22

    .line 876
    .line 877
    move/from16 v22, v14

    .line 878
    .line 879
    move v14, v2

    .line 880
    move/from16 v2, v22

    .line 881
    .line 882
    goto :goto_1c

    .line 883
    :goto_21
    if-ge v2, v12, :cond_23

    .line 884
    .line 885
    sub-int v1, v12, v2

    .line 886
    .line 887
    sub-int v3, p0, v1

    .line 888
    .line 889
    add-int v22, v2, v1

    .line 890
    .line 891
    move v1, v15

    .line 892
    move/from16 v2, v41

    .line 893
    .line 894
    move v15, v3

    .line 895
    :goto_22
    if-ge v15, v2, :cond_21

    .line 896
    .line 897
    if-lez v37, :cond_21

    .line 898
    .line 899
    add-int/lit8 v37, v37, -0x1

    .line 900
    .line 901
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 902
    .line 903
    .line 904
    move-result-object v9

    .line 905
    move/from16 v56, v0

    .line 906
    .line 907
    move/from16 v40, v2

    .line 908
    .line 909
    move/from16 v23, v15

    .line 910
    .line 911
    move-wide/from16 v2, v25

    .line 912
    .line 913
    move-object/from16 v0, p1

    .line 914
    .line 915
    move v15, v1

    .line 916
    move/from16 v1, v37

    .line 917
    .line 918
    invoke-static/range {v0 .. v11}, Landroidx/work/OperationKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 919
    .line 920
    .line 921
    move-result-object v9

    .line 922
    move-object/from16 v24, v7

    .line 923
    .line 924
    const/4 v0, 0x0

    .line 925
    move-wide/from16 v57, v2

    .line 926
    .line 927
    move-object v3, v8

    .line 928
    move-wide/from16 v7, v57

    .line 929
    .line 930
    invoke-virtual {v13, v0, v9}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 931
    .line 932
    .line 933
    iget v0, v9, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    .line 934
    .line 935
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    add-int v15, v23, v33

    .line 940
    .line 941
    move-wide/from16 v25, v7

    .line 942
    .line 943
    move-object/from16 v7, v24

    .line 944
    .line 945
    move/from16 v2, v40

    .line 946
    .line 947
    move v1, v0

    .line 948
    move-object v8, v3

    .line 949
    move/from16 v0, v56

    .line 950
    .line 951
    goto :goto_22

    .line 952
    :cond_21
    move/from16 v56, v0

    .line 953
    .line 954
    move/from16 v40, v2

    .line 955
    .line 956
    move-object/from16 v24, v7

    .line 957
    .line 958
    move-object v3, v8

    .line 959
    move/from16 v23, v15

    .line 960
    .line 961
    move-wide/from16 v7, v25

    .line 962
    .line 963
    move v15, v1

    .line 964
    if-gez v23, :cond_22

    .line 965
    .line 966
    add-int v0, v22, v23

    .line 967
    .line 968
    move/from16 v22, v15

    .line 969
    .line 970
    move v15, v0

    .line 971
    const/4 v0, 0x0

    .line 972
    goto :goto_23

    .line 973
    :cond_22
    move/from16 v0, v22

    .line 974
    .line 975
    move/from16 v22, v15

    .line 976
    .line 977
    move v15, v0

    .line 978
    move/from16 v0, v23

    .line 979
    .line 980
    goto :goto_23

    .line 981
    :cond_23
    move/from16 v56, v0

    .line 982
    .line 983
    move-object/from16 v24, v7

    .line 984
    .line 985
    move-object v3, v8

    .line 986
    move-wide/from16 v7, v25

    .line 987
    .line 988
    move/from16 v40, v41

    .line 989
    .line 990
    move/from16 v0, p0

    .line 991
    .line 992
    move/from16 v22, v15

    .line 993
    .line 994
    move v15, v2

    .line 995
    :goto_23
    if-ltz v0, :cond_24

    .line 996
    .line 997
    goto :goto_24

    .line 998
    :cond_24
    const-string v1, "invalid currentFirstPageScrollOffset"

    .line 999
    .line 1000
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    :goto_24
    neg-int v1, v0

    .line 1004
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v2

    .line 1008
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1009
    .line 1010
    if-gtz v40, :cond_26

    .line 1011
    .line 1012
    if-gez v45, :cond_25

    .line 1013
    .line 1014
    goto :goto_25

    .line 1015
    :cond_25
    move/from16 v23, v1

    .line 1016
    .line 1017
    move/from16 v25, v15

    .line 1018
    .line 1019
    const/16 v52, 0x1

    .line 1020
    .line 1021
    move-object v9, v2

    .line 1022
    move/from16 v32, v50

    .line 1023
    .line 1024
    move v15, v0

    .line 1025
    goto :goto_28

    .line 1026
    :cond_26
    :goto_25
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1027
    .line 1028
    .line 1029
    move-result v9

    .line 1030
    move/from16 v23, v1

    .line 1031
    .line 1032
    const/4 v1, 0x0

    .line 1033
    :goto_26
    if-ge v1, v9, :cond_28

    .line 1034
    .line 1035
    if-eqz v0, :cond_28

    .line 1036
    .line 1037
    move/from16 v25, v15

    .line 1038
    .line 1039
    move/from16 v15, v33

    .line 1040
    .line 1041
    if-gt v15, v0, :cond_27

    .line 1042
    .line 1043
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1044
    .line 1045
    .line 1046
    move-result v26

    .line 1047
    move/from16 v33, v15

    .line 1048
    .line 1049
    const/16 v52, 0x1

    .line 1050
    .line 1051
    add-int/lit8 v15, v26, -0x1

    .line 1052
    .line 1053
    if-eq v1, v15, :cond_29

    .line 1054
    .line 1055
    sub-int v0, v0, v33

    .line 1056
    .line 1057
    add-int/lit8 v1, v1, 0x1

    .line 1058
    .line 1059
    invoke-virtual {v13, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v2

    .line 1063
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1064
    .line 1065
    move/from16 v15, v25

    .line 1066
    .line 1067
    goto :goto_26

    .line 1068
    :cond_27
    move/from16 v33, v15

    .line 1069
    .line 1070
    goto :goto_27

    .line 1071
    :cond_28
    move/from16 v25, v15

    .line 1072
    .line 1073
    :goto_27
    const/16 v52, 0x1

    .line 1074
    .line 1075
    :cond_29
    move v15, v0

    .line 1076
    move-object v9, v2

    .line 1077
    move/from16 v32, v50

    .line 1078
    .line 1079
    :goto_28
    sub-int v0, v37, v32

    .line 1080
    .line 1081
    const/4 v1, 0x0

    .line 1082
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1083
    .line 1084
    .line 1085
    move-result v0

    .line 1086
    add-int/lit8 v1, v37, -0x1

    .line 1087
    .line 1088
    if-gt v0, v1, :cond_2b

    .line 1089
    .line 1090
    const/4 v2, 0x0

    .line 1091
    :goto_29
    if-nez v2, :cond_2a

    .line 1092
    .line 1093
    new-instance v2, Ljava/util/ArrayList;

    .line 1094
    .line 1095
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .line 1097
    .line 1098
    :cond_2a
    move-object/from16 v26, v9

    .line 1099
    .line 1100
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v9

    .line 1104
    move/from16 v46, v12

    .line 1105
    .line 1106
    move/from16 p0, v15

    .line 1107
    .line 1108
    move v12, v0

    .line 1109
    move-object v15, v2

    .line 1110
    move-object/from16 v0, p1

    .line 1111
    .line 1112
    move-wide/from16 v57, v7

    .line 1113
    .line 1114
    move-object v8, v3

    .line 1115
    move-wide/from16 v2, v57

    .line 1116
    .line 1117
    move-object/from16 v7, v24

    .line 1118
    .line 1119
    move/from16 v24, v23

    .line 1120
    .line 1121
    move-object/from16 v23, v13

    .line 1122
    .line 1123
    move/from16 v13, v32

    .line 1124
    .line 1125
    invoke-static/range {v0 .. v11}, Landroidx/work/OperationKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v9

    .line 1129
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    .line 1131
    .line 1132
    if-eq v1, v12, :cond_2c

    .line 1133
    .line 1134
    add-int/lit8 v1, v1, -0x1

    .line 1135
    .line 1136
    move v0, v12

    .line 1137
    move/from16 v32, v13

    .line 1138
    .line 1139
    move-object/from16 v13, v23

    .line 1140
    .line 1141
    move/from16 v23, v24

    .line 1142
    .line 1143
    move-object/from16 v9, v26

    .line 1144
    .line 1145
    move/from16 v12, v46

    .line 1146
    .line 1147
    move-object/from16 v24, v7

    .line 1148
    .line 1149
    move-object/from16 v57, v15

    .line 1150
    .line 1151
    move/from16 v15, p0

    .line 1152
    .line 1153
    move-wide/from16 v58, v2

    .line 1154
    .line 1155
    move-object v3, v8

    .line 1156
    move-wide/from16 v7, v58

    .line 1157
    .line 1158
    move-object/from16 v2, v57

    .line 1159
    .line 1160
    goto :goto_29

    .line 1161
    :cond_2b
    move-wide/from16 v57, v7

    .line 1162
    .line 1163
    move-object v8, v3

    .line 1164
    move-wide/from16 v2, v57

    .line 1165
    .line 1166
    move-object/from16 v26, v9

    .line 1167
    .line 1168
    move/from16 v46, v12

    .line 1169
    .line 1170
    move/from16 p0, v15

    .line 1171
    .line 1172
    move-object/from16 v7, v24

    .line 1173
    .line 1174
    move v12, v0

    .line 1175
    move/from16 v24, v23

    .line 1176
    .line 1177
    move-object/from16 v23, v13

    .line 1178
    .line 1179
    move/from16 v13, v32

    .line 1180
    .line 1181
    const/4 v15, 0x0

    .line 1182
    :cond_2c
    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->size()I

    .line 1183
    .line 1184
    .line 1185
    move-result v0

    .line 1186
    move-object v1, v15

    .line 1187
    const/4 v15, 0x0

    .line 1188
    :goto_2a
    if-ge v15, v0, :cond_2f

    .line 1189
    .line 1190
    move-object/from16 v9, v35

    .line 1191
    .line 1192
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v27

    .line 1196
    check-cast v27, Ljava/lang/Number;

    .line 1197
    .line 1198
    move/from16 v30, v0

    .line 1199
    .line 1200
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->intValue()I

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    if-ge v0, v12, :cond_2e

    .line 1205
    .line 1206
    if-nez v1, :cond_2d

    .line 1207
    .line 1208
    new-instance v1, Ljava/util/ArrayList;

    .line 1209
    .line 1210
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    .line 1212
    .line 1213
    :cond_2d
    move-object/from16 v35, v9

    .line 1214
    .line 1215
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v9

    .line 1219
    move/from16 v31, v12

    .line 1220
    .line 1221
    move-object/from16 v27, v35

    .line 1222
    .line 1223
    move-object v12, v1

    .line 1224
    move v1, v0

    .line 1225
    move-object/from16 v0, p1

    .line 1226
    .line 1227
    invoke-static/range {v0 .. v11}, Landroidx/work/OperationKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
    move-object v1, v12

    .line 1235
    goto :goto_2b

    .line 1236
    :cond_2e
    move-object/from16 v27, v9

    .line 1237
    .line 1238
    move/from16 v31, v12

    .line 1239
    .line 1240
    :goto_2b
    add-int/lit8 v15, v15, 0x1

    .line 1241
    .line 1242
    move-object/from16 v35, v27

    .line 1243
    .line 1244
    move/from16 v0, v30

    .line 1245
    .line 1246
    move/from16 v12, v31

    .line 1247
    .line 1248
    goto :goto_2a

    .line 1249
    :cond_2f
    move-object/from16 v27, v35

    .line 1250
    .line 1251
    sget-object v12, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 1252
    .line 1253
    if-nez v1, :cond_30

    .line 1254
    .line 1255
    move-object v15, v12

    .line 1256
    goto :goto_2c

    .line 1257
    :cond_30
    move-object v15, v1

    .line 1258
    :goto_2c
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    move/from16 v9, v22

    .line 1263
    .line 1264
    const/4 v1, 0x0

    .line 1265
    :goto_2d
    if-ge v1, v0, :cond_31

    .line 1266
    .line 1267
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v22

    .line 1271
    move/from16 v30, v0

    .line 1272
    .line 1273
    move-object/from16 v0, v22

    .line 1274
    .line 1275
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1276
    .line 1277
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    .line 1278
    .line 1279
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    .line 1280
    .line 1281
    .line 1282
    move-result v9

    .line 1283
    add-int/lit8 v1, v1, 0x1

    .line 1284
    .line 1285
    move/from16 v0, v30

    .line 1286
    .line 1287
    goto :goto_2d

    .line 1288
    :cond_31
    invoke-virtual/range {v23 .. v23}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1293
    .line 1294
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1295
    .line 1296
    sub-int v1, v14, v0

    .line 1297
    .line 1298
    add-int/lit8 v1, v1, -0x1

    .line 1299
    .line 1300
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    .line 1301
    .line 1302
    .line 1303
    move-result v1

    .line 1304
    add-int/2addr v1, v0

    .line 1305
    add-int/lit8 v0, v0, 0x1

    .line 1306
    .line 1307
    if-gt v0, v1, :cond_33

    .line 1308
    .line 1309
    const/16 v22, 0x0

    .line 1310
    .line 1311
    :goto_2e
    if-nez v22, :cond_32

    .line 1312
    .line 1313
    new-instance v22, Ljava/util/ArrayList;

    .line 1314
    .line 1315
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    .line 1317
    .line 1318
    :cond_32
    move-object/from16 v30, v12

    .line 1319
    .line 1320
    move-object/from16 v12, v22

    .line 1321
    .line 1322
    move/from16 v22, v9

    .line 1323
    .line 1324
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v9

    .line 1328
    move/from16 v32, v13

    .line 1329
    .line 1330
    move v13, v1

    .line 1331
    move v1, v0

    .line 1332
    move-object/from16 v0, p1

    .line 1333
    .line 1334
    invoke-static/range {v0 .. v11}, Landroidx/work/OperationKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v9

    .line 1338
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    .line 1340
    .line 1341
    if-eq v1, v13, :cond_34

    .line 1342
    .line 1343
    add-int/lit8 v0, v1, 0x1

    .line 1344
    .line 1345
    move v1, v13

    .line 1346
    move/from16 v9, v22

    .line 1347
    .line 1348
    move/from16 v13, v32

    .line 1349
    .line 1350
    move-object/from16 v22, v12

    .line 1351
    .line 1352
    move-object/from16 v12, v30

    .line 1353
    .line 1354
    goto :goto_2e

    .line 1355
    :cond_33
    move/from16 v22, v9

    .line 1356
    .line 1357
    move-object/from16 v30, v12

    .line 1358
    .line 1359
    move/from16 v32, v13

    .line 1360
    .line 1361
    move v13, v1

    .line 1362
    const/4 v12, 0x0

    .line 1363
    :cond_34
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->size()I

    .line 1364
    .line 1365
    .line 1366
    move-result v0

    .line 1367
    move-object v1, v12

    .line 1368
    const/4 v12, 0x0

    .line 1369
    :goto_2f
    if-ge v12, v0, :cond_37

    .line 1370
    .line 1371
    move-object/from16 v9, v27

    .line 1372
    .line 1373
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v27

    .line 1377
    check-cast v27, Ljava/lang/Number;

    .line 1378
    .line 1379
    move/from16 v31, v0

    .line 1380
    .line 1381
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->intValue()I

    .line 1382
    .line 1383
    .line 1384
    move-result v0

    .line 1385
    move-object/from16 v27, v1

    .line 1386
    .line 1387
    add-int/lit8 v1, v13, 0x1

    .line 1388
    .line 1389
    if-gt v1, v0, :cond_36

    .line 1390
    .line 1391
    if-ge v0, v14, :cond_36

    .line 1392
    .line 1393
    if-nez v27, :cond_35

    .line 1394
    .line 1395
    new-instance v1, Ljava/util/ArrayList;

    .line 1396
    .line 1397
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1398
    .line 1399
    .line 1400
    :goto_30
    move-object/from16 v35, v9

    .line 1401
    .line 1402
    goto :goto_31

    .line 1403
    :cond_35
    move-object/from16 v1, v27

    .line 1404
    .line 1405
    goto :goto_30

    .line 1406
    :goto_31
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v9

    .line 1410
    move/from16 v37, v12

    .line 1411
    .line 1412
    move-object v12, v1

    .line 1413
    move v1, v0

    .line 1414
    move-object/from16 v0, p1

    .line 1415
    .line 1416
    invoke-static/range {v0 .. v11}, Landroidx/work/OperationKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v1

    .line 1420
    move-object v9, v7

    .line 1421
    move-wide/from16 v57, v2

    .line 1422
    .line 1423
    move-object v3, v8

    .line 1424
    move-wide/from16 v7, v57

    .line 1425
    .line 1426
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    .line 1428
    .line 1429
    move-object v1, v12

    .line 1430
    goto :goto_32

    .line 1431
    :cond_36
    move-object/from16 v0, p1

    .line 1432
    .line 1433
    move-object/from16 v35, v9

    .line 1434
    .line 1435
    move/from16 v37, v12

    .line 1436
    .line 1437
    move-object v9, v7

    .line 1438
    move-wide/from16 v57, v2

    .line 1439
    .line 1440
    move-object v3, v8

    .line 1441
    move-wide/from16 v7, v57

    .line 1442
    .line 1443
    move-object/from16 v1, v27

    .line 1444
    .line 1445
    :goto_32
    add-int/lit8 v12, v37, 0x1

    .line 1446
    .line 1447
    move-wide/from16 v57, v7

    .line 1448
    .line 1449
    move-object v8, v3

    .line 1450
    move-wide/from16 v2, v57

    .line 1451
    .line 1452
    move-object v7, v9

    .line 1453
    move/from16 v0, v31

    .line 1454
    .line 1455
    move-object/from16 v27, v35

    .line 1456
    .line 1457
    goto :goto_2f

    .line 1458
    :cond_37
    move-object/from16 v0, p1

    .line 1459
    .line 1460
    move-object/from16 v27, v1

    .line 1461
    .line 1462
    move-object v9, v7

    .line 1463
    move-wide v7, v2

    .line 1464
    if-nez v27, :cond_38

    .line 1465
    .line 1466
    move-object/from16 v6, v30

    .line 1467
    .line 1468
    goto :goto_33

    .line 1469
    :cond_38
    move-object/from16 v6, v27

    .line 1470
    .line 1471
    :goto_33
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 1472
    .line 1473
    .line 1474
    move-result v1

    .line 1475
    move/from16 v2, v22

    .line 1476
    .line 1477
    const/4 v5, 0x0

    .line 1478
    :goto_34
    if-ge v5, v1, :cond_39

    .line 1479
    .line 1480
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v3

    .line 1484
    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1485
    .line 1486
    iget v3, v3, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    .line 1487
    .line 1488
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 1489
    .line 1490
    .line 1491
    move-result v2

    .line 1492
    add-int/lit8 v5, v5, 0x1

    .line 1493
    .line 1494
    goto :goto_34

    .line 1495
    :cond_39
    invoke-virtual/range {v23 .. v23}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v1

    .line 1499
    move-object/from16 v11, v26

    .line 1500
    .line 1501
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1502
    .line 1503
    .line 1504
    move-result v1

    .line 1505
    if-eqz v1, :cond_3a

    .line 1506
    .line 1507
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 1508
    .line 1509
    .line 1510
    move-result v1

    .line 1511
    if-eqz v1, :cond_3a

    .line 1512
    .line 1513
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1514
    .line 1515
    .line 1516
    move-result v1

    .line 1517
    if-eqz v1, :cond_3a

    .line 1518
    .line 1519
    move/from16 v12, v52

    .line 1520
    .line 1521
    goto :goto_35

    .line 1522
    :cond_3a
    const/4 v12, 0x0

    .line 1523
    :goto_35
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 1524
    .line 1525
    if-ne v9, v1, :cond_3b

    .line 1526
    .line 1527
    move v5, v2

    .line 1528
    :goto_36
    move-wide/from16 v3, v43

    .line 1529
    .line 1530
    goto :goto_37

    .line 1531
    :cond_3b
    move/from16 v5, v25

    .line 1532
    .line 1533
    goto :goto_36

    .line 1534
    :goto_37
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 1535
    .line 1536
    .line 1537
    move-result v13

    .line 1538
    if-ne v9, v1, :cond_3c

    .line 1539
    .line 1540
    move/from16 v2, v25

    .line 1541
    .line 1542
    :cond_3c
    invoke-static {v3, v4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 1543
    .line 1544
    .line 1545
    move-result v2

    .line 1546
    move v3, v2

    .line 1547
    if-ne v9, v1, :cond_3d

    .line 1548
    .line 1549
    :goto_38
    move/from16 v1, v46

    .line 1550
    .line 1551
    goto :goto_39

    .line 1552
    :cond_3d
    move v2, v13

    .line 1553
    goto :goto_38

    .line 1554
    :goto_39
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 1555
    .line 1556
    .line 1557
    move-result v4

    .line 1558
    move/from16 v5, v25

    .line 1559
    .line 1560
    if-ge v5, v4, :cond_3e

    .line 1561
    .line 1562
    move/from16 v4, v52

    .line 1563
    .line 1564
    goto :goto_3a

    .line 1565
    :cond_3e
    const/4 v4, 0x0

    .line 1566
    :goto_3a
    if-eqz v4, :cond_40

    .line 1567
    .line 1568
    if-nez v24, :cond_3f

    .line 1569
    .line 1570
    goto :goto_3b

    .line 1571
    :cond_3f
    move/from16 v46, v1

    .line 1572
    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1574
    .line 1575
    move/from16 v22, v3

    .line 1576
    .line 1577
    const-string v3, "non-zero pagesScrollOffset="

    .line 1578
    .line 1579
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1580
    .line 1581
    .line 1582
    move/from16 v3, v24

    .line 1583
    .line 1584
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v1

    .line 1591
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1592
    .line 1593
    .line 1594
    goto :goto_3c

    .line 1595
    :cond_40
    :goto_3b
    move/from16 v46, v1

    .line 1596
    .line 1597
    move/from16 v22, v3

    .line 1598
    .line 1599
    move/from16 v3, v24

    .line 1600
    .line 1601
    :goto_3c
    new-instance v1, Ljava/util/ArrayList;

    .line 1602
    .line 1603
    invoke-virtual/range {v23 .. v23}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1604
    .line 1605
    .line 1606
    move-result v24

    .line 1607
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1608
    .line 1609
    .line 1610
    move-result v25

    .line 1611
    add-int v25, v25, v24

    .line 1612
    .line 1613
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1614
    .line 1615
    .line 1616
    move-result v24

    .line 1617
    move/from16 v26, v3

    .line 1618
    .line 1619
    add-int v3, v24, v25

    .line 1620
    .line 1621
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1622
    .line 1623
    .line 1624
    if-eqz v4, :cond_47

    .line 1625
    .line 1626
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 1627
    .line 1628
    .line 1629
    move-result v3

    .line 1630
    if-eqz v3, :cond_41

    .line 1631
    .line 1632
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1633
    .line 1634
    .line 1635
    move-result v3

    .line 1636
    if-eqz v3, :cond_41

    .line 1637
    .line 1638
    goto :goto_3d

    .line 1639
    :cond_41
    const-string v3, "No extra pages"

    .line 1640
    .line 1641
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1642
    .line 1643
    .line 1644
    :goto_3d
    invoke-virtual/range {v23 .. v23}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1645
    .line 1646
    .line 1647
    move-result v3

    .line 1648
    new-array v4, v3, [I

    .line 1649
    .line 1650
    move-object/from16 v24, v1

    .line 1651
    .line 1652
    const/4 v1, 0x0

    .line 1653
    :goto_3e
    if-ge v1, v3, :cond_42

    .line 1654
    .line 1655
    aput v10, v4, v1

    .line 1656
    .line 1657
    add-int/lit8 v1, v1, 0x1

    .line 1658
    .line 1659
    goto :goto_3e

    .line 1660
    :cond_42
    new-array v1, v3, [I

    .line 1661
    .line 1662
    move-wide/from16 v41, v7

    .line 1663
    .line 1664
    move-object/from16 v3, v29

    .line 1665
    .line 1666
    move/from16 v7, v45

    .line 1667
    .line 1668
    invoke-interface {v3, v7}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 1669
    .line 1670
    .line 1671
    move-result v8

    .line 1672
    new-instance v3, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 1673
    .line 1674
    move/from16 v25, v5

    .line 1675
    .line 1676
    const/4 v5, 0x0

    .line 1677
    const/4 v7, 0x0

    .line 1678
    invoke-direct {v3, v8, v5, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 1679
    .line 1680
    .line 1681
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 1682
    .line 1683
    if-ne v9, v5, :cond_43

    .line 1684
    .line 1685
    invoke-virtual {v3, v0, v2, v4, v1}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 1686
    .line 1687
    .line 1688
    move/from16 v5, v22

    .line 1689
    .line 1690
    move-object/from16 v22, v11

    .line 1691
    .line 1692
    move/from16 v11, v25

    .line 1693
    .line 1694
    move/from16 v25, v12

    .line 1695
    .line 1696
    move v12, v5

    .line 1697
    move-object v5, v1

    .line 1698
    move-object/from16 v8, v24

    .line 1699
    .line 1700
    move-object/from16 v7, v29

    .line 1701
    .line 1702
    move-object/from16 v24, v9

    .line 1703
    .line 1704
    move/from16 v9, v46

    .line 1705
    .line 1706
    goto :goto_3f

    .line 1707
    :cond_43
    move-object v0, v3

    .line 1708
    move-object v3, v4

    .line 1709
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1710
    .line 1711
    move/from16 v5, v22

    .line 1712
    .line 1713
    move-object/from16 v22, v11

    .line 1714
    .line 1715
    move/from16 v11, v25

    .line 1716
    .line 1717
    move/from16 v25, v12

    .line 1718
    .line 1719
    move v12, v5

    .line 1720
    move-object v5, v1

    .line 1721
    move-object/from16 v8, v24

    .line 1722
    .line 1723
    move-object/from16 v7, v29

    .line 1724
    .line 1725
    move-object/from16 v1, p1

    .line 1726
    .line 1727
    move-object/from16 v24, v9

    .line 1728
    .line 1729
    move/from16 v9, v46

    .line 1730
    .line 1731
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 1732
    .line 1733
    .line 1734
    :goto_3f
    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v0

    .line 1738
    iget v1, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 1739
    .line 1740
    iget v0, v0, Lkotlin/ranges/IntProgression;->step:I

    .line 1741
    .line 1742
    if-lez v0, :cond_44

    .line 1743
    .line 1744
    if-gez v1, :cond_45

    .line 1745
    .line 1746
    :cond_44
    if-gez v0, :cond_46

    .line 1747
    .line 1748
    if-gtz v1, :cond_46

    .line 1749
    .line 1750
    :cond_45
    const/4 v2, 0x0

    .line 1751
    :goto_40
    aget v3, v5, v2

    .line 1752
    .line 1753
    move-object/from16 v4, v23

    .line 1754
    .line 1755
    invoke-virtual {v4, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v20

    .line 1759
    move/from16 v23, v0

    .line 1760
    .line 1761
    move-object/from16 v0, v20

    .line 1762
    .line 1763
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1764
    .line 1765
    invoke-virtual {v0, v3, v13, v12}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    .line 1770
    .line 1771
    if-eq v2, v1, :cond_4a

    .line 1772
    .line 1773
    add-int v2, v2, v23

    .line 1774
    .line 1775
    move/from16 v0, v23

    .line 1776
    .line 1777
    move-object/from16 v23, v4

    .line 1778
    .line 1779
    goto :goto_40

    .line 1780
    :cond_46
    move-object/from16 v4, v23

    .line 1781
    .line 1782
    goto :goto_44

    .line 1783
    :cond_47
    move-wide/from16 v41, v7

    .line 1784
    .line 1785
    move-object/from16 v24, v9

    .line 1786
    .line 1787
    move/from16 v25, v12

    .line 1788
    .line 1789
    move/from16 v12, v22

    .line 1790
    .line 1791
    move-object/from16 v4, v23

    .line 1792
    .line 1793
    move-object/from16 v7, v29

    .line 1794
    .line 1795
    move/from16 v9, v46

    .line 1796
    .line 1797
    move-object v8, v1

    .line 1798
    move-object/from16 v22, v11

    .line 1799
    .line 1800
    move v11, v5

    .line 1801
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 1802
    .line 1803
    .line 1804
    move-result v0

    .line 1805
    move/from16 v1, v26

    .line 1806
    .line 1807
    const/4 v5, 0x0

    .line 1808
    :goto_41
    if-ge v5, v0, :cond_48

    .line 1809
    .line 1810
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v2

    .line 1814
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1815
    .line 1816
    sub-int v1, v1, v20

    .line 1817
    .line 1818
    invoke-virtual {v2, v1, v13, v12}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 1819
    .line 1820
    .line 1821
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    .line 1823
    .line 1824
    add-int/lit8 v5, v5, 0x1

    .line 1825
    .line 1826
    goto :goto_41

    .line 1827
    :cond_48
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1828
    .line 1829
    .line 1830
    move-result v0

    .line 1831
    move/from16 v1, v26

    .line 1832
    .line 1833
    const/4 v5, 0x0

    .line 1834
    :goto_42
    if-ge v5, v0, :cond_49

    .line 1835
    .line 1836
    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v2

    .line 1840
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1841
    .line 1842
    invoke-virtual {v2, v1, v13, v12}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 1843
    .line 1844
    .line 1845
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1846
    .line 1847
    .line 1848
    add-int v1, v1, v20

    .line 1849
    .line 1850
    add-int/lit8 v5, v5, 0x1

    .line 1851
    .line 1852
    goto :goto_42

    .line 1853
    :cond_49
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 1854
    .line 1855
    .line 1856
    move-result v0

    .line 1857
    const/4 v5, 0x0

    .line 1858
    :goto_43
    if-ge v5, v0, :cond_4a

    .line 1859
    .line 1860
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v2

    .line 1864
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1865
    .line 1866
    invoke-virtual {v2, v1, v13, v12}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 1867
    .line 1868
    .line 1869
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1870
    .line 1871
    .line 1872
    add-int v1, v1, v20

    .line 1873
    .line 1874
    add-int/lit8 v5, v5, 0x1

    .line 1875
    .line 1876
    goto :goto_43

    .line 1877
    :cond_4a
    :goto_44
    if-eqz v25, :cond_4c

    .line 1878
    .line 1879
    move-object v1, v8

    .line 1880
    :cond_4b
    move-object/from16 v25, v4

    .line 1881
    .line 1882
    goto :goto_46

    .line 1883
    :cond_4c
    new-instance v1, Ljava/util/ArrayList;

    .line 1884
    .line 1885
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1886
    .line 1887
    .line 1888
    move-result v0

    .line 1889
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1890
    .line 1891
    .line 1892
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1893
    .line 1894
    .line 1895
    move-result v0

    .line 1896
    const/4 v5, 0x0

    .line 1897
    :goto_45
    if-ge v5, v0, :cond_4b

    .line 1898
    .line 1899
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v2

    .line 1903
    move-object v3, v2

    .line 1904
    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1905
    .line 1906
    move/from16 v20, v0

    .line 1907
    .line 1908
    iget v0, v3, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1909
    .line 1910
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v23

    .line 1914
    move-object/from16 v25, v4

    .line 1915
    .line 1916
    move-object/from16 v4, v23

    .line 1917
    .line 1918
    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1919
    .line 1920
    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1921
    .line 1922
    if-lt v0, v4, :cond_4d

    .line 1923
    .line 1924
    iget v0, v3, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1925
    .line 1926
    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v3

    .line 1930
    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1931
    .line 1932
    iget v3, v3, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1933
    .line 1934
    if-gt v0, v3, :cond_4d

    .line 1935
    .line 1936
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    .line 1938
    .line 1939
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    .line 1940
    .line 1941
    move/from16 v0, v20

    .line 1942
    .line 1943
    move-object/from16 v4, v25

    .line 1944
    .line 1945
    goto :goto_45

    .line 1946
    :goto_46
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 1947
    .line 1948
    .line 1949
    move-result v0

    .line 1950
    if-eqz v0, :cond_4e

    .line 1951
    .line 1952
    move-object/from16 v0, v30

    .line 1953
    .line 1954
    goto :goto_48

    .line 1955
    :cond_4e
    new-instance v0, Ljava/util/ArrayList;

    .line 1956
    .line 1957
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1958
    .line 1959
    .line 1960
    move-result v2

    .line 1961
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1962
    .line 1963
    .line 1964
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1965
    .line 1966
    .line 1967
    move-result v2

    .line 1968
    const/4 v5, 0x0

    .line 1969
    :goto_47
    if-ge v5, v2, :cond_50

    .line 1970
    .line 1971
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v3

    .line 1975
    move-object v4, v3

    .line 1976
    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1977
    .line 1978
    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1979
    .line 1980
    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v15

    .line 1984
    check-cast v15, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1985
    .line 1986
    iget v15, v15, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 1987
    .line 1988
    if-ge v4, v15, :cond_4f

    .line 1989
    .line 1990
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    .line 1992
    .line 1993
    :cond_4f
    add-int/lit8 v5, v5, 0x1

    .line 1994
    .line 1995
    goto :goto_47

    .line 1996
    :cond_50
    :goto_48
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1997
    .line 1998
    .line 1999
    move-result v2

    .line 2000
    if-eqz v2, :cond_51

    .line 2001
    .line 2002
    goto :goto_4a

    .line 2003
    :cond_51
    new-instance v2, Ljava/util/ArrayList;

    .line 2004
    .line 2005
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 2006
    .line 2007
    .line 2008
    move-result v3

    .line 2009
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2010
    .line 2011
    .line 2012
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 2013
    .line 2014
    .line 2015
    move-result v3

    .line 2016
    const/4 v5, 0x0

    .line 2017
    :goto_49
    if-ge v5, v3, :cond_53

    .line 2018
    .line 2019
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2020
    .line 2021
    .line 2022
    move-result-object v4

    .line 2023
    move-object v6, v4

    .line 2024
    check-cast v6, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2025
    .line 2026
    iget v6, v6, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 2027
    .line 2028
    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v15

    .line 2032
    check-cast v15, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2033
    .line 2034
    iget v15, v15, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 2035
    .line 2036
    if-le v6, v15, :cond_52

    .line 2037
    .line 2038
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2039
    .line 2040
    .line 2041
    :cond_52
    add-int/lit8 v5, v5, 0x1

    .line 2042
    .line 2043
    goto :goto_49

    .line 2044
    :cond_53
    move-object/from16 v30, v2

    .line 2045
    .line 2046
    :goto_4a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 2047
    .line 2048
    .line 2049
    move-result v2

    .line 2050
    if-eqz v2, :cond_54

    .line 2051
    .line 2052
    move-object/from16 v20, v0

    .line 2053
    .line 2054
    move-object/from16 v26, v1

    .line 2055
    .line 2056
    move/from16 v27, v12

    .line 2057
    .line 2058
    move-object/from16 v15, v36

    .line 2059
    .line 2060
    move/from16 v5, v40

    .line 2061
    .line 2062
    move/from16 v6, v47

    .line 2063
    .line 2064
    move/from16 v4, v54

    .line 2065
    .line 2066
    const/4 v2, 0x0

    .line 2067
    const/16 v17, 0x0

    .line 2068
    .line 2069
    goto/16 :goto_4c

    .line 2070
    .line 2071
    :cond_54
    const/4 v4, 0x0

    .line 2072
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v2

    .line 2076
    move-object v3, v2

    .line 2077
    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2078
    .line 2079
    iget v3, v3, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    .line 2080
    .line 2081
    move-object/from16 v20, v0

    .line 2082
    .line 2083
    move/from16 v17, v4

    .line 2084
    .line 2085
    move-object/from16 v15, v36

    .line 2086
    .line 2087
    move/from16 v5, v40

    .line 2088
    .line 2089
    move/from16 v6, v47

    .line 2090
    .line 2091
    move/from16 v4, v54

    .line 2092
    .line 2093
    invoke-virtual {v15, v6, v10, v5, v4}, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->position(IIII)I

    .line 2094
    .line 2095
    .line 2096
    move-result v0

    .line 2097
    int-to-float v0, v0

    .line 2098
    int-to-float v3, v3

    .line 2099
    sub-float/2addr v3, v0

    .line 2100
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 2101
    .line 2102
    .line 2103
    move-result v0

    .line 2104
    neg-float v0, v0

    .line 2105
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 2106
    .line 2107
    .line 2108
    move-result v3

    .line 2109
    add-int/lit8 v3, v3, -0x1

    .line 2110
    .line 2111
    move/from16 v23, v0

    .line 2112
    .line 2113
    move/from16 v0, v52

    .line 2114
    .line 2115
    if-gt v0, v3, :cond_57

    .line 2116
    .line 2117
    move/from16 v57, v23

    .line 2118
    .line 2119
    move-object/from16 v23, v2

    .line 2120
    .line 2121
    move/from16 v2, v57

    .line 2122
    .line 2123
    :goto_4b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2124
    .line 2125
    .line 2126
    move-result-object v25

    .line 2127
    move-object/from16 v26, v1

    .line 2128
    .line 2129
    move-object/from16 v1, v25

    .line 2130
    .line 2131
    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2132
    .line 2133
    iget v1, v1, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    .line 2134
    .line 2135
    move/from16 v27, v12

    .line 2136
    .line 2137
    invoke-virtual {v15, v6, v10, v5, v4}, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->position(IIII)I

    .line 2138
    .line 2139
    .line 2140
    move-result v12

    .line 2141
    int-to-float v12, v12

    .line 2142
    int-to-float v1, v1

    .line 2143
    sub-float/2addr v1, v12

    .line 2144
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 2145
    .line 2146
    .line 2147
    move-result v1

    .line 2148
    neg-float v1, v1

    .line 2149
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    .line 2150
    .line 2151
    .line 2152
    move-result v12

    .line 2153
    if-gez v12, :cond_55

    .line 2154
    .line 2155
    move v2, v1

    .line 2156
    move-object/from16 v23, v25

    .line 2157
    .line 2158
    :cond_55
    if-eq v0, v3, :cond_56

    .line 2159
    .line 2160
    add-int/lit8 v0, v0, 0x1

    .line 2161
    .line 2162
    move-object/from16 v1, v26

    .line 2163
    .line 2164
    move/from16 v12, v27

    .line 2165
    .line 2166
    goto :goto_4b

    .line 2167
    :cond_56
    move-object/from16 v2, v23

    .line 2168
    .line 2169
    goto :goto_4c

    .line 2170
    :cond_57
    move-object/from16 v26, v1

    .line 2171
    .line 2172
    move/from16 v27, v12

    .line 2173
    .line 2174
    :goto_4c
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2175
    .line 2176
    invoke-virtual {v15, v6, v10, v5, v4}, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->position(IIII)I

    .line 2177
    .line 2178
    .line 2179
    move-result v0

    .line 2180
    if-eqz v2, :cond_58

    .line 2181
    .line 2182
    iget v5, v2, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    .line 2183
    .line 2184
    goto :goto_4d

    .line 2185
    :cond_58
    move/from16 v5, v17

    .line 2186
    .line 2187
    :goto_4d
    if-nez v33, :cond_59

    .line 2188
    .line 2189
    move/from16 v5, v21

    .line 2190
    .line 2191
    goto :goto_4e

    .line 2192
    :cond_59
    sub-int/2addr v0, v5

    .line 2193
    int-to-float v0, v0

    .line 2194
    move/from16 v1, v33

    .line 2195
    .line 2196
    int-to-float v1, v1

    .line 2197
    div-float/2addr v0, v1

    .line 2198
    const/high16 v1, -0x41000000    # -0.5f

    .line 2199
    .line 2200
    const/high16 v3, 0x3f000000    # 0.5f

    .line 2201
    .line 2202
    invoke-static {v0, v1, v3}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 2203
    .line 2204
    .line 2205
    move-result v5

    .line 2206
    :goto_4e
    new-instance v0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 2207
    .line 2208
    const/16 v1, 0x1c

    .line 2209
    .line 2210
    move-object/from16 v3, v49

    .line 2211
    .line 2212
    invoke-direct {v0, v1, v3, v8}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2213
    .line 2214
    .line 2215
    add-int v13, v13, v28

    .line 2216
    .line 2217
    move-object v3, v2

    .line 2218
    move-wide/from16 v1, p2

    .line 2219
    .line 2220
    invoke-static {v1, v2, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 2221
    .line 2222
    .line 2223
    move-result v6

    .line 2224
    add-int v8, v27, v34

    .line 2225
    .line 2226
    invoke-static {v1, v2, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 2227
    .line 2228
    .line 2229
    move-result v1

    .line 2230
    move-object/from16 v2, v51

    .line 2231
    .line 2232
    invoke-interface {v7, v6, v1, v2, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 2233
    .line 2234
    .line 2235
    move-result-object v0

    .line 2236
    move/from16 v1, v56

    .line 2237
    .line 2238
    if-lt v1, v14, :cond_5b

    .line 2239
    .line 2240
    if-le v11, v9, :cond_5a

    .line 2241
    .line 2242
    goto :goto_50

    .line 2243
    :cond_5a
    move/from16 v13, v17

    .line 2244
    .line 2245
    :goto_4f
    move-object v14, v15

    .line 2246
    move-object v15, v0

    .line 2247
    goto :goto_51

    .line 2248
    :cond_5b
    :goto_50
    const/4 v13, 0x1

    .line 2249
    goto :goto_4f

    .line 2250
    :goto_51
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2251
    .line 2252
    move/from16 v12, p0

    .line 2253
    .line 2254
    move v11, v5

    .line 2255
    move-object/from16 v29, v7

    .line 2256
    .line 2257
    move v2, v10

    .line 2258
    move/from16 v7, v18

    .line 2259
    .line 2260
    move-object/from16 v17, v20

    .line 2261
    .line 2262
    move-object/from16 v9, v22

    .line 2263
    .line 2264
    move-object/from16 v5, v24

    .line 2265
    .line 2266
    move-object/from16 v1, v26

    .line 2267
    .line 2268
    move-object/from16 v18, v30

    .line 2269
    .line 2270
    move/from16 v8, v32

    .line 2271
    .line 2272
    move/from16 v6, v38

    .line 2273
    .line 2274
    move-wide/from16 v21, v41

    .line 2275
    .line 2276
    const/16 v52, 0x1

    .line 2277
    .line 2278
    move-object/from16 v20, p1

    .line 2279
    .line 2280
    move-object v10, v3

    .line 2281
    move/from16 v3, v45

    .line 2282
    .line 2283
    invoke-direct/range {v0 .. v22}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;J)V

    .line 2284
    .line 2285
    .line 2286
    move-object/from16 v1, v20

    .line 2287
    .line 2288
    :goto_52
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 2289
    .line 2290
    .line 2291
    move-result v2

    .line 2292
    move-object/from16 v15, v53

    .line 2293
    .line 2294
    const/4 v4, 0x0

    .line 2295
    invoke-virtual {v15, v0, v2, v4}, Landroidx/compose/foundation/pager/PagerState;->applyMeasureResult$foundation(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V

    .line 2296
    .line 2297
    .line 2298
    iget-object v2, v15, Landroidx/compose/foundation/pager/PagerState;->cacheWindowLogic:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 2299
    .line 2300
    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 2301
    .line 2302
    const-string v4, "compose:pager:cache_window:keepAroundItems"

    .line 2303
    .line 2304
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2305
    .line 2306
    .line 2307
    :try_start_1
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->hasValidBounds()Z

    .line 2308
    .line 2309
    .line 2310
    move-result v4

    .line 2311
    if-eqz v4, :cond_5d

    .line 2312
    .line 2313
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 2314
    .line 2315
    .line 2316
    move-result v4

    .line 2317
    if-nez v4, :cond_5d

    .line 2318
    .line 2319
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v4

    .line 2323
    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2324
    .line 2325
    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 2326
    .line 2327
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v3

    .line 2331
    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2332
    .line 2333
    iget v3, v3, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 2334
    .line 2335
    iget v5, v2, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 2336
    .line 2337
    :goto_53
    if-ge v5, v4, :cond_5c

    .line 2338
    .line 2339
    invoke-virtual {v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->compose(I)Ljava/util/List;

    .line 2340
    .line 2341
    .line 2342
    add-int/lit8 v5, v5, 0x1

    .line 2343
    .line 2344
    goto :goto_53

    .line 2345
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    .line 2346
    .line 2347
    iget v2, v2, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 2348
    .line 2349
    if-gt v3, v2, :cond_5d

    .line 2350
    .line 2351
    :goto_54
    invoke-virtual {v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->compose(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2352
    .line 2353
    .line 2354
    if-eq v3, v2, :cond_5d

    .line 2355
    .line 2356
    add-int/lit8 v3, v3, 0x1

    .line 2357
    .line 2358
    goto :goto_54

    .line 2359
    :cond_5d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2360
    .line 2361
    .line 2362
    return-object v0

    .line 2363
    :catchall_0
    move-exception v0

    .line 2364
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2365
    .line 2366
    .line 2367
    throw v0

    .line 2368
    :catchall_1
    move-exception v0

    .line 2369
    invoke-static {v5, v7, v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 2370
    .line 2371
    .line 2372
    throw v0
.end method
