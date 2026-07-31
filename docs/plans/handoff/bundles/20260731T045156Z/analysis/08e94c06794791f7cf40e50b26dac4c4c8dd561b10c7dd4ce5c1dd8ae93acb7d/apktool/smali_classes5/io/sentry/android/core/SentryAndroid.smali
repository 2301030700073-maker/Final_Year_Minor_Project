.class public final Lio/sentry/android/core/SentryAndroid;
.super Ljava/lang/Object;
.source "SentryAndroid.java"


# static fields
.field private static final FRAGMENT_CLASS_NAME:Ljava/lang/String; = "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks"

.field static final SENTRY_FRAGMENT_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.fragment.FragmentLifecycleIntegration"

.field static final SENTRY_REPLAY_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.replay.ReplayIntegration"

.field static final SENTRY_TIMBER_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.timber.SentryTimberIntegration"

.field private static final TIMBER_CLASS_NAME:Ljava/lang/String; = "timber.log.Timber"

.field private static final sdkInitMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/SentryAndroid;->sdkInitMillis:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deduplicateIntegrations(Lio/sentry/SentryOptions;ZZ)V
    .locals 5

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/Integration;

    if-eqz p1, :cond_1

    .line 228
    instance-of v4, v3, Lio/sentry/android/fragment/FragmentLifecycleIntegration;

    if-eqz v4, :cond_1

    .line 229
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_0

    .line 233
    instance-of v4, v3, Lio/sentry/android/timber/SentryTimberIntegration;

    if-eqz v4, :cond_0

    .line 234
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_3

    move p1, p2

    .line 240
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_3

    .line 241
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/Integration;

    .line 242
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 246
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_4

    .line 247
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-ge p2, p1, :cond_4

    .line 248
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/Integration;

    .line 249
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 54
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    invoke-static {p0, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lio/sentry/ILogger;)V
    .locals 1

    .line 64
    new-instance v0, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;)V

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/ILogger;",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lio/sentry/android/core/SentryAndroid;

    monitor-enter v0

    .line 93
    :try_start_0
    const-class v1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 94
    invoke-static {v1}, Lio/sentry/OptionsContainer;->create(Ljava/lang/Class;)Lio/sentry/OptionsContainer;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0, p2}, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;-><init>(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    const/4 p0, 0x1

    .line 93
    invoke-static {v1, v2, p0}, Lio/sentry/Sentry;->init(Lio/sentry/OptionsContainer;Lio/sentry/Sentry$OptionsConfiguration;Z)V

    .line 170
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    .line 171
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 172
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 176
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 177
    new-instance v1, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p0, v1}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 184
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    .line 185
    invoke-interface {p0}, Lio/sentry/IHub;->startSession()V

    .line 188
    :cond_0
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/ReplayController;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 205
    :try_start_1
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 201
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 197
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 191
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            ">;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;)V

    return-void
.end method

.method static synthetic lambda$init$0(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$init$1(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .line 96
    new-instance v1, Lio/sentry/android/core/LoadClass;

    invoke-direct {v1}, Lio/sentry/android/core/LoadClass;-><init>()V

    .line 97
    const-string v2, "timber.log.Timber"

    .line 98
    invoke-virtual {v1, v2, v9}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v2

    .line 99
    const-string v3, "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks"

    .line 100
    invoke-virtual {v1, v3, v9}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 101
    const-string v3, "io.sentry.android.fragment.FragmentLifecycleIntegration"

    .line 103
    invoke-virtual {v1, v3, v9}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v10, v4

    goto :goto_0

    :cond_0
    move v10, v5

    :goto_0
    if-eqz v2, :cond_1

    .line 105
    const-string v2, "io.sentry.android.timber.SentryTimberIntegration"

    .line 107
    invoke-virtual {v1, v2, v9}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v11, v4

    goto :goto_1

    :cond_1
    move v11, v5

    .line 108
    :goto_1
    const-string v2, "io.sentry.android.replay.ReplayIntegration"

    .line 109
    invoke-virtual {v1, v2, v9}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v7

    .line 111
    new-instance v12, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v12, p0}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 112
    new-instance v13, Lio/sentry/android/core/LoadClass;

    invoke-direct {v13}, Lio/sentry/android/core/LoadClass;-><init>()V

    .line 113
    new-instance v14, Lio/sentry/android/core/ActivityFramesTracker;

    invoke-direct {v14, v13, v9}, Lio/sentry/android/core/ActivityFramesTracker;-><init>(Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 116
    invoke-static {v9, v8, p0, v12}, Lio/sentry/android/core/AndroidOptionsInitializer;->loadDefaultAndMetadataOptions(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move v5, v10

    move v6, v11

    .line 122
    invoke-static/range {v0 .. v7}, Lio/sentry/android/core/AndroidOptionsInitializer;->installDefaultIntegrations(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;ZZZ)V

    .line 133
    :try_start_0
    invoke-interface/range {p2 .. p3}, Lio/sentry/Sentry$OptionsConfiguration;->configure(Lio/sentry/SentryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 137
    invoke-virtual/range {p3 .. p3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error in the \'OptionsConfiguration.configure\' callback."

    .line 138
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :goto_2
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 147
    invoke-virtual/range {p3 .. p3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v12}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v1

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 149
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 154
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_3

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 155
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->registerLifecycleCallbacks(Landroid/app/Application;)V

    .line 158
    :cond_3
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    sget-wide v1, Lio/sentry/android/core/SentryAndroid;->sdkInitMillis:J

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 163
    :cond_4
    invoke-static {v9, v8, v12, v13, v14}, Lio/sentry/android/core/AndroidOptionsInitializer;->initializeIntegrationsAndProcessors(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;)V

    .line 166
    invoke-static {v9, v10, v11}, Lio/sentry/android/core/SentryAndroid;->deduplicateIntegrations(Lio/sentry/SentryOptions;ZZ)V

    return-void
.end method

.method static synthetic lambda$init$2(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/sentry/IScope;)V
    .locals 0

    .line 179
    invoke-interface {p1}, Lio/sentry/IScope;->getSession()Lio/sentry/Session;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Lio/sentry/Session;->getStarted()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 181
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
