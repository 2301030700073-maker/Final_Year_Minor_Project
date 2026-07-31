.class public final Lio/sentry/react/utils/RNSentryActivityUtils;
.super Ljava/lang/Object;
.source "RNSentryActivityUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentActivity(Lcom/facebook/react/bridge/ReactApplicationContext;Lio/sentry/ILogger;)Landroid/app/Activity;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 25
    :cond_0
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[RNSentryActivityUtils] Given ReactApplicationContext has no activity attached, using CurrentActivityHolder as a fallback."

    invoke-interface {p1, p0, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/android/core/CurrentActivityHolder;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method
