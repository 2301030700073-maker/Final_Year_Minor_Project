.class public final Landroidx/core/app/ActivityRecreator$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public val$callbacks:Ljava/lang/Object;

.field public final val$token:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 14
    iput p1, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/ItemTouchHelper$3;I)V
    .locals 0

    .line 1
    const/16 p3, 0x9

    .line 2
    .line 3
    iput p3, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 13
    iput p3, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

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
    invoke-static {v0}, Lkotlin/ranges/RangesKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

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
    iget-object v3, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

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
    invoke-static {v3, v0, v4, v2}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->listen(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;)Lkotlinx/coroutines/StandaloneCoroutine;

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
    invoke-static {v0}, Lkotlin/ranges/RangesKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

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
    .locals 12

    .line 1
    iget v0, p0, Landroidx/core/app/ActivityRecreator$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlinx/coroutines/JobKt;->handleCoroutineException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 26
    .line 27
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->obtainTaskOrDeallocateWorker()Ljava/lang/Runnable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iput-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 35
    .line 36
    add-int/2addr v2, v3

    .line 37
    const/16 v0, 0x10

    .line 38
    .line 39
    if-lt v2, v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 44
    .line 45
    iget-object v1, v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 46
    .line 47
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/InlineList;->safeIsDispatchNeeded(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 56
    .line 57
    iget-object v1, v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 58
    .line 59
    invoke-static {v1, v0, p0}, Lkotlinx/coroutines/internal/InlineList;->safeDispatch(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 67
    .line 68
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v1

    .line 71
    :try_start_2
    sget-object v2, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 72
    .line 73
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 74
    .line 75
    .line 76
    monitor-exit v1

    .line 77
    throw v0

    .line 78
    :catchall_2
    move-exception p0

    .line 79
    monitor-exit v1

    .line 80
    throw p0

    .line 81
    :pswitch_0
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 84
    .line 85
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_1
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 96
    .line 97
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/rxjava3/core/Observable;

    .line 98
    .line 99
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_2
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Lio/reactivex/rxjava3/core/Maybe;

    .line 110
    .line 111
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeOnMaybeObserver;

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_3
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Lcom/livefront/bridge/BridgeDelegate;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/livefront/bridge/BridgeDelegate;->mDiskHandler:Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 124
    .line 125
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p0, Ljava/lang/String;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mPendingLoadFuture:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v1, Ljava/util/concurrent/Future;

    .line 132
    .line 133
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/io/Serializable;

    .line 137
    .line 138
    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 139
    .line 140
    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p0}, Lcom/livefront/bridge/disk/FileDiskHandler;->deleteFilesByKey(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_4
    invoke-direct {p0}, Landroidx/core/app/ActivityRecreator$1;->run$androidx$work$impl$utils$SerialExecutorImpl$Task()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_5
    invoke-direct {p0}, Landroidx/core/app/ActivityRecreator$1;->run$androidx$work$impl$foreground$SystemForegroundDispatcher$1()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_6
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sget-object v1, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->TAG:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v5, "Scheduling work "

    .line 164
    .line 165
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v5, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v5, Landroidx/work/impl/model/WorkSpec;

    .line 171
    .line 172
    iget-object v6, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v0, v1, v4}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 187
    .line 188
    iget-object p0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mImmediateScheduler:Landroidx/work/impl/background/greedy/GreedyScheduler;

    .line 189
    .line 190
    new-array v0, v3, [Landroidx/work/impl/model/WorkSpec;

    .line 191
    .line 192
    aput-object v5, v0, v2

    .line 193
    .line 194
    invoke-virtual {p0, v0}, Landroidx/work/impl/background/greedy/GreedyScheduler;->schedule([Landroidx/work/impl/model/WorkSpec;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_7
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 201
    .line 202
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 203
    .line 204
    iget-object v4, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v4, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 207
    .line 208
    iget-object v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    .line 210
    if-eqz v5, :cond_6

    .line 211
    .line 212
    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 213
    .line 214
    if-eqz v5, :cond_6

    .line 215
    .line 216
    iget-boolean v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    .line 217
    .line 218
    if-nez v0, :cond_6

    .line 219
    .line 220
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eq v0, v1, :cond_6

    .line 225
    .line 226
    iget-object v0, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_2

    .line 233
    .line 234
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-nez v0, :cond_3

    .line 239
    .line 240
    :cond_2
    iget-object v0, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    :goto_2
    if-ge v2, v1, :cond_5

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    check-cast v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 253
    .line 254
    iget-boolean v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mEnded:Z

    .line 255
    .line 256
    if-nez v5, :cond_4

    .line 257
    .line 258
    :cond_3
    iget-object v0, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    .line 260
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_5
    iget-object p0, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 268
    .line 269
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 270
    .line 271
    .line 272
    :cond_6
    :goto_3
    return-void

    .line 273
    :pswitch_8
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v0, Landroidx/fragment/app/FragmentTransitionImpl$1;

    .line 276
    .line 277
    iget-object v1, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$outNames:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v1, Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 280
    .line 281
    iget v2, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    .line 282
    .line 283
    iget v3, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$numSharedElements:I

    .line 284
    .line 285
    if-ne v2, v3, :cond_7

    .line 286
    .line 287
    iget-object v2, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$inNames:Ljava/util/List;

    .line 288
    .line 289
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 292
    .line 293
    iget-object v0, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsOut:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v0, Ljava/lang/Runnable;

    .line 296
    .line 297
    iget-object v3, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 298
    .line 299
    iput-object v2, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 300
    .line 301
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    iput-object v2, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 306
    .line 307
    iget-object v2, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/OpReorderer;

    .line 308
    .line 309
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 313
    .line 314
    .line 315
    :cond_7
    return-void

    .line 316
    :pswitch_9
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Landroidx/preference/Preference;

    .line 319
    .line 320
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 323
    .line 324
    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 325
    .line 326
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    instance-of v3, v2, Landroidx/preference/PreferenceGroupAdapter;

    .line 331
    .line 332
    if-nez v3, :cond_9

    .line 333
    .line 334
    if-nez v2, :cond_8

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_8
    const-string p0, "Adapter must implement PreferencePositionCallback"

    .line 338
    .line 339
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_9
    move-object v3, v2

    .line 344
    check-cast v3, Landroidx/preference/PreferenceGroupAdapter;

    .line 345
    .line 346
    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 351
    .line 352
    if-eq v3, v1, :cond_a

    .line 353
    .line 354
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 355
    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_a
    new-instance v1, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;

    .line 359
    .line 360
    move-object v3, v2

    .line 361
    check-cast v3, Landroidx/preference/PreferenceGroupAdapter;

    .line 362
    .line 363
    invoke-direct {v1, v3, p0, v0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;-><init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 367
    .line 368
    .line 369
    :goto_4
    return-void

    .line 370
    :pswitch_a
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v0, Lcoil3/ComponentRegistry$Builder;

    .line 373
    .line 374
    iget-object v4, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v4, Landroidx/media/MediaBrowserServiceCompat;

    .line 377
    .line 378
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 381
    .line 382
    iget-object v4, v4, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 383
    .line 384
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    check-cast v4, Landroidx/collection/ArrayMap$KeySet;

    .line 389
    .line 390
    invoke-virtual {v4}, Landroidx/collection/ArrayMap$KeySet;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    :cond_b
    move-object v5, v4

    .line 395
    check-cast v5, Landroidx/collection/ArrayMap$KeyIterator;

    .line 396
    .line 397
    invoke-virtual {v5}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    if-eqz v6, :cond_11

    .line 402
    .line 403
    invoke-virtual {v5}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    check-cast v5, Landroid/os/IBinder;

    .line 408
    .line 409
    iget-object v6, v0, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 410
    .line 411
    invoke-virtual {v6, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    check-cast v5, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 416
    .line 417
    iget-object v6, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v6, Ljava/lang/String;

    .line 420
    .line 421
    iget-object v7, v5, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    .line 422
    .line 423
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    check-cast v7, Ljava/util/List;

    .line 428
    .line 429
    if-eqz v7, :cond_b

    .line 430
    .line 431
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    :cond_c
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    if-eqz v8, :cond_b

    .line 440
    .line 441
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v8

    .line 445
    check-cast v8, Landroidx/core/util/Pair;

    .line 446
    .line 447
    iget-object v9, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v9, Landroid/os/Bundle;

    .line 450
    .line 451
    const-string v10, "android.media.browse.extra.PAGE_SIZE"

    .line 452
    .line 453
    const-string v11, "android.media.browse.extra.PAGE"

    .line 454
    .line 455
    if-nez v9, :cond_d

    .line 456
    .line 457
    move v11, v1

    .line 458
    goto :goto_6

    .line 459
    :cond_d
    invoke-virtual {v9, v11, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 460
    .line 461
    .line 462
    move-result v11

    .line 463
    :goto_6
    if-nez v9, :cond_e

    .line 464
    .line 465
    move v9, v1

    .line 466
    goto :goto_7

    .line 467
    :cond_e
    invoke-virtual {v9, v10, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 468
    .line 469
    .line 470
    move-result v9

    .line 471
    :goto_7
    const v10, 0x7fffffff

    .line 472
    .line 473
    .line 474
    if-eq v11, v1, :cond_10

    .line 475
    .line 476
    if-ne v9, v1, :cond_f

    .line 477
    .line 478
    goto :goto_8

    .line 479
    :cond_f
    mul-int/2addr v11, v9

    .line 480
    add-int/2addr v9, v11

    .line 481
    sub-int/2addr v9, v3

    .line 482
    goto :goto_9

    .line 483
    :cond_10
    :goto_8
    move v11, v2

    .line 484
    move v9, v10

    .line 485
    :goto_9
    if-lt v10, v11, :cond_c

    .line 486
    .line 487
    if-ltz v9, :cond_c

    .line 488
    .line 489
    iget-object v8, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast v8, Landroid/os/Bundle;

    .line 492
    .line 493
    invoke-virtual {v0, v6, v5, v8}, Landroidx/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    .line 494
    .line 495
    .line 496
    goto :goto_5

    .line 497
    :cond_11
    return-void

    .line 498
    :pswitch_b
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v0, Lcoil3/ComponentRegistry$Builder;

    .line 501
    .line 502
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 505
    .line 506
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v1, Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    if-nez v2, :cond_13

    .line 515
    .line 516
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroid/support/v4/media/session/IMediaSession;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    if-eqz v2, :cond_12

    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    if-eqz v4, :cond_12

    .line 531
    .line 532
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    check-cast v4, Landroid/os/Bundle;

    .line 537
    .line 538
    const-string v5, "extra_session_binder"

    .line 539
    .line 540
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 541
    .line 542
    .line 543
    move-result-object v6

    .line 544
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 545
    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 549
    .line 550
    .line 551
    :cond_13
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23;

    .line 554
    .line 555
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast p0, Landroid/media/session/MediaSession$Token;

    .line 558
    .line 559
    invoke-virtual {v0, p0}, Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 560
    .line 561
    .line 562
    return-void

    .line 563
    :pswitch_c
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 564
    .line 565
    check-cast v0, Landroidx/core/provider/FontRequestWorker$2;

    .line 566
    .line 567
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 568
    .line 569
    invoke-virtual {v0, p0}, Landroidx/core/provider/FontRequestWorker$2;->accept(Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    return-void

    .line 573
    :pswitch_d
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v0, Lcoil3/memory/MemoryCacheService;

    .line 576
    .line 577
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 578
    .line 579
    check-cast p0, Landroid/graphics/Typeface;

    .line 580
    .line 581
    iget-object v0, v0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v0, Landroidx/core/content/res/CamUtils;

    .line 584
    .line 585
    if-eqz v0, :cond_14

    .line 586
    .line 587
    invoke-virtual {v0, p0}, Landroidx/core/content/res/CamUtils;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 588
    .line 589
    .line 590
    :cond_14
    return-void

    .line 591
    :pswitch_e
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 592
    .line 593
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 594
    .line 595
    :try_start_3
    sget-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    .line 596
    .line 597
    const/4 v4, 0x2

    .line 598
    if-eqz v1, :cond_15

    .line 599
    .line 600
    const/4 v5, 0x3

    .line 601
    new-array v5, v5, [Ljava/lang/Object;

    .line 602
    .line 603
    aput-object v0, v5, v2

    .line 604
    .line 605
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 606
    .line 607
    aput-object v0, v5, v3

    .line 608
    .line 609
    const-string v0, "AppCompat recreation"

    .line 610
    .line 611
    aput-object v0, v5, v4

    .line 612
    .line 613
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    goto :goto_b

    .line 617
    :cond_15
    sget-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    .line 618
    .line 619
    new-array v4, v4, [Ljava/lang/Object;

    .line 620
    .line 621
    aput-object v0, v4, v2

    .line 622
    .line 623
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 624
    .line 625
    aput-object v0, v4, v3

    .line 626
    .line 627
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 628
    .line 629
    .line 630
    goto :goto_b

    .line 631
    :catchall_3
    move-exception p0

    .line 632
    const-string v0, "ActivityRecreator"

    .line 633
    .line 634
    const-string v1, "Exception while invoking performStopActivity"

    .line 635
    .line 636
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .line 638
    .line 639
    goto :goto_b

    .line 640
    :catch_0
    move-exception p0

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    const-class v1, Ljava/lang/RuntimeException;

    .line 646
    .line 647
    if-ne v0, v1, :cond_17

    .line 648
    .line 649
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    if-eqz v0, :cond_17

    .line 654
    .line 655
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    const-string v1, "Unable to stop"

    .line 660
    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-nez v0, :cond_16

    .line 666
    .line 667
    goto :goto_b

    .line 668
    :cond_16
    throw p0

    .line 669
    :cond_17
    :goto_b
    return-void

    .line 670
    :pswitch_f
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast v0, Landroid/app/Application;

    .line 673
    .line 674
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 675
    .line 676
    check-cast p0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 677
    .line 678
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 679
    .line 680
    .line 681
    return-void

    .line 682
    :pswitch_10
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->val$callbacks:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 685
    .line 686
    iget-object p0, p0, Landroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    .line 687
    .line 688
    iput-object p0, v0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;->currentlyRecreatingToken:Ljava/lang/Object;

    .line 689
    .line 690
    return-void

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
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
