.class final Lio/sentry/android/core/AndroidOptionsInitializer;
.super Ljava/lang/Object;
.source "AndroidOptionsInitializer.java"


# static fields
.field static final COMPOSE_CLASS_NAME:Ljava/lang/String; = "androidx.compose.ui.node.Owner"

.field static final DEFAULT_FLUSH_TIMEOUT_MS:J = 0xfa0L

.field static final SENTRY_COMPOSE_GESTURE_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.compose.gestures.ComposeGestureTargetLocator"

.field static final SENTRY_COMPOSE_VIEW_HIERARCHY_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.compose.viewhierarchy.ComposeViewHierarchyExporter"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 368
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "sentry"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSentryReleaseVersion(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static initializeIntegrationsAndProcessors(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/transport/NoOpEnvelopeCache;

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;

    invoke-direct {v0, p0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnvelopeDiskCache(Lio/sentry/cache/IEnvelopeCache;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoOpConnectionStatusProvider;

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 143
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 142
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setConnectionStatusProvider(Lio/sentry/IConnectionStatusProvider;)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver;

    invoke-direct {v0, p0}, Lio/sentry/cache/PersistingScopeObserver;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addScopeObserver(Lio/sentry/IScopeObserver;)V

    .line 148
    new-instance v0, Lio/sentry/cache/PersistingOptionsObserver;

    invoke-direct {v0, p0}, Lio/sentry/cache/PersistingOptionsObserver;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addOptionsObserver(Lio/sentry/IOptionsObserver;)V

    .line 151
    :cond_2
    new-instance v0, Lio/sentry/DeduplicateMultithreadedEventProcessor;

    invoke-direct {v0, p0}, Lio/sentry/DeduplicateMultithreadedEventProcessor;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 152
    new-instance v0, Lio/sentry/android/core/DefaultAndroidEventProcessor;

    invoke-direct {v0, p1, p2, p0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 154
    new-instance v0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;

    invoke-direct {v0, p0, p4}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ActivityFramesTracker;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 155
    new-instance p4, Lio/sentry/android/core/ScreenshotEventProcessor;

    invoke-direct {p4, p0, p2}, Lio/sentry/android/core/ScreenshotEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V

    invoke-virtual {p0, p4}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 156
    new-instance p4, Lio/sentry/android/core/ViewHierarchyEventProcessor;

    invoke-direct {p4, p0}, Lio/sentry/android/core/ViewHierarchyEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-virtual {p0, p4}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 157
    new-instance p4, Lio/sentry/android/core/AnrV2EventProcessor;

    invoke-direct {p4, p1, p0, p2}, Lio/sentry/android/core/AnrV2EventProcessor;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V

    invoke-virtual {p0, p4}, Lio/sentry/android/core/SentryAndroidOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 158
    new-instance p4, Lio/sentry/android/core/AndroidTransportGate;

    invoke-direct {p4, p0}, Lio/sentry/android/core/AndroidTransportGate;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, p4}, Lio/sentry/android/core/SentryAndroidOptions;->setTransportGate(Lio/sentry/transport/ITransportGate;)V

    .line 163
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object p4

    monitor-enter p4

    .line 165
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 168
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartProfiler(Lio/sentry/ITransactionProfiler;)V

    goto :goto_0

    .line 170
    :cond_3
    new-instance v0, Lio/sentry/android/core/AndroidTransactionProfiler;

    .line 176
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    move-result-object v1

    const-string v2, "options.getFrameMetricsCollector is required"

    .line 175
    invoke-static {v1, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-direct {v0, p1, p0, p2, v1}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    .line 170
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 179
    :goto_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    new-instance p4, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-direct {p4, p1, v0}, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;-><init>(Landroid/content/Context;Lio/sentry/ILogger;)V

    invoke-virtual {p0, p4}, Lio/sentry/android/core/SentryAndroidOptions;->setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V

    .line 181
    new-instance p4, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-direct {p4, p1, v0}, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;-><init>(Landroid/content/Context;Lio/sentry/ILogger;)V

    invoke-virtual {p0, p4}, Lio/sentry/android/core/SentryAndroidOptions;->setDebugMetaLoader(Lio/sentry/internal/debugmeta/IDebugMetaLoader;)V

    .line 183
    const-string p1, "androidx.core.view.ScrollingView"

    .line 184
    invoke-virtual {p3, p1, p0}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result p1

    .line 185
    const-string p4, "androidx.compose.ui.node.Owner"

    .line 186
    invoke-virtual {p3, p4, p0}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result p4

    .line 188
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getGestureTargetLocators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    new-instance v1, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;

    invoke-direct {v1, p1}, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_4

    .line 192
    const-string p1, "io.sentry.compose.gestures.ComposeGestureTargetLocator"

    .line 194
    invoke-virtual {p3, p1, p0}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 198
    new-instance p1, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {p1, v1}, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;-><init>(Lio/sentry/ILogger;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_4
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setGestureTargetLocators(Ljava/util/List;)V

    .line 203
    :cond_5
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getViewHierarchyExporters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p4, :cond_6

    const-string p1, "io.sentry.compose.viewhierarchy.ComposeViewHierarchyExporter"

    .line 205
    invoke-virtual {p3, p1, p0}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 208
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    new-instance p3, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p4

    invoke-direct {p3, p4}, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;-><init>(Lio/sentry/ILogger;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setViewHierarchyExporters(Ljava/util/List;)V

    .line 213
    :cond_6
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setMainThreadChecker(Lio/sentry/util/thread/IMainThreadChecker;)V

    .line 214
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getPerformanceCollectors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 215
    new-instance p1, Lio/sentry/android/core/AndroidMemoryCollector;

    invoke-direct {p1}, Lio/sentry/android/core/AndroidMemoryCollector;-><init>()V

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 216
    new-instance p1, Lio/sentry/android/core/AndroidCpuCollector;

    .line 217
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lio/sentry/android/core/AndroidCpuCollector;-><init>(Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 216
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 219
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 220
    new-instance p1, Lio/sentry/android/core/SpanFrameMetricsCollector;

    .line 224
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    move-result-object p2

    const-string p3, "options.getFrameMetricsCollector is required"

    .line 223
    invoke-static {p2, p3}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-direct {p1, p0, p2}, Lio/sentry/android/core/SpanFrameMetricsCollector;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    .line 220
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 228
    :cond_7
    new-instance p1, Lio/sentry/DefaultTransactionPerformanceCollector;

    invoke-direct {p1, p0}, Lio/sentry/DefaultTransactionPerformanceCollector;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setTransactionPerformanceCollector(Lio/sentry/TransactionPerformanceCollector;)V

    return-void

    :catchall_0
    move-exception p0

    .line 179
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static initializeIntegrationsAndProcessors(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 2

    .line 121
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    new-instance v1, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v1}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    invoke-static {p0, p1, v0, p2, p3}, Lio/sentry/android/core/AndroidOptionsInitializer;->initializeIntegrationsAndProcessors(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;)V

    return-void
.end method

.method static installDefaultIntegrations(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;ZZZ)V
    .locals 4

    .line 246
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 249
    new-instance v1, Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    new-instance v2, Lio/sentry/SendFireAndForgetEnvelopeSender;

    new-instance v3, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-direct {v2, v3}, Lio/sentry/SendFireAndForgetEnvelopeSender;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;)V

    invoke-direct {v1, v2, v0}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;Lio/sentry/util/LazyEvaluator;)V

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 256
    const-string v1, "io.sentry.android.ndk.SentryNdk"

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lio/sentry/android/core/LoadClass;->loadClass(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    move-result-object v1

    .line 257
    new-instance v2, Lio/sentry/android/core/NdkIntegration;

    invoke-direct {v2, v1}, Lio/sentry/android/core/NdkIntegration;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 261
    invoke-static {}, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->getOutboxFileObserver()Lio/sentry/android/core/EnvelopeFileObserverIntegration;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 266
    new-instance v1, Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    new-instance v2, Lio/sentry/SendFireAndForgetOutboxSender;

    new-instance v3, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-direct {v2, v3}, Lio/sentry/SendFireAndForgetOutboxSender;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;)V

    invoke-direct {v1, v2, v0}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;Lio/sentry/util/LazyEvaluator;)V

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 273
    new-instance v0, Lio/sentry/android/core/AppLifecycleIntegration;

    invoke-direct {v0}, Lio/sentry/android/core/AppLifecycleIntegration;-><init>()V

    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 276
    invoke-static {p0, p2}, Lio/sentry/android/core/AnrIntegrationFactory;->create(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/Integration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 279
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration;

    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    invoke-direct {v0, v1, p2, p4}, Lio/sentry/android/core/ActivityLifecycleIntegration;-><init>(Landroid/app/Application;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/ActivityFramesTracker;)V

    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 283
    new-instance p4, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;

    invoke-direct {p4, v1}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;-><init>(Landroid/app/Application;)V

    invoke-virtual {p1, p4}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 284
    new-instance p4, Lio/sentry/android/core/CurrentActivityIntegration;

    invoke-direct {p4, v1}, Lio/sentry/android/core/CurrentActivityIntegration;-><init>(Landroid/app/Application;)V

    invoke-virtual {p1, p4}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 285
    new-instance p4, Lio/sentry/android/core/UserInteractionIntegration;

    invoke-direct {p4, v1, p3}, Lio/sentry/android/core/UserInteractionIntegration;-><init>(Landroid/app/Application;Lio/sentry/android/core/LoadClass;)V

    invoke-virtual {p1, p4}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    if-eqz p5, :cond_1

    .line 287
    new-instance p3, Lio/sentry/android/fragment/FragmentLifecycleIntegration;

    const/4 p4, 0x1

    invoke-direct {p3, v1, p4, p4}, Lio/sentry/android/fragment/FragmentLifecycleIntegration;-><init>(Landroid/app/Application;ZZ)V

    invoke-virtual {p1, p3}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object p4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 p5, 0x0

    new-array p5, p5, [Ljava/lang/Object;

    .line 292
    const-string v0, "ActivityLifecycle, FragmentLifecycle and UserInteraction Integrations need an Application class to be installed."

    invoke-interface {p3, p4, v0, p5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-eqz p6, :cond_2

    .line 298
    new-instance p3, Lio/sentry/android/timber/SentryTimberIntegration;

    invoke-direct {p3}, Lio/sentry/android/timber/SentryTimberIntegration;-><init>()V

    invoke-virtual {p1, p3}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 300
    :cond_2
    new-instance p3, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

    invoke-direct {p3, p0}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 301
    new-instance p3, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    invoke-direct {p3, p0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 302
    new-instance p3, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 303
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p4

    invoke-direct {p3, p0, p2, p4}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;)V

    .line 302
    invoke-virtual {p1, p3}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    if-eqz p7, :cond_3

    .line 305
    new-instance p2, Lio/sentry/android/replay/ReplayIntegration;

    .line 306
    invoke-static {}, Lio/sentry/transport/CurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;)V

    .line 307
    new-instance p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;

    invoke-direct {p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;-><init>()V

    invoke-virtual {p2, p0}, Lio/sentry/android/replay/ReplayIntegration;->setBreadcrumbConverter(Lio/sentry/ReplayBreadcrumbConverter;)V

    .line 308
    invoke-virtual {p1, p2}, Lio/sentry/android/core/SentryAndroidOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 309
    invoke-virtual {p1, p2}, Lio/sentry/android/core/SentryAndroidOptions;->setReplayController(Lio/sentry/ReplayController;)V

    :cond_3
    return-void
.end method

.method static synthetic lambda$installDefaultIntegrations$0(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/Boolean;
    .locals 0

    .line 247
    invoke-static {p0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->hasStartupCrashMarker(Lio/sentry/SentryOptions;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$installDefaultIntegrations$1(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 0

    .line 251
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$installDefaultIntegrations$2(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 0

    .line 268
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static loadDefaultAndMetadataOptions(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;)V
    .locals 2

    .line 74
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    .line 75
    new-instance v1, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v1, v0}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/AndroidOptionsInitializer;->loadDefaultAndMetadataOptions(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    return-void
.end method

.method static loadDefaultAndMetadataOptions(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 2

    .line 91
    const-string v0, "The context is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 95
    const-string v0, "The options object is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string v0, "The ILogger object is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0, p2}, Lio/sentry/android/core/SentryAndroidOptions;->setLogger(Lio/sentry/ILogger;)V

    .line 101
    new-instance v0, Lio/sentry/android/core/SentryAndroidDateProvider;

    invoke-direct {v0}, Lio/sentry/android/core/SentryAndroidDateProvider;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDateProvider(Lio/sentry/SentryDateProvider;)V

    const-wide/16 v0, 0xfa0

    .line 104
    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setFlushTimeoutMillis(J)V

    .line 106
    new-instance v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-direct {v0, p1, p2, p3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setFrameMetricsCollector(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    .line 109
    invoke-static {p1, p0, p3}, Lio/sentry/android/core/ManifestMetadataReader;->applyMetadata(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 110
    invoke-static {p1}, Lio/sentry/android/core/AndroidOptionsInitializer;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/sentry/android/core/SentryAndroidOptions;->setCacheDirPath(Ljava/lang/String;)V

    .line 112
    invoke-static {p0, p1, p3}, Lio/sentry/android/core/AndroidOptionsInitializer;->readDefaultOptionValues(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)V

    return-void
.end method

.method private static readDefaultOptionValues(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 2

    .line 324
    invoke-static {p1, p2}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getRelease()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 330
    invoke-static {v0, p2}, Lio/sentry/android/core/ContextUtils;->getVersionCode(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object p2

    .line 329
    invoke-static {v0, p2}, Lio/sentry/android/core/AndroidOptionsInitializer;->getSentryReleaseVersion(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 328
    invoke-virtual {p0, p2}, Lio/sentry/android/core/SentryAndroidOptions;->setRelease(Ljava/lang/String;)V

    .line 334
    :cond_0
    iget-object p2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 335
    const-string v0, "android."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    invoke-virtual {p0, p2}, Lio/sentry/android/core/SentryAndroidOptions;->addInAppInclude(Ljava/lang/String;)V

    .line 340
    :cond_1
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getDistinctId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 342
    :try_start_0
    invoke-static {p1}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setDistinctId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Could not generate distinct Id."

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
