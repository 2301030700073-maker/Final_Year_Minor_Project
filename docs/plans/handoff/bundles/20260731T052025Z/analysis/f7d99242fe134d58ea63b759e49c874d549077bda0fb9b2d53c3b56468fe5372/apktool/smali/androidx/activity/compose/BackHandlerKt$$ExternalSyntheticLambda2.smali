.class public final synthetic Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final invoke$androidx$camera$camera2$impl$UseCaseManager$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseManager;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Throwable;

    .line 10
    .line 11
    iget-object p1, v0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseManager;->closingCameraJobs:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p1

    .line 20
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit p1

    .line 25
    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/16 v3, 0x20

    .line 7
    .line 8
    const-wide v4, 0xffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x1

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v1, p0

    .line 28
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    .line 29
    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object p0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lokhttp3/internal/http/RealInterceptorChain;

    .line 39
    .line 40
    iget p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Lokhttp3/internal/http/RealInterceptorChain;->spanOf(I)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-virtual {v0, v9, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->childConstraints-JhjzzOo$foundation(II)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    const/4 v5, 0x0

    .line 51
    iget v7, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->defaultMainAxisSpacing:I

    .line 52
    .line 53
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_0
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    .line 61
    .line 62
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 65
    .line 66
    check-cast p1, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {v0, p1}, Lokhttp3/internal/http/RealInterceptorChain;->getLineConfiguration(I)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget v0, p1, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    .line 77
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    .line 80
    iget-object p1, p1, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    move v3, v9

    .line 94
    :goto_0
    if-ge v9, v2, :cond_0

    .line 95
    .line 96
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 101
    .line 102
    iget-wide v4, v4, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    .line 103
    .line 104
    long-to-int v4, v4

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {p0, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->childConstraints-JhjzzOo$foundation(II)J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    new-instance v8, Landroidx/compose/ui/unit/Constraints;

    .line 114
    .line 115
    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 116
    .line 117
    .line 118
    new-instance v6, Lkotlin/Pair;

    .line 119
    .line 120
    invoke-direct {v6, v5, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    add-int/2addr v0, v10

    .line 127
    add-int/2addr v3, v4

    .line 128
    add-int/lit8 v9, v9, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    return-object v1

    .line 132
    :pswitch_1
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 135
    .line 136
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Landroid/view/View;

    .line 139
    .line 140
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 141
    .line 142
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->incrementAccessors(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 146
    .line 147
    const/4 v1, 0x6

    .line 148
    invoke-direct {p1, v1, v0, p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-object p1

    .line 152
    :pswitch_2
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Landroidx/compose/foundation/layout/PaddingNode;

    .line 155
    .line 156
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    .line 159
    .line 160
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 161
    .line 162
    iget-boolean v1, v0, Landroidx/compose/foundation/layout/PaddingNode;->rtlAware:Z

    .line 163
    .line 164
    iget v2, v0, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    .line 165
    .line 166
    if-eqz v1, :cond_1

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {p1, v2}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    iget v0, v0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    .line 176
    .line 177
    invoke-static {p1, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-static {p1, p0, v1, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v2}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    iget v0, v0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    .line 193
    .line 194
    invoke-static {p1, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {p1, p0, v1, v0, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 199
    .line 200
    .line 201
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 202
    .line 203
    return-object p0

    .line 204
    :pswitch_3
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v0, Landroidx/compose/foundation/layout/OffsetPxNode;

    .line 207
    .line 208
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 209
    .line 210
    move-object v7, p0

    .line 211
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 212
    .line 213
    move-object v6, p1

    .line 214
    check-cast v6, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 215
    .line 216
    iget-object p0, v0, Landroidx/compose/foundation/layout/OffsetPxNode;->offset:Lkotlin/jvm/functions/Function1;

    .line 217
    .line 218
    invoke-interface {p0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    check-cast p0, Landroidx/compose/ui/unit/IntOffset;

    .line 223
    .line 224
    iget-wide p0, p0, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 225
    .line 226
    shr-long v0, p0, v3

    .line 227
    .line 228
    long-to-int v8, v0

    .line 229
    and-long/2addr p0, v4

    .line 230
    long-to-int v9, p0

    .line 231
    const/4 v10, 0x0

    .line 232
    const/16 v11, 0xc

    .line 233
    .line 234
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    .line 235
    .line 236
    .line 237
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 238
    .line 239
    return-object p0

    .line 240
    :pswitch_4
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 243
    .line 244
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 247
    .line 248
    check-cast p1, Ljava/lang/Long;

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    iget p1, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 254
    .line 255
    iput v8, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 256
    .line 257
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 265
    .line 266
    return-object p0

    .line 267
    :pswitch_5
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 270
    .line 271
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 274
    .line 275
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 276
    .line 277
    iget-boolean v1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->isIndirectPointerEvent:Z

    .line 278
    .line 279
    if-eqz v1, :cond_2

    .line 280
    .line 281
    const/high16 v2, -0x40800000    # -1.0f

    .line 282
    .line 283
    :cond_2
    iget-wide v3, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->delta:J

    .line 284
    .line 285
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 286
    .line 287
    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 288
    .line 289
    if-ne p0, p1, :cond_3

    .line 290
    .line 291
    invoke-static {v8, v10, v3, v4}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(FIJ)J

    .line 292
    .line 293
    .line 294
    move-result-wide p0

    .line 295
    goto :goto_2

    .line 296
    :cond_3
    invoke-static {v8, v7, v3, v4}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(FIJ)J

    .line 297
    .line 298
    .line 299
    move-result-wide p0

    .line 300
    :goto_2
    invoke-static {v2, p0, p1}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    .line 301
    .line 302
    .line 303
    move-result-wide p0

    .line 304
    invoke-virtual {v0, v10, p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->scrollByWithOverscroll-OzD1aCk(IJ)J

    .line 305
    .line 306
    .line 307
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 308
    .line 309
    return-object p0

    .line 310
    :pswitch_6
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v0, Landroidx/compose/foundation/gestures/DefaultDraggableState$dragScope$1;

    .line 313
    .line 314
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast p0, Landroidx/compose/foundation/gestures/DraggableNode;

    .line 317
    .line 318
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 319
    .line 320
    iget-wide v6, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->delta:J

    .line 321
    .line 322
    invoke-static {v2, v6, v7}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    .line 323
    .line 324
    .line 325
    move-result-wide v1

    .line 326
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 327
    .line 328
    sget-object p1, Landroidx/compose/foundation/gestures/DraggableKt;->NoOpOnDragStarted:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 329
    .line 330
    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 331
    .line 332
    if-ne p0, p1, :cond_4

    .line 333
    .line 334
    and-long p0, v1, v4

    .line 335
    .line 336
    :goto_3
    long-to-int p0, p0

    .line 337
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 338
    .line 339
    .line 340
    move-result p0

    .line 341
    goto :goto_4

    .line 342
    :cond_4
    shr-long p0, v1, v3

    .line 343
    .line 344
    goto :goto_3

    .line 345
    :goto_4
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/gestures/DefaultDraggableState$dragScope$1;->dragBy(F)V

    .line 346
    .line 347
    .line 348
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 349
    .line 350
    return-object p0

    .line 351
    :pswitch_7
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 354
    .line 355
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 358
    .line 359
    check-cast p1, Ljava/lang/Throwable;

    .line 360
    .line 361
    iget-object p1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 362
    .line 363
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 367
    .line 368
    return-object p0

    .line 369
    :pswitch_8
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 372
    .line 373
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast p0, Landroidx/compose/foundation/interaction/Interaction;

    .line 376
    .line 377
    check-cast p1, Ljava/lang/Throwable;

    .line 378
    .line 379
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)V

    .line 380
    .line 381
    .line 382
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 383
    .line 384
    return-object p0

    .line 385
    :pswitch_9
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 388
    .line 389
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 392
    .line 393
    check-cast p1, Landroidx/compose/foundation/GestureConnection;

    .line 394
    .line 395
    invoke-interface {p1, v0}, Landroidx/compose/foundation/GestureConnection;->isInterested(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 400
    .line 401
    if-nez v0, :cond_5

    .line 402
    .line 403
    if-eqz p1, :cond_6

    .line 404
    .line 405
    :cond_5
    move v9, v10

    .line 406
    :cond_6
    iput-boolean v9, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 407
    .line 408
    xor-int/lit8 p0, v9, 0x1

    .line 409
    .line 410
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    return-object p0

    .line 415
    :pswitch_a
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 418
    .line 419
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 422
    .line 423
    check-cast p1, Landroidx/compose/foundation/GestureConnection;

    .line 424
    .line 425
    invoke-interface {p1, v0}, Landroidx/compose/foundation/GestureConnection;->isInterested(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 430
    .line 431
    if-nez v0, :cond_7

    .line 432
    .line 433
    if-eqz p1, :cond_8

    .line 434
    .line 435
    :cond_7
    move v9, v10

    .line 436
    :cond_8
    iput-boolean v9, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 437
    .line 438
    xor-int/lit8 p0, v9, 0x1

    .line 439
    .line 440
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    return-object p0

    .line 445
    :pswitch_b
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 448
    .line 449
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 450
    .line 451
    move-object v3, p0

    .line 452
    check-cast v3, Landroidx/compose/ui/graphics/Brush;

    .line 453
    .line 454
    move-object v1, p1

    .line 455
    check-cast v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 456
    .line 457
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 458
    .line 459
    .line 460
    iget-object v2, v0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 461
    .line 462
    const/4 v5, 0x0

    .line 463
    const/16 v6, 0x3c

    .line 464
    .line 465
    const/4 v4, 0x0

    .line 466
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/Modifier$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 467
    .line 468
    .line 469
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 470
    .line 471
    return-object p0

    .line 472
    :pswitch_c
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 473
    .line 474
    move-object v2, v0

    .line 475
    check-cast v2, Landroidx/compose/ui/graphics/AndroidPath;

    .line 476
    .line 477
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 478
    .line 479
    move-object v3, p0

    .line 480
    check-cast v3, Landroidx/compose/ui/graphics/Brush;

    .line 481
    .line 482
    move-object v1, p1

    .line 483
    check-cast v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 484
    .line 485
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 486
    .line 487
    .line 488
    const/4 v5, 0x0

    .line 489
    const/16 v6, 0x3c

    .line 490
    .line 491
    const/4 v4, 0x0

    .line 492
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/Modifier$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 493
    .line 494
    .line 495
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 496
    .line 497
    return-object p0

    .line 498
    :pswitch_d
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 501
    .line 502
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast p0, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 505
    .line 506
    check-cast p1, Ljava/lang/Throwable;

    .line 507
    .line 508
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)V

    .line 509
    .line 510
    .line 511
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 512
    .line 513
    return-object p0

    .line 514
    :pswitch_e
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 517
    .line 518
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 521
    .line 522
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 523
    .line 524
    new-instance p1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 525
    .line 526
    const/4 v1, 0x4

    .line 527
    invoke-direct {p1, v1, v0, p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    return-object p1

    .line 531
    :pswitch_f
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v0, Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 534
    .line 535
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 538
    .line 539
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 540
    .line 541
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 546
    .line 547
    new-instance v2, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 548
    .line 549
    const/16 v3, 0xb

    .line 550
    .line 551
    invoke-direct {v2, v3, p1, p0}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    invoke-direct {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 555
    .line 556
    .line 557
    move-object p0, v0

    .line 558
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 559
    .line 560
    invoke-virtual {p0, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->setSnapshotStateObserver$animation_core(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    .line 561
    .line 562
    .line 563
    new-instance p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 564
    .line 565
    invoke-direct {p0, v7, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    return-object p0

    .line 569
    :pswitch_10
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 572
    .line 573
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 576
    .line 577
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 578
    .line 579
    iget-object p1, v0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 580
    .line 581
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    new-instance p1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 585
    .line 586
    const/4 v1, 0x5

    .line 587
    invoke-direct {p1, v1, v0, p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    return-object p1

    .line 591
    :pswitch_11
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 592
    .line 593
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 596
    .line 597
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 598
    .line 599
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    if-ne v0, v2, :cond_9

    .line 604
    .line 605
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    goto :goto_5

    .line 609
    :cond_9
    new-instance v0, Lcom/fsck/k9/backends/AndroidAlarmManager$1$onReceive$1;

    .line 610
    .line 611
    invoke-direct {v0, p1, v6, v10}, Lcom/fsck/k9/backends/AndroidAlarmManager$1$onReceive$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;I)V

    .line 612
    .line 613
    .line 614
    invoke-static {p0, v6, v6, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 615
    .line 616
    .line 617
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 618
    .line 619
    return-object p0

    .line 620
    :pswitch_12
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 623
    .line 624
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 627
    .line 628
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 629
    .line 630
    iget-object p1, v0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 631
    .line 632
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    new-instance p1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 636
    .line 637
    invoke-direct {p1, v1, v0, p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    return-object p1

    .line 641
    :pswitch_13
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 644
    .line 645
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 646
    .line 647
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 648
    .line 649
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 650
    .line 651
    sget-object p1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 652
    .line 653
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 654
    .line 655
    invoke-direct {v1, p0, v6}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 656
    .line 657
    .line 658
    invoke-static {v0, v6, p1, v1, v10}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 659
    .line 660
    .line 661
    new-instance p0, Landroidx/compose/animation/core/Transition$animateTo$lambda$2$0$$inlined$onDispose$1;

    .line 662
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    .line 665
    .line 666
    return-object p0

    .line 667
    :pswitch_14
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 668
    .line 669
    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition;

    .line 670
    .line 671
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 672
    .line 673
    check-cast p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 674
    .line 675
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 676
    .line 677
    iget-object p1, v0, Landroidx/compose/animation/core/InfiniteTransition;->_animations:Landroidx/compose/runtime/collection/MutableVector;

    .line 678
    .line 679
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    iget-object p1, v0, Landroidx/compose/animation/core/InfiniteTransition;->refreshChildNeeded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 683
    .line 684
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 685
    .line 686
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    new-instance p1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 690
    .line 691
    invoke-direct {p1, v7, v0, p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    return-object p1

    .line 695
    :pswitch_15
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 696
    .line 697
    check-cast v0, Ljava/util/HashMap;

    .line 698
    .line 699
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast p0, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 702
    .line 703
    check-cast p1, Landroidx/camera/core/UseCase;

    .line 704
    .line 705
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    if-eqz v0, :cond_a

    .line 713
    .line 714
    check-cast v0, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;

    .line 715
    .line 716
    iget-object v1, v0, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 717
    .line 718
    iget-object v0, v0, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 719
    .line 720
    invoke-virtual {p1, p0, v1, v0}, Landroidx/camera/core/UseCase;->mergeConfigs(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfig;

    .line 721
    .line 722
    .line 723
    move-result-object v6

    .line 724
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    goto :goto_6

    .line 728
    :cond_a
    const-string p0, "Required value was null."

    .line 729
    .line 730
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    :goto_6
    return-object v6

    .line 734
    :pswitch_16
    invoke-direct {p0, p1}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->invoke$androidx$camera$camera2$impl$UseCaseManager$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object p0

    .line 738
    return-object p0

    .line 739
    :pswitch_17
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 740
    .line 741
    check-cast v0, Ljava/util/List;

    .line 742
    .line 743
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 744
    .line 745
    check-cast p0, Landroidx/camera/camera2/impl/State3AControl;

    .line 746
    .line 747
    check-cast p1, Ljava/lang/Throwable;

    .line 748
    .line 749
    if-eqz p1, :cond_b

    .line 750
    .line 751
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    if-eqz v2, :cond_c

    .line 760
    .line 761
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    check-cast v2, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 766
    .line 767
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 768
    .line 769
    .line 770
    goto :goto_7

    .line 771
    :cond_b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 772
    .line 773
    .line 774
    move-result-object p1

    .line 775
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 776
    .line 777
    .line 778
    move-result v1

    .line 779
    if-eqz v1, :cond_c

    .line 780
    .line 781
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    check-cast v1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 786
    .line 787
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 788
    .line 789
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    goto :goto_8

    .line 793
    :cond_c
    iget-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 794
    .line 795
    monitor-enter p1

    .line 796
    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/ArrayList;

    .line 797
    .line 798
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    .line 800
    .line 801
    monitor-exit p1

    .line 802
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 803
    .line 804
    return-object p0

    .line 805
    :catchall_0
    move-exception v0

    .line 806
    move-object p0, v0

    .line 807
    monitor-exit p1

    .line 808
    throw p0

    .line 809
    :pswitch_18
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 810
    .line 811
    check-cast v0, Landroidx/camera/camera2/compat/EvCompImpl;

    .line 812
    .line 813
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 814
    .line 815
    check-cast p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    .line 816
    .line 817
    check-cast p1, Ljava/lang/Throwable;

    .line 818
    .line 819
    iget-object p1, v0, Landroidx/camera/camera2/compat/EvCompImpl;->comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    .line 820
    .line 821
    invoke-virtual {p1, p0}, Landroidx/camera/camera2/impl/ComboRequestListener;->removeListener(Landroidx/camera/camera2/pipe/Request$Listener;)V

    .line 822
    .line 823
    .line 824
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 825
    .line 826
    return-object p0

    .line 827
    :pswitch_19
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 828
    .line 829
    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 830
    .line 831
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 832
    .line 833
    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 834
    .line 835
    check-cast p1, Ljava/lang/Throwable;

    .line 836
    .line 837
    if-eqz p1, :cond_e

    .line 838
    .line 839
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    .line 840
    .line 841
    if-eqz p0, :cond_d

    .line 842
    .line 843
    invoke-virtual {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCancelled()V

    .line 844
    .line 845
    .line 846
    goto :goto_9

    .line 847
    :cond_d
    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 848
    .line 849
    .line 850
    goto :goto_9

    .line 851
    :cond_e
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getCompletedInternal$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object p0

    .line 855
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    :goto_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 859
    .line 860
    return-object p0

    .line 861
    :pswitch_1a
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 862
    .line 863
    check-cast v0, Lkotlinx/coroutines/Deferred;

    .line 864
    .line 865
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 866
    .line 867
    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 868
    .line 869
    check-cast p1, Ljava/lang/Throwable;

    .line 870
    .line 871
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 872
    .line 873
    .line 874
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    .line 876
    .line 877
    if-eqz p1, :cond_10

    .line 878
    .line 879
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 880
    .line 881
    if-eqz v0, :cond_f

    .line 882
    .line 883
    check-cast p1, Ljava/util/concurrent/CancellationException;

    .line 884
    .line 885
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelInternal(Ljava/lang/Throwable;)V

    .line 886
    .line 887
    .line 888
    goto :goto_a

    .line 889
    :cond_f
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 890
    .line 891
    .line 892
    goto :goto_a

    .line 893
    :cond_10
    invoke-interface {v0}, Lkotlinx/coroutines/Deferred;->getCompleted()Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object p1

    .line 897
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    :goto_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 901
    .line 902
    return-object p0

    .line 903
    :pswitch_1b
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 904
    .line 905
    check-cast v0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    .line 906
    .line 907
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 908
    .line 909
    check-cast p0, Landroidx/activity/compose/ComposePredictiveBackHandler;

    .line 910
    .line 911
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 912
    .line 913
    invoke-virtual {v0, p0}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->addHandler(Lnet/openid/appauth/JsonUtil$Field;)V

    .line 914
    .line 915
    .line 916
    new-instance p1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 917
    .line 918
    invoke-direct {p1, v10, v0, p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 919
    .line 920
    .line 921
    return-object p1

    .line 922
    :pswitch_1c
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast v0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    .line 925
    .line 926
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast p0, Landroidx/activity/compose/ComposeBackHandler;

    .line 929
    .line 930
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 931
    .line 932
    invoke-virtual {v0, p0}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->addHandler(Lnet/openid/appauth/JsonUtil$Field;)V

    .line 933
    .line 934
    .line 935
    new-instance p1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 936
    .line 937
    invoke-direct {p1, v9, v0, p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 938
    .line 939
    .line 940
    return-object p1

    .line 941
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
