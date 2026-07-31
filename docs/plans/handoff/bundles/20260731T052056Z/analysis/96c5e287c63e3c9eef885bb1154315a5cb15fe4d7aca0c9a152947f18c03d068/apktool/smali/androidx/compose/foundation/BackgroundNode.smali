.class public final Landroidx/compose/foundation/BackgroundNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public alpha:F

.field public brush:Landroidx/compose/ui/graphics/Brush;

.field public color:J

.field public lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public lastOutline:Landroidx/compose/ui/graphics/ColorKt;

.field public lastShape:Landroidx/compose/ui/graphics/Shape;

.field public lastSize:J

.field public shape:Landroidx/compose/ui/graphics/Shape;

.field public tmpOutline:Landroidx/compose/ui/graphics/ColorKt;


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
    .locals 18

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
    sget-object v4, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 10
    .line 11
    if-ne v3, v4, :cond_2

    .line 12
    .line 13
    iget-wide v2, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 14
    .line 15
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 16
    .line 17
    invoke-static {v2, v3, v4, v5}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-wide v2, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/16 v8, 0x7e

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/Modifier$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/BlendModeColorFilter;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget v6, v0, Landroidx/compose/foundation/BackgroundNode;->alpha:F

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const/16 v9, 0x76

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    move-object/from16 v0, p1

    .line 49
    .line 50
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/Modifier$-CC;->drawRect-AsUm42w$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/BlendModeColorFilter;I)V

    .line 51
    .line 52
    .line 53
    move-object v1, v0

    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_1
    move-object/from16 v1, p1

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_2
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    iget-wide v5, v0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    .line 67
    .line 68
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 79
    .line 80
    if-ne v3, v4, :cond_3

    .line 81
    .line 82
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 83
    .line 84
    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 85
    .line 86
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/ColorKt;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    new-instance v3, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 99
    .line 100
    const/4 v4, 0x4

    .line 101
    invoke-direct {v3, v4, v0, v1}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/ColorKt;

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    iput-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/ColorKt;

    .line 111
    .line 112
    :goto_0
    iput-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/ColorKt;

    .line 113
    .line 114
    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    iput-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iput-object v2, v0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 127
    .line 128
    iget-object v2, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 129
    .line 130
    iput-object v2, v0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 136
    .line 137
    sget-wide v6, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 138
    .line 139
    invoke-static {v4, v5, v6, v7}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_4

    .line 144
    .line 145
    iget-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 146
    .line 147
    invoke-static {v1, v3, v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ColorKt;J)V

    .line 148
    .line 149
    .line 150
    :cond_4
    iget-object v2, v0, Landroidx/compose/foundation/BackgroundNode;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 151
    .line 152
    if-eqz v2, :cond_9

    .line 153
    .line 154
    iget v6, v0, Landroidx/compose/foundation/BackgroundNode;->alpha:F

    .line 155
    .line 156
    instance-of v0, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 157
    .line 158
    const-wide v7, 0xffffffffL

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    const/16 v9, 0x20

    .line 164
    .line 165
    sget-object v4, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 166
    .line 167
    const/4 v5, 0x3

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    check-cast v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 171
    .line 172
    iget-object v0, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    .line 173
    .line 174
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 175
    .line 176
    iget v10, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 177
    .line 178
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    int-to-long v11, v3

    .line 183
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    int-to-long v13, v3

    .line 188
    shl-long v9, v11, v9

    .line 189
    .line 190
    and-long/2addr v7, v13

    .line 191
    or-long/2addr v7, v9

    .line 192
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->size(Landroidx/compose/ui/geometry/Rect;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v9

    .line 196
    move-object v1, v2

    .line 197
    move-wide v2, v7

    .line 198
    const/4 v8, 0x0

    .line 199
    move-object/from16 v0, p1

    .line 200
    .line 201
    move-object v7, v4

    .line 202
    move-wide/from16 v16, v9

    .line 203
    .line 204
    move v9, v5

    .line 205
    move-wide/from16 v4, v16

    .line 206
    .line 207
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawRect-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/BlendModeColorFilter;I)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_2

    .line 211
    .line 212
    :cond_5
    move-object v1, v2

    .line 213
    instance-of v0, v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 214
    .line 215
    if-eqz v0, :cond_7

    .line 216
    .line 217
    move-object v10, v3

    .line 218
    check-cast v10, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 219
    .line 220
    move-object v2, v1

    .line 221
    iget-object v1, v10, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRectPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 222
    .line 223
    if-eqz v1, :cond_6

    .line 224
    .line 225
    move-object/from16 v0, p1

    .line 226
    .line 227
    move v3, v6

    .line 228
    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawPath-GBMwjPU(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_6
    move-object v1, v2

    .line 233
    move v3, v6

    .line 234
    iget-object v0, v10, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 235
    .line 236
    iget-wide v5, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    .line 237
    .line 238
    shr-long/2addr v5, v9

    .line 239
    long-to-int v2, v5

    .line 240
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    iget v5, v0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    .line 245
    .line 246
    iget v6, v0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    .line 247
    .line 248
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    int-to-long v10, v5

    .line 253
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    int-to-long v5, v5

    .line 258
    shl-long/2addr v10, v9

    .line 259
    and-long/2addr v5, v7

    .line 260
    or-long/2addr v5, v10

    .line 261
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 270
    .line 271
    .line 272
    move-result v10

    .line 273
    int-to-long v10, v10

    .line 274
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    int-to-long v12, v0

    .line 279
    shl-long/2addr v10, v9

    .line 280
    and-long/2addr v12, v7

    .line 281
    or-long/2addr v10, v12

    .line 282
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    int-to-long v12, v0

    .line 287
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    int-to-long v14, v0

    .line 292
    shl-long/2addr v12, v9

    .line 293
    and-long/2addr v7, v14

    .line 294
    or-long/2addr v7, v12

    .line 295
    move-wide/from16 v16, v7

    .line 296
    .line 297
    move v8, v3

    .line 298
    move-wide v2, v5

    .line 299
    move-wide/from16 v6, v16

    .line 300
    .line 301
    move-object/from16 v0, p1

    .line 302
    .line 303
    move-object v9, v4

    .line 304
    move-wide v4, v10

    .line 305
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawRoundRect-ZuiqVtQ(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_7
    instance-of v0, v3, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 310
    .line 311
    if-eqz v0, :cond_8

    .line 312
    .line 313
    check-cast v3, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 314
    .line 315
    iget-object v0, v3, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 316
    .line 317
    move-object v2, v1

    .line 318
    move v3, v6

    .line 319
    move-object v1, v0

    .line 320
    move-object/from16 v0, p1

    .line 321
    .line 322
    goto :goto_1

    .line 323
    :cond_8
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public final getShouldClearDescendantSemantics()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getShouldMergeDescendantSemantics()Z
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

.method public final onMeasureResultChanged()V
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
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/ColorKt;

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
