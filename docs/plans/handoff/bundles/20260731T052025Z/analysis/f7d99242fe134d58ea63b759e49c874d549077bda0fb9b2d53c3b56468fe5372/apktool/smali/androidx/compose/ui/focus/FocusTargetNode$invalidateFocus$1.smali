.class public final Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $focusProperties:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;->$focusProperties:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;->$focusProperties:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v5, p0, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;->$focusProperties:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    check-cast v5, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;

    .line 18
    .line 19
    sget-object v0, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 20
    .line 21
    invoke-static {v5, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 26
    .line 27
    return-object v4

    .line 28
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    .line 37
    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v3, p0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_0
    check-cast v5, Landroidx/compose/ui/node/NodeCoordinator;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v5, v3

    .line 55
    :goto_1
    if-eqz v5, :cond_3

    .line 56
    .line 57
    iget-wide v0, v5, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 58
    .line 59
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->toSize-ozmzZPI(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    const-wide/16 v2, 0x0

    .line 64
    .line 65
    invoke-static {v2, v3, v0, v1}, Lorg/slf4j/helpers/Util;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    :cond_3
    :goto_2
    return-object v3

    .line 70
    :pswitch_1
    check-cast p0, Landroidx/lifecycle/Lifecycle;

    .line 71
    .line 72
    check-cast v5, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    invoke-virtual {p0, v5}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 75
    .line 76
    .line 77
    return-object v4

    .line 78
    :pswitch_2
    check-cast p0, Landroidx/compose/ui/platform/AbstractComposeView;

    .line 79
    .line 80
    check-cast v5, Landroidx/core/view/insets/SystemBarStateMonitor$3;

    .line 81
    .line 82
    invoke-virtual {p0, v5}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 83
    .line 84
    .line 85
    return-object v4

    .line 86
    :pswitch_3
    check-cast v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 87
    .line 88
    check-cast p0, Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 89
    .line 90
    iget-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 91
    .line 92
    iget-object v1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 93
    .line 94
    iget-object v2, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    .line 95
    .line 96
    iget-object v3, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    iget-object v7, v0, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/functions/Function0;

    .line 104
    .line 105
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Ljava/lang/Number;

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    sub-float/2addr v7, v2

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    move v7, v6

    .line 122
    :goto_3
    if-eqz v1, :cond_5

    .line 123
    .line 124
    if-eqz v3, :cond_5

    .line 125
    .line 126
    iget-object v2, v1, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/functions/Function0;

    .line 127
    .line 128
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/lang/Number;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    sub-float/2addr v2, v3

    .line 143
    goto :goto_4

    .line 144
    :cond_5
    move v2, v6

    .line 145
    :goto_4
    cmpg-float v3, v7, v6

    .line 146
    .line 147
    if-nez v3, :cond_6

    .line 148
    .line 149
    cmpg-float v2, v2, v6

    .line 150
    .line 151
    if-nez v2, :cond_6

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_6
    iget v2, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    .line 155
    .line 156
    invoke-virtual {v5, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    iget v6, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 165
    .line 166
    invoke-virtual {v3, v6}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 171
    .line 172
    if-eqz v3, :cond_7

    .line 173
    .line 174
    :try_start_0
    iget-object v6, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 175
    .line 176
    if-eqz v6, :cond_7

    .line 177
    .line 178
    invoke-virtual {v5, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v6, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    .line 185
    :catch_0
    :cond_7
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    iget v6, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 190
    .line 191
    invoke-virtual {v3, v6}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 196
    .line 197
    if-eqz v3, :cond_8

    .line 198
    .line 199
    :try_start_1
    iget-object v6, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 200
    .line 201
    if-eqz v6, :cond_8

    .line 202
    .line 203
    invoke-virtual {v5, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v6, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    .line 209
    .line 210
    :catch_1
    :cond_8
    iget-object v3, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 211
    .line 212
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v3, v2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 224
    .line 225
    if-eqz v3, :cond_b

    .line 226
    .line 227
    iget-object v3, v3, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 228
    .line 229
    if-eqz v3, :cond_b

    .line 230
    .line 231
    iget-object v3, v3, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 232
    .line 233
    if-eqz v3, :cond_b

    .line 234
    .line 235
    if-eqz v0, :cond_9

    .line 236
    .line 237
    iget-object v6, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    .line 238
    .line 239
    invoke-virtual {v6, v2, v0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_9
    if-eqz v1, :cond_a

    .line 243
    .line 244
    iget-object v6, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    .line 245
    .line 246
    invoke-virtual {v6, v2, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_a
    invoke-virtual {v5, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 250
    .line 251
    .line 252
    :cond_b
    :goto_5
    if-eqz v0, :cond_c

    .line 253
    .line 254
    iget-object v0, v0, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/functions/Function0;

    .line 255
    .line 256
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Ljava/lang/Float;

    .line 261
    .line 262
    iput-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    .line 263
    .line 264
    :cond_c
    if-eqz v1, :cond_d

    .line 265
    .line 266
    iget-object v0, v1, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/functions/Function0;

    .line 267
    .line 268
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Ljava/lang/Float;

    .line 273
    .line 274
    iput-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    .line 275
    .line 276
    :cond_d
    return-object v4

    .line 277
    :pswitch_4
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 278
    .line 279
    check-cast v5, Landroid/view/KeyEvent;

    .line 280
    .line 281
    invoke-static {p0, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->access$dispatchKeyEvent$s408734394(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/KeyEvent;)Z

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    return-object p0

    .line 290
    :pswitch_5
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 291
    .line 292
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 293
    .line 294
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    check-cast v5, Landroidx/compose/ui/node/NodeCoordinator;

    .line 298
    .line 299
    iget-object p0, v5, Landroidx/compose/ui/node/NodeCoordinator;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 300
    .line 301
    iget-object v3, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 302
    .line 303
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    iget-boolean v3, v5, Landroidx/compose/ui/node/NodeCoordinator;->lastClip:Z

    .line 308
    .line 309
    iget-boolean v6, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->clip:Z

    .line 310
    .line 311
    if-eq v3, v6, :cond_e

    .line 312
    .line 313
    move v1, v2

    .line 314
    :cond_e
    if-eqz p0, :cond_f

    .line 315
    .line 316
    if-eqz v1, :cond_11

    .line 317
    .line 318
    :cond_f
    iget-object v3, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 319
    .line 320
    iput-object v3, v5, Landroidx/compose/ui/node/NodeCoordinator;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 321
    .line 322
    iput-boolean v6, v5, Landroidx/compose/ui/node/NodeCoordinator;->lastClip:Z

    .line 323
    .line 324
    iget-boolean v3, v5, Landroidx/compose/ui/node/NodeCoordinator;->wasLayerBlockInvoked:Z

    .line 325
    .line 326
    if-eqz v3, :cond_11

    .line 327
    .line 328
    if-nez v1, :cond_10

    .line 329
    .line 330
    if-eqz v6, :cond_11

    .line 331
    .line 332
    if-nez p0, :cond_11

    .line 333
    .line 334
    :cond_10
    iget-object p0, v5, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 335
    .line 336
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui()V

    .line 337
    .line 338
    .line 339
    :cond_11
    iput-boolean v2, v5, Landroidx/compose/ui/node/NodeCoordinator;->wasLayerBlockInvoked:Z

    .line 340
    .line 341
    iget-object p0, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 342
    .line 343
    iget-wide v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    .line 344
    .line 345
    iget-object v3, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 346
    .line 347
    iget-object v5, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    .line 348
    .line 349
    invoke-interface {p0, v1, v2, v3, v5}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    iput-object p0, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/ColorKt;

    .line 354
    .line 355
    return-object v4

    .line 356
    :pswitch_6
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 357
    .line 358
    iget-object v0, v5, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 359
    .line 360
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 361
    .line 362
    iget-object v5, v0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    .line 365
    .line 366
    iget v5, v5, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 367
    .line 368
    and-int/lit8 v5, v5, 0x8

    .line 369
    .line 370
    if-eqz v5, :cond_1c

    .line 371
    .line 372
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    .line 375
    .line 376
    :goto_6
    if-eqz v0, :cond_1c

    .line 377
    .line 378
    iget v5, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 379
    .line 380
    and-int/lit8 v5, v5, 0x8

    .line 381
    .line 382
    if-eqz v5, :cond_1b

    .line 383
    .line 384
    move-object v5, v0

    .line 385
    move-object v6, v3

    .line 386
    :goto_7
    if-eqz v5, :cond_1b

    .line 387
    .line 388
    instance-of v7, v5, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 389
    .line 390
    if-eqz v7, :cond_14

    .line 391
    .line 392
    check-cast v5, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 393
    .line 394
    invoke-interface {v5}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldClearDescendantSemantics()Z

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    if-eqz v7, :cond_12

    .line 399
    .line 400
    new-instance v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 401
    .line 402
    invoke-direct {v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 403
    .line 404
    .line 405
    iput-object v7, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 406
    .line 407
    iput-boolean v2, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    .line 408
    .line 409
    :cond_12
    invoke-interface {v5}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldMergeDescendantSemantics()Z

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    if-eqz v7, :cond_13

    .line 414
    .line 415
    iget-object v7, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 418
    .line 419
    iput-boolean v2, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 420
    .line 421
    :cond_13
    iget-object v7, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v7, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 424
    .line 425
    invoke-interface {v5, v7}, Landroidx/compose/ui/node/SemanticsModifierNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 426
    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_14
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 430
    .line 431
    and-int/lit8 v7, v7, 0x8

    .line 432
    .line 433
    if-eqz v7, :cond_1a

    .line 434
    .line 435
    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 436
    .line 437
    if-eqz v7, :cond_1a

    .line 438
    .line 439
    move-object v7, v5

    .line 440
    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 441
    .line 442
    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 443
    .line 444
    move v8, v1

    .line 445
    :goto_8
    if-eqz v7, :cond_19

    .line 446
    .line 447
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 448
    .line 449
    and-int/lit8 v9, v9, 0x8

    .line 450
    .line 451
    if-eqz v9, :cond_18

    .line 452
    .line 453
    add-int/lit8 v8, v8, 0x1

    .line 454
    .line 455
    if-ne v8, v2, :cond_15

    .line 456
    .line 457
    move-object v5, v7

    .line 458
    goto :goto_9

    .line 459
    :cond_15
    if-nez v6, :cond_16

    .line 460
    .line 461
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 462
    .line 463
    const/16 v9, 0x10

    .line 464
    .line 465
    new-array v9, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 466
    .line 467
    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    :cond_16
    if-eqz v5, :cond_17

    .line 471
    .line 472
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    move-object v5, v3

    .line 476
    :cond_17
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    :cond_18
    :goto_9
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_19
    if-ne v8, v2, :cond_1a

    .line 483
    .line 484
    goto :goto_7

    .line 485
    :cond_1a
    :goto_a
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    goto :goto_7

    .line 490
    :cond_1b
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 491
    .line 492
    goto :goto_6

    .line 493
    :cond_1c
    return-object v4

    .line 494
    :pswitch_7
    check-cast p0, Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 495
    .line 496
    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    .line 497
    .line 498
    invoke-virtual {p0, v5}, Landroidx/compose/ui/input/pointer/HitPathTracker;->removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 499
    .line 500
    .line 501
    return-object v4

    .line 502
    :pswitch_8
    check-cast p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    .line 503
    .line 504
    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->block:Lkotlin/jvm/functions/Function1;

    .line 505
    .line 506
    check-cast v5, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 507
    .line 508
    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    return-object v4

    .line 512
    :pswitch_9
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 513
    .line 514
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 515
    .line 516
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 521
    .line 522
    return-object v4

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
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
