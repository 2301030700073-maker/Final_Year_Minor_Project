.class public final Lcom/appsflyer/internal/AFe1dSDK;
.super Lcom/appsflyer/internal/AFe1lSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1lSDK<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile areAllFieldsValid:Z = false


# instance fields
.field private final component1:Lcom/appsflyer/internal/AFc1uSDK;

.field private component2:Ljava/lang/Boolean;

.field private final component3:Lcom/appsflyer/internal/AFe1nSDK;

.field private final component4:Lcom/appsflyer/internal/AFc1bSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 3

    .line 37
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1mSDK;

    const-string v2, "LoadCachedRequests"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFe1lSDK;-><init>(Lcom/appsflyer/internal/AFe1mSDK;[Lcom/appsflyer/internal/AFe1mSDK;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1uSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK;->component1:Lcom/appsflyer/internal/AFc1uSDK;

    .line 39
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK;->component3:Lcom/appsflyer/internal/AFe1nSDK;

    .line 40
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1dSDK;->component4:Lcom/appsflyer/internal/AFc1bSDK;

    return-void
.end method

.method private static AFAdRevenueData(Lcom/appsflyer/internal/AFc1tSDK;)Ljava/lang/String;
    .locals 7

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5068
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1tSDK;->getMediationNetwork:Ljava/lang/String;

    const/16 v3, 0xa

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 6064
    iget-object p0, p0, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 84
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "isCachedRequest"

    const-string/jumbo v6, "true"

    .line 85
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "timeincache"

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 86
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    const-string v1, "Couldn\'t parse the uri"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public static component2()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/appsflyer/internal/AFe1dSDK;->areAllFieldsValid:Z

    return v0
.end method


# virtual methods
.method public final AFAdRevenueData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrencyIso4217Code()J
    .locals 2

    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public final getMediationNetwork()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK;->component1:Lcom/appsflyer/internal/AFc1uSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1uSDK;->getMediationNetwork()Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1tSDK;

    .line 58
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "resending request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1064
    iget-object v5, v1, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-static {v1}, Lcom/appsflyer/internal/AFe1dSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFc1tSDK;)Ljava/lang/String;

    move-result-object v2

    .line 62
    new-instance v3, Lcom/appsflyer/internal/AFh1gSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1tSDK;->getMonetizationNetwork()[B

    move-result-object v4

    .line 2068
    iget-object v5, v1, Lcom/appsflyer/internal/AFc1tSDK;->getMediationNetwork:Ljava/lang/String;

    .line 3076
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

    .line 62
    invoke-direct {v3, v2, v4, v5, v1}, Lcom/appsflyer/internal/AFh1gSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFe1mSDK;)V

    .line 64
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1dSDK;->component3:Lcom/appsflyer/internal/AFe1nSDK;

    new-instance v2, Lcom/appsflyer/internal/AFf1tSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFe1dSDK;->component4:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v2, v3, v4}, Lcom/appsflyer/internal/AFf1tSDK;-><init>(Lcom/appsflyer/internal/AFh1gSDK;Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 4089
    iget-object v3, v1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v4, v1, v2}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 67
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component1:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v4, "Failed to resend cached request"

    invoke-virtual {v2, v3, v4, v1}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK;->component2:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 73
    sput-boolean v0, Lcom/appsflyer/internal/AFe1dSDK;->areAllFieldsValid:Z

    .line 74
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getRevenue:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0
.end method
