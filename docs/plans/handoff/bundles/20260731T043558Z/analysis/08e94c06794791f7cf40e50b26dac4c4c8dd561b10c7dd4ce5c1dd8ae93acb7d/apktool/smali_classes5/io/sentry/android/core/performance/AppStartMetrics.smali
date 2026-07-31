.class public Lio/sentry/android/core/performance/AppStartMetrics;
.super Lio/sentry/android/core/performance/ActivityLifecycleCallbacksAdapter;
.source "AppStartMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    }
.end annotation


# static fields
.field private static CLASS_LOADED_UPTIME_MS:J

.field private static volatile instance:Lio/sentry/android/core/performance/AppStartMetrics;


# instance fields
.field private final activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final activityLifecycles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;",
            ">;"
        }
    .end annotation
.end field

.field private appLaunchedInForeground:Z

.field private appStartProfiler:Lio/sentry/ITransactionProfiler;

.field private appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

.field private final appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

.field private appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

.field private final applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

.field private final contentProviderOnCreates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ContentProvider;",
            "Lio/sentry/android/core/performance/TimeSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isCallbackRegistered:Z

.field private final sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

.field private shouldSendStartMeasurements:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lio/sentry/android/core/performance/ActivityLifecycleCallbacksAdapter;-><init>()V

    .line 53
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    .line 62
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->isCallbackRegistered:Z

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    .line 83
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    .line 84
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    .line 87
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    return-void
.end method

.method private checkCreateTimeOnMain()V
    .locals 2

    .line 289
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/performance/AppStartMetrics;)V

    .line 290
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/performance/AppStartMetrics;
    .locals 2

    .line 70
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    if-nez v0, :cond_1

    .line 71
    const-class v0, Lio/sentry/android/core/performance/AppStartMetrics;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lio/sentry/android/core/performance/AppStartMetrics;

    invoke-direct {v1}, Lio/sentry/android/core/performance/AppStartMetrics;-><init>()V

    sput-object v1, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 75
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_1
    :goto_0
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    return-object v0
.end method

.method public static onApplicationCreate(Landroid/app/Application;)V
    .locals 4

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 246
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    .line 247
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v3, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 249
    invoke-virtual {v2, p0}, Lio/sentry/android/core/performance/AppStartMetrics;->registerLifecycleCallbacks(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public static onApplicationPostCreate(Landroid/app/Application;)V
    .locals 5

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 262
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    .line 263
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, ".onCreate"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    .line 265
    iget-object p0, v2, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    :cond_0
    return-void
.end method

.method public static onContentProviderCreate(Landroid/content/ContentProvider;)V
    .locals 3

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 364
    new-instance v2, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v2}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    .line 365
    invoke-virtual {v2, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 366
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    iget-object v0, v0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onContentProviderPostCreate(Landroid/content/ContentProvider;)V
    .locals 4

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 379
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    iget-object v2, v2, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/android/core/performance/TimeSpan;

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ".onCreate"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v2, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addActivityLifecycleTimeSpans(Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 2

    .line 196
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 197
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    .line 198
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    .line 199
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    .line 200
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 201
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lio/sentry/ITransactionProfiler;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    .line 206
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    .line 208
    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->isCallbackRegistered:Z

    const/4 v1, 0x1

    .line 209
    iput-boolean v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    .line 210
    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public getActivityLifecycleTimeSpans()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public getAppStartProfiler()Lio/sentry/ITransactionProfiler;
    .locals 1

    .line 215
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    return-object v0
.end method

.method public getAppStartSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1

    .line 228
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    return-object v0
.end method

.method public getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    return-object v0
.end method

.method public getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;
    .locals 6

    .line 173
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result p1

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->getDurationMs()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    return-object p1

    .line 184
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->getDurationMs()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    return-object p1

    .line 191
    :cond_1
    new-instance p1, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {p1}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    return-object p1
.end method

.method public getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    return-object v0
.end method

.method public getApplicationOnCreateTimeSpan()Lio/sentry/android/core/performance/TimeSpan;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    return-object v0
.end method

.method public getClassLoadedUptimeMs()J
    .locals 2

    .line 162
    sget-wide v0, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    return-wide v0
.end method

.method public getContentProviderOnCreateTimeSpans()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/android/core/performance/TimeSpan;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->sdkInitTimeSpan:Lio/sentry/android/core/performance/TimeSpan;

    return-object v0
.end method

.method public isAppLaunchedInForeground()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    return v0
.end method

.method synthetic lambda$checkCreateTimeOnMain$1$io-sentry-android-core-performance-AppStartMetrics()V
    .locals 1

    .line 293
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    .line 297
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ITransactionProfiler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    invoke-interface {v0}, Lio/sentry/ITransactionProfiler;->close()V

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    :cond_0
    return-void
.end method

.method synthetic lambda$onActivityStarted$2$io-sentry-android-core-performance-AppStartMetrics()V
    .locals 0

    .line 337
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->onFirstFrameDrawn()V

    return-void
.end method

.method synthetic lambda$onActivityStarted$3$io-sentry-android-core-performance-AppStartMetrics()V
    .locals 0

    .line 339
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->onFirstFrameDrawn()V

    return-void
.end method

.method synthetic lambda$registerLifecycleCallbacks$0$io-sentry-android-core-performance-AppStartMetrics()V
    .locals 0

    .line 285
    invoke-direct {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->checkCreateTimeOnMain()V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 310
    iget-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    .line 312
    iget-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v3

    sub-long v3, v0, v3

    .line 313
    iget-boolean p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 324
    sget-object p1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    goto :goto_0

    :cond_1
    sget-object p1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    :goto_0
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    goto :goto_2

    .line 314
    :cond_2
    :goto_1
    sget-object p1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 316
    iput-boolean v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    .line 317
    iget-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    .line 318
    iget-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->start()V

    .line 319
    iget-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSpan:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {p1, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 320
    sput-wide v0, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    .line 321
    iget-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 322
    iget-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->applicationOnCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->reset()V

    .line 327
    :cond_3
    :goto_2
    iput-boolean v2, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activeActivitiesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 349
    iput-boolean p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    .line 351
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 332
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 336
    new-instance v0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/performance/AppStartMetrics;)V

    new-instance v1, Lio/sentry/android/core/BuildInfoProvider;

    .line 337
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 336
    invoke-static {p1, v0, v1}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    goto :goto_0

    .line 339
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/performance/AppStartMetrics;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onAppStartSpansSent()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    .line 153
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->contentProviderOnCreates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->activityLifecycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method declared-synchronized onFirstFrameDrawn()V
    .locals 2

    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 390
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerLifecycleCallbacks(Landroid/app/Application;)V
    .locals 2

    .line 275
    iget-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->isCallbackRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->isCallbackRegistered:Z

    .line 279
    iget-boolean v1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    if-nez v1, :cond_2

    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    .line 280
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->instance:Lio/sentry/android/core/performance/AppStartMetrics;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 285
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/performance/AppStartMetrics;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAppLaunchedInForeground(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    return-void
.end method

.method public setAppStartProfiler(Lio/sentry/ITransactionProfiler;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartProfiler:Lio/sentry/ITransactionProfiler;

    return-void
.end method

.method public setAppStartSamplingDecision(Lio/sentry/TracesSamplingDecision;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartSamplingDecision:Lio/sentry/TracesSamplingDecision;

    return-void
.end method

.method public setAppStartType(Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appStartType:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    return-void
.end method

.method public setClassLoadedUptimeMs(J)V
    .locals 0

    .line 234
    sput-wide p1, Lio/sentry/android/core/performance/AppStartMetrics;->CLASS_LOADED_UPTIME_MS:J

    return-void
.end method

.method public shouldSendStartMeasurements()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->appLaunchedInForeground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
