.class public final Lcom/appsflyer/internal/AFb1hSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFb1bSDK;


# instance fields
.field private final AFAdRevenueData:Lcom/appsflyer/internal/AFf1cSDK;

.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFc1eSDK;

.field private final getRevenue:Lcom/appsflyer/internal/AFc1gSDK;


# direct methods
.method public static synthetic $r8$lambda$c3fb3pNsH0sNDkoS5dbQYqbwQfA(Lcom/appsflyer/internal/AFb1hSDK;Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFb1hSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFb1hSDK;Lcom/google/android/gms/appset/AppSetIdInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1eSDK;Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFf1cSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1hSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1eSDK;

    .line 26
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1hSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 27
    iput-object p3, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1cSDK;

    return-void
.end method

.method private static final getMediationNetwork(Lcom/appsflyer/internal/AFb1hSDK;Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .locals 3

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1hSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1eSDK;

    new-instance v1, Lcom/appsflyer/internal/AFb1gSDK;

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Lcom/appsflyer/internal/AFb1gSDK;-><init>(ILjava/lang/String;)V

    .line 5034
    iput-object v1, p0, Lcom/appsflyer/internal/AFc1eSDK;->equals:Lcom/appsflyer/internal/AFb1gSDK;

    return-void
.end method


# virtual methods
.method public final getMonetizationNetwork()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1cSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1eSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1eSDK;->getMediationNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 3025
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 54
    invoke-static {v0}, Lcom/appsflyer/internal/AFj1iSDK;->getRevenue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 4025
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 55
    invoke-static {v0}, Lcom/appsflyer/internal/AFj1iSDK;->getMonetizationNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getRevenue()V
    .locals 11

    .line 31
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1hSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 1025
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 2047
    new-instance v1, Lcom/appsflyer/internal/AFb1hSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFb1hSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFb1hSDK;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 32
    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 37
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 38
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v9, 0x78

    const/4 v10, 0x0

    .line 37
    const-string v3, "Error while trying to  fetch App set ID"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    return-void
.end method
