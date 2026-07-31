.class public final Landroidx/recyclerview/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/recyclerview/widget/FastScroller$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/recyclerview/widget/FastScroller$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, v0, Landroidx/recyclerview/widget/FastScroller$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 13
    .line 14
    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast v4, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 19
    .line 20
    iget-object v1, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 21
    .line 22
    if-eqz v1, :cond_d

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    iget-wide v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 29
    .line 30
    const-wide/high16 v9, -0x8000000000000000L

    .line 31
    .line 32
    cmp-long v1, v7, v9

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const-wide/16 v7, 0x0

    .line 37
    .line 38
    :goto_0
    move-wide/from16 v16, v7

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    sub-long v7, v5, v7

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    iget-object v1, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    if-nez v7, :cond_1

    .line 53
    .line 54
    new-instance v7, Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 60
    .line 61
    :cond_1
    iget-object v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 62
    .line 63
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 64
    .line 65
    iget-object v8, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 66
    .line 67
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    if-nez v11, :cond_2

    .line 70
    .line 71
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {v11, v7}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_4

    .line 87
    .line 88
    iget v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 89
    .line 90
    iget v8, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 91
    .line 92
    add-float/2addr v7, v8

    .line 93
    float-to-int v7, v7

    .line 94
    iget-object v8, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 95
    .line 96
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 97
    .line 98
    sub-int v8, v7, v8

    .line 99
    .line 100
    iget-object v11, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    sub-int/2addr v8, v11

    .line 107
    iget v11, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 108
    .line 109
    cmpg-float v12, v11, v2

    .line 110
    .line 111
    if-gez v12, :cond_3

    .line 112
    .line 113
    if-gez v8, :cond_3

    .line 114
    .line 115
    :goto_3
    move v14, v8

    .line 116
    goto :goto_4

    .line 117
    :cond_3
    cmpl-float v8, v11, v2

    .line 118
    .line 119
    if-lez v8, :cond_4

    .line 120
    .line 121
    iget-object v8, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 122
    .line 123
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 124
    .line 125
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    add-int/2addr v8, v7

    .line 130
    iget-object v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 131
    .line 132
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 133
    .line 134
    add-int/2addr v8, v7

    .line 135
    iget-object v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    iget-object v11, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    .line 143
    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    sub-int/2addr v7, v11

    .line 148
    sub-int/2addr v8, v7

    .line 149
    if-lez v8, :cond_4

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_4
    move v14, v3

    .line 153
    :goto_4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_6

    .line 158
    .line 159
    iget v1, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 160
    .line 161
    iget v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 162
    .line 163
    add-float/2addr v1, v7

    .line 164
    float-to-int v1, v1

    .line 165
    iget-object v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 166
    .line 167
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    sub-int v7, v1, v7

    .line 170
    .line 171
    iget-object v8, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    .line 173
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    sub-int/2addr v7, v8

    .line 178
    iget v8, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 179
    .line 180
    cmpg-float v11, v8, v2

    .line 181
    .line 182
    if-gez v11, :cond_5

    .line 183
    .line 184
    if-gez v7, :cond_5

    .line 185
    .line 186
    move v3, v7

    .line 187
    goto :goto_5

    .line 188
    :cond_5
    cmpl-float v2, v8, v2

    .line 189
    .line 190
    if-lez v2, :cond_6

    .line 191
    .line 192
    iget-object v2, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 193
    .line 194
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 195
    .line 196
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    add-int/2addr v2, v1

    .line 201
    iget-object v1, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 202
    .line 203
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 204
    .line 205
    add-int/2addr v2, v1

    .line 206
    iget-object v1, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    iget-object v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 213
    .line 214
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    sub-int/2addr v1, v7

    .line 219
    sub-int/2addr v2, v1

    .line 220
    if-lez v2, :cond_6

    .line 221
    .line 222
    move v3, v2

    .line 223
    :cond_6
    :goto_5
    if-eqz v14, :cond_7

    .line 224
    .line 225
    iget-object v11, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 226
    .line 227
    iget-object v12, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    .line 229
    iget-object v1, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 230
    .line 231
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 232
    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    iget-object v1, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 240
    .line 241
    .line 242
    move-result v15

    .line 243
    invoke-virtual/range {v11 .. v17}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    :cond_7
    move v1, v14

    .line 248
    if-eqz v3, :cond_8

    .line 249
    .line 250
    iget-object v11, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 251
    .line 252
    iget-object v12, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 253
    .line 254
    iget-object v2, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 255
    .line 256
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 257
    .line 258
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 259
    .line 260
    .line 261
    move-result v13

    .line 262
    iget-object v2, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 263
    .line 264
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 265
    .line 266
    .line 267
    move-result v15

    .line 268
    move v14, v3

    .line 269
    invoke-virtual/range {v11 .. v17}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    goto :goto_6

    .line 274
    :cond_8
    move v14, v3

    .line 275
    :goto_6
    if-nez v1, :cond_a

    .line 276
    .line 277
    if-eqz v3, :cond_9

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_9
    iput-wide v9, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_a
    :goto_7
    iget-wide v7, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 284
    .line 285
    cmp-long v2, v7, v9

    .line 286
    .line 287
    if-nez v2, :cond_b

    .line 288
    .line 289
    iput-wide v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 290
    .line 291
    :cond_b
    iget-object v2, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 292
    .line 293
    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 297
    .line 298
    if-eqz v1, :cond_c

    .line 299
    .line 300
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 301
    .line 302
    .line 303
    :cond_c
    iget-object v1, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 304
    .line 305
    iget-object v2, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 308
    .line 309
    .line 310
    iget-object v1, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 311
    .line 312
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 313
    .line 314
    invoke-virtual {v1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 315
    .line 316
    .line 317
    :cond_d
    :goto_8
    return-void

    .line 318
    :pswitch_1
    check-cast v4, Landroidx/recyclerview/widget/FastScroller;

    .line 319
    .line 320
    iget-object v0, v4, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 321
    .line 322
    iget v1, v4, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 323
    .line 324
    const/4 v5, 0x2

    .line 325
    const/4 v6, 0x1

    .line 326
    if-eq v1, v6, :cond_e

    .line 327
    .line 328
    if-eq v1, v5, :cond_f

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_e
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 332
    .line 333
    .line 334
    :cond_f
    const/4 v1, 0x3

    .line 335
    iput v1, v4, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    check-cast v1, Ljava/lang/Float;

    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    new-array v4, v5, [F

    .line 348
    .line 349
    aput v1, v4, v3

    .line 350
    .line 351
    aput v2, v4, v6

    .line 352
    .line 353
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 354
    .line 355
    .line 356
    const-wide/16 v1, 0x1f4

    .line 357
    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 362
    .line 363
    .line 364
    :goto_9
    return-void

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
