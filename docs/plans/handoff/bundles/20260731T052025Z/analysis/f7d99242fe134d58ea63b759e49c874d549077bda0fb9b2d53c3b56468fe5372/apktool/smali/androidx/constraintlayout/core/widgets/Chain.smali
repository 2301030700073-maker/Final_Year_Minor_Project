.class public abstract Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final sFlags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Z

    .line 3
    .line 4
    sput-object v0, Landroidx/constraintlayout/core/widgets/Chain;->sFlags:[Z

    .line 5
    .line 6
    return-void
.end method

.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 10
    .line 11
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 12
    .line 13
    const/4 v15, 0x0

    .line 14
    :goto_0
    move v13, v2

    .line 15
    move-object v14, v3

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 20
    .line 21
    const/4 v15, 0x2

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    const/4 v2, 0x0

    .line 24
    :goto_2
    if-ge v2, v13, :cond_71

    .line 25
    .line 26
    aget-object v3, v14, v2

    .line 27
    .line 28
    iget-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    .line 29
    .line 30
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 31
    .line 32
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 33
    .line 34
    const/4 v7, 0x3

    .line 35
    const/16 v16, 0x0

    .line 36
    .line 37
    const/16 v8, 0x8

    .line 38
    .line 39
    const/16 v17, 0x0

    .line 40
    .line 41
    if-nez v4, :cond_19

    .line 42
    .line 43
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 44
    .line 45
    mul-int/lit8 v18, v4, 0x2

    .line 46
    .line 47
    move-object v12, v5

    .line 48
    move-object/from16 v21, v12

    .line 49
    .line 50
    const/16 v19, 0x0

    .line 51
    .line 52
    :goto_3
    if-nez v19, :cond_14

    .line 53
    .line 54
    const/16 v22, 0x1

    .line 55
    .line 56
    iget v9, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 57
    .line 58
    add-int/lit8 v9, v9, 0x1

    .line 59
    .line 60
    iput v9, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 61
    .line 62
    iget-object v9, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 63
    .line 64
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 65
    .line 66
    aput-object v16, v9, v4

    .line 67
    .line 68
    iget-object v9, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 69
    .line 70
    aput-object v16, v9, v4

    .line 71
    .line 72
    iget v9, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 73
    .line 74
    if-eq v9, v8, :cond_f

    .line 75
    .line 76
    invoke-virtual {v12, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    .line 77
    .line 78
    .line 79
    aget-object v9, v11, v18

    .line 80
    .line 81
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 82
    .line 83
    .line 84
    add-int/lit8 v9, v18, 0x1

    .line 85
    .line 86
    aget-object v24, v11, v9

    .line 87
    .line 88
    invoke-virtual/range {v24 .. v24}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 89
    .line 90
    .line 91
    aget-object v24, v11, v18

    .line 92
    .line 93
    invoke-virtual/range {v24 .. v24}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 94
    .line 95
    .line 96
    aget-object v9, v11, v9

    .line 97
    .line 98
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 99
    .line 100
    .line 101
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 102
    .line 103
    if-nez v9, :cond_1

    .line 104
    .line 105
    iput-object v12, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 106
    .line 107
    :cond_1
    iput-object v12, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 108
    .line 109
    iget-object v9, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 110
    .line 111
    aget v9, v9, v4

    .line 112
    .line 113
    if-ne v9, v7, :cond_f

    .line 114
    .line 115
    iget-object v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 116
    .line 117
    aget v8, v8, v4

    .line 118
    .line 119
    if-eqz v8, :cond_3

    .line 120
    .line 121
    if-eq v8, v7, :cond_3

    .line 122
    .line 123
    const/4 v7, 0x2

    .line 124
    if-ne v8, v7, :cond_2

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_2
    move/from16 v26, v2

    .line 128
    .line 129
    move/from16 v27, v4

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_3
    :goto_4
    iget v7, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 133
    .line 134
    add-int/lit8 v7, v7, 0x1

    .line 135
    .line 136
    iput v7, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 137
    .line 138
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 139
    .line 140
    aget v7, v7, v4

    .line 141
    .line 142
    cmpl-float v26, v7, v17

    .line 143
    .line 144
    if-lez v26, :cond_4

    .line 145
    .line 146
    move/from16 v26, v2

    .line 147
    .line 148
    iget v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 149
    .line 150
    add-float/2addr v2, v7

    .line 151
    iput v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_4
    move/from16 v26, v2

    .line 155
    .line 156
    :goto_5
    iget v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 157
    .line 158
    move/from16 v27, v4

    .line 159
    .line 160
    const/16 v4, 0x8

    .line 161
    .line 162
    if-eq v2, v4, :cond_8

    .line 163
    .line 164
    const/4 v2, 0x3

    .line 165
    if-ne v9, v2, :cond_8

    .line 166
    .line 167
    if-eqz v8, :cond_5

    .line 168
    .line 169
    if-ne v8, v2, :cond_8

    .line 170
    .line 171
    :cond_5
    cmpg-float v2, v7, v17

    .line 172
    .line 173
    if-gez v2, :cond_6

    .line 174
    .line 175
    move/from16 v2, v22

    .line 176
    .line 177
    iput-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_6
    move/from16 v2, v22

    .line 181
    .line 182
    iput-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 183
    .line 184
    :goto_6
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 185
    .line 186
    if-nez v2, :cond_7

    .line 187
    .line 188
    new-instance v2, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 194
    .line 195
    :cond_7
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_8
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 201
    .line 202
    if-nez v2, :cond_9

    .line 203
    .line 204
    iput-object v12, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 205
    .line 206
    :cond_9
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 207
    .line 208
    if-eqz v2, :cond_a

    .line 209
    .line 210
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 211
    .line 212
    aput-object v12, v2, v27

    .line 213
    .line 214
    :cond_a
    iput-object v12, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 215
    .line 216
    :goto_7
    if-nez v27, :cond_c

    .line 217
    .line 218
    iget v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 219
    .line 220
    if-eqz v2, :cond_b

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_b
    iget v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 224
    .line 225
    if-nez v2, :cond_e

    .line 226
    .line 227
    iget v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_c
    iget v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 231
    .line 232
    if-eqz v2, :cond_d

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_d
    iget v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 236
    .line 237
    if-nez v2, :cond_e

    .line 238
    .line 239
    iget v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 240
    .line 241
    :cond_e
    :goto_8
    move-object/from16 v2, v21

    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_f
    move/from16 v26, v2

    .line 245
    .line 246
    move/from16 v27, v4

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :goto_9
    if-eq v2, v12, :cond_10

    .line 250
    .line 251
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 252
    .line 253
    aput-object v12, v2, v27

    .line 254
    .line 255
    :cond_10
    add-int/lit8 v2, v18, 0x1

    .line 256
    .line 257
    aget-object v2, v11, v2

    .line 258
    .line 259
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 260
    .line 261
    if-eqz v2, :cond_11

    .line 262
    .line 263
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 264
    .line 265
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 266
    .line 267
    aget-object v4, v4, v18

    .line 268
    .line 269
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 270
    .line 271
    if-eqz v4, :cond_11

    .line 272
    .line 273
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 274
    .line 275
    if-eq v4, v12, :cond_12

    .line 276
    .line 277
    :cond_11
    move-object/from16 v2, v16

    .line 278
    .line 279
    :cond_12
    if-eqz v2, :cond_13

    .line 280
    .line 281
    goto :goto_a

    .line 282
    :cond_13
    move-object v2, v12

    .line 283
    const/16 v19, 0x1

    .line 284
    .line 285
    :goto_a
    move-object/from16 v21, v12

    .line 286
    .line 287
    move/from16 v4, v27

    .line 288
    .line 289
    const/4 v7, 0x3

    .line 290
    const/16 v8, 0x8

    .line 291
    .line 292
    move-object v12, v2

    .line 293
    move/from16 v2, v26

    .line 294
    .line 295
    goto/16 :goto_3

    .line 296
    .line 297
    :cond_14
    move/from16 v26, v2

    .line 298
    .line 299
    move/from16 v27, v4

    .line 300
    .line 301
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 302
    .line 303
    if-eqz v2, :cond_15

    .line 304
    .line 305
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 306
    .line 307
    aget-object v2, v2, v18

    .line 308
    .line 309
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 310
    .line 311
    .line 312
    :cond_15
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 313
    .line 314
    if-eqz v2, :cond_16

    .line 315
    .line 316
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 317
    .line 318
    add-int/lit8 v18, v18, 0x1

    .line 319
    .line 320
    aget-object v2, v2, v18

    .line 321
    .line 322
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 323
    .line 324
    .line 325
    :cond_16
    iput-object v12, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 326
    .line 327
    if-nez v27, :cond_17

    .line 328
    .line 329
    iget-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mIsRtl:Z

    .line 330
    .line 331
    if-eqz v2, :cond_17

    .line 332
    .line 333
    iput-object v12, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_17
    iput-object v5, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 337
    .line 338
    :goto_b
    iget-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 339
    .line 340
    if-eqz v2, :cond_18

    .line 341
    .line 342
    iget-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 343
    .line 344
    if-eqz v2, :cond_18

    .line 345
    .line 346
    const/4 v2, 0x1

    .line 347
    goto :goto_c

    .line 348
    :cond_18
    const/4 v2, 0x0

    .line 349
    :goto_c
    iput-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 350
    .line 351
    :goto_d
    const/4 v2, 0x1

    .line 352
    goto :goto_e

    .line 353
    :cond_19
    move/from16 v26, v2

    .line 354
    .line 355
    goto :goto_d

    .line 356
    :goto_e
    iput-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    .line 357
    .line 358
    if-eqz v10, :cond_1b

    .line 359
    .line 360
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-eqz v2, :cond_1a

    .line 365
    .line 366
    goto :goto_f

    .line 367
    :cond_1a
    move/from16 v21, v13

    .line 368
    .line 369
    const/16 v28, 0x2

    .line 370
    .line 371
    goto/16 :goto_47

    .line 372
    .line 373
    :cond_1b
    :goto_f
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 374
    .line 375
    iget-object v12, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 376
    .line 377
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 378
    .line 379
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 380
    .line 381
    iget v7, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 382
    .line 383
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 384
    .line 385
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 386
    .line 387
    aget v8, v8, p3

    .line 388
    .line 389
    move-object/from16 v18, v9

    .line 390
    .line 391
    const/4 v9, 0x2

    .line 392
    if-ne v8, v9, :cond_1c

    .line 393
    .line 394
    const/4 v8, 0x1

    .line 395
    goto :goto_10

    .line 396
    :cond_1c
    const/4 v8, 0x0

    .line 397
    :goto_10
    if-nez p3, :cond_20

    .line 398
    .line 399
    iget v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 400
    .line 401
    if-nez v9, :cond_1d

    .line 402
    .line 403
    const/16 v22, 0x1

    .line 404
    .line 405
    :goto_11
    move-object/from16 v19, v6

    .line 406
    .line 407
    const/4 v6, 0x1

    .line 408
    goto :goto_12

    .line 409
    :cond_1d
    const/16 v22, 0x0

    .line 410
    .line 411
    goto :goto_11

    .line 412
    :goto_12
    if-ne v9, v6, :cond_1e

    .line 413
    .line 414
    move/from16 v21, v6

    .line 415
    .line 416
    :goto_13
    const/4 v6, 0x2

    .line 417
    goto :goto_14

    .line 418
    :cond_1e
    const/16 v21, 0x0

    .line 419
    .line 420
    goto :goto_13

    .line 421
    :goto_14
    if-ne v9, v6, :cond_1f

    .line 422
    .line 423
    const/4 v9, 0x1

    .line 424
    goto :goto_15

    .line 425
    :cond_1f
    const/4 v9, 0x0

    .line 426
    :goto_15
    move-object v6, v5

    .line 427
    move/from16 v29, v7

    .line 428
    .line 429
    move/from16 v23, v21

    .line 430
    .line 431
    move/from16 v27, v22

    .line 432
    .line 433
    :goto_16
    const/16 v21, 0x0

    .line 434
    .line 435
    goto :goto_1c

    .line 436
    :cond_20
    move-object/from16 v19, v6

    .line 437
    .line 438
    move v6, v9

    .line 439
    iget v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 440
    .line 441
    if-nez v9, :cond_21

    .line 442
    .line 443
    const/16 v23, 0x1

    .line 444
    .line 445
    :goto_17
    const/4 v6, 0x1

    .line 446
    goto :goto_18

    .line 447
    :cond_21
    const/16 v23, 0x0

    .line 448
    .line 449
    goto :goto_17

    .line 450
    :goto_18
    if-ne v9, v6, :cond_22

    .line 451
    .line 452
    const/16 v21, 0x1

    .line 453
    .line 454
    :goto_19
    const/4 v6, 0x2

    .line 455
    goto :goto_1a

    .line 456
    :cond_22
    const/16 v21, 0x0

    .line 457
    .line 458
    goto :goto_19

    .line 459
    :goto_1a
    if-ne v9, v6, :cond_23

    .line 460
    .line 461
    const/4 v9, 0x1

    .line 462
    goto :goto_1b

    .line 463
    :cond_23
    const/4 v9, 0x0

    .line 464
    :goto_1b
    move-object v6, v5

    .line 465
    move/from16 v29, v7

    .line 466
    .line 467
    move/from16 v27, v23

    .line 468
    .line 469
    move/from16 v23, v21

    .line 470
    .line 471
    goto :goto_16

    .line 472
    :goto_1c
    if-nez v21, :cond_31

    .line 473
    .line 474
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 475
    .line 476
    move-object/from16 v33, v7

    .line 477
    .line 478
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 479
    .line 480
    move-object/from16 v34, v7

    .line 481
    .line 482
    aget-object v7, v33, v15

    .line 483
    .line 484
    if-eqz v9, :cond_24

    .line 485
    .line 486
    const/16 v31, 0x1

    .line 487
    .line 488
    goto :goto_1d

    .line 489
    :cond_24
    const/16 v31, 0x4

    .line 490
    .line 491
    :goto_1d
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 492
    .line 493
    .line 494
    move-result v35

    .line 495
    move/from16 v36, v8

    .line 496
    .line 497
    aget v8, v34, p3

    .line 498
    .line 499
    move/from16 v37, v9

    .line 500
    .line 501
    const/4 v9, 0x3

    .line 502
    if-ne v8, v9, :cond_25

    .line 503
    .line 504
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 505
    .line 506
    aget v8, v8, p3

    .line 507
    .line 508
    if-nez v8, :cond_25

    .line 509
    .line 510
    const/4 v8, 0x1

    .line 511
    goto :goto_1e

    .line 512
    :cond_25
    const/4 v8, 0x0

    .line 513
    :goto_1e
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 514
    .line 515
    if-eqz v9, :cond_26

    .line 516
    .line 517
    if-eq v6, v5, :cond_26

    .line 518
    .line 519
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 520
    .line 521
    .line 522
    move-result v9

    .line 523
    add-int v35, v9, v35

    .line 524
    .line 525
    :cond_26
    move/from16 v9, v35

    .line 526
    .line 527
    if-eqz v37, :cond_27

    .line 528
    .line 529
    if-eq v6, v5, :cond_27

    .line 530
    .line 531
    if-eq v6, v12, :cond_27

    .line 532
    .line 533
    const/16 v31, 0x8

    .line 534
    .line 535
    :cond_27
    move-object/from16 v35, v5

    .line 536
    .line 537
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 538
    .line 539
    if-eqz v5, :cond_2b

    .line 540
    .line 541
    move/from16 v38, v8

    .line 542
    .line 543
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 544
    .line 545
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 546
    .line 547
    if-ne v6, v12, :cond_28

    .line 548
    .line 549
    const/4 v10, 0x6

    .line 550
    invoke-virtual {v1, v8, v5, v9, v10}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 551
    .line 552
    .line 553
    goto :goto_1f

    .line 554
    :cond_28
    const/16 v10, 0x8

    .line 555
    .line 556
    invoke-virtual {v1, v8, v5, v9, v10}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 557
    .line 558
    .line 559
    :goto_1f
    if-eqz v38, :cond_29

    .line 560
    .line 561
    if-nez v37, :cond_29

    .line 562
    .line 563
    const/16 v31, 0x5

    .line 564
    .line 565
    :cond_29
    if-ne v6, v12, :cond_2a

    .line 566
    .line 567
    if-eqz v37, :cond_2a

    .line 568
    .line 569
    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 570
    .line 571
    aget-boolean v5, v5, p3

    .line 572
    .line 573
    if-eqz v5, :cond_2a

    .line 574
    .line 575
    const/4 v5, 0x5

    .line 576
    goto :goto_20

    .line 577
    :cond_2a
    move/from16 v5, v31

    .line 578
    .line 579
    :goto_20
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 580
    .line 581
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 582
    .line 583
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 584
    .line 585
    invoke-virtual {v1, v8, v7, v9, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 586
    .line 587
    .line 588
    :cond_2b
    if-eqz v36, :cond_2d

    .line 589
    .line 590
    iget v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 591
    .line 592
    const/16 v10, 0x8

    .line 593
    .line 594
    if-eq v5, v10, :cond_2c

    .line 595
    .line 596
    aget v5, v34, p3

    .line 597
    .line 598
    const/4 v9, 0x3

    .line 599
    if-ne v5, v9, :cond_2c

    .line 600
    .line 601
    add-int/lit8 v5, v15, 0x1

    .line 602
    .line 603
    aget-object v5, v33, v5

    .line 604
    .line 605
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 606
    .line 607
    aget-object v7, v33, v15

    .line 608
    .line 609
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 610
    .line 611
    const/4 v8, 0x0

    .line 612
    const/4 v9, 0x5

    .line 613
    invoke-virtual {v1, v5, v7, v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 614
    .line 615
    .line 616
    goto :goto_21

    .line 617
    :cond_2c
    const/4 v8, 0x0

    .line 618
    :goto_21
    aget-object v5, v33, v15

    .line 619
    .line 620
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 621
    .line 622
    aget-object v7, v18, v15

    .line 623
    .line 624
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 625
    .line 626
    const/16 v10, 0x8

    .line 627
    .line 628
    invoke-virtual {v1, v5, v7, v8, v10}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 629
    .line 630
    .line 631
    :cond_2d
    add-int/lit8 v5, v15, 0x1

    .line 632
    .line 633
    aget-object v5, v33, v5

    .line 634
    .line 635
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 636
    .line 637
    if-eqz v5, :cond_2e

    .line 638
    .line 639
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 640
    .line 641
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 642
    .line 643
    aget-object v7, v7, v15

    .line 644
    .line 645
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 646
    .line 647
    if-eqz v7, :cond_2e

    .line 648
    .line 649
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 650
    .line 651
    if-eq v7, v6, :cond_2f

    .line 652
    .line 653
    :cond_2e
    move-object/from16 v5, v16

    .line 654
    .line 655
    :cond_2f
    if-eqz v5, :cond_30

    .line 656
    .line 657
    move-object v6, v5

    .line 658
    goto :goto_22

    .line 659
    :cond_30
    const/16 v21, 0x1

    .line 660
    .line 661
    :goto_22
    move-object/from16 v10, p2

    .line 662
    .line 663
    move-object/from16 v5, v35

    .line 664
    .line 665
    move/from16 v8, v36

    .line 666
    .line 667
    move/from16 v9, v37

    .line 668
    .line 669
    goto/16 :goto_1c

    .line 670
    .line 671
    :cond_31
    move/from16 v36, v8

    .line 672
    .line 673
    move/from16 v37, v9

    .line 674
    .line 675
    if-eqz v2, :cond_34

    .line 676
    .line 677
    iget-object v5, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 678
    .line 679
    add-int/lit8 v6, v15, 0x1

    .line 680
    .line 681
    aget-object v5, v5, v6

    .line 682
    .line 683
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 684
    .line 685
    if-eqz v5, :cond_34

    .line 686
    .line 687
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 688
    .line 689
    aget-object v5, v5, v6

    .line 690
    .line 691
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 692
    .line 693
    aget v7, v7, p3

    .line 694
    .line 695
    const/4 v9, 0x3

    .line 696
    if-ne v7, v9, :cond_32

    .line 697
    .line 698
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 699
    .line 700
    aget v7, v7, p3

    .line 701
    .line 702
    if-nez v7, :cond_32

    .line 703
    .line 704
    if-nez v37, :cond_32

    .line 705
    .line 706
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 707
    .line 708
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 709
    .line 710
    if-ne v8, v0, :cond_32

    .line 711
    .line 712
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 713
    .line 714
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 715
    .line 716
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 717
    .line 718
    .line 719
    move-result v9

    .line 720
    neg-int v9, v9

    .line 721
    const/4 v10, 0x5

    .line 722
    invoke-virtual {v1, v8, v7, v9, v10}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 723
    .line 724
    .line 725
    goto :goto_23

    .line 726
    :cond_32
    const/4 v10, 0x5

    .line 727
    if-eqz v37, :cond_33

    .line 728
    .line 729
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 730
    .line 731
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 732
    .line 733
    if-ne v8, v0, :cond_33

    .line 734
    .line 735
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 736
    .line 737
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 738
    .line 739
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 740
    .line 741
    .line 742
    move-result v9

    .line 743
    neg-int v9, v9

    .line 744
    const/4 v10, 0x4

    .line 745
    invoke-virtual {v1, v8, v7, v9, v10}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 746
    .line 747
    .line 748
    :cond_33
    :goto_23
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 749
    .line 750
    iget-object v8, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 751
    .line 752
    aget-object v6, v8, v6

    .line 753
    .line 754
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 755
    .line 756
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 757
    .line 758
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    neg-int v5, v5

    .line 763
    const/4 v10, 0x6

    .line 764
    invoke-virtual {v1, v7, v6, v5, v10}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 765
    .line 766
    .line 767
    :cond_34
    if-eqz v36, :cond_35

    .line 768
    .line 769
    add-int/lit8 v5, v15, 0x1

    .line 770
    .line 771
    aget-object v6, v18, v5

    .line 772
    .line 773
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 774
    .line 775
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 776
    .line 777
    aget-object v5, v7, v5

    .line 778
    .line 779
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 780
    .line 781
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 782
    .line 783
    .line 784
    move-result v5

    .line 785
    const/16 v10, 0x8

    .line 786
    .line 787
    invoke-virtual {v1, v6, v7, v5, v10}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 788
    .line 789
    .line 790
    :cond_35
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 791
    .line 792
    if-eqz v5, :cond_3f

    .line 793
    .line 794
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 795
    .line 796
    .line 797
    move-result v6

    .line 798
    const/4 v7, 0x1

    .line 799
    if-le v6, v7, :cond_3f

    .line 800
    .line 801
    iget-boolean v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 802
    .line 803
    if-eqz v8, :cond_36

    .line 804
    .line 805
    iget-boolean v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 806
    .line 807
    if-nez v8, :cond_36

    .line 808
    .line 809
    iget v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 810
    .line 811
    int-to-float v8, v8

    .line 812
    move/from16 v29, v8

    .line 813
    .line 814
    :cond_36
    move-object/from16 v9, v16

    .line 815
    .line 816
    move/from16 v10, v17

    .line 817
    .line 818
    const/4 v8, 0x0

    .line 819
    :goto_24
    if-ge v8, v6, :cond_3f

    .line 820
    .line 821
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v18

    .line 825
    move-object/from16 v7, v18

    .line 826
    .line 827
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 828
    .line 829
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 830
    .line 831
    move-object/from16 v18, v0

    .line 832
    .line 833
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 834
    .line 835
    aget v18, v18, p3

    .line 836
    .line 837
    cmpg-float v21, v18, v17

    .line 838
    .line 839
    move-object/from16 v25, v0

    .line 840
    .line 841
    if-gez v21, :cond_38

    .line 842
    .line 843
    iget-boolean v0, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 844
    .line 845
    if-eqz v0, :cond_37

    .line 846
    .line 847
    add-int/lit8 v0, v15, 0x1

    .line 848
    .line 849
    aget-object v0, v25, v0

    .line 850
    .line 851
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 852
    .line 853
    aget-object v7, v25, v15

    .line 854
    .line 855
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 856
    .line 857
    move-object/from16 v30, v5

    .line 858
    .line 859
    move/from16 v31, v6

    .line 860
    .line 861
    const/4 v5, 0x0

    .line 862
    const/4 v6, 0x4

    .line 863
    invoke-virtual {v1, v0, v7, v5, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 864
    .line 865
    .line 866
    move/from16 v20, v10

    .line 867
    .line 868
    move v10, v5

    .line 869
    goto :goto_25

    .line 870
    :cond_37
    const/high16 v18, 0x3f800000    # 1.0f

    .line 871
    .line 872
    :cond_38
    move-object/from16 v30, v5

    .line 873
    .line 874
    move/from16 v31, v6

    .line 875
    .line 876
    const/4 v6, 0x4

    .line 877
    cmpl-float v0, v18, v17

    .line 878
    .line 879
    if-nez v0, :cond_39

    .line 880
    .line 881
    add-int/lit8 v0, v15, 0x1

    .line 882
    .line 883
    aget-object v0, v25, v0

    .line 884
    .line 885
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 886
    .line 887
    aget-object v5, v25, v15

    .line 888
    .line 889
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 890
    .line 891
    move/from16 v20, v10

    .line 892
    .line 893
    const/16 v7, 0x8

    .line 894
    .line 895
    const/4 v10, 0x0

    .line 896
    invoke-virtual {v1, v0, v5, v10, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 897
    .line 898
    .line 899
    :goto_25
    move/from16 v21, v13

    .line 900
    .line 901
    move/from16 v36, v17

    .line 902
    .line 903
    move/from16 v10, v20

    .line 904
    .line 905
    move/from16 v17, v8

    .line 906
    .line 907
    goto/16 :goto_29

    .line 908
    .line 909
    :cond_39
    move/from16 v20, v10

    .line 910
    .line 911
    const/4 v10, 0x0

    .line 912
    if-eqz v9, :cond_3e

    .line 913
    .line 914
    iget-object v5, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 915
    .line 916
    aget-object v9, v5, v15

    .line 917
    .line 918
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 919
    .line 920
    add-int/lit8 v33, v15, 0x1

    .line 921
    .line 922
    aget-object v5, v5, v33

    .line 923
    .line 924
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 925
    .line 926
    aget-object v6, v25, v15

    .line 927
    .line 928
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 929
    .line 930
    aget-object v10, v25, v33

    .line 931
    .line 932
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 933
    .line 934
    move/from16 v25, v0

    .line 935
    .line 936
    invoke-virtual {v1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    move-object/from16 v33, v7

    .line 941
    .line 942
    move/from16 v7, v17

    .line 943
    .line 944
    iput v7, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 945
    .line 946
    cmpl-float v17, v29, v7

    .line 947
    .line 948
    move/from16 v36, v7

    .line 949
    .line 950
    if-eqz v17, :cond_3a

    .line 951
    .line 952
    cmpl-float v17, v20, v18

    .line 953
    .line 954
    if-nez v17, :cond_3b

    .line 955
    .line 956
    :cond_3a
    move/from16 v17, v8

    .line 957
    .line 958
    move/from16 v21, v13

    .line 959
    .line 960
    const/high16 v8, 0x3f800000    # 1.0f

    .line 961
    .line 962
    const/high16 v13, -0x40800000    # -1.0f

    .line 963
    .line 964
    goto :goto_26

    .line 965
    :cond_3b
    cmpl-float v17, v20, v36

    .line 966
    .line 967
    iget-object v7, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 968
    .line 969
    if-nez v17, :cond_3c

    .line 970
    .line 971
    move/from16 v17, v8

    .line 972
    .line 973
    const/high16 v8, 0x3f800000    # 1.0f

    .line 974
    .line 975
    invoke-virtual {v7, v9, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 976
    .line 977
    .line 978
    iget-object v6, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 979
    .line 980
    const/high16 v7, -0x40800000    # -1.0f

    .line 981
    .line 982
    invoke-virtual {v6, v5, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 983
    .line 984
    .line 985
    move/from16 v21, v13

    .line 986
    .line 987
    goto :goto_27

    .line 988
    :cond_3c
    move/from16 v17, v8

    .line 989
    .line 990
    move/from16 v21, v13

    .line 991
    .line 992
    const/high16 v8, 0x3f800000    # 1.0f

    .line 993
    .line 994
    const/high16 v13, -0x40800000    # -1.0f

    .line 995
    .line 996
    if-nez v25, :cond_3d

    .line 997
    .line 998
    invoke-virtual {v7, v6, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 999
    .line 1000
    .line 1001
    iget-object v5, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1002
    .line 1003
    invoke-virtual {v5, v10, v13}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1004
    .line 1005
    .line 1006
    goto :goto_27

    .line 1007
    :cond_3d
    div-float v20, v20, v29

    .line 1008
    .line 1009
    div-float v25, v18, v29

    .line 1010
    .line 1011
    div-float v13, v20, v25

    .line 1012
    .line 1013
    invoke-virtual {v7, v9, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1014
    .line 1015
    .line 1016
    iget-object v7, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1017
    .line 1018
    const/high16 v8, -0x40800000    # -1.0f

    .line 1019
    .line 1020
    invoke-virtual {v7, v5, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1021
    .line 1022
    .line 1023
    iget-object v5, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1024
    .line 1025
    invoke-virtual {v5, v10, v13}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v5, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1029
    .line 1030
    neg-float v7, v13

    .line 1031
    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1032
    .line 1033
    .line 1034
    goto :goto_27

    .line 1035
    :goto_26
    iget-object v7, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1036
    .line 1037
    invoke-virtual {v7, v9, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1038
    .line 1039
    .line 1040
    iget-object v7, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1041
    .line 1042
    invoke-virtual {v7, v5, v13}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1043
    .line 1044
    .line 1045
    iget-object v5, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1046
    .line 1047
    invoke-virtual {v5, v10, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1048
    .line 1049
    .line 1050
    iget-object v5, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1051
    .line 1052
    invoke-virtual {v5, v6, v13}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1053
    .line 1054
    .line 1055
    :goto_27
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 1056
    .line 1057
    .line 1058
    goto :goto_28

    .line 1059
    :cond_3e
    move-object/from16 v33, v7

    .line 1060
    .line 1061
    move/from16 v21, v13

    .line 1062
    .line 1063
    move/from16 v36, v17

    .line 1064
    .line 1065
    move/from16 v17, v8

    .line 1066
    .line 1067
    :goto_28
    move/from16 v10, v18

    .line 1068
    .line 1069
    move-object/from16 v9, v33

    .line 1070
    .line 1071
    :goto_29
    add-int/lit8 v8, v17, 0x1

    .line 1072
    .line 1073
    const/4 v7, 0x1

    .line 1074
    move-object/from16 v0, p0

    .line 1075
    .line 1076
    move/from16 v13, v21

    .line 1077
    .line 1078
    move-object/from16 v5, v30

    .line 1079
    .line 1080
    move/from16 v6, v31

    .line 1081
    .line 1082
    move/from16 v17, v36

    .line 1083
    .line 1084
    goto/16 :goto_24

    .line 1085
    .line 1086
    :cond_3f
    move/from16 v21, v13

    .line 1087
    .line 1088
    if-eqz v12, :cond_40

    .line 1089
    .line 1090
    if-eq v12, v2, :cond_41

    .line 1091
    .line 1092
    if-eqz v37, :cond_40

    .line 1093
    .line 1094
    goto :goto_2a

    .line 1095
    :cond_40
    move-object v0, v2

    .line 1096
    const/16 v28, 0x2

    .line 1097
    .line 1098
    goto :goto_30

    .line 1099
    :cond_41
    :goto_2a
    aget-object v0, v19, v15

    .line 1100
    .line 1101
    iget-object v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1102
    .line 1103
    add-int/lit8 v5, v15, 0x1

    .line 1104
    .line 1105
    aget-object v3, v3, v5

    .line 1106
    .line 1107
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1108
    .line 1109
    if-eqz v0, :cond_42

    .line 1110
    .line 1111
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1112
    .line 1113
    goto :goto_2b

    .line 1114
    :cond_42
    move-object/from16 v0, v16

    .line 1115
    .line 1116
    :goto_2b
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1117
    .line 1118
    if-eqz v6, :cond_43

    .line 1119
    .line 1120
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1121
    .line 1122
    goto :goto_2c

    .line 1123
    :cond_43
    move-object/from16 v6, v16

    .line 1124
    .line 1125
    :goto_2c
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1126
    .line 1127
    aget-object v7, v7, v15

    .line 1128
    .line 1129
    if-eqz v2, :cond_44

    .line 1130
    .line 1131
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1132
    .line 1133
    aget-object v3, v3, v5

    .line 1134
    .line 1135
    :cond_44
    if-eqz v0, :cond_46

    .line 1136
    .line 1137
    if-eqz v6, :cond_46

    .line 1138
    .line 1139
    if-nez p3, :cond_45

    .line 1140
    .line 1141
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1142
    .line 1143
    :goto_2d
    move v5, v4

    .line 1144
    goto :goto_2e

    .line 1145
    :cond_45
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1146
    .line 1147
    goto :goto_2d

    .line 1148
    :goto_2e
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1149
    .line 1150
    .line 1151
    move-result v4

    .line 1152
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1153
    .line 1154
    .line 1155
    move-result v8

    .line 1156
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1157
    .line 1158
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1159
    .line 1160
    const/4 v9, 0x7

    .line 1161
    move-object/from16 v28, v3

    .line 1162
    .line 1163
    move-object v3, v0

    .line 1164
    move-object v0, v2

    .line 1165
    move-object v2, v7

    .line 1166
    move-object/from16 v7, v28

    .line 1167
    .line 1168
    const/16 v28, 0x2

    .line 1169
    .line 1170
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1171
    .line 1172
    .line 1173
    goto :goto_2f

    .line 1174
    :cond_46
    move-object v0, v2

    .line 1175
    const/16 v28, 0x2

    .line 1176
    .line 1177
    :cond_47
    :goto_2f
    move-object/from16 v1, p1

    .line 1178
    .line 1179
    goto/16 :goto_44

    .line 1180
    .line 1181
    :goto_30
    if-eqz v27, :cond_59

    .line 1182
    .line 1183
    if-eqz v12, :cond_59

    .line 1184
    .line 1185
    iget v1, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 1186
    .line 1187
    if-lez v1, :cond_48

    .line 1188
    .line 1189
    iget v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 1190
    .line 1191
    if-ne v2, v1, :cond_48

    .line 1192
    .line 1193
    const/16 v22, 0x1

    .line 1194
    .line 1195
    goto :goto_31

    .line 1196
    :cond_48
    const/16 v22, 0x0

    .line 1197
    .line 1198
    :goto_31
    move-object v10, v12

    .line 1199
    move-object v13, v10

    .line 1200
    :goto_32
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1201
    .line 1202
    if-eqz v10, :cond_47

    .line 1203
    .line 1204
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1205
    .line 1206
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1207
    .line 1208
    aget-object v3, v3, p3

    .line 1209
    .line 1210
    :goto_33
    if-eqz v3, :cond_49

    .line 1211
    .line 1212
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1213
    .line 1214
    const/16 v7, 0x8

    .line 1215
    .line 1216
    if-ne v4, v7, :cond_4a

    .line 1217
    .line 1218
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1219
    .line 1220
    aget-object v3, v3, p3

    .line 1221
    .line 1222
    goto :goto_33

    .line 1223
    :cond_49
    const/16 v7, 0x8

    .line 1224
    .line 1225
    :cond_4a
    if-nez v3, :cond_4c

    .line 1226
    .line 1227
    if-ne v10, v0, :cond_4b

    .line 1228
    .line 1229
    goto :goto_34

    .line 1230
    :cond_4b
    move-object/from16 v17, v3

    .line 1231
    .line 1232
    move-object/from16 v18, v13

    .line 1233
    .line 1234
    const/16 v32, 0x5

    .line 1235
    .line 1236
    move v13, v7

    .line 1237
    goto/16 :goto_3a

    .line 1238
    .line 1239
    :cond_4c
    :goto_34
    aget-object v4, v2, v15

    .line 1240
    .line 1241
    move-object v5, v2

    .line 1242
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1243
    .line 1244
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1245
    .line 1246
    if-eqz v6, :cond_4d

    .line 1247
    .line 1248
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1249
    .line 1250
    goto :goto_35

    .line 1251
    :cond_4d
    move-object/from16 v6, v16

    .line 1252
    .line 1253
    :goto_35
    if-eq v13, v10, :cond_4e

    .line 1254
    .line 1255
    add-int/lit8 v6, v15, 0x1

    .line 1256
    .line 1257
    aget-object v6, v1, v6

    .line 1258
    .line 1259
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1260
    .line 1261
    goto :goto_36

    .line 1262
    :cond_4e
    if-ne v10, v12, :cond_50

    .line 1263
    .line 1264
    aget-object v6, v19, v15

    .line 1265
    .line 1266
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1267
    .line 1268
    if-eqz v6, :cond_4f

    .line 1269
    .line 1270
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1271
    .line 1272
    goto :goto_36

    .line 1273
    :cond_4f
    move-object/from16 v6, v16

    .line 1274
    .line 1275
    :cond_50
    :goto_36
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1276
    .line 1277
    .line 1278
    move-result v4

    .line 1279
    add-int/lit8 v8, v15, 0x1

    .line 1280
    .line 1281
    aget-object v9, v5, v8

    .line 1282
    .line 1283
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1284
    .line 1285
    .line 1286
    move-result v9

    .line 1287
    if-eqz v3, :cond_51

    .line 1288
    .line 1289
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1290
    .line 1291
    aget-object v7, v7, v15

    .line 1292
    .line 1293
    move-object/from16 v17, v1

    .line 1294
    .line 1295
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1296
    .line 1297
    goto :goto_37

    .line 1298
    :cond_51
    move-object/from16 v17, v1

    .line 1299
    .line 1300
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1301
    .line 1302
    aget-object v1, v1, v8

    .line 1303
    .line 1304
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1305
    .line 1306
    if-eqz v7, :cond_52

    .line 1307
    .line 1308
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1309
    .line 1310
    goto :goto_37

    .line 1311
    :cond_52
    move-object/from16 v1, v16

    .line 1312
    .line 1313
    :goto_37
    aget-object v5, v5, v8

    .line 1314
    .line 1315
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1316
    .line 1317
    if-eqz v7, :cond_53

    .line 1318
    .line 1319
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1320
    .line 1321
    .line 1322
    move-result v7

    .line 1323
    add-int/2addr v9, v7

    .line 1324
    :cond_53
    aget-object v7, v17, v8

    .line 1325
    .line 1326
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1327
    .line 1328
    .line 1329
    move-result v7

    .line 1330
    add-int/2addr v7, v4

    .line 1331
    if-eqz v2, :cond_57

    .line 1332
    .line 1333
    if-eqz v6, :cond_57

    .line 1334
    .line 1335
    if-eqz v1, :cond_57

    .line 1336
    .line 1337
    if-eqz v5, :cond_57

    .line 1338
    .line 1339
    if-ne v10, v12, :cond_54

    .line 1340
    .line 1341
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1342
    .line 1343
    aget-object v4, v4, v15

    .line 1344
    .line 1345
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1346
    .line 1347
    .line 1348
    move-result v7

    .line 1349
    :cond_54
    move v4, v7

    .line 1350
    if-ne v10, v0, :cond_55

    .line 1351
    .line 1352
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1353
    .line 1354
    aget-object v7, v7, v8

    .line 1355
    .line 1356
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1357
    .line 1358
    .line 1359
    move-result v9

    .line 1360
    :cond_55
    move v8, v9

    .line 1361
    if-eqz v22, :cond_56

    .line 1362
    .line 1363
    const/16 v9, 0x8

    .line 1364
    .line 1365
    :goto_38
    move-object v7, v5

    .line 1366
    goto :goto_39

    .line 1367
    :cond_56
    const/4 v9, 0x5

    .line 1368
    goto :goto_38

    .line 1369
    :goto_39
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1370
    .line 1371
    move-object/from16 v17, v3

    .line 1372
    .line 1373
    move-object v3, v6

    .line 1374
    move-object/from16 v18, v13

    .line 1375
    .line 1376
    const/16 v13, 0x8

    .line 1377
    .line 1378
    const/16 v32, 0x5

    .line 1379
    .line 1380
    move-object v6, v1

    .line 1381
    move-object/from16 v1, p1

    .line 1382
    .line 1383
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1384
    .line 1385
    .line 1386
    goto :goto_3a

    .line 1387
    :cond_57
    move-object/from16 v17, v3

    .line 1388
    .line 1389
    move-object/from16 v18, v13

    .line 1390
    .line 1391
    const/16 v13, 0x8

    .line 1392
    .line 1393
    const/16 v32, 0x5

    .line 1394
    .line 1395
    :goto_3a
    iget v1, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1396
    .line 1397
    if-eq v1, v13, :cond_58

    .line 1398
    .line 1399
    move-object/from16 v18, v10

    .line 1400
    .line 1401
    :cond_58
    move-object/from16 v10, v17

    .line 1402
    .line 1403
    move-object/from16 v13, v18

    .line 1404
    .line 1405
    goto/16 :goto_32

    .line 1406
    .line 1407
    :cond_59
    const/16 v13, 0x8

    .line 1408
    .line 1409
    if-eqz v23, :cond_47

    .line 1410
    .line 1411
    if-eqz v12, :cond_47

    .line 1412
    .line 1413
    iget v1, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 1414
    .line 1415
    if-lez v1, :cond_5a

    .line 1416
    .line 1417
    iget v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 1418
    .line 1419
    if-ne v2, v1, :cond_5a

    .line 1420
    .line 1421
    const/16 v22, 0x1

    .line 1422
    .line 1423
    goto :goto_3b

    .line 1424
    :cond_5a
    const/16 v22, 0x0

    .line 1425
    .line 1426
    :goto_3b
    move-object v1, v12

    .line 1427
    move-object v10, v1

    .line 1428
    :goto_3c
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1429
    .line 1430
    if-eqz v10, :cond_65

    .line 1431
    .line 1432
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1433
    .line 1434
    iget-object v4, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1435
    .line 1436
    aget-object v4, v4, p3

    .line 1437
    .line 1438
    :goto_3d
    if-eqz v4, :cond_5b

    .line 1439
    .line 1440
    iget v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1441
    .line 1442
    if-ne v5, v13, :cond_5b

    .line 1443
    .line 1444
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1445
    .line 1446
    aget-object v4, v4, p3

    .line 1447
    .line 1448
    goto :goto_3d

    .line 1449
    :cond_5b
    if-eq v10, v12, :cond_63

    .line 1450
    .line 1451
    if-eq v10, v0, :cond_63

    .line 1452
    .line 1453
    if-eqz v4, :cond_63

    .line 1454
    .line 1455
    if-ne v4, v0, :cond_5c

    .line 1456
    .line 1457
    move-object/from16 v4, v16

    .line 1458
    .line 1459
    :cond_5c
    aget-object v5, v3, v15

    .line 1460
    .line 1461
    move-object v6, v2

    .line 1462
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1463
    .line 1464
    add-int/lit8 v7, v15, 0x1

    .line 1465
    .line 1466
    aget-object v8, v6, v7

    .line 1467
    .line 1468
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1469
    .line 1470
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1471
    .line 1472
    .line 1473
    move-result v5

    .line 1474
    aget-object v9, v3, v7

    .line 1475
    .line 1476
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1477
    .line 1478
    .line 1479
    move-result v9

    .line 1480
    if-eqz v4, :cond_5e

    .line 1481
    .line 1482
    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1483
    .line 1484
    aget-object v3, v3, v15

    .line 1485
    .line 1486
    iget-object v13, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1487
    .line 1488
    move-object/from16 v17, v1

    .line 1489
    .line 1490
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1491
    .line 1492
    if-eqz v1, :cond_5d

    .line 1493
    .line 1494
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1495
    .line 1496
    goto :goto_3f

    .line 1497
    :cond_5d
    move-object/from16 v1, v16

    .line 1498
    .line 1499
    goto :goto_3f

    .line 1500
    :cond_5e
    move-object/from16 v17, v1

    .line 1501
    .line 1502
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1503
    .line 1504
    aget-object v1, v1, v15

    .line 1505
    .line 1506
    if-eqz v1, :cond_5f

    .line 1507
    .line 1508
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1509
    .line 1510
    goto :goto_3e

    .line 1511
    :cond_5f
    move-object/from16 v13, v16

    .line 1512
    .line 1513
    :goto_3e
    aget-object v3, v3, v7

    .line 1514
    .line 1515
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1516
    .line 1517
    move-object/from16 v39, v3

    .line 1518
    .line 1519
    move-object v3, v1

    .line 1520
    move-object/from16 v1, v39

    .line 1521
    .line 1522
    :goto_3f
    if-eqz v3, :cond_60

    .line 1523
    .line 1524
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1525
    .line 1526
    .line 1527
    move-result v3

    .line 1528
    add-int/2addr v9, v3

    .line 1529
    :cond_60
    aget-object v3, v6, v7

    .line 1530
    .line 1531
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1532
    .line 1533
    .line 1534
    move-result v3

    .line 1535
    add-int/2addr v3, v5

    .line 1536
    move-object v5, v4

    .line 1537
    move v4, v3

    .line 1538
    move-object v3, v8

    .line 1539
    move v8, v9

    .line 1540
    if-eqz v22, :cond_61

    .line 1541
    .line 1542
    const/16 v9, 0x8

    .line 1543
    .line 1544
    goto :goto_40

    .line 1545
    :cond_61
    const/4 v9, 0x4

    .line 1546
    :goto_40
    if-eqz v2, :cond_62

    .line 1547
    .line 1548
    if-eqz v3, :cond_62

    .line 1549
    .line 1550
    if-eqz v13, :cond_62

    .line 1551
    .line 1552
    if-eqz v1, :cond_62

    .line 1553
    .line 1554
    move-object v6, v5

    .line 1555
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1556
    .line 1557
    move-object v7, v13

    .line 1558
    move-object v13, v6

    .line 1559
    move-object v6, v7

    .line 1560
    move-object v7, v1

    .line 1561
    const/16 v31, 0x4

    .line 1562
    .line 1563
    move-object/from16 v1, p1

    .line 1564
    .line 1565
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1566
    .line 1567
    .line 1568
    goto :goto_41

    .line 1569
    :cond_62
    move-object/from16 v1, p1

    .line 1570
    .line 1571
    move-object v13, v5

    .line 1572
    const/16 v31, 0x4

    .line 1573
    .line 1574
    :goto_41
    move-object v4, v13

    .line 1575
    goto :goto_42

    .line 1576
    :cond_63
    move-object/from16 v17, v1

    .line 1577
    .line 1578
    const/16 v31, 0x4

    .line 1579
    .line 1580
    move-object/from16 v1, p1

    .line 1581
    .line 1582
    :goto_42
    iget v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1583
    .line 1584
    const/16 v7, 0x8

    .line 1585
    .line 1586
    if-eq v2, v7, :cond_64

    .line 1587
    .line 1588
    move-object/from16 v17, v10

    .line 1589
    .line 1590
    :cond_64
    move-object v10, v4

    .line 1591
    move v13, v7

    .line 1592
    move-object/from16 v1, v17

    .line 1593
    .line 1594
    goto/16 :goto_3c

    .line 1595
    .line 1596
    :cond_65
    move-object/from16 v1, p1

    .line 1597
    .line 1598
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1599
    .line 1600
    aget-object v2, v2, v15

    .line 1601
    .line 1602
    aget-object v3, v19, v15

    .line 1603
    .line 1604
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1605
    .line 1606
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1607
    .line 1608
    add-int/lit8 v5, v15, 0x1

    .line 1609
    .line 1610
    aget-object v10, v4, v5

    .line 1611
    .line 1612
    iget-object v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1613
    .line 1614
    aget-object v4, v4, v5

    .line 1615
    .line 1616
    iget-object v13, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1617
    .line 1618
    const/4 v9, 0x5

    .line 1619
    if-eqz v3, :cond_67

    .line 1620
    .line 1621
    if-eq v12, v0, :cond_66

    .line 1622
    .line 1623
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1624
    .line 1625
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1626
    .line 1627
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1628
    .line 1629
    .line 1630
    move-result v2

    .line 1631
    invoke-virtual {v1, v4, v3, v2, v9}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1632
    .line 1633
    .line 1634
    goto :goto_43

    .line 1635
    :cond_66
    if-eqz v13, :cond_67

    .line 1636
    .line 1637
    move-object v4, v2

    .line 1638
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1639
    .line 1640
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1641
    .line 1642
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1643
    .line 1644
    .line 1645
    move-result v4

    .line 1646
    iget-object v6, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1647
    .line 1648
    iget-object v7, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1649
    .line 1650
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1651
    .line 1652
    .line 1653
    move-result v8

    .line 1654
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1655
    .line 1656
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1657
    .line 1658
    .line 1659
    :cond_67
    :goto_43
    if-eqz v13, :cond_68

    .line 1660
    .line 1661
    if-eq v12, v0, :cond_68

    .line 1662
    .line 1663
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1664
    .line 1665
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1666
    .line 1667
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1668
    .line 1669
    .line 1670
    move-result v4

    .line 1671
    neg-int v4, v4

    .line 1672
    invoke-virtual {v1, v2, v3, v4, v9}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1673
    .line 1674
    .line 1675
    :cond_68
    :goto_44
    if-nez v27, :cond_69

    .line 1676
    .line 1677
    if-eqz v23, :cond_70

    .line 1678
    .line 1679
    :cond_69
    if-eqz v12, :cond_70

    .line 1680
    .line 1681
    if-eq v12, v0, :cond_70

    .line 1682
    .line 1683
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1684
    .line 1685
    aget-object v3, v2, v15

    .line 1686
    .line 1687
    if-nez v0, :cond_6a

    .line 1688
    .line 1689
    move-object v0, v12

    .line 1690
    :cond_6a
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1691
    .line 1692
    add-int/lit8 v5, v15, 0x1

    .line 1693
    .line 1694
    aget-object v6, v4, v5

    .line 1695
    .line 1696
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1697
    .line 1698
    if-eqz v7, :cond_6b

    .line 1699
    .line 1700
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1701
    .line 1702
    goto :goto_45

    .line 1703
    :cond_6b
    move-object/from16 v7, v16

    .line 1704
    .line 1705
    :goto_45
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1706
    .line 1707
    if-eqz v8, :cond_6c

    .line 1708
    .line 1709
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1710
    .line 1711
    goto :goto_46

    .line 1712
    :cond_6c
    move-object/from16 v8, v16

    .line 1713
    .line 1714
    :goto_46
    if-eq v11, v0, :cond_6e

    .line 1715
    .line 1716
    iget-object v8, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1717
    .line 1718
    aget-object v8, v8, v5

    .line 1719
    .line 1720
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1721
    .line 1722
    if-eqz v8, :cond_6d

    .line 1723
    .line 1724
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1725
    .line 1726
    move-object/from16 v16, v8

    .line 1727
    .line 1728
    :cond_6d
    move-object/from16 v8, v16

    .line 1729
    .line 1730
    :cond_6e
    if-ne v12, v0, :cond_6f

    .line 1731
    .line 1732
    aget-object v6, v2, v5

    .line 1733
    .line 1734
    :cond_6f
    if-eqz v7, :cond_70

    .line 1735
    .line 1736
    if-eqz v8, :cond_70

    .line 1737
    .line 1738
    move-object v0, v4

    .line 1739
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1740
    .line 1741
    .line 1742
    move-result v4

    .line 1743
    aget-object v0, v0, v5

    .line 1744
    .line 1745
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1746
    .line 1747
    .line 1748
    move-result v0

    .line 1749
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1750
    .line 1751
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1752
    .line 1753
    const/4 v9, 0x5

    .line 1754
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1755
    .line 1756
    move-object v6, v7

    .line 1757
    move-object v7, v3

    .line 1758
    move-object v3, v6

    .line 1759
    move-object v6, v8

    .line 1760
    move v8, v0

    .line 1761
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1762
    .line 1763
    .line 1764
    :cond_70
    :goto_47
    add-int/lit8 v2, v26, 0x1

    .line 1765
    .line 1766
    move-object/from16 v0, p0

    .line 1767
    .line 1768
    move-object/from16 v1, p1

    .line 1769
    .line 1770
    move-object/from16 v10, p2

    .line 1771
    .line 1772
    move/from16 v13, v21

    .line 1773
    .line 1774
    goto/16 :goto_2

    .line 1775
    .line 1776
    :cond_71
    return-void
.end method

.method public static checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 12

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 3
    .line 4
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    .line 6
    iget-object v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 7
    .line 8
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    .line 10
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 11
    .line 12
    iget-object v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    .line 14
    iget-object v6, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    .line 16
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    aget v8, v0, v7

    .line 22
    .line 23
    const/4 v9, 0x2

    .line 24
    const/4 v10, 0x4

    .line 25
    if-eq v8, v9, :cond_0

    .line 26
    .line 27
    aget v7, v2, v7

    .line 28
    .line 29
    if-ne v7, v10, :cond_0

    .line 30
    .line 31
    iget v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    iget v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 38
    .line 39
    sub-int/2addr v8, v11

    .line 40
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    iput-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    iput-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 51
    .line 52
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 53
    .line 54
    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 55
    .line 56
    .line 57
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 58
    .line 59
    invoke-virtual {p1, v5, v8}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 60
    .line 61
    .line 62
    iput v9, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 63
    .line 64
    iput v7, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 65
    .line 66
    sub-int/2addr v8, v7

    .line 67
    iput v8, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 68
    .line 69
    iget v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 70
    .line 71
    if-ge v8, v5, :cond_0

    .line 72
    .line 73
    iput v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 74
    .line 75
    :cond_0
    const/4 v5, 0x1

    .line 76
    aget v0, v0, v5

    .line 77
    .line 78
    if-eq v0, v9, :cond_3

    .line 79
    .line 80
    aget v0, v2, v5

    .line 81
    .line 82
    if-ne v0, v10, :cond_3

    .line 83
    .line 84
    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    iget v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 91
    .line 92
    sub-int/2addr p0, v2

    .line 93
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iput-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iput-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 104
    .line 105
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 106
    .line 107
    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 111
    .line 112
    invoke-virtual {p1, v2, p0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 113
    .line 114
    .line 115
    iget v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 116
    .line 117
    if-gtz v2, :cond_1

    .line 118
    .line 119
    iget v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 120
    .line 121
    const/16 v3, 0x8

    .line 122
    .line 123
    if-ne v2, v3, :cond_2

    .line 124
    .line 125
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 130
    .line 131
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 132
    .line 133
    add-int/2addr v1, v0

    .line 134
    invoke-virtual {p1, v2, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 135
    .line 136
    .line 137
    :cond_2
    iput v9, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 138
    .line 139
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 140
    .line 141
    sub-int/2addr p0, v0

    .line 142
    iput p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 143
    .line 144
    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 145
    .line 146
    if-ge p0, p1, :cond_3

    .line 147
    .line 148
    iput p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 149
    .line 150
    :cond_3
    return-void
.end method

.method public static final enabled(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method
