.class public final Lcom/appsflyer/internal/AFi1oSDK;
.super Lcom/appsflyer/internal/AFi1pSDK;
.source ""


# instance fields
.field private getCurrencyIso4217Code:Landroid/net/Network;

.field private getMediationNetwork:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFi1pSDK;-><init>(Landroid/content/Context;)V

    .line 16
    const-string/jumbo p1, "unknown"

    iput-object p1, p0, Lcom/appsflyer/internal/AFi1oSDK;->getMediationNetwork:Ljava/lang/String;

    .line 20
    new-instance p1, Lcom/appsflyer/internal/AFi1oSDK$AFa1tSDK;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFi1oSDK$AFa1tSDK;-><init>(Lcom/appsflyer/internal/AFi1oSDK;)V

    check-cast p1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1pSDK;->AFAdRevenueData:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    move-object v3, p1

    .line 36
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v0, p1

    check-cast v0, Lcom/appsflyer/internal/AFh1ySDK;

    .line 37
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v8, 0x60

    const/4 v9, 0x0

    .line 36
    const-string v2, "Error at attempt to register network callback with ConnectivityManager"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic AFAdRevenueData(Lcom/appsflyer/internal/AFi1oSDK;Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1oSDK;->getMediationNetwork:Ljava/lang/String;

    return-void
.end method

.method private static y_(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x4

    .line 70
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static final synthetic z_(Lcom/appsflyer/internal/AFi1oSDK;Landroid/net/Network;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1oSDK;->getCurrencyIso4217Code:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method protected final getCurrencyIso4217Code()Ljava/lang/String;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1oSDK;->getCurrencyIso4217Code:Landroid/net/Network;

    const-string/jumbo v1, "unknown"

    if-eqz v0, :cond_2

    .line 2011
    iget-object v2, p0, Lcom/appsflyer/internal/AFi1pSDK;->AFAdRevenueData:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 3055
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "WIFI"

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 3056
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MOBILE"

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getRevenue()Z
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1oSDK;->getCurrencyIso4217Code:Landroid/net/Network;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1oSDK;->getMediationNetwork:Ljava/lang/String;

    const-string v2, "NetworkLost"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 4011
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1pSDK;->AFAdRevenueData:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 64
    invoke-static {v2}, Lcom/appsflyer/internal/AFi1oSDK;->y_(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
