.class public Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;
.super Landroid/view/View;
.source "RNSentryOnDrawReporterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/react/RNSentryOnDrawReporterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RNSentryOnDrawReporterView"
.end annotation


# static fields
.field private static final logger:Lio/sentry/ILogger;


# instance fields
.field private final buildInfo:Lio/sentry/android/core/BuildInfoProvider;

.field private final dateProvider:Lio/sentry/SentryDateProvider;

.field private isFullDisplay:Z

.field private isInitialDisplay:Z

.field private parentSpanId:Ljava/lang/String;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private spanIdUsed:Z


# direct methods
.method public static synthetic $r8$lambda$9afJ22hrirAXXbl_9aCR38xEmZM(Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->lambda$processPropsChanged$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    const-string v1, "RNSentryOnDrawReporterView"

    invoke-direct {v0, v1}, Lio/sentry/android/core/AndroidLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance p1, Lio/sentry/android/core/SentryAndroidDateProvider;

    invoke-direct {p1}, Lio/sentry/android/core/SentryAndroidDateProvider;-><init>()V

    iput-object p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->dateProvider:Lio/sentry/SentryDateProvider;

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isInitialDisplay:Z

    .line 73
    iput-boolean p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isFullDisplay:Z

    .line 74
    iput-boolean p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->spanIdUsed:Z

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->parentSpanId:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 80
    iput-object p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->buildInfo:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/bridge/ReactApplicationContext;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance p1, Lio/sentry/android/core/SentryAndroidDateProvider;

    invoke-direct {p1}, Lio/sentry/android/core/SentryAndroidDateProvider;-><init>()V

    iput-object p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->dateProvider:Lio/sentry/SentryDateProvider;

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isInitialDisplay:Z

    .line 73
    iput-boolean p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isFullDisplay:Z

    .line 74
    iput-boolean p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->spanIdUsed:Z

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->parentSpanId:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 97
    iput-object p3, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->buildInfo:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lio/sentry/android/core/SentryAndroidDateProvider;

    invoke-direct {v0}, Lio/sentry/android/core/SentryAndroidDateProvider;-><init>()V

    iput-object v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->dateProvider:Lio/sentry/SentryDateProvider;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isInitialDisplay:Z

    .line 73
    iput-boolean v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isFullDisplay:Z

    .line 74
    iput-boolean v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->spanIdUsed:Z

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->parentSpanId:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 87
    iput-object p2, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->buildInfo:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method

.method private synthetic lambda$processPropsChanged$0()V
    .locals 4

    .line 168
    iget-object v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->dateProvider:Lio/sentry/SentryDateProvider;

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->parentSpanId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 170
    sget-object v0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "[TimeToDisplay] parentSpanId removed before frame was rendered."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 176
    :cond_0
    iget-boolean v1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isInitialDisplay:Z

    if-eqz v1, :cond_1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ttid-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->parentSpanId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/sentry/react/RNSentryTimeToDisplay;->putTimeToDisplayFor(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-boolean v1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isFullDisplay:Z

    if-eqz v1, :cond_2

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ttfd-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->parentSpanId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/sentry/react/RNSentryTimeToDisplay;->putTimeToDisplayFor(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 181
    :cond_2
    sget-object v0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "[TimeToDisplay] display type removed before frame was rendered."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private processPropsChanged()V
    .locals 5

    .line 123
    iget-object v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->parentSpanId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-boolean v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->spanIdUsed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TimeToDisplay] Already recorded time to display for spanId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->parentSpanId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_1
    iget-boolean v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isInitialDisplay:Z

    if-eqz v0, :cond_2

    .line 134
    sget-object v0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "[TimeToDisplay] Register initial display event emitter."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_2
    iget-boolean v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isFullDisplay:Z

    if-eqz v0, :cond_6

    .line 136
    sget-object v0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "[TimeToDisplay] Register full display event emitter."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :goto_0
    iget-object v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->buildInfo:Lio/sentry/android/core/BuildInfoProvider;

    if-nez v0, :cond_3

    .line 143
    sget-object v0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "[TimeToDisplay] Won\'t emit next frame drawn event, buildInfo is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 148
    :cond_3
    iget-object v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez v0, :cond_4

    .line 149
    sget-object v0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "[TimeToDisplay] Won\'t emit next frame drawn event, reactContext is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 155
    :cond_4
    sget-object v2, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->logger:Lio/sentry/ILogger;

    .line 156
    invoke-static {v0, v2}, Lio/sentry/react/utils/RNSentryActivityUtils;->getCurrentActivity(Lcom/facebook/react/bridge/ReactApplicationContext;Lio/sentry/ILogger;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_5

    .line 158
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "[TimeToDisplay] Won\'t emit next frame drawn event, activity is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 164
    iput-boolean v1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->spanIdUsed:Z

    .line 165
    new-instance v1, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView$$ExternalSyntheticLambda0;-><init>(Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;)V

    iget-object v2, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->buildInfo:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {p0, v0, v1, v2}, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->registerForNextDraw(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    return-void

    .line 138
    :cond_6
    sget-object v0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "[TimeToDisplay] Not ready, missing displayType prop."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected registerForNextDraw(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0

    .line 193
    invoke-static {p1, p2, p3}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    return-void
.end method

.method public setFullDisplay(Z)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isFullDisplay:Z

    if-eq p1, v0, :cond_0

    .line 102
    iput-boolean p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isFullDisplay:Z

    .line 103
    invoke-direct {p0}, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->processPropsChanged()V

    :cond_0
    return-void
.end method

.method public setInitialDisplay(Z)V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isInitialDisplay:Z

    if-eq p1, v0, :cond_0

    .line 109
    iput-boolean p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->isInitialDisplay:Z

    .line 110
    invoke-direct {p0}, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->processPropsChanged()V

    :cond_0
    return-void
.end method

.method public setParentSpanId(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->parentSpanId:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iput-object p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->parentSpanId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->spanIdUsed:Z

    .line 118
    invoke-direct {p0}, Lio/sentry/react/RNSentryOnDrawReporterManager$RNSentryOnDrawReporterView;->processPropsChanged()V

    :cond_0
    return-void
.end method
