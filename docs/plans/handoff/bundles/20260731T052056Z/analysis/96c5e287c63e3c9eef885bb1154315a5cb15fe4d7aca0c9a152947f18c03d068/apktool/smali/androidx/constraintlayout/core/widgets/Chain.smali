.class public abstract Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    const/16 v16, 0x0

    .line 35
    .line 36
    const/16 v7, 0x8

    .line 37
    .line 38
    if-nez v4, :cond_19

    .line 39
    .line 40
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 41
    .line 42
    mul-int/lit8 v17, v4, 0x2

    .line 43
    .line 44
    move-object v8, v5

    .line 45
    move-object v12, v8

    .line 46
    const/16 v18, 0x0

    .line 47
    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    :goto_3
    if-nez v18, :cond_14

    .line 51
    .line 52
    const/16 v21, 0x1

    .line 53
    .line 54
    iget v9, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 55
    .line 56
    add-int/lit8 v9, v9, 0x1

    .line 57
    .line 58
    iput v9, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 59
    .line 60
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 61
    .line 62
    iget-object v11, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 63
    .line 64
    aput-object v16, v9, v4

    .line 65
    .line 66
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 67
    .line 68
    aput-object v16, v9, v4

    .line 69
    .line 70
    iget v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 71
    .line 72
    if-eq v9, v7, :cond_e

    .line 73
    .line 74
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    .line 76
    .line 77
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 78
    .line 79
    aget-object v23, v11, v17

    .line 80
    .line 81
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 82
    .line 83
    .line 84
    add-int/lit8 v23, v17, 0x1

    .line 85
    .line 86
    aget-object v24, v11, v23

    .line 87
    .line 88
    invoke-virtual/range {v24 .. v24}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 89
    .line 90
    .line 91
    aget-object v24, v11, v17

    .line 92
    .line 93
    invoke-virtual/range {v24 .. v24}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 94
    .line 95
    .line 96
    aget-object v23, v11, v23

    .line 97
    .line 98
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 99
    .line 100
    .line 101
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 102
    .line 103
    if-nez v7, :cond_1

    .line 104
    .line 105
    iput-object v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 106
    .line 107
    :cond_1
    iput-object v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 108
    .line 109
    iget-object v7, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 110
    .line 111
    aget-object v7, v7, v4

    .line 112
    .line 113
    if-ne v7, v9, :cond_e

    .line 114
    .line 115
    move/from16 v24, v2

    .line 116
    .line 117
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 118
    .line 119
    aget v2, v2, v4

    .line 120
    .line 121
    move/from16 v25, v4

    .line 122
    .line 123
    const/4 v4, 0x3

    .line 124
    if-eqz v2, :cond_3

    .line 125
    .line 126
    if-eq v2, v4, :cond_3

    .line 127
    .line 128
    const/4 v4, 0x2

    .line 129
    if-ne v2, v4, :cond_2

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_2
    move-object/from16 v28, v6

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_3
    :goto_4
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 136
    .line 137
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    iput v4, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 140
    .line 141
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 142
    .line 143
    aget v4, v4, v25

    .line 144
    .line 145
    cmpl-float v27, v4, v19

    .line 146
    .line 147
    if-lez v27, :cond_4

    .line 148
    .line 149
    move/from16 v27, v4

    .line 150
    .line 151
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 152
    .line 153
    add-float v4, v4, v27

    .line 154
    .line 155
    iput v4, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_4
    move/from16 v27, v4

    .line 159
    .line 160
    :goto_5
    iget v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 161
    .line 162
    move-object/from16 v28, v6

    .line 163
    .line 164
    const/16 v6, 0x8

    .line 165
    .line 166
    if-eq v4, v6, :cond_8

    .line 167
    .line 168
    if-ne v7, v9, :cond_8

    .line 169
    .line 170
    if-eqz v2, :cond_5

    .line 171
    .line 172
    const/4 v4, 0x3

    .line 173
    if-ne v2, v4, :cond_8

    .line 174
    .line 175
    :cond_5
    cmpg-float v2, v27, v19

    .line 176
    .line 177
    if-gez v2, :cond_6

    .line 178
    .line 179
    move/from16 v2, v21

    .line 180
    .line 181
    iput-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_6
    move/from16 v2, v21

    .line 185
    .line 186
    iput-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 187
    .line 188
    :goto_6
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 189
    .line 190
    if-nez v2, :cond_7

    .line 191
    .line 192
    new-instance v2, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    iput-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 198
    .line 199
    :cond_7
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    :cond_8
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 203
    .line 204
    if-nez v2, :cond_9

    .line 205
    .line 206
    iput-object v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 207
    .line 208
    :cond_9
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 209
    .line 210
    if-eqz v2, :cond_a

    .line 211
    .line 212
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 213
    .line 214
    aput-object v8, v2, v25

    .line 215
    .line 216
    :cond_a
    iput-object v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 217
    .line 218
    :goto_7
    if-nez v25, :cond_c

    .line 219
    .line 220
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 221
    .line 222
    if-eqz v2, :cond_b

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_b
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 226
    .line 227
    if-nez v2, :cond_f

    .line 228
    .line 229
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_c
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 233
    .line 234
    if-eqz v2, :cond_d

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_d
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 238
    .line 239
    if-nez v2, :cond_f

    .line 240
    .line 241
    iget v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_e
    move/from16 v24, v2

    .line 245
    .line 246
    move/from16 v25, v4

    .line 247
    .line 248
    move-object/from16 v28, v6

    .line 249
    .line 250
    :cond_f
    :goto_8
    if-eq v12, v8, :cond_10

    .line 251
    .line 252
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 253
    .line 254
    aput-object v8, v2, v25

    .line 255
    .line 256
    :cond_10
    add-int/lit8 v2, v17, 0x1

    .line 257
    .line 258
    aget-object v2, v11, v2

    .line 259
    .line 260
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 261
    .line 262
    if-eqz v2, :cond_11

    .line 263
    .line 264
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 265
    .line 266
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 267
    .line 268
    aget-object v4, v4, v17

    .line 269
    .line 270
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 271
    .line 272
    if-eqz v4, :cond_11

    .line 273
    .line 274
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 275
    .line 276
    if-eq v4, v8, :cond_12

    .line 277
    .line 278
    :cond_11
    move-object/from16 v2, v16

    .line 279
    .line 280
    :cond_12
    if-eqz v2, :cond_13

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_13
    move-object v2, v8

    .line 284
    const/16 v18, 0x1

    .line 285
    .line 286
    :goto_9
    move-object v12, v8

    .line 287
    move/from16 v4, v25

    .line 288
    .line 289
    move-object/from16 v6, v28

    .line 290
    .line 291
    const/16 v7, 0x8

    .line 292
    .line 293
    move-object v8, v2

    .line 294
    move/from16 v2, v24

    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :cond_14
    move/from16 v24, v2

    .line 299
    .line 300
    move/from16 v25, v4

    .line 301
    .line 302
    move-object/from16 v28, v6

    .line 303
    .line 304
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 305
    .line 306
    if-eqz v2, :cond_15

    .line 307
    .line 308
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 309
    .line 310
    aget-object v2, v2, v17

    .line 311
    .line 312
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 313
    .line 314
    .line 315
    :cond_15
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 316
    .line 317
    if-eqz v2, :cond_16

    .line 318
    .line 319
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 320
    .line 321
    add-int/lit8 v17, v17, 0x1

    .line 322
    .line 323
    aget-object v2, v2, v17

    .line 324
    .line 325
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 326
    .line 327
    .line 328
    :cond_16
    iput-object v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 329
    .line 330
    if-nez v25, :cond_17

    .line 331
    .line 332
    iget-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mIsRtl:Z

    .line 333
    .line 334
    if-eqz v2, :cond_17

    .line 335
    .line 336
    iput-object v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_17
    iput-object v5, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 340
    .line 341
    :goto_a
    iget-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 342
    .line 343
    if-eqz v2, :cond_18

    .line 344
    .line 345
    iget-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 346
    .line 347
    if-eqz v2, :cond_18

    .line 348
    .line 349
    const/4 v2, 0x1

    .line 350
    goto :goto_b

    .line 351
    :cond_18
    const/4 v2, 0x0

    .line 352
    :goto_b
    iput-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 353
    .line 354
    :goto_c
    const/4 v2, 0x1

    .line 355
    goto :goto_d

    .line 356
    :cond_19
    move/from16 v24, v2

    .line 357
    .line 358
    move-object/from16 v28, v6

    .line 359
    .line 360
    const/16 v19, 0x0

    .line 361
    .line 362
    goto :goto_c

    .line 363
    :goto_d
    iput-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    .line 364
    .line 365
    if-eqz v10, :cond_1b

    .line 366
    .line 367
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-eqz v2, :cond_1a

    .line 372
    .line 373
    goto :goto_e

    .line 374
    :cond_1a
    move/from16 v38, v13

    .line 375
    .line 376
    const/16 v26, 0x2

    .line 377
    .line 378
    goto/16 :goto_49

    .line 379
    .line 380
    :cond_1b
    :goto_e
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 381
    .line 382
    iget-object v12, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 383
    .line 384
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 385
    .line 386
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 387
    .line 388
    iget v6, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 389
    .line 390
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 391
    .line 392
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 393
    .line 394
    aget-object v7, v7, p3

    .line 395
    .line 396
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 397
    .line 398
    if-ne v7, v9, :cond_1c

    .line 399
    .line 400
    const/4 v7, 0x1

    .line 401
    goto :goto_f

    .line 402
    :cond_1c
    const/4 v7, 0x0

    .line 403
    :goto_f
    if-nez p3, :cond_20

    .line 404
    .line 405
    iget v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 406
    .line 407
    if-nez v9, :cond_1d

    .line 408
    .line 409
    const/16 v21, 0x1

    .line 410
    .line 411
    :goto_10
    move/from16 v17, v6

    .line 412
    .line 413
    const/4 v6, 0x1

    .line 414
    goto :goto_11

    .line 415
    :cond_1d
    const/16 v21, 0x0

    .line 416
    .line 417
    goto :goto_10

    .line 418
    :goto_11
    if-ne v9, v6, :cond_1e

    .line 419
    .line 420
    move/from16 v18, v6

    .line 421
    .line 422
    :goto_12
    const/4 v6, 0x2

    .line 423
    goto :goto_13

    .line 424
    :cond_1e
    const/16 v18, 0x0

    .line 425
    .line 426
    goto :goto_12

    .line 427
    :goto_13
    if-ne v9, v6, :cond_1f

    .line 428
    .line 429
    const/4 v9, 0x1

    .line 430
    goto :goto_14

    .line 431
    :cond_1f
    const/4 v9, 0x0

    .line 432
    :goto_14
    move-object v6, v5

    .line 433
    move/from16 v27, v7

    .line 434
    .line 435
    move/from16 v25, v21

    .line 436
    .line 437
    :goto_15
    const/16 v22, 0x0

    .line 438
    .line 439
    goto :goto_1b

    .line 440
    :cond_20
    move/from16 v17, v6

    .line 441
    .line 442
    const/4 v6, 0x2

    .line 443
    iget v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 444
    .line 445
    if-nez v9, :cond_21

    .line 446
    .line 447
    const/16 v22, 0x1

    .line 448
    .line 449
    :goto_16
    const/4 v6, 0x1

    .line 450
    goto :goto_17

    .line 451
    :cond_21
    const/16 v22, 0x0

    .line 452
    .line 453
    goto :goto_16

    .line 454
    :goto_17
    if-ne v9, v6, :cond_22

    .line 455
    .line 456
    const/16 v18, 0x1

    .line 457
    .line 458
    :goto_18
    const/4 v6, 0x2

    .line 459
    goto :goto_19

    .line 460
    :cond_22
    const/16 v18, 0x0

    .line 461
    .line 462
    goto :goto_18

    .line 463
    :goto_19
    if-ne v9, v6, :cond_23

    .line 464
    .line 465
    const/4 v9, 0x1

    .line 466
    goto :goto_1a

    .line 467
    :cond_23
    const/4 v9, 0x0

    .line 468
    :goto_1a
    move-object v6, v5

    .line 469
    move/from16 v27, v7

    .line 470
    .line 471
    move/from16 v25, v22

    .line 472
    .line 473
    goto :goto_15

    .line 474
    :goto_1b
    if-nez v22, :cond_31

    .line 475
    .line 476
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 477
    .line 478
    move-object/from16 v32, v7

    .line 479
    .line 480
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 481
    .line 482
    move-object/from16 v33, v7

    .line 483
    .line 484
    aget-object v7, v32, v15

    .line 485
    .line 486
    if-eqz v9, :cond_24

    .line 487
    .line 488
    const/16 v30, 0x1

    .line 489
    .line 490
    goto :goto_1c

    .line 491
    :cond_24
    const/16 v30, 0x4

    .line 492
    .line 493
    :goto_1c
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 494
    .line 495
    .line 496
    move-result v34

    .line 497
    move-object/from16 v35, v8

    .line 498
    .line 499
    aget-object v8, v33, p3

    .line 500
    .line 501
    move/from16 v36, v9

    .line 502
    .line 503
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 504
    .line 505
    if-ne v8, v9, :cond_25

    .line 506
    .line 507
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 508
    .line 509
    aget v8, v8, p3

    .line 510
    .line 511
    if-nez v8, :cond_25

    .line 512
    .line 513
    const/16 v37, 0x1

    .line 514
    .line 515
    goto :goto_1d

    .line 516
    :cond_25
    const/16 v37, 0x0

    .line 517
    .line 518
    :goto_1d
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 519
    .line 520
    if-eqz v8, :cond_26

    .line 521
    .line 522
    if-eq v6, v5, :cond_26

    .line 523
    .line 524
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 525
    .line 526
    .line 527
    move-result v8

    .line 528
    add-int v34, v8, v34

    .line 529
    .line 530
    :cond_26
    move/from16 v8, v34

    .line 531
    .line 532
    if-eqz v36, :cond_27

    .line 533
    .line 534
    if-eq v6, v5, :cond_27

    .line 535
    .line 536
    if-eq v6, v12, :cond_27

    .line 537
    .line 538
    const/16 v30, 0x8

    .line 539
    .line 540
    :cond_27
    move-object/from16 v34, v5

    .line 541
    .line 542
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 543
    .line 544
    if-eqz v5, :cond_2b

    .line 545
    .line 546
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 547
    .line 548
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 549
    .line 550
    if-ne v6, v12, :cond_28

    .line 551
    .line 552
    move/from16 v38, v13

    .line 553
    .line 554
    const/4 v13, 0x6

    .line 555
    invoke-virtual {v1, v10, v5, v8, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 556
    .line 557
    .line 558
    goto :goto_1e

    .line 559
    :cond_28
    move/from16 v38, v13

    .line 560
    .line 561
    const/16 v13, 0x8

    .line 562
    .line 563
    invoke-virtual {v1, v10, v5, v8, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 564
    .line 565
    .line 566
    :goto_1e
    if-eqz v37, :cond_29

    .line 567
    .line 568
    if-nez v36, :cond_29

    .line 569
    .line 570
    const/16 v30, 0x5

    .line 571
    .line 572
    :cond_29
    if-ne v6, v12, :cond_2a

    .line 573
    .line 574
    if-eqz v36, :cond_2a

    .line 575
    .line 576
    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 577
    .line 578
    aget-boolean v5, v5, p3

    .line 579
    .line 580
    if-eqz v5, :cond_2a

    .line 581
    .line 582
    const/4 v5, 0x5

    .line 583
    goto :goto_1f

    .line 584
    :cond_2a
    move/from16 v5, v30

    .line 585
    .line 586
    :goto_1f
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 587
    .line 588
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 589
    .line 590
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 591
    .line 592
    invoke-virtual {v1, v10, v7, v8, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 593
    .line 594
    .line 595
    goto :goto_20

    .line 596
    :cond_2b
    move/from16 v38, v13

    .line 597
    .line 598
    :goto_20
    if-eqz v27, :cond_2d

    .line 599
    .line 600
    iget v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 601
    .line 602
    const/16 v13, 0x8

    .line 603
    .line 604
    if-eq v5, v13, :cond_2c

    .line 605
    .line 606
    aget-object v5, v33, p3

    .line 607
    .line 608
    if-ne v5, v9, :cond_2c

    .line 609
    .line 610
    add-int/lit8 v5, v15, 0x1

    .line 611
    .line 612
    aget-object v5, v32, v5

    .line 613
    .line 614
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 615
    .line 616
    aget-object v7, v32, v15

    .line 617
    .line 618
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 619
    .line 620
    const/4 v8, 0x0

    .line 621
    const/4 v9, 0x5

    .line 622
    invoke-virtual {v1, v5, v7, v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 623
    .line 624
    .line 625
    goto :goto_21

    .line 626
    :cond_2c
    const/4 v8, 0x0

    .line 627
    :goto_21
    aget-object v5, v32, v15

    .line 628
    .line 629
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 630
    .line 631
    aget-object v7, v35, v15

    .line 632
    .line 633
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 634
    .line 635
    const/16 v13, 0x8

    .line 636
    .line 637
    invoke-virtual {v1, v5, v7, v8, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 638
    .line 639
    .line 640
    :cond_2d
    add-int/lit8 v5, v15, 0x1

    .line 641
    .line 642
    aget-object v5, v32, v5

    .line 643
    .line 644
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 645
    .line 646
    if-eqz v5, :cond_2e

    .line 647
    .line 648
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 649
    .line 650
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 651
    .line 652
    aget-object v7, v7, v15

    .line 653
    .line 654
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 655
    .line 656
    if-eqz v7, :cond_2e

    .line 657
    .line 658
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 659
    .line 660
    if-eq v7, v6, :cond_2f

    .line 661
    .line 662
    :cond_2e
    move-object/from16 v5, v16

    .line 663
    .line 664
    :cond_2f
    if-eqz v5, :cond_30

    .line 665
    .line 666
    move-object v6, v5

    .line 667
    goto :goto_22

    .line 668
    :cond_30
    const/16 v22, 0x1

    .line 669
    .line 670
    :goto_22
    move-object/from16 v10, p2

    .line 671
    .line 672
    move-object/from16 v5, v34

    .line 673
    .line 674
    move-object/from16 v8, v35

    .line 675
    .line 676
    move/from16 v9, v36

    .line 677
    .line 678
    move/from16 v13, v38

    .line 679
    .line 680
    goto/16 :goto_1b

    .line 681
    .line 682
    :cond_31
    move-object/from16 v35, v8

    .line 683
    .line 684
    move/from16 v36, v9

    .line 685
    .line 686
    move/from16 v38, v13

    .line 687
    .line 688
    if-eqz v2, :cond_34

    .line 689
    .line 690
    iget-object v5, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 691
    .line 692
    add-int/lit8 v6, v15, 0x1

    .line 693
    .line 694
    aget-object v5, v5, v6

    .line 695
    .line 696
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 697
    .line 698
    if-eqz v5, :cond_34

    .line 699
    .line 700
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 701
    .line 702
    aget-object v5, v5, v6

    .line 703
    .line 704
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 705
    .line 706
    aget-object v7, v7, p3

    .line 707
    .line 708
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 709
    .line 710
    if-ne v7, v8, :cond_32

    .line 711
    .line 712
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 713
    .line 714
    aget v7, v7, p3

    .line 715
    .line 716
    if-nez v7, :cond_32

    .line 717
    .line 718
    if-nez v36, :cond_32

    .line 719
    .line 720
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 721
    .line 722
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 723
    .line 724
    if-ne v8, v0, :cond_32

    .line 725
    .line 726
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 727
    .line 728
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 729
    .line 730
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 731
    .line 732
    .line 733
    move-result v9

    .line 734
    neg-int v9, v9

    .line 735
    const/4 v10, 0x5

    .line 736
    invoke-virtual {v1, v8, v7, v9, v10}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 737
    .line 738
    .line 739
    goto :goto_23

    .line 740
    :cond_32
    const/4 v10, 0x5

    .line 741
    if-eqz v36, :cond_33

    .line 742
    .line 743
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 744
    .line 745
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 746
    .line 747
    if-ne v8, v0, :cond_33

    .line 748
    .line 749
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 750
    .line 751
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 752
    .line 753
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 754
    .line 755
    .line 756
    move-result v9

    .line 757
    neg-int v9, v9

    .line 758
    const/4 v13, 0x4

    .line 759
    invoke-virtual {v1, v8, v7, v9, v13}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 760
    .line 761
    .line 762
    :cond_33
    :goto_23
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 763
    .line 764
    iget-object v8, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 765
    .line 766
    aget-object v6, v8, v6

    .line 767
    .line 768
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 769
    .line 770
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 771
    .line 772
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 773
    .line 774
    .line 775
    move-result v5

    .line 776
    neg-int v5, v5

    .line 777
    const/4 v13, 0x6

    .line 778
    invoke-virtual {v1, v7, v6, v5, v13}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 779
    .line 780
    .line 781
    goto :goto_24

    .line 782
    :cond_34
    const/4 v10, 0x5

    .line 783
    :goto_24
    if-eqz v27, :cond_35

    .line 784
    .line 785
    add-int/lit8 v5, v15, 0x1

    .line 786
    .line 787
    aget-object v6, v35, v5

    .line 788
    .line 789
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 790
    .line 791
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 792
    .line 793
    aget-object v5, v7, v5

    .line 794
    .line 795
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 796
    .line 797
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 798
    .line 799
    .line 800
    move-result v5

    .line 801
    const/16 v13, 0x8

    .line 802
    .line 803
    invoke-virtual {v1, v6, v7, v5, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 804
    .line 805
    .line 806
    :cond_35
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 807
    .line 808
    if-eqz v5, :cond_3f

    .line 809
    .line 810
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 811
    .line 812
    .line 813
    move-result v6

    .line 814
    const/4 v7, 0x1

    .line 815
    if-le v6, v7, :cond_3f

    .line 816
    .line 817
    iget-boolean v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 818
    .line 819
    if-eqz v8, :cond_36

    .line 820
    .line 821
    iget-boolean v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 822
    .line 823
    if-nez v8, :cond_36

    .line 824
    .line 825
    iget v8, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 826
    .line 827
    int-to-float v8, v8

    .line 828
    move/from16 v17, v8

    .line 829
    .line 830
    :cond_36
    move-object/from16 v9, v16

    .line 831
    .line 832
    move/from16 v13, v19

    .line 833
    .line 834
    const/4 v8, 0x0

    .line 835
    :goto_25
    if-ge v8, v6, :cond_3f

    .line 836
    .line 837
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v21

    .line 841
    move-object/from16 v7, v21

    .line 842
    .line 843
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 844
    .line 845
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 846
    .line 847
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 848
    .line 849
    aget v10, v10, p3

    .line 850
    .line 851
    cmpg-float v21, v10, v19

    .line 852
    .line 853
    move-object/from16 v27, v0

    .line 854
    .line 855
    if-gez v21, :cond_38

    .line 856
    .line 857
    iget-boolean v10, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 858
    .line 859
    if-eqz v10, :cond_37

    .line 860
    .line 861
    add-int/lit8 v0, v15, 0x1

    .line 862
    .line 863
    aget-object v0, v27, v0

    .line 864
    .line 865
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 866
    .line 867
    aget-object v7, v27, v15

    .line 868
    .line 869
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 870
    .line 871
    move-object/from16 v21, v5

    .line 872
    .line 873
    const/4 v5, 0x4

    .line 874
    const/4 v10, 0x0

    .line 875
    invoke-virtual {v1, v0, v7, v10, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 876
    .line 877
    .line 878
    move/from16 v20, v13

    .line 879
    .line 880
    move v13, v10

    .line 881
    goto :goto_26

    .line 882
    :cond_37
    const/high16 v10, 0x3f800000    # 1.0f

    .line 883
    .line 884
    :cond_38
    move-object/from16 v21, v5

    .line 885
    .line 886
    const/4 v5, 0x4

    .line 887
    cmpl-float v29, v10, v19

    .line 888
    .line 889
    if-nez v29, :cond_39

    .line 890
    .line 891
    add-int/lit8 v0, v15, 0x1

    .line 892
    .line 893
    aget-object v0, v27, v0

    .line 894
    .line 895
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 896
    .line 897
    aget-object v7, v27, v15

    .line 898
    .line 899
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 900
    .line 901
    move/from16 v20, v13

    .line 902
    .line 903
    const/16 v10, 0x8

    .line 904
    .line 905
    const/4 v13, 0x0

    .line 906
    invoke-virtual {v1, v0, v7, v13, v10}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 907
    .line 908
    .line 909
    :goto_26
    move/from16 v27, v6

    .line 910
    .line 911
    move/from16 v35, v19

    .line 912
    .line 913
    move/from16 v13, v20

    .line 914
    .line 915
    move/from16 v19, v8

    .line 916
    .line 917
    goto/16 :goto_2a

    .line 918
    .line 919
    :cond_39
    move/from16 v20, v13

    .line 920
    .line 921
    const/4 v13, 0x0

    .line 922
    if-eqz v9, :cond_3e

    .line 923
    .line 924
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 925
    .line 926
    aget-object v5, v9, v15

    .line 927
    .line 928
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 929
    .line 930
    add-int/lit8 v32, v15, 0x1

    .line 931
    .line 932
    aget-object v9, v9, v32

    .line 933
    .line 934
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 935
    .line 936
    aget-object v13, v27, v15

    .line 937
    .line 938
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 939
    .line 940
    aget-object v0, v27, v32

    .line 941
    .line 942
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 943
    .line 944
    move/from16 v27, v6

    .line 945
    .line 946
    invoke-virtual {v1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 947
    .line 948
    .line 949
    move-result-object v6

    .line 950
    move-object/from16 v32, v7

    .line 951
    .line 952
    move/from16 v7, v19

    .line 953
    .line 954
    iput v7, v6, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 955
    .line 956
    cmpl-float v19, v17, v7

    .line 957
    .line 958
    move/from16 v35, v7

    .line 959
    .line 960
    if-eqz v19, :cond_3a

    .line 961
    .line 962
    cmpl-float v19, v20, v10

    .line 963
    .line 964
    if-nez v19, :cond_3b

    .line 965
    .line 966
    :cond_3a
    move/from16 v19, v8

    .line 967
    .line 968
    move/from16 v34, v10

    .line 969
    .line 970
    const/high16 v7, -0x40800000    # -1.0f

    .line 971
    .line 972
    const/high16 v8, 0x3f800000    # 1.0f

    .line 973
    .line 974
    goto :goto_27

    .line 975
    :cond_3b
    cmpl-float v19, v20, v35

    .line 976
    .line 977
    iget-object v7, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 978
    .line 979
    if-nez v19, :cond_3c

    .line 980
    .line 981
    move/from16 v19, v8

    .line 982
    .line 983
    const/high16 v8, 0x3f800000    # 1.0f

    .line 984
    .line 985
    invoke-virtual {v7, v5, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 986
    .line 987
    .line 988
    iget-object v0, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 989
    .line 990
    const/high16 v5, -0x40800000    # -1.0f

    .line 991
    .line 992
    invoke-virtual {v0, v9, v5}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 993
    .line 994
    .line 995
    move/from16 v34, v10

    .line 996
    .line 997
    goto :goto_28

    .line 998
    :cond_3c
    move/from16 v19, v8

    .line 999
    .line 1000
    move/from16 v34, v10

    .line 1001
    .line 1002
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1003
    .line 1004
    const/high16 v10, -0x40800000    # -1.0f

    .line 1005
    .line 1006
    if-nez v29, :cond_3d

    .line 1007
    .line 1008
    invoke-virtual {v7, v13, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1009
    .line 1010
    .line 1011
    iget-object v5, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1012
    .line 1013
    invoke-virtual {v5, v0, v10}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_28

    .line 1017
    :cond_3d
    div-float v20, v20, v17

    .line 1018
    .line 1019
    div-float v29, v34, v17

    .line 1020
    .line 1021
    div-float v10, v20, v29

    .line 1022
    .line 1023
    invoke-virtual {v7, v5, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1024
    .line 1025
    .line 1026
    iget-object v5, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1027
    .line 1028
    const/high16 v7, -0x40800000    # -1.0f

    .line 1029
    .line 1030
    invoke-virtual {v5, v9, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v5, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1034
    .line 1035
    invoke-virtual {v5, v0, v10}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1036
    .line 1037
    .line 1038
    iget-object v0, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1039
    .line 1040
    neg-float v5, v10

    .line 1041
    invoke-virtual {v0, v13, v5}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1042
    .line 1043
    .line 1044
    goto :goto_28

    .line 1045
    :goto_27
    iget-object v10, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1046
    .line 1047
    invoke-virtual {v10, v5, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1048
    .line 1049
    .line 1050
    iget-object v5, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1051
    .line 1052
    invoke-virtual {v5, v9, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1053
    .line 1054
    .line 1055
    iget-object v5, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1056
    .line 1057
    invoke-virtual {v5, v0, v8}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1058
    .line 1059
    .line 1060
    iget-object v0, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    .line 1061
    .line 1062
    invoke-virtual {v0, v13, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1063
    .line 1064
    .line 1065
    :goto_28
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 1066
    .line 1067
    .line 1068
    goto :goto_29

    .line 1069
    :cond_3e
    move/from16 v27, v6

    .line 1070
    .line 1071
    move-object/from16 v32, v7

    .line 1072
    .line 1073
    move/from16 v34, v10

    .line 1074
    .line 1075
    move/from16 v35, v19

    .line 1076
    .line 1077
    move/from16 v19, v8

    .line 1078
    .line 1079
    :goto_29
    move-object/from16 v9, v32

    .line 1080
    .line 1081
    move/from16 v13, v34

    .line 1082
    .line 1083
    :goto_2a
    add-int/lit8 v8, v19, 0x1

    .line 1084
    .line 1085
    move-object/from16 v5, v21

    .line 1086
    .line 1087
    move/from16 v6, v27

    .line 1088
    .line 1089
    move/from16 v19, v35

    .line 1090
    .line 1091
    const/4 v7, 0x1

    .line 1092
    const/4 v10, 0x5

    .line 1093
    move-object/from16 v0, p0

    .line 1094
    .line 1095
    goto/16 :goto_25

    .line 1096
    .line 1097
    :cond_3f
    if-eqz v12, :cond_40

    .line 1098
    .line 1099
    if-eq v12, v2, :cond_41

    .line 1100
    .line 1101
    if-eqz v36, :cond_40

    .line 1102
    .line 1103
    goto :goto_2b

    .line 1104
    :cond_40
    move-object v0, v2

    .line 1105
    const/16 v26, 0x2

    .line 1106
    .line 1107
    goto :goto_31

    .line 1108
    :cond_41
    :goto_2b
    aget-object v0, v28, v15

    .line 1109
    .line 1110
    iget-object v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1111
    .line 1112
    add-int/lit8 v5, v15, 0x1

    .line 1113
    .line 1114
    aget-object v3, v3, v5

    .line 1115
    .line 1116
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1117
    .line 1118
    if-eqz v0, :cond_42

    .line 1119
    .line 1120
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1121
    .line 1122
    goto :goto_2c

    .line 1123
    :cond_42
    move-object/from16 v0, v16

    .line 1124
    .line 1125
    :goto_2c
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1126
    .line 1127
    if-eqz v6, :cond_43

    .line 1128
    .line 1129
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1130
    .line 1131
    goto :goto_2d

    .line 1132
    :cond_43
    move-object/from16 v6, v16

    .line 1133
    .line 1134
    :goto_2d
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1135
    .line 1136
    aget-object v7, v7, v15

    .line 1137
    .line 1138
    if-eqz v2, :cond_44

    .line 1139
    .line 1140
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1141
    .line 1142
    aget-object v3, v3, v5

    .line 1143
    .line 1144
    :cond_44
    if-eqz v0, :cond_46

    .line 1145
    .line 1146
    if-eqz v6, :cond_46

    .line 1147
    .line 1148
    if-nez p3, :cond_45

    .line 1149
    .line 1150
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1151
    .line 1152
    :goto_2e
    move v5, v4

    .line 1153
    goto :goto_2f

    .line 1154
    :cond_45
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1155
    .line 1156
    goto :goto_2e

    .line 1157
    :goto_2f
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1158
    .line 1159
    .line 1160
    move-result v4

    .line 1161
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1162
    .line 1163
    .line 1164
    move-result v8

    .line 1165
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1166
    .line 1167
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1168
    .line 1169
    const/4 v9, 0x7

    .line 1170
    move-object/from16 v26, v3

    .line 1171
    .line 1172
    move-object v3, v0

    .line 1173
    move-object v0, v2

    .line 1174
    move-object v2, v7

    .line 1175
    move-object/from16 v7, v26

    .line 1176
    .line 1177
    const/16 v26, 0x2

    .line 1178
    .line 1179
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1180
    .line 1181
    .line 1182
    goto :goto_30

    .line 1183
    :cond_46
    move-object v0, v2

    .line 1184
    const/16 v26, 0x2

    .line 1185
    .line 1186
    :cond_47
    :goto_30
    move-object/from16 v1, p1

    .line 1187
    .line 1188
    goto/16 :goto_46

    .line 1189
    .line 1190
    :goto_31
    if-eqz v25, :cond_59

    .line 1191
    .line 1192
    if-eqz v12, :cond_59

    .line 1193
    .line 1194
    iget v1, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 1195
    .line 1196
    if-lez v1, :cond_48

    .line 1197
    .line 1198
    iget v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 1199
    .line 1200
    if-ne v2, v1, :cond_48

    .line 1201
    .line 1202
    const/16 v22, 0x1

    .line 1203
    .line 1204
    goto :goto_32

    .line 1205
    :cond_48
    const/16 v22, 0x0

    .line 1206
    .line 1207
    :goto_32
    move-object v10, v12

    .line 1208
    move-object v13, v10

    .line 1209
    :goto_33
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1210
    .line 1211
    if-eqz v10, :cond_47

    .line 1212
    .line 1213
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1214
    .line 1215
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1216
    .line 1217
    aget-object v3, v3, p3

    .line 1218
    .line 1219
    :goto_34
    if-eqz v3, :cond_49

    .line 1220
    .line 1221
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1222
    .line 1223
    const/16 v6, 0x8

    .line 1224
    .line 1225
    if-ne v4, v6, :cond_4a

    .line 1226
    .line 1227
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1228
    .line 1229
    aget-object v3, v3, p3

    .line 1230
    .line 1231
    goto :goto_34

    .line 1232
    :cond_49
    const/16 v6, 0x8

    .line 1233
    .line 1234
    :cond_4a
    if-nez v3, :cond_4c

    .line 1235
    .line 1236
    if-ne v10, v0, :cond_4b

    .line 1237
    .line 1238
    goto :goto_35

    .line 1239
    :cond_4b
    move-object/from16 v17, v3

    .line 1240
    .line 1241
    move-object/from16 v19, v13

    .line 1242
    .line 1243
    const/16 v31, 0x5

    .line 1244
    .line 1245
    move v13, v6

    .line 1246
    goto/16 :goto_3c

    .line 1247
    .line 1248
    :cond_4c
    :goto_35
    aget-object v4, v2, v15

    .line 1249
    .line 1250
    move-object v5, v2

    .line 1251
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1252
    .line 1253
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1254
    .line 1255
    if-eqz v7, :cond_4d

    .line 1256
    .line 1257
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1258
    .line 1259
    goto :goto_36

    .line 1260
    :cond_4d
    move-object/from16 v7, v16

    .line 1261
    .line 1262
    :goto_36
    if-eq v13, v10, :cond_4e

    .line 1263
    .line 1264
    add-int/lit8 v7, v15, 0x1

    .line 1265
    .line 1266
    aget-object v7, v1, v7

    .line 1267
    .line 1268
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1269
    .line 1270
    goto :goto_37

    .line 1271
    :cond_4e
    if-ne v10, v12, :cond_50

    .line 1272
    .line 1273
    aget-object v7, v28, v15

    .line 1274
    .line 1275
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1276
    .line 1277
    if-eqz v7, :cond_4f

    .line 1278
    .line 1279
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1280
    .line 1281
    goto :goto_37

    .line 1282
    :cond_4f
    move-object/from16 v7, v16

    .line 1283
    .line 1284
    :cond_50
    :goto_37
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1285
    .line 1286
    .line 1287
    move-result v4

    .line 1288
    add-int/lit8 v8, v15, 0x1

    .line 1289
    .line 1290
    aget-object v9, v5, v8

    .line 1291
    .line 1292
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1293
    .line 1294
    .line 1295
    move-result v9

    .line 1296
    if-eqz v3, :cond_51

    .line 1297
    .line 1298
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1299
    .line 1300
    aget-object v6, v6, v15

    .line 1301
    .line 1302
    move-object/from16 v17, v1

    .line 1303
    .line 1304
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1305
    .line 1306
    :goto_38
    move-object/from16 v39, v6

    .line 1307
    .line 1308
    move-object v6, v1

    .line 1309
    move-object/from16 v1, v39

    .line 1310
    .line 1311
    goto :goto_39

    .line 1312
    :cond_51
    move-object/from16 v17, v1

    .line 1313
    .line 1314
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1315
    .line 1316
    aget-object v1, v1, v8

    .line 1317
    .line 1318
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1319
    .line 1320
    if-eqz v6, :cond_52

    .line 1321
    .line 1322
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1323
    .line 1324
    goto :goto_38

    .line 1325
    :cond_52
    move-object v1, v6

    .line 1326
    move-object/from16 v6, v16

    .line 1327
    .line 1328
    :goto_39
    aget-object v5, v5, v8

    .line 1329
    .line 1330
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1331
    .line 1332
    if-eqz v1, :cond_53

    .line 1333
    .line 1334
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1335
    .line 1336
    .line 1337
    move-result v1

    .line 1338
    add-int/2addr v9, v1

    .line 1339
    :cond_53
    aget-object v1, v17, v8

    .line 1340
    .line 1341
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1342
    .line 1343
    .line 1344
    move-result v1

    .line 1345
    add-int/2addr v1, v4

    .line 1346
    if-eqz v2, :cond_57

    .line 1347
    .line 1348
    if-eqz v7, :cond_57

    .line 1349
    .line 1350
    if-eqz v6, :cond_57

    .line 1351
    .line 1352
    if-eqz v5, :cond_57

    .line 1353
    .line 1354
    if-ne v10, v12, :cond_54

    .line 1355
    .line 1356
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1357
    .line 1358
    aget-object v1, v1, v15

    .line 1359
    .line 1360
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1361
    .line 1362
    .line 1363
    move-result v1

    .line 1364
    :cond_54
    move v4, v1

    .line 1365
    if-ne v10, v0, :cond_55

    .line 1366
    .line 1367
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1368
    .line 1369
    aget-object v1, v1, v8

    .line 1370
    .line 1371
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1372
    .line 1373
    .line 1374
    move-result v9

    .line 1375
    :cond_55
    move v8, v9

    .line 1376
    if-eqz v22, :cond_56

    .line 1377
    .line 1378
    const/16 v9, 0x8

    .line 1379
    .line 1380
    :goto_3a
    move-object v1, v3

    .line 1381
    move-object v3, v7

    .line 1382
    move-object v7, v5

    .line 1383
    goto :goto_3b

    .line 1384
    :cond_56
    const/4 v9, 0x5

    .line 1385
    goto :goto_3a

    .line 1386
    :goto_3b
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1387
    .line 1388
    move-object/from16 v17, v1

    .line 1389
    .line 1390
    move-object/from16 v19, v13

    .line 1391
    .line 1392
    const/16 v13, 0x8

    .line 1393
    .line 1394
    const/16 v31, 0x5

    .line 1395
    .line 1396
    move-object/from16 v1, p1

    .line 1397
    .line 1398
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1399
    .line 1400
    .line 1401
    goto :goto_3c

    .line 1402
    :cond_57
    move-object/from16 v17, v3

    .line 1403
    .line 1404
    move-object/from16 v19, v13

    .line 1405
    .line 1406
    const/16 v13, 0x8

    .line 1407
    .line 1408
    const/16 v31, 0x5

    .line 1409
    .line 1410
    :goto_3c
    iget v1, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1411
    .line 1412
    if-eq v1, v13, :cond_58

    .line 1413
    .line 1414
    move-object/from16 v19, v10

    .line 1415
    .line 1416
    :cond_58
    move-object/from16 v10, v17

    .line 1417
    .line 1418
    move-object/from16 v13, v19

    .line 1419
    .line 1420
    goto/16 :goto_33

    .line 1421
    .line 1422
    :cond_59
    const/16 v13, 0x8

    .line 1423
    .line 1424
    if-eqz v18, :cond_47

    .line 1425
    .line 1426
    if-eqz v12, :cond_47

    .line 1427
    .line 1428
    iget v1, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 1429
    .line 1430
    if-lez v1, :cond_5a

    .line 1431
    .line 1432
    iget v2, v3, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 1433
    .line 1434
    if-ne v2, v1, :cond_5a

    .line 1435
    .line 1436
    const/16 v22, 0x1

    .line 1437
    .line 1438
    goto :goto_3d

    .line 1439
    :cond_5a
    const/16 v22, 0x0

    .line 1440
    .line 1441
    :goto_3d
    move-object v1, v12

    .line 1442
    move-object v10, v1

    .line 1443
    :goto_3e
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1444
    .line 1445
    if-eqz v10, :cond_65

    .line 1446
    .line 1447
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1448
    .line 1449
    iget-object v4, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1450
    .line 1451
    aget-object v4, v4, p3

    .line 1452
    .line 1453
    :goto_3f
    if-eqz v4, :cond_5b

    .line 1454
    .line 1455
    iget v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1456
    .line 1457
    if-ne v5, v13, :cond_5b

    .line 1458
    .line 1459
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1460
    .line 1461
    aget-object v4, v4, p3

    .line 1462
    .line 1463
    goto :goto_3f

    .line 1464
    :cond_5b
    if-eq v10, v12, :cond_63

    .line 1465
    .line 1466
    if-eq v10, v0, :cond_63

    .line 1467
    .line 1468
    if-eqz v4, :cond_63

    .line 1469
    .line 1470
    if-ne v4, v0, :cond_5c

    .line 1471
    .line 1472
    move-object/from16 v4, v16

    .line 1473
    .line 1474
    :cond_5c
    aget-object v5, v3, v15

    .line 1475
    .line 1476
    move-object v6, v2

    .line 1477
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1478
    .line 1479
    add-int/lit8 v7, v15, 0x1

    .line 1480
    .line 1481
    aget-object v8, v6, v7

    .line 1482
    .line 1483
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1484
    .line 1485
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1486
    .line 1487
    .line 1488
    move-result v5

    .line 1489
    aget-object v9, v3, v7

    .line 1490
    .line 1491
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1492
    .line 1493
    .line 1494
    move-result v9

    .line 1495
    if-eqz v4, :cond_5e

    .line 1496
    .line 1497
    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1498
    .line 1499
    aget-object v3, v3, v15

    .line 1500
    .line 1501
    iget-object v13, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1502
    .line 1503
    move-object/from16 v17, v1

    .line 1504
    .line 1505
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1506
    .line 1507
    if-eqz v1, :cond_5d

    .line 1508
    .line 1509
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1510
    .line 1511
    goto :goto_41

    .line 1512
    :cond_5d
    move-object/from16 v1, v16

    .line 1513
    .line 1514
    goto :goto_41

    .line 1515
    :cond_5e
    move-object/from16 v17, v1

    .line 1516
    .line 1517
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1518
    .line 1519
    aget-object v1, v1, v15

    .line 1520
    .line 1521
    if-eqz v1, :cond_5f

    .line 1522
    .line 1523
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1524
    .line 1525
    goto :goto_40

    .line 1526
    :cond_5f
    move-object/from16 v13, v16

    .line 1527
    .line 1528
    :goto_40
    aget-object v3, v3, v7

    .line 1529
    .line 1530
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1531
    .line 1532
    move-object/from16 v39, v3

    .line 1533
    .line 1534
    move-object v3, v1

    .line 1535
    move-object/from16 v1, v39

    .line 1536
    .line 1537
    :goto_41
    if-eqz v3, :cond_60

    .line 1538
    .line 1539
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1540
    .line 1541
    .line 1542
    move-result v3

    .line 1543
    add-int/2addr v9, v3

    .line 1544
    :cond_60
    aget-object v3, v6, v7

    .line 1545
    .line 1546
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1547
    .line 1548
    .line 1549
    move-result v3

    .line 1550
    add-int/2addr v3, v5

    .line 1551
    if-eqz v22, :cond_61

    .line 1552
    .line 1553
    const/16 v7, 0x8

    .line 1554
    .line 1555
    goto :goto_42

    .line 1556
    :cond_61
    const/4 v7, 0x4

    .line 1557
    :goto_42
    if-eqz v2, :cond_62

    .line 1558
    .line 1559
    if-eqz v8, :cond_62

    .line 1560
    .line 1561
    if-eqz v13, :cond_62

    .line 1562
    .line 1563
    if-eqz v1, :cond_62

    .line 1564
    .line 1565
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1566
    .line 1567
    move-object v6, v13

    .line 1568
    const/16 v30, 0x4

    .line 1569
    .line 1570
    move-object v13, v4

    .line 1571
    move v4, v3

    .line 1572
    move-object v3, v8

    .line 1573
    move v8, v9

    .line 1574
    move v9, v7

    .line 1575
    move-object v7, v1

    .line 1576
    move-object/from16 v1, p1

    .line 1577
    .line 1578
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1579
    .line 1580
    .line 1581
    goto :goto_43

    .line 1582
    :cond_62
    move-object/from16 v1, p1

    .line 1583
    .line 1584
    move-object v13, v4

    .line 1585
    const/16 v30, 0x4

    .line 1586
    .line 1587
    :goto_43
    move-object v4, v13

    .line 1588
    goto :goto_44

    .line 1589
    :cond_63
    move-object/from16 v17, v1

    .line 1590
    .line 1591
    const/16 v30, 0x4

    .line 1592
    .line 1593
    move-object/from16 v1, p1

    .line 1594
    .line 1595
    :goto_44
    iget v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1596
    .line 1597
    const/16 v13, 0x8

    .line 1598
    .line 1599
    if-eq v2, v13, :cond_64

    .line 1600
    .line 1601
    move-object/from16 v17, v10

    .line 1602
    .line 1603
    :cond_64
    move-object v10, v4

    .line 1604
    move-object/from16 v1, v17

    .line 1605
    .line 1606
    goto/16 :goto_3e

    .line 1607
    .line 1608
    :cond_65
    move-object/from16 v1, p1

    .line 1609
    .line 1610
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1611
    .line 1612
    aget-object v2, v2, v15

    .line 1613
    .line 1614
    aget-object v3, v28, v15

    .line 1615
    .line 1616
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1617
    .line 1618
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1619
    .line 1620
    add-int/lit8 v5, v15, 0x1

    .line 1621
    .line 1622
    aget-object v10, v4, v5

    .line 1623
    .line 1624
    iget-object v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1625
    .line 1626
    aget-object v4, v4, v5

    .line 1627
    .line 1628
    iget-object v13, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1629
    .line 1630
    const/4 v9, 0x5

    .line 1631
    if-eqz v3, :cond_67

    .line 1632
    .line 1633
    if-eq v12, v0, :cond_66

    .line 1634
    .line 1635
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1636
    .line 1637
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1638
    .line 1639
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1640
    .line 1641
    .line 1642
    move-result v2

    .line 1643
    invoke-virtual {v1, v4, v3, v2, v9}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1644
    .line 1645
    .line 1646
    goto :goto_45

    .line 1647
    :cond_66
    if-eqz v13, :cond_67

    .line 1648
    .line 1649
    move-object v4, v2

    .line 1650
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1651
    .line 1652
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1653
    .line 1654
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1655
    .line 1656
    .line 1657
    move-result v4

    .line 1658
    iget-object v6, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1659
    .line 1660
    iget-object v7, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1661
    .line 1662
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1663
    .line 1664
    .line 1665
    move-result v8

    .line 1666
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1667
    .line 1668
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1669
    .line 1670
    .line 1671
    :cond_67
    :goto_45
    if-eqz v13, :cond_68

    .line 1672
    .line 1673
    if-eq v12, v0, :cond_68

    .line 1674
    .line 1675
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1676
    .line 1677
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1678
    .line 1679
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1680
    .line 1681
    .line 1682
    move-result v4

    .line 1683
    neg-int v4, v4

    .line 1684
    invoke-virtual {v1, v2, v3, v4, v9}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1685
    .line 1686
    .line 1687
    :cond_68
    :goto_46
    if-nez v25, :cond_69

    .line 1688
    .line 1689
    if-eqz v18, :cond_70

    .line 1690
    .line 1691
    :cond_69
    if-eqz v12, :cond_70

    .line 1692
    .line 1693
    if-eq v12, v0, :cond_70

    .line 1694
    .line 1695
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1696
    .line 1697
    aget-object v3, v2, v15

    .line 1698
    .line 1699
    if-nez v0, :cond_6a

    .line 1700
    .line 1701
    move-object v0, v12

    .line 1702
    :cond_6a
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1703
    .line 1704
    add-int/lit8 v5, v15, 0x1

    .line 1705
    .line 1706
    aget-object v6, v4, v5

    .line 1707
    .line 1708
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1709
    .line 1710
    if-eqz v7, :cond_6b

    .line 1711
    .line 1712
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1713
    .line 1714
    goto :goto_47

    .line 1715
    :cond_6b
    move-object/from16 v7, v16

    .line 1716
    .line 1717
    :goto_47
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1718
    .line 1719
    if-eqz v8, :cond_6c

    .line 1720
    .line 1721
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1722
    .line 1723
    goto :goto_48

    .line 1724
    :cond_6c
    move-object/from16 v8, v16

    .line 1725
    .line 1726
    :goto_48
    if-eq v11, v0, :cond_6e

    .line 1727
    .line 1728
    iget-object v8, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1729
    .line 1730
    aget-object v8, v8, v5

    .line 1731
    .line 1732
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1733
    .line 1734
    if-eqz v8, :cond_6d

    .line 1735
    .line 1736
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1737
    .line 1738
    move-object/from16 v16, v8

    .line 1739
    .line 1740
    :cond_6d
    move-object/from16 v8, v16

    .line 1741
    .line 1742
    :cond_6e
    if-ne v12, v0, :cond_6f

    .line 1743
    .line 1744
    aget-object v6, v2, v5

    .line 1745
    .line 1746
    :cond_6f
    if-eqz v7, :cond_70

    .line 1747
    .line 1748
    if-eqz v8, :cond_70

    .line 1749
    .line 1750
    move-object v0, v4

    .line 1751
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1752
    .line 1753
    .line 1754
    move-result v4

    .line 1755
    aget-object v0, v0, v5

    .line 1756
    .line 1757
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1758
    .line 1759
    .line 1760
    move-result v0

    .line 1761
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1762
    .line 1763
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1764
    .line 1765
    const/4 v9, 0x5

    .line 1766
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1767
    .line 1768
    move-object v6, v7

    .line 1769
    move-object v7, v3

    .line 1770
    move-object v3, v6

    .line 1771
    move-object v6, v8

    .line 1772
    move v8, v0

    .line 1773
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1774
    .line 1775
    .line 1776
    :cond_70
    :goto_49
    add-int/lit8 v2, v24, 0x1

    .line 1777
    .line 1778
    move-object/from16 v0, p0

    .line 1779
    .line 1780
    move-object/from16 v1, p1

    .line 1781
    .line 1782
    move-object/from16 v10, p2

    .line 1783
    .line 1784
    move/from16 v13, v38

    .line 1785
    .line 1786
    goto/16 :goto_2

    .line 1787
    .line 1788
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
    iget-object v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    aget-object v8, v0, v7

    .line 22
    .line 23
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 24
    .line 25
    const/4 v10, 0x2

    .line 26
    if-eq v8, v9, :cond_0

    .line 27
    .line 28
    aget-object v7, v2, v7

    .line 29
    .line 30
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    .line 32
    if-ne v7, v8, :cond_0

    .line 33
    .line 34
    iget v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    iget v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 41
    .line 42
    sub-int/2addr v8, v11

    .line 43
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    iput-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    .line 49
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    iput-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 54
    .line 55
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 56
    .line 57
    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 58
    .line 59
    .line 60
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 61
    .line 62
    invoke-virtual {p1, v5, v8}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 63
    .line 64
    .line 65
    iput v10, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 66
    .line 67
    iput v7, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 68
    .line 69
    sub-int/2addr v8, v7

    .line 70
    iput v8, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 71
    .line 72
    iget v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 73
    .line 74
    if-ge v8, v5, :cond_0

    .line 75
    .line 76
    iput v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 77
    .line 78
    :cond_0
    const/4 v5, 0x1

    .line 79
    aget-object v0, v0, v5

    .line 80
    .line 81
    if-eq v0, v9, :cond_3

    .line 82
    .line 83
    aget-object v0, v2, v5

    .line 84
    .line 85
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 86
    .line 87
    if-ne v0, v2, :cond_3

    .line 88
    .line 89
    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    iget v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 96
    .line 97
    sub-int/2addr p0, v2

    .line 98
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iput-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 103
    .line 104
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iput-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 109
    .line 110
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 111
    .line 112
    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 116
    .line 117
    invoke-virtual {p1, v2, p0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 118
    .line 119
    .line 120
    iget v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 121
    .line 122
    if-gtz v2, :cond_1

    .line 123
    .line 124
    iget v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 125
    .line 126
    const/16 v3, 0x8

    .line 127
    .line 128
    if-ne v2, v3, :cond_2

    .line 129
    .line 130
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 135
    .line 136
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 137
    .line 138
    add-int/2addr v1, v0

    .line 139
    invoke-virtual {p1, v2, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 140
    .line 141
    .line 142
    :cond_2
    iput v10, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 143
    .line 144
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 145
    .line 146
    sub-int/2addr p0, v0

    .line 147
    iput p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 148
    .line 149
    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 150
    .line 151
    if-ge p0, p1, :cond_3

    .line 152
    .line 153
    iput p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 154
    .line 155
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
