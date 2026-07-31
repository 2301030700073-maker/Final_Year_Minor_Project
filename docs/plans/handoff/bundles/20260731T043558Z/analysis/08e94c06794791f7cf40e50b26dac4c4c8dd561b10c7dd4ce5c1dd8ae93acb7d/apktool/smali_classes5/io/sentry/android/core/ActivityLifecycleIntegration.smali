.class public final Lio/sentry/android/core/ActivityLifecycleIntegration;
.super Ljava/lang/Object;
.source "ActivityLifecycleIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final APP_START_COLD:Ljava/lang/String; = "app.start.cold"

.field static final APP_START_WARM:Ljava/lang/String; = "app.start.warm"

.field private static final TRACE_ORIGIN:Ljava/lang/String; = "auto.ui.activity"

.field static final TTFD_OP:Ljava/lang/String; = "ui.load.full_display"

.field static final TTFD_TIMEOUT_MILLIS:J = 0x61a8L

.field static final TTID_OP:Ljava/lang/String; = "ui.load.initial_display"

.field static final UI_LOAD_OP:Ljava/lang/String; = "ui.load"


# instance fields
.field private final activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ITransaction;",
            ">;"
        }
    .end annotation
.end field

.field private final activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

.field private final activityLifecycleMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;",
            ">;"
        }
    .end annotation
.end field

.field private appStartSpan:Lio/sentry/ISpan;

.field private final application:Landroid/app/Application;

.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private firstActivityCreated:Z

.field private fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

.field private hub:Lio/sentry/IHub;

.field private isAllActivityCallbacksAvailable:Z

.field private lastPausedTime:Lio/sentry/SentryDate;

.field private lastPausedUptimeMillis:J

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private performanceEnabled:Z

.field private timeToFullDisplaySpanEnabled:Z

.field private ttfdAutoCloseFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final ttfdSpanMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field

.field private final ttidSpanMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 5

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    .line 70
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    .line 74
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 78
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    .line 79
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    .line 80
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityLifecycleMap:Ljava/util/WeakHashMap;

    .line 82
    new-instance v1, Lio/sentry/SentryNanotimeDate;

    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v1, v2, v3, v4}, Lio/sentry/SentryNanotimeDate;-><init>(Ljava/util/Date;J)V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 83
    iput-wide v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedUptimeMillis:J

    .line 84
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    .line 88
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    .line 97
    const-string v0, "Application is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    .line 98
    const-string p1, "BuildInfoProvider is required"

    .line 99
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 100
    const-string p1, "ActivityFramesTracker is required"

    .line 101
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/ActivityFramesTracker;

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 103
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    :cond_0
    return-void
.end method

.method private cancelTtfdAutoClose()V
    .locals 2

    .line 596
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 597
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    .line 563
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityLifecycleMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method private finishAppStartSpan()V
    .locals 2

    .line 738
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 739
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestamp()Lio/sentry/SentryDate;

    move-result-object v0

    .line 741
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 742
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    :cond_0
    return-void
.end method

.method private finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 653
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 656
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getExceededTtfdDesc(Lio/sentry/ISpan;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ISpan;->setDescription(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 658
    invoke-interface {p2}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 660
    :cond_2
    invoke-interface {p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object p2

    .line 661
    :goto_1
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 567
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    invoke-interface {p1}, Lio/sentry/ISpan;->finish()V

    :cond_0
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V
    .locals 1

    const/4 v0, 0x0

    .line 573
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 580
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p3

    goto :goto_0

    :cond_1
    sget-object p3, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 585
    :goto_0
    invoke-interface {p1, p3, p2}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    :cond_2
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 590
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-interface {p1, p2}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;)V

    :cond_0
    return-void
.end method

.method private finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 348
    invoke-interface {p1}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 353
    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 354
    invoke-direct {p0, p3, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 355
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    .line 357
    invoke-interface {p1}, Lio/sentry/ITransaction;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p2

    if-nez p2, :cond_1

    .line 360
    sget-object p2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 362
    :cond_1
    invoke-interface {p1, p2}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;)V

    .line 363
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz p2, :cond_2

    .line 366
    new-instance p3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V

    invoke-interface {p2, p3}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    :cond_2
    return-void
.end method

.method private getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAppStartDesc(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 722
    const-string p1, "Cold Start"

    return-object p1

    .line 724
    :cond_0
    const-string p1, "Warm Start"

    return-object p1
.end method

.method private getAppStartOp(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 730
    const-string p1, "app.start.cold"

    return-object p1

    .line 732
    :cond_0
    const-string p1, "app.start.warm"

    return-object p1
.end method

.method private getExceededTtfdDesc(Lio/sentry/ISpan;)Ljava/lang/String;
    .locals 3

    .line 714
    invoke-interface {p1}, Lio/sentry/ISpan;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 715
    const-string v1, " - Deadline Exceeded"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 717
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/sentry/ISpan;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTtfdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " full display"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTtidDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " initial display"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isPerformanceEnabled(Lio/sentry/android/core/SentryAndroidOptions;)Z
    .locals 1

    .line 127
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isRunningTransactionOrTrace(Landroid/app/Activity;)Z
    .locals 1

    .line 331
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$clearScope$4(Lio/sentry/ITransaction;Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 0

    if-ne p2, p0, :cond_0

    .line 325
    invoke-interface {p1}, Lio/sentry/IScope;->clearTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onActivityCreated$6(Ljava/lang/String;Lio/sentry/IScope;)V
    .locals 0

    .line 402
    invoke-interface {p1, p0}, Lio/sentry/IScope;->setScreen(Ljava/lang/String;)V

    return-void
.end method

.method private onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 6

    .line 604
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 605
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    .line 606
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 610
    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 613
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 616
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishAppStartSpan()V

    .line 618
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 619
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    .line 620
    invoke-interface {p2}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v1

    .line 621
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 623
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 622
    const-string v5, "time_to_initial_display"

    invoke-interface {p2, v5, v3, v4}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    if-eqz p1, :cond_2

    .line 625
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 626
    invoke-interface {p1, v0}, Lio/sentry/ISpan;->updateEndDate(Lio/sentry/SentryDate;)Z

    .line 629
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 628
    const-string v2, "time_to_full_display"

    invoke-interface {p2, v2, p1, v1}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 631
    :cond_2
    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    goto :goto_0

    .line 633
    :cond_3
    invoke-direct {p0, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;)V

    :goto_0
    return-void
.end method

.method private onFullFrameDrawn(Lio/sentry/ISpan;)V
    .locals 4

    .line 638
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    .line 640
    invoke-interface {p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v1

    .line 641
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 643
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 642
    const-string v3, "time_to_full_display"

    invoke-interface {p1, v3, v1, v2}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 644
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    goto :goto_0

    .line 646
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;)V

    .line 648
    :goto_0
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    return-void
.end method

.method private setSpanOrigin(Lio/sentry/ISpan;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 297
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    const-string v0, "auto.ui.activity"

    invoke-virtual {p1, v0}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startTracing(Landroid/app/Activity;)V
    .locals 10

    .line 156
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->isRunningTransactionOrTrace(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 158
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-nez v1, :cond_0

    .line 159
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    invoke-static {p1}, Lio/sentry/util/TracingUtils;->startNewTrace(Lio/sentry/IHub;)V

    goto/16 :goto_4

    .line 163
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->stopPreviousTransactions()V

    .line 165
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2, v3}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    .line 174
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 175
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v2

    .line 178
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v3

    sget-object v7, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v3, v7, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v2, v6

    move-object v3, v2

    .line 184
    :goto_1
    new-instance v7, Lio/sentry/TransactionOptions;

    invoke-direct {v7}, Lio/sentry/TransactionOptions;-><init>()V

    const-wide/16 v8, 0x7530

    .line 186
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 185
    invoke-virtual {v7, v8}, Lio/sentry/TransactionOptions;->setDeadlineTimeout(Ljava/lang/Long;)V

    .line 188
    iget-object v8, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v8}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 189
    iget-object v8, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v8}, Lio/sentry/android/core/SentryAndroidOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/sentry/TransactionOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 190
    invoke-virtual {v7, v5}, Lio/sentry/TransactionOptions;->setTrimEnd(Z)V

    .line 192
    :cond_3
    invoke-virtual {v7, v5}, Lio/sentry/TransactionOptions;->setWaitForChildren(Z)V

    .line 193
    new-instance v8, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lio/sentry/TransactionOptions;->setTransactionFinishedCallback(Lio/sentry/TransactionFinishedCallback;)V

    .line 215
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 220
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    .line 221
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v8

    invoke-virtual {v8, v6}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    move-object v6, v0

    move-object v0, v2

    goto :goto_2

    .line 224
    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 227
    :goto_2
    invoke-virtual {v7, v0}, Lio/sentry/TransactionOptions;->setStartTimestamp(Lio/sentry/SentryDate;)V

    if-eqz v6, :cond_5

    move v4, v5

    .line 228
    :cond_5
    invoke-virtual {v7, v4}, Lio/sentry/TransactionOptions;->setAppStartTransaction(Z)V

    .line 231
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    new-instance v5, Lio/sentry/TransactionContext;

    sget-object v8, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    const-string v9, "ui.load"

    invoke-direct {v5, v1, v8, v9, v6}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 232
    invoke-interface {v4, v5, v7}, Lio/sentry/IHub;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v4

    .line 239
    invoke-direct {p0, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    .line 242
    iget-boolean v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-nez v5, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 246
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getAppStartOp(Z)Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getAppStartDesc(Z)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 245
    invoke-interface {v4, v5, v3, v2, v6}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    .line 250
    invoke-direct {p0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    .line 254
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishAppStartSpan()V

    .line 258
    :cond_6
    invoke-direct {p0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getTtidDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 257
    const-string v5, "ui.load.initial_display"

    invoke-interface {v4, v5, v2, v0, v3}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    move-result-object v2

    .line 259
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-direct {p0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    .line 262
    iget-boolean v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v3, :cond_7

    .line 265
    invoke-direct {p0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getTtfdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 264
    const-string v5, "ui.load.full_display"

    invoke-interface {v4, v5, v1, v0, v3}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    move-result-object v0

    .line 266
    invoke-direct {p0, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    .line 268
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 271
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v1

    new-instance v3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    const-wide/16 v5, 0x61a8

    .line 272
    invoke-interface {v1, v3, v5, v6}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 275
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 276
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to call the executor. Time to full display span will not be finished automatically. Did you call Sentry.close()?"

    .line 277
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :cond_7
    :goto_3
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    new-instance v1, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V

    invoke-interface {v0, v1}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 290
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    return-void
.end method

.method private stopPreviousTransactions()V
    .locals 5

    .line 147
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ITransaction;

    .line 149
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/ISpan;

    .line 150
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 151
    invoke-direct {p0, v2, v3, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopTracing(Landroid/app/Activity;Z)V
    .locals 1

    .line 335
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 336
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ITransaction;

    const/4 p2, 0x0

    .line 337
    invoke-direct {p0, p1, p2, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    :cond_0
    return-void
.end method


# virtual methods
.method applyScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 1

    .line 303
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda9;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method clearScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 1

    .line 322
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/ITransaction;Lio/sentry/IScope;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 134
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ActivityLifecycleIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    invoke-virtual {v0}, Lio/sentry/android/core/ActivityFramesTracker;->stop()V

    return-void
.end method

.method getActivitiesWithOngoingTransactions()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ITransaction;",
            ">;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method getActivityFramesTracker()Lio/sentry/android/core/ActivityFramesTracker;
    .locals 1

    .line 684
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    return-object v0
.end method

.method getActivityLifecycleMap()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;",
            ">;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityLifecycleMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method getAppStartSpan()Lio/sentry/ISpan;
    .locals 1

    .line 690
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    return-object v0
.end method

.method getTtfdSpanMap()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method getTtidSpanMap()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method synthetic lambda$applyScope$3$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/IScope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V
    .locals 1

    .line 0
    if-nez p3, :cond_0

    .line 308
    invoke-interface {p1, p2}, Lio/sentry/IScope;->setTransaction(Lio/sentry/ITransaction;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_1

    .line 311
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 315
    invoke-interface {p2}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 312
    const-string v0, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    invoke-interface {p1, p3, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$finishTransaction$5$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 0

    .line 368
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->clearScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method synthetic lambda$onActivityCreated$7$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;)V
    .locals 0

    .line 410
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFullFrameDrawn(Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$onActivityResumed$8$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    .line 480
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$onActivityResumed$9$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    .line 484
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$startTracing$0$io-sentry-android-core-ActivityLifecycleIntegration(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/ITransaction;)V
    .locals 1

    .line 195
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 197
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 198
    invoke-interface {p3}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p3

    .line 197
    invoke-virtual {p2, p1, p3}, Lio/sentry/android/core/ActivityFramesTracker;->setMetrics(Landroid/app/Activity;Lio/sentry/protocol/SentryId;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Unable to track activity frames as the Activity %s has been destroyed."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 203
    invoke-interface {p1, p3, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$startTracing$1$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$startTracing$2$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 0

    .line 287
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->applyScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    .line 397
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-nez v0, :cond_0

    .line 398
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 400
    :cond_0
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScreenTracking()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 401
    invoke-static {p1}, Lio/sentry/android/core/internal/util/ClassUtil;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 402
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    new-instance v1, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 404
    :cond_1
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->startTracing(Landroid/app/Activity;)V

    .line 405
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    const/4 p2, 0x1

    .line 407
    iput-boolean p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    .line 409
    iget-boolean p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    if-eqz p2, :cond_2

    .line 410
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;)V

    invoke-virtual {p2, v0}, Lio/sentry/FullyDisplayedReporter;->registerFullyDrawnListener(Lio/sentry/FullyDisplayedReporter$FullyDisplayedReporterListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_2
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

.method public declared-synchronized onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 525
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityLifecycleMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    sget-object v1, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 533
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    .line 534
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 535
    sget-object v2, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, v0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 538
    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 539
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    const/4 v0, 0x1

    .line 543
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->stopTracing(Landroid/app/Activity;Z)V

    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    .line 547
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_1

    .line 557
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :cond_1
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

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    .line 511
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPrePaused(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
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

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 417
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    if-nez p2, :cond_0

    .line 418
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityLifecycleMap:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 422
    :cond_0
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityLifecycleMap:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    if-eqz p2, :cond_1

    .line 424
    invoke-virtual {p2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 425
    invoke-virtual {p2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".onCreate"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 3

    .line 459
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityLifecycleMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    .line 460
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {v0}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 465
    invoke-virtual {v0}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".onStart"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/sentry/android/core/performance/AppStartMetrics;->addActivityLifecycleTimeSpans(Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;)V

    :cond_1
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 380
    iget-boolean p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-eqz p2, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz p2, :cond_1

    .line 385
    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p2

    invoke-interface {p2}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p2

    goto :goto_0

    .line 386
    :cond_1
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedUptimeMillis:J

    .line 389
    new-instance p2, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    invoke-direct {p2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;-><init>()V

    .line 390
    invoke-virtual {p2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 391
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityLifecycleMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 2

    const/4 p1, 0x1

    .line 500
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    .line 502
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz p1, :cond_0

    .line 503
    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p1

    goto :goto_0

    .line 504
    :cond_0
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedUptimeMillis:J

    return-void
.end method

.method public onActivityPreStarted(Landroid/app/Activity;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityLifecycleMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    if-eqz p1, :cond_1

    .line 436
    invoke-virtual {p1}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    :cond_1
    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 472
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 475
    :cond_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    .line 477
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 478
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 479
    new-instance v2, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda6;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {p1, v2, v0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    goto :goto_0

    .line 484
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda7;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_2
    :goto_0
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

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    .line 442
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 444
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 446
    :cond_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    invoke-virtual {v0, p1}, Lio/sentry/android/core/ActivityFramesTracker;->addActivity(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_1
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

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 2

    .line 112
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 111
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 115
    const-string p2, "Hub is required"

    invoke-static {p1, p2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    .line 117
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->isPerformanceEnabled(Lio/sentry/android/core/SentryAndroidOptions;)Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    .line 118
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 119
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableTimeToFullDisplayTracing()Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    .line 121
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 122
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ActivityLifecycleIntegration installed."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    const-string p1, "ActivityLifecycle"

    invoke-static {p1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method setFirstActivityCreated(Z)V
    .locals 0

    .line 678
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    return-void
.end method
