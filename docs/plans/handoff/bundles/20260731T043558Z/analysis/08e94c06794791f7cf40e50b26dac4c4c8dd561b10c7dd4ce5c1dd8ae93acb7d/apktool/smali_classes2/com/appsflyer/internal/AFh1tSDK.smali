.class public final Lcom/appsflyer/internal/AFh1tSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFAdRevenueData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final areAllFieldsValid:[J

.field public final component1:[J

.field public component2:J

.field public component3:J

.field public final component4:[J

.field public copydefault:J

.field public final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

.field public final getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

.field public final getMonetizationNetwork:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final getRevenue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public hashCode:J

.field public toString:J


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1pSDK;)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->getRevenue:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->AFAdRevenueData:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->component2:J

    .line 33
    iput-wide v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->component3:J

    const/4 v2, 0x2

    .line 34
    new-array v3, v2, [J

    iput-object v3, p0, Lcom/appsflyer/internal/AFh1tSDK;->component4:[J

    .line 35
    new-array v3, v2, [J

    iput-object v3, p0, Lcom/appsflyer/internal/AFh1tSDK;->component1:[J

    .line 36
    new-array v2, v2, [J

    iput-object v2, p0, Lcom/appsflyer/internal/AFh1tSDK;->areAllFieldsValid:[J

    .line 42
    iput-wide v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->copydefault:J

    .line 43
    iput-wide v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->toString:J

    .line 48
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    .line 49
    iput-object p2, p0, Lcom/appsflyer/internal/AFh1tSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1hSDK;->getMonetizationNetwork(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    const-string v1, "Error while parsing cached json data"

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getCurrencyIso4217Code()Z
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    .line 4290
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final getMonetizationNetwork()V
    .locals 5

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->component3:J

    .line 96
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-wide v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->component2:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork:Ljava/util/Map;

    iget-wide v3, p0, Lcom/appsflyer/internal/AFh1tSDK;->component3:J

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "init_to_fg"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 1231
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1232
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_launch"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    const-string v0, "Metrics: init ts is missing"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final getMonetizationNetwork(I)V
    .locals 6

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    iget-wide v2, p0, Lcom/appsflyer/internal/AFh1tSDK;->toString:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/appsflyer/internal/AFh1tSDK;->AFAdRevenueData:Ljava/util/Map;

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "net"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_0
    const-string v0, "Metrics: gcdStart ts is missing"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string/jumbo v1, "retries"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object p1, p0, Lcom/appsflyer/internal/AFh1tSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 3231
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3232
    iget-object p1, p0, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcd"

    invoke-interface {p1, v1, v0}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;J)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->getRevenue:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object p1, p0, Lcom/appsflyer/internal/AFh1tSDK;->getRevenue:Ljava/util/Map;

    const-string/jumbo v0, "timeout_value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getRevenue(Lcom/appsflyer/internal/AFh1uSDK;)V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork:Ljava/util/Map;

    const-string/jumbo v1, "start_with"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p1, p0, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 2231
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2232
    iget-object p1, p0, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "first_launch"

    invoke-interface {p1, v1, v0}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getRevenue()Z
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    .line 5290
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method
