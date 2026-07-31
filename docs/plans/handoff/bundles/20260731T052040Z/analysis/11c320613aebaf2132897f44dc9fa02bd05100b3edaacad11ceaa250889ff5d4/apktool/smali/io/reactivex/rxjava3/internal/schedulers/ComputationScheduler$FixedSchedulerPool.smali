.class public final Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport;


# instance fields
.field public final cores:I

.field public final eventLoops:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

.field public n:J


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->cores:I

    .line 5
    .line 6
    new-array v0, p1, [Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 7
    .line 8
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-ge v0, p1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 14
    .line 15
    new-instance v2, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 16
    .line 17
    invoke-direct {v2, p2}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 18
    .line 19
    .line 20
    aput-object v2, v1, v0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final createWorkers(ILorg/acra/util/ProcessFinisher;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lorg/reactivestreams/Subscriber;

    .line 4
    .line 5
    iget-object v1, p2, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Lorg/reactivestreams/Subscriber;

    .line 8
    .line 9
    iget-object p2, p2, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iget v3, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->cores:I

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    :goto_0
    if-ge v2, p1, :cond_0

    .line 19
    .line 20
    sget-object p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->SHUTDOWN_WORKER:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 21
    .line 22
    invoke-virtual {p2, v2, v1, v0, p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->createSubscriber(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    .line 30
    .line 31
    long-to-int v4, v4

    .line 32
    rem-int/2addr v4, v3

    .line 33
    move v5, v2

    .line 34
    :goto_1
    if-ge v5, p1, :cond_3

    .line 35
    .line 36
    new-instance v6, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;

    .line 37
    .line 38
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 39
    .line 40
    aget-object v7, v7, v4

    .line 41
    .line 42
    invoke-direct {v6, v7}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$EventLoopWorker;-><init>(Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v5, v1, v0, v6}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->createSubscriber(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    if-ne v4, v3, :cond_2

    .line 51
    .line 52
    move v4, v2

    .line 53
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    int-to-long p1, v4

    .line 57
    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    .line 58
    .line 59
    return-void
.end method

.method public final getEventLoop()Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;
    .locals 5

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->cores:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->SHUTDOWN_WORKER:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    .line 9
    .line 10
    const-wide/16 v3, 0x1

    .line 11
    .line 12
    add-long/2addr v3, v1

    .line 13
    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    .line 14
    .line 15
    int-to-long v3, v0

    .line 16
    rem-long/2addr v1, v3

    .line 17
    long-to-int v0, v1

    .line 18
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 19
    .line 20
    aget-object p0, p0, v0

    .line 21
    .line 22
    return-object p0
.end method
