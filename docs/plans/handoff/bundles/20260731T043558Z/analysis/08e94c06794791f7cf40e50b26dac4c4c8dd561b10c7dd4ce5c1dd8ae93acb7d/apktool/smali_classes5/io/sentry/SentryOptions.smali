.class public Lio/sentry/SentryOptions;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryOptions$BeforeSendCallback;,
        Lio/sentry/SentryOptions$BeforeSendTransactionCallback;,
        Lio/sentry/SentryOptions$BeforeSendReplayCallback;,
        Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;,
        Lio/sentry/SentryOptions$Proxy;,
        Lio/sentry/SentryOptions$TracesSamplerCallback;,
        Lio/sentry/SentryOptions$RequestSize;,
        Lio/sentry/SentryOptions$ProfilesSamplerCallback;,
        Lio/sentry/SentryOptions$BeforeEnvelopeCallback;,
        Lio/sentry/SentryOptions$BeforeEmitMetricCallback;,
        Lio/sentry/SentryOptions$Cron;
    }
.end annotation


# static fields
.field static final DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

.field private static final DEFAULT_ENVIRONMENT:Ljava/lang/String; = "production"

.field public static final DEFAULT_PROPAGATION_TARGETS:Ljava/lang/String; = ".*"


# instance fields
.field private attachServerName:Z

.field private attachStacktrace:Z

.field private attachThreads:Z

.field private backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

.field private beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

.field private beforeEmitMetricCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

.field private beforeEnvelopeCallback:Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

.field private beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

.field private beforeSendReplay:Lio/sentry/SentryOptions$BeforeSendReplayCallback;

.field private beforeSendTransaction:Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

.field private final bundleIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheDirPath:Ljava/lang/String;

.field clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

.field private connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

.field private connectionTimeoutMillis:I

.field private final contextTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cron:Lio/sentry/SentryOptions$Cron;

.field private final dateProvider:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/SentryDateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private debug:Z

.field private debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

.field private final defaultTracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private diagnosticLevel:Lio/sentry/SentryLevel;

.field private dist:Ljava/lang/String;

.field private distinctId:Ljava/lang/String;

.field private dsn:Ljava/lang/String;

.field private dsnHash:Ljava/lang/String;

.field private enableAppStartProfiling:Z

.field private enableAutoSessionTracking:Z

.field private enableBackpressureHandling:Z

.field private enableDeduplication:Z

.field private enableDefaultTagsForMetrics:Z

.field private enableExternalConfiguration:Z

.field private enableMetrics:Z

.field private enablePrettySerializationOutput:Z

.field private enableScopePersistence:Z

.field private enableScreenTracking:Z

.field private enableShutdownHook:Z

.field private enableSpanLocalMetricAggregation:Z

.field private enableSpotlight:Z

.field private enableTimeToFullDisplayTracing:Z

.field private enableTracing:Ljava/lang/Boolean;

.field private enableUncaughtExceptionHandler:Z

.field private enableUserInteractionBreadcrumbs:Z

.field private enableUserInteractionTracing:Z

.field private enabled:Z

.field private envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

.field private final envelopeReader:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/IEnvelopeReader;",
            ">;"
        }
    .end annotation
.end field

.field private environment:Ljava/lang/String;

.field private final eventProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Lio/sentry/ISentryExecutorService;

.field private final experimental:Lio/sentry/ExperimentalOptions;

.field private flushTimeoutMillis:J

.field private fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

.field private final gestureTargetLocators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;"
        }
    .end annotation
.end field

.field private idleTimeout:Ljava/lang/Long;

.field private ignoredCheckIns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoredExceptionsForType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inAppExcludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppIncludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private instrumenter:Lio/sentry/Instrumenter;

.field private final integrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Integration;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lio/sentry/ILogger;

.field private mainThreadChecker:Lio/sentry/util/thread/IMainThreadChecker;

.field private maxAttachmentSize:J

.field private maxBreadcrumbs:I

.field private maxCacheItems:I

.field private maxDepth:I

.field private maxQueueSize:I

.field private maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

.field private maxSpans:I

.field private maxTraceFileSize:J

.field private modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IScopeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final optionsObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IOptionsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final parsedDsn:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/Dsn;",
            ">;"
        }
    .end annotation
.end field

.field private final performanceCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceCollector;",
            ">;"
        }
    .end annotation
.end field

.field private printUncaughtStackTrace:Z

.field private profilesSampleRate:Ljava/lang/Double;

.field private profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

.field private profilingTracesHz:I

.field private proguardUuid:Ljava/lang/String;

.field private proxy:Lio/sentry/SentryOptions$Proxy;

.field private readTimeoutMillis:I

.field private release:Ljava/lang/String;

.field private replayController:Lio/sentry/ReplayController;

.field private sampleRate:Ljava/lang/Double;

.field private sdkVersion:Lio/sentry/protocol/SdkVersion;

.field private sendClientReports:Z

.field private sendDefaultPii:Z

.field private sendModules:Z

.field private sentryClientName:Ljava/lang/String;

.field private final serializer:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/ISerializer;",
            ">;"
        }
    .end annotation
.end field

.field private serverName:Ljava/lang/String;

.field private sessionFlushTimeoutMillis:J

.field private sessionReplay:Lio/sentry/SentryReplayOptions;

.field private sessionTrackingIntervalMillis:J

.field private shutdownTimeoutMillis:J

.field private spotlightConnectionUrl:Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private traceOptionsRequests:Z

.field private tracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private traceSampling:Z

.field private tracesSampleRate:Ljava/lang/Double;

.field private tracesSampler:Lio/sentry/SentryOptions$TracesSamplerCallback;

.field private transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

.field private transactionProfiler:Lio/sentry/ITransactionProfiler;

.field private transportFactory:Lio/sentry/ITransportFactory;

.field private transportGate:Lio/sentry/transport/ITransportGate;

.field private final viewHierarchyExporters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    sput-object v0, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2650
    invoke-direct {p0, v0}, Lio/sentry/SentryOptions;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 7

    .line 2658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 75
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    .line 78
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    .line 87
    new-instance v2, Lio/sentry/util/LazyEvaluator;

    new-instance v3, Lio/sentry/SentryOptions$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lio/sentry/SentryOptions$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SentryOptions;)V

    invoke-direct {v2, v3}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v2, p0, Lio/sentry/SentryOptions;->parsedDsn:Lio/sentry/util/LazyEvaluator;

    const-wide/16 v2, 0x7d0

    .line 97
    iput-wide v2, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    const-wide/16 v2, 0x3a98

    .line 104
    iput-wide v2, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    .line 111
    iput-wide v2, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    .line 120
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    .line 123
    sget-object v2, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    iput-object v2, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    .line 126
    new-instance v2, Lio/sentry/util/LazyEvaluator;

    new-instance v3, Lio/sentry/SentryOptions$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lio/sentry/SentryOptions$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryOptions;)V

    invoke-direct {v2, v3}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v2, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    .line 130
    new-instance v2, Lio/sentry/util/LazyEvaluator;

    new-instance v3, Lio/sentry/SentryOptions$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lio/sentry/SentryOptions$$ExternalSyntheticLambda2;-><init>(Lio/sentry/SentryOptions;)V

    invoke-direct {v2, v3}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v2, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/util/LazyEvaluator;

    const/16 v2, 0x64

    .line 134
    iput v2, p0, Lio/sentry/SentryOptions;->maxDepth:I

    const/16 v3, 0x1e

    .line 169
    iput v3, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    .line 172
    iput v3, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    .line 177
    iput v2, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    .line 223
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    .line 229
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    .line 235
    invoke-static {}, Lio/sentry/NoOpTransportFactory;->getInstance()Lio/sentry/NoOpTransportFactory;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    .line 241
    invoke-static {}, Lio/sentry/transport/NoOpTransportGate;->getInstance()Lio/sentry/transport/NoOpTransportGate;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    const/4 v2, 0x1

    .line 254
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    .line 257
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    const-wide/16 v3, 0x7530

    .line 263
    iput-wide v3, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    .line 272
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    .line 275
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    const/4 v3, 0x0

    .line 281
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    .line 284
    invoke-static {}, Lio/sentry/NoOpSentryExecutorService;->getInstance()Lio/sentry/ISentryExecutorService;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    const/16 v4, 0x1388

    .line 287
    iput v4, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    .line 290
    iput v4, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    .line 293
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    .line 299
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    .line 305
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    .line 307
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    .line 316
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    const-wide/32 v4, 0x1400000

    .line 319
    iput-wide v4, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    .line 326
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    const/16 v4, 0x3e8

    .line 329
    iput v4, p0, Lio/sentry/SentryOptions;->maxSpans:I

    .line 332
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    .line 338
    sget-object v4, Lio/sentry/SentryOptions$RequestSize;->NONE:Lio/sentry/SentryOptions$RequestSize;

    iput-object v4, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    .line 344
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    const-wide/32 v4, 0x500000

    .line 361
    iput-wide v4, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    .line 364
    invoke-static {}, Lio/sentry/NoOpTransactionProfiler;->getInstance()Lio/sentry/NoOpTransactionProfiler;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    const/4 v4, 0x0

    .line 369
    iput-object v4, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    .line 371
    const-string v5, ".*"

    .line 372
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->defaultTracePropagationTargets:Ljava/util/List;

    const-wide/16 v5, 0xbb8

    .line 385
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    .line 391
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    .line 394
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    .line 397
    new-instance v5, Lio/sentry/clientreport/ClientReportRecorder;

    invoke-direct {v5, p0}, Lio/sentry/clientreport/ClientReportRecorder;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v5, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    .line 400
    invoke-static {}, Lio/sentry/internal/modules/NoOpModulesLoader;->getInstance()Lio/sentry/internal/modules/NoOpModulesLoader;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    .line 403
    invoke-static {}, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->getInstance()Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    .line 406
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    .line 409
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    .line 412
    sget-object v5, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object v5, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    .line 415
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    .line 421
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    .line 423
    invoke-static {}, Lio/sentry/util/thread/NoOpMainThreadChecker;->getInstance()Lio/sentry/util/thread/NoOpMainThreadChecker;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->mainThreadChecker:Lio/sentry/util/thread/IMainThreadChecker;

    .line 427
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    .line 430
    new-instance v5, Lio/sentry/util/LazyEvaluator;

    new-instance v6, Lio/sentry/SentryOptions$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lio/sentry/SentryOptions$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v5, v6}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v5, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/util/LazyEvaluator;

    .line 434
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    .line 438
    invoke-static {}, Lio/sentry/NoOpTransactionPerformanceCollector;->getInstance()Lio/sentry/NoOpTransactionPerformanceCollector;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    .line 441
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    .line 445
    invoke-static {}, Lio/sentry/FullyDisplayedReporter;->getInstance()Lio/sentry/FullyDisplayedReporter;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 447
    new-instance v5, Lio/sentry/NoOpConnectionStatusProvider;

    invoke-direct {v5}, Lio/sentry/NoOpConnectionStatusProvider;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 451
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enabled:Z

    .line 454
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    .line 457
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->sendModules:Z

    .line 461
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    .line 466
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    .line 469
    iput-object v4, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 471
    invoke-static {}, Lio/sentry/backpressure/NoOpBackpressureMonitor;->getInstance()Lio/sentry/backpressure/NoOpBackpressureMonitor;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    .line 473
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    .line 476
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    .line 478
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableMetrics:Z

    .line 480
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableDefaultTagsForMetrics:Z

    .line 482
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableSpanLocalMetricAggregation:Z

    .line 484
    iput-object v4, p0, Lio/sentry/SentryOptions;->beforeEmitMetricCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    const/16 v3, 0x65

    .line 491
    iput v3, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    .line 493
    iput-object v4, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    .line 497
    invoke-static {}, Lio/sentry/NoOpReplayController;->getInstance()Lio/sentry/NoOpReplayController;

    move-result-object v3

    iput-object v3, p0, Lio/sentry/SentryOptions;->replayController:Lio/sentry/ReplayController;

    .line 503
    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableScreenTracking:Z

    .line 2659
    invoke-direct {p0}, Lio/sentry/SentryOptions;->createSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v2

    .line 2660
    new-instance v3, Lio/sentry/ExperimentalOptions;

    invoke-direct {v3, p1, v2}, Lio/sentry/ExperimentalOptions;-><init>(ZLio/sentry/protocol/SdkVersion;)V

    iput-object v3, p0, Lio/sentry/SentryOptions;->experimental:Lio/sentry/ExperimentalOptions;

    .line 2661
    new-instance v3, Lio/sentry/SentryReplayOptions;

    invoke-direct {v3, p1, v2}, Lio/sentry/SentryReplayOptions;-><init>(ZLio/sentry/protocol/SdkVersion;)V

    iput-object v3, p0, Lio/sentry/SentryOptions;->sessionReplay:Lio/sentry/SentryReplayOptions;

    if-nez p1, :cond_1

    .line 2665
    new-instance p1, Lio/sentry/SentryExecutorService;

    invoke-direct {p1}, Lio/sentry/SentryExecutorService;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    .line 2669
    new-instance p1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    invoke-direct {p1}, Lio/sentry/UncaughtExceptionHandlerIntegration;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2671
    new-instance p1, Lio/sentry/ShutdownHookIntegration;

    invoke-direct {p1}, Lio/sentry/ShutdownHookIntegration;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2672
    new-instance p1, Lio/sentry/SpotlightIntegration;

    invoke-direct {p1}, Lio/sentry/SpotlightIntegration;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2674
    new-instance p1, Lio/sentry/MainEventProcessor;

    invoke-direct {p1, p0}, Lio/sentry/MainEventProcessor;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2675
    new-instance p1, Lio/sentry/DuplicateEventDetectionEventProcessor;

    invoke-direct {p1, p0}, Lio/sentry/DuplicateEventDetectionEventProcessor;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2677
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2678
    new-instance p1, Lio/sentry/SentryRuntimeEventProcessor;

    invoke-direct {p1}, Lio/sentry/SentryRuntimeEventProcessor;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2681
    :cond_0
    const-string p1, "sentry.java/7.22.5"

    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setSentryClientName(Ljava/lang/String;)V

    .line 2682
    invoke-virtual {p0, v2}, Lio/sentry/SentryOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 2683
    invoke-direct {p0}, Lio/sentry/SentryOptions;->addPackageInfo()V

    :cond_1
    return-void
.end method

.method private addPackageInfo()V
    .locals 3

    .line 2823
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    const-string v1, "maven:io.sentry:sentry"

    const-string v2, "7.22.5"

    .line 2824
    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 3

    .line 2815
    new-instance v0, Lio/sentry/protocol/SdkVersion;

    const-string v1, "sentry.java"

    const-string v2, "7.22.5"

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    invoke-virtual {v0, v2}, Lio/sentry/protocol/SdkVersion;->setVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public static empty()Lio/sentry/SentryOptions;
    .locals 2

    .line 2645
    new-instance v0, Lio/sentry/SentryOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/sentry/SentryOptions;-><init>(Z)V

    return-object v0
.end method

.method static synthetic lambda$new$3()Lio/sentry/SentryDateProvider;
    .locals 1

    .line 432
    new-instance v0, Lio/sentry/SentryAutoDateProvider;

    invoke-direct {v0}, Lio/sentry/SentryAutoDateProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addBundleId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1917
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1918
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1919
    iget-object v0, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addContextTag(Ljava/lang/String;)V
    .locals 1

    .line 1948
    iget-object v0, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEventProcessor(Lio/sentry/EventProcessor;)V
    .locals 1

    .line 513
    iget-object v0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIgnoredExceptionForType(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1601
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInAppExclude(Ljava/lang/String;)V
    .locals 1

    .line 1036
    iget-object v0, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInAppInclude(Ljava/lang/String;)V
    .locals 1

    .line 1054
    iget-object v0, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIntegration(Lio/sentry/Integration;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOptionsObserver(Lio/sentry/IOptionsObserver;)V
    .locals 1

    .line 1481
    iget-object v0, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V
    .locals 1

    .line 2315
    iget-object v0, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScopeObserver(Lio/sentry/IScopeObserver;)V
    .locals 1

    .line 1451
    iget-object v0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTracingOrigin(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1847
    iget-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1848
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    .line 1850
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1851
    iget-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method containsIgnoredExceptionForType(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1611
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public findPersistingScopeObserver()Lio/sentry/cache/PersistingScopeObserver;
    .locals 3

    .line 1467
    iget-object v0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 1468
    instance-of v2, v1, Lio/sentry/cache/PersistingScopeObserver;

    if-eqz v2, :cond_0

    .line 1469
    check-cast v1, Lio/sentry/cache/PersistingScopeObserver;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;
    .locals 1

    .line 2341
    iget-object v0, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    return-object v0
.end method

.method public getBeforeBreadcrumb()Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;
    .locals 1

    .line 797
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    return-object v0
.end method

.method public getBeforeEmitMetricCallback()Lio/sentry/SentryOptions$BeforeEmitMetricCallback;
    .locals 1

    .line 2459
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeEmitMetricCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    return-object v0
.end method

.method public getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;
    .locals 1

    .line 2388
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeEnvelopeCallback:Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    return-object v0
.end method

.method public getBeforeSend()Lio/sentry/SentryOptions$BeforeSendCallback;
    .locals 1

    .line 742
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

    return-object v0
.end method

.method public getBeforeSendReplay()Lio/sentry/SentryOptions$BeforeSendReplayCallback;
    .locals 1

    .line 779
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeSendReplay:Lio/sentry/SentryOptions$BeforeSendReplayCallback;

    return-object v0
.end method

.method public getBeforeSendTransaction()Lio/sentry/SentryOptions$BeforeSendTransactionCallback;
    .locals 1

    .line 760
    iget-object v0, p0, Lio/sentry/SentryOptions;->beforeSendTransaction:Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

    return-object v0
.end method

.method public getBundleIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1930
    iget-object v0, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    return-object v0
.end method

.method public getCacheDirPath()Ljava/lang/String;
    .locals 3

    .line 815
    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 819
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getCacheDirPathWithoutDsn()Ljava/lang/String;
    .locals 1

    .line 829
    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;
    .locals 1

    .line 2038
    iget-object v0, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    return-object v0
.end method

.method public getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;
    .locals 1

    .line 2330
    iget-object v0, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    return-object v0
.end method

.method public getConnectionTimeoutMillis()I
    .locals 1

    .line 1324
    iget v0, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    return v0
.end method

.method public getContextTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1939
    iget-object v0, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    return-object v0
.end method

.method public getCron()Lio/sentry/SentryOptions$Cron;
    .locals 1

    .line 2469
    iget-object v0, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    return-object v0
.end method

.method public getDateProvider()Lio/sentry/SentryDateProvider;
    .locals 1

    .line 2294
    iget-object v0, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryDateProvider;

    return-object v0
.end method

.method public getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;
    .locals 1

    .line 2064
    iget-object v0, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    return-object v0
.end method

.method public getDiagnosticLevel()Lio/sentry/SentryLevel;
    .locals 1

    .line 619
    iget-object v0, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public getDist()Ljava/lang/String;
    .locals 1

    .line 1082
    iget-object v0, p0, Lio/sentry/SentryOptions;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .line 1227
    iget-object v0, p0, Lio/sentry/SentryOptions;->distinctId:Ljava/lang/String;

    return-object v0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableTracing()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 966
    iget-object v0, p0, Lio/sentry/SentryOptions;->enableTracing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;
    .locals 1

    .line 1360
    iget-object v0, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    return-object v0
.end method

.method public getEnvelopeReader()Lio/sentry/IEnvelopeReader;
    .locals 1

    .line 668
    iget-object v0, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IEnvelopeReader;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 900
    iget-object v0, p0, Lio/sentry/SentryOptions;->environment:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "production"

    :goto_0
    return-object v0
.end method

.method public getEventProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExecutorService()Lio/sentry/ISentryExecutorService;
    .locals 1

    .line 1302
    iget-object v0, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    return-object v0
.end method

.method public getExperimental()Lio/sentry/ExperimentalOptions;
    .locals 1

    .line 2479
    iget-object v0, p0, Lio/sentry/SentryOptions;->experimental:Lio/sentry/ExperimentalOptions;

    return-object v0
.end method

.method public getFlushTimeoutMillis()J
    .locals 2

    .line 1246
    iget-wide v0, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    return-wide v0
.end method

.method public getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;
    .locals 1

    .line 2169
    iget-object v0, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    return-object v0
.end method

.method public getGestureTargetLocators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;"
        }
    .end annotation

    .line 2080
    iget-object v0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    return-object v0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 1

    .line 1957
    iget-object v0, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    return-object v0
.end method

.method public getIgnoredCheckIns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2288
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    return-object v0
.end method

.method public getIgnoredExceptionsForType()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .line 1592
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    return-object v0
.end method

.method public getInAppExcludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    return-object v0
.end method

.method public getInAppIncludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1045
    iget-object v0, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    return-object v0
.end method

.method public getInstrumenter()Lio/sentry/Instrumenter;
    .locals 1

    .line 2028
    iget-object v0, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    return-object v0
.end method

.method public getIntegrations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Integration;",
            ">;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    return-object v0
.end method

.method public getLogger()Lio/sentry/ILogger;
    .locals 1

    .line 601
    iget-object v0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    return-object v0
.end method

.method public getMainThreadChecker()Lio/sentry/util/thread/IMainThreadChecker;
    .locals 1

    .line 2116
    iget-object v0, p0, Lio/sentry/SentryOptions;->mainThreadChecker:Lio/sentry/util/thread/IMainThreadChecker;

    return-object v0
.end method

.method public getMaxAttachmentSize()J
    .locals 2

    .line 1538
    iget-wide v0, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    return-wide v0
.end method

.method public getMaxBreadcrumbs()I
    .locals 1

    .line 864
    iget v0, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    return v0
.end method

.method public getMaxCacheItems()I
    .locals 1

    .line 1658
    iget v0, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    return v0
.end method

.method public getMaxDepth()I
    .locals 1

    .line 655
    iget v0, p0, Lio/sentry/SentryOptions;->maxDepth:I

    return v0
.end method

.method public getMaxQueueSize()I
    .locals 1

    .line 1379
    iget v0, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    return v0
.end method

.method public getMaxRequestBodySize()Lio/sentry/SentryOptions$RequestSize;
    .locals 1

    .line 1671
    iget-object v0, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    return-object v0
.end method

.method public getMaxSpans()I
    .locals 1

    .line 1621
    iget v0, p0, Lio/sentry/SentryOptions;->maxSpans:I

    return v0
.end method

.method public getMaxTraceFileSize()J
    .locals 2

    .line 1711
    iget-wide v0, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    return-wide v0
.end method

.method public getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;
    .locals 1

    .line 2048
    iget-object v0, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    return-object v0
.end method

.method public getOptionsObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IOptionsObserver;",
            ">;"
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    return-object v0
.end method

.method public getOutboxPath()Ljava/lang/String;
    .locals 3

    .line 842
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 846
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "outbox"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPerformanceCollectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceCollector;",
            ">;"
        }
    .end annotation

    .line 2325
    iget-object v0, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    return-object v0
.end method

.method public getProfilesSampleRate()Ljava/lang/Double;
    .locals 1

    .line 1793
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getProfilesSampler()Lio/sentry/SentryOptions$ProfilesSamplerCallback;
    .locals 1

    .line 1775
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    return-object v0
.end method

.method public getProfilingTracesDirPath()Ljava/lang/String;
    .locals 3

    .line 1819
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1823
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "profiling_traces"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfilingTracesHz()I
    .locals 1

    .line 2361
    iget v0, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    return v0
.end method

.method public getProguardUuid()Ljava/lang/String;
    .locals 1

    .line 1896
    iget-object v0, p0, Lio/sentry/SentryOptions;->proguardUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Lio/sentry/SentryOptions$Proxy;
    .locals 1

    .line 918
    iget-object v0, p0, Lio/sentry/SentryOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    return-object v0
.end method

.method public getReadTimeoutMillis()I
    .locals 1

    .line 1342
    iget v0, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    return v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 882
    iget-object v0, p0, Lio/sentry/SentryOptions;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getReplayController()Lio/sentry/ReplayController;
    .locals 1

    .line 2483
    iget-object v0, p0, Lio/sentry/SentryOptions;->replayController:Lio/sentry/ReplayController;

    return-object v0
.end method

.method public getSampleRate()Ljava/lang/Double;
    .locals 1

    .line 936
    iget-object v0, p0, Lio/sentry/SentryOptions;->sampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getScopeObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IScopeObserver;",
            ">;"
        }
    .end annotation

    .line 1461
    iget-object v0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    return-object v0
.end method

.method public getSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 1

    .line 1399
    iget-object v0, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-object v0
.end method

.method public getSentryClientName()Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Lio/sentry/SentryOptions;->sentryClientName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializer()Lio/sentry/ISerializer;
    .locals 1

    .line 637
    iget-object v0, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISerializer;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 1172
    iget-object v0, p0, Lio/sentry/SentryOptions;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionFlushTimeoutMillis()J
    .locals 2

    .line 2377
    iget-wide v0, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    return-wide v0
.end method

.method public getSessionReplay()Lio/sentry/SentryReplayOptions;
    .locals 1

    .line 2503
    iget-object v0, p0, Lio/sentry/SentryOptions;->sessionReplay:Lio/sentry/SentryReplayOptions;

    return-object v0
.end method

.method public getSessionTrackingIntervalMillis()J
    .locals 2

    .line 1208
    iget-wide v0, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    return-wide v0
.end method

.method public getShutdownTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 685
    iget-wide v0, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    return-wide v0
.end method

.method public getShutdownTimeoutMillis()J
    .locals 2

    .line 694
    iget-wide v0, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    return-wide v0
.end method

.method public getSpotlightConnectionUrl()Ljava/lang/String;
    .locals 1

    .line 2400
    iget-object v0, p0, Lio/sentry/SentryOptions;->spotlightConnectionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1408
    iget-object v0, p0, Lio/sentry/SentryOptions;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1519
    iget-object v0, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTracePropagationTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1868
    iget-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1869
    iget-object v0, p0, Lio/sentry/SentryOptions;->defaultTracePropagationTargets:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getTracesSampleRate()Ljava/lang/Double;
    .locals 1

    .line 985
    iget-object v0, p0, Lio/sentry/SentryOptions;->tracesSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;
    .locals 1

    .line 1009
    iget-object v0, p0, Lio/sentry/SentryOptions;->tracesSampler:Lio/sentry/SentryOptions$TracesSamplerCallback;

    return-object v0
.end method

.method public getTracingOrigins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1835
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionPerformanceCollector()Lio/sentry/TransactionPerformanceCollector;
    .locals 1

    .line 2130
    iget-object v0, p0, Lio/sentry/SentryOptions;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    return-object v0
.end method

.method public getTransactionProfiler()Lio/sentry/ITransactionProfiler;
    .locals 1

    .line 1729
    iget-object v0, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    return-object v0
.end method

.method public getTransportFactory()Lio/sentry/ITransportFactory;
    .locals 1

    .line 1063
    iget-object v0, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    return-object v0
.end method

.method public getTransportGate()Lio/sentry/transport/ITransportGate;
    .locals 1

    .line 1100
    iget-object v0, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    return-object v0
.end method

.method public final getViewHierarchyExporters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;"
        }
    .end annotation

    .line 2102
    iget-object v0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    return-object v0
.end method

.method public isAttachServerName()Z
    .locals 1

    .line 1190
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    return v0
.end method

.method public isAttachStacktrace()Z
    .locals 1

    .line 1118
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    return v0
.end method

.method public isAttachThreads()Z
    .locals 1

    .line 1136
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->attachThreads:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->debug:Z

    return v0
.end method

.method public isEnableAppStartProfiling()Z
    .locals 1

    .line 2249
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableAutoSessionTracking()Z
    .locals 1

    .line 1154
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    return v0
.end method

.method public isEnableBackpressureHandling()Z
    .locals 1

    .line 2372
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    return v0
.end method

.method public isEnableDeduplication()Z
    .locals 1

    .line 1558
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    return v0
.end method

.method public isEnableDefaultTagsForMetrics()Z
    .locals 1

    .line 2448
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableDefaultTagsForMetrics:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableExternalConfiguration()Z
    .locals 1

    .line 1500
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableExternalConfiguration:Z

    return v0
.end method

.method public isEnableMetrics()Z
    .locals 1

    .line 2428
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableMetrics:Z

    return v0
.end method

.method public isEnablePrettySerializationOutput()Z
    .locals 1

    .line 2221
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    return v0
.end method

.method public isEnableScopePersistence()Z
    .locals 1

    .line 2419
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    return v0
.end method

.method public isEnableScreenTracking()Z
    .locals 1

    .line 2493
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableScreenTracking:Z

    return v0
.end method

.method public isEnableShutdownHook()Z
    .locals 1

    .line 1640
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    return v0
.end method

.method public isEnableSpanLocalMetricAggregation()Z
    .locals 1

    .line 2438
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableSpanLocalMetricAggregation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableSpotlight()Z
    .locals 1

    .line 2410
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    return v0
.end method

.method public isEnableTimeToFullDisplayTracing()Z
    .locals 1

    .line 2150
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    return v0
.end method

.method public isEnableUncaughtExceptionHandler()Z
    .locals 1

    .line 1264
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    return v0
.end method

.method public isEnableUserInteractionBreadcrumbs()Z
    .locals 1

    .line 2002
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    return v0
.end method

.method public isEnableUserInteractionTracing()Z
    .locals 1

    .line 1994
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 2203
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->enabled:Z

    return v0
.end method

.method public isPrintUncaughtStackTrace()Z
    .locals 1

    .line 1282
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    return v0
.end method

.method public isProfilingEnabled()Z
    .locals 4

    .line 1752
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 1753
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilesSampler()Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSendClientReports()Z
    .locals 1

    .line 1975
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    return v0
.end method

.method public isSendDefaultPii()Z
    .locals 1

    .line 1438
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    return v0
.end method

.method public isSendModules()Z
    .locals 1

    .line 2230
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->sendModules:Z

    return v0
.end method

.method public isTraceOptionsRequests()Z
    .locals 1

    .line 2185
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    return v0
.end method

.method public isTraceSampling()Z
    .locals 1

    .line 1688
    iget-boolean v0, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    return v0
.end method

.method public isTracingEnabled()Z
    .locals 1

    .line 1577
    iget-object v0, p0, Lio/sentry/SentryOptions;->enableTracing:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1578
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1581
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$new$0$io-sentry-SentryOptions()Lio/sentry/Dsn;
    .locals 2

    .line 87
    new-instance v0, Lio/sentry/Dsn;

    iget-object v1, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/sentry/Dsn;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method synthetic lambda$new$1$io-sentry-SentryOptions()Lio/sentry/ISerializer;
    .locals 1

    .line 127
    new-instance v0, Lio/sentry/JsonSerializer;

    invoke-direct {v0, p0}, Lio/sentry/JsonSerializer;-><init>(Lio/sentry/SentryOptions;)V

    return-object v0
.end method

.method synthetic lambda$new$2$io-sentry-SentryOptions()Lio/sentry/IEnvelopeReader;
    .locals 2

    .line 131
    new-instance v0, Lio/sentry/EnvelopeReader;

    iget-object v1, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v1}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISerializer;

    invoke-direct {v0, v1}, Lio/sentry/EnvelopeReader;-><init>(Lio/sentry/ISerializer;)V

    return-object v0
.end method

.method loadLazyFields()V
    .locals 0

    .line 2515
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 2516
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    .line 2517
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    .line 2518
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    return-void
.end method

.method public merge(Lio/sentry/ExternalOptions;)V
    .locals 4

    .line 2694
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2695
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDsn(Ljava/lang/String;)V

    .line 2697
    :cond_0
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2698
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnvironment(Ljava/lang/String;)V

    .line 2700
    :cond_1
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2701
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setRelease(Ljava/lang/String;)V

    .line 2703
    :cond_2
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2704
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDist(Ljava/lang/String;)V

    .line 2706
    :cond_3
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getServerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2707
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setServerName(Ljava/lang/String;)V

    .line 2709
    :cond_4
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2710
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProxy(Lio/sentry/SentryOptions$Proxy;)V

    .line 2712
    :cond_5
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableUncaughtExceptionHandler()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2713
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableUncaughtExceptionHandler()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableUncaughtExceptionHandler(Z)V

    .line 2715
    :cond_6
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getPrintUncaughtStackTrace()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2716
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getPrintUncaughtStackTrace()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setPrintUncaughtStackTrace(Z)V

    .line 2718
    :cond_7
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableTracing()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2719
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableTracing()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableTracing(Ljava/lang/Boolean;)V

    .line 2721
    :cond_8
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2722
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 2724
    :cond_9
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2725
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 2727
    :cond_a
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDebug()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2728
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDebug(Z)V

    .line 2730
    :cond_b
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableDeduplication()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2731
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableDeduplication()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableDeduplication(Z)V

    .line 2733
    :cond_c
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSendClientReports()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2734
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSendClientReports()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSendClientReports(Z)V

    .line 2736
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2737
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2738
    iget-object v2, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2740
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getInAppIncludes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2741
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2742
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addInAppInclude(Ljava/lang/String;)V

    goto :goto_1

    .line 2744
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getInAppExcludes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2745
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2746
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addInAppExclude(Ljava/lang/String;)V

    goto :goto_2

    .line 2749
    :cond_10
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredExceptionsForType()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2750
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addIgnoredExceptionForType(Ljava/lang/Class;)V

    goto :goto_3

    .line 2752
    :cond_11
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2753
    new-instance v0, Ljava/util/ArrayList;

    .line 2754
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2755
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setTracePropagationTargets(Ljava/util/List;)V

    .line 2757
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getContextTags()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2758
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2759
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addContextTag(Ljava/lang/String;)V

    goto :goto_4

    .line 2761
    :cond_13
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2762
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 2764
    :cond_14
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2765
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 2767
    :cond_15
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getBundleIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2768
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addBundleId(Ljava/lang/String;)V

    goto :goto_5

    .line 2771
    :cond_16
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2772
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnabled(Z)V

    .line 2774
    :cond_17
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnablePrettySerializationOutput()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2775
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnablePrettySerializationOutput()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnablePrettySerializationOutput(Z)V

    .line 2778
    :cond_18
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isSendModules()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2779
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isSendModules()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSendModules(Z)V

    .line 2781
    :cond_19
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredCheckIns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2782
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredCheckIns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2783
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setIgnoredCheckIns(Ljava/util/List;)V

    .line 2785
    :cond_1a
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableBackpressureHandling()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2786
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableBackpressureHandling()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableBackpressureHandling(Z)V

    .line 2789
    :cond_1b
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2790
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 2791
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setCron(Lio/sentry/SentryOptions$Cron;)V

    goto/16 :goto_6

    .line 2793
    :cond_1c
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultCheckinMargin()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2794
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions$Cron;->getDefaultCheckinMargin()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions$Cron;->setDefaultCheckinMargin(Ljava/lang/Long;)V

    .line 2796
    :cond_1d
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultMaxRuntime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2797
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions$Cron;->getDefaultMaxRuntime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions$Cron;->setDefaultMaxRuntime(Ljava/lang/Long;)V

    .line 2799
    :cond_1e
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultTimezone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2800
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions$Cron;->getDefaultTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions$Cron;->setDefaultTimezone(Ljava/lang/String;)V

    .line 2802
    :cond_1f
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultFailureIssueThreshold()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2803
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    .line 2804
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions$Cron;->getDefaultFailureIssueThreshold()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions$Cron;->setDefaultFailureIssueThreshold(Ljava/lang/Long;)V

    .line 2806
    :cond_20
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultRecoveryThreshold()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2807
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions$Cron;->getDefaultRecoveryThreshold()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/SentryOptions$Cron;->setDefaultRecoveryThreshold(Ljava/lang/Long;)V

    :cond_21
    :goto_6
    return-void
.end method

.method retrieveParsedDsn()Lio/sentry/Dsn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lio/sentry/SentryOptions;->parsedDsn:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/Dsn;

    return-object v0
.end method

.method public setAttachServerName(Z)V
    .locals 0

    .line 1199
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    return-void
.end method

.method public setAttachStacktrace(Z)V
    .locals 0

    .line 1127
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    return-void
.end method

.method public setAttachThreads(Z)V
    .locals 0

    .line 1145
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachThreads:Z

    return-void
.end method

.method public setBackpressureMonitor(Lio/sentry/backpressure/IBackpressureMonitor;)V
    .locals 0

    .line 2346
    iput-object p1, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    return-void
.end method

.method public setBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    return-void
.end method

.method public setBeforeEmitMetricCallback(Lio/sentry/SentryOptions$BeforeEmitMetricCallback;)V
    .locals 0

    .line 2465
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeEmitMetricCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    return-void
.end method

.method public setBeforeEnvelopeCallback(Lio/sentry/SentryOptions$BeforeEnvelopeCallback;)V
    .locals 0

    .line 2394
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeEnvelopeCallback:Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    return-void
.end method

.method public setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

    return-void
.end method

.method public setBeforeSendReplay(Lio/sentry/SentryOptions$BeforeSendReplayCallback;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSendReplay:Lio/sentry/SentryOptions$BeforeSendReplayCallback;

    return-void
.end method

.method public setBeforeSendTransaction(Lio/sentry/SentryOptions$BeforeSendTransactionCallback;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSendTransaction:Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

    return-void
.end method

.method public setCacheDirPath(Ljava/lang/String;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    return-void
.end method

.method public setConnectionStatusProvider(Lio/sentry/IConnectionStatusProvider;)V
    .locals 0

    .line 2335
    iput-object p1, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    return-void
.end method

.method public setConnectionTimeoutMillis(I)V
    .locals 0

    .line 1333
    iput p1, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    return-void
.end method

.method public setCron(Lio/sentry/SentryOptions$Cron;)V
    .locals 0

    .line 2474
    iput-object p1, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    return-void
.end method

.method public setDateProvider(Lio/sentry/SentryDateProvider;)V
    .locals 1

    .line 2305
    iget-object v0, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0, p1}, Lio/sentry/util/LazyEvaluator;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 592
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->debug:Z

    return-void
.end method

.method public setDebugMetaLoader(Lio/sentry/internal/debugmeta/IDebugMetaLoader;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2070
    :cond_0
    invoke-static {}, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->getInstance()Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    return-void
.end method

.method public setDiagnosticLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    sget-object p1, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 0

    .line 1091
    iput-object p1, p0, Lio/sentry/SentryOptions;->dist:Ljava/lang/String;

    return-void
.end method

.method public setDistinctId(Ljava/lang/String;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lio/sentry/SentryOptions;->distinctId:Ljava/lang/String;

    return-void
.end method

.method public setDsn(Ljava/lang/String;)V
    .locals 1

    .line 571
    iput-object p1, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    .line 572
    iget-object p1, p0, Lio/sentry/SentryOptions;->parsedDsn:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {p1}, Lio/sentry/util/LazyEvaluator;->resetValue()V

    .line 574
    iget-object p1, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    iget-object v0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    invoke-static {p1, v0}, Lio/sentry/util/StringUtils;->calculateStringHash(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    return-void
.end method

.method public setEnableAppStartProfiling(Z)V
    .locals 0

    .line 2258
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    return-void
.end method

.method public setEnableAutoSessionTracking(Z)V
    .locals 0

    .line 1163
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    return-void
.end method

.method public setEnableBackpressureHandling(Z)V
    .locals 0

    .line 2351
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    return-void
.end method

.method public setEnableDeduplication(Z)V
    .locals 0

    .line 1567
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    return-void
.end method

.method public setEnableDefaultTagsForMetrics(Z)V
    .locals 0

    .line 2453
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableDefaultTagsForMetrics:Z

    return-void
.end method

.method public setEnableExternalConfiguration(Z)V
    .locals 0

    .line 1510
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableExternalConfiguration:Z

    return-void
.end method

.method public setEnableMetrics(Z)V
    .locals 0

    .line 2433
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableMetrics:Z

    return-void
.end method

.method public setEnablePrettySerializationOutput(Z)V
    .locals 0

    .line 2239
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    return-void
.end method

.method public setEnableScopePersistence(Z)V
    .locals 0

    .line 2423
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    return-void
.end method

.method public setEnableScreenTracking(Z)V
    .locals 0

    .line 2498
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableScreenTracking:Z

    return-void
.end method

.method public setEnableShutdownHook(Z)V
    .locals 0

    .line 1649
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    return-void
.end method

.method public setEnableSpanLocalMetricAggregation(Z)V
    .locals 0

    .line 2443
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableSpanLocalMetricAggregation:Z

    return-void
.end method

.method public setEnableSpotlight(Z)V
    .locals 0

    .line 2415
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    return-void
.end method

.method public setEnableTimeToFullDisplayTracing(Z)V
    .locals 0

    .line 2159
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    return-void
.end method

.method public setEnableTracing(Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 976
    iput-object p1, p0, Lio/sentry/SentryOptions;->enableTracing:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnableUncaughtExceptionHandler(Z)V
    .locals 0

    .line 1273
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    return-void
.end method

.method public setEnableUserInteractionBreadcrumbs(Z)V
    .locals 0

    .line 2006
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    return-void
.end method

.method public setEnableUserInteractionTracing(Z)V
    .locals 0

    .line 1998
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 2212
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enabled:Z

    return-void
.end method

.method public setEnvelopeDiskCache(Lio/sentry/cache/IEnvelopeCache;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1370
    :cond_0
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    return-void
.end method

.method public setEnvelopeReader(Lio/sentry/IEnvelopeReader;)V
    .locals 1

    .line 672
    iget-object v0, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/util/LazyEvaluator;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    invoke-static {}, Lio/sentry/NoOpEnvelopeReader;->getInstance()Lio/sentry/NoOpEnvelopeReader;

    move-result-object p1

    .line 672
    :goto_0
    invoke-virtual {v0, p1}, Lio/sentry/util/LazyEvaluator;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lio/sentry/SentryOptions;->environment:Ljava/lang/String;

    return-void
.end method

.method public setExecutorService(Lio/sentry/ISentryExecutorService;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1314
    iput-object p1, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    :cond_0
    return-void
.end method

.method public setFlushTimeoutMillis(J)V
    .locals 0

    .line 1255
    iput-wide p1, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    return-void
.end method

.method public setFullyDisplayedReporter(Lio/sentry/FullyDisplayedReporter;)V
    .locals 0

    .line 2176
    iput-object p1, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    return-void
.end method

.method public setGestureTargetLocators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;)V"
        }
    .end annotation

    .line 2090
    iget-object v0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2091
    iget-object v0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 1966
    iput-object p1, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    return-void
.end method

.method public setIgnoredCheckIns(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2273
    iput-object p1, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    goto :goto_1

    .line 2275
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2277
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2278
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2282
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public setInstrumenter(Lio/sentry/Instrumenter;)V
    .locals 0

    .line 2019
    iput-object p1, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    return-void
.end method

.method public setLogger(Lio/sentry/ILogger;)V
    .locals 1

    if-nez p1, :cond_0

    .line 610
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lio/sentry/DiagnosticLogger;

    invoke-direct {v0, p0, p1}, Lio/sentry/DiagnosticLogger;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ILogger;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method public setMainThreadChecker(Lio/sentry/util/thread/IMainThreadChecker;)V
    .locals 0

    .line 2120
    iput-object p1, p0, Lio/sentry/SentryOptions;->mainThreadChecker:Lio/sentry/util/thread/IMainThreadChecker;

    return-void
.end method

.method public setMaxAttachmentSize(J)V
    .locals 0

    .line 1549
    iput-wide p1, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    return-void
.end method

.method public setMaxBreadcrumbs(I)V
    .locals 0

    .line 873
    iput p1, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    return-void
.end method

.method public setMaxCacheItems(I)V
    .locals 0

    .line 1667
    iput p1, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    return-void
.end method

.method public setMaxDepth(I)V
    .locals 0

    .line 664
    iput p1, p0, Lio/sentry/SentryOptions;->maxDepth:I

    return-void
.end method

.method public setMaxQueueSize(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1389
    iput p1, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    :cond_0
    return-void
.end method

.method public setMaxRequestBodySize(Lio/sentry/SentryOptions$RequestSize;)V
    .locals 0

    .line 1675
    iput-object p1, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    return-void
.end method

.method public setMaxSpans(I)V
    .locals 0

    .line 1631
    iput p1, p0, Lio/sentry/SentryOptions;->maxSpans:I

    return-void
.end method

.method public setMaxTraceFileSize(J)V
    .locals 0

    .line 1720
    iput-wide p1, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    return-void
.end method

.method public setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2053
    :cond_0
    invoke-static {}, Lio/sentry/internal/modules/NoOpModulesLoader;->getInstance()Lio/sentry/internal/modules/NoOpModulesLoader;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    return-void
.end method

.method public setPrintUncaughtStackTrace(Z)V
    .locals 0

    .line 1291
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    return-void
.end method

.method public setProfilesSampleRate(Ljava/lang/Double;)V
    .locals 3

    .line 1804
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidProfilesSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    iput-object p1, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    return-void

    .line 1805
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not valid. Use null to disable or values between 0.0 and 1.0."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProfilesSampler(Lio/sentry/SentryOptions$ProfilesSamplerCallback;)V
    .locals 0

    .line 1784
    iput-object p1, p0, Lio/sentry/SentryOptions;->profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    return-void
.end method

.method public setProfilingEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1764
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1765
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    :cond_1
    return-void
.end method

.method public setProfilingTracesHz(I)V
    .locals 0

    .line 2367
    iput p1, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    return-void
.end method

.method public setProguardUuid(Ljava/lang/String;)V
    .locals 0

    .line 1905
    iput-object p1, p0, Lio/sentry/SentryOptions;->proguardUuid:Ljava/lang/String;

    return-void
.end method

.method public setProxy(Lio/sentry/SentryOptions$Proxy;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lio/sentry/SentryOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    return-void
.end method

.method public setReadTimeoutMillis(I)V
    .locals 0

    .line 1351
    iput p1, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lio/sentry/SentryOptions;->release:Ljava/lang/String;

    return-void
.end method

.method public setReplayController(Lio/sentry/ReplayController;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2488
    :cond_0
    invoke-static {}, Lio/sentry/NoOpReplayController;->getInstance()Lio/sentry/NoOpReplayController;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->replayController:Lio/sentry/ReplayController;

    return-void
.end method

.method public setSampleRate(Ljava/lang/Double;)V
    .locals 3

    .line 945
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iput-object p1, p0, Lio/sentry/SentryOptions;->sampleRate:Ljava/lang/Double;

    return-void

    .line 946
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSdkVersion(Lio/sentry/protocol/SdkVersion;)V
    .locals 2

    .line 1427
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    .line 1428
    iget-object v1, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1430
    invoke-virtual {v1, v0}, Lio/sentry/protocol/SdkVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/SentryReplayOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 1434
    :cond_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-void
.end method

.method public setSendClientReports(Z)V
    .locals 0

    .line 1984
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    if-eqz p1, :cond_0

    .line 1987
    new-instance p1, Lio/sentry/clientreport/ClientReportRecorder;

    invoke-direct {p1, p0}, Lio/sentry/clientreport/ClientReportRecorder;-><init>(Lio/sentry/SentryOptions;)V

    iput-object p1, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    goto :goto_0

    .line 1989
    :cond_0
    new-instance p1, Lio/sentry/clientreport/NoOpClientReportRecorder;

    invoke-direct {p1}, Lio/sentry/clientreport/NoOpClientReportRecorder;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    :goto_0
    return-void
.end method

.method public setSendDefaultPii(Z)V
    .locals 0

    .line 1442
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    return-void
.end method

.method public setSendModules(Z)V
    .locals 0

    .line 2267
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendModules:Z

    return-void
.end method

.method public setSentryClientName(Ljava/lang/String;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lio/sentry/SentryOptions;->sentryClientName:Ljava/lang/String;

    return-void
.end method

.method public setSerializer(Lio/sentry/ISerializer;)V
    .locals 1

    .line 646
    iget-object v0, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/NoOpSerializer;->getInstance()Lio/sentry/NoOpSerializer;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lio/sentry/util/LazyEvaluator;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .line 1181
    iput-object p1, p0, Lio/sentry/SentryOptions;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setSessionFlushTimeoutMillis(J)V
    .locals 0

    .line 2382
    iput-wide p1, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    return-void
.end method

.method public setSessionReplay(Lio/sentry/SentryReplayOptions;)V
    .locals 0

    .line 2507
    iput-object p1, p0, Lio/sentry/SentryOptions;->sessionReplay:Lio/sentry/SentryReplayOptions;

    return-void
.end method

.method public setSessionTrackingIntervalMillis(J)V
    .locals 0

    .line 1217
    iput-wide p1, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    return-void
.end method

.method public setShutdownTimeout(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 706
    iput-wide p1, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    return-void
.end method

.method public setShutdownTimeoutMillis(J)V
    .locals 0

    .line 715
    iput-wide p1, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    return-void
.end method

.method public setSpotlightConnectionUrl(Ljava/lang/String;)V
    .locals 0

    .line 2405
    iput-object p1, p0, Lio/sentry/SentryOptions;->spotlightConnectionUrl:Ljava/lang/String;

    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 1417
    iput-object p1, p0, Lio/sentry/SentryOptions;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1529
    iget-object v0, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTraceOptionsRequests(Z)V
    .locals 0

    .line 2194
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    return-void
.end method

.method public setTracePropagationTargets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1877
    iput-object p1, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    goto :goto_1

    .line 1879
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1881
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1882
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1886
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public setTraceSampling(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1702
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    return-void
.end method

.method public setTracesSampleRate(Ljava/lang/Double;)V
    .locals 3

    .line 994
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iput-object p1, p0, Lio/sentry/SentryOptions;->tracesSampleRate:Ljava/lang/Double;

    return-void

    .line 995
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not valid. Use null to disable or values between 0.0 and 1.0."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTracesSampler(Lio/sentry/SentryOptions$TracesSamplerCallback;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lio/sentry/SentryOptions;->tracesSampler:Lio/sentry/SentryOptions$TracesSamplerCallback;

    return-void
.end method

.method public setTracingOrigins(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1859
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setTracePropagationTargets(Ljava/util/List;)V

    return-void
.end method

.method public setTransactionPerformanceCollector(Lio/sentry/TransactionPerformanceCollector;)V
    .locals 0

    .line 2141
    iput-object p1, p0, Lio/sentry/SentryOptions;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    return-void
.end method

.method public setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V
    .locals 2

    .line 1740
    iget-object v0, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    invoke-static {}, Lio/sentry/NoOpTransactionProfiler;->getInstance()Lio/sentry/NoOpTransactionProfiler;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 1742
    iput-object p1, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    :cond_0
    return-void
.end method

.method public setTransportFactory(Lio/sentry/ITransportFactory;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1073
    :cond_0
    invoke-static {}, Lio/sentry/NoOpTransportFactory;->getInstance()Lio/sentry/NoOpTransportFactory;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    return-void
.end method

.method public setTransportGate(Lio/sentry/transport/ITransportGate;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1109
    :cond_0
    invoke-static {}, Lio/sentry/transport/NoOpTransportGate;->getInstance()Lio/sentry/transport/NoOpTransportGate;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    return-void
.end method

.method public setViewHierarchyExporters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;)V"
        }
    .end annotation

    .line 2111
    iget-object v0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2112
    iget-object v0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
