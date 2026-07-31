.class public final synthetic Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v4, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 17
    .line 18
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    check-cast v4, Lus/shandian/giga/service/DownloadManagerService$1;

    .line 21
    .line 22
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "NetworkRequestConstraintController unregister callback"

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object v3

    .line 41
    :pswitch_0
    check-cast p0, Ljava/util/ArrayList;

    .line 42
    .line 43
    check-cast v5, Landroidx/navigation3/scene/Scene;

    .line 44
    .line 45
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-interface {v5}, Landroidx/navigation3/scene/Scene;->getPreviousEntries()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sub-int/2addr p0, v0

    .line 60
    :goto_0
    if-ge v1, p0, :cond_1

    .line 61
    .line 62
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-object v3

    .line 69
    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    .line 70
    .line 71
    check-cast v5, Lcoil3/ComponentRegistry$Builder;

    .line 72
    .line 73
    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->cancel()V

    .line 76
    .line 77
    .line 78
    iget-object p0, v5, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 79
    .line 80
    move-object v0, p0

    .line 81
    check-cast v0, Landroidx/compose/runtime/internal/AtomicInt;

    .line 82
    .line 83
    iget v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 84
    .line 85
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    ushr-int/lit8 v2, p0, 0x1b

    .line 90
    .line 91
    and-int/lit8 v2, v2, 0xf

    .line 92
    .line 93
    if-ne v2, v1, :cond_3

    .line 94
    .line 95
    add-int/lit8 v2, p0, -0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move v2, p0

    .line 99
    :goto_1
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_2

    .line 104
    .line 105
    return-object v3

    .line 106
    :pswitch_2
    check-cast p0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 107
    .line 108
    check-cast v5, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 109
    .line 110
    check-cast v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;

    .line 111
    .line 112
    if-eqz p0, :cond_4

    .line 113
    .line 114
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    iget v0, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    .line 119
    .line 120
    sub-int/2addr p0, v0

    .line 121
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->advanceBy(I)V

    .line 122
    .line 123
    .line 124
    :cond_4
    iget p0, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    .line 125
    .line 126
    invoke-static {v5, v2, p0, v2}, Landroidx/core/os/BundleKt;->buildTrace(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 135
    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    iget-object v0, v0, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->groupOffset:Ljava/lang/Integer;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    move-object v0, v2

    .line 142
    :goto_2
    invoke-interface {v4, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;->buildStackTrace(Ljava/lang/Integer;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_6

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 160
    .line 161
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/util/List;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget v3, v3, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->groupKey:I

    .line 166
    .line 167
    new-instance v5, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 168
    .line 169
    invoke-direct {v5, v3, v2, v0}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILorg/jsoup/Jsoup;Ljava/lang/Integer;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v5}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    :cond_7
    :goto_3
    new-instance v0, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 181
    .line 182
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-interface {v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;->getSourceInformationEnabled()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 195
    .line 196
    check-cast v5, Landroidx/compose/ui/node/NodeCoordinator;

    .line 197
    .line 198
    check-cast v4, Landroidx/compose/ui/relocation/BringIntoViewModifierNodeKt$bringIntoView$2;

    .line 199
    .line 200
    invoke-static {p0, v5, v4}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    if-eqz v7, :cond_9

    .line 205
    .line 206
    iget-object v6, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->responder:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 207
    .line 208
    iget-wide v0, v6, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 209
    .line 210
    const-wide/16 v2, -0x1

    .line 211
    .line 212
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-eqz p0, :cond_8

    .line 217
    .line 218
    const-string p0, "Expected BringIntoViewRequester to not be used before parents are placed."

    .line 219
    .line 220
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_8
    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getViewportSizeOrZero-YbymL2g$foundation()J

    .line 224
    .line 225
    .line 226
    move-result-wide v8

    .line 227
    const-wide/16 v10, 0x0

    .line 228
    .line 229
    invoke-virtual/range {v6 .. v11}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-fbGrOKE(Landroidx/compose/ui/geometry/Rect;JJ)J

    .line 230
    .line 231
    .line 232
    move-result-wide v0

    .line 233
    const-wide v2, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    xor-long/2addr v0, v2

    .line 239
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    :cond_9
    return-object v2

    .line 244
    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 245
    .line 246
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 247
    .line 248
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 249
    .line 250
    new-instance v0, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;

    .line 251
    .line 252
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    check-cast p0, Lkotlin/jvm/functions/Function4;

    .line 257
    .line 258
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 263
    .line 264
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Ljava/lang/Number;

    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;I)V

    .line 275
    .line 276
    .line 277
    return-object v0

    .line 278
    :pswitch_5
    check-cast p0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 279
    .line 280
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListState;

    .line 281
    .line 282
    check-cast v4, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 283
    .line 284
    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 289
    .line 290
    new-instance v0, Lcom/grack/nanojson/JsonParser;

    .line 291
    .line 292
    iget-object v1, v5, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Lcoil3/util/AndroidSystemCallbacks;

    .line 293
    .line 294
    iget-object v1, v1, Lcoil3/util/AndroidSystemCallbacks;->application:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 297
    .line 298
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    check-cast v1, Lkotlin/ranges/IntRange;

    .line 303
    .line 304
    invoke-direct {v0, v1, p0}, Lcom/grack/nanojson/JsonParser;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V

    .line 305
    .line 306
    .line 307
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 308
    .line 309
    invoke-direct {v1, v5, p0, v4, v0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Lcom/grack/nanojson/JsonParser;)V

    .line 310
    .line 311
    .line 312
    return-object v1

    .line 313
    :pswitch_6
    move-object v6, p0

    .line 314
    check-cast v6, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 315
    .line 316
    check-cast v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 317
    .line 318
    check-cast v4, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 319
    .line 320
    iget-object p0, v6, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 321
    .line 322
    :goto_4
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 323
    .line 324
    iget v7, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 325
    .line 326
    const/4 v13, 0x1

    .line 327
    if-eqz v7, :cond_c

    .line 328
    .line 329
    if-eqz v7, :cond_b

    .line 330
    .line 331
    add-int/lit8 v7, v7, -0x1

    .line 332
    .line 333
    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 334
    .line 335
    aget-object v0, v0, v7

    .line 336
    .line 337
    check-cast v0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 338
    .line 339
    iget-object v0, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->currentBounds:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    .line 340
    .line 341
    invoke-virtual {v0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    move-object v7, v0

    .line 346
    check-cast v7, Landroidx/compose/ui/geometry/Rect;

    .line 347
    .line 348
    if-nez v7, :cond_a

    .line 349
    .line 350
    move v0, v13

    .line 351
    goto :goto_5

    .line 352
    :cond_a
    const-wide/16 v10, 0x0

    .line 353
    .line 354
    const/4 v12, 0x3

    .line 355
    const-wide/16 v8, 0x0

    .line 356
    .line 357
    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    :goto_5
    if-eqz v0, :cond_c

    .line 362
    .line 363
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 364
    .line 365
    iget v7, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 366
    .line 367
    sub-int/2addr v7, v13

    .line 368
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    check-cast v0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 373
    .line 374
    iget-object v0, v0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 375
    .line 376
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_b
    const-string p0, "MutableVector is empty."

    .line 381
    .line 382
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_c
    iget-boolean p0, v6, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 387
    .line 388
    if-eqz p0, :cond_d

    .line 389
    .line 390
    iget-object p0, v6, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedRect:Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;

    .line 391
    .line 392
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    move-object v7, p0

    .line 397
    check-cast v7, Landroidx/compose/ui/geometry/Rect;

    .line 398
    .line 399
    if-eqz v7, :cond_d

    .line 400
    .line 401
    const-wide/16 v10, 0x0

    .line 402
    .line 403
    const/4 v12, 0x3

    .line 404
    const-wide/16 v8, 0x0

    .line 405
    .line 406
    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    .line 407
    .line 408
    .line 409
    move-result p0

    .line 410
    if-ne p0, v13, :cond_d

    .line 411
    .line 412
    iput-boolean v1, v6, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 413
    .line 414
    :cond_d
    const-wide/16 v0, 0x0

    .line 415
    .line 416
    invoke-static {v6, v4, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$calculateScrollDelta-I_oMVgE(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F

    .line 417
    .line 418
    .line 419
    move-result p0

    .line 420
    iput p0, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 421
    .line 422
    move-object v2, v3

    .line 423
    :goto_6
    return-object v2

    .line 424
    :pswitch_7
    check-cast p0, Lokhttp3/CertificatePinner;

    .line 425
    .line 426
    check-cast v5, Lokhttp3/Handshake;

    .line 427
    .line 428
    check-cast v4, Lokhttp3/Address;

    .line 429
    .line 430
    iget-object p0, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lnet/newpipe/app/AppKt;

    .line 431
    .line 432
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v5}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    iget-object v1, v4, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 440
    .line 441
    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {p0, v1, v0}, Lnet/newpipe/app/AppKt;->clean(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 444
    .line 445
    .line 446
    move-result-object p0

    .line 447
    return-object p0

    .line 448
    nop

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
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
