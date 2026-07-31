.class public final synthetic Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object v0, v0, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/compose/foundation/ScrollState;

    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, v0, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    int-to-float v5, v5

    .line 29
    add-float/2addr v5, v1

    .line 30
    iget v7, v0, Landroidx/compose/foundation/ScrollState;->accumulator:F

    .line 31
    .line 32
    add-float/2addr v5, v7

    .line 33
    iget-object v7, v0, Landroidx/compose/foundation/ScrollState;->_maxValueState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 34
    .line 35
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    int-to-float v7, v7

    .line 40
    invoke-static {v5, v4, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    cmpg-float v5, v5, v4

    .line 45
    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v3, 0x0

    .line 51
    :goto_0
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    int-to-float v5, v5

    .line 56
    sub-float/2addr v4, v5

    .line 57
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    add-int/2addr v6, v5

    .line 66
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 67
    .line 68
    .line 69
    int-to-float v2, v5

    .line 70
    sub-float v2, v4, v2

    .line 71
    .line 72
    iput v2, v0, Landroidx/compose/foundation/ScrollState;->accumulator:F

    .line 73
    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    move v1, v4

    .line 77
    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :pswitch_0
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 83
    .line 84
    move-object/from16 v1, p1

    .line 85
    .line 86
    check-cast v1, Landroidx/compose/ui/node/TraversableNode;

    .line 87
    .line 88
    instance-of v2, v1, Landroidx/compose/foundation/GestureNode;

    .line 89
    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    check-cast v1, Landroidx/compose/foundation/GestureNode;

    .line 93
    .line 94
    iget-object v1, v1, Landroidx/compose/foundation/GestureNode;->gestureConnection:Landroidx/compose/foundation/GestureConnection;

    .line 95
    .line 96
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v5, v0

    .line 101
    check-cast v5, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    const-string v0, "Node is not a GestureNode instance"

    .line 108
    .line 109
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    :goto_1
    return-object v5

    .line 114
    :pswitch_1
    check-cast v0, Landroidx/compose/foundation/BorderModifierNode;

    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    check-cast v1, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 119
    .line 120
    iget v7, v0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    mul-float/2addr v8, v7

    .line 127
    cmpl-float v7, v8, v4

    .line 128
    .line 129
    if-ltz v7, :cond_20

    .line 130
    .line 131
    iget-object v7, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 132
    .line 133
    invoke-interface {v7}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 134
    .line 135
    .line 136
    move-result-wide v7

    .line 137
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    cmpl-float v7, v7, v4

    .line 142
    .line 143
    if-lez v7, :cond_20

    .line 144
    .line 145
    iget v7, v0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    .line 146
    .line 147
    invoke-static {v7, v4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    const/high16 v7, 0x3f800000    # 1.0f

    .line 152
    .line 153
    if-eqz v4, :cond_3

    .line 154
    .line 155
    move v4, v7

    .line 156
    goto :goto_2

    .line 157
    :cond_3
    iget v4, v0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    .line 158
    .line 159
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    mul-float/2addr v8, v4

    .line 164
    float-to-double v8, v8

    .line 165
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 166
    .line 167
    .line 168
    move-result-wide v8

    .line 169
    double-to-float v4, v8

    .line 170
    :goto_2
    iget-object v8, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 171
    .line 172
    invoke-interface {v8}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 173
    .line 174
    .line 175
    move-result-wide v8

    .line 176
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    const/high16 v9, 0x40000000    # 2.0f

    .line 181
    .line 182
    div-float/2addr v8, v9

    .line 183
    float-to-double v10, v8

    .line 184
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 185
    .line 186
    .line 187
    move-result-wide v10

    .line 188
    double-to-float v8, v10

    .line 189
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    div-float v4, v11, v9

    .line 194
    .line 195
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    int-to-long v12, v8

    .line 200
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    int-to-long v14, v8

    .line 205
    const/16 v8, 0x20

    .line 206
    .line 207
    shl-long/2addr v12, v8

    .line 208
    const-wide v16, 0xffffffffL

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    and-long v14, v14, v16

    .line 214
    .line 215
    or-long v18, v12, v14

    .line 216
    .line 217
    iget-object v10, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 218
    .line 219
    invoke-interface {v10}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 220
    .line 221
    .line 222
    move-result-wide v12

    .line 223
    shr-long/2addr v12, v8

    .line 224
    long-to-int v10, v12

    .line 225
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    sub-float/2addr v10, v11

    .line 230
    iget-object v12, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 231
    .line 232
    invoke-interface {v12}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 233
    .line 234
    .line 235
    move-result-wide v12

    .line 236
    and-long v12, v12, v16

    .line 237
    .line 238
    long-to-int v12, v12

    .line 239
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    sub-float/2addr v12, v11

    .line 244
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    int-to-long v13, v10

    .line 249
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    move/from16 p0, v4

    .line 254
    .line 255
    int-to-long v3, v10

    .line 256
    shl-long/2addr v13, v8

    .line 257
    and-long v3, v3, v16

    .line 258
    .line 259
    or-long/2addr v3, v13

    .line 260
    mul-float v21, v11, v9

    .line 261
    .line 262
    iget-object v9, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 263
    .line 264
    invoke-interface {v9}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 265
    .line 266
    .line 267
    move-result-wide v9

    .line 268
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    cmpl-float v9, v21, v9

    .line 273
    .line 274
    if-lez v9, :cond_4

    .line 275
    .line 276
    const/4 v9, 0x1

    .line 277
    goto :goto_3

    .line 278
    :cond_4
    const/4 v9, 0x0

    .line 279
    :goto_3
    iget-object v10, v0, Landroidx/compose/foundation/BorderModifierNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 280
    .line 281
    iget-object v13, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 282
    .line 283
    invoke-interface {v13}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 284
    .line 285
    .line 286
    move-result-wide v13

    .line 287
    iget-object v15, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 288
    .line 289
    invoke-interface {v15}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 290
    .line 291
    .line 292
    move-result-object v15

    .line 293
    invoke-interface {v10, v13, v14, v15, v1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    instance-of v13, v10, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 298
    .line 299
    if-eqz v13, :cond_16

    .line 300
    .line 301
    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 302
    .line 303
    check-cast v10, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 304
    .line 305
    iget-object v4, v10, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 306
    .line 307
    if-eqz v9, :cond_5

    .line 308
    .line 309
    new-instance v0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 310
    .line 311
    const/16 v2, 0x11

    .line 312
    .line 313
    invoke-direct {v0, v2, v10, v3}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    goto/16 :goto_f

    .line 321
    .line 322
    :cond_5
    instance-of v9, v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 323
    .line 324
    if-eqz v9, :cond_6

    .line 325
    .line 326
    move-object v9, v3

    .line 327
    check-cast v9, Landroidx/compose/ui/graphics/SolidColor;

    .line 328
    .line 329
    iget-wide v13, v9, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 330
    .line 331
    invoke-static {v7, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 332
    .line 333
    .line 334
    move-result-wide v13

    .line 335
    new-instance v9, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 336
    .line 337
    invoke-direct {v9, v2, v13, v14}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(IJ)V

    .line 338
    .line 339
    .line 340
    const/4 v2, 0x1

    .line 341
    goto :goto_4

    .line 342
    :cond_6
    const/4 v2, 0x0

    .line 343
    const/4 v9, 0x0

    .line 344
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidPath;->getBounds()Landroidx/compose/ui/geometry/Rect;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    iget v13, v11, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 349
    .line 350
    iget v14, v11, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 351
    .line 352
    iget-object v15, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 353
    .line 354
    if-nez v15, :cond_7

    .line 355
    .line 356
    new-instance v15, Landroidx/compose/foundation/BorderCache;

    .line 357
    .line 358
    invoke-direct {v15}, Landroidx/compose/foundation/BorderCache;-><init>()V

    .line 359
    .line 360
    .line 361
    iput-object v15, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 362
    .line 363
    :cond_7
    iget-object v15, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 364
    .line 365
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    iget-object v5, v15, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 369
    .line 370
    if-nez v5, :cond_8

    .line 371
    .line 372
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    iput-object v5, v15, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 377
    .line 378
    :cond_8
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    iget v15, v11, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 385
    .line 386
    move/from16 p1, v7

    .line 387
    .line 388
    iget v7, v11, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 389
    .line 390
    move/from16 v28, v8

    .line 391
    .line 392
    iget v8, v11, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 393
    .line 394
    iget v12, v11, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 395
    .line 396
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    .line 397
    .line 398
    .line 399
    move-result v18

    .line 400
    if-nez v18, :cond_9

    .line 401
    .line 402
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    .line 403
    .line 404
    .line 405
    move-result v18

    .line 406
    if-nez v18, :cond_9

    .line 407
    .line 408
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 409
    .line 410
    .line 411
    move-result v18

    .line 412
    if-nez v18, :cond_9

    .line 413
    .line 414
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 415
    .line 416
    .line 417
    move-result v18

    .line 418
    if-eqz v18, :cond_a

    .line 419
    .line 420
    :cond_9
    const-string v18, "Invalid rectangle, make sure no value is NaN"

    .line 421
    .line 422
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :cond_a
    iget-object v6, v5, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    .line 426
    .line 427
    if-nez v6, :cond_b

    .line 428
    .line 429
    new-instance v6, Landroid/graphics/RectF;

    .line 430
    .line 431
    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 432
    .line 433
    .line 434
    iput-object v6, v5, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    .line 435
    .line 436
    :cond_b
    iget-object v6, v5, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    .line 437
    .line 438
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v6, v15, v12, v8, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 442
    .line 443
    .line 444
    iget-object v6, v5, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 445
    .line 446
    iget-object v7, v5, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    .line 447
    .line 448
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 452
    .line 453
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 454
    .line 455
    .line 456
    const/4 v6, 0x0

    .line 457
    invoke-virtual {v5, v5, v4, v6}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPath;I)Z

    .line 458
    .line 459
    .line 460
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 461
    .line 462
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 463
    .line 464
    .line 465
    iget v6, v11, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 466
    .line 467
    sub-float/2addr v6, v14

    .line 468
    float-to-double v6, v6

    .line 469
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 470
    .line 471
    .line 472
    move-result-wide v6

    .line 473
    double-to-float v6, v6

    .line 474
    float-to-int v6, v6

    .line 475
    iget v7, v11, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 476
    .line 477
    sub-float/2addr v7, v13

    .line 478
    float-to-double v7, v7

    .line 479
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 480
    .line 481
    .line 482
    move-result-wide v7

    .line 483
    double-to-float v7, v7

    .line 484
    float-to-int v7, v7

    .line 485
    move-object/from16 p0, v5

    .line 486
    .line 487
    int-to-long v5, v6

    .line 488
    shl-long v5, v5, v28

    .line 489
    .line 490
    int-to-long v7, v7

    .line 491
    and-long v7, v7, v16

    .line 492
    .line 493
    or-long/2addr v5, v7

    .line 494
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    iget-object v7, v0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 500
    .line 501
    iget-object v8, v0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 502
    .line 503
    if-eqz v7, :cond_c

    .line 504
    .line 505
    iget-object v12, v7, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 506
    .line 507
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 508
    .line 509
    .line 510
    move-result-object v12

    .line 511
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    invoke-static {v12}, Landroidx/compose/ui/graphics/Api26Bitmap;->toImageConfig(Landroid/graphics/Bitmap$Config;)I

    .line 515
    .line 516
    .line 517
    move-result v12

    .line 518
    new-instance v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 519
    .line 520
    invoke-direct {v15, v12}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    .line 521
    .line 522
    .line 523
    goto :goto_5

    .line 524
    :cond_c
    const/4 v15, 0x0

    .line 525
    :goto_5
    if-nez v15, :cond_d

    .line 526
    .line 527
    goto :goto_6

    .line 528
    :cond_d
    iget v12, v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    .line 529
    .line 530
    if-nez v12, :cond_e

    .line 531
    .line 532
    goto :goto_9

    .line 533
    :cond_e
    :goto_6
    if-eqz v7, :cond_f

    .line 534
    .line 535
    iget-object v12, v7, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 536
    .line 537
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 538
    .line 539
    .line 540
    move-result-object v12

    .line 541
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    invoke-static {v12}, Landroidx/compose/ui/graphics/Api26Bitmap;->toImageConfig(Landroid/graphics/Bitmap$Config;)I

    .line 545
    .line 546
    .line 547
    move-result v12

    .line 548
    new-instance v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 549
    .line 550
    invoke-direct {v15, v12}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    .line 551
    .line 552
    .line 553
    goto :goto_7

    .line 554
    :cond_f
    const/4 v15, 0x0

    .line 555
    :goto_7
    invoke-static {v15}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v12

    .line 559
    if-nez v12, :cond_10

    .line 560
    .line 561
    goto :goto_8

    .line 562
    :cond_10
    iget v12, v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    .line 563
    .line 564
    if-eq v2, v12, :cond_11

    .line 565
    .line 566
    :goto_8
    const/16 v22, 0x0

    .line 567
    .line 568
    goto :goto_a

    .line 569
    :cond_11
    :goto_9
    const/16 v22, 0x1

    .line 570
    .line 571
    :goto_a
    if-eqz v7, :cond_12

    .line 572
    .line 573
    if-eqz v8, :cond_12

    .line 574
    .line 575
    iget-object v12, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 576
    .line 577
    invoke-interface {v12}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 578
    .line 579
    .line 580
    move-result-wide v18

    .line 581
    move-wide/from16 v29, v5

    .line 582
    .line 583
    shr-long v5, v18, v28

    .line 584
    .line 585
    long-to-int v5, v5

    .line 586
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 587
    .line 588
    .line 589
    move-result v5

    .line 590
    iget-object v6, v7, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 591
    .line 592
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 593
    .line 594
    .line 595
    move-result v12

    .line 596
    int-to-float v12, v12

    .line 597
    cmpl-float v5, v5, v12

    .line 598
    .line 599
    if-gtz v5, :cond_13

    .line 600
    .line 601
    iget-object v5, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 602
    .line 603
    invoke-interface {v5}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 604
    .line 605
    .line 606
    move-result-wide v18

    .line 607
    move-object v12, v6

    .line 608
    and-long v5, v18, v16

    .line 609
    .line 610
    long-to-int v5, v5

    .line 611
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    int-to-float v6, v6

    .line 620
    cmpl-float v5, v5, v6

    .line 621
    .line 622
    if-gtz v5, :cond_13

    .line 623
    .line 624
    if-nez v22, :cond_14

    .line 625
    .line 626
    goto :goto_b

    .line 627
    :cond_12
    move-wide/from16 v29, v5

    .line 628
    .line 629
    :cond_13
    :goto_b
    shr-long v5, v29, v28

    .line 630
    .line 631
    long-to-int v5, v5

    .line 632
    and-long v6, v29, v16

    .line 633
    .line 634
    long-to-int v6, v6

    .line 635
    const/16 v7, 0x18

    .line 636
    .line 637
    invoke-static {v5, v6, v2, v7}, Landroidx/compose/ui/graphics/ColorKt;->ImageBitmap-x__-hDU$default(IIII)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    iput-object v7, v0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 642
    .line 643
    invoke-static {v7}, Landroidx/compose/ui/graphics/ColorKt;->Canvas(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 644
    .line 645
    .line 646
    move-result-object v8

    .line 647
    iput-object v8, v0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 648
    .line 649
    :cond_14
    iget-object v2, v0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 650
    .line 651
    if-nez v2, :cond_15

    .line 652
    .line 653
    new-instance v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 654
    .line 655
    invoke-direct {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 656
    .line 657
    .line 658
    iput-object v2, v0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 659
    .line 660
    :cond_15
    iget-object v5, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 661
    .line 662
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 663
    .line 664
    move-object/from16 v31, v2

    .line 665
    .line 666
    move-object v6, v3

    .line 667
    invoke-static/range {v29 .. v30}, Lorg/jsoup/helper/Validate;->toSize-ozmzZPI(J)J

    .line 668
    .line 669
    .line 670
    move-result-wide v2

    .line 671
    iget-object v12, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 672
    .line 673
    invoke-interface {v12}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 674
    .line 675
    .line 676
    move-result-object v12

    .line 677
    iget-object v15, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 678
    .line 679
    move-object/from16 v18, v6

    .line 680
    .line 681
    iget-object v6, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 682
    .line 683
    move-object/from16 v19, v9

    .line 684
    .line 685
    iget-object v9, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 686
    .line 687
    move-object/from16 v40, v6

    .line 688
    .line 689
    move-object/from16 v39, v7

    .line 690
    .line 691
    iget-wide v6, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 692
    .line 693
    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 694
    .line 695
    iput-object v12, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 696
    .line 697
    iput-object v8, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 698
    .line 699
    iput-wide v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 700
    .line 701
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    .line 702
    .line 703
    .line 704
    sget-wide v32, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 705
    .line 706
    const/16 v37, 0x0

    .line 707
    .line 708
    const/16 v38, 0x3a

    .line 709
    .line 710
    const/16 v36, 0x0

    .line 711
    .line 712
    move-wide/from16 v34, v2

    .line 713
    .line 714
    invoke-static/range {v31 .. v38}, Landroidx/compose/ui/Modifier$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 715
    .line 716
    .line 717
    neg-float v2, v14

    .line 718
    neg-float v3, v13

    .line 719
    iget-object v12, v5, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 720
    .line 721
    check-cast v12, Landroidx/camera/view/PreviewView$1;

    .line 722
    .line 723
    invoke-virtual {v12, v2, v3}, Landroidx/camera/view/PreviewView$1;->translate(FF)V

    .line 724
    .line 725
    .line 726
    :try_start_0
    iget-object v10, v10, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 727
    .line 728
    new-instance v20, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 729
    .line 730
    const/16 v24, 0x0

    .line 731
    .line 732
    const/16 v25, 0x1e

    .line 733
    .line 734
    const/16 v22, 0x0

    .line 735
    .line 736
    const/16 v23, 0x0

    .line 737
    .line 738
    invoke-direct/range {v20 .. v25}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 739
    .line 740
    .line 741
    const/16 v27, 0x34

    .line 742
    .line 743
    const/16 v25, 0x0

    .line 744
    .line 745
    move-object/from16 v23, v10

    .line 746
    .line 747
    move-object/from16 v24, v18

    .line 748
    .line 749
    move-object/from16 v26, v20

    .line 750
    .line 751
    move-object/from16 v22, v31

    .line 752
    .line 753
    invoke-static/range {v22 .. v27}, Landroidx/compose/ui/Modifier$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 757
    .line 758
    .line 759
    move-result-wide v12

    .line 760
    shr-long v12, v12, v28

    .line 761
    .line 762
    long-to-int v10, v12

    .line 763
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 764
    .line 765
    .line 766
    move-result v10

    .line 767
    add-float v10, v10, p1

    .line 768
    .line 769
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 770
    .line 771
    .line 772
    move-result-wide v12

    .line 773
    shr-long v12, v12, v28

    .line 774
    .line 775
    long-to-int v12, v12

    .line 776
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 777
    .line 778
    .line 779
    move-result v12

    .line 780
    div-float/2addr v10, v12

    .line 781
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 782
    .line 783
    .line 784
    move-result-wide v12

    .line 785
    and-long v12, v12, v16

    .line 786
    .line 787
    long-to-int v12, v12

    .line 788
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 789
    .line 790
    .line 791
    move-result v12

    .line 792
    add-float v12, v12, p1

    .line 793
    .line 794
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 795
    .line 796
    .line 797
    move-result-wide v13

    .line 798
    and-long v13, v13, v16

    .line 799
    .line 800
    long-to-int v13, v13

    .line 801
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 802
    .line 803
    .line 804
    move-result v13

    .line 805
    div-float/2addr v12, v13

    .line 806
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getCenter-F1C5BW0()J

    .line 807
    .line 808
    .line 809
    move-result-wide v13

    .line 810
    move-wide/from16 v16, v6

    .line 811
    .line 812
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 813
    .line 814
    .line 815
    move-result-wide v6

    .line 816
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 817
    .line 818
    .line 819
    move-result-object v18

    .line 820
    invoke-interface/range {v18 .. v18}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    .line 822
    .line 823
    move-object/from16 v18, v8

    .line 824
    .line 825
    :try_start_1
    iget-object v8, v5, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 826
    .line 827
    check-cast v8, Landroidx/camera/view/PreviewView$1;

    .line 828
    .line 829
    invoke-virtual {v8, v10, v12, v13, v14}, Landroidx/camera/view/PreviewView$1;->scale-0AR0LA0(FFJ)V

    .line 830
    .line 831
    .line 832
    const/16 v26, 0x0

    .line 833
    .line 834
    const/16 v27, 0x1c

    .line 835
    .line 836
    const/16 v25, 0x0

    .line 837
    .line 838
    move-object/from16 v23, p0

    .line 839
    .line 840
    move-object/from16 v22, v31

    .line 841
    .line 842
    invoke-static/range {v22 .. v27}, Landroidx/compose/ui/Modifier$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 843
    .line 844
    .line 845
    :try_start_2
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 846
    .line 847
    .line 848
    move-result-object v8

    .line 849
    invoke-interface {v8}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v5, v6, v7}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 853
    .line 854
    .line 855
    iget-object v5, v5, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v5, Landroidx/camera/view/PreviewView$1;

    .line 858
    .line 859
    neg-float v2, v2

    .line 860
    neg-float v3, v3

    .line 861
    invoke-virtual {v5, v2, v3}, Landroidx/camera/view/PreviewView$1;->translate(FF)V

    .line 862
    .line 863
    .line 864
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    .line 865
    .line 866
    .line 867
    iput-object v15, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 868
    .line 869
    move-object/from16 v2, v40

    .line 870
    .line 871
    iput-object v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 872
    .line 873
    iput-object v9, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 874
    .line 875
    move-wide/from16 v2, v16

    .line 876
    .line 877
    iput-wide v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 878
    .line 879
    move-object/from16 v7, v39

    .line 880
    .line 881
    iget-object v0, v7, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 882
    .line 883
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 884
    .line 885
    .line 886
    iput-object v7, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 887
    .line 888
    new-instance v22, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;

    .line 889
    .line 890
    const/16 v28, 0x1

    .line 891
    .line 892
    move-object/from16 v24, v4

    .line 893
    .line 894
    move-object/from16 v23, v11

    .line 895
    .line 896
    move-object/from16 v27, v19

    .line 897
    .line 898
    move-wide/from16 v25, v29

    .line 899
    .line 900
    invoke-direct/range {v22 .. v28}, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V

    .line 901
    .line 902
    .line 903
    move-object/from16 v0, v22

    .line 904
    .line 905
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 906
    .line 907
    .line 908
    move-result-object v5

    .line 909
    goto/16 :goto_f

    .line 910
    .line 911
    :catchall_0
    move-exception v0

    .line 912
    goto :goto_c

    .line 913
    :catchall_1
    move-exception v0

    .line 914
    :try_start_3
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 915
    .line 916
    .line 917
    move-result-object v1

    .line 918
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v5, v6, v7}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    .line 922
    .line 923
    .line 924
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 925
    :goto_c
    iget-object v1, v5, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 926
    .line 927
    check-cast v1, Landroidx/camera/view/PreviewView$1;

    .line 928
    .line 929
    neg-float v2, v2

    .line 930
    neg-float v3, v3

    .line 931
    invoke-virtual {v1, v2, v3}, Landroidx/camera/view/PreviewView$1;->translate(FF)V

    .line 932
    .line 933
    .line 934
    throw v0

    .line 935
    :cond_16
    instance-of v2, v10, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 936
    .line 937
    if-eqz v2, :cond_1b

    .line 938
    .line 939
    iget-object v2, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 940
    .line 941
    check-cast v10, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 942
    .line 943
    iget-object v5, v10, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 944
    .line 945
    invoke-static {v5}, Landroidx/room/util/DBUtil;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 946
    .line 947
    .line 948
    move-result v6

    .line 949
    if-eqz v6, :cond_17

    .line 950
    .line 951
    iget-wide v5, v5, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    .line 952
    .line 953
    new-instance v21, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 954
    .line 955
    const/4 v14, 0x0

    .line 956
    const/16 v15, 0x1e

    .line 957
    .line 958
    const/4 v12, 0x0

    .line 959
    const/4 v13, 0x0

    .line 960
    move-object/from16 v10, v21

    .line 961
    .line 962
    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 963
    .line 964
    .line 965
    new-instance v10, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;

    .line 966
    .line 967
    move/from16 v15, p0

    .line 968
    .line 969
    move-object v12, v2

    .line 970
    move-wide v13, v5

    .line 971
    move/from16 v16, v11

    .line 972
    .line 973
    move-wide/from16 v17, v18

    .line 974
    .line 975
    move-wide/from16 v19, v3

    .line 976
    .line 977
    move v11, v9

    .line 978
    invoke-direct/range {v10 .. v21}, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;-><init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v1, v10}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 982
    .line 983
    .line 984
    move-result-object v5

    .line 985
    goto/16 :goto_f

    .line 986
    .line 987
    :cond_17
    move v6, v9

    .line 988
    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 989
    .line 990
    if-nez v3, :cond_18

    .line 991
    .line 992
    new-instance v3, Landroidx/compose/foundation/BorderCache;

    .line 993
    .line 994
    invoke-direct {v3}, Landroidx/compose/foundation/BorderCache;-><init>()V

    .line 995
    .line 996
    .line 997
    iput-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 998
    .line 999
    :cond_18
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 1000
    .line 1001
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1002
    .line 1003
    .line 1004
    iget-object v3, v0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 1005
    .line 1006
    if-nez v3, :cond_19

    .line 1007
    .line 1008
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v3

    .line 1012
    iput-object v3, v0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 1013
    .line 1014
    :cond_19
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    .line 1015
    .line 1016
    .line 1017
    invoke-static {v3, v5}, Landroidx/compose/ui/Modifier$-CC;->addRoundRect$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/RoundRect;)V

    .line 1018
    .line 1019
    .line 1020
    if-nez v6, :cond_1a

    .line 1021
    .line 1022
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    iget v4, v5, Landroidx/compose/ui/geometry/RoundRect;->right:F

    .line 1027
    .line 1028
    iget v6, v5, Landroidx/compose/ui/geometry/RoundRect;->left:F

    .line 1029
    .line 1030
    sub-float/2addr v4, v6

    .line 1031
    sub-float v13, v4, v11

    .line 1032
    .line 1033
    iget v4, v5, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    .line 1034
    .line 1035
    iget v6, v5, Landroidx/compose/ui/geometry/RoundRect;->top:F

    .line 1036
    .line 1037
    sub-float/2addr v4, v6

    .line 1038
    sub-float v14, v4, v11

    .line 1039
    .line 1040
    iget-wide v6, v5, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    .line 1041
    .line 1042
    invoke-static {v11, v6, v7}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    .line 1043
    .line 1044
    .line 1045
    move-result-wide v15

    .line 1046
    iget-wide v6, v5, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    .line 1047
    .line 1048
    invoke-static {v11, v6, v7}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    .line 1049
    .line 1050
    .line 1051
    move-result-wide v17

    .line 1052
    iget-wide v6, v5, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    .line 1053
    .line 1054
    invoke-static {v11, v6, v7}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    .line 1055
    .line 1056
    .line 1057
    move-result-wide v21

    .line 1058
    iget-wide v4, v5, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    .line 1059
    .line 1060
    invoke-static {v11, v4, v5}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    .line 1061
    .line 1062
    .line 1063
    move-result-wide v19

    .line 1064
    new-instance v10, Landroidx/compose/ui/geometry/RoundRect;

    .line 1065
    .line 1066
    move v12, v11

    .line 1067
    invoke-direct/range {v10 .. v22}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    .line 1068
    .line 1069
    .line 1070
    invoke-static {v0, v10}, Landroidx/compose/ui/Modifier$-CC;->addRoundRect$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/RoundRect;)V

    .line 1071
    .line 1072
    .line 1073
    const/4 v6, 0x0

    .line 1074
    invoke-virtual {v3, v3, v0, v6}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPath;I)Z

    .line 1075
    .line 1076
    .line 1077
    :cond_1a
    new-instance v0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 1078
    .line 1079
    const/16 v4, 0x10

    .line 1080
    .line 1081
    invoke-direct {v0, v4, v3, v2}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v5

    .line 1088
    goto :goto_f

    .line 1089
    :cond_1b
    move v6, v9

    .line 1090
    move-wide/from16 v17, v18

    .line 1091
    .line 1092
    instance-of v2, v10, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 1093
    .line 1094
    if-eqz v2, :cond_1f

    .line 1095
    .line 1096
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 1097
    .line 1098
    if-eqz v6, :cond_1c

    .line 1099
    .line 1100
    const-wide/16 v18, 0x0

    .line 1101
    .line 1102
    move-wide/from16 v23, v18

    .line 1103
    .line 1104
    goto :goto_d

    .line 1105
    :cond_1c
    move-wide/from16 v23, v17

    .line 1106
    .line 1107
    :goto_d
    if-eqz v6, :cond_1d

    .line 1108
    .line 1109
    iget-object v2, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1110
    .line 1111
    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 1112
    .line 1113
    .line 1114
    move-result-wide v3

    .line 1115
    :cond_1d
    move-wide/from16 v25, v3

    .line 1116
    .line 1117
    if-eqz v6, :cond_1e

    .line 1118
    .line 1119
    sget-object v2, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 1120
    .line 1121
    move-object/from16 v27, v2

    .line 1122
    .line 1123
    goto :goto_e

    .line 1124
    :cond_1e
    new-instance v10, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 1125
    .line 1126
    const/4 v14, 0x0

    .line 1127
    const/16 v15, 0x1e

    .line 1128
    .line 1129
    const/4 v12, 0x0

    .line 1130
    const/4 v13, 0x0

    .line 1131
    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 1132
    .line 1133
    .line 1134
    move-object/from16 v27, v10

    .line 1135
    .line 1136
    :goto_e
    new-instance v21, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda0;

    .line 1137
    .line 1138
    move-object/from16 v22, v0

    .line 1139
    .line 1140
    invoke-direct/range {v21 .. v27}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 1141
    .line 1142
    .line 1143
    move-object/from16 v0, v21

    .line 1144
    .line 1145
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v5

    .line 1149
    goto :goto_f

    .line 1150
    :cond_1f
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1151
    .line 1152
    .line 1153
    const/4 v5, 0x0

    .line 1154
    goto :goto_f

    .line 1155
    :cond_20
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 1156
    .line 1157
    const/4 v6, 0x0

    .line 1158
    invoke-direct {v0, v6}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v5

    .line 1165
    :goto_f
    return-object v5

    .line 1166
    :pswitch_2
    check-cast v0, Ljava/lang/String;

    .line 1167
    .line 1168
    move-object/from16 v1, p1

    .line 1169
    .line 1170
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1171
    .line 1172
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 1176
    .line 1177
    .line 1178
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1179
    .line 1180
    return-object v0

    .line 1181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
