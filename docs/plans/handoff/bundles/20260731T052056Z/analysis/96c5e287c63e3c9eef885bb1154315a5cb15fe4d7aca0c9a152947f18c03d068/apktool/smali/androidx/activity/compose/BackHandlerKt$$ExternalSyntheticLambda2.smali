.class public final synthetic Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

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


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x6

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x1

    .line 12
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    iget-object v10, v0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 22
    .line 23
    move-object v12, v10

    .line 24
    check-cast v12, Landroidx/compose/ui/graphics/Brush;

    .line 25
    .line 26
    move-object/from16 v11, p1

    .line 27
    .line 28
    check-cast v11, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 29
    .line 30
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->autofillHighlightOn$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->justAutofilled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    :cond_0
    const/16 v19, 0x0

    .line 62
    .line 63
    const/16 v20, 0x7e

    .line 64
    .line 65
    const-wide/16 v13, 0x0

    .line 66
    .line 67
    const-wide/16 v15, 0x0

    .line 68
    .line 69
    const/16 v17, 0x0

    .line 70
    .line 71
    const/16 v18, 0x0

    .line 72
    .line 73
    invoke-static/range {v11 .. v20}, Landroidx/compose/ui/Modifier$-CC;->drawRect-AsUm42w$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/BlendModeColorFilter;I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-object v9

    .line 77
    :pswitch_0
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 78
    .line 79
    check-cast v10, Ljava/util/ArrayList;

    .line 80
    .line 81
    move-object/from16 v1, p1

    .line 82
    .line 83
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 84
    .line 85
    new-instance v2, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda2;

    .line 86
    .line 87
    invoke-direct {v2, v7, v10}, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda2;-><init>(ILjava/util/ArrayList;)V

    .line 88
    .line 89
    .line 90
    iput-boolean v8, v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    iput-boolean v7, v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 96
    .line 97
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    return-object v9

    .line 101
    :pswitch_1
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 102
    .line 103
    check-cast v10, Lcom/caverock/androidsvg/SVG;

    .line 104
    .line 105
    move-object/from16 v1, p1

    .line 106
    .line 107
    check-cast v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 108
    .line 109
    iget v1, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    iget v2, v2, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 120
    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    return-object v9

    .line 129
    :pswitch_2
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 130
    .line 131
    check-cast v10, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 132
    .line 133
    move-object/from16 v1, p1

    .line 134
    .line 135
    check-cast v1, Ljava/util/Map;

    .line 136
    .line 137
    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 138
    .line 139
    invoke-direct {v2, v0, v1, v10}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Landroidx/compose/runtime/saveable/SaveableStateHolder;)V

    .line 140
    .line 141
    .line 142
    return-object v2

    .line 143
    :pswitch_3
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 144
    .line 145
    move-object/from16 v1, p1

    .line 146
    .line 147
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 148
    .line 149
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->previouslyComposedKeys:Landroidx/collection/MutableScatterSet;

    .line 150
    .line 151
    invoke-virtual {v1, v10}, Landroidx/collection/MutableScatterSet;->minusAssign(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 155
    .line 156
    const/4 v2, 0x7

    .line 157
    invoke-direct {v1, v2, v0, v10}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-object v1

    .line 161
    :pswitch_4
    check-cast v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    .line 162
    .line 163
    check-cast v10, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 164
    .line 165
    move-object/from16 v1, p1

    .line 166
    .line 167
    check-cast v1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    .line 168
    .line 169
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 170
    .line 171
    if-eqz v1, :cond_2

    .line 172
    .line 173
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->unregister()V

    .line 174
    .line 175
    .line 176
    :cond_2
    iput-object v6, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 177
    .line 178
    iget-object v0, v10, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->lock:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 179
    .line 180
    if-eqz v0, :cond_3

    .line 181
    .line 182
    invoke-virtual {v0, v9}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_3
    iput-object v6, v10, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->lock:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 186
    .line 187
    return-object v9

    .line 188
    :pswitch_5
    check-cast v0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;

    .line 189
    .line 190
    move-object v11, v10

    .line 191
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    .line 192
    .line 193
    move-object/from16 v1, p1

    .line 194
    .line 195
    check-cast v1, Ljava/lang/Integer;

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    iget-object v1, v0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->listItemCounts:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v1, Lokhttp3/Dispatcher;

    .line 204
    .line 205
    iget v2, v1, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 206
    .line 207
    invoke-virtual {v1, v12}, Lokhttp3/Dispatcher;->spanOf(I)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-virtual {v0, v7, v1}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->childConstraints-JhjzzOo$foundation(II)J

    .line 212
    .line 213
    .line 214
    move-result-wide v13

    .line 215
    const/4 v15, 0x0

    .line 216
    iget v0, v11, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->defaultMainAxisSpacing:I

    .line 217
    .line 218
    move/from16 v17, v0

    .line 219
    .line 220
    move/from16 v16, v1

    .line 221
    .line 222
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    return-object v0

    .line 227
    :pswitch_6
    check-cast v0, Lokhttp3/Dispatcher;

    .line 228
    .line 229
    check-cast v10, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;

    .line 230
    .line 231
    move-object/from16 v1, p1

    .line 232
    .line 233
    check-cast v1, Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->getLineConfiguration(I)Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget v1, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 244
    .line 245
    new-instance v2, Ljava/util/ArrayList;

    .line 246
    .line 247
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 248
    .line 249
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    move v4, v7

    .line 261
    :goto_0
    if-ge v7, v3, :cond_4

    .line 262
    .line 263
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    check-cast v5, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 268
    .line 269
    iget-wide v5, v5, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    .line 270
    .line 271
    long-to-int v5, v5

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v10, v4, v5}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->childConstraints-JhjzzOo$foundation(II)J

    .line 277
    .line 278
    .line 279
    move-result-wide v11

    .line 280
    new-instance v9, Landroidx/compose/ui/unit/Constraints;

    .line 281
    .line 282
    invoke-direct {v9, v11, v12}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 283
    .line 284
    .line 285
    new-instance v11, Lkotlin/Pair;

    .line 286
    .line 287
    invoke-direct {v11, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    add-int/2addr v1, v8

    .line 294
    add-int/2addr v4, v5

    .line 295
    add-int/lit8 v7, v7, 0x1

    .line 296
    .line 297
    goto :goto_0

    .line 298
    :cond_4
    return-object v2

    .line 299
    :pswitch_7
    check-cast v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 300
    .line 301
    check-cast v10, Landroid/view/View;

    .line 302
    .line 303
    move-object/from16 v1, p1

    .line 304
    .line 305
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 306
    .line 307
    invoke-virtual {v0, v10}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->incrementAccessors(Landroid/view/View;)V

    .line 308
    .line 309
    .line 310
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 311
    .line 312
    invoke-direct {v1, v4, v0, v10}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    return-object v1

    .line 316
    :pswitch_8
    check-cast v0, Landroidx/compose/foundation/layout/PaddingNode;

    .line 317
    .line 318
    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    .line 319
    .line 320
    move-object/from16 v1, p1

    .line 321
    .line 322
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 323
    .line 324
    iget-boolean v2, v0, Landroidx/compose/foundation/layout/PaddingNode;->rtlAware:Z

    .line 325
    .line 326
    iget v3, v0, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    .line 327
    .line 328
    if-eqz v2, :cond_5

    .line 329
    .line 330
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-static {v1, v3}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    iget v0, v0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    .line 338
    .line 339
    invoke-static {v1, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    invoke-static {v1, v10, v2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    invoke-static {v1, v3}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    iget v0, v0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    .line 355
    .line 356
    invoke-static {v1, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    invoke-static {v1, v10, v2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 361
    .line 362
    .line 363
    :goto_1
    return-object v9

    .line 364
    :pswitch_9
    check-cast v0, Landroidx/compose/foundation/layout/OffsetPxNode;

    .line 365
    .line 366
    move-object v2, v10

    .line 367
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 368
    .line 369
    move-object/from16 v1, p1

    .line 370
    .line 371
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 372
    .line 373
    iget-object v3, v0, Landroidx/compose/foundation/layout/OffsetPxNode;->offset:Lkotlin/jvm/functions/Function1;

    .line 374
    .line 375
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    check-cast v3, Landroidx/compose/ui/unit/IntOffset;

    .line 380
    .line 381
    iget-wide v3, v3, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 382
    .line 383
    iget-boolean v0, v0, Landroidx/compose/foundation/layout/OffsetPxNode;->rtlAware:Z

    .line 384
    .line 385
    const-wide v5, 0xffffffffL

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    const/16 v7, 0x20

    .line 391
    .line 392
    if-eqz v0, :cond_6

    .line 393
    .line 394
    shr-long v7, v3, v7

    .line 395
    .line 396
    long-to-int v0, v7

    .line 397
    and-long/2addr v3, v5

    .line 398
    long-to-int v3, v3

    .line 399
    invoke-static {v1, v2, v0, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 400
    .line 401
    .line 402
    goto :goto_2

    .line 403
    :cond_6
    shr-long v7, v3, v7

    .line 404
    .line 405
    long-to-int v0, v7

    .line 406
    and-long/2addr v3, v5

    .line 407
    long-to-int v4, v3

    .line 408
    const/4 v5, 0x0

    .line 409
    const/16 v6, 0xc

    .line 410
    .line 411
    move v3, v0

    .line 412
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    .line 413
    .line 414
    .line 415
    :goto_2
    return-object v9

    .line 416
    :pswitch_a
    check-cast v0, Landroidx/compose/foundation/layout/OffsetNode;

    .line 417
    .line 418
    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    .line 419
    .line 420
    move-object/from16 v1, p1

    .line 421
    .line 422
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 423
    .line 424
    iget-boolean v2, v0, Landroidx/compose/foundation/layout/OffsetNode;->rtlAware:Z

    .line 425
    .line 426
    iget v3, v0, Landroidx/compose/foundation/layout/OffsetNode;->x:F

    .line 427
    .line 428
    if-eqz v2, :cond_7

    .line 429
    .line 430
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    invoke-static {v1, v3}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    iget v0, v0, Landroidx/compose/foundation/layout/OffsetNode;->y:F

    .line 438
    .line 439
    invoke-static {v1, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    invoke-static {v1, v10, v2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 444
    .line 445
    .line 446
    goto :goto_3

    .line 447
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    invoke-static {v1, v3}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    iget v0, v0, Landroidx/compose/foundation/layout/OffsetNode;->y:F

    .line 455
    .line 456
    invoke-static {v1, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    invoke-static {v1, v10, v2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 461
    .line 462
    .line 463
    :goto_3
    return-object v9

    .line 464
    :pswitch_b
    check-cast v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 465
    .line 466
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 467
    .line 468
    move-object/from16 v1, p1

    .line 469
    .line 470
    check-cast v1, Ljava/lang/Long;

    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    iget v1, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 476
    .line 477
    iput v3, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 478
    .line 479
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-interface {v10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    return-object v9

    .line 487
    :pswitch_c
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 488
    .line 489
    check-cast v10, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 490
    .line 491
    move-object/from16 v1, p1

    .line 492
    .line 493
    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 494
    .line 495
    iget-boolean v2, v1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->isIndirectPointerEvent:Z

    .line 496
    .line 497
    if-eqz v2, :cond_8

    .line 498
    .line 499
    const/high16 v2, -0x40800000    # -1.0f

    .line 500
    .line 501
    goto :goto_4

    .line 502
    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 503
    .line 504
    :goto_4
    iget-wide v6, v1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->delta:J

    .line 505
    .line 506
    iget-object v1, v10, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 507
    .line 508
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 509
    .line 510
    if-ne v1, v4, :cond_9

    .line 511
    .line 512
    invoke-static {v6, v7, v3, v8}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(JFI)J

    .line 513
    .line 514
    .line 515
    move-result-wide v3

    .line 516
    goto :goto_5

    .line 517
    :cond_9
    invoke-static {v6, v7, v3, v5}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(JFI)J

    .line 518
    .line 519
    .line 520
    move-result-wide v3

    .line 521
    :goto_5
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    .line 522
    .line 523
    .line 524
    move-result-wide v1

    .line 525
    invoke-virtual {v0, v1, v2, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->scrollByWithOverscroll-OzD1aCk(JI)J

    .line 526
    .line 527
    .line 528
    return-object v9

    .line 529
    :pswitch_d
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 530
    .line 531
    check-cast v10, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 532
    .line 533
    move-object/from16 v1, p1

    .line 534
    .line 535
    check-cast v1, Ljava/lang/Throwable;

    .line 536
    .line 537
    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 538
    .line 539
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    return-object v9

    .line 543
    :pswitch_e
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 544
    .line 545
    check-cast v10, Landroidx/compose/foundation/interaction/Interaction;

    .line 546
    .line 547
    move-object/from16 v1, p1

    .line 548
    .line 549
    check-cast v1, Ljava/lang/Throwable;

    .line 550
    .line 551
    invoke-virtual {v0, v10}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)V

    .line 552
    .line 553
    .line 554
    return-object v9

    .line 555
    :pswitch_f
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 556
    .line 557
    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 558
    .line 559
    move-object/from16 v1, p1

    .line 560
    .line 561
    check-cast v1, Landroidx/compose/foundation/GestureConnection;

    .line 562
    .line 563
    invoke-interface {v1, v0}, Landroidx/compose/foundation/GestureConnection;->isInterested(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    iget-boolean v1, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 568
    .line 569
    if-nez v1, :cond_a

    .line 570
    .line 571
    if-eqz v0, :cond_b

    .line 572
    .line 573
    :cond_a
    move v7, v8

    .line 574
    :cond_b
    iput-boolean v7, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 575
    .line 576
    xor-int/lit8 v0, v7, 0x1

    .line 577
    .line 578
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    return-object v0

    .line 583
    :pswitch_10
    check-cast v0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 584
    .line 585
    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 586
    .line 587
    move-object/from16 v1, p1

    .line 588
    .line 589
    check-cast v1, Landroidx/compose/foundation/GestureConnection;

    .line 590
    .line 591
    invoke-interface {v1, v0}, Landroidx/compose/foundation/GestureConnection;->isInterested(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    iget-boolean v1, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 596
    .line 597
    if-nez v1, :cond_c

    .line 598
    .line 599
    if-eqz v0, :cond_d

    .line 600
    .line 601
    :cond_c
    move v7, v8

    .line 602
    :cond_d
    iput-boolean v7, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 603
    .line 604
    xor-int/lit8 v0, v7, 0x1

    .line 605
    .line 606
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    return-object v0

    .line 611
    :pswitch_11
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 612
    .line 613
    move-object v3, v10

    .line 614
    check-cast v3, Landroidx/compose/ui/graphics/Brush;

    .line 615
    .line 616
    move-object/from16 v1, p1

    .line 617
    .line 618
    check-cast v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 619
    .line 620
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 621
    .line 622
    .line 623
    iget-object v2, v0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 624
    .line 625
    const/4 v5, 0x0

    .line 626
    const/16 v6, 0x3c

    .line 627
    .line 628
    const/4 v4, 0x0

    .line 629
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/Modifier$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 630
    .line 631
    .line 632
    return-object v9

    .line 633
    :pswitch_12
    move-object v11, v0

    .line 634
    check-cast v11, Landroidx/compose/ui/graphics/AndroidPath;

    .line 635
    .line 636
    move-object v12, v10

    .line 637
    check-cast v12, Landroidx/compose/ui/graphics/Brush;

    .line 638
    .line 639
    move-object/from16 v10, p1

    .line 640
    .line 641
    check-cast v10, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 642
    .line 643
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 644
    .line 645
    .line 646
    const/4 v14, 0x0

    .line 647
    const/16 v15, 0x3c

    .line 648
    .line 649
    const/4 v13, 0x0

    .line 650
    invoke-static/range {v10 .. v15}, Landroidx/compose/ui/Modifier$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 651
    .line 652
    .line 653
    return-object v9

    .line 654
    :pswitch_13
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 655
    .line 656
    check-cast v10, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 657
    .line 658
    move-object/from16 v1, p1

    .line 659
    .line 660
    check-cast v1, Ljava/lang/Throwable;

    .line 661
    .line 662
    invoke-virtual {v0, v10}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)V

    .line 663
    .line 664
    .line 665
    return-object v9

    .line 666
    :pswitch_14
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 667
    .line 668
    check-cast v10, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 669
    .line 670
    move-object/from16 v1, p1

    .line 671
    .line 672
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 673
    .line 674
    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 675
    .line 676
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 680
    .line 681
    const/4 v2, 0x5

    .line 682
    invoke-direct {v1, v2, v0, v10}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 683
    .line 684
    .line 685
    return-object v1

    .line 686
    :pswitch_15
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 687
    .line 688
    check-cast v10, Landroidx/compose/animation/core/Transition;

    .line 689
    .line 690
    move-object/from16 v1, p1

    .line 691
    .line 692
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 693
    .line 694
    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 695
    .line 696
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 700
    .line 701
    invoke-direct {v1, v2, v0, v10}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    return-object v1

    .line 705
    :pswitch_16
    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    .line 706
    .line 707
    move-object/from16 v1, p1

    .line 708
    .line 709
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 710
    .line 711
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    if-ne v0, v3, :cond_e

    .line 716
    .line 717
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    goto :goto_6

    .line 721
    :cond_e
    new-instance v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 722
    .line 723
    invoke-direct {v0, v8, v1, v6}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 724
    .line 725
    .line 726
    invoke-static {v10, v6, v6, v0, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 727
    .line 728
    .line 729
    :goto_6
    return-object v9

    .line 730
    :pswitch_17
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 731
    .line 732
    check-cast v10, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 733
    .line 734
    move-object/from16 v1, p1

    .line 735
    .line 736
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 737
    .line 738
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 739
    .line 740
    const/4 v2, 0x4

    .line 741
    invoke-direct {v1, v2, v0, v10}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    return-object v1

    .line 745
    :pswitch_18
    check-cast v0, Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 746
    .line 747
    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    .line 748
    .line 749
    move-object/from16 v1, p1

    .line 750
    .line 751
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 752
    .line 753
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    new-instance v2, Landroidx/preference/PreferenceManager;

    .line 758
    .line 759
    new-instance v3, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 760
    .line 761
    invoke-direct {v3, v4, v1, v10}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    invoke-direct {v2, v3}, Landroidx/preference/PreferenceManager;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 765
    .line 766
    .line 767
    move-object v1, v0

    .line 768
    check-cast v1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 769
    .line 770
    invoke-virtual {v1, v2}, Landroidx/compose/animation/core/SeekableTransitionState;->setSnapshotStateObserver$animation_core(Landroidx/preference/PreferenceManager;)V

    .line 771
    .line 772
    .line 773
    new-instance v1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 774
    .line 775
    invoke-direct {v1, v5, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 776
    .line 777
    .line 778
    return-object v1

    .line 779
    :pswitch_19
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 780
    .line 781
    check-cast v10, Landroidx/compose/animation/core/Transition;

    .line 782
    .line 783
    move-object/from16 v1, p1

    .line 784
    .line 785
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 786
    .line 787
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 788
    .line 789
    new-instance v2, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 790
    .line 791
    invoke-direct {v2, v10, v6}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 792
    .line 793
    .line 794
    invoke-static {v0, v6, v1, v2, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 795
    .line 796
    .line 797
    new-instance v0, Landroidx/compose/animation/core/Transition$animateTo$lambda$2$0$$inlined$onDispose$1;

    .line 798
    .line 799
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 800
    .line 801
    .line 802
    return-object v0

    .line 803
    :pswitch_1a
    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition;

    .line 804
    .line 805
    check-cast v10, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 806
    .line 807
    move-object/from16 v1, p1

    .line 808
    .line 809
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 810
    .line 811
    iget-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition;->_animations:Landroidx/compose/runtime/collection/MutableVector;

    .line 812
    .line 813
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 814
    .line 815
    .line 816
    iget-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition;->refreshChildNeeded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 817
    .line 818
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 819
    .line 820
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 821
    .line 822
    .line 823
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 824
    .line 825
    invoke-direct {v1, v5, v0, v10}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    return-object v1

    .line 829
    :pswitch_1b
    check-cast v0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    .line 830
    .line 831
    check-cast v10, Landroidx/activity/compose/ComposePredictiveBackHandler;

    .line 832
    .line 833
    move-object/from16 v1, p1

    .line 834
    .line 835
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 836
    .line 837
    invoke-virtual {v0, v10}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->addHandler(Landroidx/appcompat/view/menu/BaseMenuWrapper;)V

    .line 838
    .line 839
    .line 840
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 841
    .line 842
    invoke-direct {v1, v8, v0, v10}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 843
    .line 844
    .line 845
    return-object v1

    .line 846
    :pswitch_1c
    check-cast v0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    .line 847
    .line 848
    check-cast v10, Landroidx/activity/compose/ComposeBackHandler;

    .line 849
    .line 850
    move-object/from16 v1, p1

    .line 851
    .line 852
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 853
    .line 854
    invoke-virtual {v0, v10}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->addHandler(Landroidx/appcompat/view/menu/BaseMenuWrapper;)V

    .line 855
    .line 856
    .line 857
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 858
    .line 859
    invoke-direct {v1, v7, v0, v10}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 860
    .line 861
    .line 862
    return-object v1

    .line 863
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
