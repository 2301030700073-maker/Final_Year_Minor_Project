.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# instance fields
.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field public final synthetic $mainAxisSpacing:F

.field public final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final synthetic $slots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;

.field public final synthetic $state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/PaddingValues;FLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$slots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$mainAxisSpacing:F

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-wide/from16 v1, p2

    .line 6
    .line 7
    iget-object v9, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 8
    .line 9
    iget-object v10, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 10
    .line 11
    iget-object v3, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-boolean v3, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    .line 17
    .line 18
    const/4 v12, 0x1

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v16, 0x0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move/from16 v16, v12

    .line 32
    .line 33
    :goto_1
    iget-object v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 34
    .line 35
    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$slots:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;

    .line 39
    .line 40
    iget-object v5, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;->cachedSizes:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 41
    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    iget-wide v5, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;->cachedConstraints:J

    .line 45
    .line 46
    invoke-static {v5, v6, v1, v2}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    iget v5, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;->cachedDensity:F

    .line 53
    .line 54
    invoke-interface {v9}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    cmpg-float v5, v5, v6

    .line 59
    .line 60
    if-nez v5, :cond_2

    .line 61
    .line 62
    iget-object v4, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;->cachedSizes:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-object v13, v4

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    iput-wide v1, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;->cachedConstraints:J

    .line 70
    .line 71
    invoke-interface {v9}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    iput v5, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;->cachedDensity:F

    .line 76
    .line 77
    iget-object v5, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;->calculation:Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;

    .line 78
    .line 79
    new-instance v6, Landroidx/compose/ui/unit/Constraints;

    .line 80
    .line 81
    invoke-direct {v6, v1, v2}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v8, v6}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 89
    .line 90
    iput-object v5, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlotCache;->cachedSizes:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 91
    .line 92
    move-object v13, v5

    .line 93
    :goto_2
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 94
    .line 95
    if-ne v3, v4, :cond_3

    .line 96
    .line 97
    move v14, v12

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    const/4 v14, 0x0

    .line 100
    :goto_3
    iget-object v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 101
    .line 102
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    move-object v15, v4

    .line 107
    check-cast v15, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;

    .line 108
    .line 109
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    sget-object v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    aget v6, v5, v6

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const/4 v7, 0x2

    .line 124
    iget-object v11, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 125
    .line 126
    if-eq v6, v12, :cond_5

    .line 127
    .line 128
    if-ne v6, v7, :cond_4

    .line 129
    .line 130
    invoke-static {v11, v4}, Landroidx/compose/foundation/layout/OffsetKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 136
    .line 137
    .line 138
    return-object v19

    .line 139
    :cond_5
    invoke-interface {v11}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    :goto_4
    invoke-interface {v9, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 152
    .line 153
    .line 154
    move-result v18

    .line 155
    move-object/from16 v20, v3

    .line 156
    .line 157
    aget v3, v5, v18

    .line 158
    .line 159
    if-eq v3, v12, :cond_7

    .line 160
    .line 161
    if-ne v3, v7, :cond_6

    .line 162
    .line 163
    invoke-static {v11, v6}, Landroidx/compose/foundation/layout/OffsetKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    goto :goto_5

    .line 168
    :cond_6
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 169
    .line 170
    .line 171
    return-object v19

    .line 172
    :cond_7
    invoke-interface {v11}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    :goto_5
    invoke-interface {v9, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 177
    .line 178
    .line 179
    move-result v18

    .line 180
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    aget v5, v5, v6

    .line 189
    .line 190
    if-eq v5, v12, :cond_9

    .line 191
    .line 192
    if-ne v5, v7, :cond_8

    .line 193
    .line 194
    invoke-interface {v11}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    goto :goto_6

    .line 199
    :cond_8
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 200
    .line 201
    .line 202
    return-object v19

    .line 203
    :cond_9
    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/OffsetKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    :goto_6
    invoke-interface {v9, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v14, :cond_a

    .line 212
    .line 213
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    goto :goto_7

    .line 218
    :cond_a
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    :goto_7
    sub-int/2addr v5, v4

    .line 223
    sub-int v20, v5, v18

    .line 224
    .line 225
    const-wide v21, 0xffffffffL

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    const/16 v5, 0x20

    .line 231
    .line 232
    if-eqz v14, :cond_b

    .line 233
    .line 234
    int-to-long v6, v3

    .line 235
    shl-long v5, v6, v5

    .line 236
    .line 237
    move-object/from16 v23, v13

    .line 238
    .line 239
    int-to-long v12, v4

    .line 240
    :goto_8
    and-long v12, v12, v21

    .line 241
    .line 242
    or-long/2addr v5, v12

    .line 243
    move-wide v12, v5

    .line 244
    goto :goto_9

    .line 245
    :cond_b
    move-object/from16 v23, v13

    .line 246
    .line 247
    int-to-long v6, v4

    .line 248
    shl-long v5, v6, v5

    .line 249
    .line 250
    int-to-long v12, v3

    .line 251
    goto :goto_8

    .line 252
    :goto_9
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/OffsetKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-static {v11, v5}, Landroidx/compose/foundation/layout/OffsetKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    add-float/2addr v5, v3

    .line 269
    invoke-interface {v9, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    invoke-interface {v11}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    invoke-interface {v11}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    add-float/2addr v6, v5

    .line 282
    invoke-interface {v9, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    iget-object v6, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 287
    .line 288
    iget-object v7, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 289
    .line 290
    invoke-static {v15, v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    invoke-static {v1, v2, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    const/4 v6, 0x0

    .line 303
    const/16 v7, 0xa

    .line 304
    .line 305
    move/from16 v24, v4

    .line 306
    .line 307
    const/4 v4, 0x0

    .line 308
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    .line 309
    .line 310
    .line 311
    move-result-wide v5

    .line 312
    iget v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$mainAxisSpacing:F

    .line 313
    .line 314
    invoke-interface {v9, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 319
    .line 320
    .line 321
    move-result v25

    .line 322
    iget-object v2, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 323
    .line 324
    if-eqz v2, :cond_c

    .line 325
    .line 326
    iget-object v2, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_c
    move-object/from16 v2, v19

    .line 330
    .line 331
    :goto_a
    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    .line 332
    .line 333
    move-object v4, v15

    .line 334
    iget-object v15, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 335
    .line 336
    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 337
    .line 338
    move/from16 v7, v20

    .line 339
    .line 340
    move-object/from16 v20, v9

    .line 341
    .line 342
    move v9, v7

    .line 343
    move-object/from16 v17, v2

    .line 344
    .line 345
    move-object v2, v11

    .line 346
    move v7, v14

    .line 347
    move v14, v1

    .line 348
    move-object v1, v10

    .line 349
    move-wide v10, v12

    .line 350
    move/from16 v13, v18

    .line 351
    .line 352
    move/from16 v12, v24

    .line 353
    .line 354
    move-object/from16 v18, v0

    .line 355
    .line 356
    move-object v0, v3

    .line 357
    move-object v3, v4

    .line 358
    move-object/from16 v4, v23

    .line 359
    .line 360
    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;Landroidx/compose/foundation/lazy/grid/LazyGridSlots;JZLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJIIILkotlinx/coroutines/CoroutineScope;ZLjava/util/List;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 361
    .line 362
    .line 363
    iget-object v2, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/text/TextDelegate;

    .line 364
    .line 365
    iget-object v4, v2, Landroidx/compose/foundation/text/TextDelegate;->style:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v4, [I

    .line 368
    .line 369
    iget-object v5, v2, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Ljava/lang/Object;

    .line 370
    .line 371
    const/4 v6, 0x0

    .line 372
    invoke-static {v4, v6}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([II)Ljava/lang/Integer;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    if-eqz v7, :cond_d

    .line 377
    .line 378
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 379
    .line 380
    .line 381
    move-result v11

    .line 382
    goto :goto_b

    .line 383
    :cond_d
    move v11, v6

    .line 384
    :goto_b
    invoke-static {v11, v3, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    invoke-static {v4, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    if-nez v5, :cond_f

    .line 393
    .line 394
    iget-object v5, v2, Landroidx/compose/foundation/text/TextDelegate;->intrinsicsLayoutDirection:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 397
    .line 398
    invoke-virtual {v5, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 399
    .line 400
    .line 401
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    if-eqz v5, :cond_e

    .line 406
    .line 407
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 408
    .line 409
    .line 410
    move-result-object v19

    .line 411
    :cond_e
    move-object/from16 v7, v19

    .line 412
    .line 413
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    :try_start_0
    iget-object v9, v2, Landroidx/compose/foundation/text/TextDelegate;->text:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v9, Landroidx/room/RoomDatabase$createConnectionManager$2;

    .line 420
    .line 421
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    array-length v4, v4

    .line 426
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-virtual {v9, v3, v4}, Landroidx/room/RoomDatabase$createConnectionManager$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    move-object v4, v3

    .line 435
    check-cast v4, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    .line 437
    invoke-static {v5, v8, v7}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 438
    .line 439
    .line 440
    iput-object v4, v2, Landroidx/compose/foundation/text/TextDelegate;->style:Ljava/lang/Object;

    .line 441
    .line 442
    invoke-static {v4}, Landroidx/compose/foundation/text/TextDelegate;->calculateFirstVisibleIndex([I)I

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    iget-object v5, v2, Landroidx/compose/foundation/text/TextDelegate;->density:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v5, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 449
    .line 450
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 451
    .line 452
    .line 453
    goto :goto_c

    .line 454
    :catchall_0
    move-exception v0

    .line 455
    invoke-static {v5, v8, v7}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 456
    .line 457
    .line 458
    throw v0

    .line 459
    :cond_f
    :goto_c
    iget-object v2, v2, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v2, [I

    .line 462
    .line 463
    array-length v3, v4

    .line 464
    iget v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneCount:I

    .line 465
    .line 466
    if-ne v3, v5, :cond_10

    .line 467
    .line 468
    :goto_d
    const/4 v9, 0x1

    .line 469
    goto :goto_11

    .line 470
    :cond_10
    iget-object v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->laneInfo:Lokhttp3/internal/http/StatusLine;

    .line 471
    .line 472
    invoke-virtual {v3}, Lokhttp3/internal/http/StatusLine;->reset()V

    .line 473
    .line 474
    .line 475
    new-array v7, v5, [I

    .line 476
    .line 477
    move v11, v6

    .line 478
    :goto_e
    if-ge v11, v5, :cond_13

    .line 479
    .line 480
    array-length v8, v4

    .line 481
    if-ge v11, v8, :cond_11

    .line 482
    .line 483
    aget v8, v4, v11

    .line 484
    .line 485
    const/4 v9, -0x1

    .line 486
    if-eq v8, v9, :cond_11

    .line 487
    .line 488
    :goto_f
    const/4 v9, 0x1

    .line 489
    goto :goto_10

    .line 490
    :cond_11
    if-nez v11, :cond_12

    .line 491
    .line 492
    move v8, v6

    .line 493
    goto :goto_f

    .line 494
    :cond_12
    int-to-long v8, v11

    .line 495
    and-long v8, v8, v21

    .line 496
    .line 497
    invoke-static {v8, v9, v7}, Landroidx/room/Room;->maxInRange-jy6DScQ(J[I)I

    .line 498
    .line 499
    .line 500
    move-result v8

    .line 501
    const/4 v9, 0x1

    .line 502
    add-int/2addr v8, v9

    .line 503
    :goto_10
    aput v8, v7, v11

    .line 504
    .line 505
    invoke-virtual {v3, v8, v11}, Lokhttp3/internal/http/StatusLine;->setLane(II)V

    .line 506
    .line 507
    .line 508
    add-int/lit8 v11, v11, 0x1

    .line 509
    .line 510
    goto :goto_e

    .line 511
    :cond_13
    move-object v4, v7

    .line 512
    goto :goto_d

    .line 513
    :goto_11
    array-length v3, v2

    .line 514
    if-ne v3, v5, :cond_14

    .line 515
    .line 516
    goto :goto_14

    .line 517
    :cond_14
    new-array v3, v5, [I

    .line 518
    .line 519
    move v11, v6

    .line 520
    :goto_12
    if-ge v11, v5, :cond_17

    .line 521
    .line 522
    array-length v7, v2

    .line 523
    if-ge v11, v7, :cond_15

    .line 524
    .line 525
    aget v7, v2, v11

    .line 526
    .line 527
    goto :goto_13

    .line 528
    :cond_15
    if-nez v11, :cond_16

    .line 529
    .line 530
    move v7, v6

    .line 531
    goto :goto_13

    .line 532
    :cond_16
    add-int/lit8 v7, v11, -0x1

    .line 533
    .line 534
    aget v7, v3, v7

    .line 535
    .line 536
    :goto_13
    aput v7, v3, v11

    .line 537
    .line 538
    add-int/lit8 v11, v11, 0x1

    .line 539
    .line 540
    goto :goto_12

    .line 541
    :cond_17
    move-object v2, v3

    .line 542
    :goto_14
    if-nez v25, :cond_19

    .line 543
    .line 544
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    .line 545
    .line 546
    if-nez v3, :cond_18

    .line 547
    .line 548
    goto :goto_15

    .line 549
    :cond_18
    iget-object v3, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->_lazyLayoutScrollDeltaBetweenPasses:Landroidx/cardview/widget/CardView$1;

    .line 550
    .line 551
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast v3, Landroidx/compose/animation/core/AnimationState;

    .line 554
    .line 555
    iget-object v3, v3, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 556
    .line 557
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    check-cast v3, Ljava/lang/Number;

    .line 562
    .line 563
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    goto :goto_16

    .line 568
    :cond_19
    :goto_15
    iget v3, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 569
    .line 570
    :goto_16
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    invoke-static {v0, v3, v4, v2, v9}, Landroidx/room/Room;->measure(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-interface/range {v20 .. v20}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    invoke-virtual {v1, v0, v2, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;ZZ)V

    .line 583
    .line 584
    .line 585
    return-object v0
.end method
