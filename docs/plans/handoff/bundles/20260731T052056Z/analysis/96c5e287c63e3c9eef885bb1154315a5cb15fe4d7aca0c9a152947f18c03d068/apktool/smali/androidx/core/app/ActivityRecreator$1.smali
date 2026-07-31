.class public final Landroidx/core/app/ActivityRecreator$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public val$callbacks:Ljava/lang/Object;

.field public final val$token:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 19
    iput p1, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 18
    iput p1, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/paging/AsyncPagingDataDiffer;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/ItemTouchHelper$3;I)V
    .locals 0

    const/4 p3, 0x6

    iput p3, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

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

.method private final run$kotlinx$coroutines$internal$LimitedDispatcher$Worker()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlinx/coroutines/AwaitKt;->handleCoroutineException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 19
    .line 20
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LimitedDispatcher;->obtainTaskOrDeallocateWorker()Ljava/lang/Runnable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iput-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    const/16 v1, 0x10

    .line 32
    .line 33
    if-lt v0, v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 38
    .line 39
    iget-object v2, v1, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 40
    .line 41
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/InlineList;->safeIsDispatchNeeded(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 50
    .line 51
    iget-object v1, v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 52
    .line 53
    invoke-static {v1, v0, p0}, Lkotlinx/coroutines/internal/InlineList;->safeDispatch(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 61
    .line 62
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v1

    .line 65
    :try_start_2
    sget-object v2, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 66
    .line 67
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 68
    .line 69
    .line 70
    monitor-exit v1

    .line 71
    throw v0

    .line 72
    :catchall_2
    move-exception p0

    .line 73
    monitor-exit v1

    .line 74
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/ExceptionsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Ljava/lang/Throwable;

    .line 20
    .line 21
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-virtual {p0}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_1
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lorg/wikipedia/edit/EditSectionActivity;

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar$1(Z)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Landroid/content/Intent;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "sectionId"

    .line 60
    .line 61
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget v4, v4, Lorg/wikipedia/edit/EditSectionViewModel;->sectionID:I

    .line 66
    .line 67
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string v3, "revId"

    .line 71
    .line 72
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lokhttp3/HttpUrl$Companion;

    .line 75
    .line 76
    check-cast p0, Lorg/wikipedia/edit/EditSuccessResult;

    .line 77
    .line 78
    iget-wide v4, p0, Lorg/wikipedia/edit/EditSuccessResult;->revID:J

    .line 79
    .line 80
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Landroidx/paging/HintHandler;

    .line 98
    .line 99
    invoke-direct {v2, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    const/16 v3, 0x23

    .line 105
    .line 106
    if-lt v1, v3, :cond_1

    .line 107
    .line 108
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 109
    .line 110
    invoke-direct {v1, p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/16 v3, 0x1e

    .line 115
    .line 116
    if-lt v1, v3, :cond_2

    .line 117
    .line 118
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 119
    .line 120
    invoke-direct {v1, p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    const/16 v3, 0x1a

    .line 125
    .line 126
    if-lt v1, v3, :cond_3

    .line 127
    .line 128
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 129
    .line 130
    invoke-direct {v1, p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 135
    .line 136
    invoke-direct {v1, p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 137
    .line 138
    .line 139
    :goto_0
    invoke-virtual {v1}, Lcoil3/util/UtilsKt;->hide()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_2
    invoke-direct {p0}, Landroidx/core/app/ActivityRecreator$1;->run$kotlinx$coroutines$internal$LimitedDispatcher$Worker()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_3
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 153
    .line 154
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 157
    .line 158
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_4
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Landroid/view/View;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_4

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    add-int/2addr v3, v2

    .line 181
    div-int/2addr v3, v1

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    add-int/2addr v4, v2

    .line 191
    div-int/2addr v4, v1

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    int-to-float v1, v1

    .line 205
    const/4 v2, 0x0

    .line 206
    invoke-static {v0, v3, v4, v1, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const-wide/16 v1, 0x1f4

    .line 211
    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 216
    .line 217
    .line 218
    new-instance v1, Landroidx/transition/Transition$3;

    .line 219
    .line 220
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;

    .line 223
    .line 224
    const/16 v2, 0xd

    .line 225
    .line 226
    invoke-direct {v1, v2, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    .line 231
    .line 232
    :cond_4
    return-void

    .line 233
    :pswitch_5
    invoke-direct {p0}, Landroidx/core/app/ActivityRecreator$1;->run$androidx$work$impl$utils$SerialExecutorImpl$Task()V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_6
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 240
    .line 241
    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 242
    .line 243
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    .line 244
    .line 245
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v1, Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Landroidx/work/impl/Processor;->getRunningWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    if-eqz v0, :cond_5

    .line 254
    .line 255
    sget-object v1, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    .line 256
    .line 257
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 258
    .line 259
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_5

    .line 264
    .line 265
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 268
    .line 269
    iget-object v1, v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mLock:Ljava/lang/Object;

    .line 270
    .line 271
    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v2, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 275
    .line 276
    iget-object v2, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkSpecById:Ljava/util/HashMap;

    .line 277
    .line 278
    invoke-static {v0}, Lkotlin/ResultKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    iget-object v2, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 288
    .line 289
    iget-object v3, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mConstraintsTracker:Lokhttp3/Headers$Builder;

    .line 290
    .line 291
    iget-object v4, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 292
    .line 293
    iget-object v4, v4, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mTaskDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 294
    .line 295
    invoke-static {v3, v0, v4, v2}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->listen(Lokhttp3/Headers$Builder;Landroidx/work/impl/model/WorkSpec;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 302
    .line 303
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/HashMap;

    .line 304
    .line 305
    invoke-static {v0}, Lkotlin/ResultKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    monitor-exit v1

    .line 313
    goto :goto_1

    .line 314
    :catchall_0
    move-exception p0

    .line 315
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    throw p0

    .line 317
    :cond_5
    :goto_1
    return-void

    .line 318
    :pswitch_7
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    sget-object v1, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->TAG:Ljava/lang/String;

    .line 323
    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v5, "Scheduling work "

    .line 327
    .line 328
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object v5, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v5, Landroidx/work/impl/model/WorkSpec;

    .line 334
    .line 335
    iget-object v6, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v0, v1, v4}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 350
    .line 351
    iget-object p0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mImmediateScheduler:Landroidx/work/impl/background/greedy/GreedyScheduler;

    .line 352
    .line 353
    new-array v0, v2, [Landroidx/work/impl/model/WorkSpec;

    .line 354
    .line 355
    aput-object v5, v0, v3

    .line 356
    .line 357
    invoke-virtual {p0, v0}, Landroidx/work/impl/background/greedy/GreedyScheduler;->schedule([Landroidx/work/impl/model/WorkSpec;)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :pswitch_8
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 364
    .line 365
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 366
    .line 367
    iget-object v2, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 370
    .line 371
    iget-object v4, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 372
    .line 373
    if-eqz v4, :cond_a

    .line 374
    .line 375
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 376
    .line 377
    if-eqz v4, :cond_a

    .line 378
    .line 379
    iget-boolean v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    .line 380
    .line 381
    if-nez v0, :cond_a

    .line 382
    .line 383
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    const/4 v4, -0x1

    .line 388
    if-eq v0, v4, :cond_a

    .line 389
    .line 390
    iget-object v0, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 391
    .line 392
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    if-eqz v0, :cond_6

    .line 397
    .line 398
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-nez v0, :cond_7

    .line 403
    .line 404
    :cond_6
    iget-object v0, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    :goto_2
    if-ge v3, v4, :cond_9

    .line 411
    .line 412
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    check-cast v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 417
    .line 418
    iget-boolean v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mEnded:Z

    .line 419
    .line 420
    if-nez v5, :cond_8

    .line 421
    .line 422
    :cond_7
    iget-object v0, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 423
    .line 424
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 425
    .line 426
    .line 427
    goto :goto_3

    .line 428
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 429
    .line 430
    goto :goto_2

    .line 431
    :cond_9
    iget-object p0, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 432
    .line 433
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 434
    .line 435
    .line 436
    :cond_a
    :goto_3
    return-void

    .line 437
    :pswitch_9
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    check-cast v0, Landroidx/paging/CombinedLoadStates;

    .line 446
    .line 447
    if-eqz v0, :cond_b

    .line 448
    .line 449
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer;

    .line 452
    .line 453
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 454
    .line 455
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-eqz v1, :cond_b

    .line 464
    .line 465
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 470
    .line 471
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    goto :goto_4

    .line 475
    :cond_b
    return-void

    .line 476
    :pswitch_a
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v0, Landroidx/core/provider/FontRequestWorker$2;

    .line 479
    .line 480
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 481
    .line 482
    invoke-virtual {v0, p0}, Landroidx/core/provider/FontRequestWorker$2;->accept(Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    return-void

    .line 486
    :pswitch_b
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v0, Landroidx/paging/HintHandler;

    .line 489
    .line 490
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast p0, Landroid/graphics/Typeface;

    .line 493
    .line 494
    iget-object v0, v0, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v0, Landroidx/core/content/res/CamUtils;

    .line 497
    .line 498
    if-eqz v0, :cond_c

    .line 499
    .line 500
    invoke-virtual {v0, p0}, Landroidx/core/content/res/CamUtils;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 501
    .line 502
    .line 503
    :cond_c
    return-void

    .line 504
    :pswitch_c
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 505
    .line 506
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 507
    .line 508
    :try_start_1
    sget-object v4, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    .line 509
    .line 510
    if-eqz v4, :cond_d

    .line 511
    .line 512
    const/4 v5, 0x3

    .line 513
    new-array v5, v5, [Ljava/lang/Object;

    .line 514
    .line 515
    aput-object v0, v5, v3

    .line 516
    .line 517
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 518
    .line 519
    aput-object v0, v5, v2

    .line 520
    .line 521
    const-string v0, "AppCompat recreation"

    .line 522
    .line 523
    aput-object v0, v5, v1

    .line 524
    .line 525
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    goto :goto_5

    .line 529
    :cond_d
    sget-object v4, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    .line 530
    .line 531
    new-array v1, v1, [Ljava/lang/Object;

    .line 532
    .line 533
    aput-object v0, v1, v3

    .line 534
    .line 535
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 536
    .line 537
    aput-object v0, v1, v2

    .line 538
    .line 539
    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 540
    .line 541
    .line 542
    goto :goto_5

    .line 543
    :catchall_1
    move-exception p0

    .line 544
    const-string v0, "ActivityRecreator"

    .line 545
    .line 546
    const-string v1, "Exception while invoking performStopActivity"

    .line 547
    .line 548
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    .line 550
    .line 551
    goto :goto_5

    .line 552
    :catch_0
    move-exception p0

    .line 553
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    const-class v1, Ljava/lang/RuntimeException;

    .line 558
    .line 559
    if-ne v0, v1, :cond_f

    .line 560
    .line 561
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    if-eqz v0, :cond_f

    .line 566
    .line 567
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    const-string v1, "Unable to stop"

    .line 572
    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-nez v0, :cond_e

    .line 578
    .line 579
    goto :goto_5

    .line 580
    :cond_e
    throw p0

    .line 581
    :cond_f
    :goto_5
    return-void

    .line 582
    :pswitch_d
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 583
    .line 584
    check-cast v0, Landroid/app/Application;

    .line 585
    .line 586
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 587
    .line 588
    check-cast p0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 589
    .line 590
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 591
    .line 592
    .line 593
    return-void

    .line 594
    :pswitch_e
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 597
    .line 598
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 599
    .line 600
    iput-object p0, v0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;->currentlyRecreatingToken:Ljava/lang/Object;

    .line 601
    .line 602
    return-void

    .line 603
    :pswitch_data_0
    .packed-switch 0x0
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
