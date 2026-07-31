.class public final Lcom/appsflyer/internal/AFf1mSDK;
.super Lcom/appsflyer/internal/AFe1lSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1lSDK<",
        "Lcom/appsflyer/internal/AFf1oSDK;",
        ">;"
    }
.end annotation


# instance fields
.field private final areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

.field public final component1:Lcom/appsflyer/internal/AFf1nSDK;

.field public component2:Lcom/appsflyer/internal/AFf1oSDK;

.field public component3:Lcom/appsflyer/internal/AFi1vSDK;

.field private final component4:Lcom/appsflyer/internal/AFf1qSDK;

.field private final copy:Ljava/lang/String;

.field private final copydefault:Lcom/appsflyer/internal/AFf1iSDK;

.field private final equals:Lcom/appsflyer/internal/AFf1hSDK;

.field private final hashCode:Lcom/appsflyer/internal/AFf1cSDK;

.field private final toString:Lcom/appsflyer/internal/AFd1lSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFf1qSDK;Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFf1iSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFf1hSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFf1nSDK;)V
    .locals 3

    .line 62
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1mSDK;

    const-string v2, "UpdateRemoteConfiguration"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFe1lSDK;-><init>(Lcom/appsflyer/internal/AFe1mSDK;[Lcom/appsflyer/internal/AFe1mSDK;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->component2:Lcom/appsflyer/internal/AFf1oSDK;

    .line 63
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1mSDK;->component4:Lcom/appsflyer/internal/AFf1qSDK;

    .line 64
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1mSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 65
    iput-object p3, p0, Lcom/appsflyer/internal/AFf1mSDK;->hashCode:Lcom/appsflyer/internal/AFf1cSDK;

    .line 66
    iput-object p4, p0, Lcom/appsflyer/internal/AFf1mSDK;->copydefault:Lcom/appsflyer/internal/AFf1iSDK;

    .line 67
    iput-object p5, p0, Lcom/appsflyer/internal/AFf1mSDK;->toString:Lcom/appsflyer/internal/AFd1lSDK;

    .line 68
    iput-object p6, p0, Lcom/appsflyer/internal/AFf1mSDK;->equals:Lcom/appsflyer/internal/AFf1hSDK;

    .line 69
    iput-object p7, p0, Lcom/appsflyer/internal/AFf1mSDK;->copy:Ljava/lang/String;

    .line 70
    iput-object p8, p0, Lcom/appsflyer/internal/AFf1mSDK;->component1:Lcom/appsflyer/internal/AFf1nSDK;

    return-void
.end method

.method private component2()Lcom/appsflyer/internal/AFf1oSDK;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 125
    const-string v0, " seconds"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 126
    iget-object v1, v10, Lcom/appsflyer/internal/AFf1mSDK;->copy:Ljava/lang/String;

    .line 1260
    iget-object v2, v10, Lcom/appsflyer/internal/AFf1mSDK;->hashCode:Lcom/appsflyer/internal/AFf1cSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 1262
    const-string v4, "Dev key is not set, SDK is not started."

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 1267
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v5, "Can\'t create CDN token, domain or version is not provided."

    invoke-virtual {v1, v2, v5}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    .line 1271
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "appsflyersdk.com"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    iget-object v1, v10, Lcom/appsflyer/internal/AFf1mSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 3298
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 4025
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 2165
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1271
    aput-object v1, v5, v3

    .line 5120
    const-string/jumbo v1, "\u2063"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1272
    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFj1bSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_2

    .line 1263
    :cond_2
    :goto_0
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v1, v2, v4}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    :goto_1
    const/4 v12, 0x0

    :goto_2
    if-nez v12, :cond_3

    .line 129
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "can\'t create CDN token, skipping fetch config"

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/appsflyer/internal/AFf1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1oSDK;

    return-object v0

    .line 133
    :cond_3
    :try_start_0
    iget-object v1, v10, Lcom/appsflyer/internal/AFf1mSDK;->equals:Lcom/appsflyer/internal/AFf1hSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1hSDK;->getRevenue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 134
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v5, "Cached config is expired, updating..."

    invoke-virtual {v1, v2, v5}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 135
    iget-object v1, v10, Lcom/appsflyer/internal/AFf1mSDK;->equals:Lcom/appsflyer/internal/AFf1hSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1hSDK;->getCurrencyIso4217Code()Z

    move-result v1

    .line 136
    iget-object v2, v10, Lcom/appsflyer/internal/AFf1mSDK;->equals:Lcom/appsflyer/internal/AFf1hSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFf1hSDK;->AFAdRevenueData()Z

    move-result v2

    .line 6180
    iget-object v5, v10, Lcom/appsflyer/internal/AFf1mSDK;->toString:Lcom/appsflyer/internal/AFd1lSDK;

    const/16 v6, 0x5dc

    invoke-virtual {v5, v1, v2, v12, v6}, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork(ZZLjava/lang/String;I)Lcom/appsflyer/internal/AFd1jSDK;

    move-result-object v1

    .line 6184
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1jSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object v13

    .line 6186
    invoke-virtual {v13}, Lcom/appsflyer/internal/AFe1xSDK;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6187
    invoke-virtual {v13}, Lcom/appsflyer/internal/AFe1xSDK;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFi1wSDK;

    .line 6188
    const-string/jumbo v2, "x-amz-meta-af-auth-v1"

    invoke-virtual {v13, v2}, Lcom/appsflyer/internal/AFe1xSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6189
    const-string v5, "CF-Cache-Status"

    invoke-virtual {v13, v5}, Lcom/appsflyer/internal/AFe1xSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6190
    iget-object v5, v10, Lcom/appsflyer/internal/AFf1mSDK;->hashCode:Lcom/appsflyer/internal/AFf1cSDK;

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 6191
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_3

    .line 6195
    :cond_4
    iget-object v4, v10, Lcom/appsflyer/internal/AFf1mSDK;->component4:Lcom/appsflyer/internal/AFf1qSDK;

    invoke-virtual {v4, v1, v2, v12, v5}, Lcom/appsflyer/internal/AFf1qSDK;->getRevenue(Lcom/appsflyer/internal/AFi1wSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFi1rSDK;

    move-result-object v2

    .line 6196
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFi1rSDK;->getRevenue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6197
    iget-object v4, v10, Lcom/appsflyer/internal/AFf1mSDK;->equals:Lcom/appsflyer/internal/AFf1hSDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFf1hSDK;->getMonetizationNetwork()J

    move-result-wide v4

    .line 6198
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v14, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "using max-age fallback: "

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v14, v11}, Lcom/appsflyer/internal/AFh1ySDK;->v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 6199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 6200
    iget-object v7, v10, Lcom/appsflyer/internal/AFf1mSDK;->copydefault:Lcom/appsflyer/internal/AFf1iSDK;

    .line 10058
    iget-object v11, v1, Lcom/appsflyer/internal/AFi1wSDK;->getRevenue:Ljava/lang/String;

    .line 9103
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v11, 0x2

    .line 9104
    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 9105
    iget-object v11, v7, Lcom/appsflyer/internal/AFf1iSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v10, "af_remote_config"

    invoke-interface {v11, v10, v3}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    .line 8052
    iget-object v3, v7, Lcom/appsflyer/internal/AFf1iSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1wSDK;

    iput-object v3, v7, Lcom/appsflyer/internal/AFf1iSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1wSDK;

    .line 8053
    iget-object v3, v7, Lcom/appsflyer/internal/AFf1iSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v10, "af_rc_timestamp"

    invoke-interface {v3, v10, v14, v15}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;J)V

    .line 8054
    iget-object v3, v7, Lcom/appsflyer/internal/AFf1iSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v10, "af_rc_max_age"

    invoke-interface {v3, v10, v4, v5}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;J)V

    .line 8055
    iput-object v1, v7, Lcom/appsflyer/internal/AFf1iSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1wSDK;

    .line 8056
    iput-wide v14, v7, Lcom/appsflyer/internal/AFf1iSDK;->getCurrencyIso4217Code:J

    .line 8057
    iput-wide v4, v7, Lcom/appsflyer/internal/AFf1iSDK;->getRevenue:J

    .line 6201
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Config successfully updated, timeToLive: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 11024
    iget-object v5, v2, Lcom/appsflyer/internal/AFi1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1uSDK;

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v8

    move-object v7, v13

    .line 6202
    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFf1mSDK;->getRevenue(Ljava/lang/String;JLcom/appsflyer/internal/AFi1uSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1xSDK;)V

    .line 6203
    sget-object v0, Lcom/appsflyer/internal/AFf1oSDK;->getRevenue:Lcom/appsflyer/internal/AFf1oSDK;

    return-object v0

    .line 12024
    :cond_5
    iget-object v5, v2, Lcom/appsflyer/internal/AFi1rSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1uSDK;

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v8

    move-object v7, v13

    .line 6205
    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFf1mSDK;->getRevenue(Ljava/lang/String;JLcom/appsflyer/internal/AFi1uSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1xSDK;)V

    .line 6206
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "fetched config is not valid (MITM?) refuse to use it."

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 6207
    sget-object v0, Lcom/appsflyer/internal/AFf1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1oSDK;

    return-object v0

    .line 6192
    :cond_6
    :goto_3
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v0, v1, v4}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 6193
    sget-object v0, Lcom/appsflyer/internal/AFf1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1oSDK;

    return-object v0

    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v8

    move-object v7, v13

    .line 6210
    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFf1mSDK;->getRevenue(Ljava/lang/String;JLcom/appsflyer/internal/AFi1uSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1xSDK;)V

    .line 6211
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to fetch remote config from CDN with status code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/appsflyer/internal/AFe1xSDK;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 6212
    sget-object v0, Lcom/appsflyer/internal/AFf1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1oSDK;

    return-object v0

    .line 139
    :cond_8
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "active config is valid, skipping fetch"

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/appsflyer/internal/AFf1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFf1oSDK;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 158
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to update remote config: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v8

    move-object v8, v10

    move-object v9, v0

    .line 160
    invoke-direct/range {v1 .. v9}, Lcom/appsflyer/internal/AFf1mSDK;->getMediationNetwork(Ljava/lang/String;JLcom/appsflyer/internal/AFe1xSDK;Lcom/appsflyer/internal/AFi1wSDK;Lcom/appsflyer/internal/AFi1uSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-nez v1, :cond_9

    .line 164
    sget-object v0, Lcom/appsflyer/internal/AFf1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1oSDK;

    return-object v0

    .line 162
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InterruptedException;

    throw v0

    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to fetch remote config: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 147
    instance-of v1, v0, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    if-eqz v1, :cond_a

    .line 148
    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    invoke-virtual {v1}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->getRawResponse()Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object v1

    move-object v5, v1

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v8

    move-object v8, v10

    move-object v9, v0

    .line 150
    invoke-direct/range {v1 .. v9}, Lcom/appsflyer/internal/AFf1mSDK;->getMediationNetwork(Ljava/lang/String;JLcom/appsflyer/internal/AFe1xSDK;Lcom/appsflyer/internal/AFi1wSDK;Lcom/appsflyer/internal/AFi1uSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_b

    .line 155
    sget-object v0, Lcom/appsflyer/internal/AFf1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1oSDK;

    return-object v0

    .line 153
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/InterruptedIOException;

    throw v0
.end method

.method private getMediationNetwork(Ljava/lang/String;JLcom/appsflyer/internal/AFe1xSDK;Lcom/appsflyer/internal/AFi1wSDK;Lcom/appsflyer/internal/AFi1uSDK;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFi1wSDK;",
            "Lcom/appsflyer/internal/AFi1uSDK;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    if-eqz v0, :cond_0

    .line 13059
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1xSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFd1aSDK;

    .line 237
    iget-wide v3, v3, Lcom/appsflyer/internal/AFd1aSDK;->getRevenue:J

    .line 238
    invoke-virtual/range {p4 .. p4}, Lcom/appsflyer/internal/AFe1xSDK;->getStatusCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    move v12, v0

    .line 241
    instance-of v0, v2, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 244
    check-cast v2, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    invoke-virtual {v2}, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;->getMetrics()Lcom/appsflyer/internal/AFd1aSDK;

    move-result-object v2

    iget-wide v2, v2, Lcom/appsflyer/internal/AFd1aSDK;->getRevenue:J

    move-object v15, v0

    move-wide v8, v2

    goto :goto_1

    :cond_1
    move-object v15, v2

    move-wide v8, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 14053
    iget-object v0, v1, Lcom/appsflyer/internal/AFi1wSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object v6, v0

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v10, v0, p2

    .line 253
    new-instance v0, Lcom/appsflyer/internal/AFi1vSDK;

    move-object v5, v0

    move-object/from16 v7, p1

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v5 .. v15}, Lcom/appsflyer/internal/AFi1vSDK;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/appsflyer/internal/AFi1uSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appsflyer/internal/AFf1mSDK;->component3:Lcom/appsflyer/internal/AFi1vSDK;

    return-void
.end method

.method private getRevenue(Ljava/lang/String;JLcom/appsflyer/internal/AFi1uSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1xSDK;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/appsflyer/internal/AFi1uSDK;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Lcom/appsflyer/internal/AFi1wSDK;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 221
    invoke-virtual/range {p6 .. p6}, Lcom/appsflyer/internal/AFe1xSDK;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFi1wSDK;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    if-eqz p5, :cond_1

    move-object/from16 v9, p5

    goto :goto_1

    :cond_1
    move-object v9, v0

    :goto_1
    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p6

    move-object v8, p4

    .line 226
    invoke-direct/range {v2 .. v10}, Lcom/appsflyer/internal/AFf1mSDK;->getMediationNetwork(Ljava/lang/String;JLcom/appsflyer/internal/AFe1xSDK;Lcom/appsflyer/internal/AFi1wSDK;Lcom/appsflyer/internal/AFi1uSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrencyIso4217Code()J
    .locals 2

    const-wide/16 v0, 0x5dc

    return-wide v0
.end method

.method public final getMediationNetwork()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1mSDK;->component2()Lcom/appsflyer/internal/AFf1oSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->component2:Lcom/appsflyer/internal/AFf1oSDK;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    sget-object v1, Lcom/appsflyer/internal/AFf1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1oSDK;

    if-ne v0, v1, :cond_0

    .line 96
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0

    .line 98
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getRevenue:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object v4, v0

    .line 90
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "RC update config failed"

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 92
    sget-object v0, Lcom/appsflyer/internal/AFf1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1oSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->component2:Lcom/appsflyer/internal/AFf1oSDK;

    .line 93
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0

    .line 87
    :catch_2
    sget-object v0, Lcom/appsflyer/internal/AFf1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1oSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->component2:Lcom/appsflyer/internal/AFf1oSDK;

    .line 88
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0
.end method
