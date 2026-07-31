.class public final Landroidx/compose/ui/ZIndexNode$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $placeable:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final invoke$androidx$compose$ui$platform$AndroidUiFrameClock$withFrameNanos$2$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$callback$1;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p1, p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunOnFrame:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/ui/window/PopupLayout;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroidx/compose/ui/window/PopupLayout;->setPositionProvider(Landroidx/compose/ui/window/PopupPositionProvider;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/window/PopupLayout;->updatePosition()V

    .line 22
    .line 23
    .line 24
    new-instance p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$4$1$invoke$$inlined$onDispose$1;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    invoke-interface {p1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/platform/ComposeViewContext;

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 55
    .line 56
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Landroidx/compose/ui/platform/WrappedComposition;

    .line 59
    .line 60
    iget-boolean v1, p0, Landroidx/compose/ui/platform/WrappedComposition;->disposed:Z

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    iget-object v1, p1, Landroidx/compose/ui/platform/ComposeViewContext;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 65
    .line 66
    iget-object v3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->view:Landroid/view/View;

    .line 67
    .line 68
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v0, p0, Landroidx/compose/ui/platform/WrappedComposition;->lastContent:Lkotlin/jvm/functions/Function2;

    .line 73
    .line 74
    iget-object v4, p0, Landroidx/compose/ui/platform/WrappedComposition;->addedToLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 75
    .line 76
    if-nez v4, :cond_1

    .line 77
    .line 78
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_0

    .line 95
    .line 96
    new-instance p1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 97
    .line 98
    invoke-direct {p1, v2, p0, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    iput-object v1, p0, Landroidx/compose/ui/platform/WrappedComposition;->addedToLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 106
    .line 107
    invoke-virtual {v1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    .line 112
    .line 113
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 114
    .line 115
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-ltz v1, :cond_2

    .line 122
    .line 123
    iget-object v1, p0, Landroidx/compose/ui/platform/WrappedComposition;->original:Landroidx/compose/runtime/CompositionImpl;

    .line 124
    .line 125
    new-instance v3, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$2;

    .line 126
    .line 127
    invoke-direct {v3, p0, p1, v0}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$2;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Landroidx/compose/ui/platform/ComposeViewContext;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 131
    .line 132
    const p1, -0x66c1ecc8

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/CompositionImpl;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 139
    .line 140
    .line 141
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    .line 145
    .line 146
    iget-object p1, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p1, Landroidx/compose/runtime/BroadcastFrameClock;

    .line 149
    .line 150
    iget-object p1, p1, Landroidx/compose/runtime/BroadcastFrameClock;->onNewAwaiters:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p1, Landroid/view/Choreographer;

    .line 153
    .line 154
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$callback$1;

    .line 157
    .line 158
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 159
    .line 160
    .line 161
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 162
    .line 163
    return-object p0

    .line 164
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/compose/ui/ZIndexNode$measure$1;->invoke$androidx$compose$ui$platform$AndroidUiFrameClock$withFrameNanos$2$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    .line 170
    .line 171
    iget-object p1, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast p1, Landroidx/compose/ui/platform/InputMethodSession;

    .line 174
    .line 175
    iget-object v3, p1, Landroidx/compose/ui/platform/InputMethodSession;->lock:Ljava/lang/Object;

    .line 176
    .line 177
    monitor-enter v3

    .line 178
    :try_start_0
    iput-boolean v2, p1, Landroidx/compose/ui/platform/InputMethodSession;->disposed:Z

    .line 179
    .line 180
    iget-object v0, p1, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    .line 181
    .line 182
    iget-object v2, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 183
    .line 184
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 185
    .line 186
    :goto_1
    const/4 v4, 0x0

    .line 187
    if-ge v1, v0, :cond_4

    .line 188
    .line 189
    aget-object v5, v2, v1

    .line 190
    .line 191
    check-cast v5, Landroidx/compose/ui/node/WeakReference;

    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    check-cast v5, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;

    .line 198
    .line 199
    if-eqz v5, :cond_3

    .line 200
    .line 201
    iget-object v6, v5, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 202
    .line 203
    if-eqz v6, :cond_3

    .line 204
    .line 205
    invoke-virtual {v5, v6}, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->closeDelegate(Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;)V

    .line 206
    .line 207
    .line 208
    iput-object v4, v5, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 209
    .line 210
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    move-object p0, v0

    .line 215
    goto :goto_2

    .line 216
    :cond_4
    iget-object p1, p1, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .line 220
    .line 221
    monitor-exit v3

    .line 222
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 225
    .line 226
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 227
    .line 228
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 229
    .line 230
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputService;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 234
    .line 235
    invoke-interface {p0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->stopInput()V

    .line 236
    .line 237
    .line 238
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 239
    .line 240
    return-object p0

    .line 241
    :goto_2
    monitor-exit v3

    .line 242
    throw p0

    .line 243
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 244
    .line 245
    new-instance p1, Landroidx/compose/ui/platform/InputMethodSession;

    .line 246
    .line 247
    iget-object v0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 250
    .line 251
    new-instance v1, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 252
    .line 253
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 256
    .line 257
    const/16 v2, 0x8

    .line 258
    .line 259
    invoke-direct {v1, v2, p0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/platform/InputMethodSession;-><init>(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;)V

    .line 263
    .line 264
    .line 265
    return-object p1

    .line 266
    :pswitch_6
    check-cast p1, Landroid/view/MotionEvent;

    .line 267
    .line 268
    iget-object v0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-nez v1, :cond_6

    .line 277
    .line 278
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast p0, Lokhttp3/Dispatcher;

    .line 281
    .line 282
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getOnTouchEvent()Lkotlin/jvm/functions/Function1;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 287
    .line 288
    invoke-virtual {v0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Ljava/lang/Boolean;

    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_5

    .line 299
    .line 300
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Dispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_5
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->NotDispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 304
    .line 305
    :goto_3
    iput-object p1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getOnTouchEvent()Lkotlin/jvm/functions/Function1;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    check-cast p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 313
    .line 314
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 318
    .line 319
    return-object p0

    .line 320
    :pswitch_7
    move-object v0, p1

    .line 321
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 322
    .line 323
    iget-object p1, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 324
    .line 325
    move-object v1, p1

    .line 326
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 327
    .line 328
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 331
    .line 332
    iget-object v4, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->layerBlock:Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 333
    .line 334
    const/4 v5, 0x4

    .line 335
    const/4 v2, 0x0

    .line 336
    const/4 v3, 0x0

    .line 337
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    .line 338
    .line 339
    .line 340
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 341
    .line 342
    return-object p0

    .line 343
    :pswitch_8
    move-object v0, p1

    .line 344
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 345
    .line 346
    iget-object p1, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 347
    .line 348
    move-object v1, p1

    .line 349
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 350
    .line 351
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast p0, Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;

    .line 354
    .line 355
    iget-object v4, p0, Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 356
    .line 357
    const/4 v5, 0x4

    .line 358
    const/4 v2, 0x0

    .line 359
    const/4 v3, 0x0

    .line 360
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    .line 361
    .line 362
    .line 363
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 364
    .line 365
    return-object p0

    .line 366
    :pswitch_9
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 367
    .line 368
    iget-object v0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    .line 371
    .line 372
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast p0, Landroidx/compose/animation/ContentTransform;

    .line 375
    .line 376
    iget-object p0, p0, Landroidx/compose/animation/ContentTransform;->targetContentZIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 377
    .line 378
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 379
    .line 380
    .line 381
    move-result p0

    .line 382
    invoke-virtual {p1, v0, v1, v1, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 383
    .line 384
    .line 385
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 386
    .line 387
    return-object p0

    .line 388
    :pswitch_a
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 389
    .line 390
    iget-object v0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->$placeable:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    .line 393
    .line 394
    iget-object p0, p0, Landroidx/compose/ui/ZIndexNode$measure$1;->this$0:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast p0, Landroidx/compose/ui/ZIndexNode;

    .line 397
    .line 398
    iget p0, p0, Landroidx/compose/ui/ZIndexNode;->zIndex:F

    .line 399
    .line 400
    invoke-virtual {p1, v0, v1, v1, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 401
    .line 402
    .line 403
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 404
    .line 405
    return-object p0

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
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
