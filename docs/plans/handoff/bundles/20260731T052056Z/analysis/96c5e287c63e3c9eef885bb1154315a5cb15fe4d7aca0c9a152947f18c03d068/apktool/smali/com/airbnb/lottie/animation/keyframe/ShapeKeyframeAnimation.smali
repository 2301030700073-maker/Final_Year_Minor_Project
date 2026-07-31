.class public final Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public shapeModifiers:Ljava/util/ArrayList;

.field public final tempPath:Landroid/graphics/Path;

.field public final tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    move-object v1, v3

    .line 18
    :cond_0
    iget-object v4, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 19
    .line 20
    iget-object v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v6, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 23
    .line 24
    if-nez v6, :cond_1

    .line 25
    .line 26
    new-instance v6, Landroid/graphics/PointF;

    .line 27
    .line 28
    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v6, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 32
    .line 33
    :cond_1
    iget-boolean v6, v3, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 34
    .line 35
    iget-object v7, v3, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    if-nez v6, :cond_3

    .line 39
    .line 40
    iget-boolean v6, v1, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v6, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    move v6, v9

    .line 48
    :goto_1
    iput-boolean v6, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    iget-object v10, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-eq v6, v11, :cond_4

    .line 61
    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v11, "Curves must have the same number of control points. Shape 1: "

    .line 65
    .line 66
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v11, "\tShape 2: "

    .line 77
    .line 78
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {v6}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-ge v11, v6, :cond_5

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    :goto_2
    if-ge v11, v6, :cond_6

    .line 118
    .line 119
    new-instance v12, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 120
    .line 121
    invoke-direct {v12}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    add-int/lit8 v11, v11, 0x1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-le v11, v6, :cond_6

    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    sub-int/2addr v11, v9

    .line 141
    :goto_3
    if-lt v11, v6, :cond_6

    .line 142
    .line 143
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    sub-int/2addr v12, v9

    .line 148
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    add-int/lit8 v11, v11, -0x1

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    iget-object v3, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 155
    .line 156
    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 157
    .line 158
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 159
    .line 160
    iget v11, v1, Landroid/graphics/PointF;->x:F

    .line 161
    .line 162
    invoke-static {v6, v11, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 167
    .line 168
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 169
    .line 170
    invoke-static {v3, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    iget-object v3, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 175
    .line 176
    if-nez v3, :cond_7

    .line 177
    .line 178
    new-instance v3, Landroid/graphics/PointF;

    .line 179
    .line 180
    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v3, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 184
    .line 185
    :cond_7
    invoke-virtual {v3, v6, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    sub-int/2addr v1, v9

    .line 193
    :goto_4
    if-ltz v1, :cond_8

    .line 194
    .line 195
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 200
    .line 201
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 206
    .line 207
    iget-object v11, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 208
    .line 209
    iget-object v12, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 210
    .line 211
    iget-object v3, v3, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 212
    .line 213
    iget-object v13, v6, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 214
    .line 215
    iget-object v14, v6, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 216
    .line 217
    iget-object v6, v6, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 218
    .line 219
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    check-cast v15, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 224
    .line 225
    move/from16 p1, v9

    .line 226
    .line 227
    iget v9, v11, Landroid/graphics/PointF;->x:F

    .line 228
    .line 229
    iget v8, v13, Landroid/graphics/PointF;->x:F

    .line 230
    .line 231
    invoke-static {v9, v8, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    iget v9, v11, Landroid/graphics/PointF;->y:F

    .line 236
    .line 237
    iget v11, v13, Landroid/graphics/PointF;->y:F

    .line 238
    .line 239
    invoke-static {v9, v11, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 240
    .line 241
    .line 242
    move-result v9

    .line 243
    iget-object v11, v15, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 244
    .line 245
    invoke-virtual {v11, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    check-cast v8, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 253
    .line 254
    iget v9, v12, Landroid/graphics/PointF;->x:F

    .line 255
    .line 256
    iget v11, v14, Landroid/graphics/PointF;->x:F

    .line 257
    .line 258
    invoke-static {v9, v11, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    iget v11, v12, Landroid/graphics/PointF;->y:F

    .line 263
    .line 264
    iget v12, v14, Landroid/graphics/PointF;->y:F

    .line 265
    .line 266
    invoke-static {v11, v12, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    iget-object v8, v8, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 271
    .line 272
    invoke-virtual {v8, v9, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    check-cast v8, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 280
    .line 281
    iget v9, v3, Landroid/graphics/PointF;->x:F

    .line 282
    .line 283
    iget v11, v6, Landroid/graphics/PointF;->x:F

    .line 284
    .line 285
    invoke-static {v9, v11, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 286
    .line 287
    .line 288
    move-result v9

    .line 289
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 290
    .line 291
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 292
    .line 293
    invoke-static {v3, v6, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    iget-object v6, v8, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 298
    .line 299
    invoke-virtual {v6, v9, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 300
    .line 301
    .line 302
    add-int/lit8 v1, v1, -0x1

    .line 303
    .line 304
    move/from16 v9, p1

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_8
    move/from16 p1, v9

    .line 308
    .line 309
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/ArrayList;

    .line 310
    .line 311
    if-eqz v1, :cond_1e

    .line 312
    .line 313
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    add-int/lit8 v1, v1, -0x1

    .line 318
    .line 319
    :goto_5
    iget-object v2, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    .line 320
    .line 321
    if-ltz v1, :cond_1d

    .line 322
    .line 323
    iget-object v3, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    check-cast v3, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    const/4 v6, 0x2

    .line 339
    if-gt v5, v6, :cond_9

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_9
    iget-object v5, v3, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 343
    .line 344
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    check-cast v5, Ljava/lang/Float;

    .line 349
    .line 350
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    const/4 v6, 0x0

    .line 355
    cmpl-float v7, v5, v6

    .line 356
    .line 357
    if-nez v7, :cond_a

    .line 358
    .line 359
    :goto_6
    move/from16 p2, v1

    .line 360
    .line 361
    goto/16 :goto_14

    .line 362
    .line 363
    :cond_a
    iget-boolean v7, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 364
    .line 365
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    add-int/lit8 v8, v8, -0x1

    .line 370
    .line 371
    const/4 v9, 0x0

    .line 372
    :goto_7
    if-ltz v8, :cond_10

    .line 373
    .line 374
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    check-cast v10, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 379
    .line 380
    add-int/lit8 v11, v8, -0x1

    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    invoke-static {v11, v12}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 387
    .line 388
    .line 389
    move-result v11

    .line 390
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v11

    .line 394
    check-cast v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 395
    .line 396
    if-nez v8, :cond_b

    .line 397
    .line 398
    if-nez v7, :cond_b

    .line 399
    .line 400
    iget-object v12, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_b
    iget-object v12, v11, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 404
    .line 405
    :goto_8
    if-nez v8, :cond_c

    .line 406
    .line 407
    if-nez v7, :cond_c

    .line 408
    .line 409
    move-object v11, v12

    .line 410
    goto :goto_9

    .line 411
    :cond_c
    iget-object v11, v11, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 412
    .line 413
    :goto_9
    iget-object v10, v10, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 414
    .line 415
    iget-boolean v13, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 416
    .line 417
    if-nez v13, :cond_e

    .line 418
    .line 419
    if-eqz v8, :cond_d

    .line 420
    .line 421
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 422
    .line 423
    .line 424
    move-result v13

    .line 425
    add-int/lit8 v13, v13, -0x1

    .line 426
    .line 427
    if-ne v8, v13, :cond_e

    .line 428
    .line 429
    :cond_d
    move/from16 v13, p1

    .line 430
    .line 431
    goto :goto_a

    .line 432
    :cond_e
    const/4 v13, 0x0

    .line 433
    :goto_a
    invoke-virtual {v11, v12}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v11

    .line 437
    if-eqz v11, :cond_f

    .line 438
    .line 439
    invoke-virtual {v10, v12}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    if-eqz v10, :cond_f

    .line 444
    .line 445
    if-nez v13, :cond_f

    .line 446
    .line 447
    add-int/lit8 v9, v9, 0x2

    .line 448
    .line 449
    goto :goto_b

    .line 450
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 451
    .line 452
    :goto_b
    add-int/lit8 v8, v8, -0x1

    .line 453
    .line 454
    goto :goto_7

    .line 455
    :cond_10
    iget-object v8, v3, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 456
    .line 457
    if-eqz v8, :cond_12

    .line 458
    .line 459
    iget-object v8, v8, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    .line 460
    .line 461
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    if-eq v8, v9, :cond_11

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :cond_11
    const/4 v6, 0x0

    .line 469
    goto :goto_e

    .line 470
    :cond_12
    :goto_c
    new-instance v8, Ljava/util/ArrayList;

    .line 471
    .line 472
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    .line 474
    .line 475
    const/4 v10, 0x0

    .line 476
    :goto_d
    if-ge v10, v9, :cond_13

    .line 477
    .line 478
    new-instance v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 479
    .line 480
    invoke-direct {v11}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    add-int/lit8 v10, v10, 0x1

    .line 487
    .line 488
    goto :goto_d

    .line 489
    :cond_13
    new-instance v9, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 490
    .line 491
    new-instance v10, Landroid/graphics/PointF;

    .line 492
    .line 493
    invoke-direct {v10, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 494
    .line 495
    .line 496
    const/4 v6, 0x0

    .line 497
    invoke-direct {v9, v10, v6, v8}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    .line 498
    .line 499
    .line 500
    iput-object v9, v3, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 501
    .line 502
    :goto_e
    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 503
    .line 504
    iput-boolean v7, v3, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 505
    .line 506
    iget-object v7, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 507
    .line 508
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 509
    .line 510
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 511
    .line 512
    iget-object v9, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 513
    .line 514
    if-nez v9, :cond_14

    .line 515
    .line 516
    new-instance v9, Landroid/graphics/PointF;

    .line 517
    .line 518
    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    .line 519
    .line 520
    .line 521
    iput-object v9, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 522
    .line 523
    :cond_14
    invoke-virtual {v9, v8, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 524
    .line 525
    .line 526
    iget-object v7, v3, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    .line 527
    .line 528
    iget-boolean v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 529
    .line 530
    move v9, v6

    .line 531
    move v10, v9

    .line 532
    :goto_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 533
    .line 534
    .line 535
    move-result v11

    .line 536
    if-ge v9, v11, :cond_1c

    .line 537
    .line 538
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v11

    .line 542
    check-cast v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 543
    .line 544
    add-int/lit8 v12, v9, -0x1

    .line 545
    .line 546
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 547
    .line 548
    .line 549
    move-result v13

    .line 550
    invoke-static {v12, v13}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 551
    .line 552
    .line 553
    move-result v12

    .line 554
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v12

    .line 558
    check-cast v12, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 559
    .line 560
    add-int/lit8 v13, v9, -0x2

    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 563
    .line 564
    .line 565
    move-result v14

    .line 566
    invoke-static {v13, v14}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 567
    .line 568
    .line 569
    move-result v13

    .line 570
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v13

    .line 574
    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 575
    .line 576
    if-nez v9, :cond_15

    .line 577
    .line 578
    if-nez v8, :cond_15

    .line 579
    .line 580
    iget-object v14, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 581
    .line 582
    goto :goto_10

    .line 583
    :cond_15
    iget-object v14, v12, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 584
    .line 585
    :goto_10
    if-nez v9, :cond_16

    .line 586
    .line 587
    if-nez v8, :cond_16

    .line 588
    .line 589
    move-object v15, v14

    .line 590
    goto :goto_11

    .line 591
    :cond_16
    iget-object v15, v12, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 592
    .line 593
    :goto_11
    iget-object v6, v11, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 594
    .line 595
    iget-object v13, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 596
    .line 597
    move/from16 p2, v1

    .line 598
    .line 599
    iget-object v1, v11, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 600
    .line 601
    move-object/from16 v16, v2

    .line 602
    .line 603
    iget-boolean v2, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 604
    .line 605
    if-nez v2, :cond_18

    .line 606
    .line 607
    if-eqz v9, :cond_17

    .line 608
    .line 609
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    add-int/lit8 v2, v2, -0x1

    .line 614
    .line 615
    if-ne v9, v2, :cond_18

    .line 616
    .line 617
    :cond_17
    move/from16 v2, p1

    .line 618
    .line 619
    goto :goto_12

    .line 620
    :cond_18
    const/4 v2, 0x0

    .line 621
    :goto_12
    invoke-virtual {v15, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v15

    .line 625
    if-eqz v15, :cond_1b

    .line 626
    .line 627
    invoke-virtual {v6, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v6

    .line 631
    if-eqz v6, :cond_1b

    .line 632
    .line 633
    if-nez v2, :cond_1b

    .line 634
    .line 635
    iget v2, v14, Landroid/graphics/PointF;->x:F

    .line 636
    .line 637
    iget v6, v13, Landroid/graphics/PointF;->x:F

    .line 638
    .line 639
    sub-float v6, v2, v6

    .line 640
    .line 641
    iget v11, v14, Landroid/graphics/PointF;->y:F

    .line 642
    .line 643
    iget v12, v13, Landroid/graphics/PointF;->y:F

    .line 644
    .line 645
    sub-float v12, v11, v12

    .line 646
    .line 647
    iget v15, v1, Landroid/graphics/PointF;->x:F

    .line 648
    .line 649
    sub-float/2addr v15, v2

    .line 650
    iget v2, v1, Landroid/graphics/PointF;->y:F

    .line 651
    .line 652
    sub-float/2addr v2, v11

    .line 653
    move-object/from16 v17, v4

    .line 654
    .line 655
    move/from16 v18, v5

    .line 656
    .line 657
    float-to-double v4, v6

    .line 658
    float-to-double v11, v12

    .line 659
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    .line 660
    .line 661
    .line 662
    move-result-wide v4

    .line 663
    double-to-float v4, v4

    .line 664
    float-to-double v5, v15

    .line 665
    float-to-double v11, v2

    .line 666
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    .line 667
    .line 668
    .line 669
    move-result-wide v5

    .line 670
    double-to-float v2, v5

    .line 671
    div-float v5, v18, v4

    .line 672
    .line 673
    const/high16 v4, 0x3f000000    # 0.5f

    .line 674
    .line 675
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    .line 676
    .line 677
    .line 678
    move-result v5

    .line 679
    div-float v2, v18, v2

    .line 680
    .line 681
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    iget v4, v14, Landroid/graphics/PointF;->x:F

    .line 686
    .line 687
    iget v6, v13, Landroid/graphics/PointF;->x:F

    .line 688
    .line 689
    invoke-static {v6, v4, v5, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    .line 690
    .line 691
    .line 692
    move-result v6

    .line 693
    iget v11, v14, Landroid/graphics/PointF;->y:F

    .line 694
    .line 695
    iget v12, v13, Landroid/graphics/PointF;->y:F

    .line 696
    .line 697
    invoke-static {v12, v11, v5, v11}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    .line 698
    .line 699
    .line 700
    move-result v5

    .line 701
    iget v12, v1, Landroid/graphics/PointF;->x:F

    .line 702
    .line 703
    invoke-static {v12, v4, v2, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    .line 704
    .line 705
    .line 706
    move-result v12

    .line 707
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 708
    .line 709
    invoke-static {v1, v11, v2, v11}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    sub-float v2, v6, v4

    .line 714
    .line 715
    const v13, 0x3f0d4952    # 0.5519f

    .line 716
    .line 717
    .line 718
    mul-float/2addr v2, v13

    .line 719
    sub-float v2, v6, v2

    .line 720
    .line 721
    sub-float v14, v5, v11

    .line 722
    .line 723
    mul-float/2addr v14, v13

    .line 724
    sub-float v14, v5, v14

    .line 725
    .line 726
    sub-float v4, v12, v4

    .line 727
    .line 728
    mul-float/2addr v4, v13

    .line 729
    sub-float v4, v12, v4

    .line 730
    .line 731
    sub-float v11, v1, v11

    .line 732
    .line 733
    mul-float/2addr v11, v13

    .line 734
    sub-float v11, v1, v11

    .line 735
    .line 736
    add-int/lit8 v13, v10, -0x1

    .line 737
    .line 738
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 739
    .line 740
    .line 741
    move-result v15

    .line 742
    invoke-static {v13, v15}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 743
    .line 744
    .line 745
    move-result v13

    .line 746
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v13

    .line 750
    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 751
    .line 752
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v15

    .line 756
    check-cast v15, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 757
    .line 758
    move/from16 v19, v8

    .line 759
    .line 760
    iget-object v8, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 761
    .line 762
    invoke-virtual {v8, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 763
    .line 764
    .line 765
    iget-object v8, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 766
    .line 767
    invoke-virtual {v8, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 768
    .line 769
    .line 770
    if-nez v9, :cond_1a

    .line 771
    .line 772
    iget-object v8, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 773
    .line 774
    if-nez v8, :cond_19

    .line 775
    .line 776
    new-instance v8, Landroid/graphics/PointF;

    .line 777
    .line 778
    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    .line 779
    .line 780
    .line 781
    iput-object v8, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 782
    .line 783
    :cond_19
    invoke-virtual {v8, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 784
    .line 785
    .line 786
    :cond_1a
    iget-object v5, v15, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 787
    .line 788
    invoke-virtual {v5, v2, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 789
    .line 790
    .line 791
    add-int/lit8 v2, v10, 0x1

    .line 792
    .line 793
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 798
    .line 799
    iget-object v5, v15, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 800
    .line 801
    invoke-virtual {v5, v4, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 802
    .line 803
    .line 804
    iget-object v4, v15, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 805
    .line 806
    invoke-virtual {v4, v12, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 807
    .line 808
    .line 809
    iget-object v2, v2, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 810
    .line 811
    invoke-virtual {v2, v12, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 812
    .line 813
    .line 814
    add-int/lit8 v10, v10, 0x2

    .line 815
    .line 816
    goto :goto_13

    .line 817
    :cond_1b
    move-object/from16 v17, v4

    .line 818
    .line 819
    move/from16 v18, v5

    .line 820
    .line 821
    move/from16 v19, v8

    .line 822
    .line 823
    add-int/lit8 v1, v10, -0x1

    .line 824
    .line 825
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 826
    .line 827
    .line 828
    move-result v2

    .line 829
    invoke-static {v1, v2}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v1

    .line 837
    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 838
    .line 839
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 844
    .line 845
    iget-object v4, v12, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 846
    .line 847
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 848
    .line 849
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 850
    .line 851
    iget-object v6, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 852
    .line 853
    invoke-virtual {v6, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 854
    .line 855
    .line 856
    iget-object v4, v12, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 857
    .line 858
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 859
    .line 860
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 861
    .line 862
    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 863
    .line 864
    invoke-virtual {v1, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 865
    .line 866
    .line 867
    iget-object v1, v11, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 868
    .line 869
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 870
    .line 871
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 872
    .line 873
    iget-object v2, v2, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 874
    .line 875
    invoke-virtual {v2, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 876
    .line 877
    .line 878
    add-int/lit8 v10, v10, 0x1

    .line 879
    .line 880
    :goto_13
    add-int/lit8 v9, v9, 0x1

    .line 881
    .line 882
    move/from16 v1, p2

    .line 883
    .line 884
    move-object/from16 v2, v16

    .line 885
    .line 886
    move-object/from16 v4, v17

    .line 887
    .line 888
    move/from16 v5, v18

    .line 889
    .line 890
    move/from16 v8, v19

    .line 891
    .line 892
    const/4 v6, 0x0

    .line 893
    goto/16 :goto_f

    .line 894
    .line 895
    :cond_1c
    move-object v4, v3

    .line 896
    goto/16 :goto_6

    .line 897
    .line 898
    :goto_14
    add-int/lit8 v1, p2, -0x1

    .line 899
    .line 900
    goto/16 :goto_5

    .line 901
    .line 902
    :cond_1d
    move-object/from16 v17, v4

    .line 903
    .line 904
    :cond_1e
    iget-object v5, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 905
    .line 906
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 907
    .line 908
    .line 909
    iget-object v0, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 910
    .line 911
    iget-object v1, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    .line 912
    .line 913
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 914
    .line 915
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 916
    .line 917
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 918
    .line 919
    .line 920
    sget-object v2, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 921
    .line 922
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 923
    .line 924
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 925
    .line 926
    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 927
    .line 928
    .line 929
    const/4 v0, 0x0

    .line 930
    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 931
    .line 932
    .line 933
    move-result v3

    .line 934
    if-ge v0, v3, :cond_20

    .line 935
    .line 936
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v3

    .line 940
    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 941
    .line 942
    iget-object v6, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 943
    .line 944
    iget-object v7, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 945
    .line 946
    iget-object v3, v3, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 947
    .line 948
    invoke-virtual {v6, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    move-result v8

    .line 952
    if-eqz v8, :cond_1f

    .line 953
    .line 954
    invoke-virtual {v7, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    move-result v8

    .line 958
    if-eqz v8, :cond_1f

    .line 959
    .line 960
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 961
    .line 962
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 963
    .line 964
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 965
    .line 966
    .line 967
    goto :goto_16

    .line 968
    :cond_1f
    iget v8, v6, Landroid/graphics/PointF;->x:F

    .line 969
    .line 970
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 971
    .line 972
    move v9, v6

    .line 973
    move v6, v8

    .line 974
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 975
    .line 976
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 977
    .line 978
    iget v10, v3, Landroid/graphics/PointF;->x:F

    .line 979
    .line 980
    iget v11, v3, Landroid/graphics/PointF;->y:F

    .line 981
    .line 982
    move/from16 v20, v9

    .line 983
    .line 984
    move v9, v7

    .line 985
    move/from16 v7, v20

    .line 986
    .line 987
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 988
    .line 989
    .line 990
    :goto_16
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 991
    .line 992
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 993
    .line 994
    invoke-virtual {v2, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 995
    .line 996
    .line 997
    add-int/lit8 v0, v0, 0x1

    .line 998
    .line 999
    goto :goto_15

    .line 1000
    :cond_20
    iget-boolean v0, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 1001
    .line 1002
    if-eqz v0, :cond_21

    .line 1003
    .line 1004
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 1005
    .line 1006
    .line 1007
    :cond_21
    return-object v5
.end method

.method public final skipCache()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method
