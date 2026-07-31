.class final Lio/sentry/android/core/DefaultAndroidEventProcessor;
.super Ljava/lang/Object;
.source "DefaultAndroidEventProcessor.java"

# interfaces
.implements Lio/sentry/EventProcessor;


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field final context:Landroid/content/Context;

.field private final deviceInfoUtil:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lio/sentry/android/core/DeviceInfoUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "The application context is required."

    .line 51
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    .line 53
    const-string p1, "The BuildInfoProvider is required."

    .line 54
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 55
    const-string p1, "The options object is required."

    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 61
    new-instance p2, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/DefaultAndroidEventProcessor;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 62
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    .line 63
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private static fixExceptionOrder(Lio/sentry/SentryEvent;)V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 100
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 101
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryException;

    .line 102
    const-string v1, "java.lang"

    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getStacktrace()Lio/sentry/protocol/SentryStackTrace;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Lio/sentry/protocol/SentryStackTrace;->getFrames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentryStackFrame;

    .line 108
    const-string v2, "com.android.internal.os.RuntimeInit$MethodAndArgsCaller"

    .line 109
    invoke-virtual {v1}, Lio/sentry/protocol/SentryStackFrame;->getModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private mergeOS(Lio/sentry/SentryBaseEvent;)V
    .locals 5

    .line 181
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-virtual {v1}, Lio/sentry/android/core/DeviceInfoUtil;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v1

    .line 185
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 187
    iget-object v2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to retrieve os system"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Lio/sentry/protocol/OperatingSystem;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "os_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 196
    :cond_0
    const-string v1, "os_1"

    .line 198
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private mergeUser(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 149
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    .line 152
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 156
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 157
    iget-object p1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    invoke-static {p1}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    .line 159
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isSendDefaultPii()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 160
    const-string p1, "{{auto}}"

    invoke-virtual {v0, p1}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V
    .locals 1

    .line 205
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lio/sentry/protocol/App;

    invoke-direct {v0}, Lio/sentry/protocol/App;-><init>()V

    .line 209
    :cond_0
    invoke-direct {p0, v0, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setAppExtras(Lio/sentry/protocol/App;Lio/sentry/Hint;)V

    .line 210
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setPackageInfo(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/App;)V

    .line 211
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    return-void
.end method

.method private setAppExtras(Lio/sentry/protocol/App;Lio/sentry/Hint;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/sentry/android/core/ContextUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/App;->setAppName(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/DateUtils;->toUtilDate(Lio/sentry/SentryDate;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/App;->setAppStartTime(Ljava/util/Date;)V

    .line 261
    :cond_0
    invoke-static {p2}, Lio/sentry/util/HintUtils;->isFromHybridSdk(Lio/sentry/Hint;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lio/sentry/protocol/App;->getInForeground()Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_1

    .line 264
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/android/core/AppState;->isInBackground()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 266
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/protocol/App;->setInForeground(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method private setCommons(Lio/sentry/SentryBaseEvent;ZZ)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->mergeUser(Lio/sentry/SentryBaseEvent;)V

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setDevice(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 130
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V

    return-void
.end method

.method private setDevice(Lio/sentry/SentryBaseEvent;ZZ)V
    .locals 2

    .line 168
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    .line 172
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-virtual {v1, p2, p3}, Lio/sentry/android/core/DeviceInfoUtil;->collectDeviceInformation(ZZ)Lio/sentry/protocol/Device;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 174
    iget-object p3, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to retrieve device info"

    invoke-interface {p3, v0, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    :goto_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->mergeOS(Lio/sentry/SentryBaseEvent;)V

    :cond_0
    return-void
.end method

.method private setDist(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)V
    .locals 1

    .line 247
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p1, p2}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPackageInfo(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/App;)V
    .locals 4

    .line 235
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 237
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    const/16 v3, 0x1000

    .line 236
    invoke-static {v0, v3, v1, v2}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v0, v1}, Lio/sentry/android/core/ContextUtils;->getVersionCode(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-direct {p0, p1, v1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setDist(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/ContextUtils;->setAppPackageInfo(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/protocol/App;)V

    :cond_0
    return-void
.end method

.method private setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 284
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-virtual {v0}, Lio/sentry/android/core/DeviceInfoUtil;->getSideLoadedInfo()Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->asTags()Ljava/util/Map;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 292
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting side loaded info."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private setThreads(Lio/sentry/SentryEvent;Lio/sentry/Hint;)V
    .locals 3

    .line 215
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 216
    invoke-static {p2}, Lio/sentry/util/HintUtils;->isFromHybridSdk(Lio/sentry/Hint;)Z

    move-result p2

    .line 218
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryThread;

    .line 219
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->isMainThread(Lio/sentry/protocol/SentryThread;)Z

    move-result v1

    .line 222
    invoke-virtual {v0}, Lio/sentry/protocol/SentryThread;->isCurrent()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    .line 223
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryThread;->setCurrent(Ljava/lang/Boolean;)V

    :cond_1
    if-nez p2, :cond_0

    .line 227
    invoke-virtual {v0}, Lio/sentry/protocol/SentryThread;->isMain()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 228
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setMain(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z
    .locals 2

    .line 135
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_0
    iget-object p2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 139
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 143
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 140
    const-string v1, "Event was cached so not applying data relevant to the current app execution/version: %s"

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getDefaultUser(Landroid/content/Context;)Lio/sentry/protocol/User;
    .locals 1

    .line 277
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    .line 278
    invoke-static {p1}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    return-object v0
.end method

.method synthetic lambda$new$0$io-sentry-android-core-DefaultAndroidEventProcessor(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object p1

    return-object p1
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    .line 74
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setThreads(Lio/sentry/SentryEvent;Lio/sentry/Hint;)V

    :cond_0
    const/4 p2, 0x1

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 79
    invoke-static {p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->fixExceptionOrder(Lio/sentry/SentryEvent;)V

    return-object p1
.end method

.method public process(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;
    .locals 1

    .line 313
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    :cond_0
    const/4 p2, 0x0

    .line 318
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;ZZ)V

    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 1

    .line 299
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    :cond_0
    const/4 p2, 0x0

    .line 305
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;ZZ)V

    return-object p1
.end method
