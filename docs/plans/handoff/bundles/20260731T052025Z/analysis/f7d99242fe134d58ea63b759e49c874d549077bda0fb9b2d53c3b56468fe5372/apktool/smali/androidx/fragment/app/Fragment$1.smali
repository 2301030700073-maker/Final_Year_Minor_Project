.class public final Landroidx/fragment/app/Fragment$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/Fragment$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final run$androidx$preference$PreferenceGroup$1()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Landroidx/fragment/app/Fragment$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const-wide/high16 v3, -0x8000000000000000L

    .line 7
    .line 8
    const-wide/16 v5, 0x0

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x2

    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v11, 0x1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcom/fsck/k9/activity/MessageCompose;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string/jumbo v3, "waitingForAttachment"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/fsck/k9/fragment/ProgressDialogFragment;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2, v10, v10}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget v2, v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:I

    .line 47
    .line 48
    iput v11, v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:I

    .line 49
    .line 50
    invoke-static {v2}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eq v0, v11, :cond_2

    .line 55
    .line 56
    if-eq v0, v9, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->performSaveAfterChecks()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->performSendAfterChecks()V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 72
    .line 73
    :goto_1
    :try_start_0
    iget-object v1, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/fsck/k9/backend/imap/ImapSync;->cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_1
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lcom/bumptech/glide/RequestManager;

    .line 98
    .line 99
    iget-object v1, v0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    .line 100
    .line 101
    invoke-interface {v1, v0}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_2
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 108
    .line 109
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 110
    .line 111
    if-eqz v2, :cond_10

    .line 112
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v8

    .line 117
    iget-wide v11, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 118
    .line 119
    cmp-long v2, v11, v3

    .line 120
    .line 121
    if-nez v2, :cond_3

    .line 122
    .line 123
    :goto_2
    move-wide v15, v5

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    sub-long v5, v8, v11

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :goto_3
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    .line 130
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-nez v2, :cond_4

    .line 135
    .line 136
    goto/16 :goto_a

    .line 137
    .line 138
    :cond_4
    iget-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 139
    .line 140
    if-nez v5, :cond_5

    .line 141
    .line 142
    new-instance v5, Landroid/graphics/Rect;

    .line 143
    .line 144
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 148
    .line 149
    :cond_5
    iget-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 150
    .line 151
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 152
    .line 153
    iget-object v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 154
    .line 155
    invoke-virtual {v2, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_7

    .line 163
    .line 164
    iget v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartX:F

    .line 165
    .line 166
    iget v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 167
    .line 168
    add-float/2addr v5, v6

    .line 169
    float-to-int v5, v5

    .line 170
    iget-object v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 171
    .line 172
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 173
    .line 174
    sub-int v6, v5, v6

    .line 175
    .line 176
    iget-object v11, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    .line 178
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    sub-int/2addr v6, v11

    .line 183
    iget v11, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDx:F

    .line 184
    .line 185
    cmpg-float v12, v11, v7

    .line 186
    .line 187
    if-gez v12, :cond_6

    .line 188
    .line 189
    if-gez v6, :cond_6

    .line 190
    .line 191
    :goto_4
    move v14, v6

    .line 192
    goto :goto_5

    .line 193
    :cond_6
    cmpl-float v6, v11, v7

    .line 194
    .line 195
    if-lez v6, :cond_7

    .line 196
    .line 197
    iget-object v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 198
    .line 199
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 200
    .line 201
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    add-int/2addr v6, v5

    .line 206
    iget-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 207
    .line 208
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 209
    .line 210
    add-int/2addr v6, v5

    .line 211
    iget-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    .line 213
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    iget-object v11, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 218
    .line 219
    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    sub-int/2addr v5, v11

    .line 224
    sub-int/2addr v6, v5

    .line 225
    if-lez v6, :cond_7

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_7
    move v14, v10

    .line 229
    :goto_5
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_9

    .line 234
    .line 235
    iget v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelectedStartY:F

    .line 236
    .line 237
    iget v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 238
    .line 239
    add-float/2addr v2, v5

    .line 240
    float-to-int v2, v2

    .line 241
    iget-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 242
    .line 243
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 244
    .line 245
    sub-int v5, v2, v5

    .line 246
    .line 247
    iget-object v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 248
    .line 249
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    sub-int/2addr v5, v6

    .line 254
    iget v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDy:F

    .line 255
    .line 256
    cmpg-float v11, v6, v7

    .line 257
    .line 258
    if-gez v11, :cond_8

    .line 259
    .line 260
    if-gez v5, :cond_8

    .line 261
    .line 262
    :goto_6
    move v10, v5

    .line 263
    goto :goto_7

    .line 264
    :cond_8
    cmpl-float v5, v6, v7

    .line 265
    .line 266
    if-lez v5, :cond_9

    .line 267
    .line 268
    iget-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 269
    .line 270
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 271
    .line 272
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    add-int/2addr v5, v2

    .line 277
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 278
    .line 279
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 280
    .line 281
    add-int/2addr v5, v2

    .line 282
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 283
    .line 284
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    iget-object v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 289
    .line 290
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    sub-int/2addr v2, v6

    .line 295
    sub-int/2addr v5, v2

    .line 296
    if-lez v5, :cond_9

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_9
    :goto_7
    if-eqz v14, :cond_a

    .line 300
    .line 301
    iget-object v11, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 302
    .line 303
    iget-object v12, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 304
    .line 305
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 306
    .line 307
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 308
    .line 309
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 310
    .line 311
    .line 312
    move-result v13

    .line 313
    invoke-virtual/range {v11 .. v16}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 314
    .line 315
    .line 316
    move-result v14

    .line 317
    :cond_a
    move v2, v14

    .line 318
    if-eqz v10, :cond_b

    .line 319
    .line 320
    iget-object v11, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 321
    .line 322
    iget-object v12, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 323
    .line 324
    iget-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 325
    .line 326
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 327
    .line 328
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 329
    .line 330
    .line 331
    move-result v13

    .line 332
    move v14, v10

    .line 333
    invoke-virtual/range {v11 .. v16}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 334
    .line 335
    .line 336
    move-result v10

    .line 337
    goto :goto_8

    .line 338
    :cond_b
    move v14, v10

    .line 339
    :goto_8
    if-nez v2, :cond_d

    .line 340
    .line 341
    if-eqz v10, :cond_c

    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_c
    iput-wide v3, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_d
    :goto_9
    iget-wide v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 348
    .line 349
    cmp-long v3, v5, v3

    .line 350
    .line 351
    if-nez v3, :cond_e

    .line 352
    .line 353
    iput-wide v8, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 354
    .line 355
    :cond_e
    iget-object v3, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 356
    .line 357
    invoke-virtual {v3, v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 358
    .line 359
    .line 360
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 361
    .line 362
    if-eqz v2, :cond_f

    .line 363
    .line 364
    invoke-virtual {v0, v2}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 365
    .line 366
    .line 367
    :cond_f
    iget-object v2, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 368
    .line 369
    iget-object v3, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mScrollRunnable:Landroidx/fragment/app/Fragment$1;

    .line 370
    .line 371
    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    .line 373
    .line 374
    iget-object v0, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 377
    .line 378
    .line 379
    :cond_10
    :goto_a
    return-void

    .line 380
    :pswitch_3
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 383
    .line 384
    iput-boolean v10, v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mIsInGracePeriod:Z

    .line 385
    .line 386
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->gcFragments()V

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :pswitch_4
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 393
    .line 394
    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :pswitch_5
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 404
    .line 405
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 406
    .line 407
    .line 408
    return-void

    .line 409
    :pswitch_6
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 412
    .line 413
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 414
    .line 415
    if-eqz v2, :cond_1d

    .line 416
    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 418
    .line 419
    .line 420
    move-result-wide v8

    .line 421
    iget-wide v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 422
    .line 423
    cmp-long v2, v11, v3

    .line 424
    .line 425
    if-nez v2, :cond_11

    .line 426
    .line 427
    :goto_b
    move-wide v15, v5

    .line 428
    goto :goto_c

    .line 429
    :cond_11
    sub-long v5, v8, v11

    .line 430
    .line 431
    goto :goto_b

    .line 432
    :goto_c
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 433
    .line 434
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    iget-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 439
    .line 440
    if-nez v5, :cond_12

    .line 441
    .line 442
    new-instance v5, Landroid/graphics/Rect;

    .line 443
    .line 444
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 445
    .line 446
    .line 447
    iput-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 448
    .line 449
    :cond_12
    iget-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 450
    .line 451
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 452
    .line 453
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 454
    .line 455
    invoke-virtual {v2, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-eqz v5, :cond_14

    .line 463
    .line 464
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 465
    .line 466
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 467
    .line 468
    add-float/2addr v5, v6

    .line 469
    float-to-int v5, v5

    .line 470
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 471
    .line 472
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 473
    .line 474
    sub-int v6, v5, v6

    .line 475
    .line 476
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 477
    .line 478
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    .line 479
    .line 480
    .line 481
    move-result v11

    .line 482
    sub-int/2addr v6, v11

    .line 483
    iget v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 484
    .line 485
    cmpg-float v12, v11, v7

    .line 486
    .line 487
    if-gez v12, :cond_13

    .line 488
    .line 489
    if-gez v6, :cond_13

    .line 490
    .line 491
    :goto_d
    move v14, v6

    .line 492
    goto :goto_e

    .line 493
    :cond_13
    cmpl-float v6, v11, v7

    .line 494
    .line 495
    if-lez v6, :cond_14

    .line 496
    .line 497
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 498
    .line 499
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 500
    .line 501
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    add-int/2addr v6, v5

    .line 506
    iget-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 507
    .line 508
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 509
    .line 510
    add-int/2addr v6, v5

    .line 511
    iget-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 512
    .line 513
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 518
    .line 519
    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    sub-int/2addr v5, v11

    .line 524
    sub-int/2addr v6, v5

    .line 525
    if-lez v6, :cond_14

    .line 526
    .line 527
    goto :goto_d

    .line 528
    :cond_14
    move v14, v10

    .line 529
    :goto_e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_16

    .line 534
    .line 535
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 536
    .line 537
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 538
    .line 539
    add-float/2addr v2, v5

    .line 540
    float-to-int v2, v2

    .line 541
    iget-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 542
    .line 543
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 544
    .line 545
    sub-int v5, v2, v5

    .line 546
    .line 547
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 548
    .line 549
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    sub-int/2addr v5, v6

    .line 554
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 555
    .line 556
    cmpg-float v11, v6, v7

    .line 557
    .line 558
    if-gez v11, :cond_15

    .line 559
    .line 560
    if-gez v5, :cond_15

    .line 561
    .line 562
    :goto_f
    move v10, v5

    .line 563
    goto :goto_10

    .line 564
    :cond_15
    cmpl-float v5, v6, v7

    .line 565
    .line 566
    if-lez v5, :cond_16

    .line 567
    .line 568
    iget-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 569
    .line 570
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 571
    .line 572
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    add-int/2addr v5, v2

    .line 577
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 578
    .line 579
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 580
    .line 581
    add-int/2addr v5, v2

    .line 582
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 583
    .line 584
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 585
    .line 586
    .line 587
    move-result v2

    .line 588
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 589
    .line 590
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    sub-int/2addr v2, v6

    .line 595
    sub-int/2addr v5, v2

    .line 596
    if-lez v5, :cond_16

    .line 597
    .line 598
    goto :goto_f

    .line 599
    :cond_16
    :goto_10
    if-eqz v14, :cond_17

    .line 600
    .line 601
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    .line 602
    .line 603
    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 604
    .line 605
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 606
    .line 607
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 608
    .line 609
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 610
    .line 611
    .line 612
    move-result v13

    .line 613
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 614
    .line 615
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 616
    .line 617
    .line 618
    invoke-virtual/range {v11 .. v16}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 619
    .line 620
    .line 621
    move-result v14

    .line 622
    :cond_17
    move v2, v14

    .line 623
    if-eqz v10, :cond_18

    .line 624
    .line 625
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    .line 626
    .line 627
    iget-object v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 628
    .line 629
    iget-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 630
    .line 631
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 632
    .line 633
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 634
    .line 635
    .line 636
    move-result v13

    .line 637
    iget-object v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 638
    .line 639
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 640
    .line 641
    .line 642
    move v14, v10

    .line 643
    invoke-virtual/range {v11 .. v16}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 644
    .line 645
    .line 646
    move-result v10

    .line 647
    goto :goto_11

    .line 648
    :cond_18
    move v14, v10

    .line 649
    :goto_11
    if-nez v2, :cond_1a

    .line 650
    .line 651
    if-eqz v10, :cond_19

    .line 652
    .line 653
    goto :goto_12

    .line 654
    :cond_19
    iput-wide v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 655
    .line 656
    goto :goto_13

    .line 657
    :cond_1a
    :goto_12
    iget-wide v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 658
    .line 659
    cmp-long v3, v5, v3

    .line 660
    .line 661
    if-nez v3, :cond_1b

    .line 662
    .line 663
    iput-wide v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 664
    .line 665
    :cond_1b
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 666
    .line 667
    invoke-virtual {v3, v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 668
    .line 669
    .line 670
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 671
    .line 672
    if-eqz v2, :cond_1c

    .line 673
    .line 674
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 675
    .line 676
    .line 677
    :cond_1c
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 678
    .line 679
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Landroidx/fragment/app/Fragment$1;

    .line 680
    .line 681
    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 682
    .line 683
    .line 684
    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 685
    .line 686
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 687
    .line 688
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 689
    .line 690
    .line 691
    :cond_1d
    :goto_13
    return-void

    .line 692
    :pswitch_7
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 693
    .line 694
    check-cast v0, Landroidx/recyclerview/widget/FastScroller;

    .line 695
    .line 696
    iget-object v1, v0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 697
    .line 698
    iget v3, v0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 699
    .line 700
    if-eq v3, v11, :cond_1e

    .line 701
    .line 702
    if-eq v3, v9, :cond_1f

    .line 703
    .line 704
    goto :goto_14

    .line 705
    :cond_1e
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 706
    .line 707
    .line 708
    :cond_1f
    iput v2, v0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 709
    .line 710
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    check-cast v0, Ljava/lang/Float;

    .line 715
    .line 716
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    new-array v2, v9, [F

    .line 721
    .line 722
    aput v0, v2, v10

    .line 723
    .line 724
    aput v7, v2, v11

    .line 725
    .line 726
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 727
    .line 728
    .line 729
    const-wide/16 v2, 0x1f4

    .line 730
    .line 731
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 735
    .line 736
    .line 737
    :goto_14
    return-void

    .line 738
    :pswitch_8
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 739
    .line 740
    check-cast v0, Landroidx/preference/PreferenceGroupAdapter;

    .line 741
    .line 742
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V

    .line 743
    .line 744
    .line 745
    return-void

    .line 746
    :pswitch_9
    invoke-direct {v1}, Landroidx/fragment/app/Fragment$1;->run$androidx$preference$PreferenceGroup$1()V

    .line 747
    .line 748
    .line 749
    return-void

    .line 750
    :pswitch_a
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 751
    .line 752
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 753
    .line 754
    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 755
    .line 756
    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 757
    .line 758
    .line 759
    return-void

    .line 760
    :pswitch_b
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 761
    .line 762
    check-cast v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    .line 763
    .line 764
    invoke-virtual {v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->scheduleShowSoftInputInner()V

    .line 765
    .line 766
    .line 767
    return-void

    .line 768
    :pswitch_c
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 769
    .line 770
    check-cast v0, Landroidx/fragment/app/FragmentManager;

    .line 771
    .line 772
    invoke-virtual {v0, v11}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 773
    .line 774
    .line 775
    return-void

    .line 776
    :pswitch_d
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 779
    .line 780
    iget-object v1, v0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroidx/fragment/app/DialogFragment$3;

    .line 781
    .line 782
    iget-object v0, v0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 783
    .line 784
    invoke-virtual {v1, v0}, Landroidx/fragment/app/DialogFragment$3;->onDismiss(Landroid/content/DialogInterface;)V

    .line 785
    .line 786
    .line 787
    return-void

    .line 788
    :pswitch_e
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 789
    .line 790
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 791
    .line 792
    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 793
    .line 794
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 795
    .line 796
    iget v3, v3, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 797
    .line 798
    iget v4, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 799
    .line 800
    if-ne v4, v2, :cond_20

    .line 801
    .line 802
    move v5, v11

    .line 803
    goto :goto_15

    .line 804
    :cond_20
    move v5, v10

    .line 805
    :goto_15
    const/4 v6, 0x5

    .line 806
    if-eqz v5, :cond_22

    .line 807
    .line 808
    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 809
    .line 810
    .line 811
    move-result-object v7

    .line 812
    if-eqz v7, :cond_21

    .line 813
    .line 814
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 815
    .line 816
    .line 817
    move-result v8

    .line 818
    neg-int v8, v8

    .line 819
    goto :goto_16

    .line 820
    :cond_21
    move v8, v10

    .line 821
    :goto_16
    add-int/2addr v8, v3

    .line 822
    goto :goto_17

    .line 823
    :cond_22
    invoke-virtual {v1, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 824
    .line 825
    .line 826
    move-result-object v7

    .line 827
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 828
    .line 829
    .line 830
    move-result v8

    .line 831
    sub-int/2addr v8, v3

    .line 832
    :goto_17
    if-eqz v7, :cond_28

    .line 833
    .line 834
    if-eqz v5, :cond_23

    .line 835
    .line 836
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 837
    .line 838
    .line 839
    move-result v3

    .line 840
    if-lt v3, v8, :cond_24

    .line 841
    .line 842
    :cond_23
    if-nez v5, :cond_28

    .line 843
    .line 844
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    if-le v3, v8, :cond_28

    .line 849
    .line 850
    :cond_24
    invoke-virtual {v1, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    if-nez v3, :cond_28

    .line 855
    .line 856
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 857
    .line 858
    .line 859
    move-result-object v3

    .line 860
    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 861
    .line 862
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 863
    .line 864
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 865
    .line 866
    .line 867
    move-result v5

    .line 868
    invoke-virtual {v0, v7, v8, v5}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 869
    .line 870
    .line 871
    iput-boolean v11, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 872
    .line 873
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 874
    .line 875
    .line 876
    if-ne v4, v2, :cond_25

    .line 877
    .line 878
    move v2, v6

    .line 879
    :cond_25
    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    if-eqz v0, :cond_26

    .line 884
    .line 885
    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 886
    .line 887
    .line 888
    :cond_26
    iget-boolean v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 889
    .line 890
    if-nez v0, :cond_28

    .line 891
    .line 892
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 893
    .line 894
    .line 895
    move-result-wide v2

    .line 896
    const/4 v8, 0x0

    .line 897
    const/4 v9, 0x0

    .line 898
    const/4 v6, 0x3

    .line 899
    const/4 v7, 0x0

    .line 900
    move-wide v4, v2

    .line 901
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    :goto_18
    if-ge v10, v2, :cond_27

    .line 910
    .line 911
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 916
    .line 917
    .line 918
    add-int/lit8 v10, v10, 0x1

    .line 919
    .line 920
    goto :goto_18

    .line 921
    :cond_27
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 922
    .line 923
    .line 924
    iput-boolean v11, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 925
    .line 926
    :cond_28
    return-void

    .line 927
    :pswitch_f
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 928
    .line 929
    check-cast v0, Landroidx/customview/widget/ViewDragHelper;

    .line 930
    .line 931
    invoke-virtual {v0, v10}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 932
    .line 933
    .line 934
    return-void

    .line 935
    :pswitch_10
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 936
    .line 937
    check-cast v0, Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 938
    .line 939
    iget-object v2, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$1:Landroidx/appcompat/widget/DropDownListView;

    .line 940
    .line 941
    iget-object v3, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 942
    .line 943
    iget-boolean v4, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    .line 944
    .line 945
    if-nez v4, :cond_29

    .line 946
    .line 947
    goto/16 :goto_1a

    .line 948
    .line 949
    :cond_29
    iget-boolean v4, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    .line 950
    .line 951
    if-eqz v4, :cond_2a

    .line 952
    .line 953
    iput-boolean v10, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    .line 954
    .line 955
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 956
    .line 957
    .line 958
    move-result-wide v7

    .line 959
    iput-wide v7, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 960
    .line 961
    const-wide/16 v11, -0x1

    .line 962
    .line 963
    iput-wide v11, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 964
    .line 965
    iput-wide v7, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 966
    .line 967
    const/high16 v4, 0x3f000000    # 0.5f

    .line 968
    .line 969
    iput v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 970
    .line 971
    :cond_2a
    iget-wide v7, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 972
    .line 973
    cmp-long v4, v7, v5

    .line 974
    .line 975
    if-lez v4, :cond_2b

    .line 976
    .line 977
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 978
    .line 979
    .line 980
    move-result-wide v7

    .line 981
    iget-wide v11, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 982
    .line 983
    iget v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 984
    .line 985
    int-to-long v13, v4

    .line 986
    add-long/2addr v11, v13

    .line 987
    cmp-long v4, v7, v11

    .line 988
    .line 989
    if-lez v4, :cond_2b

    .line 990
    .line 991
    goto :goto_19

    .line 992
    :cond_2b
    invoke-virtual {v0}, Landroidx/core/widget/ListViewAutoScrollHelper;->shouldAnimate()Z

    .line 993
    .line 994
    .line 995
    move-result v4

    .line 996
    if-nez v4, :cond_2c

    .line 997
    .line 998
    :goto_19
    iput-boolean v10, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    .line 999
    .line 1000
    goto :goto_1a

    .line 1001
    :cond_2c
    iget-boolean v4, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    .line 1002
    .line 1003
    if-eqz v4, :cond_2d

    .line 1004
    .line 1005
    iput-boolean v10, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    .line 1006
    .line 1007
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1008
    .line 1009
    .line 1010
    move-result-wide v11

    .line 1011
    const/16 v17, 0x0

    .line 1012
    .line 1013
    const/16 v18, 0x0

    .line 1014
    .line 1015
    const/4 v15, 0x3

    .line 1016
    const/16 v16, 0x0

    .line 1017
    .line 1018
    move-wide v13, v11

    .line 1019
    invoke-static/range {v11 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v4

    .line 1023
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/DropDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 1027
    .line 1028
    .line 1029
    :cond_2d
    iget-wide v7, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 1030
    .line 1031
    cmp-long v4, v7, v5

    .line 1032
    .line 1033
    if-eqz v4, :cond_2e

    .line 1034
    .line 1035
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 1036
    .line 1037
    .line 1038
    move-result-wide v4

    .line 1039
    invoke-virtual {v3, v4, v5}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    .line 1040
    .line 1041
    .line 1042
    move-result v6

    .line 1043
    const/high16 v7, -0x3f800000    # -4.0f

    .line 1044
    .line 1045
    mul-float/2addr v7, v6

    .line 1046
    mul-float/2addr v7, v6

    .line 1047
    const/high16 v8, 0x40800000    # 4.0f

    .line 1048
    .line 1049
    mul-float/2addr v6, v8

    .line 1050
    add-float/2addr v6, v7

    .line 1051
    iget-wide v7, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 1052
    .line 1053
    sub-long v7, v4, v7

    .line 1054
    .line 1055
    iput-wide v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 1056
    .line 1057
    long-to-float v4, v7

    .line 1058
    mul-float/2addr v4, v6

    .line 1059
    iget v3, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 1060
    .line 1061
    mul-float/2addr v4, v3

    .line 1062
    float-to-int v3, v4

    .line 1063
    iget-object v0, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroidx/appcompat/widget/DropDownListView;

    .line 1064
    .line 1065
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 1066
    .line 1067
    .line 1068
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1069
    .line 1070
    invoke-virtual {v2, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1071
    .line 1072
    .line 1073
    goto :goto_1a

    .line 1074
    :cond_2e
    const-string v0, "Cannot compute scroll delta before calling start()"

    .line 1075
    .line 1076
    invoke-static {v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    :goto_1a
    return-void

    .line 1080
    :pswitch_11
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1081
    .line 1082
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1083
    .line 1084
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1085
    .line 1086
    .line 1087
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 1088
    .line 1089
    if-eqz v2, :cond_30

    .line 1090
    .line 1091
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1092
    .line 1093
    .line 1094
    move-result v1

    .line 1095
    const/16 v3, 0xa

    .line 1096
    .line 1097
    if-eq v1, v3, :cond_30

    .line 1098
    .line 1099
    if-eq v1, v11, :cond_30

    .line 1100
    .line 1101
    const/4 v3, 0x7

    .line 1102
    if-eq v1, v3, :cond_2f

    .line 1103
    .line 1104
    const/16 v4, 0x9

    .line 1105
    .line 1106
    if-eq v1, v4, :cond_2f

    .line 1107
    .line 1108
    move v3, v9

    .line 1109
    :cond_2f
    iget-wide v4, v0, Landroidx/compose/ui/platform/AndroidComposeView;->relayoutTime:J

    .line 1110
    .line 1111
    const/4 v6, 0x0

    .line 1112
    move-object v1, v0

    .line 1113
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/platform/AndroidComposeView;->sendSimulatedEvent(Landroid/view/MotionEvent;IJZ)V

    .line 1114
    .line 1115
    .line 1116
    :cond_30
    return-void

    .line 1117
    :pswitch_12
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1118
    .line 1119
    check-cast v0, Landroidx/camera/core/impl/utils/futures/ListFuture;

    .line 1120
    .line 1121
    iput-object v8, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/ArrayList;

    .line 1122
    .line 1123
    iput-object v8, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mFutures:Ljava/util/ArrayList;

    .line 1124
    .line 1125
    return-void

    .line 1126
    :pswitch_13
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1127
    .line 1128
    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1129
    .line 1130
    invoke-interface {v0, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1131
    .line 1132
    .line 1133
    return-void

    .line 1134
    :pswitch_14
    :try_start_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment$1;->workOnQueue()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 1135
    .line 1136
    .line 1137
    return-void

    .line 1138
    :catch_1
    move-exception v0

    .line 1139
    iget-object v2, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1140
    .line 1141
    check-cast v2, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 1142
    .line 1143
    iget-object v2, v2, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/ArrayDeque;

    .line 1144
    .line 1145
    monitor-enter v2

    .line 1146
    :try_start_2
    iget-object v1, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1147
    .line 1148
    check-cast v1, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 1149
    .line 1150
    iput v11, v1, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:I

    .line 1151
    .line 1152
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1153
    throw v0

    .line 1154
    :catchall_0
    move-exception v0

    .line 1155
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1156
    throw v0

    .line 1157
    :pswitch_15
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1158
    .line 1159
    check-cast v0, Landroidx/core/view/MenuHostHelper;

    .line 1160
    .line 1161
    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 1162
    .line 1163
    check-cast v1, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$HandlerScheduledFuture;

    .line 1164
    .line 1165
    iget-object v2, v1, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$HandlerScheduledFuture;->mCompleter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1166
    .line 1167
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v2

    .line 1171
    if-eqz v2, :cond_31

    .line 1172
    .line 1173
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 1174
    .line 1175
    check-cast v0, Landroid/os/Handler;

    .line 1176
    .line 1177
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1178
    .line 1179
    .line 1180
    :cond_31
    return-void

    .line 1181
    :pswitch_16
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1182
    .line 1183
    check-cast v0, Landroidx/biometric/FingerprintDialogFragment;

    .line 1184
    .line 1185
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v1

    .line 1189
    if-nez v1, :cond_32

    .line 1190
    .line 1191
    const-string v0, "FingerprintFragment"

    .line 1192
    .line 1193
    const-string v1, "Not resetting the dialog. Context is null."

    .line 1194
    .line 1195
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    .line 1197
    .line 1198
    goto :goto_1b

    .line 1199
    :cond_32
    iget-object v2, v0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 1200
    .line 1201
    invoke-virtual {v2, v11}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogState(I)V

    .line 1202
    .line 1203
    .line 1204
    iget-object v0, v0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 1205
    .line 1206
    const v2, 0x7f1202de

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogHelpMessage(Ljava/lang/CharSequence;)V

    .line 1214
    .line 1215
    .line 1216
    :goto_1b
    return-void

    .line 1217
    :pswitch_17
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1218
    .line 1219
    check-cast v0, Landroidx/biometric/BiometricFragment;

    .line 1220
    .line 1221
    iget-object v0, v0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 1222
    .line 1223
    iget-object v1, v0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/compose/ui/unit/IntRectKt;

    .line 1224
    .line 1225
    if-nez v1, :cond_33

    .line 1226
    .line 1227
    new-instance v1, Landroidx/biometric/BiometricViewModel$1;

    .line 1228
    .line 1229
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1230
    .line 1231
    .line 1232
    iput-object v1, v0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/compose/ui/unit/IntRectKt;

    .line 1233
    .line 1234
    :cond_33
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/compose/ui/unit/IntRectKt;

    .line 1235
    .line 1236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1237
    .line 1238
    .line 1239
    return-void

    .line 1240
    :pswitch_18
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1241
    .line 1242
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 1243
    .line 1244
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    .line 1245
    .line 1246
    .line 1247
    return-void

    .line 1248
    :pswitch_19
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1249
    .line 1250
    check-cast v0, Landroidx/appcompat/widget/DropDownListView;

    .line 1251
    .line 1252
    iput-object v8, v0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/fragment/app/Fragment$1;

    .line 1253
    .line 1254
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    .line 1255
    .line 1256
    .line 1257
    return-void

    .line 1258
    :pswitch_1a
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1259
    .line 1260
    check-cast v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    .line 1261
    .line 1262
    invoke-virtual {v0, v11}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->animate(Z)V

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1266
    .line 1267
    .line 1268
    return-void

    .line 1269
    :pswitch_1b
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1270
    .line 1271
    check-cast v0, Landroidx/appcompat/app/ToolbarActionBar;

    .line 1272
    .line 1273
    iget-object v1, v0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 1274
    .line 1275
    invoke-virtual {v0}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    instance-of v2, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1280
    .line 1281
    if-eqz v2, :cond_34

    .line 1282
    .line 1283
    move-object v2, v0

    .line 1284
    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1285
    .line 1286
    goto :goto_1c

    .line 1287
    :cond_34
    move-object v2, v8

    .line 1288
    :goto_1c
    if-eqz v2, :cond_35

    .line 1289
    .line 1290
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1291
    .line 1292
    .line 1293
    :cond_35
    :try_start_4
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 1294
    .line 1295
    .line 1296
    invoke-interface {v1, v10, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v3

    .line 1300
    if-eqz v3, :cond_36

    .line 1301
    .line 1302
    invoke-interface {v1, v10, v8, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 1303
    .line 1304
    .line 1305
    move-result v1

    .line 1306
    if-nez v1, :cond_37

    .line 1307
    .line 1308
    goto :goto_1d

    .line 1309
    :catchall_1
    move-exception v0

    .line 1310
    goto :goto_1e

    .line 1311
    :cond_36
    :goto_1d
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1312
    .line 1313
    .line 1314
    :cond_37
    if-eqz v2, :cond_38

    .line 1315
    .line 1316
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1317
    .line 1318
    .line 1319
    :cond_38
    return-void

    .line 1320
    :goto_1e
    if-eqz v2, :cond_39

    .line 1321
    .line 1322
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1323
    .line 1324
    .line 1325
    :cond_39
    throw v0

    .line 1326
    :pswitch_1c
    iget-object v0, v1, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 1327
    .line 1328
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1329
    .line 1330
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 1331
    .line 1332
    if-eqz v1, :cond_3a

    .line 1333
    .line 1334
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0

    .line 1338
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1339
    .line 1340
    .line 1341
    :cond_3a
    return-void

    .line 1342
    nop

    .line 1343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public workOnQueue()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 16
    .line 17
    iget v4, v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:I

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_3

    .line 35
    :cond_0
    :try_start_2
    iget-wide v6, v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunCount:J

    .line 36
    .line 37
    const-wide/16 v8, 0x1

    .line 38
    .line 39
    add-long/2addr v6, v8

    .line 40
    iput-wide v6, v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunCount:J

    .line 41
    .line 42
    iput v5, v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:I

    .line 43
    .line 44
    move v0, v3

    .line 45
    :cond_1
    iget-object v4, p0, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 48
    .line 49
    iget-object v4, v4, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/Runnable;

    .line 56
    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    iget-object p0, p0, Landroidx/fragment/app/Fragment$1;->this$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 62
    .line 63
    iput v3, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:I

    .line 64
    .line 65
    monitor-exit v2

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_2
    return-void

    .line 70
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 72
    .line 73
    .line 74
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    or-int/2addr v1, v2

    .line 76
    :try_start_4
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    goto :goto_4

    .line 82
    :catch_0
    move-exception v2

    .line 83
    :try_start_5
    const-string v3, "SequentialExecutor"

    .line 84
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v6, "Exception while executing runnable "

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v3, v4, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :goto_3
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 107
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 108
    :goto_4
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 115
    .line 116
    .line 117
    :cond_4
    throw p0
.end method
