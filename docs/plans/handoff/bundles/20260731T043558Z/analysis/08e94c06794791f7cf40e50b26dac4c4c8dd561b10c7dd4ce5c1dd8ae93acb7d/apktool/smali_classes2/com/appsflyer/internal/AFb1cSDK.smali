.class public final Lcom/appsflyer/internal/AFb1cSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFb1aSDK;


# instance fields
.field private final AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

.field private final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1kSDK;

.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFa1rSDK;

.field private getRevenue:Lcom/appsflyer/internal/AFb1lSDK;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFa1rSDK;Lcom/appsflyer/internal/AFi1kSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1cSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1cSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1rSDK;

    .line 20
    iput-object p3, p0, Lcom/appsflyer/internal/AFb1cSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1kSDK;

    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code(Landroid/content/Context;Lcom/appsflyer/internal/AFb1aSDK$AFa1ySDK;)V
    .locals 4

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1cSDK;->getRevenue:Lcom/appsflyer/internal/AFb1lSDK;

    if-eqz v1, :cond_0

    .line 1050
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Application;

    .line 1051
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1cSDK;->getRevenue:Lcom/appsflyer/internal/AFb1lSDK;

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    const/4 v0, 0x0

    .line 1053
    iput-object v0, p0, Lcom/appsflyer/internal/AFb1cSDK;->getRevenue:Lcom/appsflyer/internal/AFb1lSDK;

    .line 32
    new-instance v0, Lcom/appsflyer/internal/AFb1lSDK;

    .line 33
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1cSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1cSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1rSDK;

    .line 35
    iget-object v3, p0, Lcom/appsflyer/internal/AFb1cSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1kSDK;

    .line 32
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/appsflyer/internal/AFb1lSDK;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFa1rSDK;Lcom/appsflyer/internal/AFi1kSDK;Lcom/appsflyer/internal/AFb1aSDK$AFa1ySDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1cSDK;->getRevenue:Lcom/appsflyer/internal/AFb1lSDK;

    .line 39
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 42
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Lcom/appsflyer/internal/AFb1lSDK;->onActivityResumed(Landroid/app/Activity;)V

    .line 44
    :cond_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFj1iSDK;->O_(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 45
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1cSDK;->getRevenue:Lcom/appsflyer/internal/AFb1lSDK;

    check-cast p2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_2
    return-void
.end method

.method public final getCurrencyIso4217Code()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1cSDK;->getRevenue:Lcom/appsflyer/internal/AFb1lSDK;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getMonetizationNetwork()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1cSDK;->getRevenue:Lcom/appsflyer/internal/AFb1lSDK;

    if-eqz v0, :cond_0

    .line 2068
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1lSDK;->getRevenue:Lcom/appsflyer/internal/AFb1aSDK$AFa1ySDK;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Lcom/appsflyer/internal/AFb1aSDK$AFa1ySDK;->getMediationNetwork()V

    :cond_0
    return-void
.end method
