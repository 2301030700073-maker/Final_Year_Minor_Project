.class public final Lcom/appsflyer/internal/AFa1rSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFAdRevenueData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public areAllFieldsValid:[Ljava/lang/String;

.field public final component1:Lcom/appsflyer/internal/AFc1bSDK;

.field public component2:J

.field public final component4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public getCurrencyIso4217Code:Landroid/content/Intent;

.field public getMediationNetwork:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public getMonetizationNetwork:Ljava/lang/String;

.field public getRevenue:Lcom/appsflyer/deeplink/DeepLinkListener;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1rSDK;->AFAdRevenueData:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1rSDK;->component4:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    return-void
.end method

.method private static getMediationNetwork(Ljava/lang/String;)V
    .locals 3

    .line 288
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_0

    .line 291
    :try_start_0
    const-string v1, "Calling onAppOpenAttributionFailure with: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 292
    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onAttributionFailure(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private h_(Landroid/content/Intent;Lcom/appsflyer/internal/AFa1gSDK;)Z
    .locals 8

    .line 6214
    const-string v0, "android.intent.action.VIEW"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6215
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 97
    :goto_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFa1rSDK;->getCurrencyIso4217Code:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 7214
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7215
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez p1, :cond_2

    .line 8146
    const-string v3, "Could not extract deeplink from null intent"

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 8149
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 8150
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1rSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    if-nez v3, :cond_3

    goto :goto_4

    .line 8153
    :cond_3
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1rSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_5

    :goto_2
    move-object v6, v1

    goto :goto_3

    .line 9169
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 9170
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    .line 9173
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_2

    .line 9177
    :cond_7
    invoke-direct {p0, v7, v6}, Lcom/appsflyer/internal/AFa1rSDK;->i_(Ljava/lang/Object;Ljava/util/Iterator;)Landroid/net/Uri;

    move-result-object v6

    :goto_3
    if-eqz v6, :cond_4

    .line 8156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found deeplink in push payload at "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 8157
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1rSDK;->AFAdRevenueData:Ljava/util/List;

    const-string/jumbo v3, "payloadKey"

    const-string v4, ""

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10069
    iget-object v5, p2, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-static {v5}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11079
    iget-object v1, p2, Lcom/appsflyer/internal/AFa1gSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1hSDK;

    if-eqz v1, :cond_8

    iget-object v3, p2, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {v1, v3}, Lcom/appsflyer/internal/AFa1hSDK;->getMonetizationNetwork(Ljava/util/Map;)V

    :cond_8
    move-object v1, v6

    :cond_9
    :goto_4
    const/4 v3, 0x1

    .line 99
    const-string v4, " w/af_consumed"

    const/4 v5, 0x0

    const-string v6, "af_consumed"

    if-eqz v2, :cond_b

    .line 100
    new-instance v0, Lcom/appsflyer/internal/AFj1kSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFj1kSDK;-><init>(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {v0, v6}, Lcom/appsflyer/internal/AFj1kSDK;->getRevenue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5}, Lcom/appsflyer/internal/AFj1kSDK;->I_(Ljava/lang/String;J)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, p2, v2}, Lcom/appsflyer/internal/AFa1rSDK;->g_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/net/Uri;)V

    return v3

    .line 106
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "skipping re-use of previously consumed deep link: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v5

    :cond_b
    if-eqz v0, :cond_d

    .line 113
    new-instance p1, Lcom/appsflyer/internal/AFj1kSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1rSDK;->getCurrencyIso4217Code:Landroid/content/Intent;

    invoke-direct {p1, v1}, Lcom/appsflyer/internal/AFj1kSDK;-><init>(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p1, v6}, Lcom/appsflyer/internal/AFj1kSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v6, v1, v2}, Lcom/appsflyer/internal/AFj1kSDK;->I_(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, p2, v0}, Lcom/appsflyer/internal/AFa1rSDK;->g_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/net/Uri;)V

    return v3

    .line 119
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "skipping re-use of previously consumed trampoline deep link: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v5

    :cond_d
    if-eqz v1, :cond_f

    .line 125
    new-instance v0, Lcom/appsflyer/internal/AFj1kSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFj1kSDK;-><init>(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {v0, v6}, Lcom/appsflyer/internal/AFj1kSDK;->getRevenue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5}, Lcom/appsflyer/internal/AFj1kSDK;->I_(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p2, v1}, Lcom/appsflyer/internal/AFa1rSDK;->g_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/net/Uri;)V

    return v3

    .line 131
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "skipping re-use of previously consumed deep link from push: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v5

    .line 137
    :cond_f
    const-string p1, "No deep link detected"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return v5
.end method

.method private i_(Ljava/lang/Object;Ljava/util/Iterator;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 182
    :goto_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    return-object v1

    .line 195
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    const-string/jumbo p2, "recursiveSearch error"

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public final f_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    check-cast v0, Lcom/appsflyer/internal/AFc1dSDK;

    if-eqz p3, :cond_0

    .line 1147
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    if-eqz p3, :cond_0

    .line 2019
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, v0, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 69
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFa1rSDK;->h_(Landroid/content/Intent;Lcom/appsflyer/internal/AFa1gSDK;)Z

    move-result p1

    const-string p2, "ddl_sent"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/appsflyer/internal/AFa1rSDK;->getRevenue:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    .line 71
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object p1

    .line 3290
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string p3, "appsFlyerCount"

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    .line 72
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 73
    new-instance p1, Lcom/appsflyer/internal/AFa1pSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFa1pSDK;-><init>()V

    .line 74
    iget-object p3, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object p3

    new-instance v0, Lcom/appsflyer/internal/AFf1wSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v0, p1, v1}, Lcom/appsflyer/internal/AFf1wSDK;-><init>(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 4089
    iget-object p1, p3, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v1, p3, v0}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;Z)V

    return-void
.end method

.method public final g_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/net/Uri;)V
    .locals 2

    .line 85
    new-instance v0, Lcom/appsflyer/internal/AFf1xSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1rSDK;->component4:Ljava/util/List;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/appsflyer/internal/AFf1xSDK;-><init>(Lcom/appsflyer/internal/AFa1rSDK;Lcom/appsflyer/internal/AFa1gSDK;Landroid/net/Uri;Ljava/util/List;)V

    .line 86
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object p1

    .line 5089
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v1, p1, v0}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1rSDK;->getCurrencyIso4217Code:Landroid/content/Intent;

    return-void
.end method

.method public final getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1rSDK;->getRevenue:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "Error occurred: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 239
    new-instance p1, Lcom/appsflyer/deeplink/DeepLinkResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    return-void

    .line 241
    :cond_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public final getMediationNetwork(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1rSDK;->getRevenue:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 250
    :try_start_0
    invoke-static {p1}, Lcom/appsflyer/deeplink/DeepLink;->getMediationNetwork(Ljava/util/Map;)Lcom/appsflyer/deeplink/DeepLink;

    move-result-object p1

    .line 12140
    iget-object v1, p1, Lcom/appsflyer/deeplink/DeepLink;->getCurrencyIso4217Code:Lorg/json/JSONObject;

    const-string v2, "is_deferred"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, p1, v0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 252
    :try_start_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v3, "Error occurred"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 253
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, v0, p1}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, v0, v0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 256
    throw p1

    .line 13276
    :cond_0
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_1

    .line 13279
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling onAppOpenAttribution with:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 13280
    invoke-interface {v0, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onAppOpenAttribution(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 13282
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1rSDK;->getRevenue:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling onDeepLinking with:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1rSDK;->getRevenue:Lcom/appsflyer/deeplink/DeepLinkListener;

    invoke-interface {v0, p1}, Lcom/appsflyer/deeplink/DeepLinkListener;->onDeepLinking(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 271
    :cond_0
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    const-string/jumbo v1, "skipping, no callback registered"

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    return-void
.end method

.method public final j_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 11

    .line 333
    const-string v0, "af_deeplink"

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1gSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_a

    .line 334
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_4

    .line 14378
    :cond_0
    const-string v3, "fb\\d*?://authorize.*"

    .line 14379
    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 14380
    const-string v3, "access_token"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x3f

    .line 15413
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move-object v4, v2

    goto :goto_0

    .line 15417
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 14382
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    .line 14385
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14386
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 14387
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 14389
    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 14391
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 14392
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 14393
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 14394
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 14395
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 14396
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 14398
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 14399
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 14400
    :cond_4
    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 14401
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14403
    :cond_5
    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 14406
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 336
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork:Ljava/util/Map;

    if-eqz v4, :cond_9

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 337
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 338
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 339
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 340
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 341
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_5

    .line 343
    :cond_8
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appended_query_params"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16047
    iget-object v5, p1, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17079
    iget-object v3, p1, Lcom/appsflyer/internal/AFa1gSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1hSDK;

    if-eqz v3, :cond_9

    iget-object v4, p1, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {v3, v4}, Lcom/appsflyer/internal/AFa1hSDK;->getMonetizationNetwork(Ljava/util/Map;)V

    .line 347
    :cond_9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18047
    iget-object v3, p1, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19079
    iget-object v0, p1, Lcom/appsflyer/internal/AFa1gSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1hSDK;

    if-eqz v0, :cond_a

    iget-object v1, p1, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFa1hSDK;->getMonetizationNetwork(Ljava/util/Map;)V

    .line 350
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 351
    const-string v1, "link"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_b

    .line 353
    const-string/jumbo v1, "original_link"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_b
    iget-object p3, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object p3

    invoke-static {p3, v0, p2}, Lcom/appsflyer/internal/AFj1iSDK;->M_(Landroid/content/pm/PackageInfo;Ljava/util/Map;Landroid/net/Uri;)Ljava/util/Map;

    .line 360
    new-instance p3, Lcom/appsflyer/internal/AFf1vSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {p3, v1, v3, p2}, Lcom/appsflyer/internal/AFf1vSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;Ljava/util/UUID;Landroid/net/Uri;)V

    .line 361
    invoke-virtual {p3}, Lcom/appsflyer/internal/AFf1vSDK;->copy()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 362
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "isBrandedDomain"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20047
    iget-object v2, p1, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21079
    iget-object p2, p1, Lcom/appsflyer/internal/AFa1gSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1hSDK;

    if-eqz p2, :cond_c

    iget-object p1, p1, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {p2, p1}, Lcom/appsflyer/internal/AFa1hSDK;->getMonetizationNetwork(Ljava/util/Map;)V

    .line 364
    :cond_c
    invoke-virtual {p3}, Lcom/appsflyer/internal/AFf1vSDK;->equals()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 22423
    new-instance p1, Lcom/appsflyer/internal/AFa1rSDK$4;

    invoke-direct {p1, p0, v0}, Lcom/appsflyer/internal/AFa1rSDK$4;-><init>(Lcom/appsflyer/internal/AFa1rSDK;Ljava/util/Map;)V

    .line 23080
    iput-object p1, p3, Lcom/appsflyer/internal/AFf1vSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFf1vSDK$AFa1vSDK;

    .line 367
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object p1

    .line 24089
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v0, p1, p3}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 369
    :cond_d
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork(Ljava/util/Map;)V

    return-void
.end method
