.class public final Lio/sentry/MetricsAggregator;
.super Ljava/lang/Object;
.source "MetricsAggregator.java"

# interfaces
.implements Lio/sentry/IMetricsAggregator;
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private final beforeEmitCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

.field private final buckets:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/metrics/Metric;",
            ">;>;"
        }
    .end annotation
.end field

.field private final client:Lio/sentry/metrics/IMetricsClient;

.field private final dateProvider:Lio/sentry/SentryDateProvider;

.field private volatile executorService:Lio/sentry/ISentryExecutorService;

.field private volatile flushScheduled:Z

.field private volatile isClosed:Z

.field private final logger:Lio/sentry/ILogger;

.field private final maxWeight:I

.field private final totalBucketsWeight:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/MetricsAggregator;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/metrics/IMetricsClient;)V
    .locals 7

    .line 59
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v3

    .line 62
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getBeforeEmitMetricCallback()Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    move-result-object v5

    .line 63
    invoke-static {}, Lio/sentry/NoOpSentryExecutorService;->getInstance()Lio/sentry/ISentryExecutorService;

    move-result-object v6

    const v4, 0x186a0

    move-object v0, p0

    move-object v1, p2

    .line 57
    invoke-direct/range {v0 .. v6}, Lio/sentry/MetricsAggregator;-><init>(Lio/sentry/metrics/IMetricsClient;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;ILio/sentry/SentryOptions$BeforeEmitMetricCallback;Lio/sentry/ISentryExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/metrics/IMetricsClient;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;ILio/sentry/SentryOptions$BeforeEmitMetricCallback;Lio/sentry/ISentryExecutorService;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lio/sentry/MetricsAggregator;->isClosed:Z

    .line 42
    iput-boolean v0, p0, Lio/sentry/MetricsAggregator;->flushScheduled:Z

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/sentry/MetricsAggregator;->totalBucketsWeight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    iput-object p1, p0, Lio/sentry/MetricsAggregator;->client:Lio/sentry/metrics/IMetricsClient;

    .line 75
    iput-object p2, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    .line 76
    iput-object p3, p0, Lio/sentry/MetricsAggregator;->dateProvider:Lio/sentry/SentryDateProvider;

    .line 77
    iput p4, p0, Lio/sentry/MetricsAggregator;->maxWeight:I

    .line 78
    iput-object p5, p0, Lio/sentry/MetricsAggregator;->beforeEmitCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    .line 79
    iput-object p6, p0, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    return-void
.end method

.method private add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/metrics/MetricType;",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move-wide/from16 v2, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    const-string v5, "Unknown MetricType: "

    .line 154
    iget-boolean v0, v1, Lio/sentry/MetricsAggregator;->isClosed:Z

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, v1, Lio/sentry/MetricsAggregator;->beforeEmitCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    if-eqz v0, :cond_1

    .line 160
    :try_start_0
    invoke-interface {v0, v11, v13}, Lio/sentry/SentryOptions$BeforeEmitMetricCallback;->execute(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return-void

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 164
    iget-object v0, v1, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v8, "The beforeEmit callback threw an exception."

    invoke-interface {v0, v7, v8, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    :cond_1
    invoke-static/range {p7 .. p8}, Lio/sentry/metrics/MetricsHelper;->getTimeBucketKey(J)J

    move-result-wide v6

    .line 169
    invoke-direct {v1, v6, v7}, Lio/sentry/MetricsAggregator;->getOrAddTimeBucket(J)Ljava/util/Map;

    move-result-object v14

    .line 171
    invoke-static {v4, v11, v12, v13}, Lio/sentry/metrics/MetricsHelper;->getMetricBucketKey(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 176
    monitor-enter v14

    .line 177
    :try_start_1
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/sentry/metrics/Metric;

    const/4 v15, 0x1

    if-eqz v6, :cond_2

    .line 179
    invoke-virtual {v6}, Lio/sentry/metrics/Metric;->getWeight()I

    move-result v5

    .line 180
    invoke-virtual {v6, v2, v3}, Lio/sentry/metrics/Metric;->add(D)V

    .line 181
    invoke-virtual {v6}, Lio/sentry/metrics/Metric;->getWeight()I

    move-result v6

    sub-int/2addr v6, v5

    goto/16 :goto_2

    .line 184
    :cond_2
    sget-object v6, Lio/sentry/MetricsAggregator$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    invoke-virtual/range {p1 .. p1}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v15, :cond_6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 195
    new-instance v5, Lio/sentry/metrics/SetMetric;

    invoke-direct {v5, v11, v12, v13}, Lio/sentry/metrics/SetMetric;-><init>(Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)V

    double-to-int v6, v2

    int-to-double v6, v6

    .line 198
    invoke-virtual {v5, v6, v7}, Lio/sentry/metrics/Metric;->add(D)V

    goto :goto_1

    .line 201
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/sentry/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_4
    new-instance v16, Lio/sentry/metrics/DistributionMetric;

    move-object/from16 v5, v16

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lio/sentry/metrics/DistributionMetric;-><init>(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V

    goto :goto_0

    .line 189
    :cond_5
    new-instance v16, Lio/sentry/metrics/GaugeMetric;

    move-object/from16 v5, v16

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lio/sentry/metrics/GaugeMetric;-><init>(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V

    goto :goto_0

    .line 186
    :cond_6
    new-instance v16, Lio/sentry/metrics/CounterMetric;

    move-object/from16 v5, v16

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lio/sentry/metrics/CounterMetric;-><init>(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V

    :goto_0
    move-object/from16 v5, v16

    .line 203
    :goto_1
    invoke-virtual {v5}, Lio/sentry/metrics/Metric;->getWeight()I

    move-result v6

    .line 204
    invoke-interface {v14, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :goto_2
    iget-object v5, v1, Lio/sentry/MetricsAggregator;->totalBucketsWeight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 207
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p9, :cond_8

    .line 212
    sget-object v5, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    if-ne v4, v5, :cond_7

    int-to-double v2, v6

    :cond_7
    move-wide v6, v2

    move-object/from16 v2, p9

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 213
    invoke-virtual/range {v2 .. v9}, Lio/sentry/metrics/LocalMetricsAggregator;->add(Ljava/lang/String;Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V

    .line 216
    :cond_8
    invoke-direct/range {p0 .. p0}, Lio/sentry/MetricsAggregator;->isOverWeight()Z

    move-result v0

    .line 217
    iget-boolean v2, v1, Lio/sentry/MetricsAggregator;->isClosed:Z

    if-nez v2, :cond_d

    if-nez v0, :cond_9

    iget-boolean v2, v1, Lio/sentry/MetricsAggregator;->flushScheduled:Z

    if-nez v2, :cond_d

    .line 218
    :cond_9
    monitor-enter p0

    .line 219
    :try_start_2
    iget-boolean v2, v1, Lio/sentry/MetricsAggregator;->isClosed:Z

    if-nez v2, :cond_c

    .line 223
    iget-object v2, v1, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    instance-of v2, v2, Lio/sentry/NoOpSentryExecutorService;

    if-eqz v2, :cond_a

    .line 224
    new-instance v2, Lio/sentry/SentryExecutorService;

    invoke-direct {v2}, Lio/sentry/SentryExecutorService;-><init>()V

    iput-object v2, v1, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    .line 227
    :cond_a
    iput-boolean v15, v1, Lio/sentry/MetricsAggregator;->flushScheduled:Z

    if-eqz v0, :cond_b

    const-wide/16 v2, 0x0

    goto :goto_3

    :cond_b
    const-wide/16 v2, 0x1388

    .line 229
    :goto_3
    iget-object v0, v1, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 231
    :cond_c
    monitor-exit p0

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_d
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    .line 207
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private static getBucketWeight(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/metrics/Metric;",
            ">;)I"
        }
    .end annotation

    .line 282
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/metrics/Metric;

    .line 283
    invoke-virtual {v1}, Lio/sentry/metrics/Metric;->getWeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getFlushableBuckets(Z)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    invoke-interface {p1}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 294
    :cond_0
    invoke-direct {p0}, Lio/sentry/MetricsAggregator;->nowMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/metrics/MetricsHelper;->getCutoffTimestampMs(J)J

    move-result-wide v0

    .line 295
    invoke-static {v0, v1}, Lio/sentry/metrics/MetricsHelper;->getTimeBucketKey(J)J

    move-result-wide v0

    .line 296
    iget-object p1, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private getOrAddTimeBucket(J)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/metrics/Metric;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 307
    iget-object v1, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    iget-object v2, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private isOverWeight()Z
    .locals 2

    .line 276
    iget-object v0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    iget-object v1, p0, Lio/sentry/MetricsAggregator;->totalBucketsWeight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    iget v1, p0, Lio/sentry/MetricsAggregator;->maxWeight:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nowMillis()J
    .locals 3

    .line 340
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/sentry/MetricsAggregator;->dateProvider:Lio/sentry/SentryDateProvider;

    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    monitor-enter p0

    const/4 v0, 0x1

    .line 321
    :try_start_0
    iput-boolean v0, p0, Lio/sentry/MetricsAggregator;->isClosed:Z

    .line 322
    iget-object v1, p0, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lio/sentry/ISentryExecutorService;->close(J)V

    .line 323
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {p0, v0}, Lio/sentry/MetricsAggregator;->flush(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 323
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    .line 112
    sget-object v1, Lio/sentry/metrics/MetricType;->Distribution:Lio/sentry/metrics/MetricType;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public flush(Z)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 237
    invoke-direct {p0}, Lio/sentry/MetricsAggregator;->isOverWeight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object p1, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Metrics: total weight exceeded, flushing all buckets"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 242
    :cond_0
    iput-boolean v0, p0, Lio/sentry/MetricsAggregator;->flushScheduled:Z

    .line 244
    invoke-direct {p0, p1}, Lio/sentry/MetricsAggregator;->getFlushableBuckets(Z)Ljava/util/Set;

    move-result-object p1

    .line 245
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object p1, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Metrics: nothing to flush"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 249
    :cond_1
    iget-object v1, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Metrics: flushing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " buckets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 253
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 254
    iget-object v5, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 256
    monitor-enter v5

    .line 257
    :try_start_0
    invoke-static {v5}, Lio/sentry/MetricsAggregator;->getBucketWeight(Ljava/util/Map;)I

    move-result v6

    .line 258
    iget-object v7, p0, Lio/sentry/MetricsAggregator;->totalBucketsWeight:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v6, v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 260
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 261
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    if-nez v2, :cond_4

    .line 267
    iget-object p1, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Metrics: only empty buckets found"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 271
    :cond_4
    iget-object p1, p0, Lio/sentry/MetricsAggregator;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Metrics: capturing metrics"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object p1, p0, Lio/sentry/MetricsAggregator;->client:Lio/sentry/metrics/IMetricsClient;

    new-instance v0, Lio/sentry/metrics/EncodedMetrics;

    invoke-direct {v0, v1}, Lio/sentry/metrics/EncodedMetrics;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Lio/sentry/metrics/IMetricsClient;->captureMetrics(Lio/sentry/metrics/EncodedMetrics;)Lio/sentry/protocol/SentryId;

    return-void
.end method

.method public gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    .line 101
    sget-object v1, Lio/sentry/metrics/MetricType;->Gauge:Lio/sentry/metrics/MetricType;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    .line 90
    sget-object v1, Lio/sentry/metrics/MetricType;->Counter:Lio/sentry/metrics/MetricType;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, v0}, Lio/sentry/MetricsAggregator;->flush(Z)V

    .line 332
    monitor-enter p0

    .line 333
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/MetricsAggregator;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/MetricsAggregator;->buckets:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lio/sentry/MetricsAggregator;->executorService:Lio/sentry/ISentryExecutorService;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, p0, v1, v2}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 336
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    .line 123
    sget-object v1, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    move v0, p2

    int-to-double v3, v0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lio/sentry/metrics/LocalMetricsAggregator;",
            ")V"
        }
    .end annotation

    .line 135
    sget-object v0, Lio/sentry/MetricsAggregator;->UTF8:Ljava/nio/charset/Charset;

    move-object v1, p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 137
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v2, 0x0

    .line 138
    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 139
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 141
    sget-object v2, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    int-to-double v4, v0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lio/sentry/MetricsAggregator;->add(Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method
