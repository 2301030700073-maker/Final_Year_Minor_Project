.class public final Lcom/appsflyer/internal/AFd1nSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFd1mSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static component2:[C = null

.field private static copy:I = 0x1

.field private static equals:C

.field private static final getRevenue:I

.field private static hashCode:I


# instance fields
.field private AFAdRevenueData:Z

.field private areAllFieldsValid:Z

.field private final component1:Lcom/appsflyer/internal/AFc1bSDK;

.field private component3:Ljava/security/SecureRandom;

.field private component4:Z

.field private getCurrencyIso4217Code:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getMediationNetwork:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private getMonetizationNetwork:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/appsflyer/internal/AFd1nSDK;->component2()V

    const v0, 0x17f76

    .line 49
    sput v0, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue:I

    .line 48
    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code:Ljava/util/List;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData:Z

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    .line 58
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component3:Ljava/security/SecureRandom;

    .line 66
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "disableProxy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->areAllFieldsValid:Z

    .line 67
    iput v3, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I

    .line 68
    iput-boolean v3, p0, Lcom/appsflyer/internal/AFd1nSDK;->component4:Z

    .line 69
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    return-void
.end method

.method public static synthetic AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 4

    mul-int/lit16 v0, p1, -0x2f3

    mul-int/lit16 v1, p2, -0x2f3

    add-int/2addr v0, v1

    not-int v1, p1

    not-int v2, p2

    or-int/2addr v1, v2

    not-int v1, v1

    mul-int/lit16 v2, v1, 0x5e8

    add-int/2addr v0, v2

    or-int/2addr p1, p2

    or-int p2, p1, p3

    not-int p2, p2

    or-int/2addr p2, v1

    mul-int/lit16 p2, p2, -0x2f4

    add-int/2addr v0, p2

    not-int p2, p3

    or-int/2addr p1, p2

    mul-int/lit16 p1, p1, 0x2f4

    add-int/2addr v0, p1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 p2, 0x2

    if-eq v0, p2, :cond_2

    const/4 p3, 0x3

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    .line 1
    aget-object p0, p0, v1

    check-cast p0, Lcom/appsflyer/internal/AFd1nSDK;

    .line 17466
    rem-int p1, p2, p2

    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, p2

    const-string/jumbo p3, "participantInProxy"

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p0

    invoke-interface {p0, p3, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, p2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    .line 1
    :cond_0
    aget-object p3, p0, v1

    check-cast p3, Lcom/appsflyer/internal/AFd1nSDK;

    aget-object v0, p0, p1

    check-cast v0, Ljava/lang/String;

    aget-object p0, p0, p2

    check-cast p0, Ljava/lang/String;

    .line 18174
    rem-int v2, p2, p2

    sget v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v2, p2

    const-string/jumbo p2, "server_request"

    if-eqz v2, :cond_1

    .line 18173
    new-array p1, v1, [Ljava/lang/String;

    aput-object p0, p1, v1

    invoke-direct {p3, p2, v0, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array p1, p1, [Ljava/lang/String;

    aput-object p0, p1, v1

    invoke-direct {p3, p2, v0, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 1
    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private AFInAppEventParameterName()Z
    .locals 4

    .line 65351
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x38c2628

    const v3, -0x38c2628

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private AFKeystoreWrapper()V
    .locals 4

    .line 65352
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0x2f027baa

    const v3, 0x2f027bac

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private static a(BLjava/lang/String;I[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x2

    .line 273
    rem-int v1, v0, v0

    if-eqz p1, :cond_0

    .line 0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_0
    check-cast p1, [C

    .line 190
    new-instance v1, Lcom/appsflyer/internal/AFk1jSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1jSDK;-><init>()V

    .line 195
    sget-object v2, Lcom/appsflyer/internal/AFd1nSDK;->component2:[C

    const-wide v3, -0x72b932888e911c6dL

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 273
    sget v7, Lcom/appsflyer/internal/AFd1nSDK;->$10:I

    add-int/lit8 v7, v7, 0x35

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFd1nSDK;->$11:I

    rem-int/2addr v7, v0

    if-nez v7, :cond_1

    array-length v7, v2

    new-array v8, v7, [C

    move v9, v6

    goto :goto_0

    .line 195
    :cond_1
    array-length v7, v2

    new-array v8, v7, [C

    move v9, v5

    :goto_0
    if-ge v9, v7, :cond_2

    .line 273
    sget v10, Lcom/appsflyer/internal/AFd1nSDK;->$11:I

    add-int/lit8 v10, v10, 0x1f

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFd1nSDK;->$10:I

    rem-int/2addr v10, v0

    .line 195
    aget-char v10, v2, v9

    int-to-long v10, v10

    xor-long/2addr v10, v3

    long-to-int v10, v10

    int-to-char v10, v10

    aput-char v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v8

    .line 197
    :cond_3
    sget-char v7, Lcom/appsflyer/internal/AFd1nSDK;->equals:C

    int-to-long v7, v7

    xor-long/2addr v3, v7

    long-to-int v3, v3

    int-to-char v3, v3

    .line 201
    new-array v4, p2, [C

    .line 204
    rem-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_4

    add-int/lit8 v7, p2, -0x1

    .line 206
    aget-char v8, p1, v7

    sub-int/2addr v8, p0

    int-to-char v8, v8

    aput-char v8, v4, v7

    goto :goto_1

    :cond_4
    move v7, p2

    :goto_1
    if-le v7, v6, :cond_8

    .line 210
    iput v5, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    :goto_2
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    if-ge v8, v7, :cond_8

    .line 213
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    aget-char v8, p1, v8

    iput-char v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getCurrencyIso4217Code:C

    .line 214
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    add-int/2addr v8, v6

    aget-char v8, p1, v8

    iput-char v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMediationNetwork:C

    .line 217
    iget-char v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getCurrencyIso4217Code:C

    iget-char v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMediationNetwork:C

    if-ne v8, v9, :cond_5

    .line 273
    sget v8, Lcom/appsflyer/internal/AFd1nSDK;->$10:I

    add-int/lit8 v8, v8, 0x73

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1nSDK;->$11:I

    rem-int/2addr v8, v0

    .line 218
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    iget-char v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->getCurrencyIso4217Code:C

    sub-int/2addr v9, p0

    int-to-char v9, v9

    aput-char v9, v4, v8

    .line 219
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    add-int/2addr v8, v6

    iget-char v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMediationNetwork:C

    sub-int/2addr v9, p0

    int-to-char v9, v9

    aput-char v9, v4, v8

    goto/16 :goto_3

    .line 221
    :cond_5
    iget-char v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getCurrencyIso4217Code:C

    div-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getRevenue:I

    .line 222
    iget-char v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getCurrencyIso4217Code:C

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->areAllFieldsValid:I

    .line 223
    iget-char v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMediationNetwork:C

    div-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->AFAdRevenueData:I

    .line 224
    iget-char v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMediationNetwork:C

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->component2:I

    .line 228
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->areAllFieldsValid:I

    iget v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->component2:I

    if-ne v8, v9, :cond_6

    .line 229
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getRevenue:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v6

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getRevenue:I

    .line 230
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->AFAdRevenueData:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v6

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->AFAdRevenueData:I

    .line 232
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getRevenue:I

    mul-int/2addr v8, v3

    iget v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->areAllFieldsValid:I

    add-int/2addr v8, v9

    .line 233
    iget v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->AFAdRevenueData:I

    mul-int/2addr v9, v3

    iget v10, v1, Lcom/appsflyer/internal/AFk1jSDK;->component2:I

    add-int/2addr v9, v10

    .line 235
    iget v10, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    aget-char v8, v2, v8

    aput-char v8, v4, v10

    .line 236
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    add-int/2addr v8, v6

    aget-char v9, v2, v9

    aput-char v9, v4, v8

    goto :goto_3

    .line 241
    :cond_6
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getRevenue:I

    iget v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->AFAdRevenueData:I

    if-ne v8, v9, :cond_7

    .line 242
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->areAllFieldsValid:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v6

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->areAllFieldsValid:I

    .line 243
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->component2:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v6

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->component2:I

    .line 245
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getRevenue:I

    mul-int/2addr v8, v3

    iget v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->areAllFieldsValid:I

    add-int/2addr v8, v9

    .line 246
    iget v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->AFAdRevenueData:I

    mul-int/2addr v9, v3

    iget v10, v1, Lcom/appsflyer/internal/AFk1jSDK;->component2:I

    add-int/2addr v9, v10

    .line 248
    iget v10, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    aget-char v8, v2, v8

    aput-char v8, v4, v10

    .line 249
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    add-int/2addr v8, v6

    aget-char v9, v2, v9

    aput-char v9, v4, v8

    goto :goto_3

    .line 258
    :cond_7
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getRevenue:I

    mul-int/2addr v8, v3

    iget v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->component2:I

    add-int/2addr v8, v9

    .line 259
    iget v9, v1, Lcom/appsflyer/internal/AFk1jSDK;->AFAdRevenueData:I

    mul-int/2addr v9, v3

    iget v10, v1, Lcom/appsflyer/internal/AFk1jSDK;->areAllFieldsValid:I

    add-int/2addr v9, v10

    .line 261
    iget v10, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    aget-char v8, v2, v8

    aput-char v8, v4, v10

    .line 262
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    add-int/2addr v8, v6

    aget-char v9, v2, v9

    aput-char v9, v4, v8

    .line 210
    :goto_3
    iget v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    add-int/2addr v8, v0

    iput v8, v1, Lcom/appsflyer/internal/AFk1jSDK;->getMonetizationNetwork:I

    goto/16 :goto_2

    .line 273
    :cond_8
    sget p0, Lcom/appsflyer/internal/AFd1nSDK;->$10:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1nSDK;->$11:I

    rem-int/2addr p0, v0

    move p0, v5

    :goto_4
    if-ge p0, p2, :cond_9

    .line 270
    aget-char p1, v4, p0

    xor-int/lit16 p1, p1, 0x359a

    int-to-char p1, p1

    aput-char p1, v4, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 273
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p3, v5

    return-void
.end method

.method private component1()F
    .locals 5

    const/4 v0, 0x2

    .line 208
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component3:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sget v3, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_0

    return v1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->component3:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
.end method

.method static component2()V
    .locals 1

    const/16 v0, 0x9

    .line 65350
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFd1nSDK;->component2:[C

    const v0, 0xe390

    sput-char v0, Lcom/appsflyer/internal/AFd1nSDK;->equals:C

    return-void

    nop

    :array_0
    .array-data 2
        -0x1c70s
        -0x1c69s
        -0x2993s
        -0x1c6fs
        -0x2999s
        -0x2985s
        -0x2998s
        -0x1c6es
        -0x2995s
    .end array-data
.end method

.method private declared-synchronized component3()V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x2

    .line 107
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v2, v1, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v2, v0

    .line 90
    iget-boolean v2, p0, Lcom/appsflyer/internal/AFd1nSDK;->component4:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x67

    .line 107
    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 94
    :try_start_1
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->component4:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    :try_start_2
    const-string/jumbo v0, "r_debugging_on"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 98
    :try_start_3
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v3, "Error while starting remote debugger"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private static component4()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 223
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v2, v0

    const-string v0, "6.17.3"

    if-nez v2, :cond_0

    const/16 v1, 0x41

    div-int/lit8 v1, v1, 0x0

    :cond_0
    return-object v0
.end method

.method private copy()Z
    .locals 4

    const/4 v0, 0x2

    .line 229
    rem-int v1, v0, v0

    iget-boolean v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->areAllFieldsValid:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v2, v1, 0x5b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v2, v0

    iget-boolean v2, p0, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->component4:Z

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized copydefault()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    .line 376
    :try_start_0
    rem-int v1, v0, v0

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code:Ljava/util/List;

    const/4 v1, 0x0

    .line 375
    iput v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I

    .line 376
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized equals()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    .line 319
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "data"

    iget-object v2, p0, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->copydefault()V

    .line 319
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    .line 317
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "data"

    iget-object v2, p0, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->copydefault()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    .line 319
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private declared-synchronized getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    .line 284
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 270
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_0

    .line 284
    :try_start_2
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    :try_start_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v2, "app_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_2

    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 274
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "app_version"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    rem-int p1, v0, v0

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 276
    :try_start_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-lez p1, :cond_3

    .line 284
    :try_start_6
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 277
    :try_start_7
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p2, "channel"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_4

    .line 279
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 280
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string/jumbo p2, "preInstall"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 284
    :catchall_0
    monitor-exit p0

    return-void

    .line 283
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method private varargs declared-synchronized getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    .line 312
    :try_start_0
    rem-int v1, v0, v0

    .line 287
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->copy()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 311
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    const v2, 0x18000

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v4, 0x29

    :try_start_1
    div-int/2addr v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v2, :cond_1

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1

    .line 287
    :cond_0
    iget v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lt v1, v2, :cond_1

    goto/16 :goto_3

    .line 291
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 293
    const-string v4, ", "

    invoke-static {v4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_2

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _/AppsFlyer_6.17.3 ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 296
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/AppsFlyer_6.17.3 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 297
    :goto_0
    iget p2, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x1

    shl-int/2addr p3, v1

    add-int/2addr p2, p3

    sget p3, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue:I

    if-le p2, p3, :cond_3

    .line 301
    iget p2, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I

    sub-int/2addr p3, p2

    div-int/2addr p3, v0

    invoke-virtual {p1, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move v3, v1

    .line 304
    :cond_3
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget p2, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    shl-int/2addr p1, v1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    xor-int/lit8 p1, v3, 0x1

    if-eq p1, v1, :cond_6

    .line 312
    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez p1, :cond_4

    .line 307
    :try_start_5
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code:Ljava/util/List;

    const-string p2, "+~+~ The limit has been exceeded, and no more data is available. +~+~"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I

    mul-int/lit16 p1, p1, 0x2900

    iput p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I

    goto :goto_1

    .line 307
    :cond_4
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code:Ljava/util/List;

    const-string p2, "+~+~ The limit has been exceeded, and no more data is available. +~+~"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I

    add-int/lit16 p1, p1, 0x8a

    iput p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 312
    :goto_1
    :try_start_6
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    rem-int/2addr v0, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 311
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 312
    :catchall_1
    monitor-exit p0

    return-void

    :cond_7
    :goto_3
    :try_start_7
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p1, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method private getCurrencyIso4217Code(F)Z
    .locals 8

    const/4 v0, 0x2

    .line 441
    rem-int v1, v0, v0

    .line 438
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v2, v1, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v2, v0

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    return v5

    :cond_0
    const-wide/16 v6, 0x0

    cmpg-double v2, v2, v6

    const/4 v3, 0x0

    if-gtz v2, :cond_2

    add-int/lit8 v1, v1, 0x79

    .line 441
    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    return v5

    :cond_1
    return v3

    .line 440
    :cond_2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->component1()F

    move-result v1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_4

    .line 438
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_3

    move v5, v3

    :cond_3
    return v5

    :cond_4
    return v3
.end method

.method private declared-synchronized getCurrencyIso4217Code(Lcom/appsflyer/internal/AFi1ySDK;Lcom/appsflyer/internal/AFi1ySDK;)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x2

    .line 402
    :try_start_0
    rem-int v1, v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0

    const p2, 0x2f027bac

    const v3, -0x2f027baa

    if-nez p1, :cond_0

    .line 384
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p1, v3, p2, v2}, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1, v3, p2, v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;

    move v1, v2

    .line 402
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 388
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFi1ySDK;->getMonetizationNetwork()Z

    move-result v3

    if-eq v3, v1, :cond_3

    .line 385
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    .line 389
    monitor-exit p0

    return v2

    :cond_2
    monitor-exit p0

    return v2

    .line 392
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v3}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v3

    .line 9290
    iget-object v3, v3, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v4, "appsFlyerCount"

    invoke-interface {v3, v4, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v3

    .line 10017
    iget v4, p1, Lcom/appsflyer/internal/AFi1ySDK;->getCurrencyIso4217Code:I

    if-gt v3, v4, :cond_7

    .line 402
    sget v3, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v3, v3, 0x19

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v3, v0

    rem-int/2addr v0, v0

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFi1ySDK;Lcom/appsflyer/internal/AFi1ySDK;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_4

    .line 396
    monitor-exit p0

    return v2

    .line 11018
    :cond_4
    :try_start_3
    iget-object p2, p1, Lcom/appsflyer/internal/AFi1ySDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 397
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 12019
    iget-object p1, p1, Lcom/appsflyer/internal/AFi1ySDK;->component3:Ljava/lang/String;

    .line 399
    invoke-static {p1}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_5

    .line 400
    monitor-exit p0

    return v2

    .line 402
    :cond_5
    monitor-exit p0

    return v1

    :cond_6
    monitor-exit p0

    return v2

    :cond_7
    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private static getCurrencyIso4217Code(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    .line 424
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    .line 421
    invoke-static {p0}, Lcom/appsflyer/internal/AFk1xSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    sget p0, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p0, v0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Lcom/appsflyer/internal/AFd1sSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1sSDK;-><init>()V

    invoke-static {}, Lcom/appsflyer/internal/AFd1nSDK;->component4()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/internal/AFd1sSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFd1nSDK;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object p0, p0, v3

    check-cast p0, Landroid/content/pm/PackageManager;

    .line 154
    rem-int p0, v3, v3

    sget p0, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 v4, p0, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p0, v3

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    .line 141
    :try_start_0
    invoke-direct {v1, v2}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 142
    iget-object v2, v1, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v2

    .line 143
    iget-object v5, v1, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    .line 144
    invoke-interface {v5}, Lcom/appsflyer/internal/AFc1bSDK;->getRevenue()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v5

    invoke-virtual {v5, p0, v2}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p0

    const/16 v2, 0x25

    .line 145
    div-int/2addr v2, v0

    if-nez p0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 141
    :cond_0
    invoke-direct {v1, v2}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 142
    iget-object v0, v1, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v2, v1, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    .line 144
    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->getRevenue()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p0

    if-nez p0, :cond_1

    .line 146
    :goto_0
    const-string p0, "could not send null proxy data"

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "request was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    .line 150
    :cond_1
    iget-object v0, v1, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/appsflyer/internal/AFd1nSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFd1nSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFd1oSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    sget p0, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p0, v3

    if-eqz p0, :cond_2

    return-object v4

    :cond_2
    throw v4

    .line 152
    :goto_1
    const-string v0, "could not send proxy data"

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private getMediationNetwork(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x2

    .line 431
    rem-int v1, v0, v0

    .line 429
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 428
    invoke-static {p1}, Lcom/appsflyer/internal/AFk1xSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x37

    div-int/2addr v3, v2

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFk1xSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    .line 14170
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 431
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0

    return p1
.end method

.method private static getMediationNetwork(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 370
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x36

    .line 362
    div-int/2addr v1, v3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 363
    :goto_0
    new-array p1, v2, [Ljava/lang/String;

    aput-object p0, p1, v3

    return-object p1

    .line 365
    :cond_1
    array-length v1, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 366
    aput-object p0, v1, v3

    .line 367
    :goto_1
    array-length p0, p1

    if-ge v2, p0, :cond_2

    .line 368
    aget-object p0, p1, v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    :cond_2
    sget p0, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_3

    const/16 p0, 0x1a

    div-int/2addr p0, v3

    :cond_3
    return-object v1
.end method

.method private static getMonetizationNetwork(Lcom/appsflyer/internal/AFi1wSDK;)Lcom/appsflyer/internal/AFi1ySDK;
    .locals 3

    const/4 v0, 0x2

    .line 454
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 15068
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1wSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1zSDK;

    if-eqz p0, :cond_0

    .line 16012
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1zSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1ySDK;

    return-object p0

    .line 448
    :cond_0
    sget p0, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 p0, p0, 0x55

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p0, v0

    return-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
.end method

.method private getMonetizationNetwork(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 214
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    .line 213
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Ljava/lang/String;Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFc1eSDK;)V

    .line 214
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->equals()Ljava/util/Map;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    const/16 v0, 0x1e

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-object p1
.end method

.method private declared-synchronized getMonetizationNetwork(Ljava/lang/String;Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFc1eSDK;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x2

    .line 359
    :try_start_0
    rem-int v1, v0, v0

    .line 328
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    .line 329
    const-string/jumbo v2, "remote_debug_static_data"

    .line 330
    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    iget-object v4, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_1

    .line 335
    :try_start_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/appsflyer/internal/AFg1hSDK;->getMonetizationNetwork(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    :try_start_2
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    rem-int p1, v0, v0

    goto :goto_0

    .line 339
    :cond_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v3}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFc1pSDK;->component4()Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFf1cSDK;->getCurrencyIso4217Code()Ljava/lang/String;

    move-result-object p2

    .line 5021
    iget-object p3, p3, Lcom/appsflyer/internal/AFc1eSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 340
    invoke-direct {p0, v3, p2, p3}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "6.17.3."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    .line 346
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object p3

    const-string v3, "KSAppsFlyerId"

    .line 347
    invoke-virtual {v1, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    .line 348
    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v4

    .line 6179
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {v4}, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-direct {p0, p2, p3, v3, v4}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 350
    :try_start_3
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object p2

    .line 7095
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 351
    const-string p3, "channel"

    invoke-virtual {v1, p3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 352
    const-string/jumbo v3, "preInstallName"

    invoke-virtual {v1, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    :try_start_4
    rem-int p1, v0, v0

    .line 356
    :catchall_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :catchall_1
    :goto_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p2, "launch_counter"

    iget-object p3, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object p3

    .line 8290
    iget-object p3, p3, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result p3

    .line 358
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private getMonetizationNetwork(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 463
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0

    .line 462
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    const-string/jumbo v2, "participantInProxy"

    invoke-interface {v1, v2, p1}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;Z)V

    .line 463
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private static synthetic getRevenue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFd1nSDK;

    const/4 v1, 0x2

    .line 459
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v2, v1

    const-string/jumbo v1, "participantInProxy"

    if-nez v2, :cond_0

    .line 458
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;)V

    const/16 p0, 0x3f

    .line 459
    div-int/2addr p0, v0

    goto :goto_0

    .line 458
    :cond_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private declared-synchronized getRevenue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    .line 250
    :try_start_0
    rem-int v1, v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    rsub-int/lit8 v2, v2, 0x72

    int-to-byte v2, v2

    const-string v3, "\u0002\u0008\u0007\u0003\u3670"

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    rsub-int/lit8 v4, v4, 0x6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/appsflyer/internal/AFd1nSDK;->a(BLjava/lang/String;I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    aget-object v2, v5, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string/jumbo v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string/jumbo v2, "platform"

    const-string v3, "Android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string/jumbo v2, "platform_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 250
    :try_start_2
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v1, :cond_0

    .line 250
    :try_start_4
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 240
    :try_start_5
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v2, "advertiserId"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 242
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "imei"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 250
    :try_start_6
    rem-int p1, v0, v0

    :cond_1
    if-eqz p3, :cond_2

    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 245
    :try_start_7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 246
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p2, "android_id"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 250
    :try_start_8
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0

    rem-int/2addr v0, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method

.method private declared-synchronized getRevenue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    .line 266
    :try_start_0
    rem-int v1, v0, v0

    .line 258
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string/jumbo v2, "sdk_version"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 266
    :try_start_2
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez p1, :cond_1

    .line 266
    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p1, :cond_0

    .line 256
    :try_start_5
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "devkey"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 266
    :try_start_6
    rem-int p1, v0, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 256
    :cond_0
    :try_start_7
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p3, "devkey"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 258
    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 259
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string/jumbo p2, "originalAppsFlyerId"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    .line 261
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 262
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    const-string/jumbo p2, "uid"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 266
    :try_start_8
    rem-int/2addr v0, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 265
    :cond_3
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method

.method private getRevenue(Lcom/appsflyer/internal/AFi1ySDK;Lcom/appsflyer/internal/AFi1ySDK;)Z
    .locals 2

    const/4 v0, 0x2

    .line 417
    rem-int v1, v0, v0

    .line 408
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    if-eq p2, v1, :cond_1

    .line 417
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName()Z

    const/4 p1, 0x0

    throw p1

    .line 13015
    :cond_1
    iget p1, p1, Lcom/appsflyer/internal/AFi1ySDK;->AFAdRevenueData:F

    .line 414
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(F)Z

    move-result p1

    .line 415
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Z)V

    .line 417
    :goto_0
    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 p2, p2, 0x3d

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p2, v0

    if-eqz p2, :cond_2

    const/16 p2, 0x35

    div-int/lit8 p2, p2, 0x0

    :cond_2
    return p1
.end method


# virtual methods
.method public final declared-synchronized AFAdRevenueData()V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x2

    .line 129
    :try_start_0
    rem-int v1, v0, v0

    .line 111
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component4:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData:Z

    if-nez v1, :cond_2

    .line 129
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 115
    iput-boolean v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component4:Z

    .line 116
    iput-boolean v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 118
    :try_start_3
    const-string/jumbo v2, "r_debugging_off"

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :try_start_4
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 120
    :try_start_5
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v3, "Error while stopping remote debugger"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 129
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public final areAllFieldsValid()Z
    .locals 4

    const/4 v0, 0x2

    .line 200
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    iget-boolean v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component4:Z

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v2, v0

    return v1
.end method

.method public final varargs getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 159
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0

    const-string/jumbo v0, "public_api_call"

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0, v0, p1, p2}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 p1, 0x39

    .line 159
    div-int/lit8 p1, p1, 0x0

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getCurrencyIso4217Code()Z
    .locals 4

    const/4 v0, 0x2

    .line 83
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->component1()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object v1

    .line 1064
    iget-object v1, v1, Lcom/appsflyer/internal/AFf1lSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1iSDK;

    .line 2062
    iget-object v1, v1, Lcom/appsflyer/internal/AFf1iSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1wSDK;

    .line 74
    invoke-static {v1}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFi1wSDK;)Lcom/appsflyer/internal/AFi1ySDK;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->component1()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object v2

    .line 3069
    iget-object v2, v2, Lcom/appsflyer/internal/AFf1lSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1iSDK;

    .line 4067
    iget-object v2, v2, Lcom/appsflyer/internal/AFf1iSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1wSDK;

    .line 75
    invoke-static {v2}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFi1wSDK;)Lcom/appsflyer/internal/AFi1ySDK;

    move-result-object v2

    .line 76
    invoke-direct {p0, v1, v2}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFi1ySDK;Lcom/appsflyer/internal/AFi1ySDK;)Z

    move-result v1

    const/16 v2, 0x5e

    .line 77
    div-int/lit8 v2, v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->component1()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object v1

    .line 1064
    iget-object v1, v1, Lcom/appsflyer/internal/AFf1lSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1iSDK;

    .line 2062
    iget-object v1, v1, Lcom/appsflyer/internal/AFf1iSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1wSDK;

    .line 74
    invoke-static {v1}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFi1wSDK;)Lcom/appsflyer/internal/AFi1ySDK;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->component1()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object v2

    .line 3069
    iget-object v2, v2, Lcom/appsflyer/internal/AFf1lSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1iSDK;

    .line 4067
    iget-object v2, v2, Lcom/appsflyer/internal/AFf1iSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1wSDK;

    .line 75
    invoke-static {v2}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFi1wSDK;)Lcom/appsflyer/internal/AFi1ySDK;

    move-result-object v2

    .line 76
    invoke-direct {p0, v1, v2}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFi1ySDK;Lcom/appsflyer/internal/AFi1ySDK;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 78
    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->component3()V

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork()V

    .line 81
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData()V

    .line 83
    sget v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_2

    rem-int/lit8 v0, v0, 0x3

    :cond_2
    :goto_1
    return v1
.end method

.method public final declared-synchronized getMediationNetwork()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 191
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 188
    iput-boolean v2, p0, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData:Z

    .line 189
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue()V

    .line 190
    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->copydefault()V

    goto :goto_1

    .line 188
    :cond_0
    iput-boolean v2, p0, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData:Z

    .line 189
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue()V

    goto :goto_0

    .line 191
    :goto_1
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    const/16 v0, 0x58

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final getMonetizationNetwork()V
    .locals 3

    const/4 v0, 0x2

    .line 196
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    const/4 v1, 0x0

    .line 195
    iput-boolean v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->areAllFieldsValid:Z

    add-int/lit8 v2, v2, 0x63

    .line 196
    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v2, v0

    return-void
.end method

.method public final getMonetizationNetwork(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 179
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    .line 178
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const-string/jumbo p2, "server_response"

    invoke-direct {p0, p2, p1, v1}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 65353
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, 0x6de4e83

    const v1, -0x6de4e80

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final getMonetizationNetwork(Ljava/lang/Throwable;)V
    .locals 6

    const/4 v0, 0x2

    .line 169
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 169
    sget v4, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v4, v4, 0x3d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr v4, v0

    if-nez v4, :cond_1

    const/4 v0, 0x4

    rem-int/lit8 v0, v0, 0x5

    :cond_1
    move-object v0, v3

    :goto_0
    if-nez v1, :cond_2

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 167
    :goto_1
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;

    move-result-object p1

    .line 168
    const-string v0, "exception"

    invoke-direct {p0, v0, v2, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized getRevenue()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    .line 136
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    .line 133
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 134
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 135
    iput v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:I

    .line 136
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getRevenue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 184
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 183
    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v3

    invoke-direct {p0, v2, p1, v1}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    invoke-direct {p0, v2, p1, v1}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 184
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copy:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    const/16 p1, 0x51

    div-int/2addr p1, v3

    :cond_1
    return-void
.end method

.method public final q_(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 2

    .line 65354
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, 0x173559bb

    const v1, -0x173559ba

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method
