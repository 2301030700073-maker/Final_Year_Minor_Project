.class public final synthetic Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;)V
    .locals 0

    .line 1
    const/4 p2, 0x3

    .line 2
    iput p2, p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "CXCP"

    .line 4
    .line 5
    const-class v2, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 18
    .line 19
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 20
    .line 21
    .line 22
    return-object v6

    .line 23
    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    .line 24
    .line 25
    iput-object v5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 26
    .line 27
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    .line 40
    .line 41
    iput-object v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 42
    .line 43
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 56
    .line 57
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    .line 58
    .line 59
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->view:Landroid/view/View;

    .line 60
    .line 61
    invoke-direct {v0, p0, v4}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :pswitch_3
    check-cast p0, Landroidx/cardview/widget/CardView$1;

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v0, "input_method"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    .line 88
    .line 89
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 90
    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->collectTextContextMenuData(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    sget-object p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;->Empty:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 99
    .line 100
    :goto_0
    return-object p0

    .line 101
    :pswitch_5
    check-cast p0, Landroid/app/RemoteAction;

    .line 102
    .line 103
    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->$r8$lambda$NEbN75PVibkie9gM9RkwSCumg10(Landroid/app/RemoteAction;)V

    .line 104
    .line 105
    .line 106
    return-object v6

    .line 107
    :pswitch_6
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 108
    .line 109
    invoke-interface {p0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;->close()V

    .line 110
    .line 111
    .line 112
    return-object v6

    .line 113
    :pswitch_7
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 114
    .line 115
    invoke-interface {p0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :pswitch_8
    check-cast p0, Landroidx/compose/ui/unit/IntRect;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getTopLeft-nOcc-ac()J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    .line 127
    .line 128
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 129
    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_9
    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    .line 133
    .line 134
    new-instance v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;F)V

    .line 138
    .line 139
    .line 140
    return-object v0

    .line 141
    :pswitch_a
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :pswitch_b
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    .line 149
    .line 150
    return-object p0

    .line 151
    :pswitch_c
    check-cast p0, Landroidx/compose/foundation/selection/ToggleableNode;

    .line 152
    .line 153
    iget-object v0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 154
    .line 155
    iget-boolean p0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->value:Z

    .line 156
    .line 157
    xor-int/2addr p0, v3

    .line 158
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    return-object v6

    .line 166
    :pswitch_d
    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    .line 167
    .line 168
    return-object p0

    .line 169
    :pswitch_e
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 170
    .line 171
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    .line 172
    .line 173
    if-eqz p0, :cond_1

    .line 174
    .line 175
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 176
    .line 177
    .line 178
    :cond_1
    return-object v6

    .line 179
    :pswitch_f
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 180
    .line 181
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    .line 182
    .line 183
    if-eqz v0, :cond_2

    .line 184
    .line 185
    iget-object v0, v0, Landroidx/compose/animation/core/Transition;->totalDurationNanos$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Ljava/lang/Number;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    goto :goto_1

    .line 198
    :cond_2
    const-wide/16 v0, 0x0

    .line 199
    .line 200
    :goto_1
    iput-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 201
    .line 202
    return-object v6

    .line 203
    :pswitch_10
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 204
    .line 205
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {p0}, Landroidx/compose/animation/core/ArcSplineKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0

    .line 218
    :pswitch_11
    check-cast p0, Landroidx/camera/core/featuregroup/GroupableFeature;

    .line 219
    .line 220
    invoke-virtual {p0}, Landroidx/camera/core/featuregroup/GroupableFeature;->getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    if-eqz p0, :cond_4

    .line 229
    .line 230
    if-eq p0, v3, :cond_5

    .line 231
    .line 232
    const/4 v3, 0x2

    .line 233
    if-eq p0, v3, :cond_5

    .line 234
    .line 235
    const/4 v3, 0x3

    .line 236
    if-eq p0, v3, :cond_5

    .line 237
    .line 238
    const/4 v3, 0x4

    .line 239
    if-ne p0, v3, :cond_3

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_4
    move v3, v4

    .line 247
    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    :goto_3
    return-object v5

    .line 252
    :pswitch_12
    check-cast p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;

    .line 253
    .line 254
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 259
    .line 260
    return-object p0

    .line 261
    :pswitch_13
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 262
    .line 263
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->cameraDeviceSetupCompatFactoryProvider:Ljavax/inject/Provider;

    .line 264
    .line 265
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    check-cast p0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;

    .line 270
    .line 271
    return-object p0

    .line 272
    :pswitch_14
    check-cast p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    .line 273
    .line 274
    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseCameraStateProvider:Ljavax/inject/Provider;

    .line 275
    .line 276
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraState;

    .line 281
    .line 282
    return-object p0

    .line 283
    :pswitch_15
    check-cast p0, Landroidx/biometric/BiometricPrompt;

    .line 284
    .line 285
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 288
    .line 289
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-virtual {p0, v2}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    return-object p0

    .line 302
    :pswitch_16
    check-cast p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    .line 303
    .line 304
    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImplProvider:Ljavax/inject/Provider;

    .line 305
    .line 306
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    check-cast p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    .line 311
    .line 312
    return-object p0

    .line 313
    :pswitch_17
    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 314
    .line 315
    sget-object v0, Landroidx/camera/core/impl/QuirkSettingsHolder;->sInstance:Landroidx/camera/core/impl/QuirkSettingsHolder;

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    :try_start_0
    iget-object v0, v0, Landroidx/camera/core/impl/QuirkSettingsHolder;->mObservable:Landroidx/compose/ui/node/NodeChain$Differ;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    .line 322
    :try_start_1
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    instance-of v6, v0, Landroidx/camera/core/impl/AutoValue_StateObservable_ErrorWrapper;

    .line 331
    .line 332
    if-eqz v6, :cond_6

    .line 333
    .line 334
    new-instance v0, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;

    .line 335
    .line 336
    invoke-direct {v0, v4, v5}, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;-><init>(ILjava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_6
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;

    .line 341
    .line 342
    .line 343
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :goto_4
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    check-cast v0, Landroidx/camera/core/impl/QuirkSettings;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    new-instance v5, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .line 357
    .line 358
    iget-object v6, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 359
    .line 360
    if-nez v6, :cond_8

    .line 361
    .line 362
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isErrorEnabled()Z

    .line 363
    .line 364
    .line 365
    move-result p0

    .line 366
    if-eqz p0, :cond_7

    .line 367
    .line 368
    const-string p0, "Failed to enable quirks: camera metadata injection failed"

    .line 369
    .line 370
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    :cond_7
    new-instance p0, Landroidx/camera/core/impl/Quirks;

    .line 374
    .line 375
    invoke-direct {p0, v5}, Landroidx/camera/core/impl/Quirks;-><init>(Ljava/util/ArrayList;)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_2a

    .line 379
    .line 380
    :cond_8
    sget-object v1, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    const-class v7, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;

    .line 390
    .line 391
    invoke-virtual {v0, v7, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-eqz v1, :cond_9

    .line 396
    .line 397
    new-instance v1, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;

    .line 398
    .line 399
    invoke-direct {v1, v6}, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    :cond_9
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    const-string v7, "Samsung"

    .line 411
    .line 412
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-nez v1, :cond_a

    .line 417
    .line 418
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-eqz v1, :cond_c

    .line 428
    .line 429
    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 430
    .line 431
    const/16 v8, 0x21

    .line 432
    .line 433
    if-ge v1, v8, :cond_c

    .line 434
    .line 435
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    move-object v8, v6

    .line 441
    check-cast v8, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 442
    .line 443
    invoke-virtual {v8, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    check-cast v1, Ljava/lang/Integer;

    .line 448
    .line 449
    if-nez v1, :cond_b

    .line 450
    .line 451
    goto :goto_5

    .line 452
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    if-nez v1, :cond_c

    .line 457
    .line 458
    move v1, v3

    .line 459
    goto :goto_6

    .line 460
    :cond_c
    :goto_5
    move v1, v4

    .line 461
    :goto_6
    const-class v8, Landroidx/camera/camera2/compat/quirk/AfRegionFlipHorizontallyQuirk;

    .line 462
    .line 463
    invoke-virtual {v0, v8, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-eqz v1, :cond_d

    .line 468
    .line 469
    new-instance v1, Landroidx/camera/camera2/compat/quirk/AfRegionFlipHorizontallyQuirk;

    .line 470
    .line 471
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    :cond_d
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 478
    .line 479
    .line 480
    const-class v1, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;

    .line 481
    .line 482
    invoke-virtual {v0, v1, v4}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    if-eqz v1, :cond_e

    .line 487
    .line 488
    new-instance v1, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;

    .line 489
    .line 490
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    :cond_e
    const-class v1, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;

    .line 497
    .line 498
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    invoke-virtual {v0, v1, v8}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    if-eqz v1, :cond_f

    .line 507
    .line 508
    new-instance v1, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;

    .line 509
    .line 510
    iget-object p0, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 511
    .line 512
    invoke-direct {v1, p0}, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;-><init>(Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    :cond_f
    sget-object p0, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;->AFFECTED_MODELS:Ljava/util/List;

    .line 519
    .line 520
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 526
    .line 527
    invoke-virtual {v1, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result p0

    .line 538
    if-eqz p0, :cond_11

    .line 539
    .line 540
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 541
    .line 542
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    .line 544
    .line 545
    move-object v1, v6

    .line 546
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 547
    .line 548
    invoke-virtual {v1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object p0

    .line 552
    check-cast p0, Ljava/lang/Integer;

    .line 553
    .line 554
    if-nez p0, :cond_10

    .line 555
    .line 556
    goto :goto_7

    .line 557
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result p0

    .line 561
    if-ne p0, v3, :cond_11

    .line 562
    .line 563
    move p0, v3

    .line 564
    goto :goto_8

    .line 565
    :cond_11
    :goto_7
    move p0, v4

    .line 566
    :goto_8
    const-class v1, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;

    .line 567
    .line 568
    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 569
    .line 570
    .line 571
    move-result p0

    .line 572
    if-eqz p0, :cond_12

    .line 573
    .line 574
    new-instance p0, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;

    .line 575
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    :cond_12
    const-class p0, Landroidx/camera/camera2/compat/quirk/CaptureSessionStuckQuirk;

    .line 583
    .line 584
    invoke-virtual {v0, p0, v4}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 585
    .line 586
    .line 587
    move-result p0

    .line 588
    if-eqz p0, :cond_13

    .line 589
    .line 590
    new-instance p0, Landroidx/camera/camera2/compat/quirk/CaptureSessionStuckQuirk;

    .line 591
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    :cond_13
    const-class p0, Landroidx/camera/camera2/compat/quirk/CloseCaptureSessionOnVideoQuirk;

    .line 599
    .line 600
    invoke-virtual {v0, p0, v3}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 601
    .line 602
    .line 603
    move-result p0

    .line 604
    if-eqz p0, :cond_14

    .line 605
    .line 606
    new-instance p0, Landroidx/camera/camera2/compat/quirk/CloseCaptureSessionOnVideoQuirk;

    .line 607
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    :cond_14
    const-class p0, Landroidx/camera/camera2/compat/quirk/ConfigureSurfaceToSecondarySessionFailQuirk;

    .line 615
    .line 616
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    invoke-virtual {v0, p0, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 621
    .line 622
    .line 623
    move-result p0

    .line 624
    if-eqz p0, :cond_15

    .line 625
    .line 626
    new-instance p0, Landroidx/camera/camera2/compat/quirk/ConfigureSurfaceToSecondarySessionFailQuirk;

    .line 627
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    :cond_15
    const-class p0, Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk;

    .line 635
    .line 636
    invoke-virtual {v0, p0, v3}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 637
    .line 638
    .line 639
    move-result p0

    .line 640
    if-eqz p0, :cond_16

    .line 641
    .line 642
    new-instance p0, Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk;

    .line 643
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    :cond_16
    sget-object p0, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;->AFFECTED_MODEL_PREFIXES:Ljava/util/List;

    .line 651
    .line 652
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 653
    .line 654
    .line 655
    move-result-object p0

    .line 656
    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    if-eqz v1, :cond_19

    .line 661
    .line 662
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    check-cast v1, Ljava/lang/String;

    .line 667
    .line 668
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 669
    .line 670
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 671
    .line 672
    .line 673
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 674
    .line 675
    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v8

    .line 679
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    invoke-static {v8, v1, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 683
    .line 684
    .line 685
    move-result v1

    .line 686
    if-eqz v1, :cond_17

    .line 687
    .line 688
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 689
    .line 690
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    move-object v1, v6

    .line 694
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 695
    .line 696
    invoke-virtual {v1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object p0

    .line 700
    check-cast p0, Ljava/lang/Integer;

    .line 701
    .line 702
    if-nez p0, :cond_18

    .line 703
    .line 704
    goto :goto_9

    .line 705
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 706
    .line 707
    .line 708
    move-result p0

    .line 709
    if-ne p0, v3, :cond_19

    .line 710
    .line 711
    move p0, v3

    .line 712
    goto :goto_a

    .line 713
    :cond_19
    :goto_9
    move p0, v4

    .line 714
    :goto_a
    const-class v1, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;

    .line 715
    .line 716
    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 717
    .line 718
    .line 719
    move-result p0

    .line 720
    if-eqz p0, :cond_1a

    .line 721
    .line 722
    new-instance p0, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;

    .line 723
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    :cond_1a
    sget-object p0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;->BUILD_MODELS_FRONT_CAMERA:Ljava/util/List;

    .line 731
    .line 732
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 733
    .line 734
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 735
    .line 736
    .line 737
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 738
    .line 739
    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v9

    .line 743
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 744
    .line 745
    .line 746
    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result p0

    .line 750
    if-eqz p0, :cond_1c

    .line 751
    .line 752
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 753
    .line 754
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 755
    .line 756
    .line 757
    move-object v9, v6

    .line 758
    check-cast v9, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 759
    .line 760
    invoke-virtual {v9, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object p0

    .line 764
    check-cast p0, Ljava/lang/Integer;

    .line 765
    .line 766
    if-nez p0, :cond_1b

    .line 767
    .line 768
    goto :goto_b

    .line 769
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 770
    .line 771
    .line 772
    move-result p0

    .line 773
    if-nez p0, :cond_1c

    .line 774
    .line 775
    move p0, v3

    .line 776
    goto :goto_c

    .line 777
    :cond_1c
    :goto_b
    move p0, v4

    .line 778
    :goto_c
    const-class v9, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;

    .line 779
    .line 780
    invoke-virtual {v0, v9, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 781
    .line 782
    .line 783
    move-result p0

    .line 784
    if-eqz p0, :cond_1d

    .line 785
    .line 786
    new-instance p0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;

    .line 787
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    :cond_1d
    sget-object p0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFlashNotFireQuirk;->BUILD_MODELS_FRONT_CAMERA:Ljava/util/List;

    .line 795
    .line 796
    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v9

    .line 800
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 801
    .line 802
    .line 803
    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    move-result p0

    .line 807
    if-eqz p0, :cond_1f

    .line 808
    .line 809
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 810
    .line 811
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    move-object v9, v6

    .line 815
    check-cast v9, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 816
    .line 817
    invoke-virtual {v9, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object p0

    .line 821
    check-cast p0, Ljava/lang/Integer;

    .line 822
    .line 823
    if-nez p0, :cond_1e

    .line 824
    .line 825
    goto :goto_d

    .line 826
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 827
    .line 828
    .line 829
    move-result p0

    .line 830
    if-nez p0, :cond_1f

    .line 831
    .line 832
    move p0, v3

    .line 833
    goto :goto_e

    .line 834
    :cond_1f
    :goto_d
    move p0, v4

    .line 835
    :goto_e
    sget-object v9, Landroidx/camera/camera2/compat/quirk/ImageCaptureFlashNotFireQuirk;->BUILD_MODELS:Ljava/util/List;

    .line 836
    .line 837
    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v10

    .line 841
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 842
    .line 843
    .line 844
    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    move-result v9

    .line 848
    if-nez p0, :cond_21

    .line 849
    .line 850
    if-eqz v9, :cond_20

    .line 851
    .line 852
    goto :goto_f

    .line 853
    :cond_20
    move p0, v4

    .line 854
    goto :goto_10

    .line 855
    :cond_21
    :goto_f
    move p0, v3

    .line 856
    :goto_10
    const-class v9, Landroidx/camera/camera2/compat/quirk/ImageCaptureFlashNotFireQuirk;

    .line 857
    .line 858
    invoke-virtual {v0, v9, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 859
    .line 860
    .line 861
    move-result p0

    .line 862
    if-eqz p0, :cond_22

    .line 863
    .line 864
    new-instance p0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFlashNotFireQuirk;

    .line 865
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    :cond_22
    sget-object p0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;->BUILD_MODELS:Ljava/util/List;

    .line 873
    .line 874
    invoke-virtual {v1, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v9

    .line 878
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    move-result p0

    .line 885
    if-eqz p0, :cond_24

    .line 886
    .line 887
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 888
    .line 889
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    .line 891
    .line 892
    move-object v9, v6

    .line 893
    check-cast v9, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 894
    .line 895
    invoke-virtual {v9, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object p0

    .line 899
    check-cast p0, Ljava/lang/Integer;

    .line 900
    .line 901
    if-nez p0, :cond_23

    .line 902
    .line 903
    goto :goto_11

    .line 904
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 905
    .line 906
    .line 907
    move-result p0

    .line 908
    if-ne p0, v3, :cond_24

    .line 909
    .line 910
    move p0, v3

    .line 911
    goto :goto_12

    .line 912
    :cond_24
    :goto_11
    move p0, v4

    .line 913
    :goto_12
    const-class v9, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;

    .line 914
    .line 915
    invoke-virtual {v0, v9, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 916
    .line 917
    .line 918
    move-result p0

    .line 919
    if-eqz p0, :cond_25

    .line 920
    .line 921
    new-instance p0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;

    .line 922
    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    .line 928
    .line 929
    :cond_25
    sget-object p0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;->BUILD_MODELS:Ljava/util/List;

    .line 930
    .line 931
    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v9

    .line 935
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 939
    .line 940
    .line 941
    move-result p0

    .line 942
    if-eqz p0, :cond_27

    .line 943
    .line 944
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 945
    .line 946
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    move-object v9, v6

    .line 950
    check-cast v9, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 951
    .line 952
    invoke-virtual {v9, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object p0

    .line 956
    check-cast p0, Ljava/lang/Integer;

    .line 957
    .line 958
    if-nez p0, :cond_26

    .line 959
    .line 960
    goto :goto_13

    .line 961
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 962
    .line 963
    .line 964
    move-result p0

    .line 965
    if-ne p0, v3, :cond_27

    .line 966
    .line 967
    move p0, v3

    .line 968
    goto :goto_14

    .line 969
    :cond_27
    :goto_13
    move p0, v4

    .line 970
    :goto_14
    const-class v9, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;

    .line 971
    .line 972
    invoke-virtual {v0, v9, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 973
    .line 974
    .line 975
    move-result p0

    .line 976
    if-eqz p0, :cond_28

    .line 977
    .line 978
    new-instance p0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;

    .line 979
    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    :cond_28
    sget-object p0, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;->KNOWN_AFFECTED_DEVICES:Ljava/util/List;

    .line 987
    .line 988
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 989
    .line 990
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 991
    .line 992
    .line 993
    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v9

    .line 997
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 998
    .line 999
    .line 1000
    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result p0

    .line 1004
    const-class v9, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;

    .line 1005
    .line 1006
    invoke-virtual {v0, v9, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1007
    .line 1008
    .line 1009
    move-result p0

    .line 1010
    if-eqz p0, :cond_29

    .line 1011
    .line 1012
    new-instance p0, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;

    .line 1013
    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    :cond_29
    sget-object p0, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;->INSTANCE:Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;

    .line 1021
    .line 1022
    sget-object v9, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;->KNOWN_AFFECTED_FRONT_CAMERA_DEVICES:Ljava/util/Set;

    .line 1023
    .line 1024
    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v1

    .line 1028
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1029
    .line 1030
    .line 1031
    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v1

    .line 1035
    if-eqz v1, :cond_2b

    .line 1036
    .line 1037
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1038
    .line 1039
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1040
    .line 1041
    .line 1042
    move-object v8, v6

    .line 1043
    check-cast v8, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 1044
    .line 1045
    invoke-virtual {v8, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    check-cast v1, Ljava/lang/Integer;

    .line 1050
    .line 1051
    if-nez v1, :cond_2a

    .line 1052
    .line 1053
    goto :goto_15

    .line 1054
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1055
    .line 1056
    .line 1057
    move-result v1

    .line 1058
    if-nez v1, :cond_2b

    .line 1059
    .line 1060
    move v1, v3

    .line 1061
    goto :goto_16

    .line 1062
    :cond_2b
    :goto_15
    move v1, v4

    .line 1063
    :goto_16
    const-class v8, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;

    .line 1064
    .line 1065
    invoke-virtual {v0, v8, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v1

    .line 1069
    if-eqz v1, :cond_2c

    .line 1070
    .line 1071
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    :cond_2c
    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 1075
    .line 1076
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1077
    .line 1078
    .line 1079
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result p0

    .line 1083
    const-class v1, Landroidx/camera/camera2/compat/quirk/PreviewOrientationIncorrectQuirk;

    .line 1084
    .line 1085
    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1086
    .line 1087
    .line 1088
    move-result p0

    .line 1089
    if-eqz p0, :cond_2d

    .line 1090
    .line 1091
    new-instance p0, Landroidx/camera/camera2/compat/quirk/PreviewOrientationIncorrectQuirk;

    .line 1092
    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    .line 1098
    .line 1099
    :cond_2d
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1100
    .line 1101
    const/16 v1, 0x17

    .line 1102
    .line 1103
    if-gt p0, v1, :cond_2e

    .line 1104
    .line 1105
    move p0, v3

    .line 1106
    goto :goto_17

    .line 1107
    :cond_2e
    move p0, v4

    .line 1108
    :goto_17
    const-class v1, Landroidx/camera/camera2/compat/quirk/TextureViewIsClosedQuirk;

    .line 1109
    .line 1110
    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1111
    .line 1112
    .line 1113
    move-result p0

    .line 1114
    if-eqz p0, :cond_2f

    .line 1115
    .line 1116
    new-instance p0, Landroidx/camera/camera2/compat/quirk/TextureViewIsClosedQuirk;

    .line 1117
    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    :cond_2f
    sget-object p0, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;->AFFECTED_PIXEL_MODELS:Ljava/util/ArrayList;

    .line 1125
    .line 1126
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1127
    .line 1128
    .line 1129
    move-result-object p0

    .line 1130
    :cond_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1131
    .line 1132
    .line 1133
    move-result v1

    .line 1134
    if-eqz v1, :cond_32

    .line 1135
    .line 1136
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v1

    .line 1140
    check-cast v1, Ljava/lang/String;

    .line 1141
    .line 1142
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1143
    .line 1144
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1145
    .line 1146
    .line 1147
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1148
    .line 1149
    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v8

    .line 1153
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    if-eqz v1, :cond_30

    .line 1161
    .line 1162
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1163
    .line 1164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1165
    .line 1166
    .line 1167
    move-object v1, v6

    .line 1168
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 1169
    .line 1170
    invoke-virtual {v1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 1171
    .line 1172
    .line 1173
    move-result-object p0

    .line 1174
    check-cast p0, Ljava/lang/Integer;

    .line 1175
    .line 1176
    if-nez p0, :cond_31

    .line 1177
    .line 1178
    goto :goto_18

    .line 1179
    :cond_31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 1180
    .line 1181
    .line 1182
    move-result p0

    .line 1183
    if-nez p0, :cond_32

    .line 1184
    .line 1185
    move p0, v3

    .line 1186
    goto :goto_19

    .line 1187
    :cond_32
    :goto_18
    move p0, v4

    .line 1188
    :goto_19
    const-class v1, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    .line 1189
    .line 1190
    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1191
    .line 1192
    .line 1193
    move-result p0

    .line 1194
    if-eqz p0, :cond_33

    .line 1195
    .line 1196
    new-instance p0, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    .line 1197
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    .line 1203
    .line 1204
    :cond_33
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1205
    .line 1206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1207
    .line 1208
    .line 1209
    const-string v1, "Motorola"

    .line 1210
    .line 1211
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v8

    .line 1215
    if-nez v8, :cond_34

    .line 1216
    .line 1217
    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1218
    .line 1219
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v8

    .line 1226
    if-eqz v8, :cond_35

    .line 1227
    .line 1228
    :cond_34
    const-string v8, "MotoG3"

    .line 1229
    .line 1230
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1231
    .line 1232
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1233
    .line 1234
    .line 1235
    move-result v8

    .line 1236
    if-eqz v8, :cond_35

    .line 1237
    .line 1238
    goto/16 :goto_1a

    .line 1239
    .line 1240
    :cond_35
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1241
    .line 1242
    .line 1243
    move-result v8

    .line 1244
    if-nez v8, :cond_36

    .line 1245
    .line 1246
    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1247
    .line 1248
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v8

    .line 1255
    if-eqz v8, :cond_37

    .line 1256
    .line 1257
    :cond_36
    const-string v8, "SM-G532F"

    .line 1258
    .line 1259
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1260
    .line 1261
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v8

    .line 1265
    if-eqz v8, :cond_37

    .line 1266
    .line 1267
    goto/16 :goto_1a

    .line 1268
    .line 1269
    :cond_37
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v8

    .line 1273
    if-nez v8, :cond_38

    .line 1274
    .line 1275
    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1276
    .line 1277
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v8

    .line 1284
    if-eqz v8, :cond_39

    .line 1285
    .line 1286
    :cond_38
    const-string v8, "SM-J700F"

    .line 1287
    .line 1288
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1289
    .line 1290
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1291
    .line 1292
    .line 1293
    move-result v8

    .line 1294
    if-eqz v8, :cond_39

    .line 1295
    .line 1296
    goto :goto_1a

    .line 1297
    :cond_39
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1298
    .line 1299
    .line 1300
    move-result v8

    .line 1301
    if-nez v8, :cond_3a

    .line 1302
    .line 1303
    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1304
    .line 1305
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v8

    .line 1312
    if-eqz v8, :cond_3b

    .line 1313
    .line 1314
    :cond_3a
    const-string v8, "SM-A920F"

    .line 1315
    .line 1316
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1317
    .line 1318
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1319
    .line 1320
    .line 1321
    move-result v8

    .line 1322
    if-eqz v8, :cond_3b

    .line 1323
    .line 1324
    goto :goto_1a

    .line 1325
    :cond_3b
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1326
    .line 1327
    .line 1328
    move-result v8

    .line 1329
    if-nez v8, :cond_3c

    .line 1330
    .line 1331
    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1332
    .line 1333
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v8

    .line 1340
    if-eqz v8, :cond_3d

    .line 1341
    .line 1342
    :cond_3c
    const-string v8, "SM-J415F"

    .line 1343
    .line 1344
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1345
    .line 1346
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1347
    .line 1348
    .line 1349
    move-result v8

    .line 1350
    if-eqz v8, :cond_3d

    .line 1351
    .line 1352
    goto :goto_1a

    .line 1353
    :cond_3d
    const-string v8, "Xiaomi"

    .line 1354
    .line 1355
    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1356
    .line 1357
    .line 1358
    move-result v9

    .line 1359
    if-nez v9, :cond_3e

    .line 1360
    .line 1361
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1362
    .line 1363
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1367
    .line 1368
    .line 1369
    move-result v8

    .line 1370
    if-eqz v8, :cond_3f

    .line 1371
    .line 1372
    :cond_3e
    const-string v8, "Mi A1"

    .line 1373
    .line 1374
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1375
    .line 1376
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1377
    .line 1378
    .line 1379
    move-result v8

    .line 1380
    if-eqz v8, :cond_3f

    .line 1381
    .line 1382
    :goto_1a
    move v8, v3

    .line 1383
    goto :goto_1b

    .line 1384
    :cond_3f
    move v8, v4

    .line 1385
    :goto_1b
    const-class v9, Landroidx/camera/camera2/compat/quirk/YuvImageOnePixelShiftQuirk;

    .line 1386
    .line 1387
    invoke-virtual {v0, v9, v8}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1388
    .line 1389
    .line 1390
    move-result v8

    .line 1391
    if-eqz v8, :cond_40

    .line 1392
    .line 1393
    new-instance v8, Landroidx/camera/camera2/compat/quirk/YuvImageOnePixelShiftQuirk;

    .line 1394
    .line 1395
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    .line 1400
    .line 1401
    :cond_40
    const-string v8, "Huawei"

    .line 1402
    .line 1403
    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v9

    .line 1407
    if-nez v9, :cond_41

    .line 1408
    .line 1409
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1410
    .line 1411
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1415
    .line 1416
    .line 1417
    move-result v9

    .line 1418
    if-eqz v9, :cond_42

    .line 1419
    .line 1420
    :cond_41
    const-string v9, "HUAWEI ALE-L04"

    .line 1421
    .line 1422
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1423
    .line 1424
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1425
    .line 1426
    .line 1427
    move-result v9

    .line 1428
    if-eqz v9, :cond_42

    .line 1429
    .line 1430
    goto/16 :goto_1c

    .line 1431
    .line 1432
    :cond_42
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1433
    .line 1434
    .line 1435
    move-result v9

    .line 1436
    if-nez v9, :cond_43

    .line 1437
    .line 1438
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1439
    .line 1440
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1444
    .line 1445
    .line 1446
    move-result v9

    .line 1447
    if-eqz v9, :cond_44

    .line 1448
    .line 1449
    :cond_43
    const-string v9, "sm-j320f"

    .line 1450
    .line 1451
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1452
    .line 1453
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v9

    .line 1457
    if-eqz v9, :cond_44

    .line 1458
    .line 1459
    goto/16 :goto_1c

    .line 1460
    .line 1461
    :cond_44
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1462
    .line 1463
    .line 1464
    move-result v9

    .line 1465
    if-nez v9, :cond_45

    .line 1466
    .line 1467
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1468
    .line 1469
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v9

    .line 1476
    if-eqz v9, :cond_46

    .line 1477
    .line 1478
    :cond_45
    const-string v9, "sm-j700f"

    .line 1479
    .line 1480
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1481
    .line 1482
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v9

    .line 1486
    if-eqz v9, :cond_46

    .line 1487
    .line 1488
    goto :goto_1c

    .line 1489
    :cond_46
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1490
    .line 1491
    .line 1492
    move-result v9

    .line 1493
    if-nez v9, :cond_47

    .line 1494
    .line 1495
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1496
    .line 1497
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1501
    .line 1502
    .line 1503
    move-result v9

    .line 1504
    if-eqz v9, :cond_48

    .line 1505
    .line 1506
    :cond_47
    const-string v9, "sm-j111f"

    .line 1507
    .line 1508
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1509
    .line 1510
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1511
    .line 1512
    .line 1513
    move-result v9

    .line 1514
    if-eqz v9, :cond_48

    .line 1515
    .line 1516
    goto :goto_1c

    .line 1517
    :cond_48
    const-string v9, "Oppo"

    .line 1518
    .line 1519
    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1520
    .line 1521
    .line 1522
    move-result v10

    .line 1523
    if-nez v10, :cond_49

    .line 1524
    .line 1525
    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1526
    .line 1527
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1531
    .line 1532
    .line 1533
    move-result v9

    .line 1534
    if-eqz v9, :cond_4a

    .line 1535
    .line 1536
    :cond_49
    const-string v9, "A37F"

    .line 1537
    .line 1538
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1539
    .line 1540
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1541
    .line 1542
    .line 1543
    move-result v9

    .line 1544
    if-eqz v9, :cond_4a

    .line 1545
    .line 1546
    goto :goto_1c

    .line 1547
    :cond_4a
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1548
    .line 1549
    .line 1550
    move-result v9

    .line 1551
    if-nez v9, :cond_4b

    .line 1552
    .line 1553
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1554
    .line 1555
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1556
    .line 1557
    .line 1558
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1559
    .line 1560
    .line 1561
    move-result v9

    .line 1562
    if-eqz v9, :cond_4c

    .line 1563
    .line 1564
    :cond_4b
    const-string v9, "sm-j510fn"

    .line 1565
    .line 1566
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1567
    .line 1568
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1569
    .line 1570
    .line 1571
    move-result v9

    .line 1572
    if-eqz v9, :cond_4c

    .line 1573
    .line 1574
    :goto_1c
    move v9, v3

    .line 1575
    goto :goto_1d

    .line 1576
    :cond_4c
    move v9, v4

    .line 1577
    :goto_1d
    const-class v10, Landroidx/camera/camera2/compat/quirk/PreviewStretchWhenVideoCaptureIsBoundQuirk;

    .line 1578
    .line 1579
    invoke-virtual {v0, v10, v9}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1580
    .line 1581
    .line 1582
    move-result v9

    .line 1583
    if-eqz v9, :cond_4d

    .line 1584
    .line 1585
    new-instance v9, Landroidx/camera/camera2/compat/quirk/PreviewStretchWhenVideoCaptureIsBoundQuirk;

    .line 1586
    .line 1587
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    .line 1592
    .line 1593
    :cond_4d
    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1594
    .line 1595
    .line 1596
    move-result v9

    .line 1597
    if-nez v9, :cond_4f

    .line 1598
    .line 1599
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1600
    .line 1601
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1605
    .line 1606
    .line 1607
    move-result v9

    .line 1608
    if-eqz v9, :cond_4e

    .line 1609
    .line 1610
    goto :goto_1e

    .line 1611
    :cond_4e
    move v9, v4

    .line 1612
    goto :goto_1f

    .line 1613
    :cond_4f
    :goto_1e
    move v9, v3

    .line 1614
    :goto_1f
    const-class v10, Landroidx/camera/camera2/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;

    .line 1615
    .line 1616
    invoke-virtual {v0, v10, v9}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1617
    .line 1618
    .line 1619
    move-result v9

    .line 1620
    if-eqz v9, :cond_50

    .line 1621
    .line 1622
    new-instance v9, Landroidx/camera/camera2/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;

    .line 1623
    .line 1624
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1625
    .line 1626
    .line 1627
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    .line 1629
    .line 1630
    :cond_50
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1631
    .line 1632
    .line 1633
    move-result v9

    .line 1634
    if-nez v9, :cond_51

    .line 1635
    .line 1636
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1637
    .line 1638
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1642
    .line 1643
    .line 1644
    move-result v9

    .line 1645
    if-eqz v9, :cond_52

    .line 1646
    .line 1647
    :cond_51
    sget-object v9, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 1648
    .line 1649
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1650
    .line 1651
    .line 1652
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 1653
    .line 1654
    .line 1655
    move-result v9

    .line 1656
    if-eqz v9, :cond_52

    .line 1657
    .line 1658
    move v9, v3

    .line 1659
    goto :goto_20

    .line 1660
    :cond_52
    move v9, v4

    .line 1661
    :goto_20
    const-class v10, Landroidx/camera/camera2/compat/quirk/QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk;

    .line 1662
    .line 1663
    invoke-virtual {v0, v10, v9}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1664
    .line 1665
    .line 1666
    move-result v9

    .line 1667
    if-eqz v9, :cond_53

    .line 1668
    .line 1669
    new-instance v9, Landroidx/camera/camera2/compat/quirk/QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk;

    .line 1670
    .line 1671
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    .line 1676
    .line 1677
    :cond_53
    invoke-static {}, Landroidx/appcompat/app/ActionBar;->isBluStudioX10()Z

    .line 1678
    .line 1679
    .line 1680
    move-result v9

    .line 1681
    if-nez v9, :cond_5c

    .line 1682
    .line 1683
    invoke-static {}, Landroidx/appcompat/app/ActionBar;->isItelW6004()Z

    .line 1684
    .line 1685
    .line 1686
    move-result v9

    .line 1687
    if-nez v9, :cond_5c

    .line 1688
    .line 1689
    invoke-static {}, Landroidx/appcompat/app/ActionBar;->isVivo1805()Z

    .line 1690
    .line 1691
    .line 1692
    move-result v9

    .line 1693
    if-nez v9, :cond_5c

    .line 1694
    .line 1695
    invoke-static {}, Landroidx/appcompat/app/ActionBar;->isPositivoTwist2Pro()Z

    .line 1696
    .line 1697
    .line 1698
    move-result v9

    .line 1699
    if-nez v9, :cond_5c

    .line 1700
    .line 1701
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1702
    .line 1703
    const-string v10, "pixel 4 xl"

    .line 1704
    .line 1705
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1706
    .line 1707
    .line 1708
    move-result v10

    .line 1709
    if-eqz v10, :cond_54

    .line 1710
    .line 1711
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1712
    .line 1713
    const/16 v11, 0x1d

    .line 1714
    .line 1715
    if-ne v10, v11, :cond_54

    .line 1716
    .line 1717
    goto :goto_21

    .line 1718
    :cond_54
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1719
    .line 1720
    .line 1721
    move-result v10

    .line 1722
    if-nez v10, :cond_55

    .line 1723
    .line 1724
    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1725
    .line 1726
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1727
    .line 1728
    .line 1729
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1730
    .line 1731
    .line 1732
    move-result v1

    .line 1733
    if-eqz v1, :cond_56

    .line 1734
    .line 1735
    :cond_55
    const-string v1, "moto e13"

    .line 1736
    .line 1737
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1738
    .line 1739
    .line 1740
    move-result v1

    .line 1741
    if-eqz v1, :cond_56

    .line 1742
    .line 1743
    goto :goto_21

    .line 1744
    :cond_56
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1745
    .line 1746
    .line 1747
    move-result v1

    .line 1748
    if-nez v1, :cond_57

    .line 1749
    .line 1750
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1751
    .line 1752
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1756
    .line 1757
    .line 1758
    move-result v1

    .line 1759
    if-eqz v1, :cond_58

    .line 1760
    .line 1761
    :cond_57
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1762
    .line 1763
    const-string v10, "gta8"

    .line 1764
    .line 1765
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1766
    .line 1767
    .line 1768
    move-result v10

    .line 1769
    if-nez v10, :cond_5c

    .line 1770
    .line 1771
    const-string v10, "gta8wifi"

    .line 1772
    .line 1773
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1774
    .line 1775
    .line 1776
    move-result v1

    .line 1777
    if-eqz v1, :cond_58

    .line 1778
    .line 1779
    goto :goto_21

    .line 1780
    :cond_58
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1781
    .line 1782
    .line 1783
    move-result v1

    .line 1784
    if-nez v1, :cond_59

    .line 1785
    .line 1786
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1787
    .line 1788
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1789
    .line 1790
    .line 1791
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1792
    .line 1793
    .line 1794
    move-result v1

    .line 1795
    if-eqz v1, :cond_5a

    .line 1796
    .line 1797
    :cond_59
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1798
    .line 1799
    .line 1800
    const-string v1, "SM-A536"

    .line 1801
    .line 1802
    invoke-static {v9, v1, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1803
    .line 1804
    .line 1805
    move-result v1

    .line 1806
    if-eqz v1, :cond_5a

    .line 1807
    .line 1808
    goto :goto_21

    .line 1809
    :cond_5a
    invoke-static {}, Landroidx/core/view/DisplayCompat;->isUniSocChipsetDevice()Z

    .line 1810
    .line 1811
    .line 1812
    move-result v1

    .line 1813
    if-eqz v1, :cond_5b

    .line 1814
    .line 1815
    goto :goto_21

    .line 1816
    :cond_5b
    move v1, v4

    .line 1817
    goto :goto_22

    .line 1818
    :cond_5c
    :goto_21
    move v1, v3

    .line 1819
    :goto_22
    const-class v9, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk;

    .line 1820
    .line 1821
    invoke-virtual {v0, v9, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1822
    .line 1823
    .line 1824
    move-result v1

    .line 1825
    if-eqz v1, :cond_5d

    .line 1826
    .line 1827
    new-instance v1, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk;

    .line 1828
    .line 1829
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1830
    .line 1831
    .line 1832
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1833
    .line 1834
    .line 1835
    :cond_5d
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1836
    .line 1837
    const-string v9, "Pixel 8"

    .line 1838
    .line 1839
    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1840
    .line 1841
    .line 1842
    move-result v9

    .line 1843
    if-eqz v9, :cond_5f

    .line 1844
    .line 1845
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1846
    .line 1847
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1848
    .line 1849
    .line 1850
    move-object v10, v6

    .line 1851
    check-cast v10, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 1852
    .line 1853
    invoke-virtual {v10, v9}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v9

    .line 1857
    check-cast v9, Ljava/lang/Integer;

    .line 1858
    .line 1859
    if-nez v9, :cond_5e

    .line 1860
    .line 1861
    goto :goto_23

    .line 1862
    :cond_5e
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1863
    .line 1864
    .line 1865
    move-result v9

    .line 1866
    if-nez v9, :cond_5f

    .line 1867
    .line 1868
    move v9, v3

    .line 1869
    goto :goto_24

    .line 1870
    :cond_5f
    :goto_23
    move v9, v4

    .line 1871
    :goto_24
    const-class v10, Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk;

    .line 1872
    .line 1873
    invoke-virtual {v0, v10, v9}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1874
    .line 1875
    .line 1876
    move-result v9

    .line 1877
    if-eqz v9, :cond_60

    .line 1878
    .line 1879
    new-instance v9, Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk;

    .line 1880
    .line 1881
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1882
    .line 1883
    .line 1884
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1885
    .line 1886
    .line 1887
    :cond_60
    sget-object v9, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;->PROBLEMATIC_UNI_SOC_MODELS:Ljava/util/Set;

    .line 1888
    .line 1889
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1890
    .line 1891
    .line 1892
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1893
    .line 1894
    invoke-virtual {v1, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v10

    .line 1898
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1899
    .line 1900
    .line 1901
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1902
    .line 1903
    .line 1904
    move-result v9

    .line 1905
    if-nez v9, :cond_63

    .line 1906
    .line 1907
    invoke-static {}, Landroidx/core/view/DisplayCompat;->isUniSocChipsetDevice()Z

    .line 1908
    .line 1909
    .line 1910
    move-result v9

    .line 1911
    if-nez v9, :cond_63

    .line 1912
    .line 1913
    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1914
    .line 1915
    .line 1916
    move-result v9

    .line 1917
    if-nez v9, :cond_61

    .line 1918
    .line 1919
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1920
    .line 1921
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1922
    .line 1923
    .line 1924
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1925
    .line 1926
    .line 1927
    move-result v8

    .line 1928
    if-eqz v8, :cond_62

    .line 1929
    .line 1930
    :cond_61
    const-string v8, "FIG-LX1"

    .line 1931
    .line 1932
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1933
    .line 1934
    .line 1935
    move-result v1

    .line 1936
    if-eqz v1, :cond_62

    .line 1937
    .line 1938
    goto :goto_25

    .line 1939
    :cond_62
    move v1, v4

    .line 1940
    goto :goto_26

    .line 1941
    :cond_63
    :goto_25
    move v1, v3

    .line 1942
    :goto_26
    const-class v8, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;

    .line 1943
    .line 1944
    invoke-virtual {v0, v8, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1945
    .line 1946
    .line 1947
    move-result v1

    .line 1948
    if-eqz v1, :cond_64

    .line 1949
    .line 1950
    new-instance v1, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;

    .line 1951
    .line 1952
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1956
    .line 1957
    .line 1958
    :cond_64
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1959
    .line 1960
    .line 1961
    move-result p0

    .line 1962
    if-nez p0, :cond_65

    .line 1963
    .line 1964
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1965
    .line 1966
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1967
    .line 1968
    .line 1969
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1970
    .line 1971
    .line 1972
    move-result p0

    .line 1973
    if-eqz p0, :cond_66

    .line 1974
    .line 1975
    :cond_65
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1976
    .line 1977
    const-string v1, "m55xq"

    .line 1978
    .line 1979
    invoke-static {p0, v1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1980
    .line 1981
    .line 1982
    move-result p0

    .line 1983
    if-eqz p0, :cond_66

    .line 1984
    .line 1985
    move p0, v3

    .line 1986
    goto :goto_27

    .line 1987
    :cond_66
    move p0, v4

    .line 1988
    :goto_27
    const-class v1, Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk;

    .line 1989
    .line 1990
    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 1991
    .line 1992
    .line 1993
    move-result p0

    .line 1994
    if-eqz p0, :cond_67

    .line 1995
    .line 1996
    new-instance p0, Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk;

    .line 1997
    .line 1998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1999
    .line 2000
    .line 2001
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2002
    .line 2003
    .line 2004
    :cond_67
    sget-object p0, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;->BUILD_MODEL_PREFIXES:Ljava/util/List;

    .line 2005
    .line 2006
    if-eqz p0, :cond_68

    .line 2007
    .line 2008
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 2009
    .line 2010
    .line 2011
    move-result v1

    .line 2012
    if-eqz v1, :cond_68

    .line 2013
    .line 2014
    goto :goto_28

    .line 2015
    :cond_68
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2016
    .line 2017
    .line 2018
    move-result-object p0

    .line 2019
    :cond_69
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 2020
    .line 2021
    .line 2022
    move-result v1

    .line 2023
    if-eqz v1, :cond_6b

    .line 2024
    .line 2025
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v1

    .line 2029
    check-cast v1, Ljava/lang/String;

    .line 2030
    .line 2031
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2032
    .line 2033
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2034
    .line 2035
    .line 2036
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2037
    .line 2038
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v7

    .line 2042
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2043
    .line 2044
    .line 2045
    invoke-static {v7, v1, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2046
    .line 2047
    .line 2048
    move-result v1

    .line 2049
    if-eqz v1, :cond_69

    .line 2050
    .line 2051
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2052
    .line 2053
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2054
    .line 2055
    .line 2056
    check-cast v6, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 2057
    .line 2058
    invoke-virtual {v6, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 2059
    .line 2060
    .line 2061
    move-result-object p0

    .line 2062
    check-cast p0, Ljava/lang/Integer;

    .line 2063
    .line 2064
    if-nez p0, :cond_6a

    .line 2065
    .line 2066
    goto :goto_28

    .line 2067
    :cond_6a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 2068
    .line 2069
    .line 2070
    move-result p0

    .line 2071
    if-ne p0, v3, :cond_6b

    .line 2072
    .line 2073
    goto :goto_29

    .line 2074
    :cond_6b
    :goto_28
    move v3, v4

    .line 2075
    :goto_29
    invoke-virtual {v0, v2, v3}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    .line 2076
    .line 2077
    .line 2078
    move-result p0

    .line 2079
    if-eqz p0, :cond_6c

    .line 2080
    .line 2081
    new-instance p0, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;

    .line 2082
    .line 2083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2084
    .line 2085
    .line 2086
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2087
    .line 2088
    .line 2089
    :cond_6c
    new-instance p0, Landroidx/camera/core/impl/Quirks;

    .line 2090
    .line 2091
    invoke-direct {p0, v5}, Landroidx/camera/core/impl/Quirks;-><init>(Ljava/util/ArrayList;)V

    .line 2092
    .line 2093
    .line 2094
    invoke-static {p0}, Landroidx/camera/core/impl/Quirks;->toString(Landroidx/camera/core/impl/Quirks;)Ljava/lang/String;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v0

    .line 2098
    const-string v1, "camera2 CameraQuirks = "

    .line 2099
    .line 2100
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v0

    .line 2104
    const-string v1, "CameraQuirks"

    .line 2105
    .line 2106
    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    .line 2108
    .line 2109
    :goto_2a
    return-object p0

    .line 2110
    :catch_0
    move-exception p0

    .line 2111
    goto :goto_2b

    .line 2112
    :catch_1
    move-exception p0

    .line 2113
    :goto_2b
    new-instance v0, Ljava/lang/AssertionError;

    .line 2114
    .line 2115
    const-string v1, "Unexpected error in QuirkSettings StateObservable"

    .line 2116
    .line 2117
    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2118
    .line 2119
    .line 2120
    throw v0

    .line 2121
    :pswitch_18
    check-cast p0, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;

    .line 2122
    .line 2123
    iget-object p0, p0, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 2124
    .line 2125
    const/16 v0, 0x22

    .line 2126
    .line 2127
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getOutputSizes(I)[Landroid/util/Size;

    .line 2128
    .line 2129
    .line 2130
    move-result-object p0

    .line 2131
    if-eqz p0, :cond_6d

    .line 2132
    .line 2133
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2134
    .line 2135
    .line 2136
    move-result-object p0

    .line 2137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2138
    .line 2139
    .line 2140
    goto :goto_2c

    .line 2141
    :cond_6d
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 2142
    .line 2143
    :goto_2c
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 2144
    .line 2145
    .line 2146
    move-result v0

    .line 2147
    if-eqz v0, :cond_6e

    .line 2148
    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2150
    .line 2151
    const-string v2, "supportedResolutions = "

    .line 2152
    .line 2153
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2154
    .line 2155
    .line 2156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2157
    .line 2158
    .line 2159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v0

    .line 2163
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    .line 2165
    .line 2166
    :cond_6e
    return-object p0

    .line 2167
    :pswitch_19
    check-cast p0, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 2168
    .line 2169
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2170
    .line 2171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2172
    .line 2173
    .line 2174
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 2175
    .line 2176
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 2177
    .line 2178
    .line 2179
    move-result-object p0

    .line 2180
    check-cast p0, [Landroid/util/Range;

    .line 2181
    .line 2182
    if-eqz p0, :cond_76

    .line 2183
    .line 2184
    array-length v0, p0

    .line 2185
    if-nez v0, :cond_6f

    .line 2186
    .line 2187
    goto/16 :goto_30

    .line 2188
    .line 2189
    :cond_6f
    array-length v0, p0

    .line 2190
    :goto_2d
    if-ge v4, v0, :cond_76

    .line 2191
    .line 2192
    aget-object v1, p0, v4

    .line 2193
    .line 2194
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v2

    .line 2198
    check-cast v2, Ljava/lang/Integer;

    .line 2199
    .line 2200
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v3

    .line 2204
    check-cast v3, Ljava/lang/Integer;

    .line 2205
    .line 2206
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v6

    .line 2210
    check-cast v6, Ljava/lang/Number;

    .line 2211
    .line 2212
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 2213
    .line 2214
    .line 2215
    move-result v6

    .line 2216
    const/16 v7, 0x3e8

    .line 2217
    .line 2218
    if-lt v6, v7, :cond_70

    .line 2219
    .line 2220
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 2221
    .line 2222
    .line 2223
    move-result-object v2

    .line 2224
    check-cast v2, Ljava/lang/Number;

    .line 2225
    .line 2226
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 2227
    .line 2228
    .line 2229
    move-result v2

    .line 2230
    div-int/2addr v2, v7

    .line 2231
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v2

    .line 2235
    :cond_70
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v6

    .line 2239
    check-cast v6, Ljava/lang/Number;

    .line 2240
    .line 2241
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 2242
    .line 2243
    .line 2244
    move-result v6

    .line 2245
    if-lt v6, v7, :cond_71

    .line 2246
    .line 2247
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 2248
    .line 2249
    .line 2250
    move-result-object v1

    .line 2251
    check-cast v1, Ljava/lang/Number;

    .line 2252
    .line 2253
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2254
    .line 2255
    .line 2256
    move-result v1

    .line 2257
    div-int/2addr v1, v7

    .line 2258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2259
    .line 2260
    .line 2261
    move-result-object v3

    .line 2262
    :cond_71
    new-instance v1, Landroid/util/Range;

    .line 2263
    .line 2264
    invoke-direct {v1, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2265
    .line 2266
    .line 2267
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v2

    .line 2271
    check-cast v2, Ljava/lang/Integer;

    .line 2272
    .line 2273
    if-nez v2, :cond_72

    .line 2274
    .line 2275
    goto :goto_2f

    .line 2276
    :cond_72
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2277
    .line 2278
    .line 2279
    move-result v2

    .line 2280
    const/16 v3, 0x1e

    .line 2281
    .line 2282
    if-eq v2, v3, :cond_73

    .line 2283
    .line 2284
    goto :goto_2f

    .line 2285
    :cond_73
    if-nez v5, :cond_74

    .line 2286
    .line 2287
    goto :goto_2e

    .line 2288
    :cond_74
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v2

    .line 2292
    check-cast v2, Ljava/lang/Number;

    .line 2293
    .line 2294
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 2295
    .line 2296
    .line 2297
    move-result v2

    .line 2298
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 2299
    .line 2300
    .line 2301
    move-result-object v3

    .line 2302
    check-cast v3, Ljava/lang/Number;

    .line 2303
    .line 2304
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 2305
    .line 2306
    .line 2307
    move-result v3

    .line 2308
    if-ge v2, v3, :cond_75

    .line 2309
    .line 2310
    :goto_2e
    move-object v5, v1

    .line 2311
    :cond_75
    :goto_2f
    add-int/lit8 v4, v4, 0x1

    .line 2312
    .line 2313
    goto :goto_2d

    .line 2314
    :cond_76
    :goto_30
    return-object v5

    .line 2315
    :pswitch_1a
    check-cast p0, Landroidx/camera/camera2/adapter/ZslControlImpl;

    .line 2316
    .line 2317
    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 2318
    .line 2319
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2320
    .line 2321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2322
    .line 2323
    .line 2324
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 2325
    .line 2326
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 2327
    .line 2328
    .line 2329
    move-result-object p0

    .line 2330
    if-eqz p0, :cond_77

    .line 2331
    .line 2332
    move-object v5, p0

    .line 2333
    check-cast v5, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 2334
    .line 2335
    goto :goto_31

    .line 2336
    :cond_77
    const-string p0, "Required value was null."

    .line 2337
    .line 2338
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2339
    .line 2340
    .line 2341
    :goto_31
    return-object v5

    .line 2342
    :pswitch_1b
    check-cast p0, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;

    .line 2343
    .line 2344
    iget-object p0, p0, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2345
    .line 2346
    new-instance v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    .line 2347
    .line 2348
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2349
    .line 2350
    .line 2351
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2352
    .line 2353
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 2354
    .line 2355
    return-object v0

    .line 2356
    :pswitch_1c
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    .line 2357
    .line 2358
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 2359
    .line 2360
    invoke-direct {v0, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 2361
    .line 2362
    .line 2363
    return-object v0

    .line 2364
    nop

    .line 2365
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
