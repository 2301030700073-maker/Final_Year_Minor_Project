.class public final Landroidx/compose/foundation/StretchOverscrollNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

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
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

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
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {v4}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v6, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 29
    .line 30
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    iget-object v7, v0, Landroidx/compose/foundation/StretchOverscrollNode;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 52
    .line 53
    if-nez v6, :cond_9

    .line 54
    .line 55
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 95
    .line 96
    .line 97
    :cond_6
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 98
    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 102
    .line 103
    .line 104
    :cond_7
    iget-object v0, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 105
    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 109
    .line 110
    .line 111
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_9
    const/high16 v6, 0x41f00000    # 30.0f

    .line 116
    .line 117
    invoke-virtual {v1, v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    .line 122
    .line 123
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    const/4 v10, 0x0

    .line 128
    if-nez v8, :cond_b

    .line 129
    .line 130
    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 131
    .line 132
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-nez v8, :cond_b

    .line 137
    .line 138
    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 139
    .line 140
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-nez v8, :cond_b

    .line 145
    .line 146
    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 147
    .line 148
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eqz v8, :cond_a

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_a
    move v8, v10

    .line 156
    goto :goto_1

    .line 157
    :cond_b
    :goto_0
    const/4 v8, 0x1

    .line 158
    :goto_1
    iget-object v11, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    .line 159
    .line 160
    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-nez v11, :cond_d

    .line 165
    .line 166
    iget-object v11, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 167
    .line 168
    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-nez v11, :cond_d

    .line 173
    .line 174
    iget-object v11, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    .line 175
    .line 176
    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    if-nez v11, :cond_d

    .line 181
    .line 182
    iget-object v11, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 183
    .line 184
    invoke-static {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    if-eqz v11, :cond_c

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_c
    move v11, v10

    .line 192
    goto :goto_3

    .line 193
    :cond_d
    :goto_2
    const/4 v11, 0x1

    .line 194
    :goto_3
    if-eqz v8, :cond_e

    .line 195
    .line 196
    if-eqz v11, :cond_e

    .line 197
    .line 198
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    invoke-virtual {v12, v10, v10, v13, v14}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_e
    if-eqz v8, :cond_f

    .line 215
    .line 216
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    invoke-static {v6}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 225
    .line 226
    .line 227
    move-result v14

    .line 228
    mul-int/lit8 v14, v14, 0x2

    .line 229
    .line 230
    add-int/2addr v14, v13

    .line 231
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    invoke-virtual {v12, v10, v10, v14, v13}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_f
    if-eqz v11, :cond_33

    .line 240
    .line 241
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    .line 250
    .line 251
    .line 252
    move-result v14

    .line 253
    invoke-static {v6}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 254
    .line 255
    .line 256
    move-result v15

    .line 257
    mul-int/lit8 v15, v15, 0x2

    .line 258
    .line 259
    add-int/2addr v15, v14

    .line 260
    invoke-virtual {v12, v10, v10, v13, v15}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 261
    .line 262
    .line 263
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    invoke-virtual {v12}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    iget-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 272
    .line 273
    invoke-static {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 274
    .line 275
    .line 276
    move-result v13

    .line 277
    const/high16 v14, 0x42b40000    # 90.0f

    .line 278
    .line 279
    if-eqz v13, :cond_11

    .line 280
    .line 281
    iget-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 282
    .line 283
    if-nez v13, :cond_10

    .line 284
    .line 285
    sget-object v13, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 286
    .line 287
    invoke-virtual {v7, v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    iput-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 292
    .line 293
    :cond_10
    invoke-static {v14, v13, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 294
    .line 295
    .line 296
    invoke-virtual {v13}, Landroid/widget/EdgeEffect;->finish()V

    .line 297
    .line 298
    .line 299
    :cond_11
    iget-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    .line 300
    .line 301
    invoke-static {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 302
    .line 303
    .line 304
    move-result v13

    .line 305
    const/high16 v15, 0x43870000    # 270.0f

    .line 306
    .line 307
    const/high16 v16, 0x3f800000    # 1.0f

    .line 308
    .line 309
    const-wide v17, 0xffffffffL

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    if-eqz v13, :cond_15

    .line 315
    .line 316
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    invoke-static {v15, v13, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 321
    .line 322
    .line 323
    move-result v20

    .line 324
    iget-object v14, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    .line 325
    .line 326
    invoke-static {v14}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 327
    .line 328
    .line 329
    move-result v14

    .line 330
    if-eqz v14, :cond_16

    .line 331
    .line 332
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation()J

    .line 333
    .line 334
    .line 335
    move-result-wide v21

    .line 336
    and-long v9, v21, v17

    .line 337
    .line 338
    long-to-int v9, v9

    .line 339
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    iget-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 344
    .line 345
    if-nez v10, :cond_12

    .line 346
    .line 347
    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 348
    .line 349
    invoke-virtual {v7, v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    iput-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 354
    .line 355
    :cond_12
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 356
    .line 357
    const/16 v15, 0x1f

    .line 358
    .line 359
    if-lt v14, v15, :cond_13

    .line 360
    .line 361
    invoke-static {v13}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 362
    .line 363
    .line 364
    move-result v13

    .line 365
    goto :goto_5

    .line 366
    :cond_13
    const/4 v13, 0x0

    .line 367
    :goto_5
    sub-float v9, v16, v9

    .line 368
    .line 369
    if-lt v14, v15, :cond_14

    .line 370
    .line 371
    invoke-static {v10, v13, v9}, Landroidx/compose/foundation/Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 372
    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_14
    invoke-virtual {v10, v13, v9}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 376
    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_15
    const/16 v20, 0x0

    .line 380
    .line 381
    :cond_16
    :goto_6
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 382
    .line 383
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    const/high16 v10, 0x43340000    # 180.0f

    .line 388
    .line 389
    if-eqz v9, :cond_18

    .line 390
    .line 391
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 392
    .line 393
    if-nez v9, :cond_17

    .line 394
    .line 395
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 396
    .line 397
    invoke-virtual {v7, v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    iput-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 402
    .line 403
    :cond_17
    invoke-static {v10, v9, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 404
    .line 405
    .line 406
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    .line 407
    .line 408
    .line 409
    :cond_18
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    .line 410
    .line 411
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-eqz v9, :cond_1e

    .line 416
    .line 417
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    const/4 v14, 0x0

    .line 422
    invoke-static {v14, v9, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 423
    .line 424
    .line 425
    move-result v15

    .line 426
    if-nez v15, :cond_1a

    .line 427
    .line 428
    if-eqz v20, :cond_19

    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_19
    const/16 v20, 0x0

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_1a
    :goto_7
    const/16 v20, 0x1

    .line 435
    .line 436
    :goto_8
    iget-object v15, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    .line 437
    .line 438
    invoke-static {v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 439
    .line 440
    .line 441
    move-result v15

    .line 442
    if-eqz v15, :cond_1e

    .line 443
    .line 444
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation()J

    .line 445
    .line 446
    .line 447
    move-result-wide v23

    .line 448
    const/16 v15, 0x20

    .line 449
    .line 450
    shr-long v13, v23, v15

    .line 451
    .line 452
    long-to-int v13, v13

    .line 453
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 454
    .line 455
    .line 456
    move-result v13

    .line 457
    iget-object v14, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 458
    .line 459
    if-nez v14, :cond_1b

    .line 460
    .line 461
    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 462
    .line 463
    invoke-virtual {v7, v14}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 464
    .line 465
    .line 466
    move-result-object v14

    .line 467
    iput-object v14, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 468
    .line 469
    :cond_1b
    move/from16 v23, v15

    .line 470
    .line 471
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 472
    .line 473
    const/16 v10, 0x1f

    .line 474
    .line 475
    if-lt v15, v10, :cond_1c

    .line 476
    .line 477
    invoke-static {v9}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 478
    .line 479
    .line 480
    move-result v9

    .line 481
    goto :goto_9

    .line 482
    :cond_1c
    const/4 v9, 0x0

    .line 483
    :goto_9
    if-lt v15, v10, :cond_1d

    .line 484
    .line 485
    invoke-static {v14, v9, v13}, Landroidx/compose/foundation/Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 486
    .line 487
    .line 488
    goto :goto_a

    .line 489
    :cond_1d
    invoke-virtual {v14, v9, v13}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 490
    .line 491
    .line 492
    goto :goto_a

    .line 493
    :cond_1e
    const/16 v23, 0x20

    .line 494
    .line 495
    :goto_a
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 496
    .line 497
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    if-eqz v9, :cond_20

    .line 502
    .line 503
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 504
    .line 505
    if-nez v9, :cond_1f

    .line 506
    .line 507
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 508
    .line 509
    invoke-virtual {v7, v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    iput-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 514
    .line 515
    :cond_1f
    const/high16 v10, 0x43870000    # 270.0f

    .line 516
    .line 517
    invoke-static {v10, v9, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 518
    .line 519
    .line 520
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    .line 521
    .line 522
    .line 523
    :cond_20
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    .line 524
    .line 525
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 526
    .line 527
    .line 528
    move-result v9

    .line 529
    if-eqz v9, :cond_26

    .line 530
    .line 531
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    const/high16 v10, 0x42b40000    # 90.0f

    .line 536
    .line 537
    invoke-static {v10, v9, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 538
    .line 539
    .line 540
    move-result v10

    .line 541
    if-nez v10, :cond_22

    .line 542
    .line 543
    if-eqz v20, :cond_21

    .line 544
    .line 545
    goto :goto_b

    .line 546
    :cond_21
    const/16 v20, 0x0

    .line 547
    .line 548
    goto :goto_c

    .line 549
    :cond_22
    :goto_b
    const/16 v20, 0x1

    .line 550
    .line 551
    :goto_c
    iget-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    .line 552
    .line 553
    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 554
    .line 555
    .line 556
    move-result v10

    .line 557
    if-eqz v10, :cond_26

    .line 558
    .line 559
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation()J

    .line 560
    .line 561
    .line 562
    move-result-wide v13

    .line 563
    and-long v13, v13, v17

    .line 564
    .line 565
    long-to-int v10, v13

    .line 566
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 567
    .line 568
    .line 569
    move-result v10

    .line 570
    iget-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 571
    .line 572
    if-nez v13, :cond_23

    .line 573
    .line 574
    sget-object v13, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 575
    .line 576
    invoke-virtual {v7, v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 577
    .line 578
    .line 579
    move-result-object v13

    .line 580
    iput-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 581
    .line 582
    :cond_23
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 583
    .line 584
    const/16 v15, 0x1f

    .line 585
    .line 586
    if-lt v14, v15, :cond_24

    .line 587
    .line 588
    invoke-static {v9}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 589
    .line 590
    .line 591
    move-result v9

    .line 592
    goto :goto_d

    .line 593
    :cond_24
    const/4 v9, 0x0

    .line 594
    :goto_d
    if-lt v14, v15, :cond_25

    .line 595
    .line 596
    invoke-static {v13, v9, v10}, Landroidx/compose/foundation/Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 597
    .line 598
    .line 599
    goto :goto_e

    .line 600
    :cond_25
    invoke-virtual {v13, v9, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 601
    .line 602
    .line 603
    :cond_26
    :goto_e
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 604
    .line 605
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 606
    .line 607
    .line 608
    move-result v9

    .line 609
    if-eqz v9, :cond_28

    .line 610
    .line 611
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 612
    .line 613
    if-nez v9, :cond_27

    .line 614
    .line 615
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 616
    .line 617
    invoke-virtual {v7, v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    iput-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 622
    .line 623
    :cond_27
    const/4 v14, 0x0

    .line 624
    invoke-static {v14, v9, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 625
    .line 626
    .line 627
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    .line 628
    .line 629
    .line 630
    goto :goto_f

    .line 631
    :cond_28
    const/4 v14, 0x0

    .line 632
    :goto_f
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 633
    .line 634
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    .line 635
    .line 636
    .line 637
    move-result v9

    .line 638
    if-eqz v9, :cond_2f

    .line 639
    .line 640
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    .line 641
    .line 642
    .line 643
    move-result-object v9

    .line 644
    const/high16 v10, 0x43340000    # 180.0f

    .line 645
    .line 646
    invoke-static {v10, v9, v12}, Landroidx/compose/foundation/StretchOverscrollNode;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 647
    .line 648
    .line 649
    move-result v10

    .line 650
    if-nez v10, :cond_2a

    .line 651
    .line 652
    if-eqz v20, :cond_29

    .line 653
    .line 654
    goto :goto_10

    .line 655
    :cond_29
    const/16 v19, 0x0

    .line 656
    .line 657
    goto :goto_11

    .line 658
    :cond_2a
    :goto_10
    const/16 v19, 0x1

    .line 659
    .line 660
    :goto_11
    iget-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 661
    .line 662
    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    .line 663
    .line 664
    .line 665
    move-result v10

    .line 666
    if-eqz v10, :cond_2e

    .line 667
    .line 668
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation()J

    .line 669
    .line 670
    .line 671
    move-result-wide v17

    .line 672
    shr-long v14, v17, v23

    .line 673
    .line 674
    long-to-int v10, v14

    .line 675
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 676
    .line 677
    .line 678
    move-result v10

    .line 679
    iget-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 680
    .line 681
    if-nez v13, :cond_2b

    .line 682
    .line 683
    sget-object v13, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 684
    .line 685
    invoke-virtual {v7, v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 686
    .line 687
    .line 688
    move-result-object v13

    .line 689
    iput-object v13, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 690
    .line 691
    :cond_2b
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 692
    .line 693
    const/16 v15, 0x1f

    .line 694
    .line 695
    if-lt v7, v15, :cond_2c

    .line 696
    .line 697
    invoke-static {v9}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 698
    .line 699
    .line 700
    move-result v9

    .line 701
    goto :goto_12

    .line 702
    :cond_2c
    const/4 v9, 0x0

    .line 703
    :goto_12
    sub-float v10, v16, v10

    .line 704
    .line 705
    if-lt v7, v15, :cond_2d

    .line 706
    .line 707
    invoke-static {v13, v9, v10}, Landroidx/compose/foundation/Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    .line 708
    .line 709
    .line 710
    goto :goto_13

    .line 711
    :cond_2d
    invoke-virtual {v13, v9, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 712
    .line 713
    .line 714
    :cond_2e
    :goto_13
    move/from16 v20, v19

    .line 715
    .line 716
    :cond_2f
    if-eqz v20, :cond_30

    .line 717
    .line 718
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation()V

    .line 719
    .line 720
    .line 721
    :cond_30
    if-eqz v11, :cond_31

    .line 722
    .line 723
    const/4 v5, 0x0

    .line 724
    goto :goto_14

    .line 725
    :cond_31
    move v5, v6

    .line 726
    :goto_14
    if-eqz v8, :cond_32

    .line 727
    .line 728
    const/4 v6, 0x0

    .line 729
    :cond_32
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 730
    .line 731
    .line 732
    move-result-object v7

    .line 733
    new-instance v8, Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 734
    .line 735
    invoke-direct {v8}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    .line 736
    .line 737
    .line 738
    iput-object v12, v8, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 739
    .line 740
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 741
    .line 742
    .line 743
    move-result-wide v9

    .line 744
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 745
    .line 746
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 747
    .line 748
    .line 749
    move-result-object v3

    .line 750
    iget-object v11, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 751
    .line 752
    invoke-virtual {v11}, Lcom/caverock/androidsvg/SVG;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 753
    .line 754
    .line 755
    move-result-object v11

    .line 756
    iget-object v12, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 757
    .line 758
    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 759
    .line 760
    .line 761
    move-result-object v12

    .line 762
    iget-object v13, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 763
    .line 764
    invoke-virtual {v13}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 765
    .line 766
    .line 767
    move-result-wide v13

    .line 768
    iget-object v15, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 769
    .line 770
    iget-object v0, v15, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 771
    .line 772
    move-object/from16 v16, v4

    .line 773
    .line 774
    move-object v4, v0

    .line 775
    check-cast v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 776
    .line 777
    invoke-virtual {v15, v1}, Lcom/caverock/androidsvg/SVG;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v15, v7}, Lcom/caverock/androidsvg/SVG;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v15, v8}, Lcom/caverock/androidsvg/SVG;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v15, v9, v10}, Lcom/caverock/androidsvg/SVG;->setSize-uvyYCjk(J)V

    .line 787
    .line 788
    .line 789
    const/4 v0, 0x0

    .line 790
    iput-object v0, v15, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 791
    .line 792
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    .line 793
    .line 794
    .line 795
    :try_start_0
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 796
    .line 797
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 798
    .line 799
    check-cast v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 800
    .line 801
    invoke-virtual {v0, v5, v6}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    .line 803
    .line 804
    :try_start_1
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 805
    .line 806
    .line 807
    :try_start_2
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 808
    .line 809
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 810
    .line 811
    check-cast v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 812
    .line 813
    neg-float v1, v5

    .line 814
    neg-float v5, v6

    .line 815
    invoke-virtual {v0, v1, v5}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 816
    .line 817
    .line 818
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    .line 819
    .line 820
    .line 821
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 822
    .line 823
    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVG;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVG;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v0, v13, v14}, Lcom/caverock/androidsvg/SVG;->setSize-uvyYCjk(J)V

    .line 833
    .line 834
    .line 835
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 836
    .line 837
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 842
    .line 843
    .line 844
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    .line 845
    .line 846
    .line 847
    move-result v0

    .line 848
    move-object/from16 v2, v16

    .line 849
    .line 850
    invoke-virtual {v2, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 851
    .line 852
    .line 853
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/StretchOverscrollNode;->getRenderNode()Landroid/graphics/RenderNode;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 861
    .line 862
    .line 863
    return-void

    .line 864
    :catchall_0
    move-exception v0

    .line 865
    goto :goto_15

    .line 866
    :catchall_1
    move-exception v0

    .line 867
    :try_start_3
    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 868
    .line 869
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 870
    .line 871
    check-cast v1, Landroidx/appcompat/widget/PopupMenu$1;

    .line 872
    .line 873
    neg-float v5, v5

    .line 874
    neg-float v6, v6

    .line 875
    invoke-virtual {v1, v5, v6}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 876
    .line 877
    .line 878
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 879
    :goto_15
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    .line 880
    .line 881
    .line 882
    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 883
    .line 884
    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVG;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVG;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v1, v12}, Lcom/caverock/androidsvg/SVG;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v1, v13, v14}, Lcom/caverock/androidsvg/SVG;->setSize-uvyYCjk(J)V

    .line 894
    .line 895
    .line 896
    iput-object v4, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 897
    .line 898
    throw v0

    .line 899
    :cond_33
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 900
    .line 901
    .line 902
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
    invoke-static {}, Landroidx/core/graphics/TypefaceCompat$$ExternalSyntheticApiModelOutline1;->m()Landroid/graphics/RenderNode;

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

.method public final onMeasureResultChanged()V
    .locals 0

    .line 1
    return-void
.end method
