.class public final Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/glance/appwidget/GlanceAppWidgetManager;

    .line 14
    .line 15
    sget-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->Companion:Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v2, Landroidx/glance/appwidget/GlanceAppWidgetManager;->dataStoreSingleton:Landroidx/datastore/preferences/core/PreferenceDataStore;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/glance/appwidget/GlanceAppWidgetManager;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->access$getAppManagerDataStore(Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;Landroid/content/Context;)Landroidx/datastore/preferences/core/PreferenceDataStore;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sput-object v2, Landroidx/glance/appwidget/GlanceAppWidgetManager;->dataStoreSingleton:Landroidx/datastore/preferences/core/PreferenceDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v1

    .line 34
    return-object v2

    .line 35
    :goto_1
    monitor-exit v1

    .line 36
    throw v0

    .line 37
    :pswitch_0
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Landroidx/compose/ui/window/PopupLayout;

    .line 40
    .line 41
    invoke-static {v0}, Landroidx/compose/ui/window/PopupLayout;->access$getParentLayoutCoordinates(Landroidx/compose/ui/window/PopupLayout;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached$1()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    move-object v2, v1

    .line 54
    :cond_1
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupLayout;->getPopupContentSize-bOM6tXw()Landroidx/compose/ui/unit/IntSize;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    move v3, v4

    .line 63
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :pswitch_1
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 71
    .line 72
    return-object v0

    .line 73
    :pswitch_2
    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    .line 74
    .line 75
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 78
    .line 79
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 80
    .line 81
    invoke-direct {v1, v0, v3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :pswitch_3
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Landroidx/core/view/MenuHostHelper;

    .line 88
    .line 89
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "input_method"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 107
    .line 108
    return-object v0

    .line 109
    :pswitch_4
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Landroidx/compose/ui/spatial/RectManager;

    .line 112
    .line 113
    iput-object v2, v0, Landroidx/compose/ui/spatial/RectManager;->dispatchToken:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda4;

    .line 114
    .line 115
    const-string v1, "OnPositionedDispatch"

    .line 116
    .line 117
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->dispatchCallbacks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 124
    .line 125
    .line 126
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 127
    .line 128
    return-object v0

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :pswitch_5
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 137
    .line 138
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 141
    .line 142
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 146
    .line 147
    return-object v0

    .line 148
    :pswitch_6
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 151
    .line 152
    iget-object v0, v0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->_retainedValuesStore:Landroidx/camera/view/PreviewView$1;

    .line 153
    .line 154
    iget-object v0, v0, Landroidx/camera/view/PreviewView$1;->this$0:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    .line 157
    .line 158
    iget-boolean v1, v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isDisposed:Z

    .line 159
    .line 160
    if-eqz v1, :cond_3

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    iget-boolean v1, v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isContentComposed:Z

    .line 164
    .line 165
    if-eqz v1, :cond_4

    .line 166
    .line 167
    const-string v1, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    .line 168
    .line 169
    invoke-static {v1}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->purgeUnusedExitedValues()V

    .line 173
    .line 174
    .line 175
    iput-boolean v4, v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isContentComposed:Z

    .line 176
    .line 177
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 178
    .line 179
    return-object v0

    .line 180
    :pswitch_7
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Landroidx/compose/ui/platform/ComposeViewContext;

    .line 183
    .line 184
    const-wide/16 v1, 0x0

    .line 185
    .line 186
    invoke-static {v1, v2, v1, v2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    iget-object v0, v0, Landroidx/compose/ui/platform/ComposeViewContext;->view:Landroid/view/View;

    .line 191
    .line 192
    if-eqz v3, :cond_5

    .line 193
    .line 194
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->calculateWindowSize(Landroid/view/View;)Landroidx/compose/ui/platform/DerivedSize;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    goto :goto_3

    .line 199
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Landroidx/work/Data$Companion;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->toSize-ozmzZPI(J)J

    .line 208
    .line 209
    .line 210
    move-result-wide v3

    .line 211
    invoke-static {v3, v4, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$toDpSize-k-rfVVM(JLandroidx/compose/ui/unit/Density;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    new-instance v0, Landroidx/compose/ui/platform/DerivedSize;

    .line 216
    .line 217
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJ)V

    .line 218
    .line 219
    .line 220
    :goto_3
    return-object v0

    .line 221
    :pswitch_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 222
    .line 223
    return-object v0

    .line 224
    :pswitch_9
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 227
    .line 228
    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 229
    .line 230
    invoke-static {v0, v2}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 231
    .line 232
    .line 233
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 234
    .line 235
    return-object v0

    .line 236
    :pswitch_a
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 245
    .line 246
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui()Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 251
    .line 252
    iget-object v2, v2, Landroidx/collection/MutableObjectList$ObjectListMutableList;->objectList:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 255
    .line 256
    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 257
    .line 258
    iget v5, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 259
    .line 260
    if-eq v5, v2, :cond_b

    .line 261
    .line 262
    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    .line 263
    .line 264
    iget-object v2, v0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 265
    .line 266
    iget-object v0, v0, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 267
    .line 268
    array-length v5, v0

    .line 269
    add-int/lit8 v5, v5, -0x2

    .line 270
    .line 271
    const/4 v6, 0x7

    .line 272
    if-ltz v5, :cond_9

    .line 273
    .line 274
    move v7, v3

    .line 275
    :goto_4
    aget-wide v8, v0, v7

    .line 276
    .line 277
    not-long v10, v8

    .line 278
    shl-long/2addr v10, v6

    .line 279
    and-long/2addr v10, v8

    .line 280
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    and-long/2addr v10, v12

    .line 286
    cmp-long v10, v10, v12

    .line 287
    .line 288
    if-eqz v10, :cond_8

    .line 289
    .line 290
    sub-int v10, v7, v5

    .line 291
    .line 292
    not-int v10, v10

    .line 293
    ushr-int/lit8 v10, v10, 0x1f

    .line 294
    .line 295
    const/16 v11, 0x8

    .line 296
    .line 297
    rsub-int/lit8 v10, v10, 0x8

    .line 298
    .line 299
    move v12, v3

    .line 300
    :goto_5
    if-ge v12, v10, :cond_7

    .line 301
    .line 302
    const-wide/16 v13, 0xff

    .line 303
    .line 304
    and-long/2addr v13, v8

    .line 305
    const-wide/16 v15, 0x80

    .line 306
    .line 307
    cmp-long v13, v13, v15

    .line 308
    .line 309
    if-gez v13, :cond_6

    .line 310
    .line 311
    shl-int/lit8 v13, v7, 0x3

    .line 312
    .line 313
    add-int/2addr v13, v12

    .line 314
    aget-object v13, v2, v13

    .line 315
    .line 316
    check-cast v13, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 317
    .line 318
    iput-boolean v4, v13, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->forceRecompose:Z

    .line 319
    .line 320
    :cond_6
    shr-long/2addr v8, v11

    .line 321
    add-int/lit8 v12, v12, 0x1

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_7
    if-ne v10, v11, :cond_9

    .line 325
    .line 326
    :cond_8
    if-eq v7, v5, :cond_9

    .line 327
    .line 328
    add-int/lit8 v7, v7, 0x1

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_9
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    .line 332
    .line 333
    if-eqz v0, :cond_a

    .line 334
    .line 335
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 336
    .line 337
    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    .line 338
    .line 339
    if-nez v0, :cond_b

    .line 340
    .line 341
    invoke-static {v1, v3, v6}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 342
    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-nez v0, :cond_b

    .line 350
    .line 351
    invoke-static {v1, v3, v6}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 352
    .line 353
    .line 354
    :cond_b
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 355
    .line 356
    return-object v0

    .line 357
    :pswitch_b
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 360
    .line 361
    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 362
    .line 363
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Ljava/lang/Boolean;

    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-nez v1, :cond_c

    .line 374
    .line 375
    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 376
    .line 377
    if-eqz v0, :cond_c

    .line 378
    .line 379
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->deactivate()V

    .line 380
    .line 381
    .line 382
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 383
    .line 384
    return-object v0

    .line 385
    :pswitch_c
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    .line 388
    .line 389
    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getNestedCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    return-object v0

    .line 394
    :pswitch_d
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 397
    .line 398
    iget-object v0, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 399
    .line 400
    return-object v0

    .line 401
    :pswitch_e
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v0, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 404
    .line 405
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 406
    .line 407
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/VectorPainter;->drawInvalidation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    return-object v1

    .line 413
    :pswitch_f
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 416
    .line 417
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 418
    .line 419
    .line 420
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 421
    .line 422
    return-object v0

    .line 423
    :pswitch_10
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 426
    .line 427
    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 428
    .line 429
    invoke-virtual {v1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    sget-object v2, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 434
    .line 435
    if-ne v1, v2, :cond_d

    .line 436
    .line 437
    iget-object v0, v0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 438
    .line 439
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-ne v0, v2, :cond_d

    .line 444
    .line 445
    move v3, v4

    .line 446
    :cond_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    return-object v0

    .line 451
    :pswitch_11
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->this$0:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 454
    .line 455
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 456
    .line 457
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 458
    .line 459
    iput-boolean v4, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->childDelegatesDirty:Z

    .line 460
    .line 461
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 462
    .line 463
    if-eqz v0, :cond_e

    .line 464
    .line 465
    iput-boolean v4, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->childDelegatesDirty:Z

    .line 466
    .line 467
    :cond_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 468
    .line 469
    return-object v0

    .line 470
    nop

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
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
