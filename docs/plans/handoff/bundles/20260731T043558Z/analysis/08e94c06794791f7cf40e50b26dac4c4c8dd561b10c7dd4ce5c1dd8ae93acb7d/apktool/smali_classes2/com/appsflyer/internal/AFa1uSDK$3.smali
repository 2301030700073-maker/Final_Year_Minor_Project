.class final Lcom/appsflyer/internal/AFa1uSDK$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFb1aSDK$AFa1ySDK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFa1uSDK;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic getCurrencyIso4217Code:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

.field private synthetic getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

.field private synthetic getMonetizationNetwork:Lcom/appsflyer/internal/AFh1tSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFa1uSDK;Lcom/appsflyer/internal/AFh1tSDK;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 945
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFh1tSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getCurrencyIso4217Code:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMediationNetwork()V
    .locals 10

    .line 981
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v2, 0x17347f87

    const v3, -0x17347f7a

    invoke-static {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v0

    .line 9025
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 982
    const-string/jumbo v1, "onBecameBackground"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 983
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFh1tSDK;

    .line 10107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 10108
    iget-wide v6, v1, Lcom/appsflyer/internal/AFh1tSDK;->component3:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 10109
    iget-wide v6, v1, Lcom/appsflyer/internal/AFh1tSDK;->component3:J

    sub-long/2addr v4, v6

    cmp-long v6, v4, v8

    if-lez v6, :cond_0

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    move-wide v4, v6

    .line 10114
    :cond_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/appsflyer/internal/AFh1tSDK;->hashCode:J

    .line 10115
    iget-object v4, v1, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    const-string/jumbo v5, "prev_session_dur"

    iget-wide v6, v1, Lcom/appsflyer/internal/AFh1tSDK;->hashCode:J

    invoke-interface {v4, v5, v6, v7}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;J)V

    goto :goto_0

    .line 10117
    :cond_1
    const-string v1, "Metrics: fg ts is missing"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 984
    :goto_0
    const-string v1, "callStatsBackground background call"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 985
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v4, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afWarnLog()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1xSDK;->getCurrencyIso4217Code()V

    .line 986
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v4, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    .line 987
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1mSDK;->areAllFieldsValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 988
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1mSDK;->AFAdRevenueData()V

    if-eqz v0, :cond_2

    .line 989
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v4

    if-nez v4, :cond_2

    .line 990
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 991
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 992
    invoke-interface {v1, v4, v0}, Lcom/appsflyer/internal/AFd1mSDK;->q_(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 994
    :cond_2
    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1mSDK;->getRevenue()V

    goto :goto_1

    .line 996
    :cond_3
    const-string v0, "RD status is OFF"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 998
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->copy()Lcom/appsflyer/internal/AFj1pSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFj1pSDK;->getMediationNetwork()V

    .line 999
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLogForExcManagerOnly()Lcom/appsflyer/internal/AFa1hSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFa1hSDK;->getMediationNetwork()V

    .line 1000
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1qSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1qSDK;->AFAdRevenueData()V

    .line 1002
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->afLogForce()Lcom/appsflyer/internal/AFh1qSDK;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1004
    invoke-interface {v0}, Lcom/appsflyer/internal/AFh1qSDK;->getCurrencyIso4217Code()V

    :cond_4
    return-void
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFh1rSDK;)V
    .locals 9

    .line 948
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMonetizationNetwork:Lcom/appsflyer/internal/AFh1tSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork()V

    .line 949
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v2, 0x17347f87

    const v3, -0x17347f7a

    invoke-static {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    .line 950
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->component1()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object v1

    iget-object v4, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFf1nSDK;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/appsflyer/internal/AFf1lSDK;->getRevenue(Lcom/appsflyer/internal/AFf1nSDK;)V

    .line 951
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFa1uSDK;->component4()V

    .line 952
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    .line 2290
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v4, "appsFlyerCount"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v1

    .line 953
    const-string/jumbo v4, "onBecameForeground"

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    .line 956
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v4, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->copy()Lcom/appsflyer/internal/AFj1pSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFj1pSDK;->getMonetizationNetwork()V

    .line 958
    :cond_0
    new-instance v1, Lcom/appsflyer/internal/AFh1eSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1eSDK;-><init>()V

    .line 963
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v6, v2, v3, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v4

    .line 964
    invoke-static {v1}, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)Lcom/appsflyer/internal/AFa1gSDK;

    move-result-object v6

    .line 3012
    iget-object v7, p1, Lcom/appsflyer/internal/AFh1rSDK;->getMediationNetwork:Landroid/content/Intent;

    .line 966
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v8

    .line 4025
    iget-object v8, v8, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 963
    invoke-virtual {v4, v6, v7, v8}, Lcom/appsflyer/internal/AFa1rSDK;->f_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/content/Intent;Landroid/content/Context;)V

    .line 968
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->afLogForce()Lcom/appsflyer/internal/AFh1qSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5012
    iget-object v4, p1, Lcom/appsflyer/internal/AFh1rSDK;->getMediationNetwork:Landroid/content/Intent;

    if-eqz v4, :cond_1

    .line 6012
    iget-object v4, p1, Lcom/appsflyer/internal/AFh1rSDK;->getMediationNetwork:Landroid/content/Intent;

    .line 970
    iget-object v6, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v7, v2, v3, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v6}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Lcom/appsflyer/internal/AFh1qSDK;->u_(Landroid/content/Intent;Lcom/appsflyer/internal/AFa1rSDK;)V

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getCurrencyIso4217Code:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 7096
    iput-object v4, v1, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 973
    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFh1rSDK;)V

    .line 975
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, v2, v3, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1qSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFe1qSDK;->AFAdRevenueData()V

    .line 976
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1uSDK$3;->getMediationNetwork:Lcom/appsflyer/internal/AFa1uSDK;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, v2, v3, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1qSDK;

    move-result-object p1

    .line 8031
    iget-object p1, p1, Lcom/appsflyer/internal/AFe1qSDK;->getRevenue:Lcom/appsflyer/internal/AFc1oSDK;

    .line 8032
    const-string v0, "didSendRevenueTriggerOnLastBackground"

    .line 8031
    invoke-interface {p1, v0, v5}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;Z)V

    return-void
.end method
