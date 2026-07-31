.class public final Landroidx/compose/foundation/BackgroundNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public color:J

.field public lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public lastOutline:Landroidx/compose/ui/graphics/Brush;

.field public lastShape:Landroidx/compose/ui/graphics/Shape;

.field public lastSize:J

.field public shape:Landroidx/compose/ui/graphics/Shape;

.field public tmpOutline:Landroidx/compose/ui/graphics/Brush;


# virtual methods
.method public final applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 2
    .line 3
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setShape(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/graphics/Shape;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 28

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
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 10
    .line 11
    if-ne v3, v4, :cond_1

    .line 12
    .line 13
    iget-wide v2, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 14
    .line 15
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 16
    .line 17
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-wide v1, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    const/16 v5, 0x7e

    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/Owner$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJI)V

    .line 32
    .line 33
    .line 34
    move-object v1, v0

    .line 35
    :cond_0
    move-object v0, v1

    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_1
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 39
    .line 40
    invoke-virtual {v3}, Lorg/acra/util/ProcessFinisher;->getSize-NH-jbRc()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    iget-wide v5, v0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    .line 45
    .line 46
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 57
    .line 58
    if-ne v3, v4, :cond_2

    .line 59
    .line 60
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 61
    .line 62
    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 63
    .line 64
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Brush;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-instance v3, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/4 v4, 0x2

    .line 79
    invoke-direct {v3, v0, v1, v4}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/Brush;

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    iput-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/Brush;

    .line 89
    .line 90
    :goto_0
    iput-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Brush;

    .line 91
    .line 92
    iget-object v4, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 93
    .line 94
    invoke-virtual {v4}, Lorg/acra/util/ProcessFinisher;->getSize-NH-jbRc()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    iput-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    .line 99
    .line 100
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iput-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 105
    .line 106
    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 107
    .line 108
    iput-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 114
    .line 115
    sget-wide v6, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 116
    .line 117
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-nez v4, :cond_0

    .line 122
    .line 123
    iget-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 124
    .line 125
    instance-of v0, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 126
    .line 127
    const/16 v6, 0x20

    .line 128
    .line 129
    const-wide v7, 0xffffffffL

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    move-wide v8, v7

    .line 135
    sget-object v7, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 136
    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    check-cast v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 140
    .line 141
    iget-object v0, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    .line 142
    .line 143
    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 144
    .line 145
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 146
    .line 147
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    int-to-long v10, v2

    .line 152
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    int-to-long v2, v2

    .line 157
    shl-long/2addr v10, v6

    .line 158
    and-long/2addr v2, v8

    .line 159
    or-long/2addr v2, v10

    .line 160
    iget v10, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 161
    .line 162
    iget v11, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 163
    .line 164
    sub-float/2addr v10, v11

    .line 165
    iget v11, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 166
    .line 167
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 168
    .line 169
    sub-float/2addr v11, v0

    .line 170
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    int-to-long v12, v0

    .line 175
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    int-to-long v10, v0

    .line 180
    shl-long/2addr v12, v6

    .line 181
    and-long/2addr v8, v10

    .line 182
    or-long/2addr v8, v12

    .line 183
    move-wide/from16 v26, v4

    .line 184
    .line 185
    move-wide v3, v2

    .line 186
    move-wide/from16 v1, v26

    .line 187
    .line 188
    move-wide v5, v8

    .line 189
    const/4 v8, 0x3

    .line 190
    move-object/from16 v0, p1

    .line 191
    .line 192
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawRect-n-J9OG0(JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_3
    move-object v0, v1

    .line 198
    instance-of v1, v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 199
    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    check-cast v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 203
    .line 204
    iget-object v1, v3, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRectPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 205
    .line 206
    if-eqz v1, :cond_4

    .line 207
    .line 208
    :goto_1
    invoke-virtual {v0, v1, v4, v5, v7}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawPath-LG529CI(Landroidx/compose/ui/graphics/AndroidPath;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :cond_4
    iget-object v1, v3, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 214
    .line 215
    iget v3, v1, Landroidx/compose/ui/geometry/RoundRect;->top:F

    .line 216
    .line 217
    iget v10, v1, Landroidx/compose/ui/geometry/RoundRect;->left:F

    .line 218
    .line 219
    iget-wide v11, v1, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    .line 220
    .line 221
    shr-long/2addr v11, v6

    .line 222
    long-to-int v11, v11

    .line 223
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 228
    .line 229
    .line 230
    move-result v12

    .line 231
    int-to-long v12, v12

    .line 232
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    int-to-long v14, v14

    .line 237
    shl-long/2addr v12, v6

    .line 238
    and-long/2addr v14, v8

    .line 239
    or-long/2addr v12, v14

    .line 240
    iget v14, v1, Landroidx/compose/ui/geometry/RoundRect;->right:F

    .line 241
    .line 242
    sub-float/2addr v14, v10

    .line 243
    iget v1, v1, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    .line 244
    .line 245
    sub-float/2addr v1, v3

    .line 246
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    int-to-long v14, v3

    .line 251
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    move-wide/from16 v16, v8

    .line 256
    .line 257
    int-to-long v8, v1

    .line 258
    shl-long/2addr v14, v6

    .line 259
    and-long v8, v8, v16

    .line 260
    .line 261
    or-long/2addr v8, v14

    .line 262
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    int-to-long v14, v1

    .line 267
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    int-to-long v10, v1

    .line 272
    shl-long/2addr v14, v6

    .line 273
    and-long v10, v10, v16

    .line 274
    .line 275
    or-long/2addr v10, v14

    .line 276
    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 277
    .line 278
    iget-object v1, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 279
    .line 280
    shr-long v14, v12, v6

    .line 281
    .line 282
    long-to-int v3, v14

    .line 283
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 284
    .line 285
    .line 286
    move-result v19

    .line 287
    and-long v12, v12, v16

    .line 288
    .line 289
    long-to-int v12, v12

    .line 290
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 291
    .line 292
    .line 293
    move-result v20

    .line 294
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    shr-long v13, v8, v6

    .line 299
    .line 300
    long-to-int v13, v13

    .line 301
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 302
    .line 303
    .line 304
    move-result v13

    .line 305
    add-float v21, v13, v3

    .line 306
    .line 307
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    and-long v8, v8, v16

    .line 312
    .line 313
    long-to-int v8, v8

    .line 314
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 315
    .line 316
    .line 317
    move-result v8

    .line 318
    add-float v22, v8, v3

    .line 319
    .line 320
    shr-long v8, v10, v6

    .line 321
    .line 322
    long-to-int v3, v8

    .line 323
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 324
    .line 325
    .line 326
    move-result v23

    .line 327
    and-long v8, v10, v16

    .line 328
    .line 329
    long-to-int v3, v8

    .line 330
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 331
    .line 332
    .line 333
    move-result v24

    .line 334
    const/4 v3, 0x3

    .line 335
    invoke-static {v2, v4, v5, v7, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)Landroidx/compose/ui/graphics/AndroidPaint;

    .line 336
    .line 337
    .line 338
    move-result-object v25

    .line 339
    move-object/from16 v18, v1

    .line 340
    .line 341
    invoke-interface/range {v18 .. v25}, Landroidx/compose/ui/graphics/Canvas;->drawRoundRect(FFFFFFLandroidx/compose/ui/graphics/AndroidPaint;)V

    .line 342
    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_5
    instance-of v1, v3, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 346
    .line 347
    if-eqz v1, :cond_6

    .line 348
    .line 349
    check-cast v3, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 350
    .line 351
    iget-object v1, v3, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 352
    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :cond_6
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 360
    .line 361
    .line 362
    return-void
.end method

.method public final synthetic getShouldClearDescendantSemantics()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final synthetic getShouldMergeDescendantSemantics()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isImportantForBounds()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final synthetic onMeasureResultChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onObservedReadsChanged()V
    .locals 2

    .line 1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Brush;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 14
    .line 15
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
