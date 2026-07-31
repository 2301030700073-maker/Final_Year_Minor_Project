.class public final Lcom/appsflyer/internal/AFj1lSDK;
.super Lcom/appsflyer/internal/AFi1cSDK;
.source ""


# instance fields
.field private final getMediationNetwork:Lcom/appsflyer/internal/AFc1bSDK;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 2

    .line 39
    const-string/jumbo v0, "store"

    const-string/jumbo v1, "samsung"

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFi1cSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 40
    iput-object p2, p0, Lcom/appsflyer/internal/AFj1lSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code(Landroid/content/Context;)V
    .locals 8

    .line 45
    new-instance v6, Lcom/appsflyer/internal/AFj1lSDK$2;

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1lSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 47
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "FBA3AF4E7757D9016E953FB3EE4671CA2BD9AF725F9A53D52ED4A38EAAA08901"

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const-string v4, "com.sec.android.app.samsungapps.referrer"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFj1lSDK$2;-><init>(Lcom/appsflyer/internal/AFj1lSDK;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1lSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p1

    .line 1016
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    invoke-static {p1, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFc1oSDK;Z)I

    move-result p1

    if-gtz p1, :cond_1

    .line 1017
    invoke-virtual {v6}, Lcom/appsflyer/internal/AFb1vSDK;->getMediationNetwork()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2042
    :cond_0
    iget-object p1, v6, Lcom/appsflyer/internal/AFb1vSDK;->getMediationNetwork:Ljava/util/concurrent/Executor;

    iget-object v0, v6, Lcom/appsflyer/internal/AFb1vSDK;->getMonetizationNetwork:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFj1qSDK;->component1:J

    .line 3032
    sget-object p1, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFj1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    .line 3033
    new-instance p1, Lcom/appsflyer/internal/AFj1qSDK$1;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFj1qSDK$1;-><init>(Lcom/appsflyer/internal/AFj1qSDK;)V

    invoke-virtual {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    :cond_1
    :goto_0
    return-void
.end method
