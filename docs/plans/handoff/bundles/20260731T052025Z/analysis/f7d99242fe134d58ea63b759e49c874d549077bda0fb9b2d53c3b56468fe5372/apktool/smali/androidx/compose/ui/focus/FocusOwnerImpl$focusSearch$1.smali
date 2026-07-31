.class public final Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $onFound:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $source:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v6, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 18
    .line 19
    check-cast p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 20
    .line 21
    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    .line 22
    .line 23
    check-cast v5, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/16 v7, 0x8

    .line 42
    .line 43
    if-eq v0, v7, :cond_2

    .line 44
    .line 45
    iput-boolean v2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isDrawing:Z

    .line 46
    .line 47
    iget-object v0, v6, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 48
    .line 49
    instance-of v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    move-object v4, v0

    .line 54
    check-cast v4, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 55
    .line 56
    :cond_0
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iput-boolean v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isDrawing:Z

    .line 73
    .line 74
    :cond_2
    return-object v1

    .line 75
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 76
    .line 77
    move-object v0, p1

    .line 78
    check-cast v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 79
    .line 80
    check-cast v6, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 81
    .line 82
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getDragAndDropManager()Landroidx/compose/ui/draganddrop/DragAndDropManager;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    .line 93
    .line 94
    iget-object v1, v1, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->interestedTargets:Landroidx/collection/ArraySet;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    check-cast v5, Landroidx/camera/view/PreviewView$1;

    .line 103
    .line 104
    invoke-static {v5}, Landroidx/compose/ui/unit/IntRectKt;->getPositionInRoot(Landroidx/camera/view/PreviewView$1;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->access$contains-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropNode;J)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 115
    .line 116
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 117
    .line 118
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->CancelTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 122
    .line 123
    :goto_0
    return-object p0

    .line 124
    :pswitch_1
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    .line 125
    .line 126
    check-cast v6, Landroidx/compose/animation/EnterTransitionImpl;

    .line 127
    .line 128
    iget-object v0, v6, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 129
    .line 130
    check-cast v5, Landroidx/compose/animation/ExitTransitionImpl;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    if-eq p1, v2, :cond_6

    .line 139
    .line 140
    const/4 p0, 0x2

    .line 141
    if-ne p1, p0, :cond_5

    .line 142
    .line 143
    iget-object p0, v5, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 144
    .line 145
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 146
    .line 147
    if-eqz p0, :cond_4

    .line 148
    .line 149
    iget-wide p0, p0, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 150
    .line 151
    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 152
    .line 153
    invoke-direct {v4, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    iget-object p0, v0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 158
    .line 159
    if-eqz p0, :cond_9

    .line 160
    .line 161
    iget-wide p0, p0, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 162
    .line 163
    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 164
    .line 165
    invoke-direct {v4, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    move-object v4, p0

    .line 174
    check-cast v4, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_7
    iget-object p0, v0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 178
    .line 179
    if-eqz p0, :cond_8

    .line 180
    .line 181
    iget-wide p0, p0, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 182
    .line 183
    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 184
    .line 185
    invoke-direct {v4, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_8
    iget-object p0, v5, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 190
    .line 191
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 192
    .line 193
    if-eqz p0, :cond_9

    .line 194
    .line 195
    iget-wide p0, p0, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 196
    .line 197
    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 198
    .line 199
    invoke-direct {v4, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 200
    .line 201
    .line 202
    :cond_9
    :goto_1
    if-eqz v4, :cond_a

    .line 203
    .line 204
    iget-wide p0, v4, Landroidx/compose/ui/graphics/TransformOrigin;->packedValue:J

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_a
    sget-wide p0, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    .line 208
    .line 209
    :goto_2
    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 210
    .line 211
    invoke-direct {v4, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 212
    .line 213
    .line 214
    :goto_3
    return-object v4

    .line 215
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 216
    .line 217
    check-cast v6, Landroidx/compose/runtime/State;

    .line 218
    .line 219
    check-cast p0, Landroidx/compose/runtime/State;

    .line 220
    .line 221
    const/high16 v0, 0x3f800000    # 1.0f

    .line 222
    .line 223
    if-eqz p0, :cond_b

    .line 224
    .line 225
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    check-cast p0, Ljava/lang/Number;

    .line 230
    .line 231
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    goto :goto_4

    .line 236
    :cond_b
    move p0, v0

    .line 237
    :goto_4
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    .line 238
    .line 239
    .line 240
    if-eqz v6, :cond_c

    .line 241
    .line 242
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    check-cast p0, Ljava/lang/Number;

    .line 247
    .line 248
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    goto :goto_5

    .line 253
    :cond_c
    move p0, v0

    .line 254
    :goto_5
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleX(F)V

    .line 255
    .line 256
    .line 257
    if-eqz v6, :cond_d

    .line 258
    .line 259
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    check-cast p0, Ljava/lang/Number;

    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    :cond_d
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    .line 270
    .line 271
    .line 272
    check-cast v5, Landroidx/compose/runtime/State;

    .line 273
    .line 274
    if-eqz v5, :cond_e

    .line 275
    .line 276
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    check-cast p0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 281
    .line 282
    iget-wide v2, p0, Landroidx/compose/ui/graphics/TransformOrigin;->packedValue:J

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_e
    sget-wide v2, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    .line 286
    .line 287
    :goto_6
    invoke-virtual {p1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    .line 288
    .line 289
    .line 290
    return-object v1

    .line 291
    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 292
    .line 293
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 294
    .line 295
    check-cast v5, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 296
    .line 297
    new-instance p1, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 298
    .line 299
    invoke-direct {p1, p0, v6, v5, v3}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 300
    .line 301
    .line 302
    return-object p1

    .line 303
    :pswitch_4
    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 304
    .line 305
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 306
    .line 307
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-eqz p0, :cond_f

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_f
    check-cast v6, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 315
    .line 316
    iget-object p0, v6, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 317
    .line 318
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result p0

    .line 322
    if-nez p0, :cond_10

    .line 323
    .line 324
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 325
    .line 326
    invoke-interface {v5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    check-cast p0, Ljava/lang/Boolean;

    .line 331
    .line 332
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    goto :goto_8

    .line 341
    :cond_10
    const-string p0, "Focus search landed at the root."

    .line 342
    .line 343
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :goto_8
    return-object v4

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
