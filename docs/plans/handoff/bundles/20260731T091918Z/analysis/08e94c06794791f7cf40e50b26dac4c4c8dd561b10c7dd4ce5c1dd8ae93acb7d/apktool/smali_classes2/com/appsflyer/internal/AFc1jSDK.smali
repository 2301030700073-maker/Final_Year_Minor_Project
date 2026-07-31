.class public final Lcom/appsflyer/internal/AFc1jSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final getMonetizationNetwork:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK$4;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1jSDK$4;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFc1jSDK;->getMonetizationNetwork:Lkotlin/Lazy;

    return-void
.end method

.method public static final AFAdRevenueData()Ljava/util/concurrent/ExecutorService;
    .locals 11

    .line 17
    new-instance v10, Lcom/appsflyer/internal/AFc1kSDK;

    .line 21
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, v10

    .line 17
    invoke-direct/range {v0 .. v9}, Lcom/appsflyer/internal/AFc1kSDK;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/Queue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x1

    .line 24
    invoke-virtual {v10, v0}, Lcom/appsflyer/internal/AFc1kSDK;->allowCoreThreadTimeOut(Z)V

    .line 23
    check-cast v10, Ljava/util/concurrent/ExecutorService;

    return-object v10
.end method

.method public static final getCurrencyIso4217Code()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 37
    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->getMonetizationNetwork:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final getMediationNetwork()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getMonetizationNetwork()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const/4 v0, 0x1

    .line 32
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
