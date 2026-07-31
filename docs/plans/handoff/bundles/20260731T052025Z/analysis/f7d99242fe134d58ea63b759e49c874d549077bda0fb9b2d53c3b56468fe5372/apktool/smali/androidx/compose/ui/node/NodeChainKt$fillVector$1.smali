.class public final Landroidx/compose/ui/node/NodeChainKt$fillVector$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $result:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Ljava/lang/Throwable;

    .line 15
    .line 16
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 17
    .line 18
    invoke-interface {p0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 19
    .line 20
    .line 21
    return-object v5

    .line 22
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    .line 23
    .line 24
    check-cast p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 25
    .line 26
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    invoke-direct {v1, p0, p1, v2, v3}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 42
    .line 43
    .line 44
    :cond_0
    return-object v5

    .line 45
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 46
    .line 47
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 50
    .line 51
    .line 52
    return-object v5

    .line 53
    :pswitch_2
    check-cast p1, Ljava/util/List;

    .line 54
    .line 55
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Float;

    .line 62
    .line 63
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 72
    .line 73
    check-cast p0, Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v5

    .line 79
    :pswitch_4
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 80
    .line 81
    check-cast p0, Landroidx/compose/ui/semantics/Role;

    .line 82
    .line 83
    iget p0, p0, Landroidx/compose/ui/semantics/Role;->value:I

    .line 84
    .line 85
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 86
    .line 87
    .line 88
    return-object v5

    .line 89
    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    check-cast p0, Landroid/os/CancellationSignal;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-object v5

    .line 99
    :pswitch_6
    check-cast p1, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;

    .line 100
    .line 101
    iget-object v0, p1, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 102
    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->closeDelegate(Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;)V

    .line 106
    .line 107
    .line 108
    iput-object v2, p1, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 109
    .line 110
    :cond_2
    check-cast p0, Landroidx/compose/ui/platform/InputMethodSession;

    .line 111
    .line 112
    iget-object v0, p0, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    .line 113
    .line 114
    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 115
    .line 116
    iget v2, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 117
    .line 118
    :goto_0
    if-ge v3, v2, :cond_4

    .line 119
    .line 120
    aget-object v4, v1, v3

    .line 121
    .line 122
    check-cast v4, Landroidx/compose/ui/node/WeakReference;

    .line 123
    .line 124
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_3

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_4
    const/4 v3, -0x1

    .line 135
    :goto_1
    if-ltz v3, :cond_5

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_5
    iget p1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 141
    .line 142
    if-nez p1, :cond_6

    .line 143
    .line 144
    iget-object p0, p0, Landroidx/compose/ui/platform/InputMethodSession;->onAllConnectionsClosed:Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->invoke()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_6
    return-object v5

    .line 150
    :pswitch_7
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 151
    .line 152
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 153
    .line 154
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    .line 163
    .line 164
    if-eqz p0, :cond_7

    .line 165
    .line 166
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p1, p1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 173
    .line 174
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :cond_7
    return-object v5

    .line 178
    :pswitch_8
    sget-object p1, Landroidx/compose/ui/platform/GlobalSnapshotManager;->sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 179
    .line 180
    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_8

    .line 185
    .line 186
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 187
    .line 188
    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    :cond_8
    return-object v5

    .line 192
    :pswitch_9
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 193
    .line 194
    check-cast p0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    .line 195
    .line 196
    new-instance p1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 197
    .line 198
    const/16 v0, 0xc

    .line 199
    .line 200
    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return-object p1

    .line 204
    :pswitch_a
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 205
    .line 206
    check-cast p0, Landroid/content/res/Resources;

    .line 207
    .line 208
    invoke-static {p1, p0}, Landroidx/compose/ui/platform/TestTagKt;->access$isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    return-object p0

    .line 217
    :pswitch_b
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 218
    .line 219
    check-cast p0, Landroidx/collection/IntObjectMap;

    .line 220
    .line 221
    iget p1, p1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 222
    .line 223
    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    return-object p0

    .line 232
    :pswitch_c
    move-object v6, p1

    .line 233
    check-cast v6, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 234
    .line 235
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;

    .line 236
    .line 237
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 238
    .line 239
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iget-object p1, p1, Landroidx/compose/ui/layout/InsetsListener;->generation:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 244
    .line 245
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-lez p1, :cond_c

    .line 250
    .line 251
    sget-object p1, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->WindowInsetsTypeMap:Landroidx/collection/MutableIntObjectMap;

    .line 252
    .line 253
    iput-boolean v4, v6, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->coordinatesAccessed:Z

    .line 254
    .line 255
    iget-object p1, v6, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 256
    .line 257
    invoke-virtual {p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iget-wide v1, v6, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->positionOnScreen:J

    .line 262
    .line 263
    const-wide v7, 0x7fffffff7fffffffL

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_9

    .line 273
    .line 274
    const-wide/16 v1, 0x0

    .line 275
    .line 276
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToScreen-MK-Hz9U(J)J

    .line 277
    .line 278
    .line 279
    move-result-wide v1

    .line 280
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v1

    .line 284
    iput-wide v1, v6, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->positionOnScreen:J

    .line 285
    .line 286
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 287
    .line 288
    .line 289
    move-result-wide v1

    .line 290
    iput-wide v1, v6, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->size:J

    .line 291
    .line 292
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 297
    .line 298
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->onCoordinatesUsed()V

    .line 299
    .line 300
    .line 301
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 302
    .line 303
    .line 304
    move-result-wide v0

    .line 305
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object p1, p1, Landroidx/compose/ui/layout/InsetsListener;->insetsValues:Landroidx/collection/MutableScatterMap;

    .line 310
    .line 311
    const/16 v2, 0x20

    .line 312
    .line 313
    shr-long v7, v0, v2

    .line 314
    .line 315
    long-to-int v10, v7

    .line 316
    const-wide v7, 0xffffffffL

    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    and-long/2addr v0, v7

    .line 322
    long-to-int v11, v0

    .line 323
    sget-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->AnimatableInsetsRulers:[Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 324
    .line 325
    array-length v1, v0

    .line 326
    move v2, v3

    .line 327
    :goto_2
    if-ge v2, v1, :cond_b

    .line 328
    .line 329
    aget-object v4, v0, v2

    .line 330
    .line 331
    invoke-virtual {p1, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    move-object v12, v7

    .line 339
    check-cast v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 340
    .line 341
    move-object v7, v4

    .line 342
    check-cast v7, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 343
    .line 344
    iget-object v7, v7, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->current:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 345
    .line 346
    iget-wide v8, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->current:J

    .line 347
    .line 348
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;Landroidx/compose/ui/layout/RectRulersImpl;JII)V

    .line 349
    .line 350
    .line 351
    iget-object v7, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->isAnimating$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 352
    .line 353
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    check-cast v7, Ljava/lang/Boolean;

    .line 358
    .line 359
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 360
    .line 361
    .line 362
    move-result v7

    .line 363
    if-eqz v7, :cond_a

    .line 364
    .line 365
    iget-object v7, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->source:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 366
    .line 367
    iget-wide v8, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->sourceValueInsets:J

    .line 368
    .line 369
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;Landroidx/compose/ui/layout/RectRulersImpl;JII)V

    .line 370
    .line 371
    .line 372
    iget-object v7, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->target:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 373
    .line 374
    iget-wide v8, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->targetValueInsets:J

    .line 375
    .line 376
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;Landroidx/compose/ui/layout/RectRulersImpl;JII)V

    .line 377
    .line 378
    .line 379
    :cond_a
    check-cast v4, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 380
    .line 381
    iget-object v7, v4, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->maximum:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 382
    .line 383
    iget-wide v8, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->maximum:J

    .line 384
    .line 385
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;Landroidx/compose/ui/layout/RectRulersImpl;JII)V

    .line 386
    .line 387
    .line 388
    add-int/lit8 v2, v2, 0x1

    .line 389
    .line 390
    goto :goto_2

    .line 391
    :cond_b
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    iget-object p1, p1, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    .line 396
    .line 397
    invoke-virtual {p1}, Landroidx/collection/MutableObjectList;->isNotEmpty()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_c

    .line 402
    .line 403
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    iget-object p0, p0, Landroidx/compose/ui/layout/InsetsListener;->displayCutoutRulers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 408
    .line 409
    iget-object v0, p1, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 410
    .line 411
    iget p1, p1, Landroidx/collection/MutableObjectList;->_size:I

    .line 412
    .line 413
    :goto_3
    if-ge v3, p1, :cond_c

    .line 414
    .line 415
    aget-object v1, v0, v3

    .line 416
    .line 417
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 418
    .line 419
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    check-cast v2, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 424
    .line 425
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    check-cast v1, Landroid/graphics/Rect;

    .line 430
    .line 431
    invoke-virtual {v2}, Landroidx/compose/ui/layout/RectRulersImpl;->getLeft()Landroidx/compose/ui/layout/VerticalRuler;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    iget v7, v1, Landroid/graphics/Rect;->left:I

    .line 436
    .line 437
    int-to-float v7, v7

    .line 438
    invoke-virtual {v6, v4, v7}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->provides(Landroidx/compose/ui/layout/VerticalRuler;F)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2}, Landroidx/compose/ui/layout/RectRulersImpl;->getTop()Landroidx/compose/ui/layout/VerticalRuler;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 446
    .line 447
    int-to-float v7, v7

    .line 448
    invoke-virtual {v6, v4, v7}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->provides(Landroidx/compose/ui/layout/VerticalRuler;F)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2}, Landroidx/compose/ui/layout/RectRulersImpl;->getRight()Landroidx/compose/ui/layout/VerticalRuler;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 456
    .line 457
    int-to-float v7, v7

    .line 458
    invoke-virtual {v6, v4, v7}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->provides(Landroidx/compose/ui/layout/VerticalRuler;F)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2}, Landroidx/compose/ui/layout/RectRulersImpl;->getBottom()Landroidx/compose/ui/layout/VerticalRuler;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 466
    .line 467
    int-to-float v1, v1

    .line 468
    invoke-virtual {v6, v2, v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->provides(Landroidx/compose/ui/layout/VerticalRuler;F)V

    .line 469
    .line 470
    .line 471
    add-int/lit8 v3, v3, 0x1

    .line 472
    .line 473
    goto :goto_3

    .line 474
    :cond_c
    return-object v5

    .line 475
    :pswitch_d
    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 476
    .line 477
    check-cast p0, Landroidx/compose/ui/focus/FocusDirection;

    .line 478
    .line 479
    iget p0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    .line 480
    .line 481
    invoke-virtual {p1, p0}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    .line 482
    .line 483
    .line 484
    move-result p0

    .line 485
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 486
    .line 487
    .line 488
    move-result-object p0

    .line 489
    return-object p0

    .line 490
    :pswitch_e
    check-cast p1, Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 491
    .line 492
    check-cast p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 493
    .line 494
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getPlaceOrder()I

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    const v1, 0x7fffffff

    .line 499
    .line 500
    .line 501
    if-ne v0, v1, :cond_d

    .line 502
    .line 503
    goto/16 :goto_7

    .line 504
    .line 505
    :cond_d
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    iget-boolean v0, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    .line 510
    .line 511
    if-eqz v0, :cond_e

    .line 512
    .line 513
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->layoutChildren()V

    .line 514
    .line 515
    .line 516
    :cond_e
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLineMap:Ljava/util/HashMap;

    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-eqz v1, :cond_f

    .line 535
    .line 536
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    check-cast v1, Ljava/util/Map$Entry;

    .line 541
    .line 542
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    check-cast v2, Landroidx/compose/ui/layout/AlignmentLine;

    .line 547
    .line 548
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    check-cast v1, Ljava/lang/Number;

    .line 553
    .line 554
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-static {p0, v2, v1, v3}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->access$addAlignmentLine(Landroidx/compose/ui/node/LookaheadAlignmentLines;Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V

    .line 563
    .line 564
    .line 565
    goto :goto_4

    .line 566
    :cond_f
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 571
    .line 572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    :goto_5
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 576
    .line 577
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-nez v0, :cond_11

    .line 586
    .line 587
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    check-cast v0, Ljava/lang/Iterable;

    .line 596
    .line 597
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 602
    .line 603
    .line 604
    move-result v1

    .line 605
    if-eqz v1, :cond_10

    .line 606
    .line 607
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    check-cast v1, Landroidx/compose/ui/layout/AlignmentLine;

    .line 612
    .line 613
    invoke-virtual {p0, p1, v1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getPositionFor(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    invoke-static {p0, v1, v2, p1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->access$addAlignmentLine(Landroidx/compose/ui/node/LookaheadAlignmentLines;Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V

    .line 618
    .line 619
    .line 620
    goto :goto_6

    .line 621
    :cond_10
    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 622
    .line 623
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    goto :goto_5

    .line 627
    :cond_11
    :goto_7
    return-object v5

    .line 628
    :pswitch_f
    check-cast p1, Ljava/lang/Throwable;

    .line 629
    .line 630
    check-cast p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 631
    .line 632
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 633
    .line 634
    if-eqz v0, :cond_12

    .line 635
    .line 636
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 637
    .line 638
    .line 639
    :cond_12
    iput-object v2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 640
    .line 641
    return-object v5

    .line 642
    :pswitch_10
    check-cast p1, Landroid/view/MotionEvent;

    .line 643
    .line 644
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 645
    .line 646
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getOnTouchEvent()Lkotlin/jvm/functions/Function1;

    .line 647
    .line 648
    .line 649
    move-result-object p0

    .line 650
    check-cast p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 651
    .line 652
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    return-object v5

    .line 656
    :pswitch_11
    check-cast p1, Landroidx/compose/ui/graphics/vector/VNode;

    .line 657
    .line 658
    check-cast p0, Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 659
    .line 660
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markTintForVNode(Landroidx/compose/ui/graphics/vector/VNode;)V

    .line 661
    .line 662
    .line 663
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function1;

    .line 664
    .line 665
    if-eqz p0, :cond_13

    .line 666
    .line 667
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    :cond_13
    return-object v5

    .line 671
    :pswitch_12
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 672
    .line 673
    check-cast p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 674
    .line 675
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 676
    .line 677
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    .line 678
    .line 679
    if-eqz v1, :cond_14

    .line 680
    .line 681
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clip:Z

    .line 682
    .line 683
    if-eqz v1, :cond_14

    .line 684
    .line 685
    if-eqz v0, :cond_14

    .line 686
    .line 687
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 692
    .line 693
    .line 694
    move-result-wide v2

    .line 695
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 696
    .line 697
    .line 698
    move-result-object v4

    .line 699
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 700
    .line 701
    .line 702
    :try_start_0
    iget-object v4, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 703
    .line 704
    check-cast v4, Landroidx/camera/view/PreviewView$1;

    .line 705
    .line 706
    iget-object v4, v4, Landroidx/camera/view/PreviewView$1;->this$0:Ljava/lang/Object;

    .line 707
    .line 708
    check-cast v4, Landroidx/core/view/MenuHostHelper;

    .line 709
    .line 710
    invoke-virtual {v4}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    invoke-interface {v4, v0}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/AndroidPath;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawWithChildTracking(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    .line 719
    .line 720
    invoke-static {v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 721
    .line 722
    .line 723
    goto :goto_8

    .line 724
    :catchall_0
    move-exception v0

    .line 725
    move-object p0, v0

    .line 726
    invoke-static {v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 727
    .line 728
    .line 729
    throw p0

    .line 730
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawWithChildTracking(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 731
    .line 732
    .line 733
    :goto_8
    return-object v5

    .line 734
    :pswitch_13
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 735
    .line 736
    check-cast p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 737
    .line 738
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 739
    .line 740
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleX(F)V

    .line 741
    .line 742
    .line 743
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 744
    .line 745
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    .line 746
    .line 747
    .line 748
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 749
    .line 750
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTranslationY(F)V

    .line 754
    .line 755
    .line 756
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 757
    .line 758
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShadowElevation(F)V

    .line 759
    .line 760
    .line 761
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 762
    .line 763
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    .line 764
    .line 765
    cmpg-float v1, v1, v0

    .line 766
    .line 767
    if-nez v1, :cond_15

    .line 768
    .line 769
    goto :goto_9

    .line 770
    :cond_15
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 771
    .line 772
    or-int/lit16 v1, v1, 0x400

    .line 773
    .line 774
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 775
    .line 776
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    .line 777
    .line 778
    :goto_9
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 779
    .line 780
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    .line 781
    .line 782
    cmpg-float v1, v1, v0

    .line 783
    .line 784
    if-nez v1, :cond_16

    .line 785
    .line 786
    goto :goto_a

    .line 787
    :cond_16
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 788
    .line 789
    or-int/lit16 v1, v1, 0x800

    .line 790
    .line 791
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 792
    .line 793
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    .line 794
    .line 795
    :goto_a
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 796
    .line 797
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    .line 798
    .line 799
    .line 800
    iget-object v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 801
    .line 802
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 803
    .line 804
    .line 805
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 806
    .line 807
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    .line 808
    .line 809
    .line 810
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 811
    .line 812
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAmbientShadowColor-8_81llA(J)V

    .line 813
    .line 814
    .line 815
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 816
    .line 817
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSpotShadowColor-8_81llA(J)V

    .line 818
    .line 819
    .line 820
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->blendMode:I

    .line 821
    .line 822
    iget v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->blendMode:I

    .line 823
    .line 824
    if-ne v0, p0, :cond_17

    .line 825
    .line 826
    goto :goto_b

    .line 827
    :cond_17
    iget v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 828
    .line 829
    const/high16 v1, 0x80000

    .line 830
    .line 831
    or-int/2addr v0, v1

    .line 832
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 833
    .line 834
    iput p0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->blendMode:I

    .line 835
    .line 836
    :goto_b
    return-object v5

    .line 837
    :pswitch_14
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 838
    .line 839
    check-cast p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;

    .line 840
    .line 841
    iget-object v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    .line 842
    .line 843
    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    const/high16 v1, 0x40400000    # 3.0f

    .line 848
    .line 849
    mul-float/2addr v0, v1

    .line 850
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShadowElevation(F)V

    .line 851
    .line 852
    .line 853
    iget-object v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 854
    .line 855
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 856
    .line 857
    .line 858
    iget-boolean v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->clip:Z

    .line 859
    .line 860
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    .line 861
    .line 862
    .line 863
    iget-wide v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->ambientColor:J

    .line 864
    .line 865
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAmbientShadowColor-8_81llA(J)V

    .line 866
    .line 867
    .line 868
    iget-wide v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->spotColor:J

    .line 869
    .line 870
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSpotShadowColor-8_81llA(J)V

    .line 871
    .line 872
    .line 873
    return-object v5

    .line 874
    :pswitch_15
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 875
    .line 876
    check-cast p0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 877
    .line 878
    invoke-virtual {p0, p1}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 882
    .line 883
    .line 884
    return-object v5

    .line 885
    :pswitch_16
    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 886
    .line 887
    iget-object v0, p1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 888
    .line 889
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 890
    .line 891
    if-nez v0, :cond_18

    .line 892
    .line 893
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->SkipSubtreeAndContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 894
    .line 895
    goto :goto_d

    .line 896
    :cond_18
    iget-object v0, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->thisDragAndDropTarget:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 897
    .line 898
    sget-object v1, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 899
    .line 900
    if-eqz v0, :cond_1a

    .line 901
    .line 902
    check-cast p0, Landroidx/camera/view/PreviewView$1;

    .line 903
    .line 904
    new-instance v3, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 905
    .line 906
    const/4 v4, 0x5

    .line 907
    invoke-direct {v3, v4, p0}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object p0

    .line 914
    if-eq p0, v1, :cond_19

    .line 915
    .line 916
    goto :goto_c

    .line 917
    :cond_19
    invoke-static {v0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->traverseDescendants(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V

    .line 918
    .line 919
    .line 920
    :cond_1a
    :goto_c
    iput-object v2, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->thisDragAndDropTarget:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 921
    .line 922
    iput-object v2, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->lastChildDragAndDropModifierNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 923
    .line 924
    move-object p0, v1

    .line 925
    :goto_d
    return-object p0

    .line 926
    :pswitch_17
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 927
    .line 928
    check-cast p0, Landroidx/compose/runtime/State;

    .line 929
    .line 930
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object p0

    .line 934
    check-cast p0, Ljava/lang/Number;

    .line 935
    .line 936
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 937
    .line 938
    .line 939
    move-result p0

    .line 940
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    .line 941
    .line 942
    .line 943
    return-object v5

    .line 944
    :pswitch_18
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 945
    .line 946
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 947
    .line 948
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object p0

    .line 952
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 953
    .line 954
    .line 955
    move-result p0

    .line 956
    xor-int/2addr p0, v4

    .line 957
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 958
    .line 959
    .line 960
    move-result-object p0

    .line 961
    return-object p0

    .line 962
    :pswitch_19
    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    .line 963
    .line 964
    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    .line 965
    .line 966
    cmpg-float v2, v0, v1

    .line 967
    .line 968
    if-gez v2, :cond_1b

    .line 969
    .line 970
    move v0, v1

    .line 971
    :cond_1b
    const/high16 v2, 0x3f800000    # 1.0f

    .line 972
    .line 973
    cmpl-float v3, v0, v2

    .line 974
    .line 975
    if-lez v3, :cond_1c

    .line 976
    .line 977
    move v0, v2

    .line 978
    :cond_1c
    iget v3, p1, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    .line 979
    .line 980
    const/high16 v4, -0x41000000    # -0.5f

    .line 981
    .line 982
    cmpg-float v5, v3, v4

    .line 983
    .line 984
    if-gez v5, :cond_1d

    .line 985
    .line 986
    move v3, v4

    .line 987
    :cond_1d
    const/high16 v5, 0x3f000000    # 0.5f

    .line 988
    .line 989
    cmpl-float v6, v3, v5

    .line 990
    .line 991
    if-lez v6, :cond_1e

    .line 992
    .line 993
    move v3, v5

    .line 994
    :cond_1e
    iget v6, p1, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    .line 995
    .line 996
    cmpg-float v7, v6, v4

    .line 997
    .line 998
    if-gez v7, :cond_1f

    .line 999
    .line 1000
    goto :goto_e

    .line 1001
    :cond_1f
    move v4, v6

    .line 1002
    :goto_e
    cmpl-float v6, v4, v5

    .line 1003
    .line 1004
    if-lez v6, :cond_20

    .line 1005
    .line 1006
    goto :goto_f

    .line 1007
    :cond_20
    move v5, v4

    .line 1008
    :goto_f
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    .line 1009
    .line 1010
    cmpg-float v4, p1, v1

    .line 1011
    .line 1012
    if-gez v4, :cond_21

    .line 1013
    .line 1014
    goto :goto_10

    .line 1015
    :cond_21
    move v1, p1

    .line 1016
    :goto_10
    cmpl-float p1, v1, v2

    .line 1017
    .line 1018
    if-lez p1, :cond_22

    .line 1019
    .line 1020
    goto :goto_11

    .line 1021
    :cond_22
    move v2, v1

    .line 1022
    :goto_11
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/Oklab;

    .line 1023
    .line 1024
    invoke-static {v0, v3, v5, v2, p1}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 1025
    .line 1026
    .line 1027
    move-result-wide v0

    .line 1028
    check-cast p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 1029
    .line 1030
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide p0

    .line 1034
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 1035
    .line 1036
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 1037
    .line 1038
    .line 1039
    return-object v0

    .line 1040
    :pswitch_1a
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result p0

    .line 1044
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1045
    .line 1046
    .line 1047
    move-result-object p0

    .line 1048
    return-object p0

    .line 1049
    :pswitch_1b
    check-cast p1, Landroidx/compose/ui/Modifier$Element;

    .line 1050
    .line 1051
    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 1052
    .line 1053
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1054
    .line 1055
    .line 1056
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1057
    .line 1058
    return-object p0

    .line 1059
    :pswitch_data_0
    .packed-switch 0x0
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
