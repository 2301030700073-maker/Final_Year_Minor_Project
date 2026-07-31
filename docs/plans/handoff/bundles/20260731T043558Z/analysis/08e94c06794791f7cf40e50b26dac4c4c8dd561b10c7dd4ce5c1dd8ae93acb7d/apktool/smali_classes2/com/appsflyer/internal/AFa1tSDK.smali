.class public final Lcom/appsflyer/internal/AFa1tSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final AFAdRevenueData:Lcom/appsflyer/internal/AFh1jSDK;

.field private final getMonetizationNetwork:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final getRevenue:Lcom/appsflyer/internal/AFc1bSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;Lcom/appsflyer/internal/AFh1jSDK;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1bSDK;",
            "Lcom/appsflyer/internal/AFh1jSDK;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    .line 14
    iput-object p2, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1jSDK;

    .line 15
    iput-object p3, p0, Lcom/appsflyer/internal/AFa1tSDK;->getMonetizationNetwork:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1jSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/appsflyer/internal/AFf1rSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1jSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFf1rSDK;-><init>(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 21
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 1086
    iput-object v1, v0, Lcom/appsflyer/internal/AFf1rSDK;->hashCode:Ljava/util/Map;

    .line 21
    check-cast v0, Lcom/appsflyer/internal/AFf1uSDK;

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1jSDK;

    instance-of v0, v0, Lcom/appsflyer/internal/AFh1nSDK;

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/appsflyer/internal/AFf1sSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1jSDK;

    check-cast v1, Lcom/appsflyer/internal/AFh1nSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFf1sSDK;-><init>(Lcom/appsflyer/internal/AFh1nSDK;Lcom/appsflyer/internal/AFc1bSDK;)V

    check-cast v0, Lcom/appsflyer/internal/AFf1uSDK;

    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcom/appsflyer/internal/AFf1uSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1jSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFf1uSDK;-><init>(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object v1

    check-cast v0, Lcom/appsflyer/internal/AFe1lSDK;

    .line 2089
    iget-object v2, v1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v3, v1, v0}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 32
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1ySDK;

    invoke-static {}, Lcom/appsflyer/internal/AFe1ySDK;->getRevenue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1qSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1jSDK;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3054
    iget-object v2, v0, Lcom/appsflyer/internal/AFe1qSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1gSDK;

    .line 4025
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 3054
    invoke-static {v2}, Lcom/appsflyer/internal/AFj1iSDK;->AFAdRevenueData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3055
    sget-object v2, Lcom/appsflyer/internal/AFe1rSDK;->AFa1vSDK:Lcom/appsflyer/internal/AFe1rSDK$AFa1vSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFe1rSDK$AFa1vSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)Lcom/appsflyer/internal/AFe1rSDK;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 6067
    :cond_2
    sget-object v2, Lcom/appsflyer/internal/AFe1qSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1qSDK$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 6065
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFe1qSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFe1rSDK;Lkotlin/jvm/functions/Function1;)V

    :cond_3
    return-void
.end method
