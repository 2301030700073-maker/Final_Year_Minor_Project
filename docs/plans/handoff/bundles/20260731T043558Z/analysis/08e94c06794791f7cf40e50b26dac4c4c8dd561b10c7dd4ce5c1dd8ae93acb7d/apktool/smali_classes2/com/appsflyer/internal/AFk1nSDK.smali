.class public final Lcom/appsflyer/internal/AFk1nSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final AFAdRevenueData:[I

.field private static areAllFieldsValid:[I

.field private static component2:[B

.field static final getCurrencyIso4217Code:[I

.field static final getMediationNetwork:[I

.field static final getMonetizationNetwork:[B

.field static final getRevenue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x100

    .line 18
    new-array v1, v0, [B

    sput-object v1, Lcom/appsflyer/internal/AFk1nSDK;->component2:[B

    .line 21
    new-array v1, v0, [B

    sput-object v1, Lcom/appsflyer/internal/AFk1nSDK;->getMonetizationNetwork:[B

    .line 23
    new-array v1, v0, [I

    sput-object v1, Lcom/appsflyer/internal/AFk1nSDK;->AFAdRevenueData:[I

    .line 24
    new-array v1, v0, [I

    sput-object v1, Lcom/appsflyer/internal/AFk1nSDK;->getRevenue:[I

    .line 25
    new-array v1, v0, [I

    sput-object v1, Lcom/appsflyer/internal/AFk1nSDK;->getCurrencyIso4217Code:[I

    .line 26
    new-array v1, v0, [I

    sput-object v1, Lcom/appsflyer/internal/AFk1nSDK;->getMediationNetwork:[I

    const/16 v1, 0xa

    .line 30
    new-array v2, v1, [I

    sput-object v2, Lcom/appsflyer/internal/AFk1nSDK;->areAllFieldsValid:[I

    const/4 v2, 0x1

    move v3, v2

    move v4, v3

    :cond_0
    shl-int/lit8 v5, v3, 0x1

    xor-int/2addr v5, v3

    and-int/lit16 v3, v3, 0x80

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    const/16 v3, 0x1b

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    xor-int/2addr v3, v5

    int-to-byte v3, v3

    shl-int/lit8 v5, v4, 0x1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    shl-int/lit8 v5, v4, 0x4

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    xor-int/2addr v4, v5

    int-to-byte v4, v4

    .line 3328
    sget-object v5, Lcom/appsflyer/internal/AFk1nSDK;->component2:[B

    and-int/lit16 v7, v3, 0xff

    xor-int/lit8 v8, v4, 0x63

    and-int/lit16 v9, v4, 0xff

    shl-int/lit8 v10, v9, 0x1

    shr-int/lit8 v11, v9, 0x7

    or-int/2addr v10, v11

    xor-int/2addr v8, v10

    shl-int/lit8 v10, v9, 0x2

    shr-int/lit8 v11, v9, 0x6

    or-int/2addr v10, v11

    xor-int/2addr v8, v10

    shl-int/lit8 v10, v9, 0x3

    shr-int/lit8 v11, v9, 0x5

    or-int/2addr v10, v11

    xor-int/2addr v8, v10

    shl-int/lit8 v10, v9, 0x4

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    if-ne v7, v2, :cond_0

    const/16 v3, 0x63

    .line 3333
    aput-byte v3, v5, v6

    move v3, v6

    :goto_2
    if-ge v3, v0, :cond_6

    .line 41
    sget-object v4, Lcom/appsflyer/internal/AFk1nSDK;->component2:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    .line 43
    sget-object v5, Lcom/appsflyer/internal/AFk1nSDK;->getMonetizationNetwork:[B

    int-to-byte v7, v3

    aput-byte v7, v5, v4

    shl-int/lit8 v5, v3, 0x1

    if-lt v5, v0, :cond_3

    xor-int/lit16 v5, v5, 0x11b

    :cond_3
    shl-int/lit8 v7, v5, 0x1

    if-lt v7, v0, :cond_4

    xor-int/lit16 v7, v7, 0x11b

    :cond_4
    shl-int/lit8 v8, v7, 0x1

    if-lt v8, v0, :cond_5

    xor-int/lit16 v8, v8, 0x11b

    :cond_5
    xor-int v9, v8, v3

    xor-int v10, v9, v5

    xor-int v11, v9, v7

    xor-int/2addr v7, v8

    xor-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v7, v9, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v7, v11, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v10

    .line 67
    sget-object v7, Lcom/appsflyer/internal/AFk1nSDK;->AFAdRevenueData:[I

    aput v5, v7, v4

    .line 68
    sget-object v7, Lcom/appsflyer/internal/AFk1nSDK;->getRevenue:[I

    ushr-int/lit8 v8, v5, 0x8

    shl-int/lit8 v9, v5, 0x18

    or-int/2addr v8, v9

    aput v8, v7, v4

    .line 69
    sget-object v7, Lcom/appsflyer/internal/AFk1nSDK;->getCurrencyIso4217Code:[I

    ushr-int/lit8 v8, v5, 0x10

    shl-int/lit8 v9, v5, 0x10

    or-int/2addr v8, v9

    aput v8, v7, v4

    .line 70
    sget-object v7, Lcom/appsflyer/internal/AFk1nSDK;->getMediationNetwork:[I

    ushr-int/lit8 v8, v5, 0x18

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v8

    aput v5, v7, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8338
    :cond_6
    sget-object v3, Lcom/appsflyer/internal/AFk1nSDK;->areAllFieldsValid:[I

    const/high16 v4, 0x1000000

    aput v4, v3, v6

    move v3, v2

    move v4, v3

    :goto_3
    if-ge v3, v1, :cond_8

    shl-int/2addr v4, v2

    if-lt v4, v0, :cond_7

    xor-int/lit16 v4, v4, 0x11b

    .line 8344
    :cond_7
    sget-object v5, Lcom/appsflyer/internal/AFk1nSDK;->areAllFieldsValid:[I

    shl-int/lit8 v6, v4, 0x18

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public static getMediationNetwork(I)[[B
    .locals 10

    const/4 v0, 0x4

    .line 299
    new-array v1, v0, [[B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    shl-int/lit8 v4, v3, 0x3

    ushr-int v4, p0, v4

    and-int/lit8 v5, v4, 0x3

    int-to-byte v5, v5

    shr-int/lit8 v6, v4, 0x2

    const/4 v7, 0x3

    and-int/2addr v6, v7

    int-to-byte v6, v6

    shr-int/lit8 v8, v4, 0x4

    and-int/2addr v8, v7

    int-to-byte v8, v8

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v7

    int-to-byte v4, v4

    .line 302
    new-array v9, v0, [B

    aput-byte v5, v9, v2

    const/4 v5, 0x1

    aput-byte v6, v9, v5

    const/4 v5, 0x2

    aput-byte v8, v9, v5

    aput-byte v4, v9, v7

    aput-object v9, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static getMonetizationNetwork([BI)[I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1103
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    add-int/lit8 v2, v1, 0x1

    const/4 v4, 0x4

    mul-int/2addr v2, v4

    .line 1117
    new-array v5, v2, [I

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v4, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 1126
    aget-byte v10, v0, v8

    shl-int/lit8 v10, v10, 0x18

    add-int/lit8 v11, v8, 0x2

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v3

    or-int/2addr v9, v10

    add-int/lit8 v10, v8, 0x3

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v9, v11

    add-int/2addr v8, v4

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    aput v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v4

    move v8, v6

    move v9, v8

    :goto_1
    if-ge v7, v2, :cond_2

    add-int/lit8 v10, v7, -0x1

    .line 1138
    aget v10, v5, v10

    if-nez v8, :cond_1

    .line 1142
    sget-object v8, Lcom/appsflyer/internal/AFk1nSDK;->component2:[B

    ushr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v8, v11

    shl-int/lit8 v11, v11, 0x18

    ushr-int/lit8 v12, v10, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v8, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v3

    or-int/2addr v11, v12

    and-int/lit16 v12, v10, 0xff

    aget-byte v12, v8, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    ushr-int/lit8 v10, v10, 0x18

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v11

    .line 1147
    sget-object v10, Lcom/appsflyer/internal/AFk1nSDK;->areAllFieldsValid:[I

    add-int/lit8 v11, v9, 0x1

    aget v9, v10, v9

    xor-int v10, v8, v9

    move v8, v4

    move v9, v11

    :cond_1
    add-int/lit8 v11, v7, -0x4

    .line 1149
    aget v11, v5, v11

    xor-int/2addr v10, v11

    aput v10, v5, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 2181
    :cond_2
    array-length v0, v0

    if-ne v0, v3, :cond_4

    .line 2195
    new-array v0, v2, [I

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v2, 0x1

    .line 2204
    aget v7, v5, v2

    aput v7, v0, v6

    add-int/lit8 v6, v2, 0x2

    .line 2205
    aget v3, v5, v3

    const/4 v7, 0x1

    aput v3, v0, v7

    add-int/lit8 v3, v2, 0x3

    .line 2206
    aget v6, v5, v6

    const/4 v8, 0x2

    aput v6, v0, v8

    .line 2207
    aget v3, v5, v3

    const/4 v6, 0x3

    aput v3, v0, v6

    add-int/lit8 v2, v2, -0x4

    :goto_2
    if-ge v7, v1, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 2212
    aget v8, v5, v2

    add-int/lit8 v9, v4, 0x1

    .line 2213
    sget-object v10, Lcom/appsflyer/internal/AFk1nSDK;->AFAdRevenueData:[I

    sget-object v11, Lcom/appsflyer/internal/AFk1nSDK;->component2:[B

    ushr-int/lit8 v12, v8, 0x18

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    aget v12, v10, v12

    sget-object v13, Lcom/appsflyer/internal/AFk1nSDK;->getRevenue:[I

    ushr-int/lit8 v14, v8, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v13, v14

    xor-int/2addr v12, v14

    sget-object v14, Lcom/appsflyer/internal/AFk1nSDK;->getCurrencyIso4217Code:[I

    ushr-int/lit8 v15, v8, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v11, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v14, v15

    xor-int/2addr v12, v15

    sget-object v15, Lcom/appsflyer/internal/AFk1nSDK;->getMediationNetwork:[I

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v11, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v15, v8

    xor-int/2addr v8, v12

    aput v8, v0, v4

    add-int/lit8 v8, v2, 0x2

    .line 2218
    aget v3, v5, v3

    add-int/lit8 v12, v4, 0x2

    ushr-int/lit8 v16, v3, 0x18

    .line 2219
    aget-byte v6, v11, v16

    and-int/lit16 v6, v6, 0xff

    aget v6, v10, v6

    ushr-int/lit8 v1, v3, 0x10

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v13, v1

    xor-int/2addr v1, v6

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v11, v6

    and-int/lit16 v6, v6, 0xff

    aget v6, v14, v6

    xor-int/2addr v1, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v1, v3

    aput v1, v0, v9

    add-int/lit8 v1, v2, 0x3

    .line 2224
    aget v3, v5, v8

    add-int/lit8 v6, v4, 0x3

    ushr-int/lit8 v8, v3, 0x18

    .line 2225
    aget-byte v8, v11, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v10, v8

    ushr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v11, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v13, v9

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v11, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v14, v9

    xor-int/2addr v8, v9

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v3, v8

    aput v3, v0, v12

    .line 2230
    aget v1, v5, v1

    add-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v3, v1, 0x18

    .line 2231
    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v10, v3

    ushr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v11, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v13, v8

    xor-int/2addr v3, v8

    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v11, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v3, v8

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v15, v1

    xor-int/2addr v1, v3

    aput v1, v0, v6

    add-int/lit8 v2, v2, -0x4

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p1

    const/4 v6, 0x3

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v3, v2, 0x1

    .line 2240
    aget v6, v5, v2

    aput v6, v0, v4

    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v2, 0x2

    .line 2241
    aget v3, v5, v3

    aput v3, v0, v1

    const/4 v1, 0x3

    add-int/2addr v4, v1

    add-int/2addr v2, v1

    .line 2242
    aget v1, v5, v7

    aput v1, v0, v6

    .line 2243
    aget v1, v5, v2

    aput v1, v0, v4

    return-object v0

    .line 2186
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1108
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
