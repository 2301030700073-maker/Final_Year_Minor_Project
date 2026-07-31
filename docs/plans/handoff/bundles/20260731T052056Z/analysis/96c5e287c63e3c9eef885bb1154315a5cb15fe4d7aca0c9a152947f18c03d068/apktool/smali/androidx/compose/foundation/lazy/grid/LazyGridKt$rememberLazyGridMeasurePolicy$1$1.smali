.class public final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# instance fields
.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field public final synthetic $slots:Landroidx/compose/foundation/lazy/grid/GridSlotCache;

.field public final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic $stickyItemsScrollBehavior:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

.field public final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slots:Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 15
    .line 16
    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 17
    .line 18
    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$stickyItemsScrollBehavior:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 68

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
    iget-object v12, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 8
    .line 9
    iget-object v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 10
    .line 11
    iget-object v1, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    iget-object v14, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 14
    .line 15
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v26, 0x0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/16 v26, 0x1

    .line 33
    .line 34
    :goto_1
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 35
    .line 36
    invoke-static {v10, v11, v1}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 44
    .line 45
    invoke-interface {v4, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-interface {v12, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {v4, v5}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-interface {v12, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-interface {v12, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-interface {v12, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    add-int/2addr v4, v6

    .line 82
    add-int/2addr v5, v3

    .line 83
    sub-int v18, v4, v6

    .line 84
    .line 85
    neg-int v7, v5

    .line 86
    neg-int v8, v4

    .line 87
    invoke-static {v7, v8, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    const/16 v31, 0x1

    .line 92
    .line 93
    iget-object v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    invoke-interface {v15}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 100
    .line 101
    iget-object v2, v15, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 102
    .line 103
    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->spanLayoutProvider:Lokhttp3/Dispatcher;

    .line 104
    .line 105
    move-object/from16 v17, v1

    .line 106
    .line 107
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slots:Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    .line 108
    .line 109
    move/from16 v19, v4

    .line 110
    .line 111
    iget-object v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedSizes:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 112
    .line 113
    move/from16 v20, v5

    .line 114
    .line 115
    if-eqz v4, :cond_2

    .line 116
    .line 117
    iget-wide v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedConstraints:J

    .line 118
    .line 119
    invoke-static {v4, v5, v7, v8}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_2

    .line 124
    .line 125
    iget v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedDensity:F

    .line 126
    .line 127
    invoke-interface {v12}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    cmpg-float v4, v4, v5

    .line 132
    .line 133
    if-nez v4, :cond_2

    .line 134
    .line 135
    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedSizes:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_2
    iput-wide v7, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedConstraints:J

    .line 142
    .line 143
    invoke-interface {v12}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    iput v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedDensity:F

    .line 148
    .line 149
    iget-object v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->calculation:Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    new-instance v5, Landroidx/compose/ui/unit/Constraints;

    .line 152
    .line 153
    invoke-direct {v5, v7, v8}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v9, v5}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 161
    .line 162
    iput-object v4, v1, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedSizes:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 163
    .line 164
    move-object v1, v4

    .line 165
    :goto_2
    iget-object v4, v1, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->sizes:[I

    .line 166
    .line 167
    array-length v4, v4

    .line 168
    iget v5, v2, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 169
    .line 170
    if-eq v4, v5, :cond_3

    .line 171
    .line 172
    iput v4, v2, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 173
    .line 174
    iget-object v5, v2, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v5, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 179
    .line 180
    .line 181
    move-object/from16 v21, v1

    .line 182
    .line 183
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 184
    .line 185
    move/from16 v25, v4

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    invoke-direct {v1, v4, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    iget-object v1, v2, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v1, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_3
    move-object/from16 v21, v1

    .line 203
    .line 204
    move/from16 v25, v4

    .line 205
    .line 206
    const/4 v4, 0x0

    .line 207
    :goto_3
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 208
    .line 209
    if-eqz v1, :cond_55

    .line 210
    .line 211
    invoke-interface {v1}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    invoke-interface {v12, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 216
    .line 217
    .line 218
    move-result v22

    .line 219
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->getItemCount()I

    .line 220
    .line 221
    .line 222
    move-result v16

    .line 223
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    sub-int v5, v5, v19

    .line 228
    .line 229
    move/from16 v24, v5

    .line 230
    .line 231
    int-to-long v4, v3

    .line 232
    const/16 v32, 0x20

    .line 233
    .line 234
    shl-long v3, v4, v32

    .line 235
    .line 236
    move-object/from16 v27, v1

    .line 237
    .line 238
    move-object v5, v2

    .line 239
    int-to-long v1, v6

    .line 240
    const-wide v33, 0xffffffffL

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    and-long v1, v1, v33

    .line 246
    .line 247
    or-long/2addr v1, v3

    .line 248
    new-instance v35, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    .line 249
    .line 250
    move-object v3, v5

    .line 251
    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 252
    .line 253
    move-wide/from16 v44, v7

    .line 254
    .line 255
    move/from16 v7, v18

    .line 256
    .line 257
    move/from16 v42, v19

    .line 258
    .line 259
    move/from16 v43, v20

    .line 260
    .line 261
    move-object/from16 v20, v21

    .line 262
    .line 263
    move/from16 v4, v22

    .line 264
    .line 265
    move-object/from16 v46, v27

    .line 266
    .line 267
    move/from16 v67, v24

    .line 268
    .line 269
    move-object/from16 v24, v3

    .line 270
    .line 271
    move-object v3, v9

    .line 272
    move-wide v8, v1

    .line 273
    move-object v2, v15

    .line 274
    move/from16 v15, v67

    .line 275
    .line 276
    move-object/from16 v1, v35

    .line 277
    .line 278
    move-object/from16 v35, v17

    .line 279
    .line 280
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;ILandroidx/compose/foundation/lazy/grid/LazyGridState;IIJ)V

    .line 281
    .line 282
    .line 283
    move/from16 v19, v4

    .line 284
    .line 285
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 286
    .line 287
    iget-object v4, v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->keyIndexMap:Lokhttp3/internal/http/StatusLine;

    .line 288
    .line 289
    move/from16 v22, v19

    .line 290
    .line 291
    new-instance v19, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;

    .line 292
    .line 293
    move-object/from16 v23, v1

    .line 294
    .line 295
    move/from16 v21, v16

    .line 296
    .line 297
    invoke-direct/range {v19 .. v24}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridSlots;IILandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;Lokhttp3/Dispatcher;)V

    .line 298
    .line 299
    .line 300
    move-object/from16 v9, v19

    .line 301
    .line 302
    move/from16 v8, v21

    .line 303
    .line 304
    move/from16 v37, v22

    .line 305
    .line 306
    move-object/from16 v22, v23

    .line 307
    .line 308
    move-object/from16 v5, v24

    .line 309
    .line 310
    iget-object v1, v9, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->listItemCounts:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v1, Lokhttp3/Dispatcher;

    .line 313
    .line 314
    move-object/from16 v21, v4

    .line 315
    .line 316
    new-instance v4, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 317
    .line 318
    move/from16 v38, v7

    .line 319
    .line 320
    const/16 v7, 0x16

    .line 321
    .line 322
    invoke-direct {v4, v7, v5, v9}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    new-instance v7, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 326
    .line 327
    move-object/from16 v39, v4

    .line 328
    .line 329
    const/16 v4, 0xb

    .line 330
    .line 331
    invoke-direct {v7, v4, v5}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    const/16 v16, 0x0

    .line 339
    .line 340
    if-eqz v4, :cond_4

    .line 341
    .line 342
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 343
    .line 344
    .line 345
    move-result-object v17

    .line 346
    move-object/from16 v40, v7

    .line 347
    .line 348
    move-object/from16 v7, v17

    .line 349
    .line 350
    :goto_4
    move-object/from16 v47, v3

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_4
    move-object/from16 v40, v7

    .line 354
    .line 355
    move-object/from16 v7, v16

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :goto_5
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    move-object/from16 v17, v1

    .line 363
    .line 364
    :try_start_0
    iget-object v1, v14, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 365
    .line 366
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    move/from16 v48, v15

    .line 371
    .line 372
    iget-object v15, v14, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    .line 373
    .line 374
    invoke-static {v1, v2, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 375
    .line 376
    .line 377
    move-result v15

    .line 378
    if-eq v1, v15, :cond_5

    .line 379
    .line 380
    move-object/from16 v49, v9

    .line 381
    .line 382
    iget-object v9, v14, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 383
    .line 384
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 385
    .line 386
    .line 387
    iget-object v9, v14, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 388
    .line 389
    invoke-virtual {v9, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 390
    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_5
    move-object/from16 v49, v9

    .line 394
    .line 395
    :goto_6
    if-lt v15, v8, :cond_7

    .line 396
    .line 397
    if-gtz v8, :cond_6

    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_6
    add-int/lit8 v1, v8, -0x1

    .line 401
    .line 402
    invoke-virtual {v5, v1}, Lokhttp3/Dispatcher;->getLineIndexOfItem(I)I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    const/4 v5, 0x0

    .line 407
    goto :goto_8

    .line 408
    :catchall_0
    move-exception v0

    .line 409
    goto/16 :goto_4a

    .line 410
    .line 411
    :cond_7
    :goto_7
    invoke-virtual {v5, v15}, Lokhttp3/Dispatcher;->getLineIndexOfItem(I)I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    iget-object v5, v14, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 416
    .line 417
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 418
    .line 419
    .line 420
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :goto_8
    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 422
    .line 423
    .line 424
    iget-object v3, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 425
    .line 426
    iget-object v4, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 427
    .line 428
    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-nez v3, :cond_9

    .line 437
    .line 438
    if-nez v26, :cond_8

    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_8
    iget-object v3, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->_lazyLayoutScrollDeltaBetweenPasses:Landroidx/cardview/widget/CardView$1;

    .line 442
    .line 443
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v3, Landroidx/compose/animation/core/AnimationState;

    .line 446
    .line 447
    iget-object v3, v3, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 448
    .line 449
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    check-cast v3, Ljava/lang/Number;

    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    goto :goto_a

    .line 460
    :cond_9
    :goto_9
    iget v3, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 461
    .line 462
    :goto_a
    iget-object v4, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 463
    .line 464
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 465
    .line 466
    .line 467
    move-result v24

    .line 468
    iget-object v7, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 469
    .line 470
    iget-object v9, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 471
    .line 472
    if-ltz v6, :cond_a

    .line 473
    .line 474
    goto :goto_b

    .line 475
    :cond_a
    const-string v14, "negative beforeContentPadding"

    .line 476
    .line 477
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    :goto_b
    if-ltz v38, :cond_b

    .line 481
    .line 482
    goto :goto_c

    .line 483
    :cond_b
    const-string v14, "negative afterContentPadding"

    .line 484
    .line 485
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    :goto_c
    sget-object v14, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 489
    .line 490
    const/16 v23, 0x1

    .line 491
    .line 492
    iget-object v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 493
    .line 494
    move/from16 v18, v1

    .line 495
    .line 496
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 497
    .line 498
    move/from16 v19, v3

    .line 499
    .line 500
    move-object/from16 v20, v4

    .line 501
    .line 502
    const-wide/16 v3, 0x0

    .line 503
    .line 504
    move-object/from16 v41, v13

    .line 505
    .line 506
    sget-object v13, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 507
    .line 508
    if-gtz v8, :cond_d

    .line 509
    .line 510
    invoke-static/range {v44 .. v45}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 511
    .line 512
    .line 513
    move-result v18

    .line 514
    invoke-static/range {v44 .. v45}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 515
    .line 516
    .line 517
    move-result v19

    .line 518
    move-object/from16 v16, v20

    .line 519
    .line 520
    new-instance v20, Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .line 524
    .line 525
    const/16 v27, 0x0

    .line 526
    .line 527
    const/16 v28, 0x0

    .line 528
    .line 529
    const/16 v17, 0x0

    .line 530
    .line 531
    move-object/from16 v30, v1

    .line 532
    .line 533
    move-object/from16 v29, v15

    .line 534
    .line 535
    invoke-virtual/range {v16 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lokhttp3/internal/http/StatusLine;Lorg/wikipedia/settings/BasePreferenceLoader;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 536
    .line 537
    .line 538
    move-object/from16 v20, v16

    .line 539
    .line 540
    if-nez v24, :cond_c

    .line 541
    .line 542
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 543
    .line 544
    .line 545
    move-result-wide v0

    .line 546
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    if-nez v2, :cond_c

    .line 551
    .line 552
    shr-long v2, v0, v32

    .line 553
    .line 554
    long-to-int v2, v2

    .line 555
    move-wide/from16 v3, v44

    .line 556
    .line 557
    invoke-static {v3, v4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 558
    .line 559
    .line 560
    move-result v18

    .line 561
    and-long v0, v0, v33

    .line 562
    .line 563
    long-to-int v0, v0

    .line 564
    invoke-static {v3, v4, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 565
    .line 566
    .line 567
    move-result v19

    .line 568
    :cond_c
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 569
    .line 570
    const/16 v1, 0x10

    .line 571
    .line 572
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 573
    .line 574
    .line 575
    add-int v1, v18, v43

    .line 576
    .line 577
    invoke-static {v10, v11, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    add-int v2, v19, v42

    .line 582
    .line 583
    invoke-static {v10, v11, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    invoke-interface {v12, v1, v2, v14, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    neg-int v14, v6

    .line 592
    add-int v15, v48, v38

    .line 593
    .line 594
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 595
    .line 596
    const/4 v7, 0x0

    .line 597
    const/16 v16, 0x0

    .line 598
    .line 599
    const/4 v1, 0x0

    .line 600
    const/4 v2, 0x0

    .line 601
    const/4 v3, 0x0

    .line 602
    const/4 v4, 0x0

    .line 603
    const/4 v6, 0x0

    .line 604
    move-object/from16 v9, p1

    .line 605
    .line 606
    move-object/from16 v56, v12

    .line 607
    .line 608
    move/from16 v10, v25

    .line 609
    .line 610
    move-object/from16 v8, v29

    .line 611
    .line 612
    move-object/from16 v17, v35

    .line 613
    .line 614
    move/from16 v19, v37

    .line 615
    .line 616
    move/from16 v18, v38

    .line 617
    .line 618
    move-object/from16 v11, v39

    .line 619
    .line 620
    move-object/from16 v12, v40

    .line 621
    .line 622
    move-object/from16 v57, v41

    .line 623
    .line 624
    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_49

    .line 628
    .line 629
    :cond_d
    move-object/from16 v30, v1

    .line 630
    .line 631
    move-object/from16 v51, v9

    .line 632
    .line 633
    move-object/from16 v56, v12

    .line 634
    .line 635
    move-object/from16 v29, v15

    .line 636
    .line 637
    move-object/from16 v15, v22

    .line 638
    .line 639
    move/from16 v1, v37

    .line 640
    .line 641
    move/from16 v12, v38

    .line 642
    .line 643
    move-object/from16 v58, v39

    .line 644
    .line 645
    move-object/from16 v59, v40

    .line 646
    .line 647
    move-object/from16 v57, v41

    .line 648
    .line 649
    move-object/from16 v9, p1

    .line 650
    .line 651
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 652
    .line 653
    .line 654
    move-result v22

    .line 655
    sub-int v5, v5, v22

    .line 656
    .line 657
    if-nez v18, :cond_e

    .line 658
    .line 659
    if-gez v5, :cond_e

    .line 660
    .line 661
    add-int v22, v22, v5

    .line 662
    .line 663
    const/4 v5, 0x0

    .line 664
    :cond_e
    new-instance v3, Lkotlin/collections/ArrayDeque;

    .line 665
    .line 666
    invoke-direct {v3}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 667
    .line 668
    .line 669
    neg-int v4, v6

    .line 670
    if-gez v1, :cond_f

    .line 671
    .line 672
    move/from16 v27, v1

    .line 673
    .line 674
    move/from16 v60, v27

    .line 675
    .line 676
    goto :goto_d

    .line 677
    :cond_f
    move/from16 v60, v1

    .line 678
    .line 679
    const/16 v27, 0x0

    .line 680
    .line 681
    :goto_d
    add-int v1, v4, v27

    .line 682
    .line 683
    add-int/2addr v5, v1

    .line 684
    :goto_e
    if-gez v5, :cond_10

    .line 685
    .line 686
    if-lez v18, :cond_10

    .line 687
    .line 688
    move/from16 v61, v4

    .line 689
    .line 690
    add-int/lit8 v4, v18, -0x1

    .line 691
    .line 692
    move/from16 v62, v12

    .line 693
    .line 694
    move-object/from16 v27, v13

    .line 695
    .line 696
    move-object/from16 v12, v49

    .line 697
    .line 698
    invoke-virtual {v12, v4}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 699
    .line 700
    .line 701
    move-result-object v13

    .line 702
    move/from16 v18, v4

    .line 703
    .line 704
    const/4 v4, 0x0

    .line 705
    invoke-virtual {v3, v4, v13}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    iget v13, v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 709
    .line 710
    add-int/2addr v5, v13

    .line 711
    move-object/from16 v13, v27

    .line 712
    .line 713
    move/from16 v4, v61

    .line 714
    .line 715
    move/from16 v12, v62

    .line 716
    .line 717
    goto :goto_e

    .line 718
    :cond_10
    move/from16 v61, v4

    .line 719
    .line 720
    move/from16 v62, v12

    .line 721
    .line 722
    move-object/from16 v27, v13

    .line 723
    .line 724
    move-object/from16 v12, v49

    .line 725
    .line 726
    const/4 v4, 0x0

    .line 727
    if-ge v5, v1, :cond_11

    .line 728
    .line 729
    sub-int v5, v1, v5

    .line 730
    .line 731
    sub-int v22, v22, v5

    .line 732
    .line 733
    move v5, v1

    .line 734
    :cond_11
    move/from16 v13, v22

    .line 735
    .line 736
    sub-int/2addr v5, v1

    .line 737
    add-int v49, v48, v62

    .line 738
    .line 739
    if-gez v49, :cond_12

    .line 740
    .line 741
    :goto_f
    move-object/from16 v63, v14

    .line 742
    .line 743
    goto :goto_10

    .line 744
    :cond_12
    move/from16 v4, v49

    .line 745
    .line 746
    goto :goto_f

    .line 747
    :goto_10
    neg-int v14, v5

    .line 748
    move/from16 v28, v5

    .line 749
    .line 750
    move v5, v14

    .line 751
    move/from16 v35, v18

    .line 752
    .line 753
    const/4 v14, 0x0

    .line 754
    const/16 v22, 0x0

    .line 755
    .line 756
    :goto_11
    iget v10, v3, Lkotlin/collections/ArrayDeque;->size:I

    .line 757
    .line 758
    if-ge v14, v10, :cond_14

    .line 759
    .line 760
    if-lt v5, v4, :cond_13

    .line 761
    .line 762
    invoke-virtual {v3, v14}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move/from16 v22, v31

    .line 766
    .line 767
    goto :goto_11

    .line 768
    :cond_13
    add-int/lit8 v35, v35, 0x1

    .line 769
    .line 770
    invoke-virtual {v3, v14}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v10

    .line 774
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 775
    .line 776
    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 777
    .line 778
    add-int/2addr v5, v10

    .line 779
    add-int/lit8 v14, v14, 0x1

    .line 780
    .line 781
    goto :goto_11

    .line 782
    :cond_14
    move/from16 v10, v22

    .line 783
    .line 784
    move/from16 v11, v35

    .line 785
    .line 786
    :goto_12
    if-ge v11, v8, :cond_15

    .line 787
    .line 788
    if-lt v5, v4, :cond_16

    .line 789
    .line 790
    if-lez v5, :cond_16

    .line 791
    .line 792
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 793
    .line 794
    .line 795
    move-result v14

    .line 796
    if-eqz v14, :cond_15

    .line 797
    .line 798
    goto :goto_14

    .line 799
    :cond_15
    move/from16 v64, v10

    .line 800
    .line 801
    :goto_13
    move/from16 v1, v48

    .line 802
    .line 803
    goto :goto_16

    .line 804
    :cond_16
    :goto_14
    invoke-virtual {v12, v11}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 805
    .line 806
    .line 807
    move-result-object v14

    .line 808
    move/from16 v22, v4

    .line 809
    .line 810
    iget v4, v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 811
    .line 812
    move/from16 v35, v4

    .line 813
    .line 814
    iget-object v4, v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 815
    .line 816
    move/from16 v64, v10

    .line 817
    .line 818
    array-length v10, v4

    .line 819
    if-nez v10, :cond_17

    .line 820
    .line 821
    goto :goto_13

    .line 822
    :cond_17
    add-int v5, v5, v35

    .line 823
    .line 824
    if-gt v5, v1, :cond_18

    .line 825
    .line 826
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 831
    .line 832
    iget v4, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 833
    .line 834
    add-int/lit8 v10, v8, -0x1

    .line 835
    .line 836
    if-eq v4, v10, :cond_18

    .line 837
    .line 838
    add-int/lit8 v4, v11, 0x1

    .line 839
    .line 840
    sub-int v28, v28, v35

    .line 841
    .line 842
    move/from16 v18, v4

    .line 843
    .line 844
    move/from16 v10, v31

    .line 845
    .line 846
    goto :goto_15

    .line 847
    :cond_18
    invoke-virtual {v3, v14}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 848
    .line 849
    .line 850
    move/from16 v10, v64

    .line 851
    .line 852
    :goto_15
    add-int/lit8 v11, v11, 0x1

    .line 853
    .line 854
    move/from16 v4, v22

    .line 855
    .line 856
    goto :goto_12

    .line 857
    :goto_16
    if-ge v5, v1, :cond_1a

    .line 858
    .line 859
    sub-int v4, v1, v5

    .line 860
    .line 861
    sub-int v28, v28, v4

    .line 862
    .line 863
    add-int/2addr v5, v4

    .line 864
    move/from16 v10, v28

    .line 865
    .line 866
    :goto_17
    if-ge v10, v6, :cond_19

    .line 867
    .line 868
    if-lez v18, :cond_19

    .line 869
    .line 870
    add-int/lit8 v11, v18, -0x1

    .line 871
    .line 872
    invoke-virtual {v12, v11}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 873
    .line 874
    .line 875
    move-result-object v14

    .line 876
    move/from16 v18, v4

    .line 877
    .line 878
    const/4 v4, 0x0

    .line 879
    invoke-virtual {v3, v4, v14}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 880
    .line 881
    .line 882
    iget v4, v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 883
    .line 884
    add-int/2addr v10, v4

    .line 885
    move/from16 v4, v18

    .line 886
    .line 887
    move/from16 v18, v11

    .line 888
    .line 889
    goto :goto_17

    .line 890
    :cond_19
    move/from16 v18, v4

    .line 891
    .line 892
    add-int v4, v13, v18

    .line 893
    .line 894
    if-gez v10, :cond_1b

    .line 895
    .line 896
    add-int/2addr v4, v10

    .line 897
    add-int/2addr v5, v10

    .line 898
    const/4 v10, 0x0

    .line 899
    goto :goto_18

    .line 900
    :cond_1a
    move v4, v13

    .line 901
    move/from16 v10, v28

    .line 902
    .line 903
    :cond_1b
    :goto_18
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 904
    .line 905
    .line 906
    move-result v11

    .line 907
    invoke-static {v11}, Ljava/lang/Integer;->signum(I)I

    .line 908
    .line 909
    .line 910
    move-result v11

    .line 911
    invoke-static {v4}, Ljava/lang/Integer;->signum(I)I

    .line 912
    .line 913
    .line 914
    move-result v14

    .line 915
    if-ne v11, v14, :cond_1c

    .line 916
    .line 917
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 918
    .line 919
    .line 920
    move-result v11

    .line 921
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 922
    .line 923
    .line 924
    move-result v11

    .line 925
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 926
    .line 927
    .line 928
    move-result v14

    .line 929
    if-lt v11, v14, :cond_1c

    .line 930
    .line 931
    int-to-float v11, v4

    .line 932
    goto :goto_19

    .line 933
    :cond_1c
    move/from16 v11, v19

    .line 934
    .line 935
    :goto_19
    sub-float v14, v19, v11

    .line 936
    .line 937
    const/16 v18, 0x0

    .line 938
    .line 939
    if-eqz v24, :cond_1d

    .line 940
    .line 941
    if-le v4, v13, :cond_1d

    .line 942
    .line 943
    cmpg-float v19, v14, v18

    .line 944
    .line 945
    if-gtz v19, :cond_1d

    .line 946
    .line 947
    sub-int/2addr v4, v13

    .line 948
    int-to-float v4, v4

    .line 949
    add-float v18, v4, v14

    .line 950
    .line 951
    :cond_1d
    move/from16 v4, v18

    .line 952
    .line 953
    if-ltz v10, :cond_1e

    .line 954
    .line 955
    goto :goto_1a

    .line 956
    :cond_1e
    const-string v13, "negative initial offset"

    .line 957
    .line 958
    invoke-static {v13}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    :goto_1a
    neg-int v13, v10

    .line 962
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v14

    .line 966
    check-cast v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 967
    .line 968
    move/from16 v48, v4

    .line 969
    .line 970
    if-eqz v14, :cond_1f

    .line 971
    .line 972
    iget-object v4, v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 973
    .line 974
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v4

    .line 978
    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 979
    .line 980
    if-eqz v4, :cond_1f

    .line 981
    .line 982
    iget v4, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 983
    .line 984
    goto :goto_1b

    .line 985
    :cond_1f
    const/4 v4, 0x0

    .line 986
    :goto_1b
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v18

    .line 990
    move/from16 v50, v6

    .line 991
    .line 992
    move-object/from16 v6, v18

    .line 993
    .line 994
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 995
    .line 996
    if-eqz v6, :cond_21

    .line 997
    .line 998
    iget-object v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 999
    .line 1000
    move/from16 v18, v10

    .line 1001
    .line 1002
    array-length v10, v6

    .line 1003
    if-nez v10, :cond_20

    .line 1004
    .line 1005
    move-object/from16 v6, v16

    .line 1006
    .line 1007
    goto :goto_1c

    .line 1008
    :cond_20
    array-length v10, v6

    .line 1009
    add-int/lit8 v10, v10, -0x1

    .line 1010
    .line 1011
    aget-object v6, v6, v10

    .line 1012
    .line 1013
    :goto_1c
    if-eqz v6, :cond_22

    .line 1014
    .line 1015
    iget v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1016
    .line 1017
    goto :goto_1d

    .line 1018
    :cond_21
    move/from16 v18, v10

    .line 1019
    .line 1020
    :cond_22
    const/4 v6, 0x0

    .line 1021
    :goto_1d
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 1022
    .line 1023
    .line 1024
    move-result v10

    .line 1025
    move/from16 v19, v13

    .line 1026
    .line 1027
    move-object/from16 v22, v16

    .line 1028
    .line 1029
    const/4 v13, 0x0

    .line 1030
    :goto_1e
    if-ge v13, v10, :cond_25

    .line 1031
    .line 1032
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v28

    .line 1036
    check-cast v28, Ljava/lang/Number;

    .line 1037
    .line 1038
    move/from16 v54, v10

    .line 1039
    .line 1040
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->intValue()I

    .line 1041
    .line 1042
    .line 1043
    move-result v10

    .line 1044
    if-ltz v10, :cond_24

    .line 1045
    .line 1046
    if-ge v10, v4, :cond_24

    .line 1047
    .line 1048
    move/from16 v55, v4

    .line 1049
    .line 1050
    move-object/from16 v4, v17

    .line 1051
    .line 1052
    move/from16 v17, v13

    .line 1053
    .line 1054
    iget v13, v4, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 1055
    .line 1056
    invoke-virtual {v4, v10}, Lokhttp3/Dispatcher;->spanOf(I)I

    .line 1057
    .line 1058
    .line 1059
    move-result v13

    .line 1060
    move/from16 v36, v10

    .line 1061
    .line 1062
    const/4 v10, 0x0

    .line 1063
    invoke-virtual {v12, v10, v13}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->childConstraints-JhjzzOo$foundation(II)J

    .line 1064
    .line 1065
    .line 1066
    move-result-wide v37

    .line 1067
    const/16 v39, 0x0

    .line 1068
    .line 1069
    iget v10, v15, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->defaultMainAxisSpacing:I

    .line 1070
    .line 1071
    move/from16 v41, v10

    .line 1072
    .line 1073
    move/from16 v40, v13

    .line 1074
    .line 1075
    move-object/from16 v35, v15

    .line 1076
    .line 1077
    invoke-virtual/range {v35 .. v41}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v10

    .line 1081
    if-nez v22, :cond_23

    .line 1082
    .line 1083
    new-instance v13, Ljava/util/ArrayList;

    .line 1084
    .line 1085
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_1f

    .line 1089
    :cond_23
    move-object/from16 v13, v22

    .line 1090
    .line 1091
    :goto_1f
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    .line 1093
    .line 1094
    move-object/from16 v22, v13

    .line 1095
    .line 1096
    goto :goto_20

    .line 1097
    :cond_24
    move/from16 v55, v4

    .line 1098
    .line 1099
    move-object/from16 v4, v17

    .line 1100
    .line 1101
    move/from16 v17, v13

    .line 1102
    .line 1103
    :goto_20
    add-int/lit8 v13, v17, 0x1

    .line 1104
    .line 1105
    move-object/from16 v17, v4

    .line 1106
    .line 1107
    move/from16 v10, v54

    .line 1108
    .line 1109
    move/from16 v4, v55

    .line 1110
    .line 1111
    goto :goto_1e

    .line 1112
    :cond_25
    move/from16 v55, v4

    .line 1113
    .line 1114
    move-object/from16 v4, v17

    .line 1115
    .line 1116
    if-nez v22, :cond_26

    .line 1117
    .line 1118
    move-object/from16 v13, v27

    .line 1119
    .line 1120
    goto :goto_21

    .line 1121
    :cond_26
    move-object/from16 v13, v22

    .line 1122
    .line 1123
    :goto_21
    const/4 v10, -0x1

    .line 1124
    if-eqz v24, :cond_32

    .line 1125
    .line 1126
    if-eqz v7, :cond_32

    .line 1127
    .line 1128
    iget-object v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 1129
    .line 1130
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 1131
    .line 1132
    .line 1133
    move-result v17

    .line 1134
    if-nez v17, :cond_32

    .line 1135
    .line 1136
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 1137
    .line 1138
    .line 1139
    move-result v17

    .line 1140
    add-int/lit8 v17, v17, -0x1

    .line 1141
    .line 1142
    move-object/from16 v22, v14

    .line 1143
    .line 1144
    move/from16 v14, v17

    .line 1145
    .line 1146
    :goto_22
    if-ge v10, v14, :cond_29

    .line 1147
    .line 1148
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v17

    .line 1152
    move/from16 v28, v10

    .line 1153
    .line 1154
    move-object/from16 v10, v17

    .line 1155
    .line 1156
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1157
    .line 1158
    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1159
    .line 1160
    if-le v10, v6, :cond_28

    .line 1161
    .line 1162
    if-eqz v14, :cond_27

    .line 1163
    .line 1164
    add-int/lit8 v10, v14, -0x1

    .line 1165
    .line 1166
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v10

    .line 1170
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1171
    .line 1172
    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1173
    .line 1174
    if-gt v10, v6, :cond_28

    .line 1175
    .line 1176
    :cond_27
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v10

    .line 1180
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1181
    .line 1182
    goto :goto_23

    .line 1183
    :cond_28
    add-int/lit8 v14, v14, -0x1

    .line 1184
    .line 1185
    move/from16 v10, v28

    .line 1186
    .line 1187
    goto :goto_22

    .line 1188
    :cond_29
    move/from16 v28, v10

    .line 1189
    .line 1190
    move-object/from16 v10, v16

    .line 1191
    .line 1192
    :goto_23
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v7

    .line 1196
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1197
    .line 1198
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v14

    .line 1202
    check-cast v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1203
    .line 1204
    if-eqz v14, :cond_2a

    .line 1205
    .line 1206
    iget v14, v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->index:I

    .line 1207
    .line 1208
    add-int/lit8 v14, v14, 0x1

    .line 1209
    .line 1210
    goto :goto_24

    .line 1211
    :cond_2a
    const/4 v14, 0x0

    .line 1212
    :goto_24
    if-eqz v10, :cond_31

    .line 1213
    .line 1214
    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1215
    .line 1216
    iget v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1217
    .line 1218
    move/from16 v54, v6

    .line 1219
    .line 1220
    add-int/lit8 v6, v8, -0x1

    .line 1221
    .line 1222
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 1223
    .line 1224
    .line 1225
    move-result v6

    .line 1226
    if-gt v10, v6, :cond_30

    .line 1227
    .line 1228
    move-object/from16 v7, v16

    .line 1229
    .line 1230
    :goto_25
    if-eqz v7, :cond_2e

    .line 1231
    .line 1232
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 1233
    .line 1234
    .line 1235
    move-result v0

    .line 1236
    move/from16 v65, v11

    .line 1237
    .line 1238
    const/4 v11, 0x0

    .line 1239
    :goto_26
    if-ge v11, v0, :cond_2d

    .line 1240
    .line 1241
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v17

    .line 1245
    move/from16 v35, v0

    .line 1246
    .line 1247
    move-object/from16 v0, v17

    .line 1248
    .line 1249
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1250
    .line 1251
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1252
    .line 1253
    move-object/from16 v17, v7

    .line 1254
    .line 1255
    array-length v7, v0

    .line 1256
    move-object/from16 v36, v0

    .line 1257
    .line 1258
    const/4 v0, 0x0

    .line 1259
    :goto_27
    if-ge v0, v7, :cond_2c

    .line 1260
    .line 1261
    move/from16 v37, v0

    .line 1262
    .line 1263
    aget-object v0, v36, v37

    .line 1264
    .line 1265
    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1266
    .line 1267
    if-ne v0, v10, :cond_2b

    .line 1268
    .line 1269
    move-object/from16 v7, v17

    .line 1270
    .line 1271
    goto :goto_2b

    .line 1272
    :cond_2b
    add-int/lit8 v0, v37, 0x1

    .line 1273
    .line 1274
    goto :goto_27

    .line 1275
    :cond_2c
    add-int/lit8 v11, v11, 0x1

    .line 1276
    .line 1277
    move-object/from16 v7, v17

    .line 1278
    .line 1279
    move/from16 v0, v35

    .line 1280
    .line 1281
    goto :goto_26

    .line 1282
    :cond_2d
    :goto_28
    move-object/from16 v17, v7

    .line 1283
    .line 1284
    goto :goto_29

    .line 1285
    :cond_2e
    move/from16 v65, v11

    .line 1286
    .line 1287
    goto :goto_28

    .line 1288
    :goto_29
    if-nez v17, :cond_2f

    .line 1289
    .line 1290
    new-instance v0, Ljava/util/ArrayList;

    .line 1291
    .line 1292
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .line 1294
    .line 1295
    move-object v7, v0

    .line 1296
    goto :goto_2a

    .line 1297
    :cond_2f
    move-object/from16 v7, v17

    .line 1298
    .line 1299
    :goto_2a
    invoke-virtual {v12, v14}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    add-int/lit8 v14, v14, 0x1

    .line 1304
    .line 1305
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    :goto_2b
    if-eq v10, v6, :cond_33

    .line 1309
    .line 1310
    add-int/lit8 v10, v10, 0x1

    .line 1311
    .line 1312
    move-object/from16 v0, p0

    .line 1313
    .line 1314
    move/from16 v11, v65

    .line 1315
    .line 1316
    goto :goto_25

    .line 1317
    :cond_30
    :goto_2c
    move/from16 v65, v11

    .line 1318
    .line 1319
    goto :goto_2d

    .line 1320
    :cond_31
    move/from16 v54, v6

    .line 1321
    .line 1322
    goto :goto_2c

    .line 1323
    :cond_32
    move/from16 v54, v6

    .line 1324
    .line 1325
    move/from16 v28, v10

    .line 1326
    .line 1327
    move/from16 v65, v11

    .line 1328
    .line 1329
    move-object/from16 v22, v14

    .line 1330
    .line 1331
    :goto_2d
    move-object/from16 v7, v16

    .line 1332
    .line 1333
    :cond_33
    if-nez v7, :cond_34

    .line 1334
    .line 1335
    move-object/from16 v7, v27

    .line 1336
    .line 1337
    :cond_34
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 1338
    .line 1339
    .line 1340
    move-result v0

    .line 1341
    const/4 v6, 0x0

    .line 1342
    :goto_2e
    if-ge v6, v0, :cond_3a

    .line 1343
    .line 1344
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v10

    .line 1348
    check-cast v10, Ljava/lang/Number;

    .line 1349
    .line 1350
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 1351
    .line 1352
    .line 1353
    move-result v10

    .line 1354
    add-int/lit8 v11, v54, 0x1

    .line 1355
    .line 1356
    if-gt v11, v10, :cond_39

    .line 1357
    .line 1358
    if-ge v10, v8, :cond_39

    .line 1359
    .line 1360
    if-eqz v24, :cond_37

    .line 1361
    .line 1362
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 1363
    .line 1364
    .line 1365
    move-result v11

    .line 1366
    const/4 v14, 0x0

    .line 1367
    :goto_2f
    if-ge v14, v11, :cond_37

    .line 1368
    .line 1369
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v17

    .line 1373
    move/from16 v66, v0

    .line 1374
    .line 1375
    move-object/from16 v0, v17

    .line 1376
    .line 1377
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1378
    .line 1379
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1380
    .line 1381
    move-object/from16 v17, v2

    .line 1382
    .line 1383
    array-length v2, v0

    .line 1384
    move-object/from16 v35, v0

    .line 1385
    .line 1386
    const/4 v0, 0x0

    .line 1387
    :goto_30
    if-ge v0, v2, :cond_36

    .line 1388
    .line 1389
    move/from16 v36, v0

    .line 1390
    .line 1391
    aget-object v0, v35, v36

    .line 1392
    .line 1393
    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    .line 1394
    .line 1395
    if-ne v0, v10, :cond_35

    .line 1396
    .line 1397
    goto :goto_31

    .line 1398
    :cond_35
    add-int/lit8 v0, v36, 0x1

    .line 1399
    .line 1400
    goto :goto_30

    .line 1401
    :cond_36
    add-int/lit8 v14, v14, 0x1

    .line 1402
    .line 1403
    move-object/from16 v2, v17

    .line 1404
    .line 1405
    move/from16 v0, v66

    .line 1406
    .line 1407
    goto :goto_2f

    .line 1408
    :cond_37
    move/from16 v66, v0

    .line 1409
    .line 1410
    move-object/from16 v17, v2

    .line 1411
    .line 1412
    iget v0, v4, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 1413
    .line 1414
    invoke-virtual {v4, v10}, Lokhttp3/Dispatcher;->spanOf(I)I

    .line 1415
    .line 1416
    .line 1417
    move-result v0

    .line 1418
    const/4 v2, 0x0

    .line 1419
    invoke-virtual {v12, v2, v0}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->childConstraints-JhjzzOo$foundation(II)J

    .line 1420
    .line 1421
    .line 1422
    move-result-wide v37

    .line 1423
    const/16 v39, 0x0

    .line 1424
    .line 1425
    iget v2, v15, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->defaultMainAxisSpacing:I

    .line 1426
    .line 1427
    move/from16 v40, v0

    .line 1428
    .line 1429
    move/from16 v41, v2

    .line 1430
    .line 1431
    move/from16 v36, v10

    .line 1432
    .line 1433
    move-object/from16 v35, v15

    .line 1434
    .line 1435
    invoke-virtual/range {v35 .. v41}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v0

    .line 1439
    if-nez v16, :cond_38

    .line 1440
    .line 1441
    new-instance v16, Ljava/util/ArrayList;

    .line 1442
    .line 1443
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    .line 1445
    .line 1446
    :cond_38
    move-object/from16 v2, v16

    .line 1447
    .line 1448
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    .line 1450
    .line 1451
    move-object/from16 v16, v2

    .line 1452
    .line 1453
    goto :goto_31

    .line 1454
    :cond_39
    move/from16 v66, v0

    .line 1455
    .line 1456
    move-object/from16 v17, v2

    .line 1457
    .line 1458
    :goto_31
    add-int/lit8 v6, v6, 0x1

    .line 1459
    .line 1460
    move-object/from16 v2, v17

    .line 1461
    .line 1462
    move/from16 v0, v66

    .line 1463
    .line 1464
    goto :goto_2e

    .line 1465
    :cond_3a
    if-nez v16, :cond_3b

    .line 1466
    .line 1467
    move-object/from16 v0, v27

    .line 1468
    .line 1469
    goto :goto_32

    .line 1470
    :cond_3b
    move-object/from16 v0, v16

    .line 1471
    .line 1472
    :goto_32
    if-gtz v50, :cond_3d

    .line 1473
    .line 1474
    if-gez v60, :cond_3c

    .line 1475
    .line 1476
    goto :goto_33

    .line 1477
    :cond_3c
    move/from16 v2, v18

    .line 1478
    .line 1479
    move-object/from16 v14, v22

    .line 1480
    .line 1481
    goto :goto_35

    .line 1482
    :cond_3d
    :goto_33
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1483
    .line 1484
    .line 1485
    move-result v2

    .line 1486
    move/from16 v10, v18

    .line 1487
    .line 1488
    move-object/from16 v14, v22

    .line 1489
    .line 1490
    const/4 v4, 0x0

    .line 1491
    :goto_34
    if-ge v4, v2, :cond_3e

    .line 1492
    .line 1493
    invoke-virtual {v3, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v6

    .line 1497
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1498
    .line 1499
    iget v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 1500
    .line 1501
    if-eqz v10, :cond_3e

    .line 1502
    .line 1503
    if-gt v6, v10, :cond_3e

    .line 1504
    .line 1505
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 1506
    .line 1507
    .line 1508
    move-result v11

    .line 1509
    add-int/lit8 v11, v11, -0x1

    .line 1510
    .line 1511
    if-eq v4, v11, :cond_3e

    .line 1512
    .line 1513
    sub-int/2addr v10, v6

    .line 1514
    add-int/lit8 v4, v4, 0x1

    .line 1515
    .line 1516
    invoke-virtual {v3, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v6

    .line 1520
    move-object v14, v6

    .line 1521
    check-cast v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1522
    .line 1523
    goto :goto_34

    .line 1524
    :cond_3e
    move v2, v10

    .line 1525
    :goto_35
    invoke-static/range {v44 .. v45}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1526
    .line 1527
    .line 1528
    move-result v4

    .line 1529
    move-wide/from16 v10, v44

    .line 1530
    .line 1531
    invoke-static {v10, v11, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 1532
    .line 1533
    .line 1534
    move-result v6

    .line 1535
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 1536
    .line 1537
    .line 1538
    move-result v16

    .line 1539
    if-eqz v16, :cond_3f

    .line 1540
    .line 1541
    goto :goto_36

    .line 1542
    :cond_3f
    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v3

    .line 1546
    :goto_36
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    .line 1547
    .line 1548
    .line 1549
    move-result v7

    .line 1550
    if-ge v5, v7, :cond_40

    .line 1551
    .line 1552
    move/from16 v7, v31

    .line 1553
    .line 1554
    goto :goto_37

    .line 1555
    :cond_40
    const/4 v7, 0x0

    .line 1556
    :goto_37
    if-eqz v7, :cond_42

    .line 1557
    .line 1558
    if-nez v19, :cond_41

    .line 1559
    .line 1560
    goto :goto_38

    .line 1561
    :cond_41
    const-string v16, "non-zero firstLineScrollOffset"

    .line 1562
    .line 1563
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1564
    .line 1565
    .line 1566
    :cond_42
    :goto_38
    move/from16 v27, v2

    .line 1567
    .line 1568
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1569
    .line 1570
    .line 1571
    move-result v2

    .line 1572
    move/from16 v16, v5

    .line 1573
    .line 1574
    move/from16 v17, v7

    .line 1575
    .line 1576
    const/4 v5, 0x0

    .line 1577
    const/4 v7, 0x0

    .line 1578
    :goto_39
    if-ge v5, v2, :cond_43

    .line 1579
    .line 1580
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v18

    .line 1584
    move/from16 v22, v2

    .line 1585
    .line 1586
    move-object/from16 v2, v18

    .line 1587
    .line 1588
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1589
    .line 1590
    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1591
    .line 1592
    array-length v2, v2

    .line 1593
    add-int/2addr v7, v2

    .line 1594
    add-int/lit8 v5, v5, 0x1

    .line 1595
    .line 1596
    move/from16 v2, v22

    .line 1597
    .line 1598
    goto :goto_39

    .line 1599
    :cond_43
    new-instance v2, Ljava/util/ArrayList;

    .line 1600
    .line 1601
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1602
    .line 1603
    .line 1604
    if-eqz v17, :cond_4a

    .line 1605
    .line 1606
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 1607
    .line 1608
    .line 1609
    move-result v5

    .line 1610
    if-eqz v5, :cond_44

    .line 1611
    .line 1612
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1613
    .line 1614
    .line 1615
    move-result v0

    .line 1616
    if-eqz v0, :cond_44

    .line 1617
    .line 1618
    goto :goto_3a

    .line 1619
    :cond_44
    const-string v0, "no items"

    .line 1620
    .line 1621
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1622
    .line 1623
    .line 1624
    :goto_3a
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1625
    .line 1626
    .line 1627
    move-result v0

    .line 1628
    new-array v5, v0, [I

    .line 1629
    .line 1630
    const/4 v7, 0x0

    .line 1631
    :goto_3b
    if-ge v7, v0, :cond_45

    .line 1632
    .line 1633
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v13

    .line 1637
    check-cast v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1638
    .line 1639
    iget v13, v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSize:I

    .line 1640
    .line 1641
    aput v13, v5, v7

    .line 1642
    .line 1643
    add-int/lit8 v7, v7, 0x1

    .line 1644
    .line 1645
    goto :goto_3b

    .line 1646
    :cond_45
    new-array v0, v0, [I

    .line 1647
    .line 1648
    move-object/from16 v7, v46

    .line 1649
    .line 1650
    invoke-interface {v7, v9, v6, v5, v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 1651
    .line 1652
    .line 1653
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v5

    .line 1657
    iget v7, v5, Lkotlin/ranges/IntProgression;->last:I

    .line 1658
    .line 1659
    iget v5, v5, Lkotlin/ranges/IntProgression;->step:I

    .line 1660
    .line 1661
    if-lez v5, :cond_46

    .line 1662
    .line 1663
    if-gez v7, :cond_47

    .line 1664
    .line 1665
    :cond_46
    if-gez v5, :cond_49

    .line 1666
    .line 1667
    if-gtz v7, :cond_49

    .line 1668
    .line 1669
    :cond_47
    move-object/from16 v17, v0

    .line 1670
    .line 1671
    const/4 v13, 0x0

    .line 1672
    :goto_3c
    aget v0, v17, v13

    .line 1673
    .line 1674
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v18

    .line 1678
    move/from16 v19, v5

    .line 1679
    .line 1680
    move-object/from16 v5, v18

    .line 1681
    .line 1682
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1683
    .line 1684
    invoke-virtual {v5, v0, v4, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v0

    .line 1688
    array-length v5, v0

    .line 1689
    move-object/from16 v18, v0

    .line 1690
    .line 1691
    const/4 v0, 0x0

    .line 1692
    :goto_3d
    if-ge v0, v5, :cond_48

    .line 1693
    .line 1694
    move/from16 v22, v0

    .line 1695
    .line 1696
    aget-object v0, v18, v22

    .line 1697
    .line 1698
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    .line 1700
    .line 1701
    add-int/lit8 v0, v22, 0x1

    .line 1702
    .line 1703
    goto :goto_3d

    .line 1704
    :cond_48
    if-eq v13, v7, :cond_49

    .line 1705
    .line 1706
    add-int v13, v13, v19

    .line 1707
    .line 1708
    move/from16 v5, v19

    .line 1709
    .line 1710
    goto :goto_3c

    .line 1711
    :cond_49
    move/from16 v35, v8

    .line 1712
    .line 1713
    move/from16 v0, v65

    .line 1714
    .line 1715
    const/4 v8, 0x0

    .line 1716
    goto/16 :goto_43

    .line 1717
    .line 1718
    :cond_4a
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 1719
    .line 1720
    .line 1721
    move-result v5

    .line 1722
    add-int/lit8 v5, v5, -0x1

    .line 1723
    .line 1724
    if-ltz v5, :cond_4c

    .line 1725
    .line 1726
    move/from16 v7, v19

    .line 1727
    .line 1728
    :goto_3e
    add-int/lit8 v17, v5, -0x1

    .line 1729
    .line 1730
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v5

    .line 1734
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1735
    .line 1736
    move/from16 v18, v7

    .line 1737
    .line 1738
    iget v7, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1739
    .line 1740
    sub-int v7, v18, v7

    .line 1741
    .line 1742
    move/from16 v35, v8

    .line 1743
    .line 1744
    const/4 v8, 0x0

    .line 1745
    invoke-virtual {v5, v7, v8, v4, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    .line 1746
    .line 1747
    .line 1748
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    .line 1750
    .line 1751
    if-gez v17, :cond_4b

    .line 1752
    .line 1753
    goto :goto_3f

    .line 1754
    :cond_4b
    move/from16 v5, v17

    .line 1755
    .line 1756
    move/from16 v8, v35

    .line 1757
    .line 1758
    goto :goto_3e

    .line 1759
    :cond_4c
    move/from16 v35, v8

    .line 1760
    .line 1761
    :goto_3f
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1762
    .line 1763
    .line 1764
    move-result v5

    .line 1765
    move/from16 v13, v19

    .line 1766
    .line 1767
    const/4 v7, 0x0

    .line 1768
    :goto_40
    if-ge v7, v5, :cond_4e

    .line 1769
    .line 1770
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v8

    .line 1774
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1775
    .line 1776
    move-object/from16 v17, v3

    .line 1777
    .line 1778
    invoke-virtual {v8, v13, v4, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v3

    .line 1782
    move/from16 v18, v5

    .line 1783
    .line 1784
    array-length v5, v3

    .line 1785
    move-object/from16 v19, v3

    .line 1786
    .line 1787
    const/4 v3, 0x0

    .line 1788
    :goto_41
    if-ge v3, v5, :cond_4d

    .line 1789
    .line 1790
    move/from16 v22, v3

    .line 1791
    .line 1792
    aget-object v3, v19, v22

    .line 1793
    .line 1794
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    .line 1796
    .line 1797
    add-int/lit8 v3, v22, 0x1

    .line 1798
    .line 1799
    goto :goto_41

    .line 1800
    :cond_4d
    iget v3, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    .line 1801
    .line 1802
    add-int/2addr v13, v3

    .line 1803
    add-int/lit8 v7, v7, 0x1

    .line 1804
    .line 1805
    move-object/from16 v3, v17

    .line 1806
    .line 1807
    move/from16 v5, v18

    .line 1808
    .line 1809
    goto :goto_40

    .line 1810
    :cond_4e
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 1811
    .line 1812
    .line 1813
    move-result v3

    .line 1814
    const/4 v5, 0x0

    .line 1815
    :goto_42
    if-ge v5, v3, :cond_4f

    .line 1816
    .line 1817
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v7

    .line 1821
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1822
    .line 1823
    const/4 v8, 0x0

    .line 1824
    invoke-virtual {v7, v13, v8, v4, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    .line 1829
    .line 1830
    iget v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 1831
    .line 1832
    add-int/2addr v13, v7

    .line 1833
    add-int/lit8 v5, v5, 0x1

    .line 1834
    .line 1835
    goto :goto_42

    .line 1836
    :cond_4f
    const/4 v8, 0x0

    .line 1837
    move/from16 v0, v65

    .line 1838
    .line 1839
    :goto_43
    float-to-int v3, v0

    .line 1840
    move/from16 v17, v3

    .line 1841
    .line 1842
    move/from16 v18, v4

    .line 1843
    .line 1844
    move/from16 v19, v6

    .line 1845
    .line 1846
    move-object/from16 v22, v15

    .line 1847
    .line 1848
    move/from16 v28, v16

    .line 1849
    .line 1850
    move-object/from16 v16, v20

    .line 1851
    .line 1852
    move-object/from16 v20, v2

    .line 1853
    .line 1854
    invoke-virtual/range {v16 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lokhttp3/internal/http/StatusLine;Lorg/wikipedia/settings/BasePreferenceLoader;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 1855
    .line 1856
    .line 1857
    move/from16 v5, v28

    .line 1858
    .line 1859
    move/from16 v18, v54

    .line 1860
    .line 1861
    move/from16 v54, v24

    .line 1862
    .line 1863
    if-nez v54, :cond_51

    .line 1864
    .line 1865
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    .line 1866
    .line 1867
    .line 1868
    move-result-wide v8

    .line 1869
    move-object v3, v14

    .line 1870
    const-wide/16 v13, 0x0

    .line 1871
    .line 1872
    invoke-static {v8, v9, v13, v14}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 1873
    .line 1874
    .line 1875
    move-result v7

    .line 1876
    if-nez v7, :cond_52

    .line 1877
    .line 1878
    shr-long v13, v8, v32

    .line 1879
    .line 1880
    long-to-int v7, v13

    .line 1881
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 1882
    .line 1883
    .line 1884
    move-result v4

    .line 1885
    invoke-static {v10, v11, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 1886
    .line 1887
    .line 1888
    move-result v4

    .line 1889
    and-long v8, v8, v33

    .line 1890
    .line 1891
    long-to-int v7, v8

    .line 1892
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 1893
    .line 1894
    .line 1895
    move-result v7

    .line 1896
    invoke-static {v10, v11, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 1897
    .line 1898
    .line 1899
    move-result v7

    .line 1900
    if-eq v7, v6, :cond_50

    .line 1901
    .line 1902
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1903
    .line 1904
    .line 1905
    move-result v6

    .line 1906
    const/4 v8, 0x0

    .line 1907
    :goto_44
    if-ge v8, v6, :cond_50

    .line 1908
    .line 1909
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v9

    .line 1913
    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1914
    .line 1915
    iput v7, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    .line 1916
    .line 1917
    iget v10, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    .line 1918
    .line 1919
    add-int/2addr v10, v7

    .line 1920
    iput v10, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    .line 1921
    .line 1922
    add-int/lit8 v8, v8, 0x1

    .line 1923
    .line 1924
    goto :goto_44

    .line 1925
    :cond_50
    move/from16 v23, v7

    .line 1926
    .line 1927
    :goto_45
    move/from16 v22, v4

    .line 1928
    .line 1929
    move-object/from16 v4, v47

    .line 1930
    .line 1931
    goto :goto_46

    .line 1932
    :cond_51
    move-object v3, v14

    .line 1933
    :cond_52
    move/from16 v23, v6

    .line 1934
    .line 1935
    goto :goto_45

    .line 1936
    :goto_46
    iget-object v4, v4, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 1937
    .line 1938
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1939
    .line 1940
    .line 1941
    sget-object v20, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    .line 1942
    .line 1943
    new-instance v4, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 1944
    .line 1945
    const/16 v6, 0x17

    .line 1946
    .line 1947
    invoke-direct {v4, v6, v12, v15}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1948
    .line 1949
    .line 1950
    move-object/from16 v6, p0

    .line 1951
    .line 1952
    iget-object v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$stickyItemsScrollBehavior:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 1953
    .line 1954
    move-object/from16 v19, v2

    .line 1955
    .line 1956
    move-object/from16 v24, v4

    .line 1957
    .line 1958
    move-object/from16 v16, v6

    .line 1959
    .line 1960
    move/from16 v21, v50

    .line 1961
    .line 1962
    move/from16 v17, v55

    .line 1963
    .line 1964
    invoke-static/range {v16 .. v24}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;IILjava/util/ArrayList;Landroidx/collection/MutableIntList;IIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v53

    .line 1968
    move/from16 v4, v17

    .line 1969
    .line 1970
    move/from16 v6, v18

    .line 1971
    .line 1972
    add-int/lit8 v7, v35, -0x1

    .line 1973
    .line 1974
    if-ne v6, v7, :cond_54

    .line 1975
    .line 1976
    if-le v5, v1, :cond_53

    .line 1977
    .line 1978
    goto :goto_47

    .line 1979
    :cond_53
    const/4 v15, 0x0

    .line 1980
    goto :goto_48

    .line 1981
    :cond_54
    :goto_47
    move/from16 v15, v31

    .line 1982
    .line 1983
    :goto_48
    new-instance v50, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda2;

    .line 1984
    .line 1985
    const/16 v55, 0x1

    .line 1986
    .line 1987
    move-object/from16 v52, v2

    .line 1988
    .line 1989
    invoke-direct/range {v50 .. v55}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    .line 1990
    .line 1991
    .line 1992
    move-object/from16 v5, v50

    .line 1993
    .line 1994
    move-object/from16 v1, v53

    .line 1995
    .line 1996
    add-int v7, v22, v43

    .line 1997
    .line 1998
    move-wide/from16 v10, p2

    .line 1999
    .line 2000
    invoke-static {v10, v11, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 2001
    .line 2002
    .line 2003
    move-result v7

    .line 2004
    add-int v8, v23, v42

    .line 2005
    .line 2006
    invoke-static {v10, v11, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 2007
    .line 2008
    .line 2009
    move-result v8

    .line 2010
    move-object/from16 v9, v56

    .line 2011
    .line 2012
    move-object/from16 v10, v63

    .line 2013
    .line 2014
    invoke-interface {v9, v7, v8, v10, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v5

    .line 2018
    invoke-static {v4, v6, v2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->updatedVisibleItems(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v13

    .line 2022
    sget-object v17, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 2023
    .line 2024
    move/from16 v65, v0

    .line 2025
    .line 2026
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 2027
    .line 2028
    move-object v1, v3

    .line 2029
    move v3, v15

    .line 2030
    move/from16 v10, v25

    .line 2031
    .line 2032
    move/from16 v2, v27

    .line 2033
    .line 2034
    move-object/from16 v8, v29

    .line 2035
    .line 2036
    move/from16 v16, v35

    .line 2037
    .line 2038
    move/from16 v6, v48

    .line 2039
    .line 2040
    move/from16 v15, v49

    .line 2041
    .line 2042
    move-object/from16 v11, v58

    .line 2043
    .line 2044
    move-object/from16 v12, v59

    .line 2045
    .line 2046
    move/from16 v19, v60

    .line 2047
    .line 2048
    move/from16 v14, v61

    .line 2049
    .line 2050
    move/from16 v18, v62

    .line 2051
    .line 2052
    move/from16 v7, v64

    .line 2053
    .line 2054
    move/from16 v4, v65

    .line 2055
    .line 2056
    move-object/from16 v9, p1

    .line 2057
    .line 2058
    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 2059
    .line 2060
    .line 2061
    :goto_49
    invoke-interface/range {v56 .. v56}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 2062
    .line 2063
    .line 2064
    move-result v1

    .line 2065
    move-object/from16 v2, v57

    .line 2066
    .line 2067
    const/4 v4, 0x0

    .line 2068
    invoke-virtual {v2, v0, v1, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V

    .line 2069
    .line 2070
    .line 2071
    iget-object v1, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchStrategy:Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;

    .line 2072
    .line 2073
    return-object v0

    .line 2074
    :goto_4a
    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 2075
    .line 2076
    .line 2077
    throw v0

    .line 2078
    :cond_55
    const-string v0, "null verticalArrangement when isVertical == true"

    .line 2079
    .line 2080
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 2081
    .line 2082
    .line 2083
    move-result-object v0

    .line 2084
    throw v0
.end method
