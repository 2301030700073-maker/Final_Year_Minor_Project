.class public final Lio/sentry/android/core/SentryPerformanceProvider;
.super Lio/sentry/android/core/EmptySecureContentProvider;
.source "SentryPerformanceProvider.java"


# static fields
.field private static final sdkInitMillis:J


# instance fields
.field private activityCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private app:Landroid/app/Application;

.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/SentryPerformanceProvider;->sdkInitMillis:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lio/sentry/android/core/EmptySecureContentProvider;-><init>()V

    .line 56
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    .line 57
    new-instance v1, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v1, v0}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    iput-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method

.method constructor <init>(Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lio/sentry/android/core/EmptySecureContentProvider;-><init>()V

    .line 51
    iput-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    .line 52
    iput-object p2, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method

.method private launchAppStartProfiler(Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 12

    .line 96
    invoke-virtual {p0}, Lio/sentry/android/core/SentryPerformanceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 99
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v2, "App. Context from ContentProvider is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 104
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v2

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    return-void

    .line 108
    :cond_1
    invoke-static {v1}, Lio/sentry/android/core/AndroidOptionsInitializer;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 109
    new-instance v3, Ljava/io/File;

    const-string v4, "app_start_profiling_config"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 116
    :cond_2
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    :try_start_1
    new-instance v2, Lio/sentry/JsonSerializer;

    .line 119
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/sentry/JsonSerializer;-><init>(Lio/sentry/SentryOptions;)V

    const-class v3, Lio/sentry/SentryAppStartProfilingOptions;

    .line 120
    invoke-virtual {v2, v9, v3}, Lio/sentry/JsonSerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryAppStartProfilingOptions;

    if-nez v2, :cond_3

    .line 123
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Unable to deserialize the SentryAppStartProfilingOptions. App start profiling will not start."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :try_start_2
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 129
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 130
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Profiling is not enabled. App start profiling will not start."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :try_start_4
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    .line 135
    :cond_4
    :try_start_5
    new-instance v3, Lio/sentry/TracesSamplingDecision;

    .line 137
    invoke-virtual {v2}, Lio/sentry/SentryAppStartProfilingOptions;->isTraceSampled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 138
    invoke-virtual {v2}, Lio/sentry/SentryAppStartProfilingOptions;->getTraceSampleRate()Ljava/lang/Double;

    move-result-object v5

    .line 139
    invoke-virtual {v2}, Lio/sentry/SentryAppStartProfilingOptions;->isProfileSampled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 140
    invoke-virtual {v2}, Lio/sentry/SentryAppStartProfilingOptions;->getProfileSampleRate()Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 142
    invoke-virtual {p1, v3}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 144
    invoke-virtual {v3}, Lio/sentry/TracesSamplingDecision;->getProfileSampled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 145
    invoke-virtual {v3}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 149
    :cond_5
    iget-object v3, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "App start profiling started."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance v10, Lio/sentry/android/core/AndroidTransactionProfiler;

    iget-object v3, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    new-instance v4, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    iget-object v5, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v4, v1, v0, v5}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    iget-object v5, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    .line 157
    invoke-virtual {v2}, Lio/sentry/SentryAppStartProfilingOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-virtual {v2}, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled()Z

    move-result v7

    .line 159
    invoke-virtual {v2}, Lio/sentry/SentryAppStartProfilingOptions;->getProfilingTracesHz()I

    move-result v8

    new-instance v11, Lio/sentry/SentryExecutorService;

    invoke-direct {v11}, Lio/sentry/SentryExecutorService;-><init>()V

    move-object v0, v10

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/ISentryExecutorService;)V

    .line 161
    invoke-virtual {p1, v10}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 162
    invoke-interface {v10}, Lio/sentry/ITransactionProfiler;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    :try_start_6
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 146
    :cond_6
    :goto_0
    :try_start_7
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "App start profiling was not sampled. It will not start."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 164
    :try_start_8
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-void

    :catchall_0
    move-exception p1

    .line 116
    :try_start_9
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    .line 167
    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error reading app start profiling config file. "

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-exception p1

    .line 165
    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "App start profiling config file not found. "

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private onAppLaunched(Landroid/content/Context;Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 3

    .line 176
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 177
    sget-wide v1, Lio/sentry/android/core/SentryPerformanceProvider;->sdkInitMillis:J

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 181
    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 182
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 183
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 186
    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 187
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->app:Landroid/app/Application;

    .line 189
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->app:Landroid/app/Application;

    if-nez p1, :cond_2

    return-void

    .line 193
    :cond_2
    invoke-virtual {p2, p1}, Lio/sentry/android/core/performance/AppStartMetrics;->registerLifecycleCallbacks(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 71
    const-class v0, Lio/sentry/android/core/SentryPerformanceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-super {p0, p1, p2}, Lio/sentry/android/core/EmptySecureContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An applicationId is required to fulfill the manifest placeholder."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    invoke-static {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->onContentProviderCreate(Landroid/content/ContentProvider;)V

    .line 62
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lio/sentry/android/core/SentryPerformanceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/SentryPerformanceProvider;->onAppLaunched(Landroid/content/Context;Lio/sentry/android/core/performance/AppStartMetrics;)V

    .line 64
    invoke-direct {p0, v0}, Lio/sentry/android/core/SentryPerformanceProvider;->launchAppStartProfiler(Lio/sentry/android/core/performance/AppStartMetrics;)V

    .line 65
    invoke-static {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->onContentProviderPostCreate(Landroid/content/ContentProvider;)V

    const/4 v0, 0x1

    return v0
.end method

.method public shutdown()V
    .locals 2

    .line 86
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v1}, Lio/sentry/ITransactionProfiler;->close()V

    .line 92
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
