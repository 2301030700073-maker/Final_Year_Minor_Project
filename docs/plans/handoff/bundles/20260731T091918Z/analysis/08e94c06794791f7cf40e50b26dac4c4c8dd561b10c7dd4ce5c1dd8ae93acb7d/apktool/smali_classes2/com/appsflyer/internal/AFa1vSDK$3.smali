.class final Lcom/appsflyer/internal/AFa1vSDK$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/attribution/AppsFlyerRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFa1vSDK;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic getMediationNetwork:Lcom/appsflyer/internal/AFf1uSDK;

.field private synthetic getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFa1vSDK;Lcom/appsflyer/internal/AFf1uSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFf1uSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFf1uSDK;

    .line 2108
    iget-object p1, p1, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFe1xSDK;

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFa1vSDK;->getMonetizationNetwork:Ljava/lang/String;

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFa1vSDK;->getRevenue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1, p2}, Lcom/appsflyer/internal/AFa1vSDK;->AFAdRevenueData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFf1uSDK;

    .line 1108
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFe1xSDK;

    .line 118
    :try_start_0
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1xSDK;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v0, "Validate response ok: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFa1vSDK;->getMonetizationNetwork:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFa1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;

    iget-object v4, v4, Lcom/appsflyer/internal/AFa1vSDK;->getRevenue:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/appsflyer/internal/AFa1vSDK;->AFAdRevenueData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 123
    const-string v1, "Failed Validate request: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFa1vSDK;->getMonetizationNetwork:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFa1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/internal/AFa1vSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1vSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFa1vSDK;->getRevenue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Lcom/appsflyer/internal/AFa1vSDK;->AFAdRevenueData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
