.class final Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFe1sSDK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1uSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AFa1uSDK"
.end annotation


# instance fields
.field private synthetic getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;


# direct methods
.method public static synthetic $r8$lambda$zc6s4ULhNbsjYJUtAjraV6PdikU(Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMonetizationNetwork()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/appsflyer/internal/AFa1uSDK;)V
    .locals 0

    .line 1919
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMediationNetwork()Z
    .locals 1

    .line 1987
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic getMonetizationNetwork()Lkotlin/Unit;
    .locals 2

    .line 1944
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    new-instance v1, Lcom/appsflyer/internal/AFh1kSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1kSDK;-><init>()V

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 1945
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getMediationNetwork(Lcom/appsflyer/internal/AFe1lSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1lSDK<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFe1lSDK;Lcom/appsflyer/internal/AFe1uSDK;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1lSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFe1uSDK;",
            ")V"
        }
    .end annotation

    .line 1934
    instance-of v0, p1, Lcom/appsflyer/internal/AFf1uSDK;

    const v1, -0x17347f7a

    const v2, 0x17347f87

    if-eqz v0, :cond_6

    .line 1935
    move-object v0, p1

    check-cast v0, Lcom/appsflyer/internal/AFf1uSDK;

    .line 1937
    instance-of v3, p1, Lcom/appsflyer/internal/AFf1rSDK;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1938
    move-object v4, p1

    check-cast v4, Lcom/appsflyer/internal/AFf1rSDK;

    .line 3236
    iget-object v5, v4, Lcom/appsflyer/internal/AFe1lSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;

    .line 3994
    sget-object v6, Lcom/appsflyer/internal/AFe1uSDK;->getRevenue:Lcom/appsflyer/internal/AFe1uSDK;

    if-eq v5, v6, :cond_0

    .line 4111
    iget v5, v4, Lcom/appsflyer/internal/AFe1lSDK;->getMonetizationNetwork:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 3996
    :cond_0
    new-instance v5, Lcom/appsflyer/internal/AFg1iSDK;

    iget-object v6, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    invoke-virtual {v6}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v6

    invoke-interface {v6}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/appsflyer/internal/AFg1iSDK;-><init>(Lcom/appsflyer/internal/AFf1rSDK;Lcom/appsflyer/internal/AFc1oSDK;)V

    .line 3997
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v6, v2, v1, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object v4

    .line 5089
    iget-object v6, v4, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v7, v4, v5}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1941
    :cond_1
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5, v2, v1, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->afLogForce()Lcom/appsflyer/internal/AFh1qSDK;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 1942
    move-object v5, p1

    check-cast v5, Lcom/appsflyer/internal/AFf1rSDK;

    .line 1943
    new-instance v6, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;)V

    invoke-interface {v4, v5, v6}, Lcom/appsflyer/internal/AFh1qSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFf1rSDK;Lkotlin/jvm/functions/Function0;)V

    .line 1949
    :cond_2
    sget-object v4, Lcom/appsflyer/internal/AFe1uSDK;->getRevenue:Lcom/appsflyer/internal/AFe1uSDK;

    if-ne p2, v4, :cond_5

    .line 1951
    iget-object p2, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    iget-object v4, p2, Lcom/appsflyer/internal/AFa1uSDK;->component3:Landroid/app/Application;

    filled-new-array {p2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v5, -0x5f15d5f1

    const v6, 0x5f15d607

    invoke-static {v4, v5, v6, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFc1oSDK;

    const-string/jumbo v4, "sentSuccessfully"

    const-string/jumbo v5, "true"

    invoke-interface {p2, v4, v5}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    instance-of p1, p1, Lcom/appsflyer/internal/AFf1pSDK;

    if-nez p1, :cond_3

    .line 1955
    new-instance p1, Lcom/appsflyer/internal/AFg1tSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    iget-object p2, p2, Lcom/appsflyer/internal/AFa1uSDK;->component3:Landroid/app/Application;

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1tSDK;-><init>(Landroid/content/Context;)V

    .line 6091
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFg1tSDK;->getRevenue()Lcom/appsflyer/internal/AFf1aSDK;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6092
    iget-boolean p2, p1, Lcom/appsflyer/internal/AFf1aSDK;->getMediationNetwork:Z

    if-eqz p2, :cond_3

    .line 6093
    iget-object p1, p1, Lcom/appsflyer/internal/AFf1aSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 6095
    sget-object p2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v5, "Resending Uninstall token to AF servers: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 7085
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v4, v2, v1, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFc1bSDK;

    .line 7086
    new-instance v1, Lcom/appsflyer/internal/AFf1pSDK;

    invoke-direct {v1, p1, p2}, Lcom/appsflyer/internal/AFf1pSDK;-><init>(Ljava/lang/String;Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 7087
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object p1

    .line 8089
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v2, p1, v1}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9108
    :cond_3
    iget-object p1, v0, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFe1xSDK;

    if-eqz p1, :cond_4

    .line 1960
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFe1xSDK;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/appsflyer/internal/AFa1oSDK;->AFAdRevenueData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1963
    iget-object p2, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    const-string/jumbo v0, "send_background"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p2, Lcom/appsflyer/internal/AFa1uSDK;->component1:Z

    :cond_4
    if-eqz v3, :cond_5

    .line 1969
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork:J

    :cond_5
    return-void

    .line 1972
    :cond_6
    instance-of p1, p1, Lcom/appsflyer/internal/AFg1iSDK;

    if-eqz p1, :cond_7

    .line 1973
    sget-object p1, Lcom/appsflyer/internal/AFe1uSDK;->getRevenue:Lcom/appsflyer/internal/AFe1uSDK;

    if-eq p2, p1, :cond_7

    .line 1974
    new-instance p1, Lcom/appsflyer/internal/AFg1nSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1nSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 1975
    iget-object p2, p0, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v0, v2, v1, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object p2

    .line 10089
    iget-object v0, p2, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v1, p2, p1}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method
