.class public final Landroidx/recyclerview/widget/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$anim:Ljava/lang/Object;

.field public final synthetic val$swipeDir:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->$r8$classId:I

    iput-object p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Ljava/lang/Object;

    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->$r8$classId:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ljava/lang/Object;

    iput p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$swipeDir:I

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/utils/futures/ListFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$swipeDir:I

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$swipeDir:I

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 14
    .line 15
    check-cast v3, Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v4, v3, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast v4, Landroidx/camera/core/impl/utils/futures/ListFuture;

    .line 22
    .line 23
    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 24
    .line 25
    iget-boolean p0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mAllMustSucceed:Z

    .line 26
    .line 27
    const-string v0, "Less than 0 remaining futures"

    .line 28
    .line 29
    iget-object v5, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    iget-object v6, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/futures/ListFuture;->isDone()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_d

    .line 38
    .line 39
    if-nez v6, :cond_0

    .line 40
    .line 41
    goto/16 :goto_7

    .line 42
    .line 43
    :cond_0
    const/4 v7, 0x1

    .line 44
    const/4 v8, 0x0

    .line 45
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    const-string v10, "Tried to set value from future which is not done"

    .line 50
    .line 51
    invoke-static {v10, v9}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Landroidx/camera/core/impl/utils/futures/Futures;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v6, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-ltz p0, :cond_1

    .line 66
    .line 67
    move v1, v7

    .line 68
    :cond_1
    invoke-static {v0, v1}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    if-nez p0, :cond_e

    .line 72
    .line 73
    iget-object p0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/ArrayList;

    .line 74
    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    iget-object v0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 78
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :cond_2
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/futures/ListFuture;->isDone()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-static {v8, p0}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :catch_0
    move-exception p0

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    move-exception v2

    .line 104
    goto :goto_2

    .line 105
    :catch_2
    move-exception v2

    .line 106
    goto :goto_3

    .line 107
    :goto_1
    :try_start_1
    iget-object v2, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 108
    .line 109
    invoke-virtual {v2, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-ltz p0, :cond_3

    .line 117
    .line 118
    move v1, v7

    .line 119
    :cond_3
    invoke-static {v0, v1}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    if-nez p0, :cond_e

    .line 123
    .line 124
    iget-object p0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/ArrayList;

    .line 125
    .line 126
    if-eqz p0, :cond_2

    .line 127
    .line 128
    iget-object v0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 129
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :goto_2
    if-eqz p0, :cond_4

    .line 137
    .line 138
    :try_start_2
    iget-object p0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 139
    .line 140
    invoke-virtual {p0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 142
    .line 143
    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-ltz p0, :cond_5

    .line 148
    .line 149
    move v1, v7

    .line 150
    :cond_5
    invoke-static {v0, v1}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 151
    .line 152
    .line 153
    if-nez p0, :cond_e

    .line 154
    .line 155
    iget-object p0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/ArrayList;

    .line 156
    .line 157
    if-eqz p0, :cond_2

    .line 158
    .line 159
    iget-object v0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 160
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :goto_3
    if-eqz p0, :cond_6

    .line 168
    .line 169
    :try_start_3
    iget-object p0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {p0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    .line 177
    .line 178
    :cond_6
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-ltz p0, :cond_7

    .line 183
    .line 184
    move v1, v7

    .line 185
    :cond_7
    invoke-static {v0, v1}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 186
    .line 187
    .line 188
    if-nez p0, :cond_e

    .line 189
    .line 190
    iget-object p0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/ArrayList;

    .line 191
    .line 192
    if-eqz p0, :cond_2

    .line 193
    .line 194
    iget-object v0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 195
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :catch_3
    if-eqz p0, :cond_b

    .line 203
    .line 204
    :try_start_4
    invoke-virtual {v4, v1}, Landroidx/camera/core/impl/utils/futures/ListFuture;->cancel(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :goto_4
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-ltz v2, :cond_8

    .line 213
    .line 214
    move v1, v7

    .line 215
    :cond_8
    invoke-static {v0, v1}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 216
    .line 217
    .line 218
    if-nez v2, :cond_a

    .line 219
    .line 220
    iget-object v0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/ArrayList;

    .line 221
    .line 222
    if-eqz v0, :cond_9

    .line 223
    .line 224
    iget-object v1, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 225
    .line 226
    new-instance v2, Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_9
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/futures/ListFuture;->isDone()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-static {v8, v0}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 240
    .line 241
    .line 242
    :cond_a
    :goto_5
    throw p0

    .line 243
    :cond_b
    :goto_6
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 244
    .line 245
    .line 246
    move-result p0

    .line 247
    if-ltz p0, :cond_c

    .line 248
    .line 249
    move v1, v7

    .line 250
    :cond_c
    invoke-static {v0, v1}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 251
    .line 252
    .line 253
    if-nez p0, :cond_e

    .line 254
    .line 255
    iget-object p0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/ArrayList;

    .line 256
    .line 257
    if-eqz p0, :cond_2

    .line 258
    .line 259
    iget-object v0, v4, Landroidx/camera/core/impl/utils/futures/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 260
    .line 261
    new-instance v1, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_d
    :goto_7
    const-string v0, "Future was done before all dependencies completed"

    .line 269
    .line 270
    invoke-static {v0, p0}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 271
    .line 272
    .line 273
    :cond_e
    :goto_8
    return-void

    .line 274
    :pswitch_1
    check-cast v3, Landroid/widget/TextView;

    .line 275
    .line 276
    check-cast v4, Landroid/graphics/Typeface;

    .line 277
    .line 278
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_2
    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 283
    .line 284
    iget-object v0, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 285
    .line 286
    check-cast v4, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 287
    .line 288
    iget-object v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 289
    .line 290
    if-eqz v5, :cond_13

    .line 291
    .line 292
    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 293
    .line 294
    if-eqz v5, :cond_13

    .line 295
    .line 296
    iget-boolean v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    .line 297
    .line 298
    if-nez v3, :cond_13

    .line 299
    .line 300
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    const/4 v5, -0x1

    .line 305
    if-eq v3, v5, :cond_13

    .line 306
    .line 307
    iget-object v3, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 308
    .line 309
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    if-eqz v3, :cond_f

    .line 314
    .line 315
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-nez v3, :cond_10

    .line 320
    .line 321
    :cond_f
    iget-object v3, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    :goto_9
    if-ge v1, v5, :cond_12

    .line 328
    .line 329
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    check-cast v6, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 334
    .line 335
    iget-boolean v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mEnded:Z

    .line 336
    .line 337
    if-nez v6, :cond_11

    .line 338
    .line 339
    :cond_10
    iget-object v0, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 340
    .line 341
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 342
    .line 343
    .line 344
    goto :goto_a

    .line 345
    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_12
    iget-object p0, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    .line 349
    .line 350
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 351
    .line 352
    .line 353
    :cond_13
    :goto_a
    return-void

    .line 354
    nop

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
