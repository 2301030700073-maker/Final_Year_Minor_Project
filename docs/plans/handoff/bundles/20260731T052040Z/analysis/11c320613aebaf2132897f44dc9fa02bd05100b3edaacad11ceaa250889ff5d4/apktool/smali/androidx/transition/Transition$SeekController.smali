.class public final Landroidx/transition/Transition$SeekController;
.super Landroidx/transition/TransitionListenerAdapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public mCurrentPlayTime:J

.field public mIsCanceled:Z

.field public mIsReady:Z

.field public mOnReady:I

.field public mResetToStartState:Ljava/lang/Runnable;

.field public mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mVelocityTracker:Lcom/grack/nanojson/JsonParser;

.field public final synthetic this$0:Landroidx/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionSet;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/TransitionSet;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Landroidx/transition/Transition$SeekController;->mOnReady:I

    .line 12
    .line 13
    new-instance v0, Lcom/grack/nanojson/JsonParser;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonParser;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x14

    .line 21
    .line 22
    new-array v2, v1, [J

    .line 23
    .line 24
    iput-object v2, v0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 25
    .line 26
    new-array v1, v1, [F

    .line 27
    .line 28
    iput-object v1, v0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 29
    .line 30
    iput p1, v0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 31
    .line 32
    const-wide/high16 v3, -0x8000000000000000L

    .line 33
    .line 34
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/transition/Transition$SeekController;->mVelocityTracker:Lcom/grack/nanojson/JsonParser;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final animateToEnd()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/transition/Transition$SeekController;->mIsReady:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Landroidx/transition/Transition$SeekController;->mOnReady:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/transition/Transition$SeekController;->mResetToStartState:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->ensureAnimation()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/TransitionSet;

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/transition/Transition;->mTotalDuration:J

    .line 20
    .line 21
    const-wide/16 v3, 0x1

    .line 22
    .line 23
    add-long/2addr v1, v3

    .line 24
    long-to-float p0, v1

    .line 25
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final ensureAnimation()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iget-wide v3, v0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 14
    .line 15
    long-to-float v3, v3

    .line 16
    iget-object v4, v0, Landroidx/transition/Transition$SeekController;->mVelocityTracker:Lcom/grack/nanojson/JsonParser;

    .line 17
    .line 18
    iget v5, v4, Lcom/grack/nanojson/JsonParser;->token:I

    .line 19
    .line 20
    iget-object v6, v4, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v6, [F

    .line 23
    .line 24
    iget-object v7, v4, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v7, [J

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    add-int/2addr v5, v8

    .line 30
    const/16 v9, 0x14

    .line 31
    .line 32
    rem-int/2addr v5, v9

    .line 33
    iput v5, v4, Lcom/grack/nanojson/JsonParser;->token:I

    .line 34
    .line 35
    aput-wide v1, v7, v5

    .line 36
    .line 37
    aput v3, v6, v5

    .line 38
    .line 39
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 40
    .line 41
    new-instance v2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    iput v3, v2, Landroidx/dynamicanimation/animation/FloatValueHolder;->mValue:F

    .line 48
    .line 49
    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, v0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 53
    .line 54
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 55
    .line 56
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 57
    .line 58
    .line 59
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 60
    .line 61
    iput-wide v10, v1, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 65
    .line 66
    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    .line 67
    .line 68
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v10

    .line 72
    iput-wide v10, v1, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 73
    .line 74
    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 75
    .line 76
    iget-object v5, v0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 77
    .line 78
    iput-object v1, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 79
    .line 80
    iget-wide v10, v0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 81
    .line 82
    long-to-float v1, v10

    .line 83
    iput v1, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 84
    .line 85
    iput-boolean v8, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    .line 86
    .line 87
    iget-object v1, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 88
    .line 89
    iget-boolean v5, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    .line 90
    .line 91
    if-nez v5, :cond_10

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_1

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_1
    iget-object v1, v0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 103
    .line 104
    iget v5, v4, Lcom/grack/nanojson/JsonParser;->token:I

    .line 105
    .line 106
    const-wide/high16 v10, -0x8000000000000000L

    .line 107
    .line 108
    if-nez v5, :cond_2

    .line 109
    .line 110
    aget-wide v12, v7, v5

    .line 111
    .line 112
    cmp-long v12, v12, v10

    .line 113
    .line 114
    if-nez v12, :cond_2

    .line 115
    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :cond_2
    aget-wide v12, v7, v5

    .line 119
    .line 120
    move-wide v14, v12

    .line 121
    :goto_0
    aget-wide v16, v7, v5

    .line 122
    .line 123
    cmp-long v18, v16, v10

    .line 124
    .line 125
    if-nez v18, :cond_3

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    sub-long v10, v12, v16

    .line 129
    .line 130
    long-to-float v10, v10

    .line 131
    sub-long v14, v16, v14

    .line 132
    .line 133
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    .line 134
    .line 135
    .line 136
    move-result-wide v14

    .line 137
    long-to-float v11, v14

    .line 138
    const/high16 v14, 0x42c80000    # 100.0f

    .line 139
    .line 140
    cmpl-float v10, v10, v14

    .line 141
    .line 142
    if-gtz v10, :cond_7

    .line 143
    .line 144
    const/high16 v10, 0x42200000    # 40.0f

    .line 145
    .line 146
    cmpl-float v10, v11, v10

    .line 147
    .line 148
    if-lez v10, :cond_4

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    if-nez v5, :cond_5

    .line 152
    .line 153
    move v5, v9

    .line 154
    :cond_5
    sub-int/2addr v5, v8

    .line 155
    add-int/lit8 v2, v2, 0x1

    .line 156
    .line 157
    if-lt v2, v9, :cond_6

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    move-wide/from16 v14, v16

    .line 161
    .line 162
    const-wide/high16 v10, -0x8000000000000000L

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_7
    :goto_1
    const/4 v5, 0x2

    .line 166
    if-ge v2, v5, :cond_8

    .line 167
    .line 168
    goto/16 :goto_5

    .line 169
    .line 170
    :cond_8
    iget v4, v4, Lcom/grack/nanojson/JsonParser;->token:I

    .line 171
    .line 172
    const/high16 v10, 0x447a0000    # 1000.0f

    .line 173
    .line 174
    if-ne v2, v5, :cond_b

    .line 175
    .line 176
    if-nez v4, :cond_9

    .line 177
    .line 178
    const/16 v2, 0x13

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_9
    add-int/lit8 v2, v4, -0x1

    .line 182
    .line 183
    :goto_2
    aget-wide v8, v7, v4

    .line 184
    .line 185
    aget-wide v11, v7, v2

    .line 186
    .line 187
    sub-long/2addr v8, v11

    .line 188
    long-to-float v5, v8

    .line 189
    cmpl-float v7, v5, v3

    .line 190
    .line 191
    if-nez v7, :cond_a

    .line 192
    .line 193
    goto/16 :goto_5

    .line 194
    .line 195
    :cond_a
    aget v3, v6, v4

    .line 196
    .line 197
    aget v2, v6, v2

    .line 198
    .line 199
    sub-float/2addr v3, v2

    .line 200
    div-float/2addr v3, v5

    .line 201
    mul-float/2addr v3, v10

    .line 202
    goto/16 :goto_5

    .line 203
    .line 204
    :cond_b
    sub-int v2, v4, v2

    .line 205
    .line 206
    add-int/lit8 v2, v2, 0x15

    .line 207
    .line 208
    rem-int/2addr v2, v9

    .line 209
    add-int/lit8 v4, v4, 0x15

    .line 210
    .line 211
    rem-int/2addr v4, v9

    .line 212
    aget-wide v11, v7, v2

    .line 213
    .line 214
    aget v5, v6, v2

    .line 215
    .line 216
    add-int/2addr v2, v8

    .line 217
    rem-int/lit8 v8, v2, 0x14

    .line 218
    .line 219
    move v13, v3

    .line 220
    :goto_3
    const/high16 v14, 0x40000000    # 2.0f

    .line 221
    .line 222
    if-eq v8, v4, :cond_e

    .line 223
    .line 224
    aget-wide v15, v7, v8

    .line 225
    .line 226
    move/from16 v17, v3

    .line 227
    .line 228
    move/from16 v18, v4

    .line 229
    .line 230
    sub-long v3, v15, v11

    .line 231
    .line 232
    long-to-float v3, v3

    .line 233
    cmpl-float v4, v3, v17

    .line 234
    .line 235
    if-nez v4, :cond_c

    .line 236
    .line 237
    move/from16 v19, v9

    .line 238
    .line 239
    move/from16 v20, v10

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_c
    aget v4, v6, v8

    .line 243
    .line 244
    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    .line 245
    .line 246
    .line 247
    move-result v11

    .line 248
    float-to-double v11, v11

    .line 249
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 250
    .line 251
    .line 252
    move-result v19

    .line 253
    mul-float v14, v14, v19

    .line 254
    .line 255
    move/from16 v19, v9

    .line 256
    .line 257
    move/from16 v20, v10

    .line 258
    .line 259
    float-to-double v9, v14

    .line 260
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 261
    .line 262
    .line 263
    move-result-wide v9

    .line 264
    mul-double/2addr v9, v11

    .line 265
    double-to-float v9, v9

    .line 266
    sub-float v5, v4, v5

    .line 267
    .line 268
    div-float/2addr v5, v3

    .line 269
    sub-float v3, v5, v9

    .line 270
    .line 271
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    mul-float/2addr v5, v3

    .line 276
    add-float/2addr v5, v13

    .line 277
    if-ne v8, v2, :cond_d

    .line 278
    .line 279
    const/high16 v3, 0x3f000000    # 0.5f

    .line 280
    .line 281
    mul-float/2addr v5, v3

    .line 282
    :cond_d
    move v13, v5

    .line 283
    move v5, v4

    .line 284
    move-wide v11, v15

    .line 285
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 286
    .line 287
    rem-int/lit8 v8, v8, 0x14

    .line 288
    .line 289
    move/from16 v3, v17

    .line 290
    .line 291
    move/from16 v4, v18

    .line 292
    .line 293
    move/from16 v9, v19

    .line 294
    .line 295
    move/from16 v10, v20

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_e
    move/from16 v20, v10

    .line 299
    .line 300
    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    float-to-double v2, v2

    .line 305
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    mul-float/2addr v4, v14

    .line 310
    float-to-double v4, v4

    .line 311
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 312
    .line 313
    .line 314
    move-result-wide v4

    .line 315
    mul-double/2addr v4, v2

    .line 316
    double-to-float v2, v4

    .line 317
    mul-float v3, v2, v20

    .line 318
    .line 319
    :goto_5
    iput v3, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 320
    .line 321
    iget-object v1, v0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 322
    .line 323
    iget-object v2, v0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/TransitionSet;

    .line 324
    .line 325
    iget-wide v2, v2, Landroidx/transition/Transition;->mTotalDuration:J

    .line 326
    .line 327
    const-wide/16 v4, 0x1

    .line 328
    .line 329
    add-long/2addr v2, v4

    .line 330
    long-to-float v2, v2

    .line 331
    iput v2, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    .line 332
    .line 333
    const/high16 v2, -0x40800000    # -1.0f

    .line 334
    .line 335
    iput v2, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    .line 336
    .line 337
    const/high16 v2, 0x40800000    # 4.0f

    .line 338
    .line 339
    iput v2, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    .line 340
    .line 341
    new-instance v2, Landroidx/transition/Transition$SeekController$$ExternalSyntheticLambda0;

    .line 342
    .line 343
    invoke-direct {v2, v0}, Landroidx/transition/Transition$SeekController$$ExternalSyntheticLambda0;-><init>(Landroidx/transition/Transition$SeekController;)V

    .line 344
    .line 345
    .line 346
    iget-object v0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-nez v1, :cond_f

    .line 353
    .line 354
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    :cond_f
    :goto_6
    return-void

    .line 358
    :cond_10
    const-string v0, "Error: Update listeners must be added beforethe animation."

    .line 359
    .line 360
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    return-void
.end method

.method public final onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/transition/Transition$SeekController;->mIsCanceled:Z

    .line 3
    .line 4
    return-void
.end method
