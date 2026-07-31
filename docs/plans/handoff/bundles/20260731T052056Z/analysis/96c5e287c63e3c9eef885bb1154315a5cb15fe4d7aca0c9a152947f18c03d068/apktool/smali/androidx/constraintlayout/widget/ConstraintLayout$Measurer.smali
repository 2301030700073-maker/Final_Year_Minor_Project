.class public final Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_11

    .line 10
    .line 11
    :cond_0
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 14
    .line 15
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 16
    .line 17
    const/16 v6, 0x8

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-ne v5, v6, :cond_1

    .line 21
    .line 22
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 23
    .line 24
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 25
    .line 26
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 30
    .line 31
    if-nez v5, :cond_2

    .line 32
    .line 33
    goto/16 :goto_11

    .line 34
    .line 35
    :cond_2
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    .line 37
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 38
    .line 39
    iget v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 40
    .line 41
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 42
    .line 43
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingTop:I

    .line 44
    .line 45
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingBottom:I

    .line 46
    .line 47
    add-int/2addr v10, v11

    .line 48
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 49
    .line 50
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Landroid/view/View;

    .line 51
    .line 52
    sget-object v13, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v14

    .line 58
    aget v14, v13, v14

    .line 59
    .line 60
    const/4 v15, 0x2

    .line 61
    const/4 v7, 0x1

    .line 62
    if-eq v14, v7, :cond_d

    .line 63
    .line 64
    if-eq v14, v15, :cond_c

    .line 65
    .line 66
    const/4 v8, 0x3

    .line 67
    if-eq v14, v8, :cond_9

    .line 68
    .line 69
    const/4 v8, 0x4

    .line 70
    if-eq v14, v8, :cond_3

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    goto :goto_4

    .line 74
    :cond_3
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 75
    .line 76
    const/4 v14, -0x2

    .line 77
    invoke-static {v8, v11, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 82
    .line 83
    if-ne v11, v7, :cond_4

    .line 84
    .line 85
    move v11, v7

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/4 v11, 0x0

    .line 88
    :goto_0
    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 89
    .line 90
    if-eq v14, v7, :cond_5

    .line 91
    .line 92
    if-ne v14, v15, :cond_e

    .line 93
    .line 94
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-ne v14, v7, :cond_6

    .line 103
    .line 104
    const/4 v7, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    const/4 v7, 0x0

    .line 107
    :goto_1
    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 108
    .line 109
    if-eq v14, v15, :cond_8

    .line 110
    .line 111
    if-eqz v11, :cond_8

    .line 112
    .line 113
    if-eqz v11, :cond_7

    .line 114
    .line 115
    if-nez v7, :cond_8

    .line 116
    .line 117
    :cond_7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_e

    .line 122
    .line 123
    :cond_8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    const/high16 v8, 0x40000000    # 2.0f

    .line 128
    .line 129
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    :goto_2
    move v8, v7

    .line 134
    goto :goto_4

    .line 135
    :cond_9
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 136
    .line 137
    if-eqz v4, :cond_a

    .line 138
    .line 139
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_a
    const/4 v8, 0x0

    .line 143
    :goto_3
    if-eqz v3, :cond_b

    .line 144
    .line 145
    iget v14, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 146
    .line 147
    add-int/2addr v8, v14

    .line 148
    :cond_b
    add-int/2addr v11, v8

    .line 149
    const/4 v8, -0x1

    .line 150
    invoke-static {v7, v11, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    goto :goto_2

    .line 155
    :cond_c
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 156
    .line 157
    const/4 v14, -0x2

    .line 158
    invoke-static {v7, v11, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    goto :goto_2

    .line 163
    :cond_d
    const/high16 v7, 0x40000000    # 2.0f

    .line 164
    .line 165
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    :cond_e
    :goto_4
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    aget v7, v13, v7

    .line 174
    .line 175
    const/4 v11, 0x1

    .line 176
    if-eq v7, v11, :cond_19

    .line 177
    .line 178
    if-eq v7, v15, :cond_18

    .line 179
    .line 180
    const/4 v9, 0x3

    .line 181
    if-eq v7, v9, :cond_15

    .line 182
    .line 183
    const/4 v9, 0x4

    .line 184
    if-eq v7, v9, :cond_f

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    goto/16 :goto_8

    .line 188
    .line 189
    :cond_f
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 190
    .line 191
    const/4 v14, -0x2

    .line 192
    invoke-static {v3, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 197
    .line 198
    if-ne v4, v11, :cond_10

    .line 199
    .line 200
    move v4, v11

    .line 201
    goto :goto_5

    .line 202
    :cond_10
    const/4 v4, 0x0

    .line 203
    :goto_5
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 204
    .line 205
    if-eq v7, v11, :cond_11

    .line 206
    .line 207
    if-ne v7, v15, :cond_1a

    .line 208
    .line 209
    :cond_11
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    if-ne v7, v9, :cond_12

    .line 218
    .line 219
    const/4 v7, 0x1

    .line 220
    goto :goto_6

    .line 221
    :cond_12
    const/4 v7, 0x0

    .line 222
    :goto_6
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 223
    .line 224
    if-eq v9, v15, :cond_14

    .line 225
    .line 226
    if-eqz v4, :cond_14

    .line 227
    .line 228
    if-eqz v4, :cond_13

    .line 229
    .line 230
    if-nez v7, :cond_14

    .line 231
    .line 232
    :cond_13
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_1a

    .line 237
    .line 238
    :cond_14
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    const/high16 v7, 0x40000000    # 2.0f

    .line 243
    .line 244
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    goto :goto_8

    .line 249
    :cond_15
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 250
    .line 251
    if-eqz v4, :cond_16

    .line 252
    .line 253
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 254
    .line 255
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_16
    const/4 v4, 0x0

    .line 259
    :goto_7
    if-eqz v3, :cond_17

    .line 260
    .line 261
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 262
    .line 263
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 264
    .line 265
    add-int/2addr v4, v3

    .line 266
    :cond_17
    add-int/2addr v10, v4

    .line 267
    const/4 v3, -0x1

    .line 268
    invoke-static {v7, v10, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    move v3, v4

    .line 273
    goto :goto_8

    .line 274
    :cond_18
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 275
    .line 276
    const/4 v14, -0x2

    .line 277
    invoke-static {v3, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    goto :goto_8

    .line 282
    :cond_19
    const/high16 v7, 0x40000000    # 2.0f

    .line 283
    .line 284
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    :cond_1a
    :goto_8
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 289
    .line 290
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 291
    .line 292
    if-eqz v4, :cond_1b

    .line 293
    .line 294
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 295
    .line 296
    const/16 v9, 0x100

    .line 297
    .line 298
    invoke-static {v7, v9}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-eqz v7, :cond_1b

    .line 303
    .line 304
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    if-ne v7, v9, :cond_1b

    .line 313
    .line 314
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    if-ge v7, v9, :cond_1b

    .line 323
    .line 324
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    if-ne v7, v9, :cond_1b

    .line 333
    .line 334
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-ge v7, v4, :cond_1b

    .line 343
    .line 344
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 349
    .line 350
    if-ne v4, v7, :cond_1b

    .line 351
    .line 352
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-nez v4, :cond_1b

    .line 357
    .line 358
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 359
    .line 360
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    invoke-static {v4, v8, v7}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_1b

    .line 369
    .line 370
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 371
    .line 372
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    invoke-static {v4, v3, v7}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-eqz v4, :cond_1b

    .line 381
    .line 382
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 387
    .line 388
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 393
    .line 394
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 395
    .line 396
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 397
    .line 398
    return-void

    .line 399
    :cond_1b
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 400
    .line 401
    if-ne v5, v4, :cond_1c

    .line 402
    .line 403
    const/4 v7, 0x1

    .line 404
    goto :goto_9

    .line 405
    :cond_1c
    const/4 v7, 0x0

    .line 406
    :goto_9
    if-ne v6, v4, :cond_1d

    .line 407
    .line 408
    const/4 v4, 0x1

    .line 409
    goto :goto_a

    .line 410
    :cond_1d
    const/4 v4, 0x0

    .line 411
    :goto_a
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 412
    .line 413
    if-eq v6, v9, :cond_1f

    .line 414
    .line 415
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 416
    .line 417
    if-ne v6, v10, :cond_1e

    .line 418
    .line 419
    goto :goto_b

    .line 420
    :cond_1e
    const/4 v11, 0x0

    .line 421
    goto :goto_c

    .line 422
    :cond_1f
    :goto_b
    const/4 v11, 0x1

    .line 423
    :goto_c
    if-eq v5, v9, :cond_21

    .line 424
    .line 425
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 426
    .line 427
    if-ne v5, v6, :cond_20

    .line 428
    .line 429
    goto :goto_d

    .line 430
    :cond_20
    const/4 v5, 0x0

    .line 431
    goto :goto_e

    .line 432
    :cond_21
    :goto_d
    const/4 v5, 0x1

    .line 433
    :goto_e
    const/4 v6, 0x0

    .line 434
    if-eqz v7, :cond_22

    .line 435
    .line 436
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 437
    .line 438
    cmpl-float v9, v9, v6

    .line 439
    .line 440
    if-lez v9, :cond_22

    .line 441
    .line 442
    const/4 v9, 0x1

    .line 443
    goto :goto_f

    .line 444
    :cond_22
    const/4 v9, 0x0

    .line 445
    :goto_f
    if-eqz v4, :cond_23

    .line 446
    .line 447
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 448
    .line 449
    cmpl-float v6, v10, v6

    .line 450
    .line 451
    if-lez v6, :cond_23

    .line 452
    .line 453
    const/4 v6, 0x1

    .line 454
    goto :goto_10

    .line 455
    :cond_23
    const/4 v6, 0x0

    .line 456
    :goto_10
    if-nez v12, :cond_24

    .line 457
    .line 458
    :goto_11
    return-void

    .line 459
    :cond_24
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 460
    .line 461
    .line 462
    move-result-object v10

    .line 463
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 464
    .line 465
    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 466
    .line 467
    const/4 v14, 0x1

    .line 468
    if-eq v13, v14, :cond_26

    .line 469
    .line 470
    if-eq v13, v15, :cond_26

    .line 471
    .line 472
    if-eqz v7, :cond_26

    .line 473
    .line 474
    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 475
    .line 476
    if-nez v7, :cond_26

    .line 477
    .line 478
    if-eqz v4, :cond_26

    .line 479
    .line 480
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 481
    .line 482
    if-eqz v4, :cond_25

    .line 483
    .line 484
    goto :goto_12

    .line 485
    :cond_25
    const/4 v3, -0x1

    .line 486
    const/4 v4, 0x0

    .line 487
    const/4 v13, 0x0

    .line 488
    const/4 v14, 0x0

    .line 489
    const/4 v15, 0x0

    .line 490
    goto/16 :goto_1a

    .line 491
    .line 492
    :cond_26
    :goto_12
    instance-of v4, v12, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 493
    .line 494
    if-eqz v4, :cond_27

    .line 495
    .line 496
    instance-of v4, v1, Landroidx/constraintlayout/core/widgets/Flow;

    .line 497
    .line 498
    if-eqz v4, :cond_27

    .line 499
    .line 500
    move-object v4, v1

    .line 501
    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow;

    .line 502
    .line 503
    move-object v7, v12

    .line 504
    check-cast v7, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 505
    .line 506
    invoke-virtual {v7, v4, v8, v3}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/core/widgets/Flow;II)V

    .line 507
    .line 508
    .line 509
    goto :goto_13

    .line 510
    :cond_27
    invoke-virtual {v12, v8, v3}, Landroid/view/View;->measure(II)V

    .line 511
    .line 512
    .line 513
    :goto_13
    iput v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 514
    .line 515
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 516
    .line 517
    const/4 v4, 0x0

    .line 518
    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 519
    .line 520
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 525
    .line 526
    .line 527
    move-result v7

    .line 528
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    .line 529
    .line 530
    .line 531
    move-result v13

    .line 532
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 533
    .line 534
    if-lez v14, :cond_28

    .line 535
    .line 536
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 537
    .line 538
    .line 539
    move-result v14

    .line 540
    goto :goto_14

    .line 541
    :cond_28
    move v14, v4

    .line 542
    :goto_14
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 543
    .line 544
    if-lez v15, :cond_29

    .line 545
    .line 546
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    .line 547
    .line 548
    .line 549
    move-result v14

    .line 550
    :cond_29
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 551
    .line 552
    if-lez v15, :cond_2a

    .line 553
    .line 554
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    .line 555
    .line 556
    .line 557
    move-result v15

    .line 558
    :goto_15
    move/from16 v16, v3

    .line 559
    .line 560
    goto :goto_16

    .line 561
    :cond_2a
    move v15, v7

    .line 562
    goto :goto_15

    .line 563
    :goto_16
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 564
    .line 565
    if-lez v3, :cond_2b

    .line 566
    .line 567
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    .line 568
    .line 569
    .line 570
    move-result v15

    .line 571
    :cond_2b
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 572
    .line 573
    const/4 v3, 0x1

    .line 574
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-nez v0, :cond_2d

    .line 579
    .line 580
    const/high16 v0, 0x3f000000    # 0.5f

    .line 581
    .line 582
    if-eqz v9, :cond_2c

    .line 583
    .line 584
    if-eqz v11, :cond_2c

    .line 585
    .line 586
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 587
    .line 588
    int-to-float v5, v15

    .line 589
    mul-float/2addr v5, v3

    .line 590
    add-float/2addr v5, v0

    .line 591
    float-to-int v0, v5

    .line 592
    move v14, v0

    .line 593
    goto :goto_17

    .line 594
    :cond_2c
    if-eqz v6, :cond_2d

    .line 595
    .line 596
    if-eqz v5, :cond_2d

    .line 597
    .line 598
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 599
    .line 600
    int-to-float v5, v14

    .line 601
    div-float/2addr v5, v3

    .line 602
    add-float/2addr v5, v0

    .line 603
    float-to-int v0, v5

    .line 604
    move v15, v0

    .line 605
    :cond_2d
    :goto_17
    if-ne v4, v14, :cond_2f

    .line 606
    .line 607
    if-eq v7, v15, :cond_2e

    .line 608
    .line 609
    goto :goto_18

    .line 610
    :cond_2e
    const/4 v3, -0x1

    .line 611
    const/4 v4, 0x0

    .line 612
    goto :goto_1a

    .line 613
    :cond_2f
    :goto_18
    const/high16 v0, 0x40000000    # 2.0f

    .line 614
    .line 615
    if-eq v4, v14, :cond_30

    .line 616
    .line 617
    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 618
    .line 619
    .line 620
    move-result v8

    .line 621
    :cond_30
    if-eq v7, v15, :cond_31

    .line 622
    .line 623
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 624
    .line 625
    .line 626
    move-result v3

    .line 627
    goto :goto_19

    .line 628
    :cond_31
    move/from16 v3, v16

    .line 629
    .line 630
    :goto_19
    invoke-virtual {v12, v8, v3}, Landroid/view/View;->measure(II)V

    .line 631
    .line 632
    .line 633
    iput v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 634
    .line 635
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 636
    .line 637
    const/4 v4, 0x0

    .line 638
    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 639
    .line 640
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 645
    .line 646
    .line 647
    move-result v3

    .line 648
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    move v14, v0

    .line 653
    move v15, v3

    .line 654
    move v13, v5

    .line 655
    const/4 v3, -0x1

    .line 656
    :goto_1a
    if-eq v13, v3, :cond_32

    .line 657
    .line 658
    const/4 v11, 0x1

    .line 659
    goto :goto_1b

    .line 660
    :cond_32
    move v11, v4

    .line 661
    :goto_1b
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 662
    .line 663
    if-ne v14, v0, :cond_34

    .line 664
    .line 665
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 666
    .line 667
    if-eq v15, v0, :cond_33

    .line 668
    .line 669
    goto :goto_1c

    .line 670
    :cond_33
    move v7, v4

    .line 671
    goto :goto_1d

    .line 672
    :cond_34
    :goto_1c
    const/4 v7, 0x1

    .line 673
    :goto_1d
    iput-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 674
    .line 675
    iget-boolean v0, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 676
    .line 677
    if-eqz v0, :cond_35

    .line 678
    .line 679
    const/4 v11, 0x1

    .line 680
    :cond_35
    if-eqz v11, :cond_36

    .line 681
    .line 682
    const/4 v3, -0x1

    .line 683
    if-eq v13, v3, :cond_36

    .line 684
    .line 685
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 686
    .line 687
    if-eq v0, v13, :cond_36

    .line 688
    .line 689
    const/4 v3, 0x1

    .line 690
    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 691
    .line 692
    :cond_36
    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 693
    .line 694
    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 695
    .line 696
    iput-boolean v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 697
    .line 698
    iput v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 699
    .line 700
    return-void
.end method
