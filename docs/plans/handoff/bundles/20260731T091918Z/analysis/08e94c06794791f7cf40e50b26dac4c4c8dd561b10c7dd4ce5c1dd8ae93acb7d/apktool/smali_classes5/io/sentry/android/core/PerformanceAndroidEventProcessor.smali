.class final Lio/sentry/android/core/PerformanceAndroidEventProcessor;
.super Ljava/lang/Object;
.source "PerformanceAndroidEventProcessor.java"

# interfaces
.implements Lio/sentry/EventProcessor;


# static fields
.field private static final APP_METRICS_ACTIVITIES_OP:Ljava/lang/String; = "activity.load"

.field private static final APP_METRICS_APPLICATION_OP:Ljava/lang/String; = "application.load"

.field private static final APP_METRICS_CONTENT_PROVIDER_OP:Ljava/lang/String; = "contentprovider.load"

.field private static final APP_METRICS_ORIGIN:Ljava/lang/String; = "auto.ui"

.field private static final APP_METRICS_PROCESS_INIT_OP:Ljava/lang/String; = "process.load"

.field private static final MAX_PROCESS_INIT_APP_START_DIFF_MS:J = 0x2710L


# instance fields
.field private final activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private sentStartMeasurement:Z


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->sentStartMeasurement:Z

    .line 51
    const-string v0, "SentryAndroidOptions is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 52
    const-string p1, "ActivityFramesTracker is required"

    .line 53
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/ActivityFramesTracker;

    iput-object p1, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    return-void
.end method

.method private attachAppStartSpans(Lio/sentry/android/core/performance/AppStartMetrics;Lio/sentry/protocol/SentryTransaction;)V
    .locals 9

    .line 223
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v0

    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v0, v1, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 231
    :cond_1
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 235
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v1

    .line 236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/protocol/SentrySpan;

    .line 237
    invoke-virtual {v2}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app.start.cold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 238
    invoke-virtual {v2}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app.start.warm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    :cond_3
    invoke-virtual {v2}, Lio/sentry/protocol/SentrySpan;->getSpanId()Lio/sentry/SpanId;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 245
    :goto_0
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v2

    sget-object v3, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v2, v3, :cond_7

    .line 247
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getClassLoadedUptimeMs()J

    move-result-wide v2

    .line 248
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v4

    .line 249
    invoke-virtual {v4}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 250
    invoke-virtual {v4}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v5

    sub-long v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5

    .line 252
    new-instance v5, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v5}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    .line 253
    invoke-virtual {v4}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 254
    invoke-virtual {v4}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lio/sentry/android/core/performance/TimeSpan;->setStartUnixTimeMs(J)V

    .line 256
    invoke-virtual {v5, v2, v3}, Lio/sentry/android/core/performance/TimeSpan;->setStoppedAt(J)V

    .line 257
    const-string v2, "Process Initialization"

    invoke-virtual {v5, v2}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v2

    const-string v3, "process.load"

    .line 261
    invoke-static {v5, v1, v0, v3}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    move-result-object v3

    .line 260
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_5
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getContentProviderOnCreateTimeSpans()Ljava/util/List;

    move-result-object v2

    .line 268
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 269
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/core/performance/TimeSpan;

    .line 270
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v4

    const-string v5, "contentprovider.load"

    .line 272
    invoke-static {v3, v1, v0, v5}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    move-result-object v3

    .line 271
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    :cond_6
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getApplicationOnCreateTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 280
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v3

    const-string v4, "application.load"

    .line 282
    invoke-static {v2, v1, v0, v4}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    move-result-object v2

    .line 281
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_7
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getActivityLifecycleTimeSpans()Ljava/util/List;

    move-result-object p1

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    .line 291
    invoke-virtual {v2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v3

    const-string v4, "activity.load"

    if-eqz v3, :cond_9

    .line 292
    invoke-virtual {v2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 293
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v3

    .line 296
    invoke-virtual {v2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v5

    .line 295
    invoke-static {v5, v1, v0, v4}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    move-result-object v5

    .line 294
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_9
    invoke-virtual {v2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 302
    invoke-virtual {v2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 303
    invoke-virtual {p2}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v3

    .line 306
    invoke-virtual {v2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    .line 305
    invoke-static {v2, v1, v0, v4}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    move-result-object v2

    .line 304
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    return-void
.end method

.method private hasAppStartSpan(Lio/sentry/protocol/SentryTransaction;)Z
    .locals 6

    .line 205
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "app.start.warm"

    const/4 v3, 0x1

    const-string v4, "app.start.cold"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentrySpan;

    .line 207
    invoke-virtual {v1}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    invoke-virtual {v1}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return v3

    .line 213
    :cond_2
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 215
    invoke-virtual {p1}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 216
    invoke-virtual {p1}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_0
    return v3
.end method

.method private static isTimestampWithinSpan(DLio/sentry/protocol/SentrySpan;)Z
    .locals 2

    .line 200
    invoke-virtual {p2}, Lio/sentry/protocol/SentrySpan;->getStartTimestamp()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1

    .line 201
    invoke-virtual {p2}, Lio/sentry/protocol/SentrySpan;->getTimestamp()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/sentry/protocol/SentrySpan;->getTimestamp()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setContributingFlags(Lio/sentry/protocol/SentryTransaction;)V
    .locals 8

    .line 143
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentrySpan;

    .line 144
    const-string v4, "ui.load.initial_display"

    invoke-virtual {v3}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 146
    :cond_1
    const-string v4, "ui.load.full_display"

    invoke-virtual {v3}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    :cond_3
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    return-void

    .line 159
    :cond_4
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentrySpan;

    if-eq v0, v1, :cond_5

    if-ne v0, v2, :cond_6

    goto :goto_1

    .line 167
    :cond_6
    invoke-virtual {v0}, Lio/sentry/protocol/SentrySpan;->getData()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    .line 169
    const-string v6, "thread.name"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 170
    const-string v6, "main"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_3

    :cond_8
    :goto_2
    move v3, v5

    :goto_3
    if-eqz v1, :cond_9

    .line 176
    invoke-virtual {v0}, Lio/sentry/protocol/SentrySpan;->getStartTimestamp()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7, v1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->isTimestampWithinSpan(DLio/sentry/protocol/SentrySpan;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v3, :cond_9

    move v3, v5

    goto :goto_4

    :cond_9
    move v3, v4

    :goto_4
    if-eqz v2, :cond_a

    .line 180
    invoke-virtual {v0}, Lio/sentry/protocol/SentrySpan;->getStartTimestamp()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7, v2}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->isTimestampWithinSpan(DLio/sentry/protocol/SentrySpan;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v4, v5

    :cond_a
    if-nez v3, :cond_b

    if-eqz v4, :cond_5

    .line 183
    :cond_b
    invoke-virtual {v0}, Lio/sentry/protocol/SentrySpan;->getData()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_c

    .line 185
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 186
    invoke-virtual {v0, v6}, Lio/sentry/protocol/SentrySpan;->setData(Ljava/util/Map;)V

    :cond_c
    if-eqz v3, :cond_d

    .line 189
    const-string v0, "ui.contributes_to_ttid"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v4, :cond_5

    .line 192
    const-string v0, "ui.contributes_to_ttfd"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_e
    return-void
.end method

.method private static timeSpanToSentrySpan(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;
    .locals 15

    .line 321
    new-instance v13, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 322
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "thread.id"

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v0, "thread.name"

    const-string v1, "main"

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 325
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ui.contributes_to_ttid"

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "ui.contributes_to_ttfd"

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v14, Lio/sentry/protocol/SentrySpan;

    .line 329
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampSecs()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 330
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestampSecs()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-instance v4, Lio/sentry/SpanId;

    invoke-direct {v4}, Lio/sentry/SpanId;-><init>()V

    .line 335
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getDescription()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v12, 0x0

    const-string v9, "auto.ui"

    move-object v0, v14

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v13}, Lio/sentry/protocol/SentrySpan;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v14
.end method


# virtual methods
.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0

    return-object p1
.end method

.method public declared-synchronized process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 4

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object p2, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 78
    monitor-exit p0

    return-object p1

    .line 81
    :cond_0
    :try_start_1
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object p2

    .line 84
    invoke-direct {p0, p1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->hasAppStartSpan(Lio/sentry/protocol/SentryTransaction;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->shouldSendStartMeasurements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 87
    invoke-virtual {p2, v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getDurationMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 92
    new-instance v2, Lio/sentry/protocol/MeasurementValue;

    long-to-float v0, v0

    .line 94
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v1}, Lio/sentry/MeasurementUnit$Duration;->apiName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v0

    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne v0, v1, :cond_1

    .line 98
    const-string v0, "app_start_cold"

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "app_start_warm"

    .line 101
    :goto_0
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0, p2, p1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->attachAppStartSpans(Lio/sentry/android/core/performance/AppStartMetrics;Lio/sentry/protocol/SentryTransaction;)V

    .line 104
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->onAppStartSpansSent()V

    .line 108
    :cond_2
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v0

    if-nez v0, :cond_3

    .line 110
    new-instance v0, Lio/sentry/protocol/App;

    invoke-direct {v0}, Lio/sentry/protocol/App;-><init>()V

    .line 111
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    .line 114
    :cond_3
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object p2

    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne p2, v1, :cond_4

    const-string p2, "cold"

    goto :goto_1

    :cond_4
    const-string p2, "warm"

    .line 115
    :goto_1
    invoke-virtual {v0, p2}, Lio/sentry/protocol/App;->setStartType(Ljava/lang/String;)V

    .line 118
    :cond_5
    invoke-direct {p0, p1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->setContributingFlags(Lio/sentry/protocol/SentryTransaction;)V

    .line 120
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p2

    .line 121
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ui.load"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    iget-object v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 130
    invoke-virtual {v0, p2}, Lio/sentry/android/core/ActivityFramesTracker;->takeMetrics(Lio/sentry/protocol/SentryId;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 132
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :cond_6
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
