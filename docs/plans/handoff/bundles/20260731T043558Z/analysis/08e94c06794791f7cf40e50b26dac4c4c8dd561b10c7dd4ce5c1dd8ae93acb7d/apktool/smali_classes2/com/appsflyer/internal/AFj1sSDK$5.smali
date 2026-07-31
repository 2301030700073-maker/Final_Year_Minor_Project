.class final Lcom/appsflyer/internal/AFj1sSDK$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFj1sSDK;->getCurrencyIso4217Code(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic getCurrencyIso4217Code:Landroid/content/Context;

.field private synthetic getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFj1sSDK;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getCurrencyIso4217Code:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 47
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    .line 1031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/appsflyer/internal/AFj1qSDK;->component1:J

    .line 1032
    sget-object v1, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    iput-object v1, v0, Lcom/appsflyer/internal/AFj1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    .line 1033
    new-instance v1, Lcom/appsflyer/internal/AFj1qSDK$1;

    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFj1qSDK$1;-><init>(Lcom/appsflyer/internal/AFj1qSDK;)V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFj1sSDK;->getRevenue:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/transaction_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 50
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getCurrencyIso4217Code:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFj1sSDK;->B_(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "app_id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getCurrencyIso4217Code:Landroid/content/Context;

    .line 56
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v5, v1

    .line 64
    :try_start_1
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v4, "Error to get data from providerClient "

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    .line 61
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v4, "Failed to query unstable content providerClient"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v5, v1

    .line 58
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v4, "Failed to acquire unstable content providerClient"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 72
    throw v1

    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 74
    :goto_2
    const-string/jumbo v0, "response"

    if-eqz v1, :cond_3

    .line 75
    const-string/jumbo v2, "transaction_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 78
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v4, "Wrong column name"

    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v4, "OK"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string/jumbo v3, "referrer"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_2
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 94
    :cond_3
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v3, "ContentProvider query failed, got null Cursor"

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v2, "SERVICE_UNAVAILABLE"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_4
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getCurrencyIso4217Code:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFj1sSDK;->getRevenue:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFj1iSDK;->getCurrencyIso4217Code(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "api_ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getCurrencyIso4217Code:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFj1sSDK;->getRevenue:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFj1iSDK;->getRevenue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "api_ver_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1sSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFj1qSDK;->getMonetizationNetwork()V

    return-void
.end method
