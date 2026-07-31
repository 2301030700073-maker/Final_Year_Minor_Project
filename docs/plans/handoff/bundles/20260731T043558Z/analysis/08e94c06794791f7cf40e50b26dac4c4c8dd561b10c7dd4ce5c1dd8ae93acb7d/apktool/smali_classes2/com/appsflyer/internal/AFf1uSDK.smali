.class public Lcom/appsflyer/internal/AFf1uSDK;
.super Lcom/appsflyer/internal/AFe1eSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1eSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final AFLogger:[Lcom/appsflyer/internal/AFe1mSDK;


# instance fields
.field private final AFInAppEventType:Lcom/appsflyer/internal/AFf1gSDK;

.field protected final areAllFieldsValid:Lcom/appsflyer/internal/AFc1oSDK;

.field protected final copy:Lcom/appsflyer/internal/AFg1rSDK;

.field private final copydefault:Lcom/appsflyer/internal/AFe1ySDK;

.field private final equals:Lcom/appsflyer/internal/AFf1lSDK;

.field private final hashCode:Lcom/appsflyer/internal/AFc1pSDK;

.field private final registerClient:Lcom/appsflyer/internal/AFc1gSDK;

.field private final toString:Lcom/appsflyer/internal/AFh1jSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 53
    new-array v0, v0, [Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v1, 0x0

    sget-object v2, Lcom/appsflyer/internal/AFe1mSDK;->component3:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/appsflyer/internal/AFe1mSDK;->component2:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/appsflyer/internal/AFe1mSDK;->copy:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v2, v0, v1

    sput-object v0, Lcom/appsflyer/internal/AFf1uSDK;->AFLogger:[Lcom/appsflyer/internal/AFe1mSDK;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFf1uSDK;-><init>(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;)V
    .locals 5

    .line 66
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1mSDK;

    sget-object v2, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v4, Lcom/appsflyer/internal/AFe1mSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v4, v1, v2

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/appsflyer/internal/AFe1eSDK;-><init>(Lcom/appsflyer/internal/AFe1mSDK;[Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1uSDK;->toString:Lcom/appsflyer/internal/AFh1jSDK;

    .line 72
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1ySDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1uSDK;->copydefault:Lcom/appsflyer/internal/AFe1ySDK;

    .line 73
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1uSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1oSDK;

    .line 74
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->component1()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1uSDK;->equals:Lcom/appsflyer/internal/AFf1lSDK;

    .line 75
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1uSDK;->registerClient:Lcom/appsflyer/internal/AFc1gSDK;

    .line 76
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1uSDK;->hashCode:Lcom/appsflyer/internal/AFc1pSDK;

    .line 77
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->component4()Lcom/appsflyer/internal/AFg1rSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1uSDK;->copy:Lcom/appsflyer/internal/AFg1rSDK;

    .line 78
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->force()Lcom/appsflyer/internal/AFf1gSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFf1gSDK;

    .line 1230
    sget-object p1, Lcom/appsflyer/internal/AFf1uSDK;->AFLogger:[Lcom/appsflyer/internal/AFe1mSDK;

    array-length p2, p1

    :goto_0
    if-ge v3, p2, :cond_0

    aget-object p3, p1, v3

    .line 2245
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1lSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1mSDK;

    if-eq v0, p3, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1236
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1uSDK;->toString:Lcom/appsflyer/internal/AFh1jSDK;

    .line 3191
    iget p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->component1:I

    .line 4245
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1lSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1mSDK;

    if-gtz p1, :cond_1

    .line 1242
    sget-object p1, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    if-eq p2, p1, :cond_2

    .line 1243
    sget-object p1, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 5088
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1lSDK;->getMediationNetwork:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1247
    :cond_1
    sget-object p1, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 6101
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1lSDK;->getRevenue:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->copy:Lcom/appsflyer/internal/AFg1rSDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1rSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V

    return-void
.end method

.method protected final areAllFieldsValid()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->toString:Lcom/appsflyer/internal/AFh1jSDK;

    .line 21102
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    return-object v0
.end method

.method protected areAllFieldsValid(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->copy:Lcom/appsflyer/internal/AFg1rSDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1rSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)V

    return-void
.end method

.method protected copydefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->copy:Lcom/appsflyer/internal/AFg1rSDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1rSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V

    return-void
.end method

.method protected getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 8

    .line 22151
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1uSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 22152
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1uSDK;->getRevenue(Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 22153
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1uSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 22154
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1uSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 22155
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1uSDK;->areAllFieldsValid(Lcom/appsflyer/internal/AFh1jSDK;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 22157
    :try_start_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component1:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v3, "Error while collecting payload params"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 123
    :goto_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1eSDK;->component2:Lcom/appsflyer/internal/AFf1cSDK;

    .line 23172
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 124
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 125
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1eSDK;->component2:Lcom/appsflyer/internal/AFf1cSDK;

    .line 24172
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 125
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v2, 0x32fdfe11

    const v3, -0x32fdfe10

    invoke-static {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFf1cSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 126
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->hashCode:Lcom/appsflyer/internal/AFc1pSDK;

    const-string v1, "com.appsflyer.security.enable"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1eSDK;->component2:Lcom/appsflyer/internal/AFf1cSDK;

    invoke-static {p1}, Lcom/appsflyer/internal/AFf1cSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->areAllFieldsValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1eSDK;->component2:Lcom/appsflyer/internal/AFf1cSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1cSDK;->getRevenue()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 25250
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1lSDK;->getMediationNetwork:Ljava/util/Set;

    .line 135
    sget-object v1, Lcom/appsflyer/internal/AFe1mSDK;->copydefault:Lcom/appsflyer/internal/AFe1mSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    sget-object v1, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 137
    :goto_2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1uSDK;->component4()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v1, "appsFlyerCount"

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(I)Lcom/appsflyer/internal/AFh1jSDK;

    .line 26252
    :cond_4
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->component3()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27172
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 26255
    invoke-static {v0}, Lcom/appsflyer/internal/AFj1aSDK;->AFAdRevenueData(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 26256
    const-string v1, "host"

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1uSDK;->copydefault:Lcom/appsflyer/internal/AFe1ySDK;

    .line 28074
    new-instance v3, Lcom/appsflyer/internal/AFe1zSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1ySDK;->getCurrencyIso4217Code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1ySDK;->getMonetizationNetwork()Ljava/lang/String;

    move-result-object v2

    .line 29129
    invoke-static {}, Lcom/appsflyer/internal/AFe1ySDK;->getRevenue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 29130
    sget-object v5, Lcom/appsflyer/internal/AFe1tSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFe1tSDK;

    goto :goto_3

    .line 29132
    :cond_5
    sget-object v5, Lcom/appsflyer/internal/AFe1tSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1tSDK;

    .line 28074
    :goto_3
    invoke-direct {v3, v4, v2, v5}, Lcom/appsflyer/internal/AFe1zSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFe1tSDK;)V

    .line 30010
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 30011
    const-string/jumbo v4, "name"

    iget-object v5, v3, Lcom/appsflyer/internal/AFe1zSDK;->AFAdRevenueData:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30012
    iget-object v4, v3, Lcom/appsflyer/internal/AFe1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1tSDK;

    sget-object v5, Lcom/appsflyer/internal/AFe1tSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFe1tSDK;

    if-eq v4, v5, :cond_6

    .line 30013
    const-string/jumbo v4, "method"

    iget-object v5, v3, Lcom/appsflyer/internal/AFe1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1tSDK;

    .line 31021
    iget-object v5, v5, Lcom/appsflyer/internal/AFe1tSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 30013
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30015
    :cond_6
    iget-object v4, v3, Lcom/appsflyer/internal/AFe1zSDK;->getRevenue:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    .line 30016
    :cond_7
    const-string/jumbo v4, "prefix"

    iget-object v3, v3, Lcom/appsflyer/internal/AFe1zSDK;->getRevenue:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26256
    :cond_8
    :goto_4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32266
    :cond_9
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->hashCode:Lcom/appsflyer/internal/AFc1pSDK;

    const-string v1, "AF_PREINSTALL_DISABLED"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33172
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 32269
    invoke-static {v0}, Lcom/appsflyer/internal/AFj1aSDK;->AFAdRevenueData(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 32270
    const-string/jumbo v1, "preinstall_disabled"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34275
    :cond_a
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFf1gSDK;

    .line 35172
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 34277
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;

    move-result-object p1

    .line 34275
    invoke-interface {v0, v1, p1}, Lcom/appsflyer/internal/AFf1gSDK;->getMediationNetwork(Ljava/util/Map;Lcom/appsflyer/internal/AFe1mSDK;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    move-object v3, p1

    .line 145
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->component1:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "Error while preparing to send event"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    return-void
.end method

.method protected getMonetizationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->copy:Lcom/appsflyer/internal/AFg1rSDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1rSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V

    return-void
.end method

.method protected final getRevenue(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 84
    const-string v2, "*Non-printing character*"

    const-string v3, "JSON toString of eventParams map returns null"

    const-string v4, "\\p{C}"

    const-string v5, "Unexpected error"

    const-string v6, ""

    iget-object v0, v1, Lcom/appsflyer/internal/AFf1uSDK;->toString:Lcom/appsflyer/internal/AFh1jSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFf1uSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 88
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1uSDK;->toString:Lcom/appsflyer/internal/AFh1jSDK;

    .line 7172
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 88
    const-string/jumbo v7, "meta"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8309
    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1uSDK;->equals:Lcom/appsflyer/internal/AFf1lSDK;

    .line 9064
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1lSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1iSDK;

    .line 10062
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1iSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1wSDK;

    .line 11068
    iget-object v0, v0, Lcom/appsflyer/internal/AFi1wSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1zSDK;

    .line 12011
    iget-object v0, v0, Lcom/appsflyer/internal/AFi1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1xSDK;

    .line 13016
    iget-wide v8, v0, Lcom/appsflyer/internal/AFi1xSDK;->getRevenue:D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 8315
    :goto_0
    invoke-static {v8, v9}, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8316
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1uSDK;->toString:Lcom/appsflyer/internal/AFh1jSDK;

    .line 14172
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 8316
    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1eSDK;->component1:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v7, v1, Lcom/appsflyer/internal/AFf1uSDK;->toString:Lcom/appsflyer/internal/AFh1jSDK;

    iget-object v8, v1, Lcom/appsflyer/internal/AFf1uSDK;->registerClient:Lcom/appsflyer/internal/AFc1gSDK;

    move-object/from16 v9, p1

    invoke-virtual {v0, v7, v9, v8}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFc1gSDK;)Lcom/appsflyer/internal/AFd1jSDK;

    move-result-object v7

    .line 95
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1uSDK;->toString:Lcom/appsflyer/internal/AFh1jSDK;

    .line 15172
    iget-object v8, v0, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    const/4 v9, 0x0

    .line 16167
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16168
    :try_start_2
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v11, :cond_1

    .line 17208
    :try_start_3
    invoke-virtual {v11, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_8

    .line 17211
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v11, v9

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v11, v9

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v10, v9

    move-object v11, v10

    .line 16183
    :goto_1
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v2, v3, v5, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v2, v6

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move-object v10, v9

    move-object v11, v10

    .line 16171
    :goto_3
    sget-object v12, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v13, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v14, "JSONObject return null String object. Trying to create AFJsonObject."

    invoke-virtual {v12, v13, v14, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16173
    :try_start_4
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v8, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v12, -0x3535b7f2    # -6628359.0f

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    add-int/lit16 v13, v13, 0xc4

    invoke-static {v8}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v14

    add-int/lit16 v14, v14, 0x73c5

    int-to-char v14, v14

    invoke-static {v8, v8}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    add-int/lit8 v15, v15, 0x26

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    const-string v14, "getCurrencyIso4217Code"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const-class v16, Ljava/util/Map;

    aput-object v16, v15, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sget-object v13, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    check-cast v8, Ljava/lang/reflect/Method;

    invoke-virtual {v8, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v8, :cond_3

    .line 18208
    :try_start_5
    invoke-virtual {v8, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v11, v8

    goto :goto_8

    .line 18211
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v11, v8

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v15, v0

    move-object v11, v8

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v11, v8

    goto :goto_7

    :catchall_4
    move-exception v0

    .line 16173
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    throw v2

    :cond_4
    throw v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    .line 16180
    :goto_5
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v2, v3, v5, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v15, v0

    .line 16178
    :goto_6
    sget-object v12, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v13, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v14, "AFFinalizer: reflection init failed."

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    .line 16176
    :goto_7
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v4, "AFJsonObject return null String object."

    invoke-virtual {v2, v3, v4, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :goto_8
    if-nez v11, :cond_5

    goto :goto_9

    :cond_5
    move-object v6, v11

    .line 16189
    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 16191
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v4, "Payload contains non-printing characters"

    invoke-virtual {v0, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 16193
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8

    move-object v10, v0

    goto :goto_a

    :catch_8
    move-exception v0

    .line 16195
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v5, "Couldn\'t parse the payload to a json object"

    invoke-virtual {v3, v4, v5, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    move-object v2, v6

    .line 16198
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": preparing data: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/appsflyer/internal/AFg1bSDK;->getMediationNetwork(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz v7, :cond_7

    .line 19035
    iget-object v0, v7, Lcom/appsflyer/internal/AFd1jSDK;->getRevenue:Lcom/appsflyer/internal/AFd1dSDK;

    .line 20070
    iget-object v9, v0, Lcom/appsflyer/internal/AFd1dSDK;->getRevenue:Ljava/lang/String;

    .line 16203
    :cond_7
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1eSDK;->component4:Lcom/appsflyer/internal/AFd1mSDK;

    invoke-interface {v0, v9, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method protected getRevenue(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->copy:Lcom/appsflyer/internal/AFg1rSDK;

    .line 36172
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 282
    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1rSDK;->getCurrencyIso4217Code(Ljava/util/Map;)V

    return-void
.end method
