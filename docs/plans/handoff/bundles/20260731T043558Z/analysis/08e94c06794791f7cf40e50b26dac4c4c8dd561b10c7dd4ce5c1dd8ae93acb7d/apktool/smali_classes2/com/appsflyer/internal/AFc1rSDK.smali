.class public final Lcom/appsflyer/internal/AFc1rSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFc1uSDK;


# instance fields
.field private final AFAdRevenueData:Lcom/appsflyer/internal/AFc1sSDK;

.field private final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

.field private final getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

.field private final getRevenue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFc1oSDK;)V
    .locals 11

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 40
    iput-object p2, p0, Lcom/appsflyer/internal/AFc1rSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    .line 43
    new-instance p1, Lcom/appsflyer/internal/AFc1sSDK;

    const/4 p2, 0x3

    .line 45
    new-array v0, p2, [Lcom/appsflyer/internal/AFc1vSDK;

    new-instance v1, Lcom/appsflyer/internal/AFc1vSDK;

    .line 47
    sget-object v2, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 45
    const-string v3, "ConversionsCache"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFc1vSDK;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    const/4 v2, 0x0

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 45
    aput-object v1, v0, v2

    .line 50
    new-instance v1, Lcom/appsflyer/internal/AFc1vSDK;

    .line 52
    sget-object v6, Lcom/appsflyer/internal/AFe1mSDK;->toString:Lcom/appsflyer/internal/AFe1mSDK;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 50
    const-string v7, "AttrCache"

    invoke-direct {v1, v7, v6, v4}, Lcom/appsflyer/internal/AFc1vSDK;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    aput-object v1, v0, v4

    .line 55
    new-instance v1, Lcom/appsflyer/internal/AFc1vSDK;

    const/4 v6, 0x7

    .line 58
    new-array v6, v6, [Lcom/appsflyer/internal/AFe1mSDK;

    sget-object v8, Lcom/appsflyer/internal/AFe1mSDK;->copydefault:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v8, v6, v2

    .line 59
    sget-object v8, Lcom/appsflyer/internal/AFe1mSDK;->equals:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v8, v6, v4

    .line 60
    sget-object v8, Lcom/appsflyer/internal/AFe1mSDK;->e:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v9, 0x2

    aput-object v8, v6, v9

    .line 61
    sget-object v8, Lcom/appsflyer/internal/AFe1mSDK;->registerClient:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v8, v6, p2

    const/4 v8, 0x4

    .line 62
    sget-object v10, Lcom/appsflyer/internal/AFe1mSDK;->AFLogger:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v10, v6, v8

    const/4 v8, 0x5

    .line 63
    sget-object v10, Lcom/appsflyer/internal/AFe1mSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v10, v6, v8

    const/4 v8, 0x6

    .line 64
    sget-object v10, Lcom/appsflyer/internal/AFe1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v10, v6, v8

    .line 57
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/16 v8, 0x28

    .line 55
    const-string v10, "OtherCache"

    invoke-direct {v1, v10, v6, v8}, Lcom/appsflyer/internal/AFc1vSDK;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    aput-object v1, v0, v9

    .line 44
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-direct {p1, v0}, Lcom/appsflyer/internal/AFc1sSDK;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1sSDK;

    .line 72
    new-array p1, p2, [Lkotlin/Pair;

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v2

    .line 73
    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v4

    .line 74
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v9

    .line 71
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1rSDK;->getRevenue:Ljava/util/Map;

    return-void
.end method

.method private static AFAdRevenueData(Ljava/io/File;)Lcom/appsflyer/internal/AFc1tSDK;
    .locals 9

    const/4 v0, 0x0

    .line 224
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2, p0}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/InputStreamReader;

    .line 225
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [C

    .line 226
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    .line 227
    new-instance v2, Lcom/appsflyer/internal/AFc1tSDK;

    invoke-direct {v2, v3}, Lcom/appsflyer/internal/AFc1tSDK;-><init>([C)V

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 51079
    iput-object p0, v2, Lcom/appsflyer/internal/AFc1tSDK;->getMediationNetwork:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 232
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 233
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    .line 235
    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 232
    const-string v3, "Error while loading request from cache"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V

    :goto_0
    return-object v0
.end method

.method private final AFAdRevenueData()V
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1sSDK;

    .line 18016
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1sSDK;->getCurrencyIso4217Code:Ljava/util/List;

    .line 105
    check-cast v0, Ljava/lang/Iterable;

    .line 329
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1vSDK;

    .line 19010
    iget-object v2, v1, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 20317
    new-instance v3, Ljava/io/File;

    .line 21082
    new-instance v4, Ljava/io/File;

    .line 22078
    iget-object v5, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 23025
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 22078
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21082
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "AFRequestCache"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20317
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 109
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1rSDK;->getRevenue:Ljava/util/Map;

    .line 24010
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1rSDK;->getRevenue:Ljava/util/Map;

    .line 25010
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 111
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFe1mSDK;)Ljava/lang/String;
    .locals 1

    .line 310
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFc1rSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFe1mSDK;)Lcom/appsflyer/internal/AFc1vSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51049
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cache do not support this type of events"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getMonetizationNetwork(Lcom/appsflyer/internal/AFe1mSDK;)Lcom/appsflyer/internal/AFc1vSDK;
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1sSDK;

    .line 51053
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1sSDK;->getCurrencyIso4217Code:Ljava/util/List;

    .line 307
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/appsflyer/internal/AFc1vSDK;

    .line 51049
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Ljava/util/List;

    .line 307
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/appsflyer/internal/AFc1vSDK;

    return-object v1
.end method

.method private final getMonetizationNetwork(Ljava/io/File;)Z
    .locals 12

    .line 267
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 51298
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 271
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v2, v1

    check-cast v2, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Could not delete "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " from cache"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/16 v10, 0x78

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final getCurrencyIso4217Code()V
    .locals 12

    .line 87
    const-string v0, "AF_CACHE_VERSION"

    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1rSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 87
    const-string v3, "AFRequestCache"

    if-ne v1, v2, :cond_0

    .line 2082
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 3078
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 4025
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 3078
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2082
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5082
    new-instance v0, Ljava/io/File;

    .line 6078
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 7025
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 6078
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5082
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 8326
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1rSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {v1, v0, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;I)V

    .line 9082
    new-instance v0, Ljava/io/File;

    .line 10078
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 11025
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 10078
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9082
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12082
    new-instance v0, Ljava/io/File;

    .line 13078
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 14025
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 13078
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12082
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 15082
    new-instance v0, Ljava/io/File;

    .line 16078
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 17025
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 16078
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15082
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 98
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 100
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v2, v1

    check-cast v2, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/16 v10, 0x78

    const/4 v11, 0x0

    const-string v4, "Could not init cache"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public final getCurrencyIso4217Code(Ljava/lang/String;)Z
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51090
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 51087
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 51035
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 51087
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51090
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AFRequestCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 51093
    new-instance p1, Ljava/io/File;

    .line 51090
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 51038
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 51090
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51093
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    return v1

    .line 255
    :cond_1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v3, v0

    check-cast v3, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Deleting "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " from cache"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1sSDK;

    .line 51030
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1sSDK;->getCurrencyIso4217Code:Ljava/util/List;

    .line 256
    check-cast v0, Ljava/lang/Iterable;

    .line 339
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appsflyer/internal/AFc1vSDK;

    .line 257
    new-instance v4, Ljava/io/File;

    .line 51025
    iget-object v3, v3, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 51333
    new-instance v5, Ljava/io/File;

    .line 51099
    new-instance v6, Ljava/io/File;

    .line 51096
    iget-object v7, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 51044
    iget-object v7, v7, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 51096
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51099
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51333
    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-direct {p0, v4}, Lcom/appsflyer/internal/AFc1rSDK;->getMonetizationNetwork(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final getMediationNetwork()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFc1tSDK;",
            ">;"
        }
    .end annotation

    .line 190
    const-string v0, "AFRequestCache"

    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v2, v1

    check-cast v2, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "Get Cached Requests"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 46082
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 47078
    iget-object v4, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 48025
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 47078
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46082
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 49082
    new-instance v3, Ljava/io/File;

    .line 50078
    iget-object v4, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 51025
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 50078
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49082
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1sSDK;

    .line 51017
    iget-object v3, v3, Lcom/appsflyer/internal/AFc1sSDK;->getCurrencyIso4217Code:Ljava/util/List;

    .line 200
    check-cast v3, Ljava/lang/Iterable;

    .line 334
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1vSDK;

    .line 51012
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 51320
    new-instance v5, Ljava/io/File;

    .line 51086
    new-instance v6, Ljava/io/File;

    .line 51083
    iget-object v7, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 51031
    iget-object v7, v7, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 51083
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51086
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51320
    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 206
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 336
    new-array v4, v4, [Ljava/io/File;

    .line 207
    :cond_2
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 211
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v4, v3

    check-cast v4, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found cached request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 212
    invoke-static {v2}, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData(Ljava/io/File;)Lcom/appsflyer/internal/AFc1tSDK;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 215
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v3, v2

    check-cast v3, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    const/16 v11, 0x78

    const/4 v12, 0x0

    const-string v5, "Could not get cached requests"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    .line 218
    :cond_5
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v2, v0

    check-cast v2, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Cached Requests"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v1
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFc1tSDK;)Ljava/lang/String;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "AFRequestCache"

    const-string v3, "Cache overflown for type "

    const-string v4, "Cache request: done, cacheKey: "

    const-string v5, "Caching request with URL: "

    const-string v6, ""

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 26076
    :try_start_0
    iget-object v8, v0, Lcom/appsflyer/internal/AFc1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

    .line 120
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27320
    new-instance v9, Ljava/io/File;

    .line 28082
    new-instance v10, Ljava/io/File;

    .line 29078
    iget-object v11, v1, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 30025
    iget-object v11, v11, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 29078
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28082
    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27320
    invoke-direct {v1, v8}, Lcom/appsflyer/internal/AFc1rSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFe1mSDK;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 123
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 126
    :cond_0
    sget-object v8, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v10, v8

    check-cast v10, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v11, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    .line 31064
    iget-object v8, v0, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 126
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 128
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 131
    new-instance v9, Ljava/io/OutputStreamWriter;

    .line 132
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-static {v10, v11, v12}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->create(Ljava/io/FileOutputStream;Ljava/lang/String;Z)Ljava/io/FileOutputStream;

    move-result-object v10

    check-cast v10, Ljava/io/OutputStream;

    .line 133
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    .line 131
    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v9, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :try_start_2
    move-object v10, v9

    check-cast v10, Ljava/io/OutputStreamWriter;

    .line 135
    const-string/jumbo v11, "version="

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 32056
    iget-object v11, v0, Lcom/appsflyer/internal/AFc1tSDK;->getRevenue:Ljava/lang/String;

    .line 136
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v11, 0xa

    .line 137
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    .line 138
    const-string/jumbo v13, "url="

    invoke-virtual {v10, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 33064
    iget-object v13, v0, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 139
    invoke-virtual {v10, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    .line 141
    const-string v13, "data="

    invoke-virtual {v10, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFc1tSDK;->getMonetizationNetwork()[B

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    .line 34076
    iget-object v13, v0, Lcom/appsflyer/internal/AFc1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

    .line 145
    const-string/jumbo v14, "type="

    invoke-virtual {v10, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    .line 148
    invoke-virtual {v10}, Ljava/io/Writer;->flush()V

    .line 149
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    invoke-static {v9, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 150
    sget-object v9, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v13, v9

    check-cast v13, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v14, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35076
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

    .line 151
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37314
    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFc1rSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFe1mSDK;)Lcom/appsflyer/internal/AFc1vSDK;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 38012
    iget v4, v4, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork:I

    .line 37314
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v7

    :goto_0
    if-eqz v4, :cond_6

    .line 36162
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 36163
    iget-object v6, v1, Lcom/appsflyer/internal/AFc1rSDK;->getRevenue:Ljava/util/Map;

    .line 39310
    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFc1rSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFe1mSDK;)Lcom/appsflyer/internal/AFc1vSDK;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 40010
    iget-object v9, v9, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 36163
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-lt v6, v4, :cond_4

    add-int/2addr v6, v12

    sub-int/2addr v6, v4

    .line 41173
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v9, v4

    check-cast v9, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v10, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42320
    new-instance v3, Ljava/io/File;

    .line 43082
    new-instance v4, Ljava/io/File;

    .line 44078
    iget-object v9, v1, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 45025
    iget-object v9, v9, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 44078
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43082
    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v4, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42320
    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFc1rSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFe1mSDK;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41175
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 41176
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 41179
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 41331
    new-instance v2, Lcom/appsflyer/internal/AFc1rSDK$1;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFc1rSDK$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 41180
    check-cast v0, Ljava/lang/Iterable;

    .line 41181
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    .line 41332
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 41183
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 41184
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v9, v3

    check-cast v9, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v10, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_2

    .line 36169
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData()V

    goto :goto_3

    .line 39311
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cache do not support this type of events"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    :goto_3
    move-object v7, v5

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 134
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v8, v7

    :goto_4
    if-eqz v8, :cond_7

    .line 154
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 155
    :cond_7
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v8, v2

    check-cast v8, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v9, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    move-object v11, v0

    check-cast v11, Ljava/lang/Throwable;

    const/16 v16, 0x78

    const/16 v17, 0x0

    const-string v10, "Could not cache request"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v17}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    :goto_5
    return-object v7
.end method

.method public final getMonetizationNetwork()V
    .locals 13

    .line 284
    const-string v0, "AFRequestCache"

    .line 51103
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 51100
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 51048
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 51100
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51103
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51106
    new-instance v1, Ljava/io/File;

    .line 51103
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 51051
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 51103
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51106
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1sSDK;

    .line 51043
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1sSDK;->getCurrencyIso4217Code:Ljava/util/List;

    .line 289
    check-cast v1, Ljava/lang/Iterable;

    .line 341
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1vSDK;

    .line 51038
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 51346
    new-instance v3, Ljava/io/File;

    .line 51112
    new-instance v4, Ljava/io/File;

    .line 51109
    iget-object v5, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 51057
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 51109
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51112
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51346
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 292
    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 293
    sget-object v6, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v7, v6

    check-cast v7, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v8, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ClearCache : Found cached request "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 294
    sget-object v6, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v7, v6

    check-cast v7, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v8, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " from cache"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 295
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51115
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 51112
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 51060
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 51112
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51115
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 51314
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1rSDK;->AFAdRevenueData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 302
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v2, v1

    check-cast v2, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component4:Lcom/appsflyer/internal/AFg1cSDK;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    const/16 v10, 0x78

    const/4 v11, 0x0

    const-string v4, "Could not clearCache request"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method
