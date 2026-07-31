.class final Lio/sentry/android/core/ManifestMetadataReader;
.super Ljava/lang/Object;
.source "ManifestMetadataReader.java"


# static fields
.field static final ANR_ATTACH_THREAD_DUMPS:Ljava/lang/String; = "io.sentry.anr.attach-thread-dumps"

.field static final ANR_ENABLE:Ljava/lang/String; = "io.sentry.anr.enable"

.field static final ANR_REPORT_DEBUG:Ljava/lang/String; = "io.sentry.anr.report-debug"

.field static final ANR_TIMEOUT_INTERVAL_MILLIS:Ljava/lang/String; = "io.sentry.anr.timeout-interval-millis"

.field static final ATTACH_SCREENSHOT:Ljava/lang/String; = "io.sentry.attach-screenshot"

.field static final ATTACH_THREADS:Ljava/lang/String; = "io.sentry.attach-threads"

.field static final ATTACH_VIEW_HIERARCHY:Ljava/lang/String; = "io.sentry.attach-view-hierarchy"

.field static final AUTO_INIT:Ljava/lang/String; = "io.sentry.auto-init"

.field static final AUTO_SESSION_TRACKING_ENABLE:Ljava/lang/String; = "io.sentry.auto-session-tracking.enable"

.field static final BREADCRUMBS_ACTIVITY_LIFECYCLE_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.activity-lifecycle"

.field static final BREADCRUMBS_APP_COMPONENTS_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.app-components"

.field static final BREADCRUMBS_APP_LIFECYCLE_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.app-lifecycle"

.field static final BREADCRUMBS_NETWORK_EVENTS_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.network-events"

.field static final BREADCRUMBS_SYSTEM_EVENTS_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.system-events"

.field static final BREADCRUMBS_USER_INTERACTION_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.user-interaction"

.field static final CLIENT_REPORTS_ENABLE:Ljava/lang/String; = "io.sentry.send-client-reports"

.field static final COLLECT_ADDITIONAL_CONTEXT:Ljava/lang/String; = "io.sentry.additional-context"

.field static final DEBUG:Ljava/lang/String; = "io.sentry.debug"

.field static final DEBUG_LEVEL:Ljava/lang/String; = "io.sentry.debug.level"

.field static final DSN:Ljava/lang/String; = "io.sentry.dsn"

.field static final ENABLE_APP_START_PROFILING:Ljava/lang/String; = "io.sentry.profiling.enable-app-start"

.field static final ENABLE_METRICS:Ljava/lang/String; = "io.sentry.enable-metrics"

.field static final ENABLE_PERFORMANCE_V2:Ljava/lang/String; = "io.sentry.performance-v2.enable"

.field static final ENABLE_ROOT_CHECK:Ljava/lang/String; = "io.sentry.enable-root-check"

.field static final ENABLE_SCOPE_PERSISTENCE:Ljava/lang/String; = "io.sentry.enable-scope-persistence"

.field static final ENABLE_SENTRY:Ljava/lang/String; = "io.sentry.enabled"

.field static final ENVIRONMENT:Ljava/lang/String; = "io.sentry.environment"

.field static final IDLE_TIMEOUT:Ljava/lang/String; = "io.sentry.traces.idle-timeout"

.field static final MAX_BREADCRUMBS:Ljava/lang/String; = "io.sentry.max-breadcrumbs"

.field static final NDK_ENABLE:Ljava/lang/String; = "io.sentry.ndk.enable"

.field static final NDK_SCOPE_SYNC_ENABLE:Ljava/lang/String; = "io.sentry.ndk.scope-sync.enable"

.field static final PERFORM_FRAMES_TRACKING:Ljava/lang/String; = "io.sentry.traces.frames-tracking"

.field static final PROFILES_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.traces.profiling.sample-rate"

.field static final PROGUARD_UUID:Ljava/lang/String; = "io.sentry.proguard-uuid"

.field static final RELEASE:Ljava/lang/String; = "io.sentry.release"

.field static final REPLAYS_ERROR_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.session-replay.on-error-sample-rate"

.field static final REPLAYS_MASK_ALL_IMAGES:Ljava/lang/String; = "io.sentry.session-replay.mask-all-images"

.field static final REPLAYS_MASK_ALL_TEXT:Ljava/lang/String; = "io.sentry.session-replay.mask-all-text"

.field static final REPLAYS_SESSION_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.session-replay.session-sample-rate"

.field static final SAMPLE_RATE:Ljava/lang/String; = "io.sentry.sample-rate"

.field static final SDK_NAME:Ljava/lang/String; = "io.sentry.sdk.name"

.field static final SDK_VERSION:Ljava/lang/String; = "io.sentry.sdk.version"

.field static final SEND_DEFAULT_PII:Ljava/lang/String; = "io.sentry.send-default-pii"

.field static final SEND_MODULES:Ljava/lang/String; = "io.sentry.send-modules"

.field static final SENTRY_GRADLE_PLUGIN_INTEGRATIONS:Ljava/lang/String; = "io.sentry.gradle-plugin-integrations"

.field static final SESSION_TRACKING_ENABLE:Ljava/lang/String; = "io.sentry.session-tracking.enable"

.field static final SESSION_TRACKING_TIMEOUT_INTERVAL_MILLIS:Ljava/lang/String; = "io.sentry.session-tracking.timeout-interval-millis"

.field static final TRACES_ACTIVITY_AUTO_FINISH_ENABLE:Ljava/lang/String; = "io.sentry.traces.activity.auto-finish.enable"

.field static final TRACES_ACTIVITY_ENABLE:Ljava/lang/String; = "io.sentry.traces.activity.enable"

.field static final TRACES_PROFILING_ENABLE:Ljava/lang/String; = "io.sentry.traces.profiling.enable"

.field static final TRACES_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.traces.sample-rate"

.field static final TRACES_UI_ENABLE:Ljava/lang/String; = "io.sentry.traces.user-interaction.enable"

.field static final TRACE_PROPAGATION_TARGETS:Ljava/lang/String; = "io.sentry.traces.trace-propagation-targets"

.field static final TRACE_SAMPLING:Ljava/lang/String; = "io.sentry.traces.trace-sampling"

.field static final TRACING_ENABLE:Ljava/lang/String; = "io.sentry.traces.enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final TRACING_ORIGINS:Ljava/lang/String; = "io.sentry.traces.tracing-origins"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final TTFD_ENABLE:Ljava/lang/String; = "io.sentry.traces.time-to-full-display.enable"

.field static final UNCAUGHT_EXCEPTION_HANDLER_ENABLE:Ljava/lang/String; = "io.sentry.uncaught-exception-handler.enable"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMetadata(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 11

    .line 130
    const-string v0, ""

    const-string v1, "io.sentry.traces.trace-propagation-targets"

    const-string v2, "The application context is required."

    invoke-static {p0, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    const-string v2, "The options object is required."

    invoke-static {p1, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lio/sentry/android/core/ManifestMetadataReader;->getMetadata(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/os/Bundle;

    move-result-object p0

    .line 135
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p0, :cond_12

    .line 138
    const-string v3, "io.sentry.debug"

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isDebug()Z

    move-result v4

    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setDebug(Z)V

    .line 140
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const-string v3, "io.sentry.debug.level"

    .line 146
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getDiagnosticLevel()Lio/sentry/SentryLevel;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryLevel;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 148
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/sentry/SentryLevel;->valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setDiagnosticLevel(Lio/sentry/SentryLevel;)V

    .line 152
    :cond_0
    const-string v3, "io.sentry.anr.enable"

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v4

    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    .line 155
    const-string v3, "io.sentry.session-tracking.enable"

    .line 157
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoSessionTracking()Z

    move-result v4

    .line 156
    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 160
    const-string v4, "io.sentry.auto-session-tracking.enable"

    .line 161
    invoke-static {p0, p2, v4, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 160
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoSessionTracking(Z)V

    .line 163
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-nez v3, :cond_1

    .line 164
    const-string v3, "io.sentry.sample-rate"

    invoke-static {p0, p2, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, v4

    if-eqz v6, :cond_1

    .line 166
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setSampleRate(Ljava/lang/Double;)V

    .line 170
    :cond_1
    const-string v3, "io.sentry.anr.report-debug"

    .line 171
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 170
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrReportInDebug(Z)V

    .line 173
    const-string v3, "io.sentry.anr.timeout-interval-millis"

    .line 178
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v6

    .line 174
    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v6

    .line 173
    invoke-virtual {p1, v6, v7}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrTimeoutIntervalMillis(J)V

    .line 180
    const-string v3, "io.sentry.anr.attach-thread-dumps"

    .line 181
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachAnrThreadDump()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 180
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachAnrThreadDump(Z)V

    .line 183
    const-string v3, "io.sentry.dsn"

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getDsn()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    const-string v6, "io.sentry.enabled"

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnabled()Z

    move-result v7

    invoke-static {p0, p2, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_2

    .line 186
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_4

    .line 194
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v9, "DSN is required. Use empty string to disable SDK."

    new-array v10, v2, [Ljava/lang/Object;

    .line 195
    invoke-interface {v7, v8, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v9, "Sentry enabled flag set to false or DSN is empty: disabling sentry-android"

    new-array v10, v2, [Ljava/lang/Object;

    .line 189
    invoke-interface {v7, v8, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_4
    :goto_1
    invoke-virtual {p1, v6}, Lio/sentry/android/core/SentryAndroidOptions;->setEnabled(Z)V

    .line 199
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    .line 201
    const-string v3, "io.sentry.ndk.enable"

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdk(Z)V

    .line 203
    const-string v3, "io.sentry.ndk.scope-sync.enable"

    .line 204
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScopeSync()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 203
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopeSync(Z)V

    .line 206
    const-string v3, "io.sentry.release"

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getRelease()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setRelease(Ljava/lang/String;)V

    .line 208
    const-string v3, "io.sentry.environment"

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnvironment(Ljava/lang/String;)V

    .line 210
    const-string v3, "io.sentry.session-tracking.timeout-interval-millis"

    .line 215
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionTrackingIntervalMillis()J

    move-result-wide v6

    .line 211
    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v6

    .line 210
    invoke-virtual {p1, v6, v7}, Lio/sentry/android/core/SentryAndroidOptions;->setSessionTrackingIntervalMillis(J)V

    .line 217
    const-string v3, "io.sentry.max-breadcrumbs"

    .line 218
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getMaxBreadcrumbs()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v3, v6

    .line 217
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setMaxBreadcrumbs(I)V

    .line 220
    const-string v3, "io.sentry.breadcrumbs.activity-lifecycle"

    .line 225
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    move-result v6

    .line 221
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 220
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleBreadcrumbs(Z)V

    .line 227
    const-string v3, "io.sentry.breadcrumbs.app-lifecycle"

    .line 232
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    move-result v6

    .line 228
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 227
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppLifecycleBreadcrumbs(Z)V

    .line 234
    const-string v3, "io.sentry.breadcrumbs.system-events"

    .line 239
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v6

    .line 235
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 234
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    .line 241
    const-string v3, "io.sentry.breadcrumbs.app-components"

    .line 246
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result v6

    .line 242
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 241
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    .line 248
    const-string v3, "io.sentry.breadcrumbs.user-interaction"

    .line 253
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionBreadcrumbs()Z

    move-result v6

    .line 249
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 248
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUserInteractionBreadcrumbs(Z)V

    .line 255
    const-string v3, "io.sentry.breadcrumbs.network-events"

    .line 260
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    move-result v6

    .line 256
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 255
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNetworkEventBreadcrumbs(Z)V

    .line 262
    const-string v3, "io.sentry.uncaught-exception-handler.enable"

    .line 267
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUncaughtExceptionHandler()Z

    move-result v6

    .line 263
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 262
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUncaughtExceptionHandler(Z)V

    .line 269
    const-string v3, "io.sentry.attach-threads"

    .line 270
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachThreads()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 269
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachThreads(Z)V

    .line 272
    const-string v3, "io.sentry.attach-screenshot"

    .line 273
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 272
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachScreenshot(Z)V

    .line 275
    const-string v3, "io.sentry.attach-view-hierarchy"

    .line 276
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 275
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachViewHierarchy(Z)V

    .line 278
    const-string v3, "io.sentry.send-client-reports"

    .line 279
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isSendClientReports()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 278
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setSendClientReports(Z)V

    .line 281
    const-string v3, "io.sentry.additional-context"

    .line 286
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    move-result v6

    .line 282
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 281
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setCollectAdditionalContext(Z)V

    .line 288
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getEnableTracing()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_5

    .line 289
    const-string v3, "io.sentry.traces.enable"

    const/4 v6, 0x0

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBoolNullable(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableTracing(Ljava/lang/Boolean;)V

    .line 292
    :cond_5
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_6

    .line 293
    const-string v3, "io.sentry.traces.sample-rate"

    invoke-static {p0, p2, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 294
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, v4

    if-eqz v6, :cond_6

    .line 295
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 299
    :cond_6
    const-string v3, "io.sentry.traces.trace-sampling"

    .line 300
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isTraceSampling()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 299
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setTraceSampling(Z)V

    .line 302
    const-string v3, "io.sentry.traces.activity.enable"

    .line 307
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    move-result v6

    .line 303
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 302
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoActivityLifecycleTracing(Z)V

    .line 309
    const-string v3, "io.sentry.traces.activity.auto-finish.enable"

    .line 314
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    move-result v6

    .line 310
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 309
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleTracingAutoFinish(Z)V

    .line 316
    const-string v3, "io.sentry.traces.profiling.enable"

    .line 317
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isProfilingEnabled()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 316
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setProfilingEnabled(Z)V

    .line 319
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_7

    .line 320
    const-string v3, "io.sentry.traces.profiling.sample-rate"

    invoke-static {p0, p2, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 321
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, v4

    if-eqz v6, :cond_7

    .line 322
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 326
    :cond_7
    const-string v3, "io.sentry.traces.user-interaction.enable"

    .line 327
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionTracing()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 326
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUserInteractionTracing(Z)V

    .line 329
    const-string v3, "io.sentry.traces.time-to-full-display.enable"

    .line 330
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableTimeToFullDisplayTracing()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 329
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableTimeToFullDisplayTracing(Z)V

    .line 332
    const-string v3, "io.sentry.traces.idle-timeout"

    const-wide/16 v6, -0x1

    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-eqz v3, :cond_8

    .line 334
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 339
    :cond_8
    invoke-static {p0, p2, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 342
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "io.sentry.traces.tracing-origins"

    if-nez v6, :cond_a

    if-eqz v3, :cond_9

    .line 343
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 344
    :cond_9
    invoke-static {p0, p2, v7}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 347
    :cond_a
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 348
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    if-nez v3, :cond_c

    .line 350
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setTracePropagationTargets(Ljava/util/List;)V

    goto :goto_2

    :cond_c
    if-eqz v3, :cond_d

    .line 352
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setTracePropagationTargets(Ljava/util/List;)V

    .line 355
    :cond_d
    :goto_2
    const-string v1, "io.sentry.traces.frames-tracking"

    const/4 v3, 0x1

    invoke-static {p0, p2, v1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableFramesTracking(Z)V

    .line 357
    const-string v1, "io.sentry.proguard-uuid"

    .line 358
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v1, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v1

    if-nez v1, :cond_e

    .line 363
    new-instance v1, Lio/sentry/protocol/SdkVersion;

    invoke-direct {v1, v0, v0}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_e
    const-string v0, "io.sentry.sdk.name"

    invoke-virtual {v1}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v0, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readStringNotNull(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/SdkVersion;->setName(Ljava/lang/String;)V

    .line 366
    const-string v0, "io.sentry.sdk.version"

    invoke-virtual {v1}, Lio/sentry/protocol/SdkVersion;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v0, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readStringNotNull(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/SdkVersion;->setVersion(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 369
    const-string v0, "io.sentry.send-default-pii"

    .line 370
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isSendDefaultPii()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 369
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSendDefaultPii(Z)V

    .line 374
    const-string v0, "io.sentry.gradle-plugin-integrations"

    .line 375
    invoke-static {p0, p2, v0}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 377
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v6

    invoke-virtual {v6, v1}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    goto :goto_3

    .line 382
    :cond_f
    const-string v0, "io.sentry.enable-root-check"

    .line 383
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableRootCheck()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 382
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableRootCheck(Z)V

    .line 385
    const-string v0, "io.sentry.send-modules"

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isSendModules()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSendModules(Z)V

    .line 387
    const-string v0, "io.sentry.performance-v2.enable"

    .line 388
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 387
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnablePerformanceV2(Z)V

    .line 390
    const-string v0, "io.sentry.profiling.enable-app-start"

    .line 392
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppStartProfiling()Z

    move-result v1

    .line 391
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 390
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppStartProfiling(Z)V

    .line 394
    const-string v0, "io.sentry.enable-scope-persistence"

    .line 396
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScopePersistence()Z

    move-result v1

    .line 395
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 394
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopePersistence(Z)V

    .line 398
    const-string v0, "io.sentry.enable-metrics"

    .line 399
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableMetrics()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 398
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableMetrics(Z)V

    .line 401
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getSessionSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_10

    .line 402
    const-string v0, "io.sentry.session-replay.session-sample-rate"

    .line 403
    invoke-static {p0, p2, v0}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_10

    .line 405
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/SentryReplayOptions;->setSessionSampleRate(Ljava/lang/Double;)V

    .line 409
    :cond_10
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_11

    .line 410
    const-string v0, "io.sentry.session-replay.on-error-sample-rate"

    invoke-static {p0, p2, v0}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_11

    .line 412
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/SentryReplayOptions;->setOnErrorSampleRate(Ljava/lang/Double;)V

    .line 417
    :cond_11
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    const-string v1, "io.sentry.session-replay.mask-all-text"

    .line 418
    invoke-static {p0, p2, v1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryReplayOptions;->setMaskAllText(Z)V

    .line 421
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    const-string v1, "io.sentry.session-replay.mask-all-images"

    .line 422
    invoke-static {p0, p2, v1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lio/sentry/SentryReplayOptions;->setMaskAllImages(Z)V

    .line 426
    :cond_12
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Retrieving configuration from AndroidManifest.xml"

    new-array v1, v2, [Ljava/lang/Object;

    .line 427
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 430
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed to read configuration from android manifest metadata."

    .line 431
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private static getMetadata(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/os/Bundle;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    new-instance p2, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {p2, p1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 549
    :goto_0
    invoke-static {p0, p2}, Lio/sentry/android/core/ContextUtils;->getApplicationInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 551
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method static isAutoInit(Landroid/content/Context;Lio/sentry/ILogger;)Z
    .locals 3

    .line 524
    const-string v0, "The application context is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 528
    :try_start_0
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->getMetadata(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 530
    const-string v0, "io.sentry.auto-init"

    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 533
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed to read auto-init from android manifest metadata."

    invoke-interface {p1, v0, v2, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private static readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z
    .locals 1

    .line 441
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 442
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private static readBoolNullable(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    .line 452
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 454
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 455
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 458
    :cond_1
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " used default "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3
.end method

.method private static readDouble(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    .line 497
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    .line 499
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    .line 501
    :cond_0
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " read: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static readList(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lio/sentry/ILogger;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 485
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 486
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " read: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, p2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 488
    const-string p1, ","

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static readLong(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J
    .locals 1

    long-to-int p3, p3

    .line 511
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long p3, p0

    .line 512
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide p3
.end method

.method private static readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 468
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 469
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static readStringNotNull(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 478
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 479
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method
