.class public final Lio/sentry/react/RNSentryTimeToDisplay;
.super Ljava/lang/Object;
.source "RNSentryTimeToDisplay.java"


# static fields
.field public static final ENTRIES_MAX_SIZE:I = 0x32

.field private static activeSpanId:Ljava/lang/String;

.field private static final screenIdToRenderDuration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lio/sentry/react/RNSentryTimeToDisplay$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x33

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/react/RNSentryTimeToDisplay$1;-><init>(IFZ)V

    sput-object v0, Lio/sentry/react/RNSentryTimeToDisplay;->screenIdToRenderDuration:Ljava/util/Map;

    const/4 v0, 0x0

    .line 31
    sput-object v0, Lio/sentry/react/RNSentryTimeToDisplay;->activeSpanId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeToDisplay(Lcom/facebook/react/bridge/Promise;Lio/sentry/SentryDateProvider;)V
    .locals 2

    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    const-string p1, "GetTimeToDisplay is not able to measure the time to display: Main looper not available."

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/sentry/react/RNSentryTimeToDisplay$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lio/sentry/react/RNSentryTimeToDisplay$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryDateProvider;Lcom/facebook/react/bridge/Promise;)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$getTimeToDisplay$0(Lio/sentry/SentryDateProvider;Lcom/facebook/react/bridge/Promise;J)V
    .locals 2

    .line 71
    invoke-interface {p0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide p2

    long-to-double p2, p2

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getTimeToDisplay$1(Lio/sentry/SentryDateProvider;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 66
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 69
    new-instance v1, Lio/sentry/react/RNSentryTimeToDisplay$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/sentry/react/RNSentryTimeToDisplay$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SentryDateProvider;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 75
    const-string v0, "Failed to receive the instance of Choreographer"

    invoke-interface {p1, v0, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static popTimeToDisplayFor(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .line 38
    sget-object v0, Lio/sentry/react/RNSentryTimeToDisplay;->screenIdToRenderDuration:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public static putTimeToDisplayFor(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1

    .line 48
    sget-object v0, Lio/sentry/react/RNSentryTimeToDisplay;->screenIdToRenderDuration:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putTimeToInitialDisplayForActiveSpan(Ljava/lang/Double;)V
    .locals 2

    .line 42
    sget-object v0, Lio/sentry/react/RNSentryTimeToDisplay;->activeSpanId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ttid-navigation-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/sentry/react/RNSentryTimeToDisplay;->activeSpanId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lio/sentry/react/RNSentryTimeToDisplay;->putTimeToDisplayFor(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method public static setActiveSpanId(Ljava/lang/String;)V
    .locals 0

    .line 34
    sput-object p0, Lio/sentry/react/RNSentryTimeToDisplay;->activeSpanId:Ljava/lang/String;

    return-void
.end method
