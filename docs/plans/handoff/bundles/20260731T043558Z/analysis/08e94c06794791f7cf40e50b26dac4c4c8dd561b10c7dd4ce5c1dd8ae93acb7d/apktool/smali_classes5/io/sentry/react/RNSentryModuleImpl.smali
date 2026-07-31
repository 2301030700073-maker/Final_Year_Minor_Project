.class public Lio/sentry/react/RNSentryModuleImpl;
.super Ljava/lang/Object;
.source "RNSentryModuleImpl.java"


# static fields
.field private static final FROZEN_FRAME_THRESHOLD:I = 0x2bc

.field public static final NAME:Ljava/lang/String; = "RNSentry"

.field private static final SCREENSHOT_TIMEOUT_SECONDS:I = 0x2

.field private static final SLOW_FRAME_THRESHOLD:I = 0x10

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final buildInfo:Lio/sentry/android/core/BuildInfoProvider;

.field static lastStartTimestampMs:J = 0x0L

.field private static final logger:Lio/sentry/ILogger;

.field private static final modulesPath:Ljava/lang/String; = "modules.json"


# instance fields
.field private androidProfiler:Lio/sentry/android/core/AndroidProfiler;

.field private androidXAvailable:Z

.field private cacheDirPath:Ljava/lang/String;

.field private final dateProvider:Lio/sentry/SentryDateProvider;

.field private final emitNewFrameEvent:Ljava/lang/Runnable;

.field private executorService:Lio/sentry/ISentryExecutorService;

.field private frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

.field private isProguardDebugMetaLoaded:Z

.field private maxTraceFileSize:J

.field private final packageInfo:Landroid/content/pm/PackageInfo;

.field private profilingTracesHz:I

.field private proguardUuid:Ljava/lang/String;

.field private final reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public static synthetic $r8$lambda$228Db62AKM93aixzsv7AwXqm774(Lio/sentry/react/RNSentryModuleImpl;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->lambda$createEmitNewFrameEvent$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$3Ma0jUG2ntKPE59ebcQ2Nutkxwc(Lio/sentry/react/RNSentryModuleImpl;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/react/RNSentryModuleImpl;->lambda$getSentryAndroidOptions$3(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wbFISAUeIDM0MRlzmmoYj6OXh-Y(Lio/sentry/react/RNSentryModuleImpl;Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl;->lambda$initNativeSdk$1(Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 99
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    const-string v1, "RNSentry"

    invoke-direct {v0, v1}, Lio/sentry/android/core/AndroidLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    .line 100
    new-instance v1, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v1, v0}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    sput-object v1, Lio/sentry/react/RNSentryModuleImpl;->buildInfo:Lio/sentry/android/core/BuildInfoProvider;

    .line 102
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/react/RNSentryModuleImpl;->UTF_8:Ljava/nio/charset/Charset;

    const-wide/16 v0, -0x1

    .line 109
    sput-wide v0, Lio/sentry/react/RNSentryModuleImpl;->lastStartTimestampMs:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    const/16 v1, 0x65

    .line 123
    iput v1, p0, Lio/sentry/react/RNSentryModuleImpl;->profilingTracesHz:I

    .line 125
    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->androidProfiler:Lio/sentry/android/core/AndroidProfiler;

    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lio/sentry/react/RNSentryModuleImpl;->isProguardDebugMetaLoaded:Z

    .line 128
    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->proguardUuid:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->cacheDirPath:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->executorService:Lio/sentry/ISentryExecutorService;

    const-wide/32 v0, 0x500000

    .line 135
    iput-wide v0, p0, Lio/sentry/react/RNSentryModuleImpl;->maxTraceFileSize:J

    .line 140
    invoke-static {p1}, Lio/sentry/react/RNSentryModuleImpl;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 141
    iput-object p1, p0, Lio/sentry/react/RNSentryModuleImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 142
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->createEmitNewFrameEvent()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/react/RNSentryModuleImpl;->emitNewFrameEvent:Ljava/lang/Runnable;

    .line 143
    new-instance p1, Lio/sentry/android/core/SentryAndroidDateProvider;

    invoke-direct {p1}, Lio/sentry/android/core/SentryAndroidDateProvider;-><init>()V

    iput-object p1, p0, Lio/sentry/react/RNSentryModuleImpl;->dateProvider:Lio/sentry/SentryDateProvider;

    return-void
.end method

.method private addPackages(Lio/sentry/SentryEvent;Lio/sentry/protocol/SdkVersion;)V
    .locals 4

    .line 1068
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1069
    const-string v1, "sentry.javascript.react-native"

    .line 1070
    invoke-virtual {v0}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 1072
    invoke-virtual {p2}, Lio/sentry/protocol/SdkVersion;->getPackages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1074
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/protocol/SentryPackage;

    .line 1075
    invoke-virtual {v2}, Lio/sentry/protocol/SentryPackage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lio/sentry/protocol/SentryPackage;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lio/sentry/protocol/SdkVersion;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :cond_0
    invoke-virtual {p2}, Lio/sentry/protocol/SdkVersion;->getIntegrations()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1081
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1082
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SdkVersion;->addIntegration(Ljava/lang/String;)V

    goto :goto_1

    .line 1086
    :cond_1
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setSdk(Lio/sentry/protocol/SdkVersion;)V

    :cond_2
    return-void
.end method

.method private checkAndroidXAvailability()Z
    .locals 1

    .line 1092
    :try_start_0
    const-string v0, "androidx.core.app.FrameMetricsAggregator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private createEmitNewFrameEvent()Ljava/lang/Runnable;
    .locals 1

    .line 155
    new-instance v0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda9;-><init>(Lio/sentry/react/RNSentryModuleImpl;)V

    return-object v0
.end method

.method private getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 151
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    const/4 v0, 0x0

    .line 649
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 651
    :catch_0
    sget-object p0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Error getting package info."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getProfilingTracesDirPath()Ljava/lang/String;
    .locals 3

    .line 824
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->cacheDirPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 825
    new-instance v0, Ljava/io/File;

    .line 826
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "sentry/react"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->cacheDirPath:Ljava/lang/String;

    .line 828
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/react/RNSentryModuleImpl;->cacheDirPath:Ljava/lang/String;

    const-string v2, "profiling_trace"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 830
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProguardUuid()Ljava/lang/String;
    .locals 5

    .line 920
    iget-boolean v0, p0, Lio/sentry/react/RNSentryModuleImpl;->isProguardDebugMetaLoaded:Z

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->proguardUuid:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 923
    iput-boolean v0, p0, Lio/sentry/react/RNSentryModuleImpl;->isProguardDebugMetaLoaded:Z

    .line 924
    new-instance v0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;

    .line 925
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    sget-object v2, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;-><init>(Landroid/content/Context;Lio/sentry/ILogger;)V

    invoke-virtual {v0}, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->loadDebugMeta()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 930
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Properties;

    .line 931
    invoke-static {v2}, Lio/sentry/util/DebugMetaPropertiesApplier;->getProguardUuid(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/react/RNSentryModuleImpl;->proguardUuid:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 933
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Proguard uuid found: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/sentry/react/RNSentryModuleImpl;->proguardUuid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->proguardUuid:Ljava/lang/String;

    return-object v0

    .line 938
    :cond_3
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "No proguard uuid found in debug meta properties file!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method private getReplayOptions(Lcom/facebook/react/bridge/ReadableMap;)Lio/sentry/SentryReplayOptions;
    .locals 8

    .line 350
    new-instance v0, Lio/sentry/protocol/SdkVersion;

    const-string v1, "sentry.javascript.react-native"

    const-string v2, "6.14.0"

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v1, Lio/sentry/SentryReplayOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lio/sentry/SentryReplayOptions;-><init>(ZLio/sentry/protocol/SdkVersion;)V

    .line 358
    const-string v0, "replaysSessionSampleRate"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "replaysOnErrorSampleRate"

    if-nez v3, :cond_0

    .line 359
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    .line 364
    :cond_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 365
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 363
    :goto_0
    invoke-virtual {v1, v0}, Lio/sentry/SentryReplayOptions;->setSessionSampleRate(Ljava/lang/Double;)V

    .line 368
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 367
    :cond_2
    invoke-virtual {v1, v5}, Lio/sentry/SentryReplayOptions;->setOnErrorSampleRate(Ljava/lang/Double;)V

    .line 372
    const-string v0, "mobileReplayOptions"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v1

    .line 375
    :cond_3
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    .line 381
    :cond_4
    const-string v0, "maskAllText"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 382
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v4

    .line 380
    :goto_2
    invoke-virtual {v1, v0}, Lio/sentry/SentryReplayOptions;->setMaskAllText(Z)V

    .line 384
    const-string v0, "maskAllImages"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 385
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v2, v4

    .line 383
    :cond_8
    invoke-virtual {v1, v2}, Lio/sentry/SentryReplayOptions;->setMaskAllImages(Z)V

    .line 388
    const-string v0, "maskAllVectors"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 389
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 391
    :cond_9
    const-string p1, "com.horcrux.svg.SvgView"

    invoke-virtual {v1, p1}, Lio/sentry/SentryReplayOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 394
    :cond_a
    const-class p1, Lio/sentry/react/replay/RNSentryReplayMask;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/sentry/SentryReplayOptions;->setMaskViewContainerClass(Ljava/lang/String;)V

    .line 395
    const-class p1, Lio/sentry/react/replay/RNSentryReplayUnmask;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/sentry/SentryReplayOptions;->setUnmaskViewContainerClass(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getURLFromDSN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1110
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private initFragmentInitialFrameTracking()V
    .locals 4

    .line 162
    new-instance v0, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;

    sget-object v1, Lio/sentry/react/RNSentryModuleImpl;->buildInfo:Lio/sentry/android/core/BuildInfoProvider;

    iget-object v2, p0, Lio/sentry/react/RNSentryModuleImpl;->emitNewFrameEvent:Ljava/lang/Runnable;

    sget-object v3, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/react/RNSentryReactFragmentLifecycleTracer;-><init>(Lio/sentry/android/core/BuildInfoProvider;Ljava/lang/Runnable;Lio/sentry/ILogger;)V

    .line 165
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 170
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    :cond_0
    return-void
.end method

.method private initializeAndroidProfiler()V
    .locals 8

    .line 834
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->executorService:Lio/sentry/ISentryExecutorService;

    if-nez v0, :cond_0

    .line 835
    new-instance v0, Lio/sentry/SentryExecutorService;

    invoke-direct {v0}, Lio/sentry/SentryExecutorService;-><init>()V

    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->executorService:Lio/sentry/ISentryExecutorService;

    .line 837
    :cond_0
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v2

    .line 839
    new-instance v0, Lio/sentry/android/core/AndroidProfiler;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 842
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    long-to-int v1, v3

    iget v3, p0, Lio/sentry/react/RNSentryModuleImpl;->profilingTracesHz:I

    div-int v3, v1, v3

    new-instance v4, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v1, p0, Lio/sentry/react/RNSentryModuleImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object v6, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/react/RNSentryModuleImpl;->buildInfo:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v4, v1, v6, v7}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    iget-object v5, p0, Lio/sentry/react/RNSentryModuleImpl;->executorService:Lio/sentry/ISentryExecutorService;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/sentry/android/core/AndroidProfiler;-><init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ISentryExecutorService;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->androidProfiler:Lio/sentry/android/core/AndroidProfiler;

    return-void
.end method

.method private isFrameMetricsAggregatorAvailable()Z
    .locals 1

    .line 1101
    iget-boolean v0, p0, Lio/sentry/react/RNSentryModuleImpl;->androidXAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReplayEnabled(Lio/sentry/SentryReplayOptions;)Z
    .locals 1

    .line 345
    invoke-virtual {p1}, Lio/sentry/SentryReplayOptions;->getSessionSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1

    .line 346
    invoke-virtual {p1}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic lambda$addBreadcrumb$6(Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/IScope;)V
    .locals 1

    .line 710
    invoke-static {p0}, Lio/sentry/react/RNSentryBreadcrumb;->fromMap(Lcom/facebook/react/bridge/ReadableMap;)Lio/sentry/Breadcrumb;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/IScope;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 712
    invoke-static {p0}, Lio/sentry/react/RNSentryBreadcrumb;->getCurrentScreenFrom(Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 714
    invoke-interface {p1, p0}, Lio/sentry/IScope;->setScreen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$clearBreadcrumbs$7(Lio/sentry/IScope;)V
    .locals 0

    .line 722
    invoke-interface {p0}, Lio/sentry/IScope;->clearBreadcrumbs()V

    return-void
.end method

.method private synthetic lambda$createEmitNewFrameEvent$0()V
    .locals 4

    .line 156
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->dateProvider:Lio/sentry/SentryDateProvider;

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/react/RNSentryTimeToDisplay;->putTimeToInitialDisplayForActiveSpan(Ljava/lang/Double;)V

    return-void
.end method

.method static synthetic lambda$getSentryAndroidOptions$2(Ljava/lang/String;Ljava/lang/String;Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 301
    const-string p3, "url"

    invoke-virtual {p2, p3}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 302
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 303
    :goto_0
    const-string v0, "http"

    invoke-virtual {p2}, Lio/sentry/Breadcrumb;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_1

    .line 304
    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 305
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object p2
.end method

.method private synthetic lambda$getSentryAndroidOptions$3(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0

    .line 317
    invoke-direct {p0, p2}, Lio/sentry/react/RNSentryModuleImpl;->setEventOriginTag(Lio/sentry/SentryEvent;)V

    .line 318
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lio/sentry/react/RNSentryModuleImpl;->addPackages(Lio/sentry/SentryEvent;Lio/sentry/protocol/SdkVersion;)V

    return-object p2
.end method

.method private synthetic lambda$initNativeSdk$1(Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 181
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    invoke-virtual {p0, p2, p1, v0}, Lio/sentry/react/RNSentryModuleImpl;->getSentryAndroidOptions(Lio/sentry/android/core/SentryAndroidOptions;Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/ILogger;)V

    return-void
.end method

.method static synthetic lambda$setContext$9(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lio/sentry/IScope;)V
    .locals 0

    if-nez p0, :cond_0

    .line 763
    invoke-interface {p2, p1}, Lio/sentry/IScope;->removeContexts(Ljava/lang/String;)V

    return-void

    .line 767
    :cond_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p0

    .line 768
    invoke-interface {p2, p1, p0}, Lio/sentry/IScope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setExtra$8(Ljava/lang/String;Ljava/lang/String;Lio/sentry/IScope;)V
    .locals 0

    .line 749
    invoke-interface {p2, p0, p1}, Lio/sentry/IScope;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setTag$10(Ljava/lang/String;Ljava/lang/String;Lio/sentry/IScope;)V
    .locals 0

    .line 775
    invoke-interface {p2, p0, p1}, Lio/sentry/IScope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setUser$5(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/IScope;)V
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 660
    invoke-interface {p2, p0}, Lio/sentry/IScope;->setUser(Lio/sentry/protocol/User;)V

    goto/16 :goto_1

    .line 662
    :cond_0
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    if-eqz p0, :cond_5

    .line 665
    const-string v1, "email"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setEmail(Ljava/lang/String;)V

    .line 669
    :cond_1
    const-string v1, "id"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 670
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    .line 673
    :cond_2
    const-string v1, "username"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 674
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setUsername(Ljava/lang/String;)V

    .line 677
    :cond_3
    const-string v1, "ip_address"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 678
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    .line 681
    :cond_4
    const-string v1, "segment"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 682
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/protocol/User;->setSegment(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_8

    .line 687
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 688
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 689
    :cond_6
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 690
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 695
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 699
    :cond_7
    invoke-virtual {v0, p0}, Lio/sentry/protocol/User;->setData(Ljava/util/Map;)V

    .line 702
    :cond_8
    invoke-interface {p2, v0}, Lio/sentry/IScope;->setUser(Lio/sentry/protocol/User;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$takeScreenshotOnUiThread$4([[BLandroid/app/Activity;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 596
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/react/RNSentryModuleImpl;->buildInfo:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {p1, v0, v1}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->takeScreenshot(Landroid/app/Activity;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)[B

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    .line 597
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 945
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 947
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 949
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 951
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 943
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private setEventEnvironmentTag(Lio/sentry/SentryEvent;Ljava/lang/String;)V
    .locals 2

    .line 1063
    const-string v0, "event.origin"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Lio/sentry/SentryEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v0, "event.environment"

    invoke-virtual {p1, v0, p2}, Lio/sentry/SentryEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setEventOriginTag(Lio/sentry/SentryEvent;)V
    .locals 2

    .line 1047
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1049
    invoke-virtual {v0}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "sentry.java.android.react-native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sentry.native.android.react-native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1051
    :cond_0
    const-string v0, "native"

    invoke-direct {p0, p1, v0}, Lio/sentry/react/RNSentryModuleImpl;->setEventEnvironmentTag(Lio/sentry/SentryEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 1054
    :cond_1
    const-string v0, "java"

    invoke-direct {p0, p1, v0}, Lio/sentry/react/RNSentryModuleImpl;->setEventEnvironmentTag(Lio/sentry/SentryEvent;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static takeScreenshotOnUiThread(Landroid/app/Activity;)[B
    .locals 5

    .line 592
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v1, 0x0

    .line 593
    new-array v2, v1, [B

    filled-new-array {v2}, [[B

    move-result-object v2

    .line 594
    new-instance v3, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2, p0, v0}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda8;-><init>([[BLandroid/app/Activity;Ljava/util/concurrent/CountDownLatch;)V

    .line 600
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 601
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 603
    :cond_0
    invoke-static {v3}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 607
    :goto_0
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    aget-object p0, v2, v1

    return-object p0

    .line 609
    :catch_0
    sget-object p0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Screenshot process was interrupted."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    new-array p0, v1, [B

    return-object p0
.end method


# virtual methods
.method public addBreadcrumb(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 708
    new-instance v0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 3

    .line 406
    sget-object p1, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "addListener of NativeEventEmitter can\'t be used on Android!"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public captureEnvelope(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4

    .line 548
    const-string v0, "hardCrashed"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lio/sentry/vendor/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const/4 v2, 0x1

    .line 552
    :try_start_0
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    .line 551
    :goto_1
    invoke-static {p1, p2}, Lio/sentry/android/core/InternalSentrySdk;->captureEnvelope([BZ)Lio/sentry/protocol/SentryId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 554
    :catchall_0
    sget-object p1, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Error while capturing envelope"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 557
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public captureReplay(ZLcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 530
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/sentry/ReplayController;->captureReplay(Ljava/lang/Boolean;)V

    .line 531
    invoke-virtual {p0}, Lio/sentry/react/RNSentryModuleImpl;->getCurrentReplayId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public captureScreenshot(Lcom/facebook/react/bridge/Promise;)V
    .locals 5

    .line 562
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 564
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "CurrentActivity is null, can\'t capture screenshot."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 569
    :cond_0
    invoke-static {v0}, Lio/sentry/react/RNSentryModuleImpl;->takeScreenshotOnUiThread(Landroid/app/Activity;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 571
    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_1

    .line 577
    :cond_1
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 578
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v4, v0, v2

    .line 579
    invoke-virtual {v1, v4}, Lcom/facebook/react/bridge/WritableNativeArray;->pushInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    :cond_2
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 582
    const-string v2, "contentType"

    const-string v3, "image/png"

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 584
    const-string v1, "filename"

    const-string v2, "screenshot.png"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 587
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 588
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 572
    :cond_3
    :goto_1
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Screenshot is null, screen was not captured."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 1

    .line 720
    new-instance v0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public closeNativeSdk(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 780
    invoke-static {}, Lio/sentry/Sentry;->close()V

    .line 782
    invoke-virtual {p0}, Lio/sentry/react/RNSentryModuleImpl;->disableNativeFramesTracking()V

    const/4 v0, 0x1

    .line 784
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public crash()V
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TEST - Sentry Client Crash (only works in release mode)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public crashedLastRun(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 1042
    invoke-static {}, Lio/sentry/Sentry;->isCrashedLastRun()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public disableNativeFramesTracking()V
    .locals 1

    .line 813
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->isFrameMetricsAggregatorAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0}, Landroidx/core/app/FrameMetricsAggregator;->stop()[Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 815
    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    :cond_0
    return-void
.end method

.method public enableNativeFramesTracking()V
    .locals 5

    .line 788
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->checkAndroidXAvailability()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/react/RNSentryModuleImpl;->androidXAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 791
    new-instance v0, Landroidx/core/app/FrameMetricsAggregator;

    invoke-direct {v0}, Landroidx/core/app/FrameMetricsAggregator;-><init>()V

    iput-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    .line 792
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 794
    iget-object v2, p0, Lio/sentry/react/RNSentryModuleImpl;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 796
    :try_start_0
    invoke-virtual {v2, v0}, Landroidx/core/app/FrameMetricsAggregator;->add(Landroid/app/Activity;)V

    .line 798
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "FrameMetricsAggregator installed."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 802
    :catchall_0
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error adding Activity to frameMetricsAggregator."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 805
    :cond_0
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "currentActivity isn\'t available."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 808
    :cond_1
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "androidx.core\' isn\'t available as a dependency."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public fetchModules(Lcom/facebook/react/bridge/Promise;)V
    .locals 5

    .line 416
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 417
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    const-string v3, "modules.json"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 418
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 419
    new-array v0, v0, [B

    .line 420
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 421
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 422
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lio/sentry/react/RNSentryModuleImpl;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 423
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 417
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 427
    :catchall_2
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Fetching JS Modules failed."

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 425
    :catch_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public fetchNativeAppStart(Lcom/facebook/react/bridge/Promise;)V
    .locals 3

    .line 442
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-static {}, Lio/sentry/android/core/InternalSentrySdk;->getAppStartMeasurement()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    .line 441
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/sentry/react/RNSentryModuleImpl;->fetchNativeAppStart(Lcom/facebook/react/bridge/Promise;Lio/sentry/android/core/performance/AppStartMetrics;Ljava/util/Map;Lio/sentry/ILogger;)V

    return-void
.end method

.method protected fetchNativeAppStart(Lcom/facebook/react/bridge/Promise;Lio/sentry/android/core/performance/AppStartMetrics;Ljava/util/Map;Lio/sentry/ILogger;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/Promise;",
            "Lio/sentry/android/core/performance/AppStartMetrics;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/sentry/ILogger;",
            ")V"
        }
    .end annotation

    .line 450
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->isAppLaunchedInForeground()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 451
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p3, "Invalid app start data: app not launched in foreground."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p4, p2, p3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 452
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 457
    :cond_0
    invoke-static {p3}, Lio/sentry/react/RNSentryMapConverter;->convertToWritable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/facebook/react/bridge/WritableMap;

    .line 459
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v2

    .line 460
    sget-wide v4, Lio/sentry/react/RNSentryModuleImpl;->lastStartTimestampMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 462
    :goto_0
    const-string v4, "has_fetched"

    invoke-interface {p3, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    sget-wide v4, Lio/sentry/react/RNSentryModuleImpl;->lastStartTimestampMs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 465
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "App Start data reported to the RN layer for the first time."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p4, v0, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 467
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "App Start data already fetched from native before."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p4, v0, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 469
    :cond_3
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "App Start data updated, reporting to the RN layer again."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p4, v0, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    :goto_1
    sput-wide v2, Lio/sentry/react/RNSentryModuleImpl;->lastStartTimestampMs:J

    .line 479
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->onAppStartSpansSent()V

    .line 481
    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public fetchNativeDeviceContexts(Lcom/facebook/react/bridge/Promise;)V
    .locals 3

    .line 956
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 957
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 958
    invoke-static {}, Lio/sentry/android/core/InternalSentrySdk;->getCurrentScope()Lio/sentry/IScope;

    move-result-object v2

    .line 959
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/sentry/react/RNSentryModuleImpl;->fetchNativeDeviceContexts(Lcom/facebook/react/bridge/Promise;Lio/sentry/SentryOptions;Landroid/content/Context;Lio/sentry/IScope;)V

    return-void
.end method

.method protected fetchNativeDeviceContexts(Lcom/facebook/react/bridge/Promise;Lio/sentry/SentryOptions;Landroid/content/Context;Lio/sentry/IScope;)V
    .locals 3

    .line 967
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 968
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 972
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p4, :cond_3

    .line 977
    invoke-interface {p4}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 978
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 979
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Breadcrumb;

    .line 980
    const-string v2, "react-native"

    invoke-virtual {v1}, Lio/sentry/Breadcrumb;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 981
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 986
    :cond_3
    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 987
    invoke-static {p3, p2, p4}, Lio/sentry/android/core/InternalSentrySdk;->serializeScope(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/IScope;)Ljava/util/Map;

    move-result-object p2

    .line 988
    invoke-static {p2}, Lio/sentry/react/RNSentryMapConverter;->convertToWritable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 989
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public fetchNativeFrames(Lcom/facebook/react/bridge/Promise;)V
    .locals 10

    .line 486
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->isFrameMetricsAggregatorAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 487
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 494
    :try_start_0
    iget-object v2, p0, Lio/sentry/react/RNSentryModuleImpl;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v2}, Landroidx/core/app/FrameMetricsAggregator;->getMetrics()[Landroid/util/SparseIntArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 497
    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 499
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 500
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 501
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    add-int/2addr v4, v8

    const/16 v9, 0x2bc

    if-le v7, v9, :cond_1

    add-int/2addr v6, v8

    goto :goto_1

    :cond_1
    const/16 v9, 0x10

    if-le v7, v9, :cond_2

    add-int/2addr v5, v8

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v4, v0

    move v5, v4

    move v6, v5

    .line 516
    :cond_4
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 517
    const-string v3, "totalFrames"

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 518
    const-string v3, "slowFrames"

    invoke-interface {v2, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 519
    const-string v3, "frozenFrames"

    invoke-interface {v2, v3, v6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 521
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 523
    :catchall_0
    sget-object v2, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Error fetching native frames."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public fetchNativePackageName()Ljava/lang/String;
    .locals 1

    .line 1005
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public fetchNativeRelease(Lcom/facebook/react/bridge/Promise;)V
    .locals 3

    .line 433
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lio/sentry/react/RNSentryModuleImpl;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lio/sentry/react/RNSentryModuleImpl;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lio/sentry/react/RNSentryModuleImpl;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public fetchNativeSdkInfo(Lcom/facebook/react/bridge/Promise;)V
    .locals 4

    .line 993
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 995
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 997
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 998
    const-string v2, "name"

    invoke-virtual {v0}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v2, "version"

    invoke-virtual {v0}, Lio/sentry/protocol/SdkVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public fetchViewHierarchy(Lcom/facebook/react/bridge/Promise;)V
    .locals 6

    .line 617
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 618
    sget-object v1, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    .line 619
    invoke-static {v0, v1}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/app/Activity;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 621
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Could not get ViewHierarchy."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 626
    :cond_0
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v4

    .line 628
    invoke-static {v4, v1, v0}, Lio/sentry/util/JsonSerializationUtils;->bytesFrom(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/JsonSerializable;)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 630
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Could not serialize ViewHierarchy."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 634
    :cond_1
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 635
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Got empty bytes array after serializing ViewHierarchy."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 640
    :cond_2
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 641
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-byte v4, v0, v3

    .line 642
    invoke-virtual {v1, v4}, Lcom/facebook/react/bridge/WritableNativeArray;->pushInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 644
    :cond_3
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 4

    .line 188
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ApplicationContext is null, using ReactApplicationContext fallback."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCurrentReplayId()Ljava/lang/String;
    .locals 3

    .line 535
    invoke-static {}, Lio/sentry/android/core/InternalSentrySdk;->getCurrentScope()Lio/sentry/IScope;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 540
    :cond_0
    invoke-interface {v0}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 541
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    if-ne v0, v2, :cond_1

    return-object v1

    .line 544
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataFromUri(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7

    const-string v0, "File not found for uri: "

    const/4 v1, 0x0

    .line 1010
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1012
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 1014
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    sget-object v3, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v0, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 1033
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    .line 1020
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    .line 1022
    new-array v3, v3, [B

    .line 1024
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1025
    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1027
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1028
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 1029
    array-length v4, v0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    .line 1030
    invoke-interface {v3, v6}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1032
    :cond_3
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    .line 1033
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 1011
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1036
    sget-object v0, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, p1, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public getNewScreenTimeToDisplay(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 820
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl;->dateProvider:Lio/sentry/SentryDateProvider;

    invoke-static {p1, v0}, Lio/sentry/react/RNSentryTimeToDisplay;->getTimeToDisplay(Lcom/facebook/react/bridge/Promise;Lio/sentry/SentryDateProvider;)V

    return-void
.end method

.method protected getSentryAndroidOptions(Lio/sentry/android/core/SentryAndroidOptions;Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/ILogger;)V
    .locals 7

    .line 199
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    .line 200
    const-string v1, "sentry.java.android.react-native"

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lio/sentry/protocol/SdkVersion;

    const-string v2, "7.22.5"

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SdkVersion;->setName(Ljava/lang/String;)V

    .line 205
    :goto_0
    const-string v1, "npm:@sentry/react-native"

    const-string v2, "6.14.0"

    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/SdkVersion;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lio/sentry/protocol/SdkVersion;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSentryClientName(Ljava/lang/String;)V

    .line 210
    const-string v1, "sentry.native.android.react-native"

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setNativeSdkName(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 213
    const-string v0, "debug"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setDebug(Z)V

    .line 216
    :cond_1
    const-string v0, "dsn"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 217
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "Starting with DSN: \'%s\'"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {p3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_2
    const-string v1, ""

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    .line 224
    :goto_1
    const-string v1, "sampleRate"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 225
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSampleRate(Ljava/lang/Double;)V

    .line 227
    :cond_3
    const-string v1, "sendClientReports"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSendClientReports(Z)V

    .line 230
    :cond_4
    const-string v1, "maxBreadcrumbs"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 231
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setMaxBreadcrumbs(I)V

    .line 233
    :cond_5
    const-string v1, "maxCacheItems"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 234
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setMaxCacheItems(I)V

    .line 236
    :cond_6
    const-string v1, "environment"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 237
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnvironment(Ljava/lang/String;)V

    .line 239
    :cond_7
    const-string v1, "release"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 240
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setRelease(Ljava/lang/String;)V

    .line 242
    :cond_8
    const-string v1, "dist"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 243
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setDist(Ljava/lang/String;)V

    .line 245
    :cond_9
    const-string v1, "enableAutoSessionTracking"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 246
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoSessionTracking(Z)V

    .line 248
    :cond_a
    const-string v1, "sessionTrackingIntervalMillis"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 249
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Lio/sentry/android/core/SentryAndroidOptions;->setSessionTrackingIntervalMillis(J)V

    .line 251
    :cond_b
    const-string v1, "shutdownTimeout"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 252
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Lio/sentry/android/core/SentryAndroidOptions;->setShutdownTimeoutMillis(J)V

    .line 254
    :cond_c
    const-string v1, "enableNdkScopeSync"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 255
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopeSync(Z)V

    .line 257
    :cond_d
    const-string v1, "attachStacktrace"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 258
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachStacktrace(Z)V

    .line 260
    :cond_e
    const-string v1, "attachThreads"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 263
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachThreads(Z)V

    .line 265
    :cond_f
    const-string v1, "attachScreenshot"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 266
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachScreenshot(Z)V

    .line 268
    :cond_10
    const-string v1, "attachViewHierarchy"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 269
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachViewHierarchy(Z)V

    .line 271
    :cond_11
    const-string v1, "sendDefaultPii"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 272
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSendDefaultPii(Z)V

    .line 274
    :cond_12
    const-string v1, "maxQueueSize"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 275
    const-string v1, "maxQueueSize"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setMaxQueueSize(I)V

    .line 277
    :cond_13
    const-string v1, "enableNdk"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 278
    const-string v1, "enableNdk"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdk(Z)V

    .line 280
    :cond_14
    const-string v1, "spotlight"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 281
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->Boolean:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_15

    .line 282
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSpotlight(Z)V

    .line 283
    const-string v1, "defaultSidecarUrl"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSpotlightConnectionUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 284
    :cond_15
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_16

    .line 285
    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSpotlight(Z)V

    .line 286
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSpotlightConnectionUrl(Ljava/lang/String;)V

    .line 290
    :cond_16
    :goto_2
    invoke-direct {p0, p2}, Lio/sentry/react/RNSentryModuleImpl;->getReplayOptions(Lcom/facebook/react/bridge/ReadableMap;)Lio/sentry/SentryReplayOptions;

    move-result-object v1

    .line 291
    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSessionReplay(Lio/sentry/SentryReplayOptions;)V

    .line 292
    invoke-direct {p0, v1}, Lio/sentry/react/RNSentryModuleImpl;->isReplayEnabled(Lio/sentry/SentryReplayOptions;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 293
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v1

    new-instance v2, Lio/sentry/react/RNSentryReplayBreadcrumbConverter;

    invoke-direct {v2}, Lio/sentry/react/RNSentryReplayBreadcrumbConverter;-><init>()V

    invoke-interface {v1, v2}, Lio/sentry/ReplayController;->setBreadcrumbConverter(Lio/sentry/ReplayBreadcrumbConverter;)V

    .line 297
    :cond_17
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/react/RNSentryModuleImpl;->getURLFromDSN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "devServerUrl"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    new-instance v2, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V

    .line 313
    const-class v0, Lcom/facebook/react/common/JavascriptException;

    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addIgnoredExceptionForType(Ljava/lang/Class;)V

    .line 315
    new-instance v0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda3;-><init>(Lio/sentry/react/RNSentryModuleImpl;Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V

    .line 323
    const-string v0, "enableNativeCrashHandling"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "enableNativeCrashHandling"

    .line 324
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    .line 325
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getIntegrations()Ljava/util/List;

    move-result-object p2

    .line 326
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Integration;

    .line 327
    instance-of v2, v1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    if-nez v2, :cond_19

    instance-of v2, v1, Lio/sentry/android/core/AnrIntegration;

    if-nez v2, :cond_19

    instance-of v2, v1, Lio/sentry/android/core/NdkIntegration;

    if-eqz v2, :cond_18

    .line 330
    :cond_19
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 334
    :cond_1a
    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 335
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getIntegrations()Ljava/util/List;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Native Integrations \'%s\'"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 334
    invoke-interface {p3, p2, p1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object p1

    .line 338
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 340
    invoke-virtual {p1, p2}, Lio/sentry/android/core/CurrentActivityHolder;->setActivity(Landroid/app/Activity;)V

    :cond_1b
    return-void
.end method

.method public initNativeReactNavigationNewFrameTracking(Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->initFragmentInitialFrameTracking()V

    return-void
.end method

.method public initNativeSdk(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lio/sentry/react/RNSentryModuleImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda5;-><init>(Lio/sentry/react/RNSentryModuleImpl;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 180
    invoke-static {v0, v1}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    const/4 p1, 0x1

    .line 183
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public popTimeToDisplayFor(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 728
    invoke-static {p1}, Lio/sentry/react/RNSentryTimeToDisplay;->popTimeToDisplayFor(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 730
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public removeListeners(D)V
    .locals 2

    .line 411
    sget-object p1, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "removeListeners of NativeEventEmitter can\'t be used on Android!"

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setActiveSpanId(Ljava/lang/String;)Z
    .locals 0

    .line 735
    invoke-static {p1}, Lio/sentry/react/RNSentryTimeToDisplay;->setActiveSpanId(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setContext(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    if-nez p1, :cond_0

    .line 755
    sget-object p1, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RNSentry.setContext called with null key, can\'t change context."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 760
    :cond_0
    new-instance v0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2, p1}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda10;-><init>(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    new-instance v0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void

    .line 741
    :cond_1
    :goto_0
    sget-object p1, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RNSentry.setExtra called with null key or value, can\'t change extra."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 773
    new-instance v0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public setUser(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 657
    new-instance v0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public startProfiling(Z)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 850
    const-string v0, "started"

    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 851
    iget-object v2, p0, Lio/sentry/react/RNSentryModuleImpl;->androidProfiler:Lio/sentry/android/core/AndroidProfiler;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 852
    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->initializeAndroidProfiler()V

    .line 856
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/hermes/instrumentation/HermesSamplingProfiler;->enable()V

    .line 857
    iget-object p1, p0, Lio/sentry/react/RNSentryModuleImpl;->androidProfiler:Lio/sentry/android/core/AndroidProfiler;

    if-eqz p1, :cond_1

    .line 858
    invoke-virtual {p1}, Lio/sentry/android/core/AndroidProfiler;->start()Lio/sentry/android/core/AndroidProfiler$ProfileStartData;

    :cond_1
    const/4 p1, 0x1

    .line 861
    invoke-interface {v1, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v2, 0x0

    .line 863
    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 864
    const-string v0, "error"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public stopProfiling()Lcom/facebook/react/bridge/WritableMap;
    .locals 10

    const-string v0, "Profile not deleted from:"

    const-string v1, "Profile saved to: "

    .line 870
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isDebug()Z

    move-result v2

    .line 871
    new-instance v3, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v3}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 875
    :try_start_0
    iget-object v6, p0, Lio/sentry/react/RNSentryModuleImpl;->androidProfiler:Lio/sentry/android/core/AndroidProfiler;

    if-eqz v6, :cond_0

    .line 876
    invoke-virtual {v6, v4, v5}, Lio/sentry/android/core/AndroidProfiler;->endAndCollect(ZLjava/util/List;)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    .line 878
    :goto_0
    invoke-static {}, Lcom/facebook/hermes/instrumentation/HermesSamplingProfiler;->disable()V

    .line 880
    const-string v7, "sampling-profiler-trace"

    const-string v8, ".cpuprofile"

    iget-object v9, p0, Lio/sentry/react/RNSentryModuleImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 882
    invoke-virtual {v9}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v9

    .line 881
    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    if-eqz v2, :cond_1

    .line 884
    sget-object v2, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v2, v7, v1, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/hermes/instrumentation/HermesSamplingProfiler;->dumpSampledTraceToFile(Ljava/lang/String;)V

    .line 888
    const-string v1, "profile"

    invoke-direct {p0, v5}, Lio/sentry/react/RNSentryModuleImpl;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    .line 891
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 892
    iget-object v2, v6, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->traceFile:Ljava/io/File;

    .line 893
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-wide v6, p0, Lio/sentry/react/RNSentryModuleImpl;->maxTraceFileSize:J

    invoke-static {v2, v6, v7}, Lio/sentry/util/FileUtils;->readBytesFromFile(Ljava/lang/String;J)[B

    move-result-object v2

    const/4 v6, 0x3

    .line 895
    invoke-static {v2, v6}, Lio/sentry/vendor/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 897
    const-string v6, "sampled_profile"

    invoke-interface {v1, v6, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v2, "android_api_level"

    sget-object v6, Lio/sentry/react/RNSentryModuleImpl;->buildInfo:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v6}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v6

    invoke-interface {v1, v2, v6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 899
    const-string v2, "build_id"

    invoke-direct {p0}, Lio/sentry/react/RNSentryModuleImpl;->getProguardUuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v2, "androidProfile"

    invoke-interface {v3, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    if-eqz v5, :cond_3

    .line 907
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 909
    sget-object v1, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 912
    :catchall_0
    sget-object v1, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 903
    :try_start_2
    const-string v2, "error"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v5, :cond_3

    .line 907
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 909
    sget-object v1, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 912
    :catchall_2
    sget-object v1, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-object v3

    :catchall_3
    move-exception v1

    if-eqz v5, :cond_4

    .line 907
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 909
    sget-object v2, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    .line 912
    :catchall_4
    sget-object v2, Lio/sentry/react/RNSentryModuleImpl;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 915
    :cond_4
    :goto_2
    throw v1
.end method
