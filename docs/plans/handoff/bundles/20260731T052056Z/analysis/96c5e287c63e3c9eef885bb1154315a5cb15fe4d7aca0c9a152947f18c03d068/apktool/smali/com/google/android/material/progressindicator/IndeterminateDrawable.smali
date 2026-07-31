.class public final Lcom/google/android/material/progressindicator/IndeterminateDrawable;
.super Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public animatorDelegate:Landroidx/appcompat/view/menu/BaseMenuWrapper;

.field public drawingDelegate:Lcom/google/android/material/progressindicator/LinearDrawingDelegate;


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_c

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_c

    .line 20
    .line 21
    iget-object v1, v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->clipBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_8

    .line 30
    .line 31
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 32
    .line 33
    const/high16 v7, 0x3f800000    # 1.0f

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "animator_duration_scale"

    .line 44
    .line 45
    invoke-static {v1, v3, v7}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getGrowFraction()F

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iget-object v5, v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    const/4 v8, 0x1

    .line 64
    const/4 v9, 0x0

    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v5, v8

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    move v5, v9

    .line 77
    :goto_1
    iget-object v6, v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    if-eqz v6, :cond_5

    .line 80
    .line 81
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move v6, v8

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    :goto_2
    move v6, v9

    .line 91
    :goto_3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/progressindicator/DrawingDelegate;->validateSpecAndAdjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    .line 92
    .line 93
    .line 94
    iget-object v12, v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 95
    .line 96
    iget v10, v12, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorTrackGapSize:I

    .line 97
    .line 98
    move v1, v7

    .line 99
    iget v7, v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    .line 100
    .line 101
    instance-of v13, v12, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 102
    .line 103
    if-eqz v13, :cond_6

    .line 104
    .line 105
    if-nez v10, :cond_6

    .line 106
    .line 107
    invoke-virtual {v12, v9}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hasWavyEffect(Z)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_6

    .line 112
    .line 113
    move v14, v8

    .line 114
    goto :goto_4

    .line 115
    :cond_6
    move v14, v9

    .line 116
    :goto_4
    iget-object v3, v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    .line 117
    .line 118
    if-eqz v14, :cond_8

    .line 119
    .line 120
    iget-object v1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    .line 121
    .line 122
    iget v6, v12, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackColor:I

    .line 123
    .line 124
    const/4 v8, 0x0

    .line 125
    const/4 v4, 0x0

    .line 126
    const/high16 v5, 0x3f800000    # 1.0f

    .line 127
    .line 128
    move-object/from16 v2, p1

    .line 129
    .line 130
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 131
    .line 132
    .line 133
    :cond_7
    move/from16 v16, v7

    .line 134
    .line 135
    move v15, v10

    .line 136
    goto :goto_5

    .line 137
    :cond_8
    if-eqz v13, :cond_7

    .line 138
    .line 139
    iget-object v2, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 140
    .line 141
    iget-object v2, v2, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v2, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 150
    .line 151
    iget-object v4, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 152
    .line 153
    iget-object v4, v4, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v4, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-static {v8, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    move-object v11, v4

    .line 162
    check-cast v11, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 163
    .line 164
    move v4, v1

    .line 165
    iget-object v1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    .line 166
    .line 167
    invoke-static {v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_9

    .line 172
    .line 173
    iget v5, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 174
    .line 175
    iget v6, v12, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackColor:I

    .line 176
    .line 177
    const/4 v4, 0x0

    .line 178
    move-object/from16 v2, p1

    .line 179
    .line 180
    move v8, v10

    .line 181
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    .line 185
    .line 186
    iget v4, v11, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 187
    .line 188
    const/high16 v5, 0x3f800000    # 1.0f

    .line 189
    .line 190
    iget v6, v12, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackColor:I

    .line 191
    .line 192
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 193
    .line 194
    .line 195
    move-object v1, v2

    .line 196
    move/from16 v16, v7

    .line 197
    .line 198
    move v15, v8

    .line 199
    goto :goto_5

    .line 200
    :cond_9
    move-object/from16 v1, p1

    .line 201
    .line 202
    move v8, v10

    .line 203
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 204
    .line 205
    .line 206
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    const/4 v5, 0x0

    .line 210
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    .line 214
    .line 215
    iget v5, v11, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 216
    .line 217
    iget v2, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 218
    .line 219
    add-float/2addr v2, v4

    .line 220
    iget v6, v12, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackColor:I

    .line 221
    .line 222
    move v4, v5

    .line 223
    move v5, v2

    .line 224
    move-object/from16 v2, p1

    .line 225
    .line 226
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 227
    .line 228
    .line 229
    move/from16 v16, v7

    .line 230
    .line 231
    move v15, v8

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 233
    .line 234
    .line 235
    :goto_5
    move v1, v9

    .line 236
    :goto_6
    iget-object v2, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 237
    .line 238
    iget-object v2, v2, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v2, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-ge v1, v2, :cond_b

    .line 247
    .line 248
    iget-object v2, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 249
    .line 250
    iget-object v2, v2, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v2, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getPhaseFraction()F

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    iput v4, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->phaseFraction:F

    .line 265
    .line 266
    move v9, v1

    .line 267
    iget-object v1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    .line 268
    .line 269
    iget v4, v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    iget v5, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    .line 275
    .line 276
    invoke-static {v5, v4}, Lkotlin/text/UStringsKt;->compositeARGBWithAlpha(II)I

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    iget-boolean v4, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->isDeterminate:Z

    .line 281
    .line 282
    iput-boolean v4, v1, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawingDeterminateIndicator:Z

    .line 283
    .line 284
    iget v4, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 285
    .line 286
    iget v5, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 287
    .line 288
    iget v7, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->gapSize:I

    .line 289
    .line 290
    move v8, v9

    .line 291
    iget v9, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->amplitudeFraction:F

    .line 292
    .line 293
    iget v10, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->phaseFraction:F

    .line 294
    .line 295
    const/4 v11, 0x1

    .line 296
    move/from16 v17, v8

    .line 297
    .line 298
    move v8, v7

    .line 299
    move/from16 v18, v13

    .line 300
    .line 301
    move-object v13, v2

    .line 302
    move-object/from16 v2, p1

    .line 303
    .line 304
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    .line 305
    .line 306
    .line 307
    if-lez v17, :cond_a

    .line 308
    .line 309
    if-nez v14, :cond_a

    .line 310
    .line 311
    if-eqz v18, :cond_a

    .line 312
    .line 313
    iget-object v1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 314
    .line 315
    iget-object v1, v1, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v1, Ljava/util/ArrayList;

    .line 318
    .line 319
    add-int/lit8 v2, v17, -0x1

    .line 320
    .line 321
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    check-cast v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 326
    .line 327
    iget-object v2, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    .line 328
    .line 329
    iget v4, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 330
    .line 331
    iget v5, v13, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 332
    .line 333
    iget v6, v12, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackColor:I

    .line 334
    .line 335
    move-object v1, v2

    .line 336
    move v8, v15

    .line 337
    move/from16 v7, v16

    .line 338
    .line 339
    move-object/from16 v2, p1

    .line 340
    .line 341
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 342
    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_a
    move v8, v15

    .line 346
    move/from16 v7, v16

    .line 347
    .line 348
    :goto_7
    add-int/lit8 v1, v17, 0x1

    .line 349
    .line 350
    move/from16 v16, v7

    .line 351
    .line 352
    move v15, v8

    .line 353
    move/from16 v13, v18

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 357
    .line 358
    .line 359
    :cond_c
    :goto_8
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->getPreferredHeight()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, -0x1

    .line 7
    return p0
.end method

.method public final setVisibleInternal(ZZZ)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "animator_duration_scale"

    .line 16
    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isRunning()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->cancelAnimatorImmediately()V

    .line 31
    .line 32
    .line 33
    :cond_1
    if-eqz p1, :cond_3

    .line 34
    .line 35
    if-nez p3, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->startAnimator()V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_0
    return p2
.end method
