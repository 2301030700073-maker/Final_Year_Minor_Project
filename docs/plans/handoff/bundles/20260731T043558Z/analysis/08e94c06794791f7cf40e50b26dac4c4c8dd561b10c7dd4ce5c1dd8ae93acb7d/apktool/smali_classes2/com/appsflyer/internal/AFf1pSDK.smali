.class public final Lcom/appsflyer/internal/AFf1pSDK;
.super Lcom/appsflyer/internal/AFf1uSDK;
.source ""


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFInAppEventParameterName:I = 0x68f41f50

.field private static AFInAppEventType:I = 0x7ac5d756

.field private static AFKeystoreWrapper:[B = null

.field private static AFLogger:[S = null

.field private static d:I = 0x0

.field private static registerClient:I = -0x5ad951bf

.field private static unregisterClient:I = 0x1


# instance fields
.field private final copydefault:Lcom/appsflyer/internal/AFc1pSDK;

.field private final equals:Lcom/appsflyer/internal/AFg1rSDK;

.field private final hashCode:Ljava/lang/String;

.field private final toString:Lcom/appsflyer/internal/AFc1gSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 65352
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x66t
        0x61t
        -0x7dt
        0x7ct
        0x6ct
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/appsflyer/internal/AFg1uSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1uSDK;-><init>()V

    invoke-direct {p0, v0, p2, p1}, Lcom/appsflyer/internal/AFf1uSDK;-><init>(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;)V

    .line 48
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1pSDK;->copydefault:Lcom/appsflyer/internal/AFc1pSDK;

    .line 49
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1pSDK;->toString:Lcom/appsflyer/internal/AFc1gSDK;

    .line 50
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->hashCode:Ljava/lang/String;

    .line 51
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->component4()Lcom/appsflyer/internal/AFg1rSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->equals:Lcom/appsflyer/internal/AFg1rSDK;

    return-void
.end method

.method private static a(IBSII[Ljava/lang/Object;)V
    .locals 14

    const/4 v0, 0x2

    .line 235
    rem-int v1, v0, v0

    .line 167
    new-instance v1, Lcom/appsflyer/internal/AFk1kSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1kSDK;-><init>()V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    sget v3, Lcom/appsflyer/internal/AFf1pSDK;->AFInAppEventParameterName:I

    int-to-long v3, v3

    const-wide v5, 0x6002ebe568f41f6cL    # 3.171192821290687E154

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v3, p3, v3

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v3, v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    if-eqz v4, :cond_4

    .line 235
    sget v3, Lcom/appsflyer/internal/AFf1pSDK;->$10:I

    add-int/lit8 v3, v3, 0x2d

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lcom/appsflyer/internal/AFf1pSDK;->$11:I

    rem-int/2addr v3, v0

    .line 174
    sget-object v3, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:[B

    if-eqz v3, :cond_2

    array-length v9, v3

    new-array v10, v9, [B

    move v11, v7

    :goto_1
    if-ge v11, v9, :cond_1

    .line 235
    sget v12, Lcom/appsflyer/internal/AFf1pSDK;->$11:I

    add-int/lit8 v12, v12, 0x23

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/AFf1pSDK;->$10:I

    rem-int/2addr v12, v0

    .line 174
    aget-byte v12, v3, v11

    int-to-long v12, v12

    xor-long/2addr v12, v5

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v10

    :cond_2
    if-eqz v3, :cond_3

    .line 175
    sget-object v3, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:[B

    sget v9, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    add-int/2addr v9, p0

    aget-byte v3, v3, v9

    int-to-long v9, v3

    xor-long/2addr v9, v5

    long-to-int v3, v9

    int-to-byte v3, v3

    sget v9, Lcom/appsflyer/internal/AFf1pSDK;->AFInAppEventParameterName:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    add-int/2addr v3, v9

    int-to-byte v3, v3

    goto :goto_2

    .line 182
    :cond_3
    sget-object v3, Lcom/appsflyer/internal/AFf1pSDK;->AFLogger:[S

    sget v9, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    add-int/2addr v9, p0

    aget-short v3, v3, v9

    int-to-long v9, v3

    xor-long/2addr v9, v5

    long-to-int v3, v9

    int-to-short v3, v3

    sget v9, Lcom/appsflyer/internal/AFf1pSDK;->AFInAppEventParameterName:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    add-int/2addr v3, v9

    int-to-short v3, v3

    :cond_4
    :goto_2
    if-lez v3, :cond_a

    add-int v9, p0, v3

    sub-int/2addr v9, v0

    .line 193
    sget v10, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:I

    int-to-long v10, v10

    xor-long/2addr v10, v5

    long-to-int v10, v10

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    .line 198
    iput v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getCurrencyIso4217Code:I

    .line 213
    sget v4, Lcom/appsflyer/internal/AFf1pSDK;->AFInAppEventType:I

    int-to-long v9, v4

    xor-long/2addr v9, v5

    long-to-int v4, v9

    add-int v4, p4, v4

    int-to-char v4, v4

    iput-char v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    .line 214
    iget-char v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    iget-char v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    iput-char v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->getMediationNetwork:C

    .line 218
    sget-object v4, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:[B

    if-eqz v4, :cond_6

    array-length v9, v4

    new-array v10, v9, [B

    .line 235
    sget v11, Lcom/appsflyer/internal/AFf1pSDK;->$10:I

    add-int/lit8 v11, v11, 0x75

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/AFf1pSDK;->$11:I

    rem-int/2addr v11, v0

    move v11, v7

    :goto_3
    if-ge v11, v9, :cond_5

    .line 218
    aget-byte v12, v4, v11

    int-to-long v12, v12

    xor-long/2addr v12, v5

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    move-object v4, v10

    :cond_6
    if-eqz v4, :cond_8

    .line 235
    sget v4, Lcom/appsflyer/internal/AFf1pSDK;->$10:I

    add-int/lit8 v4, v4, 0x19

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lcom/appsflyer/internal/AFf1pSDK;->$11:I

    rem-int/2addr v4, v0

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    move v0, v8

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v7

    .line 219
    :goto_5
    iput v8, v1, Lcom/appsflyer/internal/AFk1kSDK;->AFAdRevenueData:I

    :goto_6
    iget v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->AFAdRevenueData:I

    if-ge v4, v3, :cond_a

    if-eqz v0, :cond_9

    .line 222
    sget-object v4, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:[B

    iget v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getCurrencyIso4217Code:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v1, Lcom/appsflyer/internal/AFk1kSDK;->getCurrencyIso4217Code:I

    aget-byte v4, v4, v9

    int-to-long v9, v4

    xor-long/2addr v9, v5

    long-to-int v4, v9

    int-to-byte v4, v4

    .line 223
    iget-char v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getMediationNetwork:C

    add-int v4, v4, p2

    int-to-byte v4, v4

    xor-int/2addr v4, p1

    add-int/2addr v9, v4

    int-to-char v4, v9

    iput-char v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    goto :goto_7

    .line 226
    :cond_9
    sget-object v4, Lcom/appsflyer/internal/AFf1pSDK;->AFLogger:[S

    iget v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getCurrencyIso4217Code:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v1, Lcom/appsflyer/internal/AFk1kSDK;->getCurrencyIso4217Code:I

    aget-short v4, v4, v9

    int-to-long v9, v4

    xor-long/2addr v9, v5

    long-to-int v4, v9

    int-to-short v4, v4

    .line 227
    iget-char v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getMediationNetwork:C

    add-int v4, v4, p2

    int-to-short v4, v4

    xor-int/2addr v4, p1

    add-int/2addr v9, v4

    int-to-char v4, v9

    iput-char v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    .line 230
    :goto_7
    iget-char v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    iget-char v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    iput-char v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->getMediationNetwork:C

    .line 219
    iget v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->AFAdRevenueData:I

    add-int/2addr v4, v8

    iput v4, v1, Lcom/appsflyer/internal/AFk1kSDK;->AFAdRevenueData:I

    goto :goto_6

    .line 235
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v7

    return-void
.end method

.method private equals()V
    .locals 4

    const/4 v0, 0x2

    .line 157
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    rem-int/2addr v1, v0

    .line 155
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1uSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1oSDK;

    const-string/jumbo v2, "sentRegisterRequestToAF"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;Z)V

    .line 156
    const-string v1, "[register] Successfully registered for Uninstall Tracking"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 157
    sget v1, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    rem-int/2addr v1, v0

    return-void
.end method

.method private static synthetic getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 151
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 0
    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFf1pSDK;

    const/4 p0, 0x2

    .line 151
    rem-int v2, p0, p0

    sget v2, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    rem-int/2addr v2, p0

    add-int/lit8 v3, v3, 0x45

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    rem-int/2addr v3, p0

    if-eqz v3, :cond_0

    const/16 p0, 0x4b

    div-int/2addr p0, v0

    :cond_0
    return-object v1
.end method

.method public static synthetic getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 5

    mul-int/lit16 v0, p1, 0x13f

    mul-int/lit16 v1, p2, -0x13d

    add-int/2addr v0, v1

    not-int v1, p2

    not-int v2, p1

    or-int/2addr v2, p3

    not-int v2, v2

    or-int/2addr v2, v1

    mul-int/lit16 v2, v2, -0x13e

    add-int/2addr v0, v2

    or-int v2, v1, p3

    not-int v2, v2

    not-int v3, p3

    or-int v4, v3, p1

    or-int/2addr v4, p2

    not-int v4, v4

    or-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x13e

    add-int/2addr v0, v2

    or-int/2addr v1, v3

    or-int/2addr v1, p1

    not-int v1, v1

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    not-int p1, p1

    or-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x13e

    add-int/2addr v0, p1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFf1pSDK;->getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFf1pSDK;->getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFf1pSDK;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, Landroid/content/pm/PackageManager;

    const/4 v1, 0x2

    .line 135
    rem-int v2, v1, v1

    .line 129
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1pSDK;->copydefault:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 135
    sget p0, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    rem-int/2addr p0, v1

    if-nez p0, :cond_0

    .line 131
    const-string p0, ""

    return-object p0

    :cond_0
    throw v2

    .line 134
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    sget v0, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
.end method

.method private s_(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3

    .line 65354
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0xae5257c

    const v2, 0xae5257c

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFf1pSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected final AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 2

    const/4 p1, 0x2

    .line 177
    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    rem-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method protected final areAllFieldsValid(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 146
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1pSDK;->copydefault:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1pSDK;->component4()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    const-string v2, "advertiserId"

    invoke-virtual {p1, v2, v1}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 143
    sget p1, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    rem-int/2addr p1, v0

    :cond_0
    return-void

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->copydefault:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1pSDK;->component4()Ljava/lang/String;

    const/4 p1, 0x0

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method protected final copydefault()Z
    .locals 4

    .line 65353
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0xd4840fa

    const v3, -0xd4840f9

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFf1pSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 2

    const/4 p1, 0x2

    .line 167
    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    rem-int/2addr v0, p1

    return-void
.end method

.method protected final getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 12

    const/4 v0, 0x2

    .line 125
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 65
    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFf1uSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 66
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1pSDK;->toString:Lcom/appsflyer/internal/AFc1gSDK;

    .line 2025
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v3

    const/16 v4, 0x62

    .line 68
    div-int/2addr v4, v2

    if-eqz v1, :cond_7

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFf1uSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 66
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1pSDK;->toString:Lcom/appsflyer/internal/AFc1gSDK;

    .line 2025
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v3

    if-eqz v1, :cond_7

    .line 72
    :goto_0
    invoke-virtual {v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_6

    .line 78
    :try_start_0
    const-string v3, "app_version_code"

    iget-object v5, p0, Lcom/appsflyer/internal/AFf1pSDK;->copydefault:Lcom/appsflyer/internal/AFc1pSDK;

    .line 3095
    invoke-virtual {v5}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 79
    const-string v3, "app_version_name"

    iget-object v5, p0, Lcom/appsflyer/internal/AFf1pSDK;->copydefault:Lcom/appsflyer/internal/AFc1pSDK;

    .line 4170
    invoke-virtual {v5}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1, v3, v5}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 82
    const-string v5, "app_name"

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    const v7, -0xae5257c

    const v8, 0xae5257c

    invoke-static {v3, v7, v8, v6}, Lcom/appsflyer/internal/AFf1pSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v5, v3}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 84
    iget-object v3, p0, Lcom/appsflyer/internal/AFf1pSDK;->copydefault:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v5, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 85
    const-string/jumbo v3, "yyyy-MM-dd_HHmmssZ"

    .line 5022
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    const-string v3, "installDate"

    invoke-static {v7, v5, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 88
    const-string v5, "Exception while collecting application version info."

    invoke-static {v5, v3}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :goto_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFf1pSDK;->equals:Lcom/appsflyer/internal/AFg1rSDK;

    .line 6172
    iget-object v5, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 90
    invoke-interface {v3, v5}, Lcom/appsflyer/internal/AFg1rSDK;->getRevenue(Ljava/util/Map;)V

    .line 7172
    iget-object v3, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 92
    const-string v5, "ivc"

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 96
    const-string v5, "appUserId"

    invoke-virtual {p1, v5, v3}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 100
    :cond_1
    :try_start_1
    const-string/jumbo v3, "model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    const-wide/16 v5, 0x0

    .line 101
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    const v5, 0x322d4ed3

    sub-int v6, v5, v3

    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    int-to-byte v7, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-short v8, v3

    invoke-static {v2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    rsub-int/lit8 v9, v3, -0x37

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    const v5, -0x1231c7d8

    sub-int v10, v5, v3

    new-array v3, v4, [Ljava/lang/Object;

    move-object v11, v3

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/internal/AFf1pSDK;->a(IBSII[Ljava/lang/Object;)V

    aget-object v3, v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 103
    const-string v5, "Exception while collecting device brand and model."

    invoke-static {v5, v3}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v5, "deviceTrackingDisabled"

    invoke-virtual {v3, v5, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v3, v4

    if-eq v3, v4, :cond_2

    .line 108
    const-string/jumbo v3, "true"

    invoke-virtual {p1, v5, v3}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 110
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1kSDK;->l_(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFb1mSDK;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 112
    const-string v3, "amazon_aid"

    .line 8024
    iget-object v4, v1, Lcom/appsflyer/internal/AFb1mSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 112
    invoke-virtual {p1, v3, v4}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 9029
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1mSDK;->getRevenue:Ljava/lang/Boolean;

    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "amazon_aid_limit"

    invoke-virtual {p1, v3, v1}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 125
    sget v1, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    rem-int/2addr v1, v0

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component2:Lcom/appsflyer/internal/AFf1cSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v1

    const-string v3, "devkey"

    invoke-virtual {p1, v3, v1}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 116
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1pSDK;->copydefault:Lcom/appsflyer/internal/AFc1pSDK;

    .line 10179
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string/jumbo v3, "uid"

    invoke-virtual {p1, v3, v1}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 117
    const-string v1, "af_gcm_token"

    iget-object v3, p0, Lcom/appsflyer/internal/AFf1pSDK;->hashCode:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 118
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1uSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v3, "appsFlyerCount"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v1

    .line 119
    const-string v3, "launch_counter"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sdk"

    invoke-virtual {p1, v3, v1}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 121
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1pSDK;->copydefault:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1pSDK;->areAllFieldsValid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 125
    sget v3, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    add-int/lit8 v3, v3, 0x3b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    rem-int/2addr v3, v0

    const-string v0, "channel"

    if-nez v3, :cond_4

    .line 123
    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    const/16 p1, 0x5d

    .line 125
    div-int/2addr p1, v2

    goto :goto_3

    .line 123
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    :cond_5
    :goto_3
    return-void

    .line 73
    :cond_6
    const-string p1, "CustomerUserId not set, Tracking is disabled"

    invoke-static {p1, v4}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomerUserId not set, register is not sent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context is not provided, can\'t send register request"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final getMonetizationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 2

    const/4 p1, 0x2

    .line 172
    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    rem-int/2addr v0, p1

    return-void
.end method

.method public final getRevenue()V
    .locals 3

    const/4 v0, 0x2

    .line 61
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    rem-int/2addr v1, v0

    .line 56
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1uSDK;->getRevenue()V

    .line 1108
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFe1xSDK;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1xSDK;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1pSDK;->equals()V

    .line 61
    :cond_0
    sget v1, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    rem-int/2addr v1, v0

    return-void
.end method

.method protected final getRevenue(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 2

    const/4 p1, 0x2

    .line 162
    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFf1pSDK;->unregisterClient:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1pSDK;->d:I

    rem-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
