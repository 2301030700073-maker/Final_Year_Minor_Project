.class final Lio/sentry/android/core/AndroidTransactionProfiler;
.super Ljava/lang/Object;
.source "AndroidTransactionProfiler.java"

# interfaces
.implements Lio/sentry/ITransactionProfiler;


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

.field private final executorService:Lio/sentry/ISentryExecutorService;

.field private final frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private isInitialized:Z

.field private final isProfilingEnabled:Z

.field private final logger:Lio/sentry/ILogger;

.field private profileStartCpuMillis:J

.field private profileStartNanos:J

.field private profileStartTimestamp:Ljava/util/Date;

.field private profiler:Lio/sentry/android/core/AndroidProfiler;

.field private final profilingTracesDirPath:Ljava/lang/String;

.field private final profilingTracesHz:I

.field private transactionsCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/ISentryExecutorService;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isInitialized:Z

    .line 41
    iput v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    .line 90
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "The application context is required"

    .line 89
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->context:Landroid/content/Context;

    .line 91
    const-string p1, "ILogger is required"

    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    .line 92
    const-string p1, "SentryFrameMetricsCollector is required"

    .line 93
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 94
    const-string p1, "The BuildInfoProvider is required."

    .line 95
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 96
    iput-object p5, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesDirPath:Ljava/lang/String;

    .line 97
    iput-boolean p6, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isProfilingEnabled:Z

    .line 98
    iput p7, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesHz:I

    .line 99
    const-string p1, "The ISentryExecutorService is required."

    .line 100
    invoke-static {p8, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISentryExecutorService;

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->executorService:Lio/sentry/ISentryExecutorService;

    .line 101
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartTimestamp:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 9

    .line 72
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    .line 73
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isProfilingEnabled()Z

    move-result v6

    .line 75
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilingTracesHz()I

    move-result v7

    .line 76
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    .line 68
    invoke-direct/range {v0 .. v8}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/ISentryExecutorService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/IHub;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    return-void
.end method

.method private init()V
    .locals 11

    .line 106
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isInitialized:Z

    .line 110
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isProfilingEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Profiling is disabled in options."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesDirPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Disabling profiling because no profiling traces dir path is defined in options."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 120
    :cond_2
    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesHz:I

    if-gtz v0, :cond_3

    .line 121
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    iget v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesHz:I

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 121
    const-string v3, "Disabling profiling because trace rate is set to %d"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 128
    :cond_3
    new-instance v0, Lio/sentry/android/core/AndroidProfiler;

    iget-object v5, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesDirPath:Ljava/lang/String;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 131
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesHz:I

    div-int v6, v1, v2

    iget-object v7, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v8, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->executorService:Lio/sentry/ISentryExecutorService;

    iget-object v9, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    iget-object v10, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lio/sentry/android/core/AndroidProfiler;-><init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ISentryExecutorService;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    return-void
.end method

.method static synthetic lambda$onTransactionFinish$0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private onFirstStart()Z
    .locals 3

    .line 161
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 165
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/core/AndroidProfiler;->start()Lio/sentry/android/core/AndroidProfiler$ProfileStartData;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 170
    :cond_1
    iget-wide v1, v0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->startNanos:J

    iput-wide v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartNanos:J

    .line 171
    iget-wide v1, v0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->startCpuMillis:J

    iput-wide v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    .line 172
    iget-object v0, v0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->startTimestamp:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartTimestamp:Ljava/util/Date;

    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized onTransactionFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;",
            "Lio/sentry/SentryOptions;",
            ")",
            "Lio/sentry/ProfilingTraceData;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v2, p6

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 210
    monitor-exit p0

    return-object v4

    .line 215
    :cond_0
    :try_start_1
    iget-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v5, 0x16

    if-ge v3, v5, :cond_1

    monitor-exit p0

    return-object v4

    .line 218
    :cond_1
    :try_start_2
    iget-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    if-eqz v3, :cond_e

    .line 219
    invoke-virtual {v3}, Lio/sentry/ProfilingTransactionData;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, p2

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 229
    :cond_2
    iget v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    const/4 v5, 0x1

    if-lez v3, :cond_3

    sub-int/2addr v3, v5

    .line 230
    iput v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    .line 233
    :cond_3
    iget-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v9, "Transaction %s (%s) finished."

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v6, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    if-eqz v3, :cond_5

    .line 237
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    if-eqz v0, :cond_4

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v5, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartNanos:J

    .line 240
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 241
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    .line 242
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 238
    invoke-virtual {v0, v2, v3, v5, v6}, Lio/sentry/ProfilingTransactionData;->notifyFinish(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    :cond_4
    monitor-exit p0

    return-object v4

    .line 247
    :cond_5
    :try_start_3
    iget-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    const/4 v6, 0x0

    move-object/from16 v9, p5

    .line 248
    invoke-virtual {v3, v6, v9}, Lio/sentry/android/core/AndroidProfiler;->endAndCollect(ZLjava/util/List;)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_6

    .line 251
    monitor-exit p0

    return-object v4

    .line 254
    :cond_6
    :try_start_4
    iget-wide v9, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->endNanos:J

    iget-wide v11, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartNanos:J

    sub-long/2addr v9, v11

    .line 256
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    iget-object v5, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    if-eqz v5, :cond_7

    .line 259
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_7
    iput-object v4, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    .line 263
    iput v6, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    .line 265
    const-string v5, "0"

    .line 267
    instance-of v12, v2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v12, :cond_8

    .line 268
    iget-object v4, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->context:Landroid/content/Context;

    move-object v12, v2

    check-cast v12, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v4, v12}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/android/core/DeviceInfoUtil;->getTotalMemory()Ljava/lang/Long;

    move-result-object v4

    :cond_8
    if-eqz v4, :cond_9

    .line 271
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_0

    :cond_9
    move-object/from16 v17, v5

    .line 273
    :goto_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 277
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/sentry/ProfilingTransactionData;

    .line 278
    iget-wide v13, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->endNanos:J

    .line 279
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v14, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartNanos:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-wide v6, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->endCpuMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 278
    invoke-virtual {v12, v13, v14, v6, v7}, Lio/sentry/ProfilingTransactionData;->notifyFinish(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const/4 v6, 0x0

    goto :goto_1

    .line 284
    :cond_a
    new-instance v23, Lio/sentry/ProfilingTraceData;

    iget-object v5, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->traceFile:Ljava/io/File;

    iget-object v6, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartTimestamp:Ljava/util/Date;

    .line 291
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    iget-object v7, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 292
    invoke-virtual {v7}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v10

    if-eqz v4, :cond_b

    .line 293
    array-length v7, v4

    if-lez v7, :cond_b

    const/4 v7, 0x0

    aget-object v4, v4, v7

    goto :goto_2

    :cond_b
    const-string v4, ""

    :goto_2
    move-object v12, v4

    new-instance v13, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda0;-><init>()V

    iget-object v4, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 295
    invoke-virtual {v4}, Lio/sentry/android/core/BuildInfoProvider;->getManufacturer()Ljava/lang/String;

    move-result-object v14

    iget-object v4, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 296
    invoke-virtual {v4}, Lio/sentry/android/core/BuildInfoProvider;->getModel()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 297
    invoke-virtual {v4}, Lio/sentry/android/core/BuildInfoProvider;->getVersionRelease()Ljava/lang/String;

    move-result-object v16

    iget-object v4, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 298
    invoke-virtual {v4}, Lio/sentry/android/core/BuildInfoProvider;->isEmulator()Ljava/lang/Boolean;

    move-result-object v18

    .line 300
    invoke-virtual/range {p6 .. p6}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v19

    .line 301
    invoke-virtual/range {p6 .. p6}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v20

    .line 302
    invoke-virtual/range {p6 .. p6}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v21

    .line 303
    iget-boolean v2, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->didTimeout:Z

    if-nez v2, :cond_d

    if-eqz p4, :cond_c

    goto :goto_3

    .line 305
    :cond_c
    const-string v2, "normal"

    goto :goto_4

    .line 304
    :cond_d
    :goto_3
    const-string v2, "timeout"

    :goto_4
    move-object/from16 v22, v2

    .line 305
    iget-object v8, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->measurementsMap:Ljava/util/Map;

    move-object/from16 v2, v23

    move-object v3, v5

    move-object v4, v6

    move-object v5, v11

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v0, v8

    move-object/from16 v8, p3

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v0

    invoke-direct/range {v2 .. v22}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 284
    monitor-exit p0

    return-object v23

    .line 221
    :cond_e
    :goto_5
    :try_start_5
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "Transaction %s (%s) finished, but was not currently being profiled. Skipping"

    move-object/from16 v6, p3

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v5, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized bindTransaction(Lio/sentry/ITransaction;)V
    .locals 4

    monitor-enter p0

    .line 179
    :try_start_0
    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lio/sentry/ProfilingTransactionData;

    iget-wide v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartNanos:J

    .line 181
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/sentry/ProfilingTransactionData;-><init>(Lio/sentry/ITransaction;Ljava/lang/Long;Ljava/lang/Long;)V

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 8

    .line 317
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lio/sentry/ProfilingTransactionData;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    .line 320
    invoke-virtual {v0}, Lio/sentry/ProfilingTransactionData;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    .line 321
    invoke-virtual {v0}, Lio/sentry/ProfilingTransactionData;->getTraceId()Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 318
    invoke-direct/range {v1 .. v7}, Lio/sentry/android/core/AndroidTransactionProfiler;->onTransactionFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;

    goto :goto_0

    .line 325
    :cond_0
    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 328
    iput v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    .line 332
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {v0}, Lio/sentry/android/core/AndroidProfiler;->close()V

    :cond_2
    return-void
.end method

.method getTransactionsCounter()I
    .locals 1

    .line 339
    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 311
    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized onTransactionFinish(Lio/sentry/ITransaction;Ljava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;",
            "Lio/sentry/SentryOptions;",
            ")",
            "Lio/sentry/ProfilingTraceData;"
        }
    .end annotation

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    .line 191
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/AndroidTransactionProfiler;->onTransactionFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lio/sentry/android/core/AndroidTransactionProfiler;->init()V

    .line 147
    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 149
    invoke-direct {p0}, Lio/sentry/android/core/AndroidTransactionProfiler;->onFirstStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Profiler started."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_1
    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    .line 153
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "A profile is already running. This profile will be ignored."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
