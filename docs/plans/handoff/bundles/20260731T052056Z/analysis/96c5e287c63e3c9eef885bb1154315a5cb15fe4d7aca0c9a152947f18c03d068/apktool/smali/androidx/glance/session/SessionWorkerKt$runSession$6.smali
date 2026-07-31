.class public final Landroidx/glance/session/SessionWorkerKt$runSession$6;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $frameClock:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_runSession:Ljava/lang/Object;

.field public final synthetic $timeouts:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/glance/session/SessionWorkerKt$runSession$6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/glance/session/SessionWorkerKt$runSession$6;->$this_runSession:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/glance/session/SessionWorkerKt$runSession$6;->$timeouts:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/glance/session/SessionWorkerKt$runSession$6;->$frameClock:Ljava/lang/Object;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/glance/session/SessionWorkerKt$runSession$6;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    iget-object v7, v0, Landroidx/glance/session/SessionWorkerKt$runSession$6;->$frameClock:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v8, v0, Landroidx/glance/session/SessionWorkerKt$runSession$6;->$timeouts:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/glance/session/SessionWorkerKt$runSession$6;->$this_runSession:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 23
    .line 24
    check-cast v0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 25
    .line 26
    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .line 27
    .line 28
    check-cast v7, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 29
    .line 30
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/16 v9, 0x8

    .line 47
    .line 48
    if-eq v2, v9, :cond_2

    .line 49
    .line 50
    iput-boolean v3, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isDrawing:Z

    .line 51
    .line 52
    iget-object v2, v8, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 53
    .line 54
    instance-of v3, v2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 55
    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    move-object v6, v2

    .line 59
    check-cast v6, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 60
    .line 61
    :cond_0
    if-eqz v6, :cond_1

    .line 62
    .line 63
    invoke-static {v1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iput-boolean v5, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isDrawing:Z

    .line 78
    .line 79
    :cond_2
    return-object v4

    .line 80
    :pswitch_0
    move-object/from16 v1, p1

    .line 81
    .line 82
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 83
    .line 84
    move-object v2, v0

    .line 85
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 86
    .line 87
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 88
    .line 89
    iget-object v5, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    .line 90
    .line 91
    check-cast v8, Landroidx/compose/ui/node/DrawModifierNode;

    .line 92
    .line 93
    iput-object v8, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    .line 94
    .line 95
    :try_start_0
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 124
    .line 125
    .line 126
    move-result-wide v9

    .line 127
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 134
    .line 135
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 136
    .line 137
    iget-object v11, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 138
    .line 139
    invoke-virtual {v11}, Lcom/caverock/androidsvg/SVG;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    iget-object v12, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 144
    .line 145
    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVG;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    iget-object v13, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 150
    .line 151
    invoke-virtual {v13}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    iget-object v14, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 156
    .line 157
    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 158
    .line 159
    .line 160
    move-result-wide v14

    .line 161
    move-object/from16 v16, v4

    .line 162
    .line 163
    iget-object v4, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 164
    .line 165
    move-object/from16 p0, v5

    .line 166
    .line 167
    :try_start_1
    iget-object v5, v4, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v5, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 170
    .line 171
    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v6}, Lcom/caverock/androidsvg/SVG;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v8}, Lcom/caverock/androidsvg/SVG;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v9, v10}, Lcom/caverock/androidsvg/SVG;->setSize-uvyYCjk(J)V

    .line 181
    .line 182
    .line 183
    iput-object v1, v4, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 184
    .line 185
    invoke-interface {v8}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .line 187
    .line 188
    :try_start_2
    invoke-interface {v7, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    .line 190
    .line 191
    :try_start_3
    invoke-interface {v8}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 192
    .line 193
    .line 194
    iget-object v0, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 195
    .line 196
    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVG;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVG;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v13}, Lcom/caverock/androidsvg/SVG;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v14, v15}, Lcom/caverock/androidsvg/SVG;->setSize-uvyYCjk(J)V

    .line 206
    .line 207
    .line 208
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    .line 210
    move-object/from16 v1, p0

    .line 211
    .line 212
    iput-object v1, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    .line 213
    .line 214
    return-object v16

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    move-object/from16 v1, p0

    .line 217
    .line 218
    goto :goto_0

    .line 219
    :catchall_1
    move-exception v0

    .line 220
    move-object/from16 v1, p0

    .line 221
    .line 222
    :try_start_4
    invoke-interface {v8}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 223
    .line 224
    .line 225
    iget-object v3, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 226
    .line 227
    invoke-virtual {v3, v11}, Lcom/caverock/androidsvg/SVG;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v12}, Lcom/caverock/androidsvg/SVG;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v13}, Lcom/caverock/androidsvg/SVG;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v14, v15}, Lcom/caverock/androidsvg/SVG;->setSize-uvyYCjk(J)V

    .line 237
    .line 238
    .line 239
    iput-object v5, v3, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 240
    .line 241
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 242
    :catchall_2
    move-exception v0

    .line 243
    goto :goto_0

    .line 244
    :catchall_3
    move-exception v0

    .line 245
    move-object v1, v5

    .line 246
    :goto_0
    iput-object v1, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    .line 247
    .line 248
    throw v0

    .line 249
    :pswitch_1
    move-object/from16 v1, p1

    .line 250
    .line 251
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 252
    .line 253
    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 254
    .line 255
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_3

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_3
    check-cast v8, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 263
    .line 264
    iget-object v0, v8, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 265
    .line 266
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_4

    .line 271
    .line 272
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 273
    .line 274
    invoke-interface {v7, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Ljava/lang/Boolean;

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    goto :goto_2

    .line 289
    :cond_4
    const-string v0, "Focus search landed at the root."

    .line 290
    .line 291
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :goto_2
    return-object v6

    .line 295
    :pswitch_2
    move-object/from16 v1, p1

    .line 296
    .line 297
    check-cast v1, Landroidx/compose/ui/node/TraversableNode;

    .line 298
    .line 299
    move-object v2, v1

    .line 300
    check-cast v2, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 301
    .line 302
    check-cast v8, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 303
    .line 304
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 309
    .line 310
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getDragAndDropManager()Landroidx/compose/ui/draganddrop/DragAndDropManager;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    check-cast v3, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    .line 315
    .line 316
    iget-object v3, v3, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->interestedTargets:Landroidx/collection/ArraySet;

    .line 317
    .line 318
    invoke-virtual {v3, v2}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_5

    .line 323
    .line 324
    check-cast v7, Landroidx/appcompat/widget/PopupMenu$1;

    .line 325
    .line 326
    invoke-static {v7}, Lkotlin/ResultKt;->getPositionInRoot(Landroidx/appcompat/widget/PopupMenu$1;)J

    .line 327
    .line 328
    .line 329
    move-result-wide v3

    .line 330
    invoke-static {v2, v3, v4}, Lcoil3/util/ContextsKt;->contains-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropNode;J)Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-eqz v2, :cond_5

    .line 335
    .line 336
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 337
    .line 338
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 339
    .line 340
    sget-object v0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->CancelTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_5
    sget-object v0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 344
    .line 345
    :goto_3
    return-object v0

    .line 346
    :pswitch_3
    move-object/from16 v1, p1

    .line 347
    .line 348
    check-cast v1, Landroidx/compose/animation/EnterExitState;

    .line 349
    .line 350
    check-cast v8, Landroidx/compose/animation/EnterTransitionImpl;

    .line 351
    .line 352
    iget-object v4, v8, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 353
    .line 354
    check-cast v7, Landroidx/compose/animation/ExitTransitionImpl;

    .line 355
    .line 356
    sget-object v5, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    aget v1, v5, v1

    .line 363
    .line 364
    if-eq v1, v3, :cond_a

    .line 365
    .line 366
    const/4 v0, 0x2

    .line 367
    if-eq v1, v0, :cond_8

    .line 368
    .line 369
    if-ne v1, v2, :cond_7

    .line 370
    .line 371
    iget-object v0, v7, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 372
    .line 373
    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 374
    .line 375
    if-eqz v0, :cond_6

    .line 376
    .line 377
    iget-wide v0, v0, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 378
    .line 379
    new-instance v6, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 380
    .line 381
    invoke-direct {v6, v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 382
    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_6
    iget-object v0, v4, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 386
    .line 387
    if-eqz v0, :cond_b

    .line 388
    .line 389
    iget-wide v0, v0, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 390
    .line 391
    new-instance v6, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 392
    .line 393
    invoke-direct {v6, v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 394
    .line 395
    .line 396
    goto :goto_4

    .line 397
    :cond_7
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_8
    iget-object v0, v4, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 402
    .line 403
    if-eqz v0, :cond_9

    .line 404
    .line 405
    iget-wide v0, v0, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 406
    .line 407
    new-instance v6, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 408
    .line 409
    invoke-direct {v6, v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 410
    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_9
    iget-object v0, v7, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 414
    .line 415
    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 416
    .line 417
    if-eqz v0, :cond_b

    .line 418
    .line 419
    iget-wide v0, v0, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 420
    .line 421
    new-instance v6, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 422
    .line 423
    invoke-direct {v6, v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 424
    .line 425
    .line 426
    goto :goto_4

    .line 427
    :cond_a
    move-object v6, v0

    .line 428
    check-cast v6, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 429
    .line 430
    :cond_b
    :goto_4
    if-eqz v6, :cond_c

    .line 431
    .line 432
    iget-wide v0, v6, Landroidx/compose/ui/graphics/TransformOrigin;->packedValue:J

    .line 433
    .line 434
    goto :goto_5

    .line 435
    :cond_c
    sget-wide v0, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    .line 436
    .line 437
    :goto_5
    new-instance v6, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 438
    .line 439
    invoke-direct {v6, v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 440
    .line 441
    .line 442
    :goto_6
    return-object v6

    .line 443
    :pswitch_4
    move-object/from16 v16, v4

    .line 444
    .line 445
    move-object/from16 v1, p1

    .line 446
    .line 447
    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 448
    .line 449
    check-cast v8, Landroidx/compose/runtime/State;

    .line 450
    .line 451
    check-cast v0, Landroidx/compose/runtime/State;

    .line 452
    .line 453
    const/high16 v2, 0x3f800000    # 1.0f

    .line 454
    .line 455
    if-eqz v0, :cond_d

    .line 456
    .line 457
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    check-cast v0, Ljava/lang/Number;

    .line 462
    .line 463
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    goto :goto_7

    .line 468
    :cond_d
    move v0, v2

    .line 469
    :goto_7
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    .line 470
    .line 471
    .line 472
    if-eqz v8, :cond_e

    .line 473
    .line 474
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Ljava/lang/Number;

    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    goto :goto_8

    .line 485
    :cond_e
    move v0, v2

    .line 486
    :goto_8
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleX(F)V

    .line 487
    .line 488
    .line 489
    if-eqz v8, :cond_f

    .line 490
    .line 491
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    check-cast v0, Ljava/lang/Number;

    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    :cond_f
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    .line 502
    .line 503
    .line 504
    check-cast v7, Landroidx/compose/runtime/State;

    .line 505
    .line 506
    if-eqz v7, :cond_10

    .line 507
    .line 508
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    check-cast v0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 513
    .line 514
    iget-wide v2, v0, Landroidx/compose/ui/graphics/TransformOrigin;->packedValue:J

    .line 515
    .line 516
    goto :goto_9

    .line 517
    :cond_10
    sget-wide v2, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    .line 518
    .line 519
    :goto_9
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    .line 520
    .line 521
    .line 522
    return-object v16

    .line 523
    :pswitch_5
    move-object/from16 v1, p1

    .line 524
    .line 525
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 526
    .line 527
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 528
    .line 529
    check-cast v7, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 530
    .line 531
    new-instance v1, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 532
    .line 533
    invoke-direct {v1, v0, v8, v7, v5}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 534
    .line 535
    .line 536
    return-object v1

    .line 537
    :pswitch_6
    move-object/from16 v16, v4

    .line 538
    .line 539
    check-cast v0, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 540
    .line 541
    invoke-virtual {v0}, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;->getTimeLeft-UwyO8pc()J

    .line 542
    .line 543
    .line 544
    move-result-wide v3

    .line 545
    check-cast v8, Landroidx/glance/session/TimeoutOptions;

    .line 546
    .line 547
    iget-wide v9, v8, Landroidx/glance/session/TimeoutOptions;->additionalTime:J

    .line 548
    .line 549
    invoke-static {v3, v4, v9, v10}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    if-gez v1, :cond_15

    .line 554
    .line 555
    iget-wide v3, v8, Landroidx/glance/session/TimeoutOptions;->additionalTime:J

    .line 556
    .line 557
    iget-object v1, v0, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;->deadline:Ljava/util/concurrent/atomic/AtomicReference;

    .line 558
    .line 559
    :goto_a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v8

    .line 563
    move-object v9, v8

    .line 564
    check-cast v9, Ljava/lang/Long;

    .line 565
    .line 566
    if-eqz v9, :cond_14

    .line 567
    .line 568
    const-wide/16 v10, 0x0

    .line 569
    .line 570
    cmp-long v10, v3, v10

    .line 571
    .line 572
    if-lez v10, :cond_13

    .line 573
    .line 574
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 575
    .line 576
    .line 577
    move-result-wide v9

    .line 578
    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    .line 579
    .line 580
    .line 581
    move-result-wide v11

    .line 582
    add-long/2addr v11, v9

    .line 583
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 584
    .line 585
    .line 586
    move-result-object v9

    .line 587
    :cond_11
    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    move-result v10

    .line 591
    if-eqz v10, :cond_12

    .line 592
    .line 593
    goto :goto_c

    .line 594
    :cond_12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v10

    .line 598
    if-eq v10, v8, :cond_11

    .line 599
    .line 600
    goto :goto_a

    .line 601
    :cond_13
    const-string v0, "Cannot call addTime with a negative duration"

    .line 602
    .line 603
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    :goto_b
    move-object v4, v6

    .line 607
    goto :goto_d

    .line 608
    :cond_14
    const-string v0, "Start the timer with startTimer before calling addTime"

    .line 609
    .line 610
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    goto :goto_b

    .line 614
    :cond_15
    :goto_c
    new-instance v1, Landroidx/glance/session/SessionWorkerKt$runSession$6$1;

    .line 615
    .line 616
    check-cast v7, Landroidx/glance/session/InteractiveFrameClock;

    .line 617
    .line 618
    invoke-direct {v1, v7, v6, v5}, Landroidx/glance/session/SessionWorkerKt$runSession$6$1;-><init>(Landroidx/glance/session/InteractiveFrameClock;Lkotlin/coroutines/Continuation;I)V

    .line 619
    .line 620
    .line 621
    invoke-static {v0, v6, v6, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 622
    .line 623
    .line 624
    move-object/from16 v4, v16

    .line 625
    .line 626
    :goto_d
    return-object v4

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
