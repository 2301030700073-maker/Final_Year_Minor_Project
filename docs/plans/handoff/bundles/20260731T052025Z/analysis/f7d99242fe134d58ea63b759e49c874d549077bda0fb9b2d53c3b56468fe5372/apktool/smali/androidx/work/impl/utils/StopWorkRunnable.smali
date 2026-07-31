.class public final Landroidx/work/impl/utils/StopWorkRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final processor:Ljava/lang/Object;

.field public final reason:I

.field public final stopInForeground:Z

.field public final token:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->processor:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Ljava/lang/Object;

    .line 16
    .line 17
    iput-boolean p3, p0, Landroidx/work/impl/utils/StopWorkRunnable;->stopInForeground:Z

    .line 18
    .line 19
    iput p4, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;IZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->$r8$classId:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->processor:Ljava/lang/Object;

    iput p3, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    iput-boolean p4, p0, Landroidx/work/impl/utils/StopWorkRunnable;->stopInForeground:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->processor:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveOutAnimation;

    .line 9
    .line 10
    iget-object v1, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v4, v2

    .line 15
    check-cast v4, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 16
    .line 17
    iget-object v2, v4, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v10, v4, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 20
    .line 21
    iget-object v3, v4, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    if-eqz v3, :cond_8

    .line 24
    .line 25
    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 26
    .line 27
    if-eqz v3, :cond_8

    .line 28
    .line 29
    iget-boolean v3, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 30
    .line 31
    if-nez v3, :cond_8

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v5, -0x1

    .line 38
    if-eq v3, v5, :cond_8

    .line 39
    .line 40
    iget-object v3, v4, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;

    .line 69
    .line 70
    iget-boolean v5, v5, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 71
    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    :cond_2
    iget-object v0, v4, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget v3, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    .line 81
    .line 82
    iget-object v5, v10, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->listener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v1}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getMessageListItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    if-nez v6, :cond_4

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {v10, v6}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getSwipeActions(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Lnet/thunderbird/core/common/action/SwipeActions;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    iget-object v8, v7, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 99
    .line 100
    iget-object v7, v7, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 101
    .line 102
    const/4 v9, 0x4

    .line 103
    if-eq v3, v9, :cond_6

    .line 104
    .line 105
    const/16 v8, 0x8

    .line 106
    .line 107
    if-ne v3, v8, :cond_5

    .line 108
    .line 109
    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;->onSwipeAction(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/action/SwipeAction;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    const-string p0, "Unsupported direction: "

    .line 114
    .line 115
    invoke-static {p0, v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    invoke-virtual {v5, v6, v8}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;->onSwipeAction(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/action/SwipeAction;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    iget-boolean p0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->stopInForeground:Z

    .line 123
    .line 124
    if-eqz p0, :cond_7

    .line 125
    .line 126
    new-instance v3, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveBackAnimation;

    .line 127
    .line 128
    iget-object v5, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 129
    .line 130
    iget v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 131
    .line 132
    iget v7, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 133
    .line 134
    iget v8, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 135
    .line 136
    iget v9, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 137
    .line 138
    invoke-direct/range {v3 .. v9}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$MoveBackAnimation;-><init>(Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFF)V

    .line 139
    .line 140
    .line 141
    iget-object p0, v3, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 142
    .line 143
    iget-object v1, v4, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    .line 145
    iget v4, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 146
    .line 147
    iget v6, v0, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 148
    .line 149
    neg-float v6, v6

    .line 150
    invoke-virtual {v10, v1, v4, v6}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IF)J

    .line 151
    .line 152
    .line 153
    move-result-wide v6

    .line 154
    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_7
    invoke-virtual {v10, v1}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->onSwipeEnded(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_1
    return-void

    .line 175
    :pswitch_0
    iget-boolean v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->stopInForeground:Z

    .line 176
    .line 177
    iget-object v1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->processor:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Landroidx/work/impl/Processor;

    .line 180
    .line 181
    iget-object v2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v2, Landroidx/work/impl/StartStopToken;

    .line 184
    .line 185
    if-eqz v0, :cond_9

    .line 186
    .line 187
    iget v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object v2, v2, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    .line 193
    .line 194
    iget-object v2, v2, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v3, v1, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 197
    .line 198
    monitor-enter v3

    .line 199
    :try_start_0
    invoke-virtual {v1, v2}, Landroidx/work/impl/Processor;->cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-static {v2, v1, v0}, Landroidx/work/impl/Processor;->interrupt(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    goto :goto_2

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    move-object p0, v0

    .line 211
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    throw p0

    .line 213
    :cond_9
    iget v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    .line 214
    .line 215
    invoke-virtual {v1, v2, v0}, Landroidx/work/impl/Processor;->stopWork(Landroidx/work/impl/StartStopToken;I)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    :goto_2
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const-string v2, "StopWorkRunnable"

    .line 224
    .line 225
    invoke-static {v2}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v4, "StopWorkRunnable for "

    .line 232
    .line 233
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object p0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast p0, Landroidx/work/impl/StartStopToken;

    .line 239
    .line 240
    iget-object p0, p0, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    .line 241
    .line 242
    iget-object p0, p0, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string p0, "; Processor.stopWork = "

    .line 248
    .line 249
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {v1, v2, p0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
