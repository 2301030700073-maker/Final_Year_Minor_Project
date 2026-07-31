.class public final Lcom/appsflyer/internal/AFj1kSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final getCurrencyIso4217Code:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFj1kSDK;->getCurrencyIso4217Code:Landroid/content/Intent;

    return-void
.end method

.method private final AFAdRevenueData(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Ljava/lang/String;",
            "TT;Z)TT;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1kSDK;->getCurrencyIso4217Code:Landroid/content/Intent;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/appsflyer/internal/AFj1kSDK;

    .line 83
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 82
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    .line 85
    new-array v2, v2, [Lkotlin/reflect/KClass;

    const-class v3, Ljava/util/ConcurrentModificationException;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 112
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    .line 89
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/appsflyer/internal/AFj1kSDK;->AFAdRevenueData(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {p2, v3, v4, v4}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    move-object p1, p3

    .line 112
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 116
    :cond_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 112
    :try_start_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    move-object v1, p1

    .line 99
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p3, v1

    goto :goto_4

    .line 100
    :cond_3
    invoke-static {p2, p1, v4, v4}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 81
    :goto_4
    monitor-exit v0

    return-object p3

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final H_(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/appsflyer/internal/AFj1kSDK$4;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/internal/AFj1kSDK$4;-><init>(Lcom/appsflyer/internal/AFj1kSDK;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " extra from intent"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1074
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/appsflyer/internal/AFj1kSDK;->AFAdRevenueData(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Landroid/os/Parcelable;

    return-object p1
.end method

.method public final I_(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/appsflyer/internal/AFj1kSDK$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/appsflyer/internal/AFj1kSDK$2;-><init>(Lcom/appsflyer/internal/AFj1kSDK;Ljava/lang/String;J)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error while trying to write "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " extra to intent"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 4074
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/appsflyer/internal/AFj1kSDK;->AFAdRevenueData(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 41
    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method public final getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/appsflyer/internal/AFj1kSDK$3;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/internal/AFj1kSDK$3;-><init>(Lcom/appsflyer/internal/AFj1kSDK;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " extra from intent"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2074
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/appsflyer/internal/AFj1kSDK;->AFAdRevenueData(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getRevenue(Ljava/lang/String;)Z
    .locals 3

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/appsflyer/internal/AFj1kSDK$1;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/internal/AFj1kSDK$1;-><init>(Lcom/appsflyer/internal/AFj1kSDK;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while trying to check presence of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " extra from intent"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 3074
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/appsflyer/internal/AFj1kSDK;->AFAdRevenueData(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method
