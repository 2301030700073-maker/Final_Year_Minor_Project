.class public final Lcom/appsflyer/internal/AFe1qSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFAdRevenueData:Lcom/appsflyer/internal/AFc1gSDK;

.field private final component2:Lcom/appsflyer/internal/AFf1cSDK;

.field private final component4:Lcom/appsflyer/internal/AFe1nSDK;

.field private final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1pSDK;

.field private final getMediationNetwork:Ljava/util/concurrent/ExecutorService;

.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFg1rSDK;

.field public final getRevenue:Lcom/appsflyer/internal/AFc1oSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFc1pSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFg1rSDK;Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFe1nSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1qSDK;->getRevenue:Lcom/appsflyer/internal/AFc1oSDK;

    .line 22
    iput-object p2, p0, Lcom/appsflyer/internal/AFe1qSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1gSDK;

    .line 23
    iput-object p3, p0, Lcom/appsflyer/internal/AFe1qSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1pSDK;

    .line 24
    iput-object p4, p0, Lcom/appsflyer/internal/AFe1qSDK;->getMediationNetwork:Ljava/util/concurrent/ExecutorService;

    .line 25
    iput-object p5, p0, Lcom/appsflyer/internal/AFe1qSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1rSDK;

    .line 26
    iput-object p6, p0, Lcom/appsflyer/internal/AFe1qSDK;->component2:Lcom/appsflyer/internal/AFf1cSDK;

    .line 27
    iput-object p7, p0, Lcom/appsflyer/internal/AFe1qSDK;->component4:Lcom/appsflyer/internal/AFe1nSDK;

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1qSDK;->getRevenue:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v1, "didSendRevenueTriggerOnLastBackground"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1qSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1gSDK;

    .line 1025
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 40
    invoke-static {v0}, Lcom/appsflyer/internal/AFj1iSDK;->AFAdRevenueData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/appsflyer/internal/AFe1rSDK$AFa1tSDK;->INSTANCE:Lcom/appsflyer/internal/AFe1rSDK$AFa1tSDK;

    .line 43
    check-cast v0, Lcom/appsflyer/internal/AFe1rSDK;

    new-instance v1, Lcom/appsflyer/internal/AFe1qSDK$5;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFe1qSDK$5;-><init>(Lcom/appsflyer/internal/AFe1qSDK;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/internal/AFe1qSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFe1rSDK;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final AFAdRevenueData(Lcom/appsflyer/internal/AFe1rSDK;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1rSDK;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/appsflyer/internal/AFe1uSDK;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/appsflyer/internal/AFe1aSDK;

    .line 71
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1qSDK;->getMediationNetwork:Ljava/util/concurrent/ExecutorService;

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 72
    iget-object v4, p0, Lcom/appsflyer/internal/AFe1qSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1pSDK;

    .line 73
    iget-object v5, p0, Lcom/appsflyer/internal/AFe1qSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1gSDK;

    .line 74
    iget-object v6, p0, Lcom/appsflyer/internal/AFe1qSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1rSDK;

    .line 75
    iget-object v7, p0, Lcom/appsflyer/internal/AFe1qSDK;->component2:Lcom/appsflyer/internal/AFf1cSDK;

    move-object v1, v0

    move-object v2, p1

    move-object v8, p2

    .line 69
    invoke-direct/range {v1 .. v8}, Lcom/appsflyer/internal/AFe1aSDK;-><init>(Lcom/appsflyer/internal/AFe1rSDK;Ljava/util/concurrent/Executor;Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFg1rSDK;Lcom/appsflyer/internal/AFf1cSDK;Lkotlin/jvm/functions/Function1;)V

    .line 78
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1qSDK;->component4:Lcom/appsflyer/internal/AFe1nSDK;

    check-cast v0, Lcom/appsflyer/internal/AFe1lSDK;

    .line 2089
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v1, p1, v0}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
