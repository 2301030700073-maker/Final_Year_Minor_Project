.class public final Lio/getstream/photoview/CustomGestureDetector;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public isDragging:Z

.field public final listener:Lokhttp3/ConnectionPool;

.field public mActivePointerId:I

.field public mActivePointerIndex:I

.field public final mDetector:Landroid/view/ScaleGestureDetector;

.field public mLastTouchX:F

.field public mLastTouchY:F

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final minimumVelocity:F

.field public final touchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lokhttp3/ConnectionPool;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/getstream/photoview/CustomGestureDetector;->listener:Lokhttp3/ConnectionPool;

    .line 5
    .line 6
    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    iput v0, p0, Lio/getstream/photoview/CustomGestureDetector;->touchSlop:F

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    int-to-float p2, p2

    .line 25
    iput p2, p0, Lio/getstream/photoview/CustomGestureDetector;->minimumVelocity:F

    .line 26
    .line 27
    new-instance p2, Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;-><init>(Lio/getstream/photoview/CustomGestureDetector;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 33
    .line 34
    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lio/getstream/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lio/getstream/photoview/CustomGestureDetector;->listener:Lokhttp3/ConnectionPool;

    .line 6
    .line 7
    iget-object v2, v2, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lio/getstream/photoview/PhotoViewAttacher;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    and-int/lit16 v3, v3, 0xff

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v3, :cond_16

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x1

    .line 23
    if-eq v3, v7, :cond_e

    .line 24
    .line 25
    const/4 v8, 0x2

    .line 26
    if-eq v3, v8, :cond_3

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    if-eq v3, v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    if-eq v3, v2, :cond_0

    .line 33
    .line 34
    goto/16 :goto_d

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const v3, 0xff00

    .line 41
    .line 42
    .line 43
    and-int/2addr v2, v3

    .line 44
    shr-int/lit8 v2, v2, 0x8

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget v6, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 51
    .line 52
    if-ne v3, v6, :cond_18

    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v7, v5

    .line 58
    :goto_0
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iput v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 63
    .line 64
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 69
    .line 70
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 75
    .line 76
    goto/16 :goto_d

    .line 77
    .line 78
    :cond_2
    iput v4, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 79
    .line 80
    iget-object v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 81
    .line 82
    if-eqz v2, :cond_18

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 85
    .line 86
    .line 87
    iput-object v6, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 88
    .line 89
    goto/16 :goto_d

    .line 90
    .line 91
    :cond_3
    :try_start_0
    iget v3, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerIndex:I

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 94
    .line 95
    .line 96
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_1

    .line 98
    :catch_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    :goto_1
    :try_start_1
    iget v6, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerIndex:I

    .line 103
    .line 104
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 105
    .line 106
    .line 107
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    goto :goto_2

    .line 109
    :catch_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    :goto_2
    iget v9, v0, Lio/getstream/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 114
    .line 115
    sub-float v9, v3, v9

    .line 116
    .line 117
    iget v10, v0, Lio/getstream/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 118
    .line 119
    sub-float v10, v6, v10

    .line 120
    .line 121
    iget-boolean v11, v0, Lio/getstream/photoview/CustomGestureDetector;->isDragging:Z

    .line 122
    .line 123
    if-nez v11, :cond_5

    .line 124
    .line 125
    mul-float v11, v9, v9

    .line 126
    .line 127
    mul-float v12, v10, v10

    .line 128
    .line 129
    add-float/2addr v12, v11

    .line 130
    float-to-double v11, v12

    .line 131
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 132
    .line 133
    .line 134
    move-result-wide v11

    .line 135
    iget v13, v0, Lio/getstream/photoview/CustomGestureDetector;->touchSlop:F

    .line 136
    .line 137
    float-to-double v13, v13

    .line 138
    cmpl-double v11, v11, v13

    .line 139
    .line 140
    if-ltz v11, :cond_4

    .line 141
    .line 142
    move v11, v7

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    move v11, v5

    .line 145
    :goto_3
    iput-boolean v11, v0, Lio/getstream/photoview/CustomGestureDetector;->isDragging:Z

    .line 146
    .line 147
    :cond_5
    if-eqz v11, :cond_18

    .line 148
    .line 149
    iget-object v11, v2, Lio/getstream/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/getstream/photoview/CustomGestureDetector;

    .line 150
    .line 151
    if-eqz v11, :cond_6

    .line 152
    .line 153
    iget-object v12, v11, Lio/getstream/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 154
    .line 155
    invoke-virtual {v12}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    if-ne v12, v7, :cond_6

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_6
    iget-object v12, v2, Lio/getstream/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 163
    .line 164
    invoke-virtual {v12, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lio/getstream/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 168
    .line 169
    .line 170
    iget-object v12, v2, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 171
    .line 172
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    iget-boolean v13, v2, Lio/getstream/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 177
    .line 178
    if-eqz v13, :cond_c

    .line 179
    .line 180
    if-eqz v11, :cond_7

    .line 181
    .line 182
    iget-object v11, v11, Lio/getstream/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 183
    .line 184
    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    if-ne v11, v7, :cond_7

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_7
    iget-boolean v11, v2, Lio/getstream/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 192
    .line 193
    if-nez v11, :cond_c

    .line 194
    .line 195
    iget v11, v2, Lio/getstream/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 196
    .line 197
    if-eq v11, v8, :cond_b

    .line 198
    .line 199
    const/high16 v8, 0x3f800000    # 1.0f

    .line 200
    .line 201
    if-nez v11, :cond_8

    .line 202
    .line 203
    cmpl-float v13, v9, v8

    .line 204
    .line 205
    if-gez v13, :cond_b

    .line 206
    .line 207
    :cond_8
    const/high16 v13, -0x40800000    # -1.0f

    .line 208
    .line 209
    if-ne v11, v7, :cond_9

    .line 210
    .line 211
    cmpg-float v9, v9, v13

    .line 212
    .line 213
    if-lez v9, :cond_b

    .line 214
    .line 215
    :cond_9
    iget v2, v2, Lio/getstream/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 216
    .line 217
    if-nez v2, :cond_a

    .line 218
    .line 219
    cmpl-float v8, v10, v8

    .line 220
    .line 221
    if-gez v8, :cond_b

    .line 222
    .line 223
    :cond_a
    if-ne v2, v7, :cond_d

    .line 224
    .line 225
    cmpg-float v2, v10, v13

    .line 226
    .line 227
    if-gtz v2, :cond_d

    .line 228
    .line 229
    :cond_b
    if-eqz v12, :cond_d

    .line 230
    .line 231
    invoke-interface {v12, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_c
    :goto_4
    if-eqz v12, :cond_d

    .line 236
    .line 237
    invoke-interface {v12, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 238
    .line 239
    .line 240
    :cond_d
    :goto_5
    iput v3, v0, Lio/getstream/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 241
    .line 242
    iput v6, v0, Lio/getstream/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 243
    .line 244
    iget-object v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 245
    .line 246
    if-eqz v2, :cond_18

    .line 247
    .line 248
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_d

    .line 252
    .line 253
    :cond_e
    iput v4, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 254
    .line 255
    iget-boolean v3, v0, Lio/getstream/photoview/CustomGestureDetector;->isDragging:Z

    .line 256
    .line 257
    if-eqz v3, :cond_15

    .line 258
    .line 259
    iget-object v3, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 260
    .line 261
    if-eqz v3, :cond_15

    .line 262
    .line 263
    :try_start_2
    iget v3, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerIndex:I

    .line 264
    .line 265
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 266
    .line 267
    .line 268
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    goto :goto_6

    .line 270
    :catch_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    :goto_6
    iput v3, v0, Lio/getstream/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 275
    .line 276
    :try_start_3
    iget v3, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerIndex:I

    .line 277
    .line 278
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 279
    .line 280
    .line 281
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 282
    goto :goto_7

    .line 283
    :catch_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    :goto_7
    iput v3, v0, Lio/getstream/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 288
    .line 289
    iget-object v3, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 295
    .line 296
    .line 297
    iget-object v3, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    const/16 v7, 0x3e8

    .line 303
    .line 304
    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 305
    .line 306
    .line 307
    iget-object v3, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    iget-object v7, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 317
    .line 318
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 330
    .line 331
    .line 332
    move-result v9

    .line 333
    cmpg-float v10, v8, v9

    .line 334
    .line 335
    if-gez v10, :cond_f

    .line 336
    .line 337
    move v8, v9

    .line 338
    :cond_f
    iget v9, v0, Lio/getstream/photoview/CustomGestureDetector;->minimumVelocity:F

    .line 339
    .line 340
    cmpl-float v8, v8, v9

    .line 341
    .line 342
    if-ltz v8, :cond_15

    .line 343
    .line 344
    neg-float v3, v3

    .line 345
    neg-float v7, v7

    .line 346
    new-instance v8, Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;

    .line 347
    .line 348
    iget-object v9, v2, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 349
    .line 350
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 351
    .line 352
    .line 353
    move-result-object v10

    .line 354
    invoke-direct {v8, v2, v10}, Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lio/getstream/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    .line 355
    .line 356
    .line 357
    iput-object v8, v2, Lio/getstream/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;

    .line 358
    .line 359
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 360
    .line 361
    .line 362
    move-result v10

    .line 363
    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    .line 364
    .line 365
    .line 366
    move-result v11

    .line 367
    sub-int/2addr v10, v11

    .line 368
    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    sub-int/2addr v10, v11

    .line 373
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 374
    .line 375
    .line 376
    move-result v11

    .line 377
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    sub-int/2addr v11, v12

    .line 382
    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    sub-int/2addr v11, v12

    .line 387
    float-to-int v15, v3

    .line 388
    float-to-int v3, v7

    .line 389
    invoke-virtual {v2}, Lio/getstream/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Lio/getstream/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    invoke-virtual {v2, v7}, Lio/getstream/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    if-nez v7, :cond_10

    .line 401
    .line 402
    goto :goto_a

    .line 403
    :cond_10
    iget v12, v7, Landroid/graphics/RectF;->left:F

    .line 404
    .line 405
    neg-float v12, v12

    .line 406
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 407
    .line 408
    .line 409
    move-result v13

    .line 410
    int-to-float v10, v10

    .line 411
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 412
    .line 413
    .line 414
    move-result v12

    .line 415
    cmpg-float v12, v10, v12

    .line 416
    .line 417
    if-gez v12, :cond_11

    .line 418
    .line 419
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 420
    .line 421
    .line 422
    move-result v12

    .line 423
    sub-float/2addr v12, v10

    .line 424
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 425
    .line 426
    .line 427
    move-result v10

    .line 428
    move/from16 v17, v5

    .line 429
    .line 430
    goto :goto_8

    .line 431
    :cond_11
    move v10, v13

    .line 432
    move/from16 v17, v10

    .line 433
    .line 434
    :goto_8
    iget v12, v7, Landroid/graphics/RectF;->top:F

    .line 435
    .line 436
    neg-float v12, v12

    .line 437
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 438
    .line 439
    .line 440
    move-result v14

    .line 441
    int-to-float v11, v11

    .line 442
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 443
    .line 444
    .line 445
    move-result v12

    .line 446
    cmpg-float v12, v11, v12

    .line 447
    .line 448
    if-gez v12, :cond_12

    .line 449
    .line 450
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    sub-float/2addr v7, v11

    .line 455
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    move/from16 v19, v5

    .line 460
    .line 461
    goto :goto_9

    .line 462
    :cond_12
    move v7, v14

    .line 463
    move/from16 v19, v7

    .line 464
    .line 465
    :goto_9
    iput v13, v8, Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    .line 466
    .line 467
    iput v14, v8, Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    .line 468
    .line 469
    if-ne v13, v10, :cond_13

    .line 470
    .line 471
    if-eq v14, v7, :cond_14

    .line 472
    .line 473
    :cond_13
    const/16 v21, 0x0

    .line 474
    .line 475
    const/16 v22, 0x0

    .line 476
    .line 477
    iget-object v12, v8, Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 478
    .line 479
    move/from16 v16, v3

    .line 480
    .line 481
    move/from16 v20, v7

    .line 482
    .line 483
    move/from16 v18, v10

    .line 484
    .line 485
    invoke-virtual/range {v12 .. v22}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 486
    .line 487
    .line 488
    :cond_14
    :goto_a
    iget-object v2, v2, Lio/getstream/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;

    .line 489
    .line 490
    invoke-virtual {v9, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 491
    .line 492
    .line 493
    :cond_15
    iget-object v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 494
    .line 495
    if-eqz v2, :cond_18

    .line 496
    .line 497
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 498
    .line 499
    .line 500
    iput-object v6, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 501
    .line 502
    goto :goto_d

    .line 503
    :cond_16
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    iput v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 508
    .line 509
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    iput-object v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 514
    .line 515
    if-eqz v2, :cond_17

    .line 516
    .line 517
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 518
    .line 519
    .line 520
    :cond_17
    :try_start_4
    iget v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerIndex:I

    .line 521
    .line 522
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 523
    .line 524
    .line 525
    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 526
    goto :goto_b

    .line 527
    :catch_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    :goto_b
    iput v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 532
    .line 533
    :try_start_5
    iget v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerIndex:I

    .line 534
    .line 535
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 536
    .line 537
    .line 538
    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 539
    goto :goto_c

    .line 540
    :catch_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    :goto_c
    iput v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 545
    .line 546
    iput-boolean v5, v0, Lio/getstream/photoview/CustomGestureDetector;->isDragging:Z

    .line 547
    .line 548
    :cond_18
    :goto_d
    iget v2, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 549
    .line 550
    if-eq v2, v4, :cond_19

    .line 551
    .line 552
    move v5, v2

    .line 553
    :cond_19
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    iput v1, v0, Lio/getstream/photoview/CustomGestureDetector;->mActivePointerIndex:I

    .line 558
    .line 559
    return-void
.end method
