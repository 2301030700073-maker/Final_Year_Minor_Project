.class final Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemEventsBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SystemEventsBroadcastReceiver"
.end annotation


# static fields
.field private static final DEBOUNCE_WAIT_TIME_MS:J = 0xea60L


# instance fields
.field private final batteryChangedDebouncer:Lio/sentry/android/core/internal/util/Debouncer;

.field private final hub:Lio/sentry/IHub;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method constructor <init>(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 5

    .line 179
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 175
    new-instance v0, Lio/sentry/android/core/internal/util/Debouncer;

    .line 176
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v1

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/Debouncer;-><init>(Lio/sentry/transport/ICurrentDateProvider;JI)V

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->batteryChangedDebouncer:Lio/sentry/android/core/internal/util/Debouncer;

    .line 180
    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->hub:Lio/sentry/IHub;

    .line 181
    iput-object p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method

.method private createBreadcrumb(JLandroid/content/Intent;Ljava/lang/String;Z)Lio/sentry/Breadcrumb;
    .locals 5

    .line 218
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0, p1, p2}, Lio/sentry/Breadcrumb;-><init>(J)V

    .line 219
    const-string p1, "system"

    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 220
    const-string p1, "device.event"

    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 221
    invoke-static {p4}, Lio/sentry/util/StringUtils;->getStringAfterDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    const-string p2, "action"

    invoke-virtual {v0, p2, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p5, :cond_2

    .line 227
    iget-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {p3, p1}, Lio/sentry/android/core/DeviceInfoUtil;->getBatteryLevel(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 229
    const-string p2, "level"

    invoke-virtual {v0, p2, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {p3, p1}, Lio/sentry/android/core/DeviceInfoUtil;->isCharging(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 233
    const-string p2, "charging"

    invoke-virtual {v0, p2, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 237
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_5

    .line 238
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 239
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 242
    :try_start_0
    invoke-virtual {p1, p5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 247
    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 248
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "%s key of the %s action threw an error."

    filled-new-array {p5, p4}, [Ljava/lang/Object;

    move-result-object p5

    .line 249
    invoke-interface {v2, v3, v1, v4, p5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_4
    const-string p1, "extras"

    invoke-virtual {v0, p1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    :cond_5
    :goto_1
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$onReceive$0$io-sentry-android-core-SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver(JLandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 201
    invoke-direct/range {p0 .. p5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->createBreadcrumb(JLandroid/content/Intent;Ljava/lang/String;Z)Lio/sentry/Breadcrumb;

    move-result-object p1

    .line 202
    new-instance p2, Lio/sentry/Hint;

    invoke-direct {p2}, Lio/sentry/Hint;-><init>()V

    .line 203
    const-string p4, "android:intent"

    invoke-virtual {p2, p4, p3}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    iget-object p3, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->hub:Lio/sentry/IHub;

    invoke-interface {p3, p1, p2}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 187
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    iget-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->batteryChangedDebouncer:Lio/sentry/android/core/internal/util/Debouncer;

    invoke-virtual {p1}, Lio/sentry/android/core/internal/util/Debouncer;->checkForDebounce()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 196
    :try_start_0
    iget-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 197
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object p1

    new-instance v7, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;JLandroid/content/Intent;Ljava/lang/String;Z)V

    .line 198
    invoke-interface {p1, v7}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 207
    iget-object p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 208
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 209
    const-string v2, "Failed to submit system event breadcrumb action."

    invoke-interface {p2, v0, p1, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
