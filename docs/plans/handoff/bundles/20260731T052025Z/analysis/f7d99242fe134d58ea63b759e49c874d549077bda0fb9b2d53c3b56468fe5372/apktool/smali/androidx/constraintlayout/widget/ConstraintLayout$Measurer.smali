.class public final Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mLayoutHeightSpec:I

.field public mLayoutWidthSpec:I

.field public mPaddingBottom:I

.field public mPaddingHeight:I

.field public mPaddingTop:I

.field public mPaddingWidth:I

.field public final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    return-void
.end method

.method public static isSimilarSpec(III)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/high16 v1, 0x40000000    # 2.0f

    .line 17
    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    const/high16 v0, -0x80000000

    .line 21
    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    if-nez p0, :cond_2

    .line 25
    .line 26
    :cond_1
    if-ne p2, p1, :cond_2

    .line 27
    .line 28
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return p0
.end method


# virtual methods
.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 10
    .line 11
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 12
    .line 13
    const/16 v6, 0x8

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    if-ne v5, v6, :cond_0

    .line 17
    .line 18
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 19
    .line 20
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 21
    .line 22
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 26
    .line 27
    if-nez v5, :cond_1

    .line 28
    .line 29
    goto/16 :goto_10

    .line 30
    .line 31
    :cond_1
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 32
    .line 33
    iget v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    .line 34
    .line 35
    iget v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    .line 36
    .line 37
    iget v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 38
    .line 39
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 40
    .line 41
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingTop:I

    .line 42
    .line 43
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingBottom:I

    .line 44
    .line 45
    add-int/2addr v10, v11

    .line 46
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 47
    .line 48
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Landroid/view/View;

    .line 49
    .line 50
    invoke-static {v5}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    const/4 v14, 0x1

    .line 55
    const/4 v15, 0x3

    .line 56
    const/4 v7, 0x2

    .line 57
    if-eqz v13, :cond_c

    .line 58
    .line 59
    if-eq v13, v14, :cond_b

    .line 60
    .line 61
    if-eq v13, v7, :cond_5

    .line 62
    .line 63
    if-eq v13, v15, :cond_2

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 68
    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    iget v13, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v13, 0x0

    .line 75
    :goto_0
    if-eqz v3, :cond_4

    .line 76
    .line 77
    iget v15, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 78
    .line 79
    add-int/2addr v13, v15

    .line 80
    :cond_4
    add-int/2addr v11, v13

    .line 81
    const/4 v13, -0x1

    .line 82
    invoke-static {v8, v11, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 88
    .line 89
    const/4 v13, -0x2

    .line 90
    invoke-static {v8, v11, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 95
    .line 96
    if-ne v11, v14, :cond_6

    .line 97
    .line 98
    move v11, v14

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    const/4 v11, 0x0

    .line 101
    :goto_1
    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 102
    .line 103
    if-eq v13, v14, :cond_7

    .line 104
    .line 105
    if-ne v13, v7, :cond_d

    .line 106
    .line 107
    :cond_7
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    if-ne v13, v15, :cond_8

    .line 116
    .line 117
    move v13, v14

    .line 118
    goto :goto_2

    .line 119
    :cond_8
    const/4 v13, 0x0

    .line 120
    :goto_2
    iget v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 121
    .line 122
    if-eq v15, v7, :cond_a

    .line 123
    .line 124
    if-eqz v11, :cond_a

    .line 125
    .line 126
    if-eqz v11, :cond_9

    .line 127
    .line 128
    if-nez v13, :cond_a

    .line 129
    .line 130
    :cond_9
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_d

    .line 135
    .line 136
    :cond_a
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    const/high16 v13, 0x40000000    # 2.0f

    .line 141
    .line 142
    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    goto :goto_3

    .line 147
    :cond_b
    const/high16 v13, 0x40000000    # 2.0f

    .line 148
    .line 149
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 150
    .line 151
    const/4 v15, -0x2

    .line 152
    invoke-static {v8, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    goto :goto_3

    .line 157
    :cond_c
    const/high16 v13, 0x40000000    # 2.0f

    .line 158
    .line 159
    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    :cond_d
    :goto_3
    invoke-static {v6}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    if-eqz v11, :cond_18

    .line 168
    .line 169
    if-eq v11, v14, :cond_17

    .line 170
    .line 171
    if-eq v11, v7, :cond_11

    .line 172
    .line 173
    const/4 v9, 0x3

    .line 174
    if-eq v11, v9, :cond_e

    .line 175
    .line 176
    const/4 v3, 0x0

    .line 177
    goto/16 :goto_7

    .line 178
    .line 179
    :cond_e
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 180
    .line 181
    if-eqz v4, :cond_f

    .line 182
    .line 183
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 184
    .line 185
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_f
    const/4 v4, 0x0

    .line 189
    :goto_4
    if-eqz v3, :cond_10

    .line 190
    .line 191
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 192
    .line 193
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 194
    .line 195
    add-int/2addr v4, v3

    .line 196
    :cond_10
    add-int/2addr v10, v4

    .line 197
    const/4 v13, -0x1

    .line 198
    invoke-static {v9, v10, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    goto :goto_7

    .line 203
    :cond_11
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 204
    .line 205
    const/4 v13, -0x2

    .line 206
    invoke-static {v3, v10, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 211
    .line 212
    if-ne v4, v14, :cond_12

    .line 213
    .line 214
    move v4, v14

    .line 215
    goto :goto_5

    .line 216
    :cond_12
    const/4 v4, 0x0

    .line 217
    :goto_5
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 218
    .line 219
    if-eq v9, v14, :cond_13

    .line 220
    .line 221
    if-ne v9, v7, :cond_19

    .line 222
    .line 223
    :cond_13
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    if-ne v9, v10, :cond_14

    .line 232
    .line 233
    move v9, v14

    .line 234
    goto :goto_6

    .line 235
    :cond_14
    const/4 v9, 0x0

    .line 236
    :goto_6
    iget v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 237
    .line 238
    if-eq v10, v7, :cond_16

    .line 239
    .line 240
    if-eqz v4, :cond_16

    .line 241
    .line 242
    if-eqz v4, :cond_15

    .line 243
    .line 244
    if-nez v9, :cond_16

    .line 245
    .line 246
    :cond_15
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_19

    .line 251
    .line 252
    :cond_16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    const/high16 v13, 0x40000000    # 2.0f

    .line 257
    .line 258
    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    goto :goto_7

    .line 263
    :cond_17
    const/high16 v13, 0x40000000    # 2.0f

    .line 264
    .line 265
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 266
    .line 267
    const/4 v15, -0x2

    .line 268
    invoke-static {v3, v10, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    goto :goto_7

    .line 273
    :cond_18
    const/high16 v13, 0x40000000    # 2.0f

    .line 274
    .line 275
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    :cond_19
    :goto_7
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 280
    .line 281
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 282
    .line 283
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 284
    .line 285
    if-eqz v4, :cond_1a

    .line 286
    .line 287
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 288
    .line 289
    const/16 v10, 0x100

    .line 290
    .line 291
    invoke-static {v9, v10}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    if-eqz v9, :cond_1a

    .line 296
    .line 297
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    if-ne v9, v10, :cond_1a

    .line 306
    .line 307
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 308
    .line 309
    .line 310
    move-result v9

    .line 311
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 312
    .line 313
    .line 314
    move-result v10

    .line 315
    if-ge v9, v10, :cond_1a

    .line 316
    .line 317
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    if-ne v9, v10, :cond_1a

    .line 326
    .line 327
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    if-ge v9, v4, :cond_1a

    .line 336
    .line 337
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 342
    .line 343
    if-ne v4, v9, :cond_1a

    .line 344
    .line 345
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    if-nez v4, :cond_1a

    .line 350
    .line 351
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 352
    .line 353
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    invoke-static {v4, v8, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    if-eqz v4, :cond_1a

    .line 362
    .line 363
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 364
    .line 365
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    invoke-static {v4, v3, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    if-eqz v4, :cond_1a

    .line 374
    .line 375
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 380
    .line 381
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 386
    .line 387
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 388
    .line 389
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 390
    .line 391
    return-void

    .line 392
    :cond_1a
    const/4 v9, 0x3

    .line 393
    if-ne v5, v9, :cond_1b

    .line 394
    .line 395
    move v4, v14

    .line 396
    goto :goto_8

    .line 397
    :cond_1b
    const/4 v4, 0x0

    .line 398
    :goto_8
    if-ne v6, v9, :cond_1c

    .line 399
    .line 400
    move v9, v14

    .line 401
    goto :goto_9

    .line 402
    :cond_1c
    const/4 v9, 0x0

    .line 403
    :goto_9
    const/4 v10, 0x4

    .line 404
    if-eq v6, v10, :cond_1e

    .line 405
    .line 406
    if-ne v6, v14, :cond_1d

    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_1d
    const/4 v6, 0x0

    .line 410
    goto :goto_b

    .line 411
    :cond_1e
    :goto_a
    move v6, v14

    .line 412
    :goto_b
    if-eq v5, v10, :cond_20

    .line 413
    .line 414
    if-ne v5, v14, :cond_1f

    .line 415
    .line 416
    goto :goto_c

    .line 417
    :cond_1f
    const/4 v5, 0x0

    .line 418
    goto :goto_d

    .line 419
    :cond_20
    :goto_c
    move v5, v14

    .line 420
    :goto_d
    const/4 v10, 0x0

    .line 421
    if-eqz v4, :cond_21

    .line 422
    .line 423
    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 424
    .line 425
    cmpl-float v11, v11, v10

    .line 426
    .line 427
    if-lez v11, :cond_21

    .line 428
    .line 429
    move v11, v14

    .line 430
    goto :goto_e

    .line 431
    :cond_21
    const/4 v11, 0x0

    .line 432
    :goto_e
    if-eqz v9, :cond_22

    .line 433
    .line 434
    iget v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 435
    .line 436
    cmpl-float v10, v13, v10

    .line 437
    .line 438
    if-lez v10, :cond_22

    .line 439
    .line 440
    move v10, v14

    .line 441
    goto :goto_f

    .line 442
    :cond_22
    const/4 v10, 0x0

    .line 443
    :goto_f
    if-nez v12, :cond_23

    .line 444
    .line 445
    :goto_10
    return-void

    .line 446
    :cond_23
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 447
    .line 448
    .line 449
    move-result-object v13

    .line 450
    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 451
    .line 452
    iget v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 453
    .line 454
    if-eq v15, v14, :cond_25

    .line 455
    .line 456
    if-eq v15, v7, :cond_25

    .line 457
    .line 458
    if-eqz v4, :cond_25

    .line 459
    .line 460
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 461
    .line 462
    if-nez v4, :cond_25

    .line 463
    .line 464
    if-eqz v9, :cond_25

    .line 465
    .line 466
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 467
    .line 468
    if-eqz v4, :cond_24

    .line 469
    .line 470
    goto :goto_11

    .line 471
    :cond_24
    const/4 v0, -0x1

    .line 472
    const/4 v4, 0x0

    .line 473
    const/4 v5, 0x0

    .line 474
    const/4 v14, 0x0

    .line 475
    const/4 v15, 0x0

    .line 476
    goto/16 :goto_18

    .line 477
    .line 478
    :cond_25
    :goto_11
    invoke-virtual {v12, v8, v3}, Landroid/view/View;->measure(II)V

    .line 479
    .line 480
    .line 481
    iput v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 482
    .line 483
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 484
    .line 485
    const/4 v4, 0x0

    .line 486
    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 487
    .line 488
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 493
    .line 494
    .line 495
    move-result v7

    .line 496
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    .line 497
    .line 498
    .line 499
    move-result v9

    .line 500
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 501
    .line 502
    if-lez v15, :cond_26

    .line 503
    .line 504
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    .line 505
    .line 506
    .line 507
    move-result v15

    .line 508
    goto :goto_12

    .line 509
    :cond_26
    move v15, v4

    .line 510
    :goto_12
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 511
    .line 512
    if-lez v14, :cond_27

    .line 513
    .line 514
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 515
    .line 516
    .line 517
    move-result v15

    .line 518
    :cond_27
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 519
    .line 520
    if-lez v14, :cond_28

    .line 521
    .line 522
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    .line 523
    .line 524
    .line 525
    move-result v14

    .line 526
    :goto_13
    move/from16 v16, v3

    .line 527
    .line 528
    goto :goto_14

    .line 529
    :cond_28
    move v14, v7

    .line 530
    goto :goto_13

    .line 531
    :goto_14
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 532
    .line 533
    if-lez v3, :cond_29

    .line 534
    .line 535
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    .line 536
    .line 537
    .line 538
    move-result v14

    .line 539
    :cond_29
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 540
    .line 541
    const/4 v3, 0x1

    .line 542
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-nez v0, :cond_2b

    .line 547
    .line 548
    const/high16 v0, 0x3f000000    # 0.5f

    .line 549
    .line 550
    if-eqz v11, :cond_2a

    .line 551
    .line 552
    if-eqz v6, :cond_2a

    .line 553
    .line 554
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 555
    .line 556
    int-to-float v5, v14

    .line 557
    mul-float/2addr v5, v3

    .line 558
    add-float/2addr v5, v0

    .line 559
    float-to-int v0, v5

    .line 560
    move v15, v0

    .line 561
    goto :goto_15

    .line 562
    :cond_2a
    if-eqz v10, :cond_2b

    .line 563
    .line 564
    if-eqz v5, :cond_2b

    .line 565
    .line 566
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 567
    .line 568
    int-to-float v5, v15

    .line 569
    div-float/2addr v5, v3

    .line 570
    add-float/2addr v5, v0

    .line 571
    float-to-int v0, v5

    .line 572
    move v14, v0

    .line 573
    :cond_2b
    :goto_15
    if-ne v4, v15, :cond_2d

    .line 574
    .line 575
    if-eq v7, v14, :cond_2c

    .line 576
    .line 577
    goto :goto_16

    .line 578
    :cond_2c
    move v5, v9

    .line 579
    const/4 v0, -0x1

    .line 580
    const/4 v4, 0x0

    .line 581
    goto :goto_18

    .line 582
    :cond_2d
    :goto_16
    const/high16 v0, 0x40000000    # 2.0f

    .line 583
    .line 584
    if-eq v4, v15, :cond_2e

    .line 585
    .line 586
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 587
    .line 588
    .line 589
    move-result v8

    .line 590
    :cond_2e
    if-eq v7, v14, :cond_2f

    .line 591
    .line 592
    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    goto :goto_17

    .line 597
    :cond_2f
    move/from16 v3, v16

    .line 598
    .line 599
    :goto_17
    invoke-virtual {v12, v8, v3}, Landroid/view/View;->measure(II)V

    .line 600
    .line 601
    .line 602
    iput v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 603
    .line 604
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 605
    .line 606
    const/4 v4, 0x0

    .line 607
    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 608
    .line 609
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    move v15, v0

    .line 622
    move v14, v3

    .line 623
    const/4 v0, -0x1

    .line 624
    :goto_18
    if-eq v5, v0, :cond_30

    .line 625
    .line 626
    const/4 v0, 0x1

    .line 627
    goto :goto_19

    .line 628
    :cond_30
    move v0, v4

    .line 629
    :goto_19
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 630
    .line 631
    if-ne v15, v3, :cond_32

    .line 632
    .line 633
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 634
    .line 635
    if-eq v14, v3, :cond_31

    .line 636
    .line 637
    goto :goto_1a

    .line 638
    :cond_31
    move v7, v4

    .line 639
    goto :goto_1b

    .line 640
    :cond_32
    :goto_1a
    const/4 v7, 0x1

    .line 641
    :goto_1b
    iput-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 642
    .line 643
    iget-boolean v3, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 644
    .line 645
    if-eqz v3, :cond_33

    .line 646
    .line 647
    const/4 v3, 0x1

    .line 648
    goto :goto_1c

    .line 649
    :cond_33
    move v3, v0

    .line 650
    :goto_1c
    if-eqz v3, :cond_34

    .line 651
    .line 652
    const/4 v13, -0x1

    .line 653
    if-eq v5, v13, :cond_34

    .line 654
    .line 655
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 656
    .line 657
    if-eq v0, v5, :cond_34

    .line 658
    .line 659
    const/4 v0, 0x1

    .line 660
    iput-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 661
    .line 662
    :cond_34
    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 663
    .line 664
    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 665
    .line 666
    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 667
    .line 668
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 669
    .line 670
    return-void
.end method
