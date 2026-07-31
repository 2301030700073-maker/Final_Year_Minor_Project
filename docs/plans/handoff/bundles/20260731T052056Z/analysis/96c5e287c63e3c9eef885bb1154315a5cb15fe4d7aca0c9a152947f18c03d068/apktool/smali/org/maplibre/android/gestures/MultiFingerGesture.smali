.class public abstract Lorg/maplibre/android/gestures/MultiFingerGesture;
.super Lorg/maplibre/android/gestures/BaseGesture;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public displayMetrics:Landroid/util/DisplayMetrics;

.field public final edgeSlop:F

.field public focalPoint:Landroid/graphics/PointF;

.field public final permittedActionsGuard:Lokio/ByteString$Companion;

.field public final pointerIdList:Ljava/util/ArrayList;

.field public final pointersDistanceMap:Ljava/util/HashMap;

.field public spanThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/BaseGesture;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lokio/ByteString$Companion;

    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-direct {p2, v0}, Lokio/ByteString$Companion;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->permittedActionsGuard:Lokio/ByteString$Companion;

    .line 12
    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance p2, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance p2, Landroid/graphics/PointF;

    .line 28
    .line 29
    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    int-to-float p1, p1

    .line 43
    iput p1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->edgeSlop:F

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->queryDisplayMetrics()V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public analyzeEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->queryDisplayMetrics()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v4, v0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iget-object v6, v0, Lorg/maplibre/android/gestures/MultiFingerGesture;->permittedActionsGuard:Lokio/ByteString$Companion;

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    const/16 v7, 0x8

    .line 31
    .line 32
    const-wide/16 v8, 0x0

    .line 33
    .line 34
    const-wide/16 v10, 0xff

    .line 35
    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    move-wide v12, v8

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    sub-int v12, v3, v5

    .line 41
    .line 42
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    if-le v12, v6, :cond_2

    .line 47
    .line 48
    :goto_0
    move-wide v12, v10

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    if-le v3, v5, :cond_3

    .line 51
    .line 52
    const-wide/16 v12, 0x5

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    if-ge v3, v5, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    if-ne v3, v6, :cond_5

    .line 59
    .line 60
    const-wide/16 v12, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    const-wide/16 v12, 0x6

    .line 64
    .line 65
    :goto_1
    shl-long/2addr v12, v7

    .line 66
    const-wide/16 v14, 0x2

    .line 67
    .line 68
    add-long/2addr v12, v14

    .line 69
    :goto_2
    int-to-long v14, v2

    .line 70
    cmp-long v3, v14, v12

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    const/16 v16, 0x0

    .line 74
    .line 75
    if-nez v3, :cond_6

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_6
    :goto_3
    cmp-long v3, v12, v8

    .line 79
    .line 80
    if-eqz v3, :cond_9

    .line 81
    .line 82
    and-long v17, v12, v10

    .line 83
    .line 84
    cmp-long v3, v14, v17

    .line 85
    .line 86
    if-nez v3, :cond_8

    .line 87
    .line 88
    :goto_4
    if-ne v2, v5, :cond_7

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_7

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    check-cast v7, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    const/4 v8, -0x1

    .line 115
    if-eq v7, v8, :cond_9

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_7
    move/from16 v3, v16

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_8
    shr-long/2addr v12, v7

    .line 122
    goto :goto_3

    .line 123
    :cond_9
    move v3, v6

    .line 124
    :goto_6
    iget-object v7, v0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    .line 125
    .line 126
    if-eqz v3, :cond_b

    .line 127
    .line 128
    instance-of v8, v0, Lorg/maplibre/android/gestures/ProgressiveGesture;

    .line 129
    .line 130
    if-eqz v8, :cond_a

    .line 131
    .line 132
    move-object v8, v0

    .line 133
    check-cast v8, Lorg/maplibre/android/gestures/ProgressiveGesture;

    .line 134
    .line 135
    iget-boolean v9, v8, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 136
    .line 137
    if-eqz v9, :cond_a

    .line 138
    .line 139
    invoke-virtual {v8}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStopped()V

    .line 140
    .line 141
    .line 142
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 146
    .line 147
    .line 148
    :cond_b
    if-eqz v3, :cond_c

    .line 149
    .line 150
    if-nez v2, :cond_10

    .line 151
    .line 152
    :cond_c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-eqz v8, :cond_f

    .line 157
    .line 158
    const/4 v9, 0x5

    .line 159
    if-ne v8, v9, :cond_d

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_d
    if-eq v8, v6, :cond_e

    .line 163
    .line 164
    const/4 v9, 0x6

    .line 165
    if-ne v8, v9, :cond_10

    .line 166
    .line 167
    :cond_e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_8

    .line 183
    :cond_f
    :goto_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    :cond_10
    :goto_8
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    const/4 v9, 0x0

    .line 203
    move v10, v9

    .line 204
    move/from16 v11, v16

    .line 205
    .line 206
    :goto_9
    if-ge v11, v8, :cond_11

    .line 207
    .line 208
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    add-float/2addr v9, v12

    .line 213
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    add-float/2addr v10, v12

    .line 218
    add-int/lit8 v11, v11, 0x1

    .line 219
    .line 220
    goto :goto_9

    .line 221
    :cond_11
    new-instance v1, Landroid/graphics/PointF;

    .line 222
    .line 223
    int-to-float v8, v8

    .line 224
    div-float/2addr v9, v8

    .line 225
    div-float/2addr v10, v8

    .line 226
    invoke-direct {v1, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 227
    .line 228
    .line 229
    iput-object v1, v0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 230
    .line 231
    if-eqz v3, :cond_12

    .line 232
    .line 233
    const-string v0, "MultiFingerGesture"

    .line 234
    .line 235
    const-string v1, "Some MotionEvents were not passed to the library or events from different view trees are merged."

    .line 236
    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    return v16

    .line 241
    :cond_12
    if-ne v2, v5, :cond_15

    .line 242
    .line 243
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-virtual {v0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getRequiredPointersCount()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-lt v1, v2, :cond_15

    .line 252
    .line 253
    iget-object v1, v0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 254
    .line 255
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPressure()F

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    iget-object v2, v0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    .line 260
    .line 261
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPressure()F

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    div-float/2addr v1, v2

    .line 266
    const v2, 0x3f2b851f    # 0.67f

    .line 267
    .line 268
    .line 269
    cmpl-float v1, v1, v2

    .line 270
    .line 271
    if-lez v1, :cond_15

    .line 272
    .line 273
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 274
    .line 275
    .line 276
    move/from16 v1, v16

    .line 277
    .line 278
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    sub-int/2addr v2, v6

    .line 283
    if-ge v1, v2, :cond_14

    .line 284
    .line 285
    add-int/lit8 v2, v1, 0x1

    .line 286
    .line 287
    move v3, v2

    .line 288
    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-ge v3, v5, :cond_13

    .line 293
    .line 294
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    check-cast v5, Ljava/lang/Integer;

    .line 299
    .line 300
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    check-cast v9, Ljava/lang/Integer;

    .line 309
    .line 310
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    iget-object v11, v0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    .line 315
    .line 316
    invoke-virtual {v11, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 317
    .line 318
    .line 319
    move-result v12

    .line 320
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    .line 321
    .line 322
    .line 323
    move-result v11

    .line 324
    iget-object v12, v0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    .line 325
    .line 326
    invoke-virtual {v12, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getY(I)F

    .line 331
    .line 332
    .line 333
    move-result v12

    .line 334
    iget-object v13, v0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    .line 335
    .line 336
    invoke-virtual {v13, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 337
    .line 338
    .line 339
    move-result v14

    .line 340
    invoke-virtual {v13, v14}, Landroid/view/MotionEvent;->getX(I)F

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    iget-object v14, v0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    .line 345
    .line 346
    invoke-virtual {v14, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 347
    .line 348
    .line 349
    move-result v15

    .line 350
    invoke-virtual {v14, v15}, Landroid/view/MotionEvent;->getY(I)F

    .line 351
    .line 352
    .line 353
    move-result v14

    .line 354
    sub-float/2addr v13, v11

    .line 355
    sub-float/2addr v14, v12

    .line 356
    iget-object v11, v0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 357
    .line 358
    invoke-virtual {v11, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 359
    .line 360
    .line 361
    move-result v12

    .line 362
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    .line 363
    .line 364
    .line 365
    move-result v11

    .line 366
    iget-object v12, v0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 367
    .line 368
    invoke-virtual {v12, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 369
    .line 370
    .line 371
    move-result v8

    .line 372
    invoke-virtual {v12, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    iget-object v12, v0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 377
    .line 378
    invoke-virtual {v12, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 379
    .line 380
    .line 381
    move-result v15

    .line 382
    invoke-virtual {v12, v15}, Landroid/view/MotionEvent;->getX(I)F

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    iget-object v15, v0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 387
    .line 388
    invoke-virtual {v15, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 389
    .line 390
    .line 391
    move-result v10

    .line 392
    invoke-virtual {v15, v10}, Landroid/view/MotionEvent;->getY(I)F

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    sub-float/2addr v12, v11

    .line 397
    sub-float/2addr v10, v8

    .line 398
    new-instance v8, Lorg/maplibre/android/gestures/PointerDistancePair;

    .line 399
    .line 400
    invoke-direct {v8, v5, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    new-instance v5, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    .line 404
    .line 405
    invoke-direct {v5, v13, v14, v12, v10}, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;-><init>(FFFF)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    add-int/lit8 v3, v3, 0x1

    .line 412
    .line 413
    goto :goto_b

    .line 414
    :cond_13
    move v1, v2

    .line 415
    goto/16 :goto_a

    .line 416
    .line 417
    :cond_14
    invoke-virtual {v0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->isSloppyGesture()Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-nez v1, :cond_15

    .line 422
    .line 423
    invoke-virtual {v0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->analyzeMovement()Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    return v0

    .line 428
    :cond_15
    return v16
.end method

.method public analyzeMovement()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public canExecute(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->isSloppyGesture()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public getRequiredPointersCount()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public isSloppyGesture()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->edgeSlop:F

    .line 7
    .line 8
    sub-float/2addr v1, v2

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    sub-float/2addr v0, v2

    .line 13
    iget-object v3, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object v5, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 36
    .line 37
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget-object v5, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    sub-float/2addr v6, v7

    .line 52
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const/4 v8, 0x0

    .line 57
    if-ge v4, v7, :cond_1

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    add-float/2addr v5, v6

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v5, v8

    .line 66
    :goto_0
    iget-object v6, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 67
    .line 68
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    sub-float/2addr v7, v9

    .line 77
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-ge v4, v9, :cond_2

    .line 82
    .line 83
    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    add-float v8, v4, v7

    .line 88
    .line 89
    :cond_2
    cmpg-float v4, v5, v2

    .line 90
    .line 91
    if-ltz v4, :cond_5

    .line 92
    .line 93
    cmpg-float v4, v8, v2

    .line 94
    .line 95
    if-ltz v4, :cond_5

    .line 96
    .line 97
    cmpl-float v4, v5, v1

    .line 98
    .line 99
    if-gtz v4, :cond_5

    .line 100
    .line 101
    cmpl-float v4, v8, v0

    .line 102
    .line 103
    if-lez v4, :cond_0

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    .line 127
    .line 128
    iget v1, v1, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffXY:F

    .line 129
    .line 130
    iget v2, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->spanThreshold:F

    .line 131
    .line 132
    cmpg-float v1, v1, v2

    .line 133
    .line 134
    if-gez v1, :cond_4

    .line 135
    .line 136
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 137
    return p0

    .line 138
    :cond_6
    const/4 p0, 0x0

    .line 139
    return p0
.end method

.method public final queryDisplayMetrics()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->windowManager:Landroid/view/WindowManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    .line 34
    return-void
.end method

.method public abstract reset()V
.end method
