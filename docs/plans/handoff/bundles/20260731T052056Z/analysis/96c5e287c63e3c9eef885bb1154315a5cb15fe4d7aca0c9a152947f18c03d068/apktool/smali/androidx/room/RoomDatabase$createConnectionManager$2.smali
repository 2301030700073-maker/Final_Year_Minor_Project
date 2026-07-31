.class public final synthetic Landroidx/room/RoomDatabase$createConnectionManager$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iput p7, p0, Landroidx/room/RoomDatabase$createConnectionManager$2;->$r8$classId:I

    .line 2
    .line 3
    move-object v0, p4

    .line 4
    move-object p4, p2

    .line 5
    move p2, p6

    .line 6
    move-object p6, p5

    .line 7
    move-object p5, v0

    .line 8
    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/room/RoomDatabase$createConnectionManager$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 14
    .line 15
    check-cast p2, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast p0, Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isElementOptional(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    move v3, v4

    .line 46
    :cond_0
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/JsonElementMarker;->isUnmarkedNull:Z

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_0
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    check-cast p0, Landroidx/room/RoomDatabase;

    .line 58
    .line 59
    invoke-static {p0, p2, p1}, Landroidx/compose/ui/unit/DpKt;->compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 65
    .line 66
    check-cast p2, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 67
    .line 68
    check-cast p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;

    .line 69
    .line 70
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-ne p2, p1, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    if-eqz p2, :cond_4

    .line 87
    .line 88
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance p2, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 94
    .line 95
    const/16 v0, 0x9

    .line 96
    .line 97
    invoke-direct {p2, v0, p1, p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0, p2}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 106
    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pin()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 110
    .line 111
    .line 112
    move-object v2, p1

    .line 113
    :cond_3
    iput-object v2, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget-object p1, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->release()V

    .line 121
    .line 122
    .line 123
    :cond_5
    iput-object v2, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 124
    .line 125
    :goto_0
    return-object v1

    .line 126
    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    check-cast p2, Ljava/lang/Number;

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    check-cast p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 139
    .line 140
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneInfo:Lokhttp3/internal/http/StatusLine;

    .line 141
    .line 142
    new-array v1, p2, [I

    .line 143
    .line 144
    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 151
    .line 152
    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->spanProvider:Landroidx/appcompat/widget/PopupMenu$1;

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/PopupMenu$1;->isFullSpan(I)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-eqz p0, :cond_6

    .line 159
    .line 160
    const/4 p0, 0x6

    .line 161
    invoke-static {v1, p1, v3, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([IIII)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_7

    .line 165
    .line 166
    :cond_6
    add-int p0, p1, p2

    .line 167
    .line 168
    invoke-virtual {v0, p0}, Lokhttp3/internal/http/StatusLine;->ensureValidIndex(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p1}, Lokhttp3/internal/http/StatusLine;->getLane(I)I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    const/4 v2, -0x2

    .line 176
    const/4 v5, -0x1

    .line 177
    if-eq p0, v2, :cond_8

    .line 178
    .line 179
    if-eq p0, v5, :cond_8

    .line 180
    .line 181
    if-ltz p0, :cond_7

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v3, "Expected positive lane number, got "

    .line 187
    .line 188
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v3, " instead."

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_1
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    :cond_8
    add-int/lit8 p0, v3, -0x1

    .line 211
    .line 212
    move v2, p1

    .line 213
    :goto_2
    if-ge v5, p0, :cond_a

    .line 214
    .line 215
    invoke-virtual {v0, v2, p0}, Lokhttp3/internal/http/StatusLine;->findPreviousItemIndex(II)I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    aput v2, v1, p0

    .line 220
    .line 221
    if-ne v2, v5, :cond_9

    .line 222
    .line 223
    const/4 v2, 0x2

    .line 224
    invoke-static {v1, v5, p0, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([IIII)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_9
    add-int/lit8 p0, p0, -0x1

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_a
    :goto_3
    aput p1, v1, v3

    .line 232
    .line 233
    add-int/2addr v3, v4

    .line 234
    :goto_4
    if-ge v3, p2, :cond_d

    .line 235
    .line 236
    add-int/2addr p1, v4

    .line 237
    iget p0, v0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 238
    .line 239
    iget-object v2, v0, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v2, [I

    .line 242
    .line 243
    array-length v2, v2

    .line 244
    add-int/2addr p0, v2

    .line 245
    :goto_5
    if-ge p1, p0, :cond_c

    .line 246
    .line 247
    invoke-virtual {v0, p1, v3}, Lokhttp3/internal/http/StatusLine;->assignedToLane(II)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_b

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_b
    add-int/lit8 p1, p1, 0x1

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_c
    iget p0, v0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 258
    .line 259
    iget-object p1, v0, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast p1, [I

    .line 262
    .line 263
    array-length p1, p1

    .line 264
    add-int/2addr p0, p1

    .line 265
    move p1, p0

    .line 266
    :goto_6
    aput p1, v1, v3

    .line 267
    .line 268
    add-int/lit8 v3, v3, 0x1

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_d
    :goto_7
    return-object v1

    .line 272
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 273
    .line 274
    check-cast p2, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 275
    .line 276
    check-cast p0, Landroidx/compose/foundation/FocusableNode;

    .line 277
    .line 278
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 279
    .line 280
    if-nez v0, :cond_e

    .line 281
    .line 282
    goto/16 :goto_a

    .line 283
    .line 284
    :cond_e
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-ne p2, p1, :cond_f

    .line 293
    .line 294
    goto/16 :goto_a

    .line 295
    .line 296
    :cond_f
    iget-object p1, p0, Landroidx/compose/foundation/FocusableNode;->onFocusChange:Lkotlin/jvm/functions/Function1;

    .line 297
    .line 298
    if-eqz p1, :cond_10

    .line 299
    .line 300
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    :cond_10
    sget-object p1, Landroidx/compose/foundation/FocusedBoundsObserverNode;->TraverseKey:Landroidx/compose/foundation/GestureNode$TraverseKey;

    .line 308
    .line 309
    if-eqz p2, :cond_12

    .line 310
    .line 311
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    new-instance v3, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 316
    .line 317
    const/4 v4, 0x3

    .line 318
    invoke-direct {v3, v4, p0, v2}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v0, v2, v2, v3, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 322
    .line 323
    .line 324
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 325
    .line 326
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 327
    .line 328
    .line 329
    new-instance v3, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 330
    .line 331
    const/4 v4, 0x5

    .line 332
    invoke-direct {v3, v4, v0, p0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    invoke-static {p0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 341
    .line 342
    if-eqz v0, :cond_11

    .line 343
    .line 344
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pin()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 345
    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_11
    move-object v0, v2

    .line 349
    :goto_8
    iput-object v0, p0, Landroidx/compose/foundation/FocusableNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 350
    .line 351
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->globalLayoutCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    .line 352
    .line 353
    if-eqz v0, :cond_14

    .line 354
    .line 355
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 360
    .line 361
    if-eqz v0, :cond_14

    .line 362
    .line 363
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 364
    .line 365
    if-eqz v0, :cond_14

    .line 366
    .line 367
    invoke-static {p0, p1}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/DelegatingNode;Ljava/lang/Object;)Landroidx/compose/ui/node/TraversableNode;

    .line 368
    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_12
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 372
    .line 373
    if-eqz v0, :cond_13

    .line 374
    .line 375
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->release()V

    .line 376
    .line 377
    .line 378
    :cond_13
    iput-object v2, p0, Landroidx/compose/foundation/FocusableNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 379
    .line 380
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 381
    .line 382
    if-eqz v0, :cond_14

    .line 383
    .line 384
    invoke-static {p0, p1}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/DelegatingNode;Ljava/lang/Object;)Landroidx/compose/ui/node/TraversableNode;

    .line 385
    .line 386
    .line 387
    :cond_14
    :goto_9
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 388
    .line 389
    .line 390
    iget-object p1, p0, Landroidx/compose/foundation/FocusableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 391
    .line 392
    if-eqz p1, :cond_17

    .line 393
    .line 394
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 395
    .line 396
    if-eqz p2, :cond_16

    .line 397
    .line 398
    if-eqz v0, :cond_15

    .line 399
    .line 400
    new-instance p2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 401
    .line 402
    invoke-direct {p2, v0}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 406
    .line 407
    .line 408
    iput-object v2, p0, Landroidx/compose/foundation/FocusableNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 409
    .line 410
    :cond_15
    new-instance p2, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 411
    .line 412
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 416
    .line 417
    .line 418
    iput-object p2, p0, Landroidx/compose/foundation/FocusableNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 419
    .line 420
    goto :goto_a

    .line 421
    :cond_16
    if-eqz v0, :cond_17

    .line 422
    .line 423
    new-instance p2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 424
    .line 425
    invoke-direct {p2, v0}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 429
    .line 430
    .line 431
    iput-object v2, p0, Landroidx/compose/foundation/FocusableNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 432
    .line 433
    :cond_17
    :goto_a
    return-object v1

    .line 434
    :pswitch_4
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 435
    .line 436
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 437
    .line 438
    check-cast p0, Landroidx/room/RoomDatabase;

    .line 439
    .line 440
    invoke-static {p0, p2, p1}, Landroidx/compose/ui/unit/DpKt;->compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    return-object p0

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
