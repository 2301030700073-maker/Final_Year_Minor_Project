.class public final Lio/sentry/DefaultTransactionPerformanceCollector;
.super Ljava/lang/Object;
.source "DefaultTransactionPerformanceCollector.java"

# interfaces
.implements Lio/sentry/TransactionPerformanceCollector;


# static fields
.field private static final TRANSACTION_COLLECTION_INTERVAL_MILLIS:J = 0x64L

.field private static final TRANSACTION_COLLECTION_TIMEOUT_MILLIS:J = 0x7530L


# instance fields
.field private final continuousCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceContinuousCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final hasNoCollectors:Z

.field private final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastCollectionTimestamp:J

.field private final options:Lio/sentry/SentryOptions;

.field private final performanceDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final snapshotCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceSnapshotCollector;",
            ">;"
        }
    .end annotation
.end field

.field private volatile timer:Ljava/util/Timer;

.field private final timerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    .line 31
    iput-wide v2, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->lastCollectionTimestamp:J

    .line 34
    const-string v0, "The options object is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->snapshotCollectors:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->continuousCollectors:Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getPerformanceCollectors()Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IPerformanceCollector;

    .line 41
    instance-of v2, v0, Lio/sentry/IPerformanceSnapshotCollector;

    if-eqz v2, :cond_1

    .line 42
    iget-object v2, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->snapshotCollectors:Ljava/util/List;

    move-object v3, v0

    check-cast v3, Lio/sentry/IPerformanceSnapshotCollector;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    instance-of v2, v0, Lio/sentry/IPerformanceContinuousCollector;

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->continuousCollectors:Ljava/util/List;

    check-cast v0, Lio/sentry/IPerformanceContinuousCollector;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->snapshotCollectors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->hasNoCollectors:Z

    return-void
.end method

.method static synthetic access$000(Lio/sentry/DefaultTransactionPerformanceCollector;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->snapshotCollectors:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lio/sentry/DefaultTransactionPerformanceCollector;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->lastCollectionTimestamp:J

    return-wide v0
.end method

.method static synthetic access$102(Lio/sentry/DefaultTransactionPerformanceCollector;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->lastCollectionTimestamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lio/sentry/DefaultTransactionPerformanceCollector;)Ljava/util/Map;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 175
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 176
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "stop collecting all performance info for transactions"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 177
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 180
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IPerformanceContinuousCollector;

    .line 181
    invoke-interface {v1}, Lio/sentry/IPerformanceContinuousCollector;->clear()V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 187
    iput-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    .line 189
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$start$0$io-sentry-DefaultTransactionPerformanceCollector(Lio/sentry/ITransaction;)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lio/sentry/DefaultTransactionPerformanceCollector;->stop(Lio/sentry/ITransaction;)Ljava/util/List;

    return-void
.end method

.method public onSpanFinished(Lio/sentry/ISpan;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IPerformanceContinuousCollector;

    .line 145
    invoke-interface {v1, p1}, Lio/sentry/IPerformanceContinuousCollector;->onSpanFinished(Lio/sentry/ISpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSpanStarted(Lio/sentry/ISpan;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IPerformanceContinuousCollector;

    .line 138
    invoke-interface {v1, p1}, Lio/sentry/IPerformanceContinuousCollector;->onSpanStarted(Lio/sentry/ISpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start(Lio/sentry/ITransaction;)V
    .locals 10

    .line 55
    iget-boolean v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->hasNoCollectors:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 57
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v1, "No collector found. Performance stats will not be captured during transactions."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IPerformanceContinuousCollector;

    .line 65
    invoke-interface {v1, p1}, Lio/sentry/IPerformanceContinuousCollector;->onSpanStarted(Lio/sentry/ISpan;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :try_start_0
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 73
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/DefaultTransactionPerformanceCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/sentry/DefaultTransactionPerformanceCollector$$ExternalSyntheticLambda0;-><init>(Lio/sentry/DefaultTransactionPerformanceCollector;Lio/sentry/ITransaction;)V

    const-wide/16 v2, 0x7530

    .line 74
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 76
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 77
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed to call the executor. Performance collector will not be automatically finished. Did you call Sentry.close()?"

    .line 78
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 85
    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 86
    :try_start_1
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    if-nez v1, :cond_3

    .line 87
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    .line 90
    :cond_3
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    new-instance v1, Lio/sentry/DefaultTransactionPerformanceCollector$1;

    invoke-direct {v1, p0}, Lio/sentry/DefaultTransactionPerformanceCollector$1;-><init>(Lio/sentry/DefaultTransactionPerformanceCollector;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 104
    new-instance v5, Lio/sentry/DefaultTransactionPerformanceCollector$2;

    invoke-direct {v5, p0}, Lio/sentry/DefaultTransactionPerformanceCollector$2;-><init>(Lio/sentry/DefaultTransactionPerformanceCollector;)V

    .line 127
    iget-object v4, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x64

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 131
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public stop(Lio/sentry/ITransaction;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 152
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 156
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 153
    const-string v3, "stop collecting performance info for transactions %s (%s)"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    .line 160
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 162
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->continuousCollectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IPerformanceContinuousCollector;

    .line 163
    invoke-interface {v2, p1}, Lio/sentry/IPerformanceContinuousCollector;->onSpanFinished(Lio/sentry/ISpan;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p0}, Lio/sentry/DefaultTransactionPerformanceCollector;->close()V

    :cond_1
    return-object v0
.end method
