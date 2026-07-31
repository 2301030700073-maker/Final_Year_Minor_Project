.class public final Landroidx/core/app/ActivityRecreator$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public val$callbacks:Ljava/lang/Object;

.field public final val$token:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 11
    iput p1, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$androidx$work$impl$foreground$SystemForegroundDispatcher$1()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/work/impl/Processor;->getRunningWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v1, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    .line 20
    .line 21
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 32
    .line 33
    iget-object v1, v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v2, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 39
    .line 40
    iget-object v2, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkSpecById:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 52
    .line 53
    iget-object v3, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mConstraintsTracker:Lokhttp3/Headers$Builder;

    .line 54
    .line 55
    iget-object v4, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTaskExecutor:Lokhttp3/Dispatcher;

    .line 56
    .line 57
    iget-object v4, v4, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 60
    .line 61
    invoke-static {v3, v0, v4, v2}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->listen(Lokhttp3/Headers$Builder;Landroidx/work/impl/model/WorkSpec;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 68
    .line 69
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0

    .line 83
    :cond_0
    return-void
.end method

.method private final run$androidx$work$impl$utils$SerialExecutorImpl$Task()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/room/TransactionExecutor;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_1
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0

    .line 27
    :catchall_1
    move-exception v0

    .line 28
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Landroidx/room/TransactionExecutor;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_2
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 40
    .line 41
    .line 42
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    throw v0

    .line 44
    :catchall_2
    move-exception p0

    .line 45
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 46
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 18
    .line 19
    invoke-static {v3, v0}, Lkotlinx/coroutines/JobKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 25
    .line 26
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->obtainTaskOrDeallocateWorker()Ljava/lang/Runnable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iput-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 34
    .line 35
    add-int/2addr v2, v1

    .line 36
    const/16 v0, 0x10

    .line 37
    .line 38
    if-lt v2, v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 43
    .line 44
    iget-object v3, v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 45
    .line 46
    invoke-static {v3, v0}, Lkotlinx/coroutines/internal/InlineList;->safeIsDispatchNeeded(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 55
    .line 56
    iget-object v1, v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 57
    .line 58
    invoke-static {v1, v0, p0}, Lkotlinx/coroutines/internal/InlineList;->safeDispatch(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 66
    .line 67
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v1

    .line 70
    :try_start_2
    sget-object v2, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 71
    .line 72
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    .line 74
    .line 75
    monitor-exit v1

    .line 76
    throw v0

    .line 77
    :catchall_2
    move-exception p0

    .line 78
    monitor-exit v1

    .line 79
    throw p0

    .line 80
    :pswitch_0
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 83
    .line 84
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_1
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView;

    .line 95
    .line 96
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Ljava/util/List;

    .line 99
    .line 100
    iget-object v2, v0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 101
    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget-object v3, v0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 118
    .line 119
    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    iget-object v2, v0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownWidth()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 129
    .line 130
    .line 131
    iget-object v2, v0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesAdapter:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .line 132
    .line 133
    iget-object v3, v0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopupRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 134
    .line 135
    iput-object v3, v2, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 136
    .line 137
    iput-object p0, v2, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->recipients:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {p0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-ltz v3, :cond_3

    .line 144
    .line 145
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 150
    .line 151
    iput-object v3, v2, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 152
    .line 153
    :cond_3
    iget-object v3, v2, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 154
    .line 155
    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 159
    .line 160
    .line 161
    iget-object p0, v0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 164
    .line 165
    .line 166
    iget-object p0, v0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 173
    .line 174
    .line 175
    :goto_2
    return-void

    .line 176
    :pswitch_2
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 179
    .line 180
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v3, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 183
    .line 184
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v4, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->refreshAttachmentThumbnail(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 189
    .line 190
    .line 191
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p0, Landroid/net/Uri;

    .line 194
    .line 195
    new-instance v3, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;

    .line 196
    .line 197
    invoke-direct {v3, v0, v2}, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;I)V

    .line 198
    .line 199
    .line 200
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 201
    .line 202
    new-array v1, v1, [Landroid/net/Uri;

    .line 203
    .line 204
    aput-object p0, v1, v2

    .line 205
    .line 206
    invoke-virtual {v3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_3
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 213
    .line 214
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 221
    .line 222
    if-eqz v0, :cond_4

    .line 223
    .line 224
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p0, Ljava/lang/String;

    .line 227
    .line 228
    invoke-interface {v0, p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->updateFooterText(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_4
    return-void

    .line 232
    :pswitch_4
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v0, Lcom/fsck/k9/activity/MessageCompose$12;

    .line 235
    .line 236
    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 239
    .line 240
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast p0, Ljava/lang/Exception;

    .line 243
    .line 244
    iget-object v0, v0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 245
    .line 246
    if-nez v0, :cond_5

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_5
    instance-of p0, p0, Ljava/lang/IllegalArgumentException;

    .line 250
    .line 251
    if-eqz p0, :cond_6

    .line 252
    .line 253
    invoke-interface {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onDownloadErrorMessageNotFound()V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_6
    invoke-interface {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onDownloadErrorNetworkError()V

    .line 258
    .line 259
    .line 260
    :goto_3
    return-void

    .line 261
    :pswitch_5
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 269
    .line 270
    .line 271
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByAppState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    .line 279
    .line 280
    iget-object v0, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->this$0:Lcom/bumptech/glide/manager/FirstFrameWaiter;

    .line 281
    .line 282
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter;->isFirstFrameSet:Z

    .line 283
    .line 284
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    .line 287
    .line 288
    iget-object v0, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->val$view:Landroid/view/View;

    .line 289
    .line 290
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v1, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    .line 293
    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 299
    .line 300
    .line 301
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    .line 304
    .line 305
    iget-object p0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->this$0:Lcom/bumptech/glide/manager/FirstFrameWaiter;

    .line 306
    .line 307
    iget-object p0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter;->pendingActivities:Ljava/util/Set;

    .line 308
    .line 309
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :pswitch_6
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    .line 316
    .line 317
    iget-boolean v1, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->preventNetworkOperations:Z

    .line 318
    .line 319
    if-eqz v1, :cond_7

    .line 320
    .line 321
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 322
    .line 323
    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 339
    .line 340
    .line 341
    :cond_7
    :try_start_3
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast p0, Ljava/lang/Runnable;

    .line 344
    .line 345
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 346
    .line 347
    .line 348
    goto :goto_4

    .line 349
    :catchall_3
    move-exception p0

    .line 350
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$2;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    const-string v0, "GlideExecutor"

    .line 356
    .line 357
    const/4 v1, 0x6

    .line 358
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_8

    .line 363
    .line 364
    const-string v1, "Request threw uncaught throwable"

    .line 365
    .line 366
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .line 368
    .line 369
    :cond_8
    :goto_4
    return-void

    .line 370
    :pswitch_7
    invoke-direct {p0}, Landroidx/core/app/ActivityRecreator$1;->run$androidx$work$impl$utils$SerialExecutorImpl$Task()V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :pswitch_8
    invoke-direct {p0}, Landroidx/core/app/ActivityRecreator$1;->run$androidx$work$impl$foreground$SystemForegroundDispatcher$1()V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :pswitch_9
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    sget-object v3, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->TAG:Ljava/lang/String;

    .line 383
    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v5, "Scheduling work "

    .line 387
    .line 388
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v5, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v5, Landroidx/work/impl/model/WorkSpec;

    .line 394
    .line 395
    iget-object v6, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {v0, v3, v4}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 410
    .line 411
    iget-object p0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mImmediateScheduler:Landroidx/work/impl/background/greedy/GreedyScheduler;

    .line 412
    .line 413
    new-array v0, v1, [Landroidx/work/impl/model/WorkSpec;

    .line 414
    .line 415
    aput-object v5, v0, v2

    .line 416
    .line 417
    invoke-virtual {p0, v0}, Landroidx/work/impl/background/greedy/GreedyScheduler;->schedule([Landroidx/work/impl/model/WorkSpec;)V

    .line 418
    .line 419
    .line 420
    return-void

    .line 421
    :pswitch_a
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v0, Landroidx/preference/Preference;

    .line 424
    .line 425
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 428
    .line 429
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 430
    .line 431
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    instance-of v2, v1, Landroidx/preference/PreferenceGroupAdapter;

    .line 436
    .line 437
    if-nez v2, :cond_a

    .line 438
    .line 439
    if-nez v1, :cond_9

    .line 440
    .line 441
    goto :goto_5

    .line 442
    :cond_9
    const-string p0, "Adapter must implement PreferencePositionCallback"

    .line 443
    .line 444
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    goto :goto_5

    .line 448
    :cond_a
    move-object v2, v1

    .line 449
    check-cast v2, Landroidx/preference/PreferenceGroupAdapter;

    .line 450
    .line 451
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 456
    .line 457
    const/4 v3, -0x1

    .line 458
    if-eq v2, v3, :cond_b

    .line 459
    .line 460
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 461
    .line 462
    .line 463
    goto :goto_5

    .line 464
    :cond_b
    new-instance v2, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;

    .line 465
    .line 466
    move-object v3, v1

    .line 467
    check-cast v3, Landroidx/preference/PreferenceGroupAdapter;

    .line 468
    .line 469
    invoke-direct {v2, v3, p0, v0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;-><init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;)V

    .line 470
    .line 471
    .line 472
    iget-object p0, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 473
    .line 474
    invoke-virtual {p0, v2}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    :goto_5
    return-void

    .line 478
    :pswitch_b
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v0, Landroidx/camera/core/processing/Edge;

    .line 481
    .line 482
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 483
    .line 484
    invoke-virtual {v0, p0}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    return-void

    .line 488
    :pswitch_c
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v0, Landroidx/fragment/app/Fragment$7;

    .line 491
    .line 492
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast p0, Landroid/graphics/Typeface;

    .line 495
    .line 496
    iget-object v0, v0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v0, Landroidx/core/content/res/CamUtils;

    .line 499
    .line 500
    if-eqz v0, :cond_c

    .line 501
    .line 502
    invoke-virtual {v0, p0}, Landroidx/core/content/res/CamUtils;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 503
    .line 504
    .line 505
    :cond_c
    return-void

    .line 506
    :pswitch_d
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 507
    .line 508
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 509
    .line 510
    :try_start_4
    sget-object v3, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    .line 511
    .line 512
    const/4 v4, 0x2

    .line 513
    if-eqz v3, :cond_d

    .line 514
    .line 515
    const/4 v5, 0x3

    .line 516
    new-array v5, v5, [Ljava/lang/Object;

    .line 517
    .line 518
    aput-object v0, v5, v2

    .line 519
    .line 520
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 521
    .line 522
    aput-object v0, v5, v1

    .line 523
    .line 524
    const-string v0, "AppCompat recreation"

    .line 525
    .line 526
    aput-object v0, v5, v4

    .line 527
    .line 528
    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    goto :goto_6

    .line 532
    :cond_d
    sget-object v3, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    .line 533
    .line 534
    new-array v4, v4, [Ljava/lang/Object;

    .line 535
    .line 536
    aput-object v0, v4, v2

    .line 537
    .line 538
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 539
    .line 540
    aput-object v0, v4, v1

    .line 541
    .line 542
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 543
    .line 544
    .line 545
    goto :goto_6

    .line 546
    :catchall_4
    move-exception p0

    .line 547
    const-string v0, "ActivityRecreator"

    .line 548
    .line 549
    const-string v1, "Exception while invoking performStopActivity"

    .line 550
    .line 551
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    .line 553
    .line 554
    goto :goto_6

    .line 555
    :catch_0
    move-exception p0

    .line 556
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    const-class v1, Ljava/lang/RuntimeException;

    .line 561
    .line 562
    if-ne v0, v1, :cond_f

    .line 563
    .line 564
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    if-eqz v0, :cond_f

    .line 569
    .line 570
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    const-string v1, "Unable to stop"

    .line 575
    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-nez v0, :cond_e

    .line 581
    .line 582
    goto :goto_6

    .line 583
    :cond_e
    throw p0

    .line 584
    :cond_f
    :goto_6
    return-void

    .line 585
    :pswitch_e
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v0, Landroid/app/Application;

    .line 588
    .line 589
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast p0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 592
    .line 593
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 594
    .line 595
    .line 596
    return-void

    .line 597
    :pswitch_f
    const/4 v0, 0x0

    .line 598
    :try_start_5
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 599
    .line 600
    check-cast v1, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    .line 601
    .line 602
    iget-object v3, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 603
    .line 604
    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 605
    .line 606
    invoke-static {v3}, Landroidx/camera/core/impl/utils/futures/Futures;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    iget-object v1, v1, Landroidx/camera/core/impl/utils/futures/FutureChain;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 611
    .line 612
    if-eqz v1, :cond_10

    .line 613
    .line 614
    invoke-virtual {v1, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 615
    .line 616
    .line 617
    :cond_10
    :goto_7
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 618
    .line 619
    check-cast p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    .line 620
    .line 621
    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 622
    .line 623
    goto :goto_8

    .line 624
    :catchall_5
    move-exception v1

    .line 625
    goto :goto_9

    .line 626
    :catch_1
    move-exception v1

    .line 627
    :try_start_6
    iget-object v2, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast v2, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    .line 630
    .line 631
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    iget-object v2, v2, Landroidx/camera/core/impl/utils/futures/FutureChain;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 636
    .line 637
    if-eqz v2, :cond_10

    .line 638
    .line 639
    invoke-virtual {v2, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 640
    .line 641
    .line 642
    goto :goto_7

    .line 643
    :catch_2
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 644
    .line 645
    check-cast v1, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    .line 646
    .line 647
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->cancel(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 648
    .line 649
    .line 650
    goto :goto_7

    .line 651
    :goto_8
    return-void

    .line 652
    :goto_9
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    .line 655
    .line 656
    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;->mOutputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 657
    .line 658
    throw v1

    .line 659
    :pswitch_10
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v0, Landroidx/biometric/BiometricFragment;

    .line 662
    .line 663
    iget-object v0, v0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 664
    .line 665
    iget-object v1, v0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/compose/ui/unit/IntRectKt;

    .line 666
    .line 667
    if-nez v1, :cond_11

    .line 668
    .line 669
    new-instance v1, Landroidx/biometric/BiometricViewModel$1;

    .line 670
    .line 671
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 672
    .line 673
    .line 674
    iput-object v1, v0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/compose/ui/unit/IntRectKt;

    .line 675
    .line 676
    :cond_11
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/compose/ui/unit/IntRectKt;

    .line 677
    .line 678
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast p0, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 681
    .line 682
    invoke-virtual {v0, p0}, Landroidx/compose/ui/unit/IntRectKt;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 683
    .line 684
    .line 685
    return-void

    .line 686
    :pswitch_11
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 687
    .line 688
    check-cast v0, Landroidx/camera/core/impl/utils/futures/FutureCallback;

    .line 689
    .line 690
    :try_start_7
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 691
    .line 692
    check-cast p0, Ljava/util/concurrent/Future;

    .line 693
    .line 694
    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object p0
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_3

    .line 698
    invoke-interface {v0, p0}, Landroidx/camera/core/impl/utils/futures/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    goto :goto_c

    .line 702
    :catch_3
    move-exception p0

    .line 703
    goto :goto_a

    .line 704
    :catch_4
    move-exception p0

    .line 705
    goto :goto_a

    .line 706
    :catch_5
    move-exception p0

    .line 707
    goto :goto_b

    .line 708
    :goto_a
    invoke-interface {v0, p0}, Landroidx/camera/core/impl/utils/futures/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 709
    .line 710
    .line 711
    goto :goto_c

    .line 712
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    if-nez v1, :cond_12

    .line 717
    .line 718
    invoke-interface {v0, p0}, Landroidx/camera/core/impl/utils/futures/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 719
    .line 720
    .line 721
    goto :goto_c

    .line 722
    :cond_12
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/utils/futures/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 723
    .line 724
    .line 725
    :goto_c
    return-void

    .line 726
    :pswitch_12
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 727
    .line 728
    check-cast v0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 729
    .line 730
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 731
    .line 732
    iput-object p0, v0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;->currentlyRecreatingToken:Ljava/lang/Object;

    .line 733
    .line 734
    return-void

    .line 735
    :pswitch_data_0
    .packed-switch 0x0
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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-class v1, Landroidx/core/app/ActivityRecreator$1;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ","

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Landroidx/camera/core/impl/utils/futures/FutureCallback;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
