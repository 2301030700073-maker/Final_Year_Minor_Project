.class public final Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "AppComponentsBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final context:Landroid/content/Context;

.field private hub:Lio/sentry/IHub;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Context is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    return-void
.end method

.method private captureConfigurationChangedBreadcrumb(JLandroid/content/res/Configuration;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 137
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lio/sentry/android/core/internal/util/DeviceOrientations;->getOrientation(I)Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lio/sentry/protocol/Device$DeviceOrientation;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_0
    const-string v0, "undefined"

    .line 146
    :goto_0
    new-instance v1, Lio/sentry/Breadcrumb;

    invoke-direct {v1, p1, p2}, Lio/sentry/Breadcrumb;-><init>(J)V

    .line 147
    const-string p1, "navigation"

    invoke-virtual {v1, p1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 148
    const-string p1, "device.orientation"

    invoke-virtual {v1, p1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 149
    const-string p1, "position"

    invoke-virtual {v1, p1, v0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v1, p1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 152
    new-instance p1, Lio/sentry/Hint;

    invoke-direct {p1}, Lio/sentry/Hint;-><init>()V

    .line 153
    const-string p2, "android:configuration"

    invoke-virtual {p1, p2, p3}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    iget-object p2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    invoke-interface {p2, v1, p1}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    :cond_1
    return-void
.end method

.method private captureLowMemoryBreadcrumb(JLjava/lang/Integer;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0, p1, p2}, Lio/sentry/Breadcrumb;-><init>(J)V

    if-eqz p3, :cond_1

    .line 118
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x28

    if-ge p1, p2, :cond_0

    return-void

    .line 121
    :cond_0
    const-string p1, "level"

    invoke-virtual {v0, p1, p3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    :cond_1
    const-string p1, "system"

    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 125
    const-string p1, "device.event"

    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 126
    const-string p1, "Low memory"

    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 127
    const-string p1, "action"

    const-string p2, "LOW_MEMORY"

    invoke-virtual {v0, p1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 129
    iget-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    invoke-interface {p1, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    :cond_2
    return-void
.end method

.method private executeInBackground(Ljava/lang/Runnable;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 164
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 165
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 166
    const-string v3, "Failed to submit app components breadcrumb task"

    invoke-interface {v0, v1, p1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 73
    iget-object v2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "It was not possible to unregisterComponentCallbacks"

    new-array v5, v0, [Ljava/lang/Object;

    .line 76
    invoke-interface {v2, v3, v1, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "AppComponentsBreadcrumbsIntegration removed."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onConfigurationChanged$0$io-sentry-android-core-AppComponentsBreadcrumbsIntegration(JLandroid/content/res/Configuration;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->captureConfigurationChangedBreadcrumb(JLandroid/content/res/Configuration;)V

    return-void
.end method

.method synthetic lambda$onLowMemory$1$io-sentry-android-core-AppComponentsBreadcrumbsIntegration(J)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->captureLowMemoryBreadcrumb(JLjava/lang/Integer;)V

    return-void
.end method

.method synthetic lambda$onTrimMemory$2$io-sentry-android-core-AppComponentsBreadcrumbsIntegration(JI)V
    .locals 0

    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->captureLowMemoryBreadcrumb(JLjava/lang/Integer;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    new-instance v2, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1, p1}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;JLandroid/content/res/Configuration;)V

    invoke-direct {p0, v2}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->executeInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    new-instance v2, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;J)V

    invoke-direct {p0, v2}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->executeInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    new-instance v2, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1, p1}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;JI)V

    invoke-direct {p0, v2}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->executeInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 4

    .line 38
    const-string v0, "Hub is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    .line 41
    instance-of p1, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 40
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 45
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 49
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 46
    const-string v2, "AppComponentsBreadcrumbsIntegration enabled: %s"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 54
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 56
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "AppComponentsBreadcrumbsIntegration installed."

    new-array v3, p1, [Ljava/lang/Object;

    .line 57
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const-string v0, "AppComponentsBreadcrumbs"

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 60
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    .line 61
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "ComponentCallbacks2 is not available."

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {p2, v1, v0, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
