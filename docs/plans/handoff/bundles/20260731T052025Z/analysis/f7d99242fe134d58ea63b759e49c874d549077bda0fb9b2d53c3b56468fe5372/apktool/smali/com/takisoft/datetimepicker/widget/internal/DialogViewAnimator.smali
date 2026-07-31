.class public Lcom/takisoft/datetimepicker/widget/internal/DialogViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mMatchParentChildren:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/internal/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/internal/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v7, 0x0

    .line 8
    const/high16 v8, 0x40000000    # 2.0f

    .line 9
    .line 10
    if-ne v1, v8, :cond_1

    .line 11
    .line 12
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eq v1, v8, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v9, v7

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 22
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    move v11, v7

    .line 27
    move v12, v11

    .line 28
    move v13, v12

    .line 29
    move v14, v13

    .line 30
    :goto_2
    iget-object v1, v0, Lcom/takisoft/datetimepicker/widget/internal/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    if-ge v11, v10, :cond_a

    .line 34
    .line 35
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/16 v5, 0x8

    .line 50
    .line 51
    if-eq v4, v5, :cond_2

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_2
    move/from16 v3, p1

    .line 55
    .line 56
    move/from16 v4, p2

    .line 57
    .line 58
    goto/16 :goto_a

    .line 59
    .line 60
    :cond_3
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    move-object v15, v4

    .line 65
    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    .line 67
    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 68
    .line 69
    if-ne v4, v2, :cond_4

    .line 70
    .line 71
    const/16 v16, 0x1

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_4
    move/from16 v16, v7

    .line 75
    .line 76
    :goto_4
    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 77
    .line 78
    if-ne v4, v2, :cond_5

    .line 79
    .line 80
    const/16 v17, 0x1

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_5
    move/from16 v17, v7

    .line 84
    .line 85
    :goto_5
    if-eqz v9, :cond_6

    .line 86
    .line 87
    if-nez v16, :cond_7

    .line 88
    .line 89
    if-eqz v17, :cond_6

    .line 90
    .line 91
    goto :goto_7

    .line 92
    :cond_6
    :goto_6
    move-object v1, v3

    .line 93
    goto :goto_8

    .line 94
    :cond_7
    :goto_7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_6

    .line 98
    :goto_8
    const/4 v3, 0x0

    .line 99
    const/4 v5, 0x0

    .line 100
    move/from16 v2, p1

    .line 101
    .line 102
    move/from16 v4, p2

    .line 103
    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 105
    .line 106
    .line 107
    move v3, v2

    .line 108
    if-eqz v9, :cond_8

    .line 109
    .line 110
    if-nez v16, :cond_8

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 117
    .line 118
    add-int/2addr v2, v5

    .line 119
    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 120
    .line 121
    add-int/2addr v2, v5

    .line 122
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    const/high16 v5, -0x1000000

    .line 131
    .line 132
    and-int/2addr v2, v5

    .line 133
    goto :goto_9

    .line 134
    :cond_8
    move v2, v7

    .line 135
    :goto_9
    if-eqz v9, :cond_9

    .line 136
    .line 137
    if-nez v17, :cond_9

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    iget v6, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 144
    .line 145
    add-int/2addr v5, v6

    .line 146
    iget v6, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 147
    .line 148
    add-int/2addr v5, v6

    .line 149
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeightAndState()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    shr-int/lit8 v1, v1, 0x10

    .line 158
    .line 159
    and-int/lit16 v1, v1, -0x100

    .line 160
    .line 161
    or-int/2addr v2, v1

    .line 162
    :cond_9
    invoke-static {v14, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    :goto_a
    add-int/lit8 v11, v11, 0x1

    .line 167
    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :cond_a
    move/from16 v3, p1

    .line 171
    .line 172
    move/from16 v4, p2

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    add-int/2addr v6, v5

    .line 183
    add-int/2addr v6, v12

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    add-int/2addr v9, v5

    .line 193
    add-int/2addr v9, v13

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    if-eqz v9, :cond_b

    .line 215
    .line 216
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    :cond_b
    invoke-static {v6, v3, v14}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    shl-int/lit8 v9, v14, 0x10

    .line 237
    .line 238
    invoke-static {v5, v4, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    invoke-virtual {v0, v6, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    :goto_b
    if-ge v7, v5, :cond_e

    .line 250
    .line 251
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    check-cast v6, Landroid/view/View;

    .line 256
    .line 257
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 262
    .line 263
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 264
    .line 265
    if-ne v10, v2, :cond_c

    .line 266
    .line 267
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 272
    .line 273
    .line 274
    move-result v11

    .line 275
    sub-int/2addr v10, v11

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 277
    .line 278
    .line 279
    move-result v11

    .line 280
    sub-int/2addr v10, v11

    .line 281
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 282
    .line 283
    sub-int/2addr v10, v11

    .line 284
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 285
    .line 286
    sub-int/2addr v10, v11

    .line 287
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    goto :goto_c

    .line 292
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    add-int/2addr v11, v10

    .line 301
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 302
    .line 303
    add-int/2addr v11, v10

    .line 304
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 305
    .line 306
    add-int/2addr v11, v10

    .line 307
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 308
    .line 309
    invoke-static {v3, v11, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    :goto_c
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 314
    .line 315
    if-ne v11, v2, :cond_d

    .line 316
    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 318
    .line 319
    .line 320
    move-result v11

    .line 321
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 322
    .line 323
    .line 324
    move-result v12

    .line 325
    sub-int/2addr v11, v12

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 327
    .line 328
    .line 329
    move-result v12

    .line 330
    sub-int/2addr v11, v12

    .line 331
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 332
    .line 333
    sub-int/2addr v11, v12

    .line 334
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 335
    .line 336
    sub-int/2addr v11, v9

    .line 337
    invoke-static {v11, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    goto :goto_d

    .line 342
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 343
    .line 344
    .line 345
    move-result v11

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 347
    .line 348
    .line 349
    move-result v12

    .line 350
    add-int/2addr v12, v11

    .line 351
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 352
    .line 353
    add-int/2addr v12, v11

    .line 354
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 355
    .line 356
    add-int/2addr v12, v11

    .line 357
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 358
    .line 359
    invoke-static {v4, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    :goto_d
    invoke-virtual {v6, v10, v9}, Landroid/view/View;->measure(II)V

    .line 364
    .line 365
    .line 366
    add-int/lit8 v7, v7, 0x1

    .line 367
    .line 368
    goto :goto_b

    .line 369
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 370
    .line 371
    .line 372
    return-void
.end method
