.class public final Lio/sentry/android/core/SentryAndroidOptions;
.super Lio/sentry/SentryOptions;
.source "SentryAndroidOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    }
.end annotation


# instance fields
.field private anrEnabled:Z

.field private anrReportInDebug:Z

.field private anrTimeoutIntervalMillis:J

.field private attachAnrThreadDump:Z

.field private attachScreenshot:Z

.field private attachViewHierarchy:Z

.field private beforeScreenshotCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

.field private beforeViewHierarchyCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

.field private collectAdditionalContext:Z

.field private debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

.field private enableActivityLifecycleBreadcrumbs:Z

.field private enableActivityLifecycleTracingAutoFinish:Z

.field private enableAppComponentBreadcrumbs:Z

.field private enableAppLifecycleBreadcrumbs:Z

.field private enableAutoActivityLifecycleTracing:Z

.field private enableFramesTracking:Z

.field private enableNdk:Z

.field private enableNetworkEventBreadcrumbs:Z

.field private enablePerformanceV2:Z

.field private enableRootCheck:Z

.field private enableScopeSync:Z

.field private enableSystemEventBreadcrumbs:Z

.field private frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private nativeSdkName:Ljava/lang/String;

.field private ndkHandlerStrategy:Lio/sentry/android/core/NdkHandlerStrategy;

.field private reportHistoricalAnrs:Z

.field private final startupCrashDurationThresholdMillis:J

.field private startupCrashFlushTimeoutMillis:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 216
    invoke-direct {p0}, Lio/sentry/SentryOptions;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    const-wide/16 v1, 0x1388

    .line 30
    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    const/4 v3, 0x0

    .line 33
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    .line 39
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    .line 42
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    .line 45
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    .line 48
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    .line 51
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    .line 84
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    .line 95
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    .line 98
    invoke-static {}, Lio/sentry/android/core/NoOpDebugImagesLoader;->getInstance()Lio/sentry/android/core/NoOpDebugImagesLoader;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

    .line 118
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    .line 130
    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    const-wide/16 v1, 0x7d0

    .line 141
    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashDurationThresholdMillis:J

    .line 143
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->nativeSdkName:Ljava/lang/String;

    .line 151
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableRootCheck:Z

    .line 158
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdk:Z

    .line 160
    sget-object v1, Lio/sentry/android/core/NdkHandlerStrategy;->SENTRY_HANDLER_STRATEGY_DEFAULT:Lio/sentry/android/core/NdkHandlerStrategy;

    iput-object v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->ndkHandlerStrategy:Lio/sentry/android/core/NdkHandlerStrategy;

    .line 167
    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableScopeSync:Z

    .line 204
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalAnrs:Z

    .line 210
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachAnrThreadDump:Z

    .line 212
    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->enablePerformanceV2:Z

    .line 217
    const-string v0, "sentry.java.android/7.22.5"

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSentryClientName(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lio/sentry/android/core/SentryAndroidOptions;->createSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 219
    invoke-virtual {p0, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachServerName(Z)V

    return-void
.end method

.method private createSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 3

    .line 223
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    .line 227
    const-string v1, "sentry.java.android"

    const-string v2, "7.22.5"

    invoke-static {v0, v1, v2}, Lio/sentry/protocol/SdkVersion;->updateSdkVersion(Lio/sentry/protocol/SdkVersion;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    .line 229
    const-string v1, "maven:io.sentry:sentry-android-core"

    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/SdkVersion;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public enableAllAutoBreadcrumbs(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    .line 336
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    .line 337
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    .line 338
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    .line 339
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    .line 340
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUserInteractionBreadcrumbs(Z)V

    return-void
.end method

.method public getAnrTimeoutIntervalMillis()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    return-wide v0
.end method

.method public getBeforeScreenshotCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    .locals 1

    .line 507
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeScreenshotCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    return-object v0
.end method

.method public getBeforeViewHierarchyCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    .locals 1

    .line 522
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeViewHierarchyCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    return-object v0
.end method

.method public getDebugImagesLoader()Lio/sentry/android/core/IDebugImagesLoader;
    .locals 1

    .line 370
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

    return-object v0
.end method

.method public getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    .locals 1

    .line 612
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    return-object v0
.end method

.method public getNativeSdkName()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->nativeSdkName:Ljava/lang/String;

    return-object v0
.end method

.method public getNdkHandlerStrategy()I
    .locals 1

    .line 485
    iget-object v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->ndkHandlerStrategy:Lio/sentry/android/core/NdkHandlerStrategy;

    invoke-virtual {v0}, Lio/sentry/android/core/NdkHandlerStrategy;->getValue()I

    move-result v0

    return v0
.end method

.method public getProfilingTracesIntervalMillis()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getStartupCrashDurationThresholdMillis()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method getStartupCrashFlushTimeoutMillis()J
    .locals 2

    .line 444
    iget-wide v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    return-wide v0
.end method

.method public isAnrEnabled()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    return v0
.end method

.method public isAnrReportInDebug()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    return v0
.end method

.method public isAttachAnrThreadDump()Z
    .locals 1

    .line 581
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachAnrThreadDump:Z

    return v0
.end method

.method public isAttachScreenshot()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachScreenshot:Z

    return v0
.end method

.method public isAttachViewHierarchy()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachViewHierarchy:Z

    return v0
.end method

.method public isCollectAdditionalContext()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    return v0
.end method

.method public isEnableActivityLifecycleBreadcrumbs()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    return v0
.end method

.method public isEnableActivityLifecycleTracingAutoFinish()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    return v0
.end method

.method public isEnableAppComponentBreadcrumbs()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    return v0
.end method

.method public isEnableAppLifecycleBreadcrumbs()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    return v0
.end method

.method public isEnableAutoActivityLifecycleTracing()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    return v0
.end method

.method public isEnableFramesTracking()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    return v0
.end method

.method public isEnableNdk()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdk:Z

    return v0
.end method

.method public isEnableNetworkEventBreadcrumbs()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    return v0
.end method

.method public isEnablePerformanceV2()Z
    .locals 1

    .line 594
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enablePerformanceV2:Z

    return v0
.end method

.method public isEnableRootCheck()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableRootCheck:Z

    return v0
.end method

.method public isEnableScopeSync()Z
    .locals 1

    .line 560
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableScopeSync:Z

    return v0
.end method

.method public isEnableSystemEventBreadcrumbs()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    return v0
.end method

.method public isReportHistoricalAnrs()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalAnrs:Z

    return v0
.end method

.method public setAnrEnabled(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    return-void
.end method

.method public setAnrReportInDebug(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    return-void
.end method

.method public setAnrTimeoutIntervalMillis(J)V
    .locals 0

    .line 267
    iput-wide p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    return-void
.end method

.method public setAttachAnrThreadDump(Z)V
    .locals 0

    .line 585
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachAnrThreadDump:Z

    return-void
.end method

.method public setAttachScreenshot(Z)V
    .locals 0

    .line 405
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachScreenshot:Z

    return-void
.end method

.method public setAttachViewHierarchy(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachViewHierarchy:Z

    return-void
.end method

.method public setBeforeScreenshotCaptureCallback(Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeScreenshotCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    return-void
.end method

.method public setBeforeViewHierarchyCaptureCallback(Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeViewHierarchyCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    return-void
.end method

.method public setCollectAdditionalContext(Z)V
    .locals 0

    .line 421
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    return-void
.end method

.method public setDebugImagesLoader(Lio/sentry/android/core/IDebugImagesLoader;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    invoke-static {}, Lio/sentry/android/core/NoOpDebugImagesLoader;->getInstance()Lio/sentry/android/core/NoOpDebugImagesLoader;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

    return-void
.end method

.method public setEnableActivityLifecycleBreadcrumbs(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    return-void
.end method

.method public setEnableActivityLifecycleTracingAutoFinish(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    return-void
.end method

.method public setEnableAppComponentBreadcrumbs(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    return-void
.end method

.method public setEnableAppLifecycleBreadcrumbs(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    return-void
.end method

.method public setEnableAutoActivityLifecycleTracing(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    return-void
.end method

.method public setEnableFramesTracking(Z)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    return-void
.end method

.method public setEnableNdk(Z)V
    .locals 0

    .line 551
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdk:Z

    return-void
.end method

.method public setEnableNetworkEventBreadcrumbs(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    return-void
.end method

.method public setEnablePerformanceV2(Z)V
    .locals 0

    .line 607
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enablePerformanceV2:Z

    return-void
.end method

.method public setEnableRootCheck(Z)V
    .locals 0

    .line 503
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableRootCheck:Z

    return-void
.end method

.method public setEnableScopeSync(Z)V
    .locals 0

    .line 569
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableScopeSync:Z

    return-void
.end method

.method public setEnableSystemEventBreadcrumbs(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    return-void
.end method

.method public setFrameMetricsCollector(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    return-void
.end method

.method public setNativeHandlerStrategy(Lio/sentry/android/core/NdkHandlerStrategy;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->ndkHandlerStrategy:Lio/sentry/android/core/NdkHandlerStrategy;

    return-void
.end method

.method public setNativeSdkName(Ljava/lang/String;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->nativeSdkName:Ljava/lang/String;

    return-void
.end method

.method public setProfilingTracesIntervalMillis(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setReportHistoricalAnrs(Z)V
    .locals 0

    .line 577
    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalAnrs:Z

    return-void
.end method

.method setStartupCrashFlushTimeoutMillis(J)V
    .locals 0

    .line 454
    iput-wide p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    return-void
.end method
