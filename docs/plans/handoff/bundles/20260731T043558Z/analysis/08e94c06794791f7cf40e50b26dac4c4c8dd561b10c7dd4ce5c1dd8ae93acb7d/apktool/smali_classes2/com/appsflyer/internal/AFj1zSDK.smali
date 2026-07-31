.class public final Lcom/appsflyer/internal/AFj1zSDK;
.super Lcom/appsflyer/internal/AFi1aSDK;
.source ""


# instance fields
.field private final getMediationNetwork:Lcom/appsflyer/internal/AFj1ySDK;

.field private final getRevenue:Lcom/appsflyer/internal/AFc1bSDK;


# direct methods
.method public static synthetic $r8$lambda$4BeYqHG2q6b1oUtRoIC7yyHRZRo(Lcom/appsflyer/internal/AFj1zSDK;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFj1zSDK;->AFAdRevenueData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;Lcom/appsflyer/internal/AFj1ySDK;)V
    .locals 3

    .line 38
    const-string v0, "huawei"

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    const-string/jumbo v2, "store"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/appsflyer/internal/AFi1aSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFc1pSDK;Ljava/lang/Runnable;)V

    .line 39
    iput-object p2, p0, Lcom/appsflyer/internal/AFj1zSDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    .line 40
    iput-object p3, p0, Lcom/appsflyer/internal/AFj1zSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFj1ySDK;

    return-void
.end method

.method private synthetic AFAdRevenueData(Landroid/content/Context;)V
    .locals 11

    .line 49
    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string/jumbo v1, "response"

    .line 1031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appsflyer/internal/AFj1qSDK;->component1:J

    .line 1032
    sget-object v2, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    iput-object v2, p0, Lcom/appsflyer/internal/AFj1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    .line 1033
    new-instance v2, Lcom/appsflyer/internal/AFj1qSDK$1;

    invoke-direct {v2, p0}, Lcom/appsflyer/internal/AFj1qSDK$1;-><init>(Lcom/appsflyer/internal/AFj1qSDK;)V

    invoke-virtual {p0, v2}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 2075
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.huawei.appmarket.commondata"

    const/16 v4, 0x80

    .line 2076
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 2078
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-static {p1, v2}, Lcom/appsflyer/internal/AFj1iSDK;->getCurrencyIso4217Code(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "api_ver"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v4, "api_ver_name"

    invoke-static {p1, v2}, Lcom/appsflyer/internal/AFj1iSDK;->getRevenue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2082
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.huawei.appmarket.commondata/item/5"

    .line 2083
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    .line 2086
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x0

    aput-object p1, v7, v10

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2082
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2089
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2090
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v3, "OK"

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string/jumbo v3, "referrer"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v3, "click_ts"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v3, "install_end_ts"

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    const/4 v3, 0x3

    if-le p1, v3, :cond_3

    .line 2095
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v4, "install_begin_ts"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x4

    .line 2097
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2099
    const-string/jumbo v4, "track_id"

    invoke-virtual {p1, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    :cond_0
    const-string/jumbo v3, "referrer_ex"

    const/4 v4, 0x5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v4, "huawei_custom"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2105
    :cond_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2108
    :cond_2
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v3, "SERVICE_UNAVAILABLE"

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v6, p1

    .line 2111
    :try_start_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    .line 3123
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string p1, ""

    :goto_1
    move-object v5, p1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 3121
    invoke-virtual/range {v3 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_5

    .line 2115
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_5
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFj1qSDK;->getMonetizationNetwork()V

    return-void

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_6

    .line 2115
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2117
    :cond_6
    throw p1
.end method

.method private getRevenue(Landroid/content/Context;)Z
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFj1zSDK;->getMediationNetwork()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "Huawei referrer collection disallowed by counter."

    invoke-virtual {p1, v0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1zSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFj1ySDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFj1ySDK;->AFAdRevenueData(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "Huawei referrer collection disallowed by missing content provider."

    invoke-virtual {p1, v0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    return v1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1zSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFj1ySDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFj1ySDK;->getMonetizationNetwork(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 67
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "Huawei referrer collection disallowed by invalid content provider."

    invoke-virtual {p1, v0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final getCurrencyIso4217Code(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFj1zSDK;->getRevenue(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1zSDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/AFj1zSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/AFj1zSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFj1zSDK;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
