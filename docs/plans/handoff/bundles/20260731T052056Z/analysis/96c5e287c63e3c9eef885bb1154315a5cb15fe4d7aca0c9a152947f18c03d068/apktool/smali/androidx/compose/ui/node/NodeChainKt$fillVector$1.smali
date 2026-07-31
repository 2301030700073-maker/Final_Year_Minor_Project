.class public final Landroidx/compose/ui/node/NodeChainKt$fillVector$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

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
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Throwable;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 15
    .line 16
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore;

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 32
    .line 33
    new-instance v1, Landroidx/datastore/core/Final;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Landroidx/datastore/core/Final;-><init>(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p1, Landroidx/datastore/core/SingleProcessDataStore;->activeFilesLock:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Landroidx/datastore/core/SingleProcessDataStore;

    .line 49
    .line 50
    monitor-enter p1

    .line 51
    :try_start_0
    sget-object v0, Landroidx/datastore/core/SingleProcessDataStore;->activeFiles:Ljava/util/LinkedHashSet;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/datastore/core/SingleProcessDataStore;->getFile()Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit p1

    .line 65
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move-object p0, v0

    .line 70
    monitor-exit p1

    .line 71
    throw p0

    .line 72
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 73
    .line 74
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 77
    .line 78
    invoke-interface {p0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 79
    .line 80
    .line 81
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    .line 85
    .line 86
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 89
    .line 90
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 99
    .line 100
    const/16 v2, 0x1b

    .line 101
    .line 102
    invoke-direct {v1, p0, p1, v4, v2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 103
    .line 104
    .line 105
    const/4 p0, 0x3

    .line 106
    invoke-static {v0, v4, v4, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 107
    .line 108
    .line 109
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0

    .line 112
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 113
    .line 114
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 119
    .line 120
    .line 121
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 122
    .line 123
    return-object p0

    .line 124
    :pswitch_4
    check-cast p1, Ljava/util/List;

    .line 125
    .line 126
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;

    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Ljava/lang/Float;

    .line 135
    .line 136
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_5
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 145
    .line 146
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Landroidx/compose/ui/semantics/Role;

    .line 149
    .line 150
    iget p0, p0, Landroidx/compose/ui/semantics/Role;->value:I

    .line 151
    .line 152
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 153
    .line 154
    .line 155
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p0

    .line 158
    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    .line 159
    .line 160
    if-eqz p1, :cond_2

    .line 161
    .line 162
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Landroid/os/CancellationSignal;

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    .line 167
    .line 168
    .line 169
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 170
    .line 171
    return-object p0

    .line 172
    :pswitch_7
    check-cast p1, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;

    .line 173
    .line 174
    iget-object v0, p1, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 175
    .line 176
    if-eqz v0, :cond_3

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->closeDelegate(Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;)V

    .line 179
    .line 180
    .line 181
    iput-object v4, p1, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 182
    .line 183
    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast p0, Landroidx/compose/ui/platform/InputMethodSession;

    .line 186
    .line 187
    iget-object v0, p0, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    .line 188
    .line 189
    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 190
    .line 191
    iget v3, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 192
    .line 193
    :goto_1
    if-ge v2, v3, :cond_5

    .line 194
    .line 195
    aget-object v4, v1, v2

    .line 196
    .line 197
    check-cast v4, Landroidx/compose/ui/node/WeakReference;

    .line 198
    .line 199
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_4

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_5
    const/4 v2, -0x1

    .line 210
    :goto_2
    if-ltz v2, :cond_6

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    :cond_6
    iget p1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 216
    .line 217
    if-nez p1, :cond_7

    .line 218
    .line 219
    iget-object p0, p0, Landroidx/compose/ui/platform/InputMethodSession;->onAllConnectionsClosed:Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 220
    .line 221
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->invoke()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 225
    .line 226
    return-object p0

    .line 227
    :pswitch_8
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 228
    .line 229
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 232
    .line 233
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    .line 242
    .line 243
    if-eqz p0, :cond_8

    .line 244
    .line 245
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast p1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 252
    .line 253
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 257
    .line 258
    return-object p0

    .line 259
    :pswitch_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 260
    .line 261
    sget-object v0, Landroidx/compose/ui/platform/GlobalSnapshotManager;->sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 262
    .line 263
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_9

    .line 268
    .line 269
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 272
    .line 273
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    :cond_9
    return-object p1

    .line 277
    :pswitch_a
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 278
    .line 279
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast p0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    .line 282
    .line 283
    new-instance p1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 284
    .line 285
    const/16 v0, 0xb

    .line 286
    .line 287
    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    return-object p1

    .line 291
    :pswitch_b
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 292
    .line 293
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast p0, Landroid/content/res/Resources;

    .line 296
    .line 297
    invoke-static {p1, p0}, Landroidx/compose/ui/platform/TestTagKt;->isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    return-object p0

    .line 306
    :pswitch_c
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 307
    .line 308
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast p0, Landroidx/collection/IntObjectMap;

    .line 311
    .line 312
    iget p1, p1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 313
    .line 314
    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 315
    .line 316
    .line 317
    move-result p0

    .line 318
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    return-object p0

    .line 323
    :pswitch_d
    check-cast p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 324
    .line 325
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;

    .line 328
    .line 329
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 330
    .line 331
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    iget-object v0, v0, Landroidx/compose/ui/layout/InsetsListener;->generation:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-lez v0, :cond_d

    .line 342
    .line 343
    sget-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->WindowInsetsTypeMap:Landroidx/collection/MutableIntObjectMap;

    .line 344
    .line 345
    iput-boolean v3, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->coordinatesAccessed:Z

    .line 346
    .line 347
    iget-object v0, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 348
    .line 349
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    iget-wide v3, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->positionOnScreen:J

    .line 354
    .line 355
    const-wide v5, 0x7fffffff7fffffffL

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-eqz v3, :cond_a

    .line 365
    .line 366
    const-wide/16 v3, 0x0

    .line 367
    .line 368
    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToScreen-MK-Hz9U(J)J

    .line 369
    .line 370
    .line 371
    move-result-wide v3

    .line 372
    invoke-static {v3, v4}, Landroidx/work/Operation$State;->round-k-4lQ0M(J)J

    .line 373
    .line 374
    .line 375
    move-result-wide v3

    .line 376
    iput-wide v3, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->positionOnScreen:J

    .line 377
    .line 378
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 379
    .line 380
    .line 381
    move-result-wide v3

    .line 382
    iput-wide v3, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->size:J

    .line 383
    .line 384
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 389
    .line 390
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->onCoordinatesUsed()V

    .line 391
    .line 392
    .line 393
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 394
    .line 395
    .line 396
    move-result-wide v0

    .line 397
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    iget-object v9, v3, Landroidx/compose/ui/layout/InsetsListener;->insetsValues:Landroidx/collection/MutableScatterMap;

    .line 402
    .line 403
    const/16 v3, 0x20

    .line 404
    .line 405
    shr-long v3, v0, v3

    .line 406
    .line 407
    long-to-int v7, v3

    .line 408
    const-wide v3, 0xffffffffL

    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    and-long/2addr v0, v3

    .line 414
    long-to-int v8, v0

    .line 415
    sget-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->AnimatableInsetsRulers:[Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 416
    .line 417
    array-length v1, v0

    .line 418
    move v10, v2

    .line 419
    :goto_3
    if-ge v10, v1, :cond_c

    .line 420
    .line 421
    aget-object v11, v0, v10

    .line 422
    .line 423
    invoke-virtual {v9, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    move-object v12, v3

    .line 431
    check-cast v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 432
    .line 433
    move-object v3, v11

    .line 434
    check-cast v3, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 435
    .line 436
    iget-object v4, v3, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->current:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 437
    .line 438
    iget-wide v5, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->current:J

    .line 439
    .line 440
    move-object v3, p1

    .line 441
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;Landroidx/compose/ui/layout/RectRulersImpl;JII)V

    .line 442
    .line 443
    .line 444
    iget-object p1, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->isAnimating$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 445
    .line 446
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    check-cast p1, Ljava/lang/Boolean;

    .line 451
    .line 452
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-eqz p1, :cond_b

    .line 457
    .line 458
    iget-object v4, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->source:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 459
    .line 460
    iget-wide v5, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->sourceValueInsets:J

    .line 461
    .line 462
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;Landroidx/compose/ui/layout/RectRulersImpl;JII)V

    .line 463
    .line 464
    .line 465
    iget-object v4, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->target:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 466
    .line 467
    iget-wide v5, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->targetValueInsets:J

    .line 468
    .line 469
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;Landroidx/compose/ui/layout/RectRulersImpl;JII)V

    .line 470
    .line 471
    .line 472
    :cond_b
    check-cast v11, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 473
    .line 474
    iget-object v4, v11, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->maximum:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 475
    .line 476
    iget-wide v5, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->maximum:J

    .line 477
    .line 478
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;Landroidx/compose/ui/layout/RectRulersImpl;JII)V

    .line 479
    .line 480
    .line 481
    add-int/lit8 v10, v10, 0x1

    .line 482
    .line 483
    move-object p1, v3

    .line 484
    goto :goto_3

    .line 485
    :cond_c
    move-object v3, p1

    .line 486
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    iget-object p1, p1, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    .line 491
    .line 492
    invoke-virtual {p1}, Landroidx/collection/MutableObjectList;->isNotEmpty()Z

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    if-eqz v0, :cond_d

    .line 497
    .line 498
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 499
    .line 500
    .line 501
    move-result-object p0

    .line 502
    iget-object p0, p0, Landroidx/compose/ui/layout/InsetsListener;->displayCutoutRulers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 503
    .line 504
    iget-object v0, p1, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 505
    .line 506
    iget p1, p1, Landroidx/collection/MutableObjectList;->_size:I

    .line 507
    .line 508
    :goto_4
    if-ge v2, p1, :cond_d

    .line 509
    .line 510
    aget-object v1, v0, v2

    .line 511
    .line 512
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 513
    .line 514
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    check-cast v4, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 519
    .line 520
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    check-cast v1, Landroid/graphics/Rect;

    .line 525
    .line 526
    invoke-virtual {v4}, Landroidx/compose/ui/layout/RectRulersImpl;->getLeft()Landroidx/compose/ui/layout/VerticalRuler;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 531
    .line 532
    int-to-float v6, v6

    .line 533
    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->provides(Landroidx/compose/ui/layout/VerticalRuler;F)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v4}, Landroidx/compose/ui/layout/RectRulersImpl;->getTop()Landroidx/compose/ui/layout/VerticalRuler;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 541
    .line 542
    int-to-float v6, v6

    .line 543
    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->provides(Landroidx/compose/ui/layout/VerticalRuler;F)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4}, Landroidx/compose/ui/layout/RectRulersImpl;->getRight()Landroidx/compose/ui/layout/VerticalRuler;

    .line 547
    .line 548
    .line 549
    move-result-object v5

    .line 550
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 551
    .line 552
    int-to-float v6, v6

    .line 553
    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->provides(Landroidx/compose/ui/layout/VerticalRuler;F)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v4}, Landroidx/compose/ui/layout/RectRulersImpl;->getBottom()Landroidx/compose/ui/layout/VerticalRuler;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 561
    .line 562
    int-to-float v1, v1

    .line 563
    invoke-virtual {v3, v4, v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->provides(Landroidx/compose/ui/layout/VerticalRuler;F)V

    .line 564
    .line 565
    .line 566
    add-int/lit8 v2, v2, 0x1

    .line 567
    .line 568
    goto :goto_4

    .line 569
    :cond_d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 570
    .line 571
    return-object p0

    .line 572
    :pswitch_e
    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 573
    .line 574
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast p0, Landroidx/compose/ui/focus/FocusDirection;

    .line 577
    .line 578
    iget p0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    .line 579
    .line 580
    invoke-virtual {p1, p0}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    .line 581
    .line 582
    .line 583
    move-result p0

    .line 584
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 585
    .line 586
    .line 587
    move-result-object p0

    .line 588
    return-object p0

    .line 589
    :pswitch_f
    check-cast p1, Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 590
    .line 591
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 594
    .line 595
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getPlaceOrder()I

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    const v1, 0x7fffffff

    .line 600
    .line 601
    .line 602
    if-ne v0, v1, :cond_e

    .line 603
    .line 604
    goto/16 :goto_8

    .line 605
    .line 606
    :cond_e
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    iget-boolean v0, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    .line 611
    .line 612
    if-eqz v0, :cond_f

    .line 613
    .line 614
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->layoutChildren()V

    .line 615
    .line 616
    .line 617
    :cond_f
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLineMap:Ljava/util/HashMap;

    .line 622
    .line 623
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 632
    .line 633
    .line 634
    move-result v1

    .line 635
    if-eqz v1, :cond_10

    .line 636
    .line 637
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    check-cast v1, Ljava/util/Map$Entry;

    .line 642
    .line 643
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    check-cast v2, Landroidx/compose/ui/layout/AlignmentLine;

    .line 648
    .line 649
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    check-cast v1, Ljava/lang/Number;

    .line 654
    .line 655
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    invoke-virtual {p0, v2, v1, v3}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->addAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V

    .line 664
    .line 665
    .line 666
    goto :goto_5

    .line 667
    :cond_10
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 672
    .line 673
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    .line 675
    .line 676
    :goto_6
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 677
    .line 678
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-nez v0, :cond_12

    .line 687
    .line 688
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    check-cast v0, Ljava/lang/Iterable;

    .line 697
    .line 698
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 703
    .line 704
    .line 705
    move-result v1

    .line 706
    if-eqz v1, :cond_11

    .line 707
    .line 708
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    check-cast v1, Landroidx/compose/ui/layout/AlignmentLine;

    .line 713
    .line 714
    invoke-virtual {p0, p1, v1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getPositionFor(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 715
    .line 716
    .line 717
    move-result v2

    .line 718
    invoke-virtual {p0, v1, v2, p1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->addAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V

    .line 719
    .line 720
    .line 721
    goto :goto_7

    .line 722
    :cond_11
    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 723
    .line 724
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    goto :goto_6

    .line 728
    :cond_12
    :goto_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 729
    .line 730
    return-object p0

    .line 731
    :pswitch_10
    check-cast p1, Ljava/lang/Throwable;

    .line 732
    .line 733
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 734
    .line 735
    check-cast p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 736
    .line 737
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 738
    .line 739
    if-eqz v0, :cond_13

    .line 740
    .line 741
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 742
    .line 743
    .line 744
    :cond_13
    iput-object v4, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 745
    .line 746
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 747
    .line 748
    return-object p0

    .line 749
    :pswitch_11
    check-cast p1, Landroid/view/MotionEvent;

    .line 750
    .line 751
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 754
    .line 755
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->onTouchEvent:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 756
    .line 757
    if-eqz p0, :cond_14

    .line 758
    .line 759
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 763
    .line 764
    return-object p0

    .line 765
    :cond_14
    const-string p0, "onTouchEvent"

    .line 766
    .line 767
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    throw v4

    .line 771
    :pswitch_12
    check-cast p1, Landroidx/compose/ui/graphics/vector/VNode;

    .line 772
    .line 773
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 774
    .line 775
    check-cast p0, Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 776
    .line 777
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markTintForVNode(Landroidx/compose/ui/graphics/vector/VNode;)V

    .line 778
    .line 779
    .line 780
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function1;

    .line 781
    .line 782
    if-eqz p0, :cond_15

    .line 783
    .line 784
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    :cond_15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 788
    .line 789
    return-object p0

    .line 790
    :pswitch_13
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 791
    .line 792
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 793
    .line 794
    check-cast p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 795
    .line 796
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 797
    .line 798
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    .line 799
    .line 800
    if-eqz v1, :cond_16

    .line 801
    .line 802
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clip:Z

    .line 803
    .line 804
    if-eqz v1, :cond_16

    .line 805
    .line 806
    if-eqz v0, :cond_16

    .line 807
    .line 808
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 813
    .line 814
    .line 815
    move-result-wide v2

    .line 816
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 817
    .line 818
    .line 819
    move-result-object v4

    .line 820
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 821
    .line 822
    .line 823
    :try_start_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 824
    .line 825
    check-cast v4, Landroidx/appcompat/widget/PopupMenu$1;

    .line 826
    .line 827
    iget-object v4, v4, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 828
    .line 829
    check-cast v4, Lcom/caverock/androidsvg/SVG;

    .line 830
    .line 831
    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    invoke-interface {v4, v0}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/AndroidPath;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawWithChildTracking(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 839
    .line 840
    .line 841
    invoke-static {v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 842
    .line 843
    .line 844
    goto :goto_9

    .line 845
    :catchall_1
    move-exception v0

    .line 846
    move-object p0, v0

    .line 847
    invoke-static {v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 848
    .line 849
    .line 850
    throw p0

    .line 851
    :cond_16
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawWithChildTracking(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 852
    .line 853
    .line 854
    :goto_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 855
    .line 856
    return-object p0

    .line 857
    :pswitch_14
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 858
    .line 859
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 862
    .line 863
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 864
    .line 865
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleX(F)V

    .line 866
    .line 867
    .line 868
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 869
    .line 870
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    .line 871
    .line 872
    .line 873
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 874
    .line 875
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTranslationY(F)V

    .line 879
    .line 880
    .line 881
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 882
    .line 883
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShadowElevation(F)V

    .line 884
    .line 885
    .line 886
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 887
    .line 888
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    .line 889
    .line 890
    cmpg-float v1, v1, v0

    .line 891
    .line 892
    if-nez v1, :cond_17

    .line 893
    .line 894
    goto :goto_a

    .line 895
    :cond_17
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 896
    .line 897
    or-int/lit16 v1, v1, 0x400

    .line 898
    .line 899
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 900
    .line 901
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    .line 902
    .line 903
    :goto_a
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 904
    .line 905
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    .line 906
    .line 907
    cmpg-float v1, v1, v0

    .line 908
    .line 909
    if-nez v1, :cond_18

    .line 910
    .line 911
    goto :goto_b

    .line 912
    :cond_18
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 913
    .line 914
    or-int/lit16 v1, v1, 0x800

    .line 915
    .line 916
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 917
    .line 918
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    .line 919
    .line 920
    :goto_b
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 921
    .line 922
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    .line 923
    .line 924
    .line 925
    iget-object v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 926
    .line 927
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 928
    .line 929
    .line 930
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 931
    .line 932
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    .line 933
    .line 934
    .line 935
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 936
    .line 937
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAmbientShadowColor-8_81llA(J)V

    .line 938
    .line 939
    .line 940
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 941
    .line 942
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSpotShadowColor-8_81llA(J)V

    .line 943
    .line 944
    .line 945
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->blendMode:I

    .line 946
    .line 947
    iget v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->blendMode:I

    .line 948
    .line 949
    if-ne v0, p0, :cond_19

    .line 950
    .line 951
    goto :goto_c

    .line 952
    :cond_19
    iget v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 953
    .line 954
    const/high16 v1, 0x80000

    .line 955
    .line 956
    or-int/2addr v0, v1

    .line 957
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 958
    .line 959
    iput p0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->blendMode:I

    .line 960
    .line 961
    :goto_c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 962
    .line 963
    return-object p0

    .line 964
    :pswitch_15
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 965
    .line 966
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 967
    .line 968
    check-cast p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;

    .line 969
    .line 970
    iget v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->elevation:F

    .line 971
    .line 972
    iget-object v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    .line 973
    .line 974
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 975
    .line 976
    .line 977
    move-result v1

    .line 978
    mul-float/2addr v1, v0

    .line 979
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShadowElevation(F)V

    .line 980
    .line 981
    .line 982
    iget-object v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 983
    .line 984
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 985
    .line 986
    .line 987
    iget-boolean v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->clip:Z

    .line 988
    .line 989
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    .line 990
    .line 991
    .line 992
    iget-wide v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->ambientColor:J

    .line 993
    .line 994
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAmbientShadowColor-8_81llA(J)V

    .line 995
    .line 996
    .line 997
    iget-wide v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->spotColor:J

    .line 998
    .line 999
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSpotShadowColor-8_81llA(J)V

    .line 1000
    .line 1001
    .line 1002
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1003
    .line 1004
    return-object p0

    .line 1005
    :pswitch_16
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 1006
    .line 1007
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 1008
    .line 1009
    check-cast p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 1010
    .line 1011
    invoke-virtual {p0, p1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 1015
    .line 1016
    .line 1017
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1018
    .line 1019
    return-object p0

    .line 1020
    :pswitch_17
    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 1021
    .line 1022
    iget-object v0, p1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 1023
    .line 1024
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 1025
    .line 1026
    if-nez v0, :cond_1a

    .line 1027
    .line 1028
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->SkipSubtreeAndContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 1029
    .line 1030
    goto :goto_e

    .line 1031
    :cond_1a
    iget-object v0, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->thisDragAndDropTarget:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 1032
    .line 1033
    if-eqz v0, :cond_1c

    .line 1034
    .line 1035
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 1036
    .line 1037
    check-cast p0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 1038
    .line 1039
    new-instance v1, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 1040
    .line 1041
    const/4 v2, 0x5

    .line 1042
    invoke-direct {v1, v2, p0}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object p0

    .line 1049
    sget-object v2, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 1050
    .line 1051
    if-eq p0, v2, :cond_1b

    .line 1052
    .line 1053
    goto :goto_d

    .line 1054
    :cond_1b
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->traverseDescendants(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V

    .line 1055
    .line 1056
    .line 1057
    :cond_1c
    :goto_d
    iput-object v4, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->thisDragAndDropTarget:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 1058
    .line 1059
    iput-object v4, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->lastChildDragAndDropModifierNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 1060
    .line 1061
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 1062
    .line 1063
    :goto_e
    return-object p0

    .line 1064
    :pswitch_18
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 1065
    .line 1066
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 1067
    .line 1068
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1069
    .line 1070
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object p0

    .line 1074
    check-cast p0, Ljava/lang/Number;

    .line 1075
    .line 1076
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 1077
    .line 1078
    .line 1079
    move-result p0

    .line 1080
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    .line 1081
    .line 1082
    .line 1083
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1084
    .line 1085
    return-object p0

    .line 1086
    :pswitch_19
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 1087
    .line 1088
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 1089
    .line 1090
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1091
    .line 1092
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object p0

    .line 1096
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result p0

    .line 1100
    xor-int/2addr p0, v3

    .line 1101
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1102
    .line 1103
    .line 1104
    move-result-object p0

    .line 1105
    return-object p0

    .line 1106
    :pswitch_1a
    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    .line 1107
    .line 1108
    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    .line 1109
    .line 1110
    cmpg-float v2, v0, v1

    .line 1111
    .line 1112
    if-gez v2, :cond_1d

    .line 1113
    .line 1114
    move v0, v1

    .line 1115
    :cond_1d
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1116
    .line 1117
    cmpl-float v3, v0, v2

    .line 1118
    .line 1119
    if-lez v3, :cond_1e

    .line 1120
    .line 1121
    move v0, v2

    .line 1122
    :cond_1e
    iget v3, p1, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    .line 1123
    .line 1124
    const/high16 v4, -0x41000000    # -0.5f

    .line 1125
    .line 1126
    cmpg-float v5, v3, v4

    .line 1127
    .line 1128
    if-gez v5, :cond_1f

    .line 1129
    .line 1130
    move v3, v4

    .line 1131
    :cond_1f
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1132
    .line 1133
    cmpl-float v6, v3, v5

    .line 1134
    .line 1135
    if-lez v6, :cond_20

    .line 1136
    .line 1137
    move v3, v5

    .line 1138
    :cond_20
    iget v6, p1, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    .line 1139
    .line 1140
    cmpg-float v7, v6, v4

    .line 1141
    .line 1142
    if-gez v7, :cond_21

    .line 1143
    .line 1144
    goto :goto_f

    .line 1145
    :cond_21
    move v4, v6

    .line 1146
    :goto_f
    cmpl-float v6, v4, v5

    .line 1147
    .line 1148
    if-lez v6, :cond_22

    .line 1149
    .line 1150
    goto :goto_10

    .line 1151
    :cond_22
    move v5, v4

    .line 1152
    :goto_10
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    .line 1153
    .line 1154
    cmpg-float v4, p1, v1

    .line 1155
    .line 1156
    if-gez v4, :cond_23

    .line 1157
    .line 1158
    goto :goto_11

    .line 1159
    :cond_23
    move v1, p1

    .line 1160
    :goto_11
    cmpl-float p1, v1, v2

    .line 1161
    .line 1162
    if-lez p1, :cond_24

    .line 1163
    .line 1164
    goto :goto_12

    .line 1165
    :cond_24
    move v2, v1

    .line 1166
    :goto_12
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/Oklab;

    .line 1167
    .line 1168
    invoke-static {v0, v3, v5, v2, p1}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 1169
    .line 1170
    .line 1171
    move-result-wide v0

    .line 1172
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 1173
    .line 1174
    check-cast p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 1175
    .line 1176
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 1177
    .line 1178
    .line 1179
    move-result-wide p0

    .line 1180
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 1181
    .line 1182
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 1183
    .line 1184
    .line 1185
    return-object v0

    .line 1186
    :pswitch_1b
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 1187
    .line 1188
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result p0

    .line 1192
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1193
    .line 1194
    .line 1195
    move-result-object p0

    .line 1196
    return-object p0

    .line 1197
    :pswitch_1c
    check-cast p1, Landroidx/compose/ui/Modifier$Element;

    .line 1198
    .line 1199
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Ljava/lang/Object;

    .line 1200
    .line 1201
    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 1202
    .line 1203
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1204
    .line 1205
    .line 1206
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1207
    .line 1208
    return-object p0

    .line 1209
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
