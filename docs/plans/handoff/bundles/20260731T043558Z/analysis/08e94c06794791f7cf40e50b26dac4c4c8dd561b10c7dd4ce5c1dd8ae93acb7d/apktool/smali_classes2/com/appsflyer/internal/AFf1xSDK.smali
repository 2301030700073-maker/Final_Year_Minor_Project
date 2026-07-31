.class public final Lcom/appsflyer/internal/AFf1xSDK;
.super Lcom/appsflyer/internal/AFe1lSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1lSDK<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final component4:I


# instance fields
.field private final areAllFieldsValid:Lcom/appsflyer/internal/AFa1rSDK;

.field private final component1:Lcom/appsflyer/internal/AFa1gSDK;

.field private component2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final component3:Landroid/net/Uri;

.field private final equals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/appsflyer/internal/AFf1xSDK;->component4:I

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFa1rSDK;Lcom/appsflyer/internal/AFa1gSDK;Landroid/net/Uri;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1rSDK;",
            "Lcom/appsflyer/internal/AFa1gSDK;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->component4:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v2, 0x0

    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v3, v1, v2

    const-string v2, "ResolveEsp"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFe1lSDK;-><init>(Lcom/appsflyer/internal/AFe1mSDK;[Lcom/appsflyer/internal/AFe1mSDK;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1rSDK;

    .line 62
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1xSDK;->component1:Lcom/appsflyer/internal/AFa1gSDK;

    .line 63
    iput-object p3, p0, Lcom/appsflyer/internal/AFf1xSDK;->component3:Landroid/net/Uri;

    .line 64
    iput-object p4, p0, Lcom/appsflyer/internal/AFf1xSDK;->equals:Ljava/util/List;

    return-void
.end method

.method private getMonetizationNetwork(Ljava/lang/String;)Z
    .locals 3

    .line 161
    const-string v0, "af_tranid="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Validate if link "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " belongs to ESP domains: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->equals:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->equals:Ljava/util/List;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 170
    const-string v0, "MalformedURLException ESP link"

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static r_(Landroid/net/Uri;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ESP deeplink resolving is started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLConnection;

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 141
    sget v1, Lcom/appsflyer/internal/AFf1xSDK;->component4:I

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 142
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 143
    const-string v1, "User-agent"

    const-string v2, "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus 5 Build/M4B30Z)"

    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "af-esp"

    const-string v2, "6.17.3"

    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 146
    const-string/jumbo v2, "status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x12c

    if-gt v2, v1, :cond_0

    const/16 v2, 0x131

    if-gt v1, v2, :cond_0

    .line 148
    const-string/jumbo v1, "res"

    const-string v2, "Location"

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    const-string p0, "ESP deeplink resolving is finished"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 153
    const-string v1, "error"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final AFAdRevenueData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrencyIso4217Code()J
    .locals 2

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public final getMediationNetwork()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->component3:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFf1xSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1rSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->component1:Lcom/appsflyer/internal/AFa1gSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFf1xSDK;->component3:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFa1rSDK;->j_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 88
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getRevenue:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 91
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->component3:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    move-object v5, v1

    :goto_0
    const/4 v7, 0x5

    if-ge v6, v7, :cond_3

    .line 96
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFf1xSDK;->r_(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "res"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    const-string/jumbo v5, "status"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 99
    const-string v7, "error"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 100
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFf1xSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 102
    invoke-virtual {v4, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move-object v9, v5

    move-object v5, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_0

    :cond_2
    move-object v9, v5

    move-object v5, v0

    move-object v0, v1

    move-object v1, v9

    .line 108
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 109
    const-string/jumbo v7, "res"

    if-eqz v0, :cond_4

    move-object v8, v0

    goto :goto_1

    :cond_4
    const-string v8, ""

    :goto_1
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v7, "status"

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 112
    const-string v1, "error"

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_6
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 115
    const-string/jumbo v1, "redirects"

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_7
    const-string v1, "latency"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->component1:Lcom/appsflyer/internal/AFa1gSDK;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->component1:Lcom/appsflyer/internal/AFa1gSDK;

    const-string v3, "af_deeplink_r"

    invoke-virtual {v2, v3, v6}, Lcom/appsflyer/internal/AFa1gSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->component1:Lcom/appsflyer/internal/AFa1gSDK;

    const-string v3, "af_deeplink"

    iget-object v4, p0, Lcom/appsflyer/internal/AFf1xSDK;->component3:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFa1gSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1rSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->component1:Lcom/appsflyer/internal/AFa1gSDK;

    if-eqz v0, :cond_8

    .line 127
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->component3:Landroid/net/Uri;

    :goto_3
    iget-object v3, p0, Lcom/appsflyer/internal/AFf1xSDK;->component3:Landroid/net/Uri;

    .line 125
    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/internal/AFa1rSDK;->j_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 131
    iput-object v6, p0, Lcom/appsflyer/internal/AFf1xSDK;->component2:Ljava/util/Map;

    .line 132
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getRevenue:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0

    :catchall_0
    move-exception v0

    .line 124
    monitor-exit v1

    throw v0
.end method
