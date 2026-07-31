.class public final Landroidx/compose/foundation/StretchOverscrollNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;


# instance fields
.field public _renderNode:Landroid/graphics/RenderNode;

.field public final edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

.field public final overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/StretchOverscrollNode;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/foundation/StretchOverscrollNode;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 23
    .line 24
    .line 25
    return p0
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 8
    .line 9
    invoke-virtual {v3}, Lorg/acra/util/ProcessFinisher;->getSize-NH-jbRc()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget-object v5, v0, Landroidx/compose/foundation/StretchOverscrollNode;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 14
    .line 15
    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->updateSize-uvyYCjk$foundation(J)V

    .line 16
    .line 17
    .line 18
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 19
    .line 20
    invoke-virtual {v3}, Lorg/acra/util/ProcessFinisher;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v4, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 34
    .line 35
    invoke-virtual {v4}, Lorg/acra/util/ProcessFinisher;->getSize-NH-jbRc()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    iget-object v7, v0, Landroidx/compose/foundation/StretchOverscrollNode;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 54
    .line 55
    if-nez v6, :cond_9

    .line 56
    .line 57
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 90
    .line 91
    .line 92
    :cond_5
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 97
    .line 98
    .line 99
    :cond_6
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 104
    .line 105
    .line 106
    :cond_7
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 111
    .line 112
    .line 113
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_9
    const/high16 v6, 0x41f00000    # 30.0f

    .line 118
    .line 119
    invoke-virtual {v1, v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    .line 124
    .line 125
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    const/4 v10, 0x0

    .line 130
    if-nez v8, :cond_b

    .line 131
    .line 132
    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 133
    .line 134
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-nez v8, :cond_b

    .line 139
    .line 140
    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 141
    .line 142
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-nez v8, :cond_b

    .line 147
    .line 148
    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 149
    .line 150
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-eqz v8, :cond_a

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_a
    move v8, v10

    .line 158
    goto :goto_1

    .line 159
    :cond_b
    :goto_0
    const/4 v8, 0x1

    .line 160
    :goto_1
    iget-object v11, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    .line 161
    .line 162
    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    if-nez v11, :cond_d

    .line 167
    .line 168
    iget-object v11, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 169
    .line 170
    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    if-nez v11, :cond_d

    .line 175
    .line 176
    iget-object v11, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    .line 177
    .line 178
    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-nez v11, :cond_d

    .line 183
    .line 184
    iget-object v11, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 185
    .line 186
    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    if-eqz v11, :cond_c

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_c
    move v11, v10

    .line 194
    goto :goto_3

    .line 195
    :cond_d
    :goto_2
    const/4 v11, 0x1

    .line 196
    :goto_3
    if-eqz v8, :cond_e

    .line 197
    .line 198
    if-eqz v11, :cond_e

    .line 199
    .line 200
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 205
    .line 206
    .line 207
    move-result v13

    .line 208
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 209
    .line 210
    .line 211
    move-result v14

    .line 212
    invoke-virtual {v12, v10, v10, v13, v14}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_e
    if-eqz v8, :cond_f

    .line 217
    .line 218
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 223
    .line 224
    .line 225
    move-result v13

    .line 226
    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    mul-int/lit8 v14, v14, 0x2

    .line 231
    .line 232
    add-int/2addr v14, v13

    .line 233
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    invoke-virtual {v12, v10, v10, v14, v13}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_f
    if-eqz v11, :cond_34

    .line 242
    .line 243
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 248
    .line 249
    .line 250
    move-result v13

    .line 251
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    mul-int/lit8 v15, v15, 0x2

    .line 260
    .line 261
    add-int/2addr v15, v14

    .line 262
    invoke-virtual {v12, v10, v10, v13, v15}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 263
    .line 264
    .line 265
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    invoke-virtual {v12}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    iget-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 274
    .line 275
    invoke-static {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    const/high16 v14, 0x42b40000    # 90.0f

    .line 280
    .line 281
    sget-object v15, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 282
    .line 283
    if-eqz v13, :cond_11

    .line 284
    .line 285
    iget-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 286
    .line 287
    if-nez v13, :cond_10

    .line 288
    .line 289
    invoke-virtual {v7, v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    iput-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 294
    .line 295
    :cond_10
    invoke-static {v14, v13, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 296
    .line 297
    .line 298
    invoke-virtual {v13}, Landroid/widget/EdgeEffect;->finish()V

    .line 299
    .line 300
    .line 301
    :cond_11
    iget-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    .line 302
    .line 303
    invoke-static {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    const/high16 v9, 0x43870000    # 270.0f

    .line 308
    .line 309
    const/high16 v17, 0x3f800000    # 1.0f

    .line 310
    .line 311
    const-wide v18, 0xffffffffL

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    const/16 v14, 0x1f

    .line 317
    .line 318
    if-eqz v13, :cond_16

    .line 319
    .line 320
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    .line 321
    .line 322
    .line 323
    move-result-object v13

    .line 324
    invoke-static {v9, v13, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 325
    .line 326
    .line 327
    move-result v20

    .line 328
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    .line 329
    .line 330
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    if-eqz v9, :cond_15

    .line 335
    .line 336
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation()J

    .line 337
    .line 338
    .line 339
    move-result-wide v21

    .line 340
    move v9, v11

    .line 341
    and-long v10, v21, v18

    .line 342
    .line 343
    long-to-int v10, v10

    .line 344
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 345
    .line 346
    .line 347
    move-result v10

    .line 348
    iget-object v11, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 349
    .line 350
    if-nez v11, :cond_12

    .line 351
    .line 352
    invoke-virtual {v7, v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    iput-object v11, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 357
    .line 358
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 359
    .line 360
    if-lt v0, v14, :cond_13

    .line 361
    .line 362
    invoke-static {v13}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 363
    .line 364
    .line 365
    move-result v13

    .line 366
    goto :goto_5

    .line 367
    :cond_13
    const/4 v13, 0x0

    .line 368
    :goto_5
    sub-float v10, v17, v10

    .line 369
    .line 370
    if-lt v0, v14, :cond_14

    .line 371
    .line 372
    invoke-static {v11, v13, v10}, Landroidx/compose/foundation/Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 373
    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_14
    invoke-virtual {v11, v13, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 377
    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_15
    move v9, v11

    .line 381
    goto :goto_6

    .line 382
    :cond_16
    move v9, v11

    .line 383
    const/16 v20, 0x0

    .line 384
    .line 385
    :goto_6
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 386
    .line 387
    invoke-static {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    const/high16 v10, 0x43340000    # 180.0f

    .line 392
    .line 393
    sget-object v11, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 394
    .line 395
    if-eqz v0, :cond_18

    .line 396
    .line 397
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 398
    .line 399
    if-nez v0, :cond_17

    .line 400
    .line 401
    invoke-virtual {v7, v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    iput-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 406
    .line 407
    :cond_17
    invoke-static {v10, v0, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 411
    .line 412
    .line 413
    :cond_18
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    .line 414
    .line 415
    invoke-static {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-eqz v0, :cond_1f

    .line 420
    .line 421
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    const/4 v13, 0x0

    .line 426
    const/16 v21, 0x20

    .line 427
    .line 428
    invoke-static {v13, v0, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 429
    .line 430
    .line 431
    move-result v22

    .line 432
    if-nez v22, :cond_1a

    .line 433
    .line 434
    if-eqz v20, :cond_19

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :cond_19
    const/16 v20, 0x0

    .line 438
    .line 439
    goto :goto_8

    .line 440
    :cond_1a
    :goto_7
    const/16 v20, 0x1

    .line 441
    .line 442
    :goto_8
    iget-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    .line 443
    .line 444
    invoke-static {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 445
    .line 446
    .line 447
    move-result v13

    .line 448
    if-eqz v13, :cond_1e

    .line 449
    .line 450
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation()J

    .line 451
    .line 452
    .line 453
    move-result-wide v23

    .line 454
    move-object v13, v15

    .line 455
    shr-long v14, v23, v21

    .line 456
    .line 457
    long-to-int v14, v14

    .line 458
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 459
    .line 460
    .line 461
    move-result v14

    .line 462
    iget-object v15, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 463
    .line 464
    if-nez v15, :cond_1b

    .line 465
    .line 466
    invoke-virtual {v7, v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 467
    .line 468
    .line 469
    move-result-object v15

    .line 470
    iput-object v15, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 471
    .line 472
    :cond_1b
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 473
    .line 474
    move-object/from16 v24, v0

    .line 475
    .line 476
    const/16 v0, 0x1f

    .line 477
    .line 478
    if-lt v10, v0, :cond_1c

    .line 479
    .line 480
    invoke-static/range {v24 .. v24}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 481
    .line 482
    .line 483
    move-result v22

    .line 484
    move-object/from16 v24, v4

    .line 485
    .line 486
    move/from16 v4, v22

    .line 487
    .line 488
    goto :goto_9

    .line 489
    :cond_1c
    move-object/from16 v24, v4

    .line 490
    .line 491
    const/4 v4, 0x0

    .line 492
    :goto_9
    if-lt v10, v0, :cond_1d

    .line 493
    .line 494
    invoke-static {v15, v4, v14}, Landroidx/compose/foundation/Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 495
    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_1d
    invoke-virtual {v15, v4, v14}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 499
    .line 500
    .line 501
    goto :goto_a

    .line 502
    :cond_1e
    move-object/from16 v24, v4

    .line 503
    .line 504
    move-object v13, v15

    .line 505
    goto :goto_a

    .line 506
    :cond_1f
    move-object/from16 v24, v4

    .line 507
    .line 508
    move-object v13, v15

    .line 509
    const/16 v21, 0x20

    .line 510
    .line 511
    :goto_a
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 512
    .line 513
    invoke-static {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_21

    .line 518
    .line 519
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 520
    .line 521
    if-nez v0, :cond_20

    .line 522
    .line 523
    invoke-virtual {v7, v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iput-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 528
    .line 529
    :cond_20
    const/high16 v4, 0x43870000    # 270.0f

    .line 530
    .line 531
    invoke-static {v4, v0, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 535
    .line 536
    .line 537
    :cond_21
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    .line 538
    .line 539
    invoke-static {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_27

    .line 544
    .line 545
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    const/high16 v4, 0x42b40000    # 90.0f

    .line 550
    .line 551
    invoke-static {v4, v0, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    if-nez v4, :cond_23

    .line 556
    .line 557
    if-eqz v20, :cond_22

    .line 558
    .line 559
    goto :goto_b

    .line 560
    :cond_22
    const/16 v20, 0x0

    .line 561
    .line 562
    goto :goto_c

    .line 563
    :cond_23
    :goto_b
    const/16 v20, 0x1

    .line 564
    .line 565
    :goto_c
    iget-object v4, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    .line 566
    .line 567
    invoke-static {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    if-eqz v4, :cond_27

    .line 572
    .line 573
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation()J

    .line 574
    .line 575
    .line 576
    move-result-wide v14

    .line 577
    and-long v14, v14, v18

    .line 578
    .line 579
    long-to-int v4, v14

    .line 580
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 581
    .line 582
    .line 583
    move-result v4

    .line 584
    iget-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 585
    .line 586
    if-nez v10, :cond_24

    .line 587
    .line 588
    invoke-virtual {v7, v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 589
    .line 590
    .line 591
    move-result-object v10

    .line 592
    iput-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 593
    .line 594
    :cond_24
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 595
    .line 596
    const/16 v14, 0x1f

    .line 597
    .line 598
    if-lt v13, v14, :cond_25

    .line 599
    .line 600
    invoke-static {v0}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    goto :goto_d

    .line 605
    :cond_25
    const/4 v0, 0x0

    .line 606
    :goto_d
    if-lt v13, v14, :cond_26

    .line 607
    .line 608
    invoke-static {v10, v0, v4}, Landroidx/compose/foundation/Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 609
    .line 610
    .line 611
    goto :goto_e

    .line 612
    :cond_26
    invoke-virtual {v10, v0, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 613
    .line 614
    .line 615
    :cond_27
    :goto_e
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 616
    .line 617
    invoke-static {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    if-eqz v0, :cond_29

    .line 622
    .line 623
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 624
    .line 625
    if-nez v0, :cond_28

    .line 626
    .line 627
    invoke-virtual {v7, v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    iput-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 632
    .line 633
    :cond_28
    const/4 v13, 0x0

    .line 634
    invoke-static {v13, v0, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 638
    .line 639
    .line 640
    goto :goto_f

    .line 641
    :cond_29
    const/4 v13, 0x0

    .line 642
    :goto_f
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 643
    .line 644
    invoke-static {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-eqz v0, :cond_30

    .line 649
    .line 650
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    const/high16 v4, 0x43340000    # 180.0f

    .line 655
    .line 656
    invoke-static {v4, v0, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    if-nez v4, :cond_2b

    .line 661
    .line 662
    if-eqz v20, :cond_2a

    .line 663
    .line 664
    goto :goto_10

    .line 665
    :cond_2a
    const/16 v16, 0x0

    .line 666
    .line 667
    goto :goto_11

    .line 668
    :cond_2b
    :goto_10
    const/16 v16, 0x1

    .line 669
    .line 670
    :goto_11
    iget-object v4, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 671
    .line 672
    invoke-static {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    if-eqz v4, :cond_2f

    .line 677
    .line 678
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation()J

    .line 679
    .line 680
    .line 681
    move-result-wide v14

    .line 682
    shr-long v14, v14, v21

    .line 683
    .line 684
    long-to-int v4, v14

    .line 685
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    iget-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 690
    .line 691
    if-nez v10, :cond_2c

    .line 692
    .line 693
    invoke-virtual {v7, v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 694
    .line 695
    .line 696
    move-result-object v10

    .line 697
    iput-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 698
    .line 699
    :cond_2c
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 700
    .line 701
    const/16 v14, 0x1f

    .line 702
    .line 703
    if-lt v7, v14, :cond_2d

    .line 704
    .line 705
    invoke-static {v0}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    goto :goto_12

    .line 710
    :cond_2d
    move v0, v13

    .line 711
    :goto_12
    sub-float v4, v17, v4

    .line 712
    .line 713
    if-lt v7, v14, :cond_2e

    .line 714
    .line 715
    invoke-static {v10, v0, v4}, Landroidx/compose/foundation/Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 716
    .line 717
    .line 718
    goto :goto_13

    .line 719
    :cond_2e
    invoke-virtual {v10, v0, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 720
    .line 721
    .line 722
    :cond_2f
    :goto_13
    move/from16 v20, v16

    .line 723
    .line 724
    :cond_30
    if-eqz v20, :cond_31

    .line 725
    .line 726
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation()V

    .line 727
    .line 728
    .line 729
    :cond_31
    if-eqz v9, :cond_32

    .line 730
    .line 731
    move v4, v13

    .line 732
    goto :goto_14

    .line 733
    :cond_32
    move v4, v6

    .line 734
    :goto_14
    if-eqz v8, :cond_33

    .line 735
    .line 736
    move v6, v13

    .line 737
    :cond_33
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    new-instance v5, Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 742
    .line 743
    invoke-direct {v5}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    .line 744
    .line 745
    .line 746
    iput-object v12, v5, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 747
    .line 748
    invoke-virtual/range {v24 .. v24}, Lorg/acra/util/ProcessFinisher;->getSize-NH-jbRc()J

    .line 749
    .line 750
    .line 751
    move-result-wide v7

    .line 752
    iget-object v9, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 753
    .line 754
    iget-object v10, v9, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 755
    .line 756
    check-cast v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 757
    .line 758
    iget-object v10, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 759
    .line 760
    iget-object v11, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 761
    .line 762
    iget-object v10, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 763
    .line 764
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 765
    .line 766
    .line 767
    move-result-object v9

    .line 768
    iget-object v12, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 769
    .line 770
    invoke-virtual {v12}, Lorg/acra/util/ProcessFinisher;->getSize-NH-jbRc()J

    .line 771
    .line 772
    .line 773
    move-result-wide v12

    .line 774
    iget-object v14, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 775
    .line 776
    iget-object v15, v14, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v15, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 779
    .line 780
    invoke-virtual {v14, v1}, Lorg/acra/util/ProcessFinisher;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v14, v0}, Lorg/acra/util/ProcessFinisher;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v14, v5}, Lorg/acra/util/ProcessFinisher;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v14, v7, v8}, Lorg/acra/util/ProcessFinisher;->setSize-uvyYCjk(J)V

    .line 790
    .line 791
    .line 792
    const/4 v0, 0x0

    .line 793
    iput-object v0, v14, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 794
    .line 795
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    .line 796
    .line 797
    .line 798
    :try_start_0
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 799
    .line 800
    iget-object v0, v0, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 803
    .line 804
    invoke-virtual {v0, v4, v6}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    .line 806
    .line 807
    :try_start_1
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 808
    .line 809
    .line 810
    :try_start_2
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 811
    .line 812
    iget-object v0, v0, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 815
    .line 816
    neg-float v1, v4

    .line 817
    neg-float v4, v6

    .line 818
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 819
    .line 820
    .line 821
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    .line 822
    .line 823
    .line 824
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 825
    .line 826
    invoke-virtual {v0, v11}, Lorg/acra/util/ProcessFinisher;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v0, v10}, Lorg/acra/util/ProcessFinisher;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v0, v9}, Lorg/acra/util/ProcessFinisher;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v0, v12, v13}, Lorg/acra/util/ProcessFinisher;->setSize-uvyYCjk(J)V

    .line 836
    .line 837
    .line 838
    iput-object v15, v0, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 839
    .line 840
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 848
    .line 849
    .line 850
    move-result v0

    .line 851
    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 852
    .line 853
    .line 854
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 862
    .line 863
    .line 864
    return-void

    .line 865
    :catchall_0
    move-exception v0

    .line 866
    goto :goto_15

    .line 867
    :catchall_1
    move-exception v0

    .line 868
    :try_start_3
    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 869
    .line 870
    iget-object v1, v1, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 871
    .line 872
    check-cast v1, Landroidx/appcompat/widget/PopupMenu$1;

    .line 873
    .line 874
    neg-float v3, v4

    .line 875
    neg-float v4, v6

    .line 876
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 877
    .line 878
    .line 879
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 880
    :goto_15
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    .line 881
    .line 882
    .line 883
    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 884
    .line 885
    invoke-virtual {v1, v11}, Lorg/acra/util/ProcessFinisher;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v1, v10}, Lorg/acra/util/ProcessFinisher;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v1, v9}, Lorg/acra/util/ProcessFinisher;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v1, v12, v13}, Lorg/acra/util/ProcessFinisher;->setSize-uvyYCjk(J)V

    .line 895
    .line 896
    .line 897
    iput-object v15, v1, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 898
    .line 899
    throw v0

    .line 900
    :cond_34
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 901
    .line 902
    .line 903
    return-void
.end method

.method public final getRenderNode()Landroid/graphics/RenderNode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/StretchOverscrollNode;->_renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/foundation/StretchOverscrollNode$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/RenderNode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/StretchOverscrollNode;->_renderNode:Landroid/graphics/RenderNode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final synthetic onMeasureResultChanged()V
    .locals 0

    .line 1
    return-void
.end method
