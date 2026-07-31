.class public final synthetic Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(J[FLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p5, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V
    .locals 0

    .line 16
    iput p6, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    iput-object p5, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Landroidx/compose/material3/internal/FloatProducer;

    .line 17
    .line 18
    check-cast v4, Landroidx/compose/runtime/State;

    .line 19
    .line 20
    iget-wide v7, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    .line 21
    .line 22
    check-cast v3, Landroidx/compose/ui/graphics/AndroidPath;

    .line 23
    .line 24
    move-object/from16 v6, p1

    .line 25
    .line 26
    check-cast v6, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 27
    .line 28
    invoke-interface {v5}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    .line 34
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const v9, 0x3ecccccd    # 0.4f

    .line 39
    .line 40
    .line 41
    sub-float/2addr v5, v9

    .line 42
    const/4 v10, 0x0

    .line 43
    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/high16 v11, 0x40a00000    # 5.0f

    .line 48
    .line 49
    mul-float/2addr v5, v11

    .line 50
    const/high16 v11, 0x40400000    # 3.0f

    .line 51
    .line 52
    div-float/2addr v5, v11

    .line 53
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sub-float/2addr v0, v1

    .line 58
    const/high16 v11, 0x40000000    # 2.0f

    .line 59
    .line 60
    invoke-static {v0, v10, v11}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    float-to-double v12, v0

    .line 65
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 66
    .line 67
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 68
    .line 69
    .line 70
    move-result-wide v12

    .line 71
    double-to-float v10, v12

    .line 72
    const/high16 v12, 0x40800000    # 4.0f

    .line 73
    .line 74
    div-float/2addr v10, v12

    .line 75
    sub-float/2addr v0, v10

    .line 76
    const v10, 0x3f4ccccd    # 0.8f

    .line 77
    .line 78
    .line 79
    mul-float/2addr v10, v5

    .line 80
    const/high16 v12, -0x41800000    # -0.25f

    .line 81
    .line 82
    mul-float/2addr v9, v5

    .line 83
    add-float/2addr v9, v12

    .line 84
    add-float/2addr v9, v0

    .line 85
    const/high16 v0, 0x3f000000    # 0.5f

    .line 86
    .line 87
    mul-float/2addr v9, v0

    .line 88
    const/high16 v0, 0x43b40000    # 360.0f

    .line 89
    .line 90
    mul-float v12, v9, v0

    .line 91
    .line 92
    add-float/2addr v10, v9

    .line 93
    mul-float/2addr v10, v0

    .line 94
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    new-instance v1, Landroidx/compose/animation/FlingCalculator;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    iput v10, v1, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 104
    .line 105
    iput v0, v1, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 106
    .line 107
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/Number;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    .line 118
    .line 119
    .line 120
    move-result-wide v4

    .line 121
    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    move-object/from16 p0, v1

    .line 126
    .line 127
    move-object/from16 v18, v2

    .line 128
    .line 129
    invoke-virtual {v13}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    invoke-virtual {v13}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 138
    .line 139
    .line 140
    :try_start_0
    iget-object v0, v13, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Landroidx/camera/view/PreviewView$1;

    .line 143
    .line 144
    invoke-virtual {v0, v9, v4, v5}, Landroidx/camera/view/PreviewView$1;->rotate-Uv8p0NA(FJ)V

    .line 145
    .line 146
    .line 147
    const/high16 v0, 0x40b00000    # 5.5f

    .line 148
    .line 149
    invoke-interface {v6, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    const/high16 v4, 0x40200000    # 2.5f

    .line 154
    .line 155
    invoke-interface {v6, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    div-float/2addr v5, v11

    .line 160
    add-float/2addr v5, v0

    .line 161
    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 162
    .line 163
    .line 164
    move-result-wide v16

    .line 165
    invoke-static/range {v16 .. v17}, Landroidx/core/util/DebugUtils;->getCenter-uvyYCjk(J)J

    .line 166
    .line 167
    .line 168
    move-result-wide v16

    .line 169
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 170
    .line 171
    const/16 v9, 0x20

    .line 172
    .line 173
    move v11, v5

    .line 174
    shr-long v4, v16, v9

    .line 175
    .line 176
    long-to-int v4, v4

    .line 177
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    sub-float/2addr v5, v11

    .line 182
    const-wide v19, 0xffffffffL

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    move-object/from16 v21, v3

    .line 188
    .line 189
    move v9, v4

    .line 190
    and-long v3, v16, v19

    .line 191
    .line 192
    long-to-int v3, v3

    .line 193
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    sub-float/2addr v4, v11

    .line 198
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    add-float/2addr v9, v11

    .line 203
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    add-float/2addr v3, v11

    .line 208
    invoke-direct {v0, v5, v4, v9, v3}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 209
    .line 210
    .line 211
    sub-float/2addr v10, v12

    .line 212
    move v9, v12

    .line 213
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    .line 214
    .line 215
    .line 216
    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    move-object v3, v13

    .line 218
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    .line 219
    .line 220
    .line 221
    move-result-wide v13

    .line 222
    new-instance v16, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 223
    .line 224
    const/high16 v4, 0x40200000    # 2.5f

    .line 225
    .line 226
    invoke-interface {v6, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 227
    .line 228
    .line 229
    move-result v23

    .line 230
    const/16 v26, 0x0

    .line 231
    .line 232
    const/16 v27, 0x1a

    .line 233
    .line 234
    const/16 v24, 0x0

    .line 235
    .line 236
    const/16 v25, 0x0

    .line 237
    .line 238
    move-object/from16 v22, v16

    .line 239
    .line 240
    invoke-direct/range {v22 .. v27}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 241
    .line 242
    .line 243
    const/16 v17, 0x300

    .line 244
    .line 245
    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/Modifier$-CC;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFJJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v12, p0

    .line 249
    .line 250
    move-wide v9, v7

    .line 251
    move v11, v15

    .line 252
    move-object/from16 v7, v21

    .line 253
    .line 254
    move-object v8, v0

    .line 255
    invoke-static/range {v6 .. v12}, Landroidx/work/Operation$State;->drawArrow-uDrxG_w(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/animation/FlingCalculator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .line 257
    .line 258
    invoke-static {v3, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 259
    .line 260
    .line 261
    return-object v18

    .line 262
    :catchall_0
    move-exception v0

    .line 263
    goto :goto_0

    .line 264
    :catchall_1
    move-exception v0

    .line 265
    move-object v3, v13

    .line 266
    :goto_0
    invoke-static {v3, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 267
    .line 268
    .line 269
    throw v0

    .line 270
    :pswitch_0
    move-object/from16 v18, v2

    .line 271
    .line 272
    check-cast v5, Landroidx/compose/ui/geometry/Rect;

    .line 273
    .line 274
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 275
    .line 276
    iget-wide v8, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    .line 277
    .line 278
    move-object v13, v3

    .line 279
    check-cast v13, Landroidx/compose/ui/graphics/ColorFilter;

    .line 280
    .line 281
    move-object/from16 v6, p1

    .line 282
    .line 283
    check-cast v6, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 284
    .line 285
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 286
    .line 287
    .line 288
    iget v1, v5, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 289
    .line 290
    iget v2, v5, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 291
    .line 292
    iget-object v3, v6, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 293
    .line 294
    iget-object v0, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 295
    .line 296
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v0, Landroidx/camera/view/PreviewView$1;

    .line 299
    .line 300
    invoke-virtual {v0, v1, v2}, Landroidx/camera/view/PreviewView$1;->translate(FF)V

    .line 301
    .line 302
    .line 303
    :try_start_2
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 304
    .line 305
    move-object v7, v0

    .line 306
    check-cast v7, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 307
    .line 308
    const/4 v14, 0x0

    .line 309
    const/16 v15, 0x37a

    .line 310
    .line 311
    const-wide/16 v10, 0x0

    .line 312
    .line 313
    const/4 v12, 0x0

    .line 314
    invoke-static/range {v6 .. v15}, Landroidx/compose/ui/Modifier$-CC;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJFLandroidx/compose/ui/graphics/ColorFilter;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 315
    .line 316
    .line 317
    iget-object v0, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 318
    .line 319
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v0, Landroidx/camera/view/PreviewView$1;

    .line 322
    .line 323
    neg-float v1, v1

    .line 324
    neg-float v2, v2

    .line 325
    invoke-virtual {v0, v1, v2}, Landroidx/camera/view/PreviewView$1;->translate(FF)V

    .line 326
    .line 327
    .line 328
    return-object v18

    .line 329
    :catchall_2
    move-exception v0

    .line 330
    iget-object v3, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 331
    .line 332
    iget-object v3, v3, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v3, Landroidx/camera/view/PreviewView$1;

    .line 335
    .line 336
    neg-float v1, v1

    .line 337
    neg-float v2, v2

    .line 338
    invoke-virtual {v3, v1, v2}, Landroidx/camera/view/PreviewView$1;->translate(FF)V

    .line 339
    .line 340
    .line 341
    throw v0

    .line 342
    :pswitch_1
    move-object/from16 v18, v2

    .line 343
    .line 344
    check-cast v5, [F

    .line 345
    .line 346
    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 347
    .line 348
    check-cast v3, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 349
    .line 350
    move-object/from16 v1, p1

    .line 351
    .line 352
    check-cast v1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 353
    .line 354
    iget v2, v1, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 355
    .line 356
    iget-object v6, v1, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    .line 357
    .line 358
    iget v7, v1, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    .line 359
    .line 360
    iget-wide v8, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    .line 361
    .line 362
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-le v2, v0, :cond_0

    .line 367
    .line 368
    iget v0, v1, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 369
    .line 370
    goto :goto_1

    .line 371
    :cond_0
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    :goto_1
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-ge v7, v2, :cond_1

    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_1
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    :goto_2
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    invoke-virtual {v1, v7}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    invoke-static {v0, v1}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 395
    .line 396
    .line 397
    move-result-wide v0

    .line 398
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 399
    .line 400
    iget-object v7, v6, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 401
    .line 402
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 403
    .line 404
    .line 405
    move-result v8

    .line 406
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 407
    .line 408
    .line 409
    move-result v9

    .line 410
    iget-object v10, v7, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 411
    .line 412
    invoke-virtual {v10}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 413
    .line 414
    .line 415
    move-result-object v11

    .line 416
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 417
    .line 418
    .line 419
    move-result v11

    .line 420
    if-ltz v8, :cond_2

    .line 421
    .line 422
    goto :goto_3

    .line 423
    :cond_2
    const-string v12, "startOffset must be > 0"

    .line 424
    .line 425
    invoke-static {v12}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    :goto_3
    if-ge v8, v11, :cond_3

    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_3
    const-string v12, "startOffset must be less than text length"

    .line 432
    .line 433
    invoke-static {v12}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    :goto_4
    if-le v9, v8, :cond_4

    .line 437
    .line 438
    goto :goto_5

    .line 439
    :cond_4
    const-string v12, "endOffset must be greater than startOffset"

    .line 440
    .line 441
    invoke-static {v12}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    :goto_5
    if-gt v9, v11, :cond_5

    .line 445
    .line 446
    goto :goto_6

    .line 447
    :cond_5
    const-string v11, "endOffset must be smaller or equal to text length"

    .line 448
    .line 449
    invoke-static {v11}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :goto_6
    sub-int v11, v9, v8

    .line 453
    .line 454
    mul-int/lit8 v11, v11, 0x4

    .line 455
    .line 456
    array-length v12, v5

    .line 457
    sub-int/2addr v12, v2

    .line 458
    if-lt v12, v11, :cond_6

    .line 459
    .line 460
    goto :goto_7

    .line 461
    :cond_6
    const-string v11, "array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4"

    .line 462
    .line 463
    invoke-static {v11}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :goto_7
    invoke-virtual {v10, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 467
    .line 468
    .line 469
    move-result v11

    .line 470
    add-int/lit8 v12, v9, -0x1

    .line 471
    .line 472
    invoke-virtual {v10, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 473
    .line 474
    .line 475
    move-result v12

    .line 476
    new-instance v13, Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 477
    .line 478
    invoke-direct {v13, v7}, Landroidx/compose/ui/scrollcapture/RelativeScroller;-><init>(Landroidx/compose/ui/text/android/TextLayout;)V

    .line 479
    .line 480
    .line 481
    if-gt v11, v12, :cond_c

    .line 482
    .line 483
    :goto_8
    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineStart(I)I

    .line 484
    .line 485
    .line 486
    move-result v14

    .line 487
    invoke-virtual {v7, v11}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    .line 488
    .line 489
    .line 490
    move-result v15

    .line 491
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 492
    .line 493
    .line 494
    move-result v14

    .line 495
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    .line 496
    .line 497
    .line 498
    move-result v15

    .line 499
    invoke-virtual {v7, v11}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 500
    .line 501
    .line 502
    move-result v16

    .line 503
    invoke-virtual {v7, v11}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 504
    .line 505
    .line 506
    move-result v17

    .line 507
    move-wide/from16 p0, v0

    .line 508
    .line 509
    invoke-virtual {v10, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    const/4 v1, 0x1

    .line 514
    move/from16 v19, v2

    .line 515
    .line 516
    const/4 v2, 0x0

    .line 517
    if-ne v0, v1, :cond_7

    .line 518
    .line 519
    move v0, v1

    .line 520
    goto :goto_9

    .line 521
    :cond_7
    move v0, v2

    .line 522
    :goto_9
    if-ge v14, v15, :cond_b

    .line 523
    .line 524
    invoke-virtual {v10, v14}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 525
    .line 526
    .line 527
    move-result v20

    .line 528
    if-eqz v0, :cond_8

    .line 529
    .line 530
    if-nez v20, :cond_8

    .line 531
    .line 532
    invoke-virtual {v13, v14, v2, v2, v1}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 533
    .line 534
    .line 535
    move-result v20

    .line 536
    add-int/lit8 v2, v14, 0x1

    .line 537
    .line 538
    invoke-virtual {v13, v2, v1, v1, v1}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    move/from16 v21, v0

    .line 543
    .line 544
    move v0, v2

    .line 545
    :goto_a
    const/4 v2, 0x0

    .line 546
    goto :goto_b

    .line 547
    :cond_8
    if-eqz v0, :cond_9

    .line 548
    .line 549
    if-eqz v20, :cond_9

    .line 550
    .line 551
    const/4 v2, 0x0

    .line 552
    invoke-virtual {v13, v14, v2, v2, v2}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 553
    .line 554
    .line 555
    move-result v20

    .line 556
    move/from16 v21, v0

    .line 557
    .line 558
    add-int/lit8 v0, v14, 0x1

    .line 559
    .line 560
    invoke-virtual {v13, v0, v1, v1, v2}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    move/from16 v28, v20

    .line 565
    .line 566
    move/from16 v20, v0

    .line 567
    .line 568
    move/from16 v0, v28

    .line 569
    .line 570
    goto :goto_b

    .line 571
    :cond_9
    move/from16 v21, v0

    .line 572
    .line 573
    const/4 v2, 0x0

    .line 574
    if-nez v21, :cond_a

    .line 575
    .line 576
    if-eqz v20, :cond_a

    .line 577
    .line 578
    invoke-virtual {v13, v14, v2, v2, v1}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    add-int/lit8 v2, v14, 0x1

    .line 583
    .line 584
    invoke-virtual {v13, v2, v1, v1, v1}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 585
    .line 586
    .line 587
    move-result v2

    .line 588
    move/from16 v20, v2

    .line 589
    .line 590
    goto :goto_a

    .line 591
    :cond_a
    invoke-virtual {v13, v14, v2, v2, v2}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 592
    .line 593
    .line 594
    move-result v20

    .line 595
    add-int/lit8 v0, v14, 0x1

    .line 596
    .line 597
    invoke-virtual {v13, v0, v1, v1, v2}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    :goto_b
    aput v20, v5, v19

    .line 602
    .line 603
    add-int/lit8 v20, v19, 0x1

    .line 604
    .line 605
    aput v16, v5, v20

    .line 606
    .line 607
    add-int/lit8 v20, v19, 0x2

    .line 608
    .line 609
    aput v0, v5, v20

    .line 610
    .line 611
    add-int/lit8 v0, v19, 0x3

    .line 612
    .line 613
    aput v17, v5, v0

    .line 614
    .line 615
    add-int/lit8 v19, v19, 0x4

    .line 616
    .line 617
    add-int/lit8 v14, v14, 0x1

    .line 618
    .line 619
    move/from16 v0, v21

    .line 620
    .line 621
    goto :goto_9

    .line 622
    :cond_b
    if-eq v11, v12, :cond_d

    .line 623
    .line 624
    add-int/lit8 v11, v11, 0x1

    .line 625
    .line 626
    move-wide/from16 v0, p0

    .line 627
    .line 628
    move/from16 v2, v19

    .line 629
    .line 630
    goto/16 :goto_8

    .line 631
    .line 632
    :cond_c
    move-wide/from16 p0, v0

    .line 633
    .line 634
    :cond_d
    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 635
    .line 636
    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    mul-int/lit8 v1, v1, 0x4

    .line 641
    .line 642
    add-int/2addr v1, v0

    .line 643
    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 644
    .line 645
    :goto_c
    if-ge v0, v1, :cond_e

    .line 646
    .line 647
    add-int/lit8 v2, v0, 0x1

    .line 648
    .line 649
    aget v7, v5, v2

    .line 650
    .line 651
    iget v8, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 652
    .line 653
    add-float/2addr v7, v8

    .line 654
    aput v7, v5, v2

    .line 655
    .line 656
    add-int/lit8 v2, v0, 0x3

    .line 657
    .line 658
    aget v7, v5, v2

    .line 659
    .line 660
    add-float/2addr v7, v8

    .line 661
    aput v7, v5, v2

    .line 662
    .line 663
    add-int/lit8 v0, v0, 0x4

    .line 664
    .line 665
    goto :goto_c

    .line 666
    :cond_e
    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 667
    .line 668
    iget v0, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 669
    .line 670
    invoke-virtual {v6}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    .line 671
    .line 672
    .line 673
    move-result v1

    .line 674
    add-float/2addr v1, v0

    .line 675
    iput v1, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 676
    .line 677
    return-object v18

    .line 678
    nop

    .line 679
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
