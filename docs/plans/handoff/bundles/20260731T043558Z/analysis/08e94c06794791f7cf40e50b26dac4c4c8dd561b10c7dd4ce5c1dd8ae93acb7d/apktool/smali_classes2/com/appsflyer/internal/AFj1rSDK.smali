.class public final Lcom/appsflyer/internal/AFj1rSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/appsflyer/internal/AFj1qSDK;",
            ">;"
        }
    .end annotation
.end field

.field public final getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;


# direct methods
.method public static synthetic $r8$lambda$1vjPf6NzSQ16XhY-ymrxAf5LW0k(Lcom/appsflyer/internal/AFj1rSDK;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFj1rSDK;->getRevenue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B62tDtSI-AxIs48QIaBnPwzRpm0(Lcom/appsflyer/internal/AFj1rSDK;Landroid/content/Context;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/internal/AFj1rSDK;->getRevenue(Landroid/content/Context;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CtrxpDyFqLBh8m5HrwAWUdAnY7c(Lcom/appsflyer/internal/AFj1rSDK;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFj1rSDK;->AFAdRevenueData(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XFlIvxK1q5Sa0JfVK6XYuQjC3-Y()V
    .locals 0

    invoke-static {}, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZXqsUOMDy70nHVa38kXv4WKnBrM(Lcom/appsflyer/internal/AFj1rSDK;Lcom/appsflyer/internal/AFi1bSDK;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFj1rSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFi1bSDK;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jUys4l0_pztIYZqaFld-WU_yczE(Lcom/appsflyer/internal/AFj1rSDK;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFj1rSDK;->component4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgMRYOBz37oj54_cn3LKFIt3wIk(Lcom/appsflyer/internal/AFj1rSDK;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    iput-object p1, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    return-void
.end method

.method private synthetic AFAdRevenueData(Ljava/lang/Runnable;)V
    .locals 7

    .line 5112
    new-instance v6, Lcom/appsflyer/internal/AFj1wSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 5113
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 5114
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFj1xSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1xSDK;

    new-instance v5, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda5;-><init>()V

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFj1wSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFj1xSDK;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 6045
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 5120
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object p1

    .line 7025
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 5120
    invoke-virtual {v6, p1}, Lcom/appsflyer/internal/AFj1qSDK;->getCurrencyIso4217Code(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic component4(Ljava/lang/Runnable;)V
    .locals 7

    .line 8100
    new-instance v6, Lcom/appsflyer/internal/AFj1wSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 8101
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 8102
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFj1xSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFj1xSDK;

    new-instance v5, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, p1}, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda4;-><init>(Lcom/appsflyer/internal/AFj1rSDK;Ljava/lang/Runnable;)V

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFj1wSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFj1xSDK;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 9045
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 8108
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object p1

    .line 10025
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 8108
    invoke-virtual {v6, p1}, Lcom/appsflyer/internal/AFj1qSDK;->getCurrencyIso4217Code(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic getCurrencyIso4217Code(Ljava/lang/Runnable;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda1;-><init>(Lcom/appsflyer/internal/AFj1rSDK;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic getMediationNetwork(Lcom/appsflyer/internal/AFi1bSDK;Ljava/lang/Runnable;)V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    .line 3290
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v2, "appsFlyerCount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v1

    .line 199
    const-string/jumbo v2, "newGPReferrerSent"

    invoke-interface {v0, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    move-result v0

    .line 4056
    iget-object p1, p1, Lcom/appsflyer/internal/AFj1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    .line 202
    sget-object v2, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getRevenue:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    move v3, v4

    :cond_0
    if-ne v1, v4, :cond_2

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    .line 204
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private static synthetic getMonetizationNetwork()V
    .locals 0

    return-void
.end method

.method private synthetic getRevenue(Landroid/content/Context;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 4

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.appsflyer.referrer.INSTALL_PROVIDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 64
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 66
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_1

    .line 68
    new-instance v2, Lcom/appsflyer/internal/AFj1sSDK;

    invoke-direct {v2, v1, p2, p3}, Lcom/appsflyer/internal/AFj1sSDK;-><init>(Landroid/content/pm/ProviderInfo;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v3, "com.appsflyer.referrer.INSTALL_PROVIDER Action is set for non ContentProvider component"

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 76
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p2, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Detected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " valid preinstall provider(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFj1qSDK;

    .line 82
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v0

    .line 11025
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 82
    invoke-virtual {p2, v0}, Lcom/appsflyer/internal/AFj1qSDK;->getCurrencyIso4217Code(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic getRevenue(Ljava/lang/Runnable;)V
    .locals 1

    .line 162
    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/AFh1kSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1kSDK;-><init>()V

    .line 163
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFj1rSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData(Landroid/content/Context;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 2

    .line 56
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda3;-><init>(Lcom/appsflyer/internal/AFj1rSDK;Landroid/content/Context;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)Z
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v0

    .line 2290
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 186
    instance-of p1, p1, Lcom/appsflyer/internal/AFh1kSDK;

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v3}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v3

    const-string/jumbo v4, "newGPReferrerSent"

    invoke-interface {v3, v4, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    return v1

    :cond_2
    return v2
.end method

.method public final getMediationNetwork(Ljava/lang/Runnable;)V
    .locals 7

    .line 90
    new-instance v6, Lcom/appsflyer/internal/AFj1wSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 91
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 92
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFj1xSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFj1xSDK;

    new-instance v5, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFj1rSDK;Ljava/lang/Runnable;)V

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFj1wSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFj1xSDK;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1045
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getMediationNetwork()Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v0

    const-string v1, "AF_PREINSTALL_DISABLED"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getMonetizationNetwork(Ljava/lang/Runnable;)Lcom/appsflyer/internal/AFi1bSDK;
    .locals 3

    .line 158
    new-instance v0, Lcom/appsflyer/internal/AFi1bSDK;

    new-instance v1, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda6;-><init>(Lcom/appsflyer/internal/AFj1rSDK;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 171
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v2, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 172
    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/appsflyer/internal/AFi1bSDK;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFc1pSDK;)V

    return-object v0
.end method

.method public final getRevenue(Lcom/appsflyer/internal/AFi1bSDK;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 196
    new-instance v0, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/appsflyer/internal/AFj1rSDK$$ExternalSyntheticLambda2;-><init>(Lcom/appsflyer/internal/AFj1rSDK;Lcom/appsflyer/internal/AFi1bSDK;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final getRevenue()Z
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFj1qSDK;

    .line 218
    iget-object v1, v1, Lcom/appsflyer/internal/AFj1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    sget-object v2, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
