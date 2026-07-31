.class public final Landroidx/recyclerview/widget/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, -0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 14
    .line 15
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_5

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchX:F

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchY:F

    .line 43
    .line 44
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 56
    .line 57
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 58
    .line 59
    if-nez v0, :cond_8

    .line 60
    .line 61
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    sub-int/2addr v4, v3

    .line 79
    :goto_0
    if-ltz v4, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;

    .line 86
    .line 87
    iget-object v7, v6, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 88
    .line 89
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 90
    .line 91
    if-ne v7, v1, :cond_2

    .line 92
    .line 93
    move-object v5, v6

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    :goto_1
    if-eqz v5, :cond_8

    .line 99
    .line 100
    iget-object v0, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 101
    .line 102
    iget v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchX:F

    .line 103
    .line 104
    iget v4, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 105
    .line 106
    sub-float/2addr v1, v4

    .line 107
    iput v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchX:F

    .line 108
    .line 109
    iget v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchY:F

    .line 110
    .line 111
    iget v4, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 112
    .line 113
    sub-float/2addr v1, v4

    .line 114
    iput v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mInitialTouchY:F

    .line 115
    .line 116
    invoke-virtual {p0, v0, v3}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mPendingCleanup:Ljava/util/ArrayList;

    .line 120
    .line 121
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    iget-object v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 130
    .line 131
    iget-object v4, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    .line 133
    invoke-virtual {v1, v4, v0}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    iget v1, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 137
    .line 138
    invoke-virtual {p0, v0, v1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 139
    .line 140
    .line 141
    iget v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedFlags:I

    .line 142
    .line 143
    invoke-virtual {p0, v0, v2, p1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->updateDxDy(IILandroid/view/MotionEvent;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    if-eq v0, v1, :cond_7

    .line 148
    .line 149
    if-ne v0, v3, :cond_6

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    iget v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 153
    .line 154
    if-eq v1, v4, :cond_8

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-ltz v1, :cond_8

    .line 161
    .line 162
    invoke-virtual {p0, v0, v1, p1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->checkSelectForSwipe(IILandroid/view/MotionEvent;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    :goto_2
    iput v4, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 167
    .line 168
    invoke-virtual {p0, v5, v2}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_3
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 172
    .line 173
    if-eqz v0, :cond_9

    .line 174
    .line 175
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 179
    .line 180
    if-eqz p0, :cond_a

    .line 181
    .line 182
    move v2, v3

    .line 183
    :cond_a
    return v2

    .line 184
    :pswitch_0
    check-cast p0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 185
    .line 186
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 187
    .line 188
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_10

    .line 196
    .line 197
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 214
    .line 215
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 216
    .line 217
    if-eqz v0, :cond_b

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 220
    .line 221
    .line 222
    :cond_b
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 227
    .line 228
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 229
    .line 230
    if-nez v0, :cond_13

    .line 231
    .line 232
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_c

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_c
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    sub-int/2addr v4, v3

    .line 250
    :goto_4
    if-ltz v4, :cond_e

    .line 251
    .line 252
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    check-cast v6, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 257
    .line 258
    iget-object v7, v6, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 259
    .line 260
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 261
    .line 262
    if-ne v7, v1, :cond_d

    .line 263
    .line 264
    move-object v5, v6

    .line 265
    goto :goto_5

    .line 266
    :cond_d
    add-int/lit8 v4, v4, -0x1

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_e
    :goto_5
    if-eqz v5, :cond_13

    .line 270
    .line 271
    iget-object v0, v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 272
    .line 273
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 274
    .line 275
    iget v4, v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mX:F

    .line 276
    .line 277
    sub-float/2addr v1, v4

    .line 278
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 279
    .line 280
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 281
    .line 282
    iget v4, v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mY:F

    .line 283
    .line 284
    sub-float/2addr v1, v4

    .line 285
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 286
    .line 287
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 288
    .line 289
    .line 290
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/ArrayList;

    .line 291
    .line 292
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 293
    .line 294
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_f

    .line 299
    .line 300
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    .line 301
    .line 302
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 303
    .line 304
    invoke-virtual {v1, v4, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 305
    .line 306
    .line 307
    :cond_f
    iget v1, v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mActionState:I

    .line 308
    .line 309
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 310
    .line 311
    .line 312
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 313
    .line 314
    invoke-virtual {p0, v0, v2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(IILandroid/view/MotionEvent;)V

    .line 315
    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_10
    if-eq v0, v1, :cond_12

    .line 319
    .line 320
    if-ne v0, v3, :cond_11

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_11
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 324
    .line 325
    if-eq v1, v4, :cond_13

    .line 326
    .line 327
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-ltz v1, :cond_13

    .line 332
    .line 333
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkSelectForSwipe(IILandroid/view/MotionEvent;)V

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_12
    :goto_6
    iput v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 338
    .line 339
    invoke-virtual {p0, v5, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 340
    .line 341
    .line 342
    :cond_13
    :goto_7
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 343
    .line 344
    if-eqz v0, :cond_14

    .line 345
    .line 346
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 347
    .line 348
    .line 349
    :cond_14
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 350
    .line 351
    if-eqz p0, :cond_15

    .line 352
    .line 353
    move v2, v3

    .line 354
    :cond_15
    return v2

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 14
    .line 15
    invoke-virtual {p0, v2, v1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :pswitch_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    check-cast p0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 23
    .line 24
    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 8
    .line 9
    const/4 v5, -0x1

    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 16
    .line 17
    iget-object v0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mScrollRunnable:Landroidx/fragment/app/Fragment$1;

    .line 18
    .line 19
    iget-object v8, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 20
    .line 21
    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 22
    .line 23
    .line 24
    iget-object v8, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 25
    .line 26
    if-eqz v8, :cond_0

    .line 27
    .line 28
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget v8, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 32
    .line 33
    if-ne v8, v5, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    iget v9, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 41
    .line 42
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-ltz v9, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, v8, v9, p1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->checkSelectForSwipe(IILandroid/view/MotionEvent;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v10, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 52
    .line 53
    if-nez v10, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    if-eq v8, v6, :cond_8

    .line 57
    .line 58
    if-eq v8, v4, :cond_7

    .line 59
    .line 60
    if-eq v8, v3, :cond_6

    .line 61
    .line 62
    if-eq v8, v2, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget v2, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 74
    .line 75
    if-ne v1, v2, :cond_9

    .line 76
    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    move v6, v7

    .line 81
    :goto_0
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iput v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 86
    .line 87
    iget v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedFlags:I

    .line 88
    .line 89
    invoke-virtual {p0, v1, v0, p1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->updateDxDy(IILandroid/view/MotionEvent;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    iget-object p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 94
    .line 95
    if-eqz p1, :cond_8

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_7
    if-ltz v9, :cond_9

    .line 102
    .line 103
    iget v1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedFlags:I

    .line 104
    .line 105
    invoke-virtual {p0, v1, v9, p1}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->updateDxDy(IILandroid/view/MotionEvent;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v10}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment$1;->run()V

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_8
    :goto_1
    invoke-virtual {p0, v1, v7}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 126
    .line 127
    .line 128
    iput v5, p0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mActivePointerId:I

    .line 129
    .line 130
    :cond_9
    :goto_2
    return-void

    .line 131
    :pswitch_0
    check-cast p0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 132
    .line 133
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Landroidx/fragment/app/Fragment$1;

    .line 134
    .line 135
    iget-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 136
    .line 137
    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 138
    .line 139
    .line 140
    iget-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 141
    .line 142
    if-eqz v8, :cond_a

    .line 143
    .line 144
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 145
    .line 146
    .line 147
    :cond_a
    iget v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 148
    .line 149
    if-ne v8, v5, :cond_b

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    iget v9, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 157
    .line 158
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-ltz v9, :cond_c

    .line 163
    .line 164
    invoke-virtual {p0, v8, v9, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkSelectForSwipe(IILandroid/view/MotionEvent;)V

    .line 165
    .line 166
    .line 167
    :cond_c
    iget-object v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 168
    .line 169
    if-nez v10, :cond_d

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_d
    if-eq v8, v6, :cond_12

    .line 173
    .line 174
    if-eq v8, v4, :cond_11

    .line 175
    .line 176
    if-eq v8, v3, :cond_10

    .line 177
    .line 178
    if-eq v8, v2, :cond_e

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 190
    .line 191
    if-ne v1, v2, :cond_13

    .line 192
    .line 193
    if-nez v0, :cond_f

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_f
    move v6, v7

    .line 197
    :goto_3
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 202
    .line 203
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 204
    .line 205
    invoke-virtual {p0, v1, v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(IILandroid/view/MotionEvent;)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_10
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 210
    .line 211
    if-eqz p1, :cond_12

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_11
    if-ltz v9, :cond_13

    .line 218
    .line 219
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 220
    .line 221
    invoke-virtual {p0, v1, v9, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(IILandroid/view/MotionEvent;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment$1;->run()V

    .line 233
    .line 234
    .line 235
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 236
    .line 237
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_12
    :goto_4
    invoke-virtual {p0, v1, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 242
    .line 243
    .line 244
    iput v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 245
    .line 246
    :cond_13
    :goto_5
    return-void

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
