.class public final Lio/sentry/android/core/InternalSentrySdk;
.super Ljava/lang/Object;
.source "InternalSentrySdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/performance/TimeSpan;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Can not convert not-started TimeSpan to Map for Hybrid SDKs."

    new-array v1, v1, [Ljava/lang/Object;

    .line 250
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Can not convert not-stopped TimeSpan to Map for Hybrid SDKs."

    new-array v1, v1, [Ljava/lang/Object;

    .line 258
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 262
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    const-string v1, "description"

    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "start_timestamp_ms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestampMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "end_timestamp_ms"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static captureEnvelope([BZ)Lio/sentry/protocol/SentryId;
    .locals 13

    .line 159
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    const/4 v2, 0x0

    .line 162
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 163
    :try_start_1
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object p0

    .line 165
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/sentry/IEnvelopeReader;->read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 206
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v2

    .line 170
    :cond_0
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-virtual {v4}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v2

    move v9, v7

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/sentry/SentryEnvelopeItem;

    .line 176
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v10, p0}, Lio/sentry/SentryEnvelopeItem;->getEvent(Lio/sentry/ISerializer;)Lio/sentry/SentryEvent;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 180
    invoke-virtual {v10}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 181
    sget-object v8, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    .line 183
    :cond_2
    invoke-virtual {v10}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v10}, Lio/sentry/SentryEvent;->isErrored()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_3
    move v9, v11

    goto :goto_0

    .line 190
    :cond_4
    invoke-static {v0, v1, v8, v9}, Lio/sentry/android/core/InternalSentrySdk;->updateSession(Lio/sentry/IHub;Lio/sentry/SentryOptions;Lio/sentry/Session$State;Z)Lio/sentry/Session;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 192
    invoke-static {p0, v6}, Lio/sentry/SentryEnvelopeItem;->fromSession(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    move-result-object p0

    .line 193
    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_5

    .line 197
    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMainThreadChecker()Lio/sentry/util/thread/IMainThreadChecker;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/util/thread/IMainThreadChecker;->isMainThread()Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    move v7, v11

    .line 194
    :cond_6
    invoke-static {v1, v7}, Lio/sentry/android/core/InternalSentrySdk;->deleteCurrentSessionFile(Lio/sentry/SentryOptions;Z)V

    if-eqz p1, :cond_7

    .line 199
    invoke-interface {v0}, Lio/sentry/IHub;->startSession()V

    .line 203
    :cond_7
    new-instance p0, Lio/sentry/SentryEnvelope;

    .line 204
    invoke-virtual {v4}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    .line 205
    invoke-interface {v0, p0}, Lio/sentry/IHub;->captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p0

    :catchall_0
    move-exception p0

    .line 162
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    .line 207
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to capture envelope"

    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static deleteCurrentSessionFile(Lio/sentry/SentryOptions;)V
    .locals 3

    .line 290
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Cache dir is not set, not deleting the current session."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Session tracking is disabled, bailing from deleting current session file."

    new-array v1, v1, [Ljava/lang/Object;

    .line 299
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 303
    :cond_1
    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getCurrentSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Failed to delete the current session file."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static deleteCurrentSessionFile(Lio/sentry/SentryOptions;Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 274
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object p1

    new-instance v0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryOptions;)V

    .line 275
    invoke-interface {p1, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 281
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Submission of deletion of the current session file rejected."

    .line 282
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {p0}, Lio/sentry/android/core/InternalSentrySdk;->deleteCurrentSessionFile(Lio/sentry/SentryOptions;)V

    :goto_0
    return-void
.end method

.method public static getAppStartMeasurement()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    new-instance v2, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v2}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    .line 217
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 219
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v3

    .line 218
    invoke-virtual {v2, v3, v4}, Lio/sentry/android/core/performance/TimeSpan;->setStartUnixTimeMs(J)V

    .line 220
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getClassLoadedUptimeMs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    .line 221
    const-string v3, "Process Initialization"

    invoke-virtual {v2, v3}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    .line 223
    invoke-static {v2, v1}, Lio/sentry/android/core/InternalSentrySdk;->addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V

    .line 224
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getApplicationOnCreateTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    invoke-static {v2, v1}, Lio/sentry/android/core/InternalSentrySdk;->addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V

    .line 226
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getContentProviderOnCreateTimeSpans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/core/performance/TimeSpan;

    .line 227
    invoke-static {v3, v1}, Lio/sentry/android/core/InternalSentrySdk;->addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getActivityLifecycleTimeSpans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    .line 231
    invoke-virtual {v3}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v4

    invoke-static {v4, v1}, Lio/sentry/android/core/InternalSentrySdk;->addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V

    .line 232
    invoke-virtual {v3}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    invoke-static {v3, v1}, Lio/sentry/android/core/InternalSentrySdk;->addTimeSpanToSerializedSpans(Lio/sentry/android/core/performance/TimeSpan;Ljava/util/List;)V

    goto :goto_1

    .line 235
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 236
    const-string v3, "spans"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "type"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "app_start_timestamp_ms"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2
.end method

.method public static getCurrentScope()Lio/sentry/IScope;
    .locals 3

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 55
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 56
    invoke-virtual {v1, v2}, Lio/sentry/HubAdapter;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScope;

    return-object v0
.end method

.method static synthetic lambda$deleteCurrentSessionFile$1(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 277
    invoke-static {p0}, Lio/sentry/android/core/InternalSentrySdk;->deleteCurrentSessionFile(Lio/sentry/SentryOptions;)V

    return-void
.end method

.method static synthetic lambda$getCurrentScope$0(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/IScope;)V
    .locals 0

    .line 58
    invoke-interface {p1}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateSession$2(Lio/sentry/Session$State;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/SentryOptions;Lio/sentry/IScope;)V
    .locals 1

    .line 318
    invoke-interface {p4}, Lio/sentry/IScope;->getSession()Lio/sentry/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    .line 320
    invoke-virtual {v0, p0, p3, p1, p3}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 323
    invoke-virtual {v0}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object p0

    sget-object p1, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-ne p0, p1, :cond_0

    .line 324
    invoke-virtual {v0}, Lio/sentry/Session;->end()V

    .line 327
    invoke-interface {p4}, Lio/sentry/IScope;->clearSession()V

    .line 329
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Session is null on updateSession"

    invoke-interface {p0, p1, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static serializeScope(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/IScope;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            "Lio/sentry/IScope;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    .line 84
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 85
    new-instance v2, Lio/sentry/util/MapObjectWriter;

    invoke-direct {v2, v0}, Lio/sentry/util/MapObjectWriter;-><init>(Ljava/util/Map;)V

    .line 87
    invoke-static {p0, p1}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object v3

    const/4 v4, 0x1

    .line 88
    invoke-virtual {v3, v4, v4}, Lio/sentry/android/core/DeviceInfoUtil;->collectDeviceInformation(ZZ)Lio/sentry/protocol/Device;

    move-result-object v4

    .line 89
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    .line 90
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v4

    invoke-virtual {v3}, Lio/sentry/android/core/DeviceInfoUtil;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v3

    invoke-virtual {v4, v3}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    .line 93
    invoke-interface {p2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v3

    if-nez v3, :cond_1

    .line 95
    new-instance v3, Lio/sentry/protocol/User;

    invoke-direct {v3}, Lio/sentry/protocol/User;-><init>()V

    .line 96
    invoke-interface {p2, v3}, Lio/sentry/IScope;->setUser(Lio/sentry/protocol/User;)V

    .line 98
    :cond_1
    invoke-virtual {v3}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 100
    :try_start_1
    invoke-static {p0}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 102
    :try_start_2
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Could not retrieve installation ID"

    invoke-interface {v1, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :cond_2
    :goto_0
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v3

    if-nez v3, :cond_3

    .line 109
    new-instance v3, Lio/sentry/protocol/App;

    invoke-direct {v3}, Lio/sentry/protocol/App;-><init>()V

    .line 111
    :cond_3
    invoke-static {p0}, Lio/sentry/android/core/ContextUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/protocol/App;->setAppName(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v4

    invoke-virtual {v4, p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    invoke-virtual {v4}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/DateUtils;->toUtilDate(Lio/sentry/SentryDate;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/protocol/App;->setAppStartTime(Ljava/util/Date;)V

    .line 119
    :cond_4
    new-instance v4, Lio/sentry/android/core/BuildInfoProvider;

    .line 120
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 123
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    const/16 v6, 0x1000

    .line 122
    invoke-static {p0, v6, v5, v4}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 125
    invoke-static {p0, v4, v3}, Lio/sentry/android/core/ContextUtils;->setAppPackageInfo(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/protocol/App;)V

    .line 127
    :cond_5
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p0

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    .line 129
    const-string p0, "user"

    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 130
    const-string p0, "contexts"

    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 131
    const-string p0, "tags"

    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 132
    const-string p0, "extras"

    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 133
    const-string p0, "fingerprint"

    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getFingerprint()Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 134
    const-string p0, "level"

    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 135
    const-string p0, "breadcrumbs"

    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p0, v1, p2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 137
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Could not serialize scope."

    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private static updateSession(Lio/sentry/IHub;Lio/sentry/SentryOptions;Lio/sentry/Session$State;Z)Lio/sentry/Session;
    .locals 2

    .line 315
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 316
    new-instance v1, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p3, v0, p1}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda2;-><init>(Lio/sentry/Session$State;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/SentryOptions;)V

    invoke-interface {p0, v1}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 335
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/Session;

    return-object p0
.end method
