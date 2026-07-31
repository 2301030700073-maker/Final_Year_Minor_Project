.class public final Lcom/appsflyer/internal/AFd1lSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFAdRevenueData:Ljava/lang/String; = null

.field private static areAllFieldsValid:Z = false

.field private static component1:[C = null

.field private static component3:I = 0x0

.field private static copy:I = 0x1

.field public static getRevenue:Ljava/lang/String;

.field private static hashCode:I

.field private static toString:Z


# instance fields
.field private final component2:Lcom/appsflyer/internal/AFj1eSDK;

.field private final component4:Lcom/appsflyer/internal/AFe1ySDK;

.field private final getCurrencyIso4217Code:Lcom/appsflyer/AppsFlyerProperties;

.field private final getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFd1kSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork()V

    .line 65
    const-string v0, "https://%sgcdsdk.%s/install_data/v5.0/"

    sput-object v0, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue:Ljava/lang/String;

    .line 68
    const-string v0, "https://%sonelink.%s/shortlink-sdk/v2"

    sput-object v0, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData:Ljava/lang/String;

    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1kSDK;Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/AppsFlyerProperties;Lcom/appsflyer/internal/AFe1ySDK;Lcom/appsflyer/internal/AFj1eSDK;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFd1kSDK;

    .line 83
    iput-object p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    .line 84
    iput-object p3, p0, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code:Lcom/appsflyer/AppsFlyerProperties;

    .line 85
    iput-object p4, p0, Lcom/appsflyer/internal/AFd1lSDK;->component4:Lcom/appsflyer/internal/AFe1ySDK;

    .line 86
    iput-object p5, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFj1eSDK;

    return-void
.end method

.method private AFAdRevenueData()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 391
    rem-int v1, v0, v0

    .line 381
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 382
    const-string v2, "build_number"

    const-string v3, "6.17.3"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    .line 44290
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v3, "appsFlyerCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v2

    .line 383
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "counter"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string/jumbo v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    rsub-int/lit8 v2, v2, 0x7e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "\u008e\u0087\u0088\u008b\u008d"

    invoke-static {v5, v6, v5, v2, v3}, Lcom/appsflyer/internal/AFd1lSDK;->a(Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/Object;)V

    aget-object v2, v3, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sdk"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    .line 45170
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 388
    const-string v3, "app_version_name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    .line 47298
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 48025
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 46165
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 389
    const-string v3, "app_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v2, Lcom/appsflyer/internal/AFa1ySDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFa1ySDK;-><init>()V

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFa1ySDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "platformextension"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget v2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v2, v0

    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x2

    .line 172
    rem-int v1, v0, v0

    if-eqz p1, :cond_0

    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->$11:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->$10:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    if-eqz p0, :cond_1

    .line 172
    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->$10:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->$11:I

    rem-int/2addr v1, v0

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    check-cast p0, [C

    .line 129
    new-instance v1, Lcom/appsflyer/internal/AFk1iSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1iSDK;-><init>()V

    .line 131
    sget-object v2, Lcom/appsflyer/internal/AFd1lSDK;->component1:[C

    const-wide v3, 0x19569dd871fb8d0aL

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    array-length v6, v2

    new-array v7, v6, [C

    move v8, v5

    :goto_0
    if-ge v8, v6, :cond_2

    aget-char v9, v2, v8

    int-to-long v9, v9

    xor-long/2addr v9, v3

    long-to-int v9, v9

    int-to-char v9, v9

    aput-char v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v7

    .line 132
    :cond_3
    sget v6, Lcom/appsflyer/internal/AFd1lSDK;->component3:I

    int-to-long v6, v6

    xor-long/2addr v3, v6

    long-to-int v3, v3

    .line 134
    sget-boolean v4, Lcom/appsflyer/internal/AFd1lSDK;->toString:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    .line 136
    array-length p0, p1

    iput p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    .line 137
    iget p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    new-array p0, p0, [C

    .line 139
    iput v5, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    :goto_1
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    if-ge p2, v4, :cond_4

    .line 140
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    sub-int/2addr v4, v6

    iget v7, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    sub-int/2addr v4, v7

    aget-byte v4, p1, v4

    add-int/2addr v4, p3

    aget-char v4, v2, v4

    sub-int/2addr v4, v3

    int-to-char v4, v4

    aput-char v4, p0, p2

    .line 139
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    add-int/2addr p2, v6

    iput p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    goto :goto_1

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 172
    sget p0, Lcom/appsflyer/internal/AFd1lSDK;->$10:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->$11:I

    rem-int/2addr p0, v0

    aput-object p1, p4, v5

    return-void

    .line 147
    :cond_5
    sget-boolean p1, Lcom/appsflyer/internal/AFd1lSDK;->areAllFieldsValid:Z

    if-eq p1, v6, :cond_8

    .line 162
    array-length p0, p2

    iput p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    .line 163
    iget p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    new-array p0, p0, [C

    .line 165
    iput v5, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    :goto_2
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    if-ge p1, v4, :cond_7

    .line 172
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->$11:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1lSDK;->$10:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_6

    .line 166
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    iget v7, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    mul-int/2addr v4, v7

    aget v4, p2, v4

    add-int/2addr v4, p3

    aget-char v4, v2, v4

    ushr-int/2addr v4, v3

    int-to-char v4, v4

    aput-char v4, p0, p1

    .line 165
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    goto :goto_3

    .line 166
    :cond_6
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    sub-int/2addr v4, v6

    iget v7, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    sub-int/2addr v4, v7

    aget v4, p2, v4

    sub-int/2addr v4, p3

    aget-char v4, v2, v4

    sub-int/2addr v4, v3

    int-to-char v4, v4

    aput-char v4, p0, p1

    .line 165
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    add-int/2addr p1, v6

    :goto_3
    iput p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    goto :goto_2

    .line 172
    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    aput-object p1, p4, v5

    return-void

    .line 165
    :cond_8
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->$10:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->$11:I

    rem-int/2addr p1, v0

    .line 149
    array-length p1, p0

    iput p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    .line 150
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    new-array p1, p1, [C

    .line 152
    iput v5, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    :goto_4
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    if-ge p2, v0, :cond_9

    .line 153
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    sub-int/2addr v0, v6

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    sub-int/2addr v0, v4

    aget-char v0, p0, v0

    sub-int/2addr v0, p3

    aget-char v0, v2, v0

    sub-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, p1, p2

    .line 152
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    add-int/2addr p2, v6

    iput p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    goto :goto_4

    .line 159
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p4, v5

    return-void
.end method

.method private getCurrencyIso4217Code(Lcom/appsflyer/internal/AFd1dSDK;Lcom/appsflyer/internal/AFe1vSDK;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFd1dSDK;",
            "Lcom/appsflyer/internal/AFe1vSDK<",
            "TT;>;)",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "TT;>;"
        }
    .end annotation

    .line 65352
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, 0x339b2ff8

    const v1, -0x339b2ff6    # -5.9981864E7f

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    return-object p1
.end method

.method private static synthetic getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFd1lSDK;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Lcom/appsflyer/internal/AFd1dSDK;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    check-cast p0, Lcom/appsflyer/internal/AFe1vSDK;

    .line 370
    rem-int v3, v2, v2

    sget v3, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v3, v3, 0x53

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v3, v2

    .line 369
    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork()Z

    move-result v3

    .line 370
    invoke-direct {v0, v1, p0, v3}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFd1dSDK;Lcom/appsflyer/internal/AFe1vSDK;Z)Lcom/appsflyer/internal/AFd1jSDK;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private getMediationNetwork(Lcom/appsflyer/internal/AFd1dSDK;Lcom/appsflyer/internal/AFe1vSDK;Z)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFd1dSDK;",
            "Lcom/appsflyer/internal/AFe1vSDK<",
            "TT;>;Z)",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 376
    rem-int v1, v0, v0

    .line 42124
    iput-boolean p3, p1, Lcom/appsflyer/internal/AFd1dSDK;->getMediationNetwork:Z

    .line 376
    iget-object p3, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFd1kSDK;

    .line 43021
    new-instance v1, Lcom/appsflyer/internal/AFd1jSDK;

    iget-object v2, p3, Lcom/appsflyer/internal/AFd1kSDK;->getMediationNetwork:Ljava/util/concurrent/ExecutorService;

    iget-object p3, p3, Lcom/appsflyer/internal/AFd1kSDK;->getRevenue:Lcom/appsflyer/internal/AFd1fSDK;

    invoke-direct {v1, p1, v2, p3, p2}, Lcom/appsflyer/internal/AFd1jSDK;-><init>(Lcom/appsflyer/internal/AFd1dSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFd1fSDK;Lcom/appsflyer/internal/AFe1vSDK;)V

    .line 376
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method private static varargs getMediationNetwork(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 399
    rem-int v1, v0, v0

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x1

    .line 396
    const-string/jumbo v2, "v2"

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 397
    new-array v3, p2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 49120
    const-string/jumbo v3, "\u2063"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-static {v1, p0}, Lcom/appsflyer/internal/AFj1bSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/16 p1, 0x48

    div-int/2addr p1, p2

    :cond_0
    return-object p0
.end method

.method static getMediationNetwork()V
    .locals 1

    const/16 v0, 0xe

    .line 65351
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFd1lSDK;->component1:[C

    const v0, 0x71fb8d8c

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->component3:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsflyer/internal/AFd1lSDK;->areAllFieldsValid:Z

    sput-boolean v0, Lcom/appsflyer/internal/AFd1lSDK;->toString:Z

    return-void

    :array_0
    .array-data 2
        -0x7233s
        -0x721as
        -0x7247s
        -0x722ds
        -0x721bs
        -0x7219s
        -0x7202s
        -0x7213s
        -0x7210s
        -0x720fs
        -0x720es
        -0x721fs
        -0x721es
        -0x7220s
    .end array-data
.end method

.method private getMonetizationNetwork()Z
    .locals 4

    const/4 v0, 0x2

    .line 405
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr v1, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code:Lcom/appsflyer/AppsFlyerProperties;

    const-string v2, "http_cache"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr v1, v0

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic getRevenue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFd1lSDK;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/String;

    .line 217
    rem-int v4, v3, v3

    iget-object v4, v1, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    .line 34298
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 35025
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 33165
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 218
    iget-object v5, v1, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    .line 36179
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {v5}, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-static {v4, v5, v2, p0}, Lcom/appsflyer/internal/AFd1hSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p0

    new-instance v2, Lcom/appsflyer/internal/AFd1iSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFd1iSDK;-><init>()V

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x339b2ff8

    const v4, -0x339b2ff6    # -5.9981864E7f

    invoke-static {p0, v2, v4, v1}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1jSDK;

    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x15

    div-int/2addr v1, v0

    :cond_0
    return-object p0
.end method

.method public static synthetic getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    mul-int/lit16 v3, v0, 0x6ed

    mul-int/lit16 v4, v1, -0x375

    add-int/2addr v3, v4

    not-int v4, v0

    not-int v5, v1

    or-int/2addr v4, v5

    not-int v4, v4

    or-int/2addr v5, v2

    not-int v5, v5

    or-int/2addr v4, v5

    not-int v2, v2

    or-int v5, v2, v0

    or-int v6, v5, v1

    not-int v6, v6

    or-int/2addr v4, v6

    mul-int/lit16 v4, v4, 0x376

    add-int/2addr v3, v4

    or-int/2addr v1, v2

    not-int v1, v1

    or-int/2addr v0, v1

    mul-int/lit16 v0, v0, -0x6ec

    add-int/2addr v3, v0

    not-int v0, v5

    mul-int/lit16 v0, v0, 0x376

    add-int/2addr v3, v0

    const/4 v0, 0x1

    if-eq v3, v0, :cond_1

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    const/4 v2, 0x0

    .line 1
    aget-object v3, p0, v2

    check-cast v3, Lcom/appsflyer/internal/AFd1lSDK;

    aget-object v4, p0, v0

    check-cast v4, Ljava/lang/String;

    aget-object v5, p0, v1

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v7, p0, v6

    check-cast v7, Ljava/util/UUID;

    const/4 v8, 0x4

    aget-object v9, p0, v8

    check-cast v9, Ljava/lang/String;

    .line 50309
    rem-int v10, v1, v1

    .line 50282
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 50283
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v13

    invoke-virtual {v13}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v14

    invoke-virtual {v14}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 50283
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 50285
    invoke-direct {v3}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData()Ljava/util/Map;

    move-result-object v11

    .line 50286
    const-string v12, "build_number"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 50289
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 50290
    const-string v14, "Af-UUID"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v15, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50291
    const-string v7, "Af-Meta-Sdk-Ver"

    invoke-interface {v15, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50292
    const-string v7, "counter"

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Af-Meta-Counter"

    invoke-interface {v15, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50293
    const-string/jumbo v7, "model"

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Af-Meta-Model"

    invoke-interface {v15, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50294
    const-string/jumbo v7, "platformextension"

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Af-Meta-Platform"

    invoke-interface {v15, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50295
    const-string/jumbo v7, "sdk"

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "Af-Meta-System-Version"

    invoke-interface {v15, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50297
    const-string v7, ""

    invoke-static {v7}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x7e

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v8, "\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v14, v8, v14, v7, v11}, Lcom/appsflyer/internal/AFd1lSDK;->a(Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/Object;)V

    aget-object v7, v11, v2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const-string v11, "GET"

    aput-object v11, v8, v2

    aput-object v10, v8, v0

    aput-object v4, v8, v1

    aput-object v5, v8, v6

    const/4 v0, 0x4

    aput-object v12, v8, v0

    invoke-static {v9, v10, v8}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50301
    new-instance v0, Lcom/appsflyer/internal/AFd1dSDK;

    const/16 v17, 0x0

    move-object v12, v0

    move-object v2, v15

    move-object v15, v11

    move-object/from16 v16, v2

    invoke-direct/range {v12 .. v17}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 50309
    new-instance v2, Lcom/appsflyer/internal/AFd1bSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFd1bSDK;-><init>()V

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x339b2ff8

    const v4, -0x339b2ff6    # -5.9981864E7f

    invoke-static {v0, v3, v4, v2}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFd1jSDK;

    sget v2, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr v2, v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFc1gSDK;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1jSDK;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/AFc1gSDK;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x2

    .line 200
    rem-int v3, v2, v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 187
    :try_start_0
    new-array v5, v3, [Ljava/lang/Object;

    aput-object p3, v5, v2

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v7, 0x0

    aput-object v0, v5, v7

    sget-object v8, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v9, -0x16227ac8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, ""

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v7, v7, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v8

    add-int/lit16 v8, v8, 0xc4

    const/16 v11, 0x30

    invoke-static {v10, v11, v7, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v11

    add-int/lit16 v11, v11, 0x73c5

    int-to-char v11, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    rsub-int/lit8 v12, v12, 0x25

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-string v11, "getMediationNetwork"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v12, Lcom/appsflyer/internal/AFh1jSDK;

    aput-object v12, v3, v7

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    const-class v7, Lcom/appsflyer/internal/AFc1gSDK;

    aput-object v7, v3, v2

    invoke-virtual {v8, v11, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sget-object v3, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v8, Ljava/lang/reflect/Method;

    invoke-virtual {v8, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    iget-object v3, v1, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFj1eSDK;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15164
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork()Z

    move-result v5

    .line 15165
    instance-of v7, v0, Lcom/appsflyer/internal/AFh1nSDK;

    .line 15166
    instance-of v8, v0, Lcom/appsflyer/internal/AFh1lSDK;

    .line 15167
    instance-of v9, v0, Lcom/appsflyer/internal/AFh1kSDK;

    .line 15168
    instance-of v10, v0, Lcom/appsflyer/internal/AFh1bSDK;

    .line 15169
    instance-of v11, v0, Lcom/appsflyer/internal/AFh1dSDK;

    .line 15170
    instance-of v12, v0, Lcom/appsflyer/internal/AFg1uSDK;

    .line 15171
    instance-of v14, v0, Lcom/appsflyer/internal/AFh1iSDK;

    if-eqz v14, :cond_1

    .line 17347
    iget-object v2, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    const-string v4, "https://%spia.%s/api/v1.0/pia-android-event?app_id="

    invoke-interface {v2, v4}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_1
    if-eq v9, v6, :cond_c

    .line 15178
    sget v9, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v14, v9, 0x59

    rem-int/lit16 v15, v14, 0x80

    sput v15, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v14, v2

    if-eqz v8, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eq v7, v6, :cond_b

    if-eqz v10, :cond_4

    add-int/lit8 v15, v15, 0x4d

    rem-int/lit16 v5, v15, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr v15, v2

    if-nez v15, :cond_3

    .line 21339
    iget-object v2, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    .line 21340
    sget-object v4, Lcom/appsflyer/internal/AFj1eSDK;->component4:Ljava/lang/String;

    .line 21339
    invoke-interface {v2, v4}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_3
    iget-object v0, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    .line 21340
    sget-object v2, Lcom/appsflyer/internal/AFj1eSDK;->component4:Ljava/lang/String;

    .line 21339
    invoke-interface {v0, v2}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    .line 15177
    throw v4

    :cond_4
    if-eqz v11, :cond_6

    add-int/lit8 v9, v9, 0x6f

    .line 200
    rem-int/lit16 v5, v9, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v9, v2

    const-string v2, "https://%ssdk-services.%s/validate-android-signature"

    if-eqz v9, :cond_5

    .line 23326
    iget-object v3, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    invoke-interface {v3, v2}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_5
    iget-object v0, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    invoke-interface {v0, v2}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    .line 15178
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    throw v4

    :cond_6
    xor-int/lit8 v4, v12, 0x1

    if-eq v4, v6, :cond_7

    .line 25344
    iget-object v2, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    sget-object v4, Lcom/appsflyer/internal/AFj1eSDK;->component1:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    if-eq v5, v6, :cond_8

    .line 30304
    iget-object v2, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    sget-object v4, Lcom/appsflyer/internal/AFj1eSDK;->areAllFieldsValid:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    add-int/lit8 v9, v9, 0x23

    .line 15177
    rem-int/lit16 v4, v9, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v9, v2

    if-nez v9, :cond_9

    .line 27191
    iget v2, v0, Lcom/appsflyer/internal/AFh1jSDK;->component1:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_a

    goto :goto_1

    :cond_9
    iget v4, v0, Lcom/appsflyer/internal/AFh1jSDK;->component1:I

    if-ge v4, v2, :cond_a

    .line 28298
    :goto_1
    iget-object v2, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    sget-object v4, Lcom/appsflyer/internal/AFj1eSDK;->getMediationNetwork:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 29301
    :cond_a
    iget-object v2, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    sget-object v4, Lcom/appsflyer/internal/AFj1eSDK;->component2:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 19295
    :cond_b
    iget-object v2, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    sget-object v4, Lcom/appsflyer/internal/AFj1eSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 18292
    :cond_c
    :goto_2
    iget-object v4, v3, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    sget-object v5, Lcom/appsflyer/internal/AFj1eSDK;->AFAdRevenueData:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15178
    sget v5, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v5, v5, 0x59

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v5, v2

    move-object v2, v4

    .line 15184
    :goto_3
    invoke-virtual {v3, v2}, Lcom/appsflyer/internal/AFj1eSDK;->getRevenue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15185
    invoke-static {v2, v7}, Lcom/appsflyer/internal/AFj1eSDK;->getMediationNetwork(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 15186
    invoke-virtual {v3, v2, v12}, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v12, v2

    .line 193
    new-instance v2, Lcom/appsflyer/internal/AFd1dSDK;

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v15

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFh1jSDK;->getRevenue()Z

    move-result v16

    const-string v14, "POST"

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 200
    new-instance v0, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x339b2ff8

    const v4, -0x339b2ff6    # -5.9981864E7f

    invoke-static {v0, v3, v4, v2}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFd1jSDK;

    return-object v0

    :catchall_0
    move-exception v0

    .line 187
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    throw v2

    :cond_d
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v8, v0

    .line 189
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v7, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v5 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v4
.end method

.method public final AFAdRevenueData(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 8
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

    const/4 v0, 0x2

    .line 326
    rem-int v1, v0, v0

    .line 315
    new-instance v1, Lcom/appsflyer/internal/AFd1dSDK;

    .line 319
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-string v5, "GET"

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    const/16 p1, 0x2710

    .line 40097
    iput p1, v1, Lcom/appsflyer/internal/AFd1dSDK;->component3:I

    const/4 p1, 0x0

    .line 41137
    iput-boolean p1, v1, Lcom/appsflyer/internal/AFd1dSDK;->getCurrencyIso4217Code:Z

    .line 326
    new-instance p1, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    filled-new-array {p0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x339b2ff8

    const v3, -0x339b2ff6    # -5.9981864E7f

    invoke-static {p1, v2, v3, v1}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v1, v0

    return-object p1
.end method

.method public final AFAdRevenueData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 107
    rem-int v1, v0, v0

    const/4 v1, 0x0

    .line 95
    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x0

    aput-object p1, v2, p2

    sget-object p1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v4, 0xc1c60f9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result p1

    add-int/lit16 p1, p1, 0xc4

    invoke-static {p2, p2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    rsub-int v5, v5, 0x73c3

    int-to-char v5, v5

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x25

    invoke-static {p1, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v5, "getRevenue"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, p2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object v5, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFj1eSDK;

    .line 1238
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x1b

    div-int/2addr v2, p2

    if-eqz v1, :cond_3

    goto :goto_1

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFj1eSDK;

    .line 1238
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, p2

    :cond_3
    :goto_2
    if-nez v3, :cond_5

    new-instance p2, Lkotlin/text/Regex;

    const-string v1, "4.?(\\d+)?.?(\\d+)"

    invoke-direct {p2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 1239
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Lkotlin/text/Regex;

    const-string v1, "3.?(\\d+)?.?(\\d+)"

    invoke-direct {p2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    .line 3310
    :cond_4
    iget-object p2, p1, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    const-string p3, "https://%sars.%s/api/v2/android/validate_subscription_v2?app_id="

    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1238
    sget p3, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 p3, p3, 0x25

    rem-int/lit16 v1, p3, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr p3, v0

    goto :goto_4

    .line 2307
    :cond_5
    :goto_3
    iget-object p2, p1, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    const-string p3, "https://%sars.%s/api/v2/android/validate_subscription?app_id="

    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1246
    :goto_4
    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFj1eSDK;->getRevenue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFj1eSDK;->getRevenue(Lcom/appsflyer/internal/AFj1eSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    new-instance p1, Lcom/appsflyer/internal/AFd1dSDK;

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x1

    const-string v7, "POST"

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 107
    new-instance p2, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const p3, 0x339b2ff8

    const v0, -0x339b2ff6    # -5.9981864E7f

    invoke-static {p1, p3, v0, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    return-object p1

    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_6

    throw p2

    :cond_6
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    move-object v5, p1

    .line 97
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v1
.end method

.method public final getCurrencyIso4217Code(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    const/4 v0, 0x2

    .line 165
    rem-int v2, v0, v0

    sget v2, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr v2, v0

    const-string v3, "getRevenue"

    const-string v4, ""

    const v5, 0xc1c60f9

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 153
    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p2, v2, v7

    aput-object p1, v2, v8

    sget-object v9, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v8}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x14

    shr-int/lit8 v9, v9, 0x6

    rsub-int v9, v9, 0xc4

    invoke-static {v4, v4, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit16 v4, v4, 0x73c4

    int-to-char v4, v4

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    add-int/lit8 v10, v10, 0x24

    invoke-static {v9, v4, v10}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    const-class v9, Ljava/util/Map;

    aput-object v9, v0, v8

    const-class v8, Ljava/lang/String;

    aput-object v8, v0, v7

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v9, Ljava/lang/reflect/Method;

    invoke-virtual {v9, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    throw v6

    :catchall_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    throw v2

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    :try_start_2
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p2, v2, v7

    aput-object p1, v2, v8

    sget-object v9, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    const v10, 0x10000c4

    add-int/2addr v9, v10

    invoke-static {v4, v8}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v4

    rsub-int v4, v4, 0x73c4

    int-to-char v4, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    rsub-int/lit8 v10, v10, 0x26

    invoke-static {v9, v4, v10}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    new-array v9, v0, [Ljava/lang/Class;

    const-class v10, Ljava/util/Map;

    aput-object v10, v9, v8

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {v4, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sget-object v3, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v9, Ljava/lang/reflect/Method;

    invoke-virtual {v9, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    iget-object v2, v1, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFj1eSDK;

    .line 10334
    iget-object v3, v2, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    .line 10335
    const-string v4, "https://%svalidate-and-log.%s/api/v4.0/android/subscription/validateAndLog?app_id="

    .line 10334
    invoke-interface {v3, v4}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9259
    invoke-virtual {v2, v3}, Lcom/appsflyer/internal/AFj1eSDK;->getRevenue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 159
    new-instance v2, Lcom/appsflyer/internal/AFd1dSDK;

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x1

    const-string v12, "POST"

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 165
    new-instance v3, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {v3}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x339b2ff8

    const v5, -0x339b2ff6    # -5.9981864E7f

    invoke-static {v2, v4, v5, v3}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFd1jSDK;

    .line 157
    sget v3, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v3, v3, 0x19

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_4

    const/16 v0, 0x11

    div-int/2addr v0, v8

    :cond_4
    return-object v2

    :catchall_1
    move-exception v0

    .line 153
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5

    throw v2

    :cond_5
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v10, v0

    .line 155
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v8, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v9, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v7 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v6
.end method

.method public final getMediationNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 65354
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, 0x7b375e6a

    const v1, -0x7b375e69

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    return-object p1
.end method

.method public final getMediationNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 65353
    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const p3, 0x6cdaee79

    const p4, -0x6cdaee79

    invoke-static {p1, p3, p4, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    return-object p1
.end method

.method public final getMediationNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 272
    rem-int v1, v0, v0

    .line 245
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 247
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 248
    const-string/jumbo v2, "ttl"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v2, "uuid"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v2, "data"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo p2, "meta"

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 272
    sget v2, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr v2, v0

    const-string v3, "brand_domain"

    if-nez v2, :cond_0

    .line 253
    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    throw p2

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1hSDK;->getCurrencyIso4217Code(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 257
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    rsub-int v1, v1, 0x80

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {p2, v3, p2, v1, v2}, Lcom/appsflyer/internal/AFd1lSDK;->a(Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/Object;)V

    const/4 p2, 0x0

    aget-object v1, v2, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "POST"

    aput-object v3, v2, p2

    aput-object p3, v2, v7

    invoke-static {p5, p4, v2}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v5, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance p2, Lcom/appsflyer/internal/AFd1dSDK;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 38056
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 264
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "POST"

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 272
    new-instance p1, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    invoke-direct {p0, p2, p1, v7}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFd1dSDK;Lcom/appsflyer/internal/AFe1vSDK;Z)Lcom/appsflyer/internal/AFd1jSDK;

    move-result-object p1

    .line 255
    sget p2, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 p2, p2, 0x5f

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr p2, v0

    return-object p1
.end method

.method public final getMediationNetwork(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1oSDK;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1oSDK;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 362
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr v1, v0

    const-string v2, "getRevenue"

    const/4 v3, 0x0

    const v4, 0xc1c60f9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    .line 347
    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p2, v1, v5

    aput-object p1, v1, v7

    sget-object p1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v3}, Landroid/graphics/PointF;->length(FF)F

    move-result p1

    cmpl-float p1, p1, v3

    add-int/lit16 p1, p1, 0xc4

    const-string p2, ""

    const/16 v3, 0x30

    invoke-static {p2, v3, v7, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p2

    rsub-int p2, p2, 0x73c3

    int-to-char p2, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    add-int/lit8 v3, v3, 0x24

    invoke-static {p1, p2, v3}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    new-array p2, v0, [Ljava/lang/Class;

    const-class v3, Ljava/util/Map;

    aput-object v3, p2, v7

    const-class v3, Ljava/lang/String;

    aput-object v3, p2, v5

    invoke-virtual {p1, v2, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p2, 0x3f

    .line 348
    :try_start_1
    div-int/2addr p2, v7

    if-nez p1, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 347
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    throw p2

    :cond_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    :try_start_2
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p2, v1, v5

    aput-object p1, v1, v7

    sget-object p1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    cmpl-float p1, p1, v3

    add-int/lit16 p1, p1, 0xc4

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    rsub-int p2, p2, 0x73c4

    int-to-char p2, p2

    invoke-static {v7, v7}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x25

    invoke-static {p1, p2, v3}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    new-array p2, v0, [Ljava/lang/Class;

    const-class v3, Ljava/util/Map;

    aput-object v3, p2, v7

    const-class v3, Ljava/lang/String;

    aput-object v3, p2, v5

    invoke-virtual {p1, v2, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_4

    .line 349
    :goto_2
    :try_start_3
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v8, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v9, "AFFinalizer: failed to create bytes."

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to create bytes from proxyData, bytes are null"

    invoke-direct {v10, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v6

    .line 348
    :cond_4
    sget p2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x57

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr p2, v0

    .line 362
    new-instance p2, Lcom/appsflyer/internal/AFd1oSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-direct {p2, v1, p1}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;[B)V

    .line 348
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_5

    return-object p2

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    throw v6

    :catchall_1
    move-exception p1

    .line 347
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_6

    throw p2

    :cond_6
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    move-object v3, p1

    .line 359
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v0 .. v5}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v6
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFa1pSDK;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1pSDK;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Lcom/appsflyer/internal/AFa1mSDK;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 213
    rem-int v1, v0, v0

    .line 31172
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 204
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1hSDK;->getCurrencyIso4217Code(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    new-instance v8, Lcom/appsflyer/internal/AFd1dSDK;

    .line 32088
    iget-object v3, p1, Lcom/appsflyer/internal/AFh1jSDK;->component3:Ljava/lang/String;

    .line 208
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 211
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getRevenue()Z

    move-result v7

    const-string v5, "POST"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 213
    new-instance p1, Lcom/appsflyer/internal/AFa1qSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFa1qSDK;-><init>()V

    filled-new-array {p0, v8, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x339b2ff8

    const v3, -0x339b2ff6    # -5.9981864E7f

    invoke-static {p1, v2, v3, v1}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr v1, v0

    return-object p1
.end method

.method public final getMonetizationNetwork(ZZLjava/lang/String;I)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "I)",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Lcom/appsflyer/internal/AFi1wSDK;",
            ">;"
        }
    .end annotation

    const/4 p4, 0x2

    .line 176
    rem-int v0, p4, p4

    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v0, p4

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component4:Lcom/appsflyer/internal/AFe1ySDK;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 11138
    sget-object p1, Lcom/appsflyer/internal/AFe1ySDK;->getMonetizationNetwork:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/appsflyer/internal/AFe1ySDK;->getRevenue:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    sget p2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x5d

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr p2, p4

    .line 176
    const-string/jumbo p2, "stg"

    goto :goto_1

    :cond_1
    move-object p2, v1

    .line 11140
    :goto_1
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 12109
    invoke-static {}, Lcom/appsflyer/internal/AFe1ySDK;->getRevenue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11138
    sget v2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr v2, p4

    .line 13099
    iget-object p4, v0, Lcom/appsflyer/internal/AFe1ySDK;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {p4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p4, v1

    .line 11144
    :goto_2
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1ySDK;->getCurrencyIso4217Code()Ljava/lang/String;

    move-result-object v0

    .line 11145
    filled-new-array {p4, p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x4

    .line 11140
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance p2, Lcom/appsflyer/internal/AFd1dSDK;

    const-string p3, "GET"

    invoke-direct {p2, p1, p3}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x5dc

    .line 14097
    iput p1, p2, Lcom/appsflyer/internal/AFd1dSDK;->component3:I

    .line 176
    new-instance p1, Lcom/appsflyer/internal/AFd1eSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1eSDK;-><init>()V

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const p3, 0x339b2ff8

    const p4, -0x339b2ff6    # -5.9981864E7f

    invoke-static {p1, p3, p4, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    return-object p1

    .line 170
    :cond_3
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11138
    throw p1
.end method

.method public final getRevenue(Lcom/appsflyer/internal/AFh1gSDK;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1gSDK;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 235
    rem-int v1, v0, v0

    .line 225
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->AFAdRevenueData()[B

    move-result-object v4

    .line 226
    new-instance v1, Lcom/appsflyer/internal/AFd1dSDK;

    .line 37088
    iget-object v3, p1, Lcom/appsflyer/internal/AFh1jSDK;->component3:Ljava/lang/String;

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x1

    const-string v5, "POST"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 235
    new-instance p1, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    filled-new-array {p0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x339b2ff8

    const v3, -0x339b2ff6    # -5.9981864E7f

    invoke-static {p1, v2, v3, v1}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/16 v0, 0x3b

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-object p1
.end method

.method public final getRevenue(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 146
    rem-int v1, v0, v0

    const/4 v1, 0x0

    .line 134
    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x0

    aput-object p1, v2, p2

    sget-object p1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v4, 0xc1c60f9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    shr-int/lit8 p1, p1, 0x16

    add-int/lit16 p1, p1, 0xc4

    const-string v5, ""

    const/16 v6, 0x30

    invoke-static {v5, v6, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    add-int/lit16 v5, v5, 0x73c5

    int-to-char v5, v5

    invoke-static {p2, p2, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    add-int/lit8 v6, v6, 0x25

    invoke-static {p1, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v5, "getRevenue"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, p2

    const-class p2, Ljava/lang/String;

    aput-object p2, v6, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr p1, v0

    .line 139
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFj1eSDK;

    .line 8329
    iget-object p2, p1, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    .line 8330
    const-string v1, "https://%svalidate-and-log.%s/api/v4.0/android/one_time_purchase/validateAndLog?app_id="

    .line 8329
    invoke-interface {p2, v1}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7256
    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFj1eSDK;->getRevenue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    new-instance p1, Lcom/appsflyer/internal/AFd1dSDK;

    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x1

    const-string v5, "POST"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 146
    new-instance p2, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v1, 0x339b2ff8

    const v2, -0x339b2ff6    # -5.9981864E7f

    invoke-static {p1, v1, v2, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    sget p2, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x45

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr p2, v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 134
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    throw p2

    :cond_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    move-object v5, p1

    .line 136
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v1
.end method

.method public final getRevenue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 127
    rem-int v1, v0, v0

    const/4 v1, 0x0

    .line 115
    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x0

    aput-object p1, v2, p2

    sget-object p1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v4, 0xc1c60f9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    shr-int/lit8 p1, p1, 0x16

    add-int/lit16 p1, p1, 0xc4

    invoke-static {p2, p2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    add-int/lit16 v5, v5, 0x73c4

    int-to-char v5, v5

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x25

    invoke-static {p1, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v5, "getRevenue"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, p2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object v5, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    rem-int/2addr p1, v0

    .line 120
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFj1eSDK;

    .line 4225
    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "4.?(\\d+)?.?(\\d+)"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 4226
    invoke-virtual {v1, p3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "3.?(\\d+)?.?(\\d+)"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    :goto_1
    move p2, v3

    :cond_3
    if-eq p2, v3, :cond_4

    .line 6318
    iget-object p2, p1, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    .line 6319
    const-string p3, "https://%sviap.%s/api/v1/android/validate_purchase_v2?app_id="

    .line 6318
    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 127
    sget p3, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 p3, p3, 0x25

    rem-int/lit16 v1, p3, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr p3, v0

    goto :goto_2

    :cond_4
    sget p2, Lcom/appsflyer/internal/AFd1lSDK;->copy:I

    add-int/lit8 p2, p2, 0x31

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    rem-int/2addr p2, v0

    .line 5313
    iget-object p2, p1, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    .line 5314
    const-string p3, "https://%sviap.%s/api/v1/android/validate_purchase?app_id="

    .line 5313
    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4234
    :goto_2
    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFj1eSDK;->getRevenue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFj1eSDK;->getRevenue(Lcom/appsflyer/internal/AFj1eSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    new-instance p1, Lcom/appsflyer/internal/AFd1dSDK;

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x1

    const-string v7, "POST"

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 127
    new-instance p2, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const p3, 0x339b2ff8

    const v0, -0x339b2ff6    # -5.9981864E7f

    invoke-static {p1, p3, v0, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    return-object p1

    :catchall_0
    move-exception p1

    .line 115
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    throw p2

    :cond_5
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    move-object v5, p1

    .line 117
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v1
.end method
