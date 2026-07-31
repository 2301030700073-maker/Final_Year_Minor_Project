.class public final Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lorg/acra/util/ProcessFinisher;


# direct methods
.method public constructor <init>(Lorg/acra/util/ProcessFinisher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;->this$0:Lorg/acra/util/ProcessFinisher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;->this$0:Lorg/acra/util/ProcessFinisher;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcoil3/memory/MemoryCacheService;

    .line 8
    .line 9
    iget-object v0, v0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-object v3, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    const/4 v6, 0x0

    .line 24
    move v7, v6

    .line 25
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-ge v7, v8, :cond_f

    .line 30
    .line 31
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    check-cast v8, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 36
    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    :cond_0
    :goto_1
    move-wide/from16 p0, v1

    .line 40
    .line 41
    move-wide/from16 v17, v4

    .line 42
    .line 43
    move v12, v7

    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :cond_1
    iget-object v10, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 47
    .line 48
    invoke-virtual {v10, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    check-cast v11, Ljava/lang/Long;

    .line 53
    .line 54
    if-nez v11, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v11

    .line 61
    cmp-long v11, v11, v4

    .line 62
    .line 63
    if-gez v11, :cond_0

    .line 64
    .line 65
    invoke-virtual {v10, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :goto_2
    iget-wide v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 69
    .line 70
    const-wide/16 v12, 0x0

    .line 71
    .line 72
    cmp-long v14, v10, v12

    .line 73
    .line 74
    if-nez v14, :cond_3

    .line 75
    .line 76
    iput-wide v1, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 77
    .line 78
    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 79
    .line 80
    invoke-virtual {v8, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    sub-long v19, v1, v10

    .line 85
    .line 86
    iput-wide v1, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 87
    .line 88
    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 89
    .line 90
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 91
    .line 92
    .line 93
    cmpl-float v10, v10, v11

    .line 94
    .line 95
    iget-object v14, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 96
    .line 97
    if-eqz v10, :cond_4

    .line 98
    .line 99
    iget-wide v12, v14, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 100
    .line 101
    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 102
    .line 103
    float-to-double v12, v10

    .line 104
    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 105
    .line 106
    float-to-double v9, v10

    .line 107
    const-wide/16 v15, 0x2

    .line 108
    .line 109
    div-long v26, v19, v15

    .line 110
    .line 111
    move-wide/from16 v24, v9

    .line 112
    .line 113
    move-wide/from16 v22, v12

    .line 114
    .line 115
    move-object/from16 v21, v14

    .line 116
    .line 117
    invoke-virtual/range {v21 .. v27}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    iget-object v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 122
    .line 123
    iget v12, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 124
    .line 125
    float-to-double v12, v12

    .line 126
    iput-wide v12, v10, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 127
    .line 128
    iput v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 129
    .line 130
    iget v11, v9, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 131
    .line 132
    float-to-double v11, v11

    .line 133
    iget v9, v9, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 134
    .line 135
    float-to-double v13, v9

    .line 136
    move-object/from16 v21, v10

    .line 137
    .line 138
    move-wide/from16 v22, v11

    .line 139
    .line 140
    move-wide/from16 v24, v13

    .line 141
    .line 142
    invoke-virtual/range {v21 .. v27}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    iget v10, v9, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 147
    .line 148
    iput v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 149
    .line 150
    iget v9, v9, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 151
    .line 152
    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 156
    .line 157
    float-to-double v9, v9

    .line 158
    iget v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 159
    .line 160
    float-to-double v11, v11

    .line 161
    move-wide v15, v9

    .line 162
    move-wide/from16 v17, v11

    .line 163
    .line 164
    invoke-virtual/range {v14 .. v20}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    iget v10, v9, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 169
    .line 170
    iput v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 171
    .line 172
    iget v9, v9, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 173
    .line 174
    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 175
    .line 176
    :goto_3
    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 177
    .line 178
    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    .line 179
    .line 180
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 185
    .line 186
    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    .line 187
    .line 188
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 193
    .line 194
    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 195
    .line 196
    iget-object v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 197
    .line 198
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    float-to-double v12, v10

    .line 206
    iget-wide v14, v11, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 207
    .line 208
    cmpg-double v10, v12, v14

    .line 209
    .line 210
    if-gez v10, :cond_5

    .line 211
    .line 212
    iget-wide v12, v11, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 213
    .line 214
    double-to-float v10, v12

    .line 215
    sub-float/2addr v9, v10

    .line 216
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    float-to-double v9, v9

    .line 221
    iget-wide v11, v11, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 222
    .line 223
    cmpg-double v9, v9, v11

    .line 224
    .line 225
    if-gez v9, :cond_5

    .line 226
    .line 227
    iget-object v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 228
    .line 229
    iget-wide v9, v9, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 230
    .line 231
    double-to-float v9, v9

    .line 232
    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 233
    .line 234
    const/4 v9, 0x0

    .line 235
    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 236
    .line 237
    const/4 v9, 0x1

    .line 238
    goto :goto_4

    .line 239
    :cond_5
    move v9, v6

    .line 240
    :goto_4
    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 241
    .line 242
    iget v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    .line 243
    .line 244
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    iput v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 249
    .line 250
    iget v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    .line 251
    .line 252
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    iput v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 257
    .line 258
    invoke-virtual {v8, v10}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    .line 259
    .line 260
    .line 261
    if-eqz v9, :cond_0

    .line 262
    .line 263
    iget-object v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 264
    .line 265
    iput-boolean v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    .line 266
    .line 267
    sget-object v10, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 268
    .line 269
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    if-nez v11, :cond_6

    .line 274
    .line 275
    new-instance v11, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 276
    .line 277
    invoke-direct {v11}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_6
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    check-cast v10, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 288
    .line 289
    iget-object v11, v10, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 290
    .line 291
    invoke-virtual {v11, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    iget-object v11, v10, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 297
    .line 298
    .line 299
    move-result v12

    .line 300
    const/4 v13, 0x0

    .line 301
    if-ltz v12, :cond_7

    .line 302
    .line 303
    invoke-virtual {v11, v12, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    const/4 v11, 0x1

    .line 307
    iput-boolean v11, v10, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 308
    .line 309
    :cond_7
    const-wide/16 v10, 0x0

    .line 310
    .line 311
    iput-wide v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 312
    .line 313
    iput-boolean v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    .line 314
    .line 315
    move v10, v6

    .line 316
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 317
    .line 318
    .line 319
    move-result v11

    .line 320
    if-ge v10, v11, :cond_c

    .line 321
    .line 322
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    if-eqz v11, :cond_a

    .line 327
    .line 328
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    check-cast v11, Landroidx/transition/Transition$SeekController$$ExternalSyntheticLambda0;

    .line 333
    .line 334
    iget v12, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 335
    .line 336
    iget-object v11, v11, Landroidx/transition/Transition$SeekController$$ExternalSyntheticLambda0;->f$0:Landroidx/transition/Transition$SeekController;

    .line 337
    .line 338
    iget-object v14, v11, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/TransitionSet;

    .line 339
    .line 340
    const/high16 v15, 0x3f800000    # 1.0f

    .line 341
    .line 342
    cmpg-float v12, v12, v15

    .line 343
    .line 344
    sget-object v15, Landroidx/transition/Transition$TransitionNotification;->ON_END:Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;

    .line 345
    .line 346
    if-gez v12, :cond_9

    .line 347
    .line 348
    move-wide/from16 p0, v1

    .line 349
    .line 350
    iget-wide v1, v14, Landroidx/transition/Transition;->mTotalDuration:J

    .line 351
    .line 352
    invoke-virtual {v14, v6}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    .line 353
    .line 354
    .line 355
    move-result-object v12

    .line 356
    iget-object v6, v12, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    .line 357
    .line 358
    iput-object v13, v12, Landroidx/transition/Transition;->mCloneParent:Landroidx/transition/Transition;

    .line 359
    .line 360
    move-wide/from16 v17, v4

    .line 361
    .line 362
    iget-wide v4, v11, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 363
    .line 364
    move v12, v7

    .line 365
    move-object/from16 v19, v8

    .line 366
    .line 367
    const-wide/16 v7, -0x1

    .line 368
    .line 369
    invoke-virtual {v14, v7, v8, v4, v5}, Landroidx/transition/TransitionSet;->setCurrentPlayTimeMillis(JJ)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v14, v1, v2, v7, v8}, Landroidx/transition/TransitionSet;->setCurrentPlayTimeMillis(JJ)V

    .line 373
    .line 374
    .line 375
    iput-wide v1, v11, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 376
    .line 377
    iget-object v1, v11, Landroidx/transition/Transition$SeekController;->mResetToStartState:Ljava/lang/Runnable;

    .line 378
    .line 379
    if-eqz v1, :cond_8

    .line 380
    .line 381
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 382
    .line 383
    .line 384
    :cond_8
    iget-object v1, v14, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 387
    .line 388
    .line 389
    if-eqz v6, :cond_b

    .line 390
    .line 391
    const/4 v11, 0x1

    .line 392
    invoke-virtual {v6, v6, v15, v11}, Landroidx/transition/Transition;->notifyFromTransition(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 393
    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_9
    move-wide/from16 p0, v1

    .line 397
    .line 398
    move-wide/from16 v17, v4

    .line 399
    .line 400
    move v1, v6

    .line 401
    move v12, v7

    .line 402
    move-object/from16 v19, v8

    .line 403
    .line 404
    const/4 v11, 0x1

    .line 405
    invoke-virtual {v14, v14, v15, v1}, Landroidx/transition/Transition;->notifyFromTransition(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 406
    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_a
    move-wide/from16 p0, v1

    .line 410
    .line 411
    move-wide/from16 v17, v4

    .line 412
    .line 413
    move v12, v7

    .line 414
    move-object/from16 v19, v8

    .line 415
    .line 416
    :cond_b
    const/4 v11, 0x1

    .line 417
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 418
    .line 419
    move-wide/from16 v1, p0

    .line 420
    .line 421
    move v7, v12

    .line 422
    move-wide/from16 v4, v17

    .line 423
    .line 424
    move-object/from16 v8, v19

    .line 425
    .line 426
    const/4 v6, 0x0

    .line 427
    goto :goto_5

    .line 428
    :cond_c
    move-wide/from16 p0, v1

    .line 429
    .line 430
    move-wide/from16 v17, v4

    .line 431
    .line 432
    move v12, v7

    .line 433
    const/4 v11, 0x1

    .line 434
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    sub-int/2addr v1, v11

    .line 439
    :goto_7
    if-ltz v1, :cond_e

    .line 440
    .line 441
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    if-nez v2, :cond_d

    .line 446
    .line 447
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    :cond_d
    add-int/lit8 v1, v1, -0x1

    .line 451
    .line 452
    goto :goto_7

    .line 453
    :cond_e
    :goto_8
    add-int/lit8 v7, v12, 0x1

    .line 454
    .line 455
    move-wide/from16 v1, p0

    .line 456
    .line 457
    move-wide/from16 v4, v17

    .line 458
    .line 459
    const/4 v6, 0x0

    .line 460
    goto/16 :goto_0

    .line 461
    .line 462
    :cond_f
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 463
    .line 464
    if-eqz v1, :cond_12

    .line 465
    .line 466
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    const/4 v11, 0x1

    .line 471
    sub-int/2addr v1, v11

    .line 472
    :goto_9
    if-ltz v1, :cond_11

    .line 473
    .line 474
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    if-nez v2, :cond_10

    .line 479
    .line 480
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    :cond_10
    add-int/lit8 v1, v1, -0x1

    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_11
    const/4 v1, 0x0

    .line 487
    iput-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 488
    .line 489
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-lez v1, :cond_14

    .line 494
    .line 495
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lorg/acra/util/ProcessFinisher;

    .line 496
    .line 497
    if-nez v1, :cond_13

    .line 498
    .line 499
    new-instance v1, Lorg/acra/util/ProcessFinisher;

    .line 500
    .line 501
    iget-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcoil3/memory/MemoryCacheService;

    .line 502
    .line 503
    invoke-direct {v1, v2}, Lorg/acra/util/ProcessFinisher;-><init>(Lcoil3/memory/MemoryCacheService;)V

    .line 504
    .line 505
    .line 506
    iput-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lorg/acra/util/ProcessFinisher;

    .line 507
    .line 508
    :cond_13
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lorg/acra/util/ProcessFinisher;

    .line 509
    .line 510
    iget-object v1, v0, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v1, Landroid/view/Choreographer;

    .line 513
    .line 514
    iget-object v0, v0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;

    .line 517
    .line 518
    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 519
    .line 520
    .line 521
    :cond_14
    return-void
.end method
