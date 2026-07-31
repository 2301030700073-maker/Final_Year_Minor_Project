.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public mFlow:Landroidx/constraintlayout/core/widgets/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final init(Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    .line 11
    .line 12
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 13
    .line 14
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingStart:I

    .line 15
    .line 16
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingEnd:I

    .line 17
    .line 18
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    .line 19
    .line 20
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 21
    .line 22
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mNeedsCallFromSolver:Z

    .line 23
    .line 24
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredWidth:I

    .line 25
    .line 26
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredHeight:I

    .line 27
    .line 28
    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 37
    .line 38
    const/4 v3, -0x1

    .line 39
    iput v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 40
    .line 41
    iput v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 42
    .line 43
    iput v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 44
    .line 45
    iput v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 46
    .line 47
    iput v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 48
    .line 49
    iput v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 50
    .line 51
    const/high16 v4, 0x3f000000    # 0.5f

    .line 52
    .line 53
    iput v4, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 54
    .line 55
    iput v4, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 56
    .line 57
    iput v4, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 58
    .line 59
    iput v4, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 60
    .line 61
    iput v4, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 62
    .line 63
    iput v4, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 64
    .line 65
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 66
    .line 67
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 68
    .line 69
    const/4 v5, 0x2

    .line 70
    iput v5, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 71
    .line 72
    iput v5, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 73
    .line 74
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 75
    .line 76
    iput v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 77
    .line 78
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 79
    .line 80
    new-instance v6, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 86
    .line 87
    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 88
    .line 89
    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 90
    .line 91
    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 92
    .line 93
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 94
    .line 95
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 96
    .line 97
    if-eqz p1, :cond_1b

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    .line 104
    .line 105
    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    move v2, v1

    .line 114
    :goto_0
    if-ge v2, v0, :cond_1a

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_0

    .line 121
    .line 122
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 123
    .line 124
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_0
    const/4 v7, 0x1

    .line 133
    if-ne v6, v7, :cond_1

    .line 134
    .line 135
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 136
    .line 137
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    .line 142
    .line 143
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 144
    .line 145
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingStart:I

    .line 146
    .line 147
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingEnd:I

    .line 148
    .line 149
    goto/16 :goto_1

    .line 150
    .line 151
    :cond_1
    const/16 v7, 0x12

    .line 152
    .line 153
    if-ne v6, v7, :cond_2

    .line 154
    .line 155
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 156
    .line 157
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingStart:I

    .line 162
    .line 163
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    .line 164
    .line 165
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :cond_2
    const/16 v7, 0x13

    .line 170
    .line 171
    if-ne v6, v7, :cond_3

    .line 172
    .line 173
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 174
    .line 175
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingEnd:I

    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :cond_3
    if-ne v6, v5, :cond_4

    .line 184
    .line 185
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 186
    .line 187
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :cond_4
    const/4 v7, 0x3

    .line 196
    if-ne v6, v7, :cond_5

    .line 197
    .line 198
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 199
    .line 200
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    .line 205
    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :cond_5
    const/4 v7, 0x4

    .line 209
    if-ne v6, v7, :cond_6

    .line 210
    .line 211
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 212
    .line 213
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 218
    .line 219
    goto/16 :goto_1

    .line 220
    .line 221
    :cond_6
    const/4 v7, 0x5

    .line 222
    if-ne v6, v7, :cond_7

    .line 223
    .line 224
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 225
    .line 226
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_7
    const/16 v7, 0x36

    .line 235
    .line 236
    if-ne v6, v7, :cond_8

    .line 237
    .line 238
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 239
    .line 240
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 245
    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :cond_8
    const/16 v7, 0x2c

    .line 249
    .line 250
    if-ne v6, v7, :cond_9

    .line 251
    .line 252
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 253
    .line 254
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_9
    const/16 v7, 0x35

    .line 263
    .line 264
    if-ne v6, v7, :cond_a

    .line 265
    .line 266
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 267
    .line 268
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_a
    const/16 v7, 0x26

    .line 277
    .line 278
    if-ne v6, v7, :cond_b

    .line 279
    .line 280
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 281
    .line 282
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 287
    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :cond_b
    const/16 v7, 0x2e

    .line 291
    .line 292
    if-ne v6, v7, :cond_c

    .line 293
    .line 294
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 295
    .line 296
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 301
    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :cond_c
    const/16 v7, 0x28

    .line 305
    .line 306
    if-ne v6, v7, :cond_d

    .line 307
    .line 308
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 309
    .line 310
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 315
    .line 316
    goto/16 :goto_1

    .line 317
    .line 318
    :cond_d
    const/16 v7, 0x30

    .line 319
    .line 320
    if-ne v6, v7, :cond_e

    .line 321
    .line 322
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 323
    .line 324
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :cond_e
    const/16 v7, 0x2a

    .line 333
    .line 334
    if-ne v6, v7, :cond_f

    .line 335
    .line 336
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 337
    .line 338
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_f
    const/16 v7, 0x25

    .line 347
    .line 348
    if-ne v6, v7, :cond_10

    .line 349
    .line 350
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 351
    .line 352
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 357
    .line 358
    goto/16 :goto_1

    .line 359
    .line 360
    :cond_10
    const/16 v7, 0x2d

    .line 361
    .line 362
    if-ne v6, v7, :cond_11

    .line 363
    .line 364
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 365
    .line 366
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 371
    .line 372
    goto/16 :goto_1

    .line 373
    .line 374
    :cond_11
    const/16 v7, 0x27

    .line 375
    .line 376
    if-ne v6, v7, :cond_12

    .line 377
    .line 378
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 379
    .line 380
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_12
    const/16 v7, 0x2f

    .line 388
    .line 389
    if-ne v6, v7, :cond_13

    .line 390
    .line 391
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 392
    .line 393
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 398
    .line 399
    goto :goto_1

    .line 400
    :cond_13
    const/16 v7, 0x33

    .line 401
    .line 402
    if-ne v6, v7, :cond_14

    .line 403
    .line 404
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 405
    .line 406
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 411
    .line 412
    goto :goto_1

    .line 413
    :cond_14
    const/16 v7, 0x29

    .line 414
    .line 415
    if-ne v6, v7, :cond_15

    .line 416
    .line 417
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 418
    .line 419
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 424
    .line 425
    goto :goto_1

    .line 426
    :cond_15
    const/16 v7, 0x32

    .line 427
    .line 428
    if-ne v6, v7, :cond_16

    .line 429
    .line 430
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 431
    .line 432
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 437
    .line 438
    goto :goto_1

    .line 439
    :cond_16
    const/16 v7, 0x2b

    .line 440
    .line 441
    if-ne v6, v7, :cond_17

    .line 442
    .line 443
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 444
    .line 445
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 450
    .line 451
    goto :goto_1

    .line 452
    :cond_17
    const/16 v7, 0x34

    .line 453
    .line 454
    if-ne v6, v7, :cond_18

    .line 455
    .line 456
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 457
    .line 458
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 463
    .line 464
    goto :goto_1

    .line 465
    :cond_18
    const/16 v7, 0x31

    .line 466
    .line 467
    if-ne v6, v7, :cond_19

    .line 468
    .line 469
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 470
    .line 471
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    iput v6, v7, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 476
    .line 477
    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 478
    .line 479
    goto/16 :goto_0

    .line 480
    .line 481
    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 482
    .line 483
    .line 484
    :cond_1b
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 485
    .line 486
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 487
    .line 488
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 489
    .line 490
    .line 491
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1896
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->onMeasure(Landroidx/constraintlayout/core/widgets/Flow;II)V

    return-void
.end method

.method public final onMeasure(Landroidx/constraintlayout/core/widgets/Flow;II)V
    .locals 38

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v9

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v10

    .line 11
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result v11

    .line 15
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v12

    .line 19
    const/4 v13, 0x0

    .line 20
    if-eqz v2, :cond_7a

    .line 21
    .line 22
    iget-object v14, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 23
    .line 24
    iget-object v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    .line 26
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    .line 28
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    .line 30
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 31
    .line 32
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget v6, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 35
    .line 36
    if-lez v6, :cond_8

    .line 37
    .line 38
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 39
    .line 40
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 41
    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v7, 0x0

    .line 48
    :goto_0
    if-nez v7, :cond_1

    .line 49
    .line 50
    iput v13, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredWidth:I

    .line 51
    .line 52
    iput v13, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredHeight:I

    .line 53
    .line 54
    iput-boolean v13, v2, Landroidx/constraintlayout/core/widgets/Flow;->mNeedsCallFromSolver:Z

    .line 55
    .line 56
    goto/16 :goto_3f

    .line 57
    .line 58
    :cond_1
    move v8, v13

    .line 59
    :goto_1
    iget v13, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 60
    .line 61
    if-ge v8, v13, :cond_8

    .line 62
    .line 63
    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 64
    .line 65
    aget-object v13, v13, v8

    .line 66
    .line 67
    if-nez v13, :cond_2

    .line 68
    .line 69
    move-object/from16 v17, v1

    .line 70
    .line 71
    :goto_2
    move-object/from16 v18, v3

    .line 72
    .line 73
    move-object/from16 v19, v4

    .line 74
    .line 75
    move-object/from16 v20, v5

    .line 76
    .line 77
    move/from16 v21, v8

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    move-object/from16 v17, v1

    .line 81
    .line 82
    instance-of v1, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move-object/from16 v18, v3

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-virtual {v13, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    move-object/from16 v19, v4

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-virtual {v13, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 102
    .line 103
    move-object/from16 v20, v5

    .line 104
    .line 105
    if-ne v3, v1, :cond_4

    .line 106
    .line 107
    iget v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 108
    .line 109
    move/from16 v21, v8

    .line 110
    .line 111
    const/4 v8, 0x1

    .line 112
    if-eq v5, v8, :cond_5

    .line 113
    .line 114
    if-ne v4, v1, :cond_5

    .line 115
    .line 116
    iget v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 117
    .line 118
    if-eq v5, v8, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    move/from16 v21, v8

    .line 122
    .line 123
    :cond_5
    if-ne v3, v1, :cond_6

    .line 124
    .line 125
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 126
    .line 127
    :cond_6
    if-ne v4, v1, :cond_7

    .line 128
    .line 129
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 130
    .line 131
    :cond_7
    iput-object v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 132
    .line 133
    iput-object v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 134
    .line 135
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    iput v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 140
    .line 141
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    iput v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 146
    .line 147
    invoke-virtual {v7, v13, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 148
    .line 149
    .line 150
    iget v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 151
    .line 152
    invoke-virtual {v13, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 153
    .line 154
    .line 155
    iget v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 156
    .line 157
    invoke-virtual {v13, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 158
    .line 159
    .line 160
    iget v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 161
    .line 162
    invoke-virtual {v13, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 163
    .line 164
    .line 165
    :goto_3
    add-int/lit8 v8, v21, 0x1

    .line 166
    .line 167
    move-object/from16 v1, v17

    .line 168
    .line 169
    move-object/from16 v3, v18

    .line 170
    .line 171
    move-object/from16 v4, v19

    .line 172
    .line 173
    move-object/from16 v5, v20

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_8
    move-object/from16 v17, v1

    .line 177
    .line 178
    move-object/from16 v18, v3

    .line 179
    .line 180
    move-object/from16 v19, v4

    .line 181
    .line 182
    move-object/from16 v20, v5

    .line 183
    .line 184
    iget v13, v2, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    .line 185
    .line 186
    iget v1, v2, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 187
    .line 188
    iget v3, v2, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    .line 189
    .line 190
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 191
    .line 192
    const/4 v5, 0x2

    .line 193
    new-array v6, v5, [I

    .line 194
    .line 195
    sub-int v7, v10, v13

    .line 196
    .line 197
    sub-int/2addr v7, v1

    .line 198
    iget v8, v2, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 199
    .line 200
    const/4 v5, 0x1

    .line 201
    if-ne v8, v5, :cond_9

    .line 202
    .line 203
    sub-int v5, v12, v3

    .line 204
    .line 205
    sub-int v7, v5, v4

    .line 206
    .line 207
    :cond_9
    move/from16 v32, v7

    .line 208
    .line 209
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 210
    .line 211
    const/4 v7, -0x1

    .line 212
    if-nez v8, :cond_b

    .line 213
    .line 214
    const/4 v8, 0x0

    .line 215
    if-ne v5, v7, :cond_a

    .line 216
    .line 217
    iput v8, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 218
    .line 219
    :cond_a
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 220
    .line 221
    if-ne v5, v7, :cond_d

    .line 222
    .line 223
    iput v8, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_b
    const/4 v8, 0x0

    .line 227
    if-ne v5, v7, :cond_c

    .line 228
    .line 229
    iput v8, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 230
    .line 231
    :cond_c
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 232
    .line 233
    if-ne v5, v7, :cond_d

    .line 234
    .line 235
    iput v8, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 236
    .line 237
    :cond_d
    :goto_4
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 238
    .line 239
    move/from16 v22, v1

    .line 240
    .line 241
    const/4 v7, 0x0

    .line 242
    const/4 v8, 0x0

    .line 243
    :goto_5
    iget v1, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 244
    .line 245
    move/from16 v23, v3

    .line 246
    .line 247
    const/16 v3, 0x8

    .line 248
    .line 249
    if-ge v7, v1, :cond_f

    .line 250
    .line 251
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 252
    .line 253
    aget-object v1, v1, v7

    .line 254
    .line 255
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 256
    .line 257
    if-ne v1, v3, :cond_e

    .line 258
    .line 259
    add-int/lit8 v8, v8, 0x1

    .line 260
    .line 261
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 262
    .line 263
    move/from16 v3, v23

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_f
    if-lez v8, :cond_12

    .line 267
    .line 268
    sub-int/2addr v1, v8

    .line 269
    new-array v5, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 270
    .line 271
    const/4 v1, 0x0

    .line 272
    const/4 v7, 0x0

    .line 273
    :goto_6
    iget v8, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 274
    .line 275
    if-ge v1, v8, :cond_11

    .line 276
    .line 277
    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 278
    .line 279
    aget-object v8, v8, v1

    .line 280
    .line 281
    move/from16 v24, v1

    .line 282
    .line 283
    iget v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 284
    .line 285
    if-eq v1, v3, :cond_10

    .line 286
    .line 287
    aput-object v8, v5, v7

    .line 288
    .line 289
    add-int/lit8 v7, v7, 0x1

    .line 290
    .line 291
    :cond_10
    add-int/lit8 v1, v24, 0x1

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_11
    move v1, v7

    .line 295
    :cond_12
    move-object v3, v5

    .line 296
    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 297
    .line 298
    iput v1, v2, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 299
    .line 300
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 301
    .line 302
    if-eqz v5, :cond_6f

    .line 303
    .line 304
    const/4 v8, 0x1

    .line 305
    if-eq v5, v8, :cond_55

    .line 306
    .line 307
    const/4 v7, 0x2

    .line 308
    if-eq v5, v7, :cond_2e

    .line 309
    .line 310
    const/4 v7, 0x3

    .line 311
    if-eq v5, v7, :cond_13

    .line 312
    .line 313
    move/from16 v35, v4

    .line 314
    .line 315
    move-object/from16 v36, v6

    .line 316
    .line 317
    move/from16 v37, v12

    .line 318
    .line 319
    move/from16 v20, v13

    .line 320
    .line 321
    move/from16 v33, v22

    .line 322
    .line 323
    move/from16 v34, v23

    .line 324
    .line 325
    const/16 v16, 0x0

    .line 326
    .line 327
    move v12, v8

    .line 328
    goto/16 :goto_3b

    .line 329
    .line 330
    :cond_13
    move-object v5, v3

    .line 331
    iget v3, v2, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 332
    .line 333
    if-nez v1, :cond_14

    .line 334
    .line 335
    move/from16 v35, v4

    .line 336
    .line 337
    move-object/from16 v36, v6

    .line 338
    .line 339
    move/from16 p3, v8

    .line 340
    .line 341
    move/from16 v37, v12

    .line 342
    .line 343
    move/from16 v20, v13

    .line 344
    .line 345
    move/from16 v33, v22

    .line 346
    .line 347
    move/from16 v34, v23

    .line 348
    .line 349
    goto/16 :goto_16

    .line 350
    .line 351
    :cond_14
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 352
    .line 353
    .line 354
    move v7, v1

    .line 355
    new-instance v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 356
    .line 357
    move/from16 v21, v4

    .line 358
    .line 359
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 360
    .line 361
    move-object/from16 v24, v5

    .line 362
    .line 363
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 364
    .line 365
    move-object/from16 v25, v6

    .line 366
    .line 367
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 368
    .line 369
    move/from16 v26, v7

    .line 370
    .line 371
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 372
    .line 373
    move-object/from16 p3, v20

    .line 374
    .line 375
    move/from16 v20, v13

    .line 376
    .line 377
    move-object/from16 v13, p3

    .line 378
    .line 379
    move/from16 p3, v8

    .line 380
    .line 381
    move/from16 v35, v21

    .line 382
    .line 383
    move/from16 v33, v22

    .line 384
    .line 385
    move/from16 v34, v23

    .line 386
    .line 387
    move-object/from16 v36, v25

    .line 388
    .line 389
    move/from16 v8, v32

    .line 390
    .line 391
    move-object/from16 v22, v14

    .line 392
    .line 393
    move-object/from16 v23, v15

    .line 394
    .line 395
    move-object/from16 v14, v24

    .line 396
    .line 397
    move/from16 v15, v26

    .line 398
    .line 399
    invoke-direct/range {v1 .. v8}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    if-nez v3, :cond_1c

    .line 406
    .line 407
    const/4 v4, 0x0

    .line 408
    const/4 v5, 0x0

    .line 409
    const/4 v6, 0x0

    .line 410
    const/4 v7, 0x0

    .line 411
    :goto_7
    if-ge v4, v15, :cond_1b

    .line 412
    .line 413
    add-int/lit8 v5, v5, 0x1

    .line 414
    .line 415
    aget-object v0, v14, v4

    .line 416
    .line 417
    invoke-virtual {v2, v0, v8}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 418
    .line 419
    .line 420
    move-result v21

    .line 421
    move/from16 p2, v3

    .line 422
    .line 423
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 424
    .line 425
    const/16 v16, 0x0

    .line 426
    .line 427
    aget-object v3, v3, v16

    .line 428
    .line 429
    move/from16 v24, v4

    .line 430
    .line 431
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 432
    .line 433
    if-ne v3, v4, :cond_15

    .line 434
    .line 435
    add-int/lit8 v6, v6, 0x1

    .line 436
    .line 437
    :cond_15
    move/from16 v25, v6

    .line 438
    .line 439
    if-eq v7, v8, :cond_16

    .line 440
    .line 441
    iget v3, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 442
    .line 443
    add-int/2addr v3, v7

    .line 444
    add-int v3, v3, v21

    .line 445
    .line 446
    if-le v3, v8, :cond_17

    .line 447
    .line 448
    :cond_16
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 449
    .line 450
    if-eqz v3, :cond_17

    .line 451
    .line 452
    move/from16 v3, p3

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_17
    const/4 v3, 0x0

    .line 456
    :goto_8
    if-nez v3, :cond_18

    .line 457
    .line 458
    if-lez v24, :cond_18

    .line 459
    .line 460
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 461
    .line 462
    if-lez v4, :cond_18

    .line 463
    .line 464
    if-le v5, v4, :cond_18

    .line 465
    .line 466
    move/from16 v3, p3

    .line 467
    .line 468
    :cond_18
    if-eqz v3, :cond_1a

    .line 469
    .line 470
    new-instance v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 471
    .line 472
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 473
    .line 474
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 475
    .line 476
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 477
    .line 478
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 479
    .line 480
    move/from16 v3, p2

    .line 481
    .line 482
    move/from16 v37, v12

    .line 483
    .line 484
    move/from16 v12, v24

    .line 485
    .line 486
    invoke-direct/range {v1 .. v8}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 487
    .line 488
    .line 489
    iput v12, v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 490
    .line 491
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move/from16 v5, p3

    .line 495
    .line 496
    :cond_19
    move/from16 v7, v21

    .line 497
    .line 498
    goto :goto_9

    .line 499
    :cond_1a
    move/from16 v3, p2

    .line 500
    .line 501
    move/from16 v37, v12

    .line 502
    .line 503
    move/from16 v12, v24

    .line 504
    .line 505
    if-lez v12, :cond_19

    .line 506
    .line 507
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 508
    .line 509
    add-int v4, v4, v21

    .line 510
    .line 511
    add-int/2addr v4, v7

    .line 512
    move v7, v4

    .line 513
    :goto_9
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 514
    .line 515
    .line 516
    add-int/lit8 v4, v12, 0x1

    .line 517
    .line 518
    move/from16 v6, v25

    .line 519
    .line 520
    move/from16 v12, v37

    .line 521
    .line 522
    goto :goto_7

    .line 523
    :cond_1b
    move/from16 v37, v12

    .line 524
    .line 525
    goto/16 :goto_d

    .line 526
    .line 527
    :cond_1c
    move/from16 v37, v12

    .line 528
    .line 529
    const/4 v0, 0x0

    .line 530
    const/4 v4, 0x0

    .line 531
    const/4 v5, 0x0

    .line 532
    const/4 v6, 0x0

    .line 533
    :goto_a
    if-ge v0, v15, :cond_23

    .line 534
    .line 535
    add-int/lit8 v4, v4, 0x1

    .line 536
    .line 537
    aget-object v12, v14, v0

    .line 538
    .line 539
    invoke-virtual {v2, v12, v8}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 540
    .line 541
    .line 542
    move-result v21

    .line 543
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 544
    .line 545
    aget-object v7, v7, p3

    .line 546
    .line 547
    move/from16 p2, v3

    .line 548
    .line 549
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 550
    .line 551
    if-ne v7, v3, :cond_1d

    .line 552
    .line 553
    add-int/lit8 v5, v5, 0x1

    .line 554
    .line 555
    :cond_1d
    move/from16 v24, v5

    .line 556
    .line 557
    if-eq v6, v8, :cond_1e

    .line 558
    .line 559
    iget v3, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 560
    .line 561
    add-int/2addr v3, v6

    .line 562
    add-int v3, v3, v21

    .line 563
    .line 564
    if-le v3, v8, :cond_1f

    .line 565
    .line 566
    :cond_1e
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 567
    .line 568
    if-eqz v3, :cond_1f

    .line 569
    .line 570
    move/from16 v3, p3

    .line 571
    .line 572
    goto :goto_b

    .line 573
    :cond_1f
    const/4 v3, 0x0

    .line 574
    :goto_b
    if-nez v3, :cond_20

    .line 575
    .line 576
    if-lez v0, :cond_20

    .line 577
    .line 578
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 579
    .line 580
    if-lez v5, :cond_20

    .line 581
    .line 582
    if-le v4, v5, :cond_20

    .line 583
    .line 584
    move/from16 v3, p3

    .line 585
    .line 586
    :cond_20
    if-eqz v3, :cond_22

    .line 587
    .line 588
    new-instance v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 589
    .line 590
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 591
    .line 592
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 593
    .line 594
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 595
    .line 596
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 597
    .line 598
    move/from16 v3, p2

    .line 599
    .line 600
    invoke-direct/range {v1 .. v8}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 601
    .line 602
    .line 603
    iput v0, v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 604
    .line 605
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move/from16 v4, p3

    .line 609
    .line 610
    :cond_21
    move/from16 v6, v21

    .line 611
    .line 612
    goto :goto_c

    .line 613
    :cond_22
    move/from16 v3, p2

    .line 614
    .line 615
    if-lez v0, :cond_21

    .line 616
    .line 617
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 618
    .line 619
    add-int v5, v5, v21

    .line 620
    .line 621
    add-int/2addr v5, v6

    .line 622
    move v6, v5

    .line 623
    :goto_c
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 624
    .line 625
    .line 626
    add-int/lit8 v0, v0, 0x1

    .line 627
    .line 628
    move/from16 v5, v24

    .line 629
    .line 630
    goto :goto_a

    .line 631
    :cond_23
    move v6, v5

    .line 632
    :goto_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    iget v1, v2, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    .line 637
    .line 638
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    .line 639
    .line 640
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 641
    .line 642
    iget v7, v2, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 643
    .line 644
    const/16 v16, 0x0

    .line 645
    .line 646
    aget-object v12, v22, v16

    .line 647
    .line 648
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 649
    .line 650
    if-eq v12, v14, :cond_25

    .line 651
    .line 652
    aget-object v12, v22, p3

    .line 653
    .line 654
    if-ne v12, v14, :cond_24

    .line 655
    .line 656
    goto :goto_e

    .line 657
    :cond_24
    const/4 v12, 0x0

    .line 658
    goto :goto_f

    .line 659
    :cond_25
    :goto_e
    move/from16 v12, p3

    .line 660
    .line 661
    :goto_f
    if-lez v6, :cond_27

    .line 662
    .line 663
    if-eqz v12, :cond_27

    .line 664
    .line 665
    const/4 v6, 0x0

    .line 666
    :goto_10
    if-ge v6, v0, :cond_27

    .line 667
    .line 668
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v12

    .line 672
    check-cast v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 673
    .line 674
    if-nez v3, :cond_26

    .line 675
    .line 676
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 677
    .line 678
    .line 679
    move-result v14

    .line 680
    sub-int v14, v8, v14

    .line 681
    .line 682
    invoke-virtual {v12, v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 683
    .line 684
    .line 685
    goto :goto_11

    .line 686
    :cond_26
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 687
    .line 688
    .line 689
    move-result v14

    .line 690
    sub-int v14, v8, v14

    .line 691
    .line 692
    invoke-virtual {v12, v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 693
    .line 694
    .line 695
    :goto_11
    add-int/lit8 v6, v6, 0x1

    .line 696
    .line 697
    goto :goto_10

    .line 698
    :cond_27
    move/from16 v28, v1

    .line 699
    .line 700
    move/from16 v29, v4

    .line 701
    .line 702
    move/from16 v30, v5

    .line 703
    .line 704
    move/from16 v31, v7

    .line 705
    .line 706
    move-object/from16 v24, v17

    .line 707
    .line 708
    move-object/from16 v26, v18

    .line 709
    .line 710
    move-object/from16 v27, v19

    .line 711
    .line 712
    move-object/from16 v25, v23

    .line 713
    .line 714
    const/4 v1, 0x0

    .line 715
    const/4 v4, 0x0

    .line 716
    const/4 v5, 0x0

    .line 717
    :goto_12
    if-ge v1, v0, :cond_2d

    .line 718
    .line 719
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v6

    .line 723
    check-cast v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 724
    .line 725
    if-nez v3, :cond_2a

    .line 726
    .line 727
    add-int/lit8 v7, v0, -0x1

    .line 728
    .line 729
    if-ge v1, v7, :cond_28

    .line 730
    .line 731
    add-int/lit8 v7, v1, 0x1

    .line 732
    .line 733
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v7

    .line 737
    check-cast v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 738
    .line 739
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 740
    .line 741
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 742
    .line 743
    move-object/from16 v27, v7

    .line 744
    .line 745
    const/16 v31, 0x0

    .line 746
    .line 747
    goto :goto_13

    .line 748
    :cond_28
    iget v7, v2, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 749
    .line 750
    move/from16 v31, v7

    .line 751
    .line 752
    move-object/from16 v27, v19

    .line 753
    .line 754
    :goto_13
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 755
    .line 756
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 757
    .line 758
    move/from16 v23, v3

    .line 759
    .line 760
    move-object/from16 v22, v6

    .line 761
    .line 762
    move/from16 v32, v8

    .line 763
    .line 764
    invoke-virtual/range {v22 .. v32}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 768
    .line 769
    .line 770
    move-result v12

    .line 771
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    .line 772
    .line 773
    .line 774
    move-result v4

    .line 775
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 776
    .line 777
    .line 778
    move-result v6

    .line 779
    add-int/2addr v6, v5

    .line 780
    if-lez v1, :cond_29

    .line 781
    .line 782
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 783
    .line 784
    add-int/2addr v6, v5

    .line 785
    :cond_29
    move v5, v6

    .line 786
    move-object/from16 v25, v7

    .line 787
    .line 788
    const/16 v29, 0x0

    .line 789
    .line 790
    goto :goto_15

    .line 791
    :cond_2a
    add-int/lit8 v7, v0, -0x1

    .line 792
    .line 793
    if-ge v1, v7, :cond_2b

    .line 794
    .line 795
    add-int/lit8 v7, v1, 0x1

    .line 796
    .line 797
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v7

    .line 801
    check-cast v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 802
    .line 803
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 804
    .line 805
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 806
    .line 807
    move-object/from16 v26, v7

    .line 808
    .line 809
    const/16 v30, 0x0

    .line 810
    .line 811
    goto :goto_14

    .line 812
    :cond_2b
    iget v7, v2, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 813
    .line 814
    move/from16 v30, v7

    .line 815
    .line 816
    move-object/from16 v26, v18

    .line 817
    .line 818
    :goto_14
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 819
    .line 820
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 821
    .line 822
    move/from16 v23, v3

    .line 823
    .line 824
    move-object/from16 v22, v6

    .line 825
    .line 826
    move/from16 v32, v8

    .line 827
    .line 828
    invoke-virtual/range {v22 .. v32}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 829
    .line 830
    .line 831
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 832
    .line 833
    .line 834
    move-result v6

    .line 835
    add-int/2addr v6, v4

    .line 836
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 837
    .line 838
    .line 839
    move-result v4

    .line 840
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 841
    .line 842
    .line 843
    move-result v4

    .line 844
    if-lez v1, :cond_2c

    .line 845
    .line 846
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 847
    .line 848
    add-int/2addr v6, v5

    .line 849
    :cond_2c
    move v5, v4

    .line 850
    move v4, v6

    .line 851
    move-object/from16 v24, v7

    .line 852
    .line 853
    const/16 v28, 0x0

    .line 854
    .line 855
    :goto_15
    add-int/lit8 v1, v1, 0x1

    .line 856
    .line 857
    goto/16 :goto_12

    .line 858
    .line 859
    :cond_2d
    const/16 v16, 0x0

    .line 860
    .line 861
    aput v4, v36, v16

    .line 862
    .line 863
    aput v5, v36, p3

    .line 864
    .line 865
    :goto_16
    move/from16 v12, p3

    .line 866
    .line 867
    :goto_17
    const/16 v16, 0x0

    .line 868
    .line 869
    goto/16 :goto_3b

    .line 870
    .line 871
    :cond_2e
    move v15, v1

    .line 872
    move-object v14, v3

    .line 873
    move/from16 v35, v4

    .line 874
    .line 875
    move-object/from16 v36, v6

    .line 876
    .line 877
    move/from16 p3, v8

    .line 878
    .line 879
    move/from16 v37, v12

    .line 880
    .line 881
    move/from16 v20, v13

    .line 882
    .line 883
    move/from16 v33, v22

    .line 884
    .line 885
    move/from16 v34, v23

    .line 886
    .line 887
    move/from16 v8, v32

    .line 888
    .line 889
    iget v0, v2, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 890
    .line 891
    iget v1, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 892
    .line 893
    if-nez v0, :cond_34

    .line 894
    .line 895
    if-gtz v1, :cond_33

    .line 896
    .line 897
    const/4 v1, 0x0

    .line 898
    const/4 v3, 0x0

    .line 899
    const/4 v4, 0x0

    .line 900
    :goto_18
    if-ge v1, v15, :cond_32

    .line 901
    .line 902
    if-lez v1, :cond_2f

    .line 903
    .line 904
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 905
    .line 906
    add-int/2addr v3, v5

    .line 907
    :cond_2f
    aget-object v5, v14, v1

    .line 908
    .line 909
    if-nez v5, :cond_30

    .line 910
    .line 911
    goto :goto_19

    .line 912
    :cond_30
    invoke-virtual {v2, v5, v8}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 913
    .line 914
    .line 915
    move-result v5

    .line 916
    add-int/2addr v5, v3

    .line 917
    if-le v5, v8, :cond_31

    .line 918
    .line 919
    goto :goto_1a

    .line 920
    :cond_31
    add-int/lit8 v4, v4, 0x1

    .line 921
    .line 922
    move v3, v5

    .line 923
    :goto_19
    add-int/lit8 v1, v1, 0x1

    .line 924
    .line 925
    goto :goto_18

    .line 926
    :cond_32
    :goto_1a
    const/4 v1, 0x0

    .line 927
    goto :goto_1e

    .line 928
    :cond_33
    move v4, v1

    .line 929
    goto :goto_1a

    .line 930
    :cond_34
    if-gtz v1, :cond_39

    .line 931
    .line 932
    const/4 v1, 0x0

    .line 933
    const/4 v3, 0x0

    .line 934
    const/4 v4, 0x0

    .line 935
    :goto_1b
    if-ge v1, v15, :cond_38

    .line 936
    .line 937
    if-lez v1, :cond_35

    .line 938
    .line 939
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 940
    .line 941
    add-int/2addr v3, v5

    .line 942
    :cond_35
    aget-object v5, v14, v1

    .line 943
    .line 944
    if-nez v5, :cond_36

    .line 945
    .line 946
    goto :goto_1c

    .line 947
    :cond_36
    invoke-virtual {v2, v5, v8}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 948
    .line 949
    .line 950
    move-result v5

    .line 951
    add-int/2addr v5, v3

    .line 952
    if-le v5, v8, :cond_37

    .line 953
    .line 954
    goto :goto_1d

    .line 955
    :cond_37
    add-int/lit8 v4, v4, 0x1

    .line 956
    .line 957
    move v3, v5

    .line 958
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    .line 959
    .line 960
    goto :goto_1b

    .line 961
    :cond_38
    :goto_1d
    move v1, v4

    .line 962
    :cond_39
    const/4 v4, 0x0

    .line 963
    :goto_1e
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 964
    .line 965
    if-nez v3, :cond_3a

    .line 966
    .line 967
    const/4 v7, 0x2

    .line 968
    new-array v3, v7, [I

    .line 969
    .line 970
    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 971
    .line 972
    :cond_3a
    if-nez v1, :cond_3b

    .line 973
    .line 974
    move/from16 v5, p3

    .line 975
    .line 976
    if-eq v0, v5, :cond_3c

    .line 977
    .line 978
    :cond_3b
    if-nez v4, :cond_3d

    .line 979
    .line 980
    if-nez v0, :cond_3d

    .line 981
    .line 982
    :cond_3c
    const/4 v3, 0x1

    .line 983
    goto :goto_1f

    .line 984
    :cond_3d
    const/4 v3, 0x0

    .line 985
    :goto_1f
    if-nez v3, :cond_54

    .line 986
    .line 987
    if-nez v0, :cond_3e

    .line 988
    .line 989
    int-to-float v1, v15

    .line 990
    int-to-float v5, v4

    .line 991
    div-float/2addr v1, v5

    .line 992
    float-to-double v5, v1

    .line 993
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 994
    .line 995
    .line 996
    move-result-wide v5

    .line 997
    double-to-int v1, v5

    .line 998
    goto :goto_20

    .line 999
    :cond_3e
    int-to-float v4, v15

    .line 1000
    int-to-float v5, v1

    .line 1001
    div-float/2addr v4, v5

    .line 1002
    float-to-double v4, v4

    .line 1003
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 1004
    .line 1005
    .line 1006
    move-result-wide v4

    .line 1007
    double-to-int v4, v4

    .line 1008
    :goto_20
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1009
    .line 1010
    if-eqz v5, :cond_3f

    .line 1011
    .line 1012
    array-length v6, v5

    .line 1013
    if-ge v6, v4, :cond_40

    .line 1014
    .line 1015
    :cond_3f
    const/4 v6, 0x0

    .line 1016
    goto :goto_21

    .line 1017
    :cond_40
    const/4 v6, 0x0

    .line 1018
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1019
    .line 1020
    .line 1021
    goto :goto_22

    .line 1022
    :goto_21
    new-array v5, v4, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1023
    .line 1024
    iput-object v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1025
    .line 1026
    :goto_22
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1027
    .line 1028
    if-eqz v5, :cond_42

    .line 1029
    .line 1030
    array-length v7, v5

    .line 1031
    if-ge v7, v1, :cond_41

    .line 1032
    .line 1033
    goto :goto_23

    .line 1034
    :cond_41
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1035
    .line 1036
    .line 1037
    goto :goto_24

    .line 1038
    :cond_42
    :goto_23
    new-array v5, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1039
    .line 1040
    iput-object v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1041
    .line 1042
    :goto_24
    const/4 v5, 0x0

    .line 1043
    :goto_25
    if-ge v5, v4, :cond_4b

    .line 1044
    .line 1045
    const/4 v6, 0x0

    .line 1046
    :goto_26
    if-ge v6, v1, :cond_4a

    .line 1047
    .line 1048
    mul-int v7, v6, v4

    .line 1049
    .line 1050
    add-int/2addr v7, v5

    .line 1051
    const/4 v12, 0x1

    .line 1052
    if-ne v0, v12, :cond_43

    .line 1053
    .line 1054
    mul-int v7, v5, v1

    .line 1055
    .line 1056
    add-int/2addr v7, v6

    .line 1057
    :cond_43
    array-length v12, v14

    .line 1058
    if-lt v7, v12, :cond_44

    .line 1059
    .line 1060
    goto :goto_27

    .line 1061
    :cond_44
    aget-object v7, v14, v7

    .line 1062
    .line 1063
    if-nez v7, :cond_45

    .line 1064
    .line 1065
    goto :goto_27

    .line 1066
    :cond_45
    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1067
    .line 1068
    .line 1069
    move-result v12

    .line 1070
    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1071
    .line 1072
    aget-object v13, v13, v5

    .line 1073
    .line 1074
    if-eqz v13, :cond_46

    .line 1075
    .line 1076
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1077
    .line 1078
    .line 1079
    move-result v13

    .line 1080
    if-ge v13, v12, :cond_47

    .line 1081
    .line 1082
    :cond_46
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1083
    .line 1084
    aput-object v7, v12, v5

    .line 1085
    .line 1086
    :cond_47
    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1087
    .line 1088
    .line 1089
    move-result v12

    .line 1090
    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1091
    .line 1092
    aget-object v13, v13, v6

    .line 1093
    .line 1094
    if-eqz v13, :cond_48

    .line 1095
    .line 1096
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1097
    .line 1098
    .line 1099
    move-result v13

    .line 1100
    if-ge v13, v12, :cond_49

    .line 1101
    .line 1102
    :cond_48
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1103
    .line 1104
    aput-object v7, v12, v6

    .line 1105
    .line 1106
    :cond_49
    :goto_27
    add-int/lit8 v6, v6, 0x1

    .line 1107
    .line 1108
    goto :goto_26

    .line 1109
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    .line 1110
    .line 1111
    goto :goto_25

    .line 1112
    :cond_4b
    const/4 v5, 0x0

    .line 1113
    const/4 v6, 0x0

    .line 1114
    :goto_28
    if-ge v5, v4, :cond_4e

    .line 1115
    .line 1116
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1117
    .line 1118
    aget-object v7, v7, v5

    .line 1119
    .line 1120
    if-eqz v7, :cond_4d

    .line 1121
    .line 1122
    if-lez v5, :cond_4c

    .line 1123
    .line 1124
    iget v12, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1125
    .line 1126
    add-int/2addr v6, v12

    .line 1127
    :cond_4c
    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1128
    .line 1129
    .line 1130
    move-result v7

    .line 1131
    add-int/2addr v7, v6

    .line 1132
    move v6, v7

    .line 1133
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    .line 1134
    .line 1135
    goto :goto_28

    .line 1136
    :cond_4e
    const/4 v5, 0x0

    .line 1137
    const/4 v7, 0x0

    .line 1138
    :goto_29
    if-ge v5, v1, :cond_51

    .line 1139
    .line 1140
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1141
    .line 1142
    aget-object v12, v12, v5

    .line 1143
    .line 1144
    if-eqz v12, :cond_50

    .line 1145
    .line 1146
    if-lez v5, :cond_4f

    .line 1147
    .line 1148
    iget v13, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1149
    .line 1150
    add-int/2addr v7, v13

    .line 1151
    :cond_4f
    invoke-virtual {v2, v12, v8}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1152
    .line 1153
    .line 1154
    move-result v12

    .line 1155
    add-int/2addr v12, v7

    .line 1156
    move v7, v12

    .line 1157
    :cond_50
    add-int/lit8 v5, v5, 0x1

    .line 1158
    .line 1159
    goto :goto_29

    .line 1160
    :cond_51
    const/16 v16, 0x0

    .line 1161
    .line 1162
    aput v6, v36, v16

    .line 1163
    .line 1164
    const/4 v5, 0x1

    .line 1165
    aput v7, v36, v5

    .line 1166
    .line 1167
    if-nez v0, :cond_53

    .line 1168
    .line 1169
    if-le v6, v8, :cond_52

    .line 1170
    .line 1171
    if-le v4, v5, :cond_52

    .line 1172
    .line 1173
    add-int/lit8 v4, v4, -0x1

    .line 1174
    .line 1175
    goto/16 :goto_1f

    .line 1176
    .line 1177
    :cond_52
    move v3, v5

    .line 1178
    goto/16 :goto_1f

    .line 1179
    .line 1180
    :cond_53
    if-le v7, v8, :cond_52

    .line 1181
    .line 1182
    if-le v1, v5, :cond_52

    .line 1183
    .line 1184
    add-int/lit8 v1, v1, -0x1

    .line 1185
    .line 1186
    goto/16 :goto_1f

    .line 1187
    .line 1188
    :cond_54
    const/4 v5, 0x1

    .line 1189
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 1190
    .line 1191
    const/16 v16, 0x0

    .line 1192
    .line 1193
    aput v4, v0, v16

    .line 1194
    .line 1195
    aput v1, v0, v5

    .line 1196
    .line 1197
    move v12, v5

    .line 1198
    goto/16 :goto_17

    .line 1199
    .line 1200
    :cond_55
    move-object/from16 v8, v20

    .line 1201
    .line 1202
    move/from16 v20, v13

    .line 1203
    .line 1204
    move-object v13, v8

    .line 1205
    move/from16 v35, v4

    .line 1206
    .line 1207
    move-object/from16 v36, v6

    .line 1208
    .line 1209
    move/from16 v37, v12

    .line 1210
    .line 1211
    move/from16 v33, v22

    .line 1212
    .line 1213
    move/from16 v34, v23

    .line 1214
    .line 1215
    move/from16 v8, v32

    .line 1216
    .line 1217
    move-object/from16 v22, v14

    .line 1218
    .line 1219
    move-object/from16 v23, v15

    .line 1220
    .line 1221
    move v15, v1

    .line 1222
    move-object v14, v3

    .line 1223
    iget v3, v2, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 1224
    .line 1225
    if-nez v15, :cond_56

    .line 1226
    .line 1227
    goto/16 :goto_38

    .line 1228
    .line 1229
    :cond_56
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1230
    .line 1231
    .line 1232
    new-instance v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1233
    .line 1234
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1235
    .line 1236
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1237
    .line 1238
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1239
    .line 1240
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1241
    .line 1242
    invoke-direct/range {v1 .. v8}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    if-nez v3, :cond_5d

    .line 1249
    .line 1250
    const/4 v0, 0x0

    .line 1251
    const/4 v4, 0x0

    .line 1252
    const/4 v5, 0x0

    .line 1253
    :goto_2a
    if-ge v0, v15, :cond_64

    .line 1254
    .line 1255
    aget-object v12, v14, v0

    .line 1256
    .line 1257
    invoke-virtual {v2, v12, v8}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1258
    .line 1259
    .line 1260
    move-result v21

    .line 1261
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1262
    .line 1263
    const/16 v16, 0x0

    .line 1264
    .line 1265
    aget-object v6, v6, v16

    .line 1266
    .line 1267
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1268
    .line 1269
    if-ne v6, v7, :cond_57

    .line 1270
    .line 1271
    add-int/lit8 v4, v4, 0x1

    .line 1272
    .line 1273
    :cond_57
    move/from16 v24, v4

    .line 1274
    .line 1275
    if-eq v5, v8, :cond_58

    .line 1276
    .line 1277
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1278
    .line 1279
    add-int/2addr v4, v5

    .line 1280
    add-int v4, v4, v21

    .line 1281
    .line 1282
    if-le v4, v8, :cond_59

    .line 1283
    .line 1284
    :cond_58
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1285
    .line 1286
    if-eqz v4, :cond_59

    .line 1287
    .line 1288
    const/4 v4, 0x1

    .line 1289
    goto :goto_2b

    .line 1290
    :cond_59
    const/4 v4, 0x0

    .line 1291
    :goto_2b
    if-nez v4, :cond_5a

    .line 1292
    .line 1293
    if-lez v0, :cond_5a

    .line 1294
    .line 1295
    iget v6, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 1296
    .line 1297
    if-lez v6, :cond_5a

    .line 1298
    .line 1299
    rem-int v6, v0, v6

    .line 1300
    .line 1301
    if-nez v6, :cond_5a

    .line 1302
    .line 1303
    const/4 v4, 0x1

    .line 1304
    :cond_5a
    if-eqz v4, :cond_5c

    .line 1305
    .line 1306
    new-instance v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1307
    .line 1308
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1309
    .line 1310
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1311
    .line 1312
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1313
    .line 1314
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1315
    .line 1316
    invoke-direct/range {v1 .. v8}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1317
    .line 1318
    .line 1319
    iput v0, v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 1320
    .line 1321
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    .line 1323
    .line 1324
    :cond_5b
    move/from16 v5, v21

    .line 1325
    .line 1326
    goto :goto_2c

    .line 1327
    :cond_5c
    if-lez v0, :cond_5b

    .line 1328
    .line 1329
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1330
    .line 1331
    add-int v4, v4, v21

    .line 1332
    .line 1333
    add-int/2addr v4, v5

    .line 1334
    move v5, v4

    .line 1335
    :goto_2c
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1336
    .line 1337
    .line 1338
    add-int/lit8 v0, v0, 0x1

    .line 1339
    .line 1340
    move/from16 v4, v24

    .line 1341
    .line 1342
    goto :goto_2a

    .line 1343
    :cond_5d
    const/4 v0, 0x0

    .line 1344
    const/4 v4, 0x0

    .line 1345
    const/4 v5, 0x0

    .line 1346
    :goto_2d
    if-ge v0, v15, :cond_64

    .line 1347
    .line 1348
    aget-object v12, v14, v0

    .line 1349
    .line 1350
    invoke-virtual {v2, v12, v8}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 1351
    .line 1352
    .line 1353
    move-result v21

    .line 1354
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1355
    .line 1356
    const/4 v7, 0x1

    .line 1357
    aget-object v6, v6, v7

    .line 1358
    .line 1359
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1360
    .line 1361
    if-ne v6, v7, :cond_5e

    .line 1362
    .line 1363
    add-int/lit8 v4, v4, 0x1

    .line 1364
    .line 1365
    :cond_5e
    move/from16 v24, v4

    .line 1366
    .line 1367
    if-eq v5, v8, :cond_5f

    .line 1368
    .line 1369
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1370
    .line 1371
    add-int/2addr v4, v5

    .line 1372
    add-int v4, v4, v21

    .line 1373
    .line 1374
    if-le v4, v8, :cond_60

    .line 1375
    .line 1376
    :cond_5f
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1377
    .line 1378
    if-eqz v4, :cond_60

    .line 1379
    .line 1380
    const/4 v4, 0x1

    .line 1381
    goto :goto_2e

    .line 1382
    :cond_60
    const/4 v4, 0x0

    .line 1383
    :goto_2e
    if-nez v4, :cond_61

    .line 1384
    .line 1385
    if-lez v0, :cond_61

    .line 1386
    .line 1387
    iget v6, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 1388
    .line 1389
    if-lez v6, :cond_61

    .line 1390
    .line 1391
    rem-int v6, v0, v6

    .line 1392
    .line 1393
    if-nez v6, :cond_61

    .line 1394
    .line 1395
    const/4 v4, 0x1

    .line 1396
    :cond_61
    if-eqz v4, :cond_63

    .line 1397
    .line 1398
    new-instance v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1399
    .line 1400
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1401
    .line 1402
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1403
    .line 1404
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1405
    .line 1406
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1407
    .line 1408
    invoke-direct/range {v1 .. v8}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1409
    .line 1410
    .line 1411
    iput v0, v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 1412
    .line 1413
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    .line 1415
    .line 1416
    :cond_62
    move/from16 v5, v21

    .line 1417
    .line 1418
    goto :goto_2f

    .line 1419
    :cond_63
    if-lez v0, :cond_62

    .line 1420
    .line 1421
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1422
    .line 1423
    add-int v4, v4, v21

    .line 1424
    .line 1425
    add-int/2addr v4, v5

    .line 1426
    move v5, v4

    .line 1427
    :goto_2f
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1428
    .line 1429
    .line 1430
    add-int/lit8 v0, v0, 0x1

    .line 1431
    .line 1432
    move/from16 v4, v24

    .line 1433
    .line 1434
    goto :goto_2d

    .line 1435
    :cond_64
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 1436
    .line 1437
    .line 1438
    move-result v0

    .line 1439
    iget v1, v2, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    .line 1440
    .line 1441
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    .line 1442
    .line 1443
    iget v6, v2, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 1444
    .line 1445
    iget v7, v2, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 1446
    .line 1447
    const/16 v16, 0x0

    .line 1448
    .line 1449
    aget-object v12, v22, v16

    .line 1450
    .line 1451
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1452
    .line 1453
    if-eq v12, v14, :cond_66

    .line 1454
    .line 1455
    const/4 v12, 0x1

    .line 1456
    aget-object v15, v22, v12

    .line 1457
    .line 1458
    if-ne v15, v14, :cond_65

    .line 1459
    .line 1460
    goto :goto_30

    .line 1461
    :cond_65
    const/4 v12, 0x0

    .line 1462
    goto :goto_31

    .line 1463
    :cond_66
    :goto_30
    const/4 v12, 0x1

    .line 1464
    :goto_31
    if-lez v4, :cond_68

    .line 1465
    .line 1466
    if-eqz v12, :cond_68

    .line 1467
    .line 1468
    const/4 v4, 0x0

    .line 1469
    :goto_32
    if-ge v4, v0, :cond_68

    .line 1470
    .line 1471
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v12

    .line 1475
    check-cast v12, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1476
    .line 1477
    if-nez v3, :cond_67

    .line 1478
    .line 1479
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 1480
    .line 1481
    .line 1482
    move-result v14

    .line 1483
    sub-int v14, v8, v14

    .line 1484
    .line 1485
    invoke-virtual {v12, v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 1486
    .line 1487
    .line 1488
    goto :goto_33

    .line 1489
    :cond_67
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 1490
    .line 1491
    .line 1492
    move-result v14

    .line 1493
    sub-int v14, v8, v14

    .line 1494
    .line 1495
    invoke-virtual {v12, v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 1496
    .line 1497
    .line 1498
    :goto_33
    add-int/lit8 v4, v4, 0x1

    .line 1499
    .line 1500
    goto :goto_32

    .line 1501
    :cond_68
    move/from16 v28, v1

    .line 1502
    .line 1503
    move/from16 v29, v5

    .line 1504
    .line 1505
    move/from16 v30, v6

    .line 1506
    .line 1507
    move/from16 v31, v7

    .line 1508
    .line 1509
    move-object/from16 v24, v17

    .line 1510
    .line 1511
    move-object/from16 v26, v18

    .line 1512
    .line 1513
    move-object/from16 v27, v19

    .line 1514
    .line 1515
    move-object/from16 v25, v23

    .line 1516
    .line 1517
    const/4 v1, 0x0

    .line 1518
    const/4 v4, 0x0

    .line 1519
    const/4 v5, 0x0

    .line 1520
    :goto_34
    if-ge v1, v0, :cond_6e

    .line 1521
    .line 1522
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v6

    .line 1526
    check-cast v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1527
    .line 1528
    if-nez v3, :cond_6b

    .line 1529
    .line 1530
    add-int/lit8 v7, v0, -0x1

    .line 1531
    .line 1532
    if-ge v1, v7, :cond_69

    .line 1533
    .line 1534
    add-int/lit8 v7, v1, 0x1

    .line 1535
    .line 1536
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v7

    .line 1540
    check-cast v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1541
    .line 1542
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1543
    .line 1544
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1545
    .line 1546
    move-object/from16 v27, v7

    .line 1547
    .line 1548
    const/16 v31, 0x0

    .line 1549
    .line 1550
    goto :goto_35

    .line 1551
    :cond_69
    iget v7, v2, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 1552
    .line 1553
    move/from16 v31, v7

    .line 1554
    .line 1555
    move-object/from16 v27, v19

    .line 1556
    .line 1557
    :goto_35
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1558
    .line 1559
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1560
    .line 1561
    move/from16 v23, v3

    .line 1562
    .line 1563
    move-object/from16 v22, v6

    .line 1564
    .line 1565
    move/from16 v32, v8

    .line 1566
    .line 1567
    invoke-virtual/range {v22 .. v32}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1568
    .line 1569
    .line 1570
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 1571
    .line 1572
    .line 1573
    move-result v12

    .line 1574
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    .line 1575
    .line 1576
    .line 1577
    move-result v4

    .line 1578
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 1579
    .line 1580
    .line 1581
    move-result v6

    .line 1582
    add-int/2addr v6, v5

    .line 1583
    if-lez v1, :cond_6a

    .line 1584
    .line 1585
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 1586
    .line 1587
    add-int/2addr v6, v5

    .line 1588
    :cond_6a
    move v5, v6

    .line 1589
    move-object/from16 v25, v7

    .line 1590
    .line 1591
    const/16 v29, 0x0

    .line 1592
    .line 1593
    goto :goto_37

    .line 1594
    :cond_6b
    add-int/lit8 v7, v0, -0x1

    .line 1595
    .line 1596
    if-ge v1, v7, :cond_6c

    .line 1597
    .line 1598
    add-int/lit8 v7, v1, 0x1

    .line 1599
    .line 1600
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v7

    .line 1604
    check-cast v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1605
    .line 1606
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1607
    .line 1608
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1609
    .line 1610
    move-object/from16 v26, v7

    .line 1611
    .line 1612
    const/16 v30, 0x0

    .line 1613
    .line 1614
    goto :goto_36

    .line 1615
    :cond_6c
    iget v7, v2, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 1616
    .line 1617
    move/from16 v30, v7

    .line 1618
    .line 1619
    move-object/from16 v26, v18

    .line 1620
    .line 1621
    :goto_36
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1622
    .line 1623
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1624
    .line 1625
    move/from16 v23, v3

    .line 1626
    .line 1627
    move-object/from16 v22, v6

    .line 1628
    .line 1629
    move/from16 v32, v8

    .line 1630
    .line 1631
    invoke-virtual/range {v22 .. v32}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 1635
    .line 1636
    .line 1637
    move-result v6

    .line 1638
    add-int/2addr v6, v4

    .line 1639
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 1640
    .line 1641
    .line 1642
    move-result v4

    .line 1643
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 1644
    .line 1645
    .line 1646
    move-result v4

    .line 1647
    if-lez v1, :cond_6d

    .line 1648
    .line 1649
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 1650
    .line 1651
    add-int/2addr v6, v5

    .line 1652
    :cond_6d
    move v5, v4

    .line 1653
    move v4, v6

    .line 1654
    move-object/from16 v24, v7

    .line 1655
    .line 1656
    const/16 v28, 0x0

    .line 1657
    .line 1658
    :goto_37
    add-int/lit8 v1, v1, 0x1

    .line 1659
    .line 1660
    goto/16 :goto_34

    .line 1661
    .line 1662
    :cond_6e
    const/16 v16, 0x0

    .line 1663
    .line 1664
    aput v4, v36, v16

    .line 1665
    .line 1666
    const/4 v12, 0x1

    .line 1667
    aput v5, v36, v12

    .line 1668
    .line 1669
    :goto_38
    const/4 v12, 0x1

    .line 1670
    goto/16 :goto_17

    .line 1671
    .line 1672
    :cond_6f
    move-object/from16 v8, v20

    .line 1673
    .line 1674
    move/from16 v20, v13

    .line 1675
    .line 1676
    move-object v13, v8

    .line 1677
    move v15, v1

    .line 1678
    move-object v14, v3

    .line 1679
    move/from16 v35, v4

    .line 1680
    .line 1681
    move-object/from16 v36, v6

    .line 1682
    .line 1683
    move/from16 v37, v12

    .line 1684
    .line 1685
    move/from16 v33, v22

    .line 1686
    .line 1687
    move/from16 v34, v23

    .line 1688
    .line 1689
    move/from16 v8, v32

    .line 1690
    .line 1691
    iget v3, v2, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 1692
    .line 1693
    if-nez v15, :cond_70

    .line 1694
    .line 1695
    goto :goto_38

    .line 1696
    :cond_70
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 1697
    .line 1698
    .line 1699
    move-result v0

    .line 1700
    if-nez v0, :cond_71

    .line 1701
    .line 1702
    new-instance v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1703
    .line 1704
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1705
    .line 1706
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1707
    .line 1708
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1709
    .line 1710
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1711
    .line 1712
    invoke-direct/range {v1 .. v8}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    .line 1717
    .line 1718
    goto :goto_39

    .line 1719
    :cond_71
    const/4 v1, 0x0

    .line 1720
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v0

    .line 1724
    check-cast v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1725
    .line 1726
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggestDimension:I

    .line 1727
    .line 1728
    const/4 v6, 0x0

    .line 1729
    iput-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1730
    .line 1731
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 1732
    .line 1733
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 1734
    .line 1735
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 1736
    .line 1737
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 1738
    .line 1739
    iput v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 1740
    .line 1741
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1742
    .line 1743
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1744
    .line 1745
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1746
    .line 1747
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1748
    .line 1749
    iget v7, v2, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    .line 1750
    .line 1751
    iget v12, v2, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    .line 1752
    .line 1753
    iget v13, v2, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 1754
    .line 1755
    move-object/from16 v22, v0

    .line 1756
    .line 1757
    iget v0, v2, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 1758
    .line 1759
    move/from16 v31, v0

    .line 1760
    .line 1761
    move-object/from16 v24, v1

    .line 1762
    .line 1763
    move/from16 v23, v3

    .line 1764
    .line 1765
    move-object/from16 v25, v4

    .line 1766
    .line 1767
    move-object/from16 v26, v5

    .line 1768
    .line 1769
    move-object/from16 v27, v6

    .line 1770
    .line 1771
    move/from16 v28, v7

    .line 1772
    .line 1773
    move/from16 v32, v8

    .line 1774
    .line 1775
    move/from16 v29, v12

    .line 1776
    .line 1777
    move/from16 v30, v13

    .line 1778
    .line 1779
    invoke-virtual/range {v22 .. v32}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1780
    .line 1781
    .line 1782
    move-object/from16 v1, v22

    .line 1783
    .line 1784
    :goto_39
    const/4 v0, 0x0

    .line 1785
    :goto_3a
    if-ge v0, v15, :cond_72

    .line 1786
    .line 1787
    aget-object v3, v14, v0

    .line 1788
    .line 1789
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1790
    .line 1791
    .line 1792
    add-int/lit8 v0, v0, 0x1

    .line 1793
    .line 1794
    goto :goto_3a

    .line 1795
    :cond_72
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 1796
    .line 1797
    .line 1798
    move-result v0

    .line 1799
    const/16 v16, 0x0

    .line 1800
    .line 1801
    aput v0, v36, v16

    .line 1802
    .line 1803
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 1804
    .line 1805
    .line 1806
    move-result v0

    .line 1807
    const/4 v12, 0x1

    .line 1808
    aput v0, v36, v12

    .line 1809
    .line 1810
    :goto_3b
    aget v0, v36, v16

    .line 1811
    .line 1812
    add-int v0, v0, v20

    .line 1813
    .line 1814
    add-int v0, v0, v33

    .line 1815
    .line 1816
    aget v1, v36, v12

    .line 1817
    .line 1818
    add-int v1, v1, v34

    .line 1819
    .line 1820
    add-int v1, v1, v35

    .line 1821
    .line 1822
    const/high16 v3, -0x80000000

    .line 1823
    .line 1824
    const/high16 v4, 0x40000000    # 2.0f

    .line 1825
    .line 1826
    if-ne v9, v4, :cond_73

    .line 1827
    .line 1828
    goto :goto_3c

    .line 1829
    :cond_73
    if-ne v9, v3, :cond_74

    .line 1830
    .line 1831
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    .line 1832
    .line 1833
    .line 1834
    move-result v10

    .line 1835
    goto :goto_3c

    .line 1836
    :cond_74
    if-nez v9, :cond_75

    .line 1837
    .line 1838
    move v10, v0

    .line 1839
    goto :goto_3c

    .line 1840
    :cond_75
    const/4 v10, 0x0

    .line 1841
    :goto_3c
    if-ne v11, v4, :cond_76

    .line 1842
    .line 1843
    move/from16 v0, v37

    .line 1844
    .line 1845
    goto :goto_3d

    .line 1846
    :cond_76
    if-ne v11, v3, :cond_77

    .line 1847
    .line 1848
    move/from16 v0, v37

    .line 1849
    .line 1850
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 1851
    .line 1852
    .line 1853
    move-result v0

    .line 1854
    goto :goto_3d

    .line 1855
    :cond_77
    if-nez v11, :cond_78

    .line 1856
    .line 1857
    move v0, v1

    .line 1858
    goto :goto_3d

    .line 1859
    :cond_78
    const/4 v0, 0x0

    .line 1860
    :goto_3d
    iput v10, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredWidth:I

    .line 1861
    .line 1862
    iput v0, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredHeight:I

    .line 1863
    .line 1864
    invoke-virtual {v2, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1865
    .line 1866
    .line 1867
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1868
    .line 1869
    .line 1870
    iget v0, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 1871
    .line 1872
    if-lez v0, :cond_79

    .line 1873
    .line 1874
    move v13, v12

    .line 1875
    goto :goto_3e

    .line 1876
    :cond_79
    const/4 v13, 0x0

    .line 1877
    :goto_3e
    iput-boolean v13, v2, Landroidx/constraintlayout/core/widgets/Flow;->mNeedsCallFromSolver:Z

    .line 1878
    .line 1879
    :goto_3f
    iget v0, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredWidth:I

    .line 1880
    .line 1881
    iget v1, v2, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredHeight:I

    .line 1882
    .line 1883
    move-object/from16 v2, p0

    .line 1884
    .line 1885
    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1886
    .line 1887
    .line 1888
    return-void

    .line 1889
    :cond_7a
    move-object/from16 v2, p0

    .line 1890
    .line 1891
    move v1, v13

    .line 1892
    invoke-virtual {v2, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1893
    .line 1894
    .line 1895
    return-void
.end method

.method public final resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingStart:I

    .line 4
    .line 5
    if-gtz p1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingEnd:I

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 14
    .line 15
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingEnd:I

    .line 16
    .line 17
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    .line 18
    .line 19
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    .line 23
    .line 24
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingEnd:I

    .line 25
    .line 26
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 27
    .line 28
    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    .line 4
    .line 5
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 6
    .line 7
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingStart:I

    .line 8
    .line 9
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingEnd:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
