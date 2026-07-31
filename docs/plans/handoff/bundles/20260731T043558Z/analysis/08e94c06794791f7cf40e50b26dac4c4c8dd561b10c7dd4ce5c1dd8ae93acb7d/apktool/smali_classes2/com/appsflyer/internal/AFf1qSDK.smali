.class public final Lcom/appsflyer/internal/AFf1qSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFAdRevenueData:I = 0x0

.field private static areAllFieldsValid:I = 0x0

.field private static component1:I = 0x1

.field private static getCurrencyIso4217Code:I

.field private static getMediationNetwork:[B

.field private static getMonetizationNetwork:[S

.field private static getRevenue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65354
    invoke-static {}, Lcom/appsflyer/internal/AFf1qSDK;->getRevenue()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/util/TypedValue;->complexToFloat(I)F

    invoke-static {v0, v0}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    const/16 v0, 0x30

    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    sget v0, Lcom/appsflyer/internal/AFf1qSDK;->areAllFieldsValid:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1qSDK;->component1:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    sget v3, Lcom/appsflyer/internal/AFf1qSDK;->AFAdRevenueData:I

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

    .line 174
    sget-object v3, Lcom/appsflyer/internal/AFf1qSDK;->getMediationNetwork:[B

    if-eqz v3, :cond_2

    array-length v9, v3

    new-array v10, v9, [B

    move v11, v7

    :goto_1
    if-ge v11, v9, :cond_1

    .line 235
    sget v12, Lcom/appsflyer/internal/AFf1qSDK;->$11:I

    add-int/lit8 v12, v12, 0x45

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/AFf1qSDK;->$10:I

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
    sget-object v3, Lcom/appsflyer/internal/AFf1qSDK;->getMediationNetwork:[B

    sget v9, Lcom/appsflyer/internal/AFf1qSDK;->getCurrencyIso4217Code:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    add-int/2addr v9, p0

    aget-byte v3, v3, v9

    int-to-long v9, v3

    xor-long/2addr v9, v5

    long-to-int v3, v9

    int-to-byte v3, v3

    sget v9, Lcom/appsflyer/internal/AFf1qSDK;->AFAdRevenueData:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    add-int/2addr v3, v9

    int-to-byte v3, v3

    .line 235
    sget v9, Lcom/appsflyer/internal/AFf1qSDK;->$11:I

    add-int/lit8 v9, v9, 0x5b

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFf1qSDK;->$10:I

    rem-int/2addr v9, v0

    goto :goto_2

    .line 182
    :cond_3
    sget-object v3, Lcom/appsflyer/internal/AFf1qSDK;->getMonetizationNetwork:[S

    sget v9, Lcom/appsflyer/internal/AFf1qSDK;->getCurrencyIso4217Code:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    add-int/2addr v9, p0

    aget-short v3, v3, v9

    int-to-long v9, v3

    xor-long/2addr v9, v5

    long-to-int v3, v9

    int-to-short v3, v3

    sget v9, Lcom/appsflyer/internal/AFf1qSDK;->AFAdRevenueData:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    add-int/2addr v3, v9

    int-to-short v3, v3

    :cond_4
    :goto_2
    if-lez v3, :cond_b

    add-int v9, p0, v3

    sub-int/2addr v9, v0

    .line 193
    sget v10, Lcom/appsflyer/internal/AFf1qSDK;->getCurrencyIso4217Code:I

    int-to-long v10, v10

    xor-long/2addr v10, v5

    long-to-int v10, v10

    add-int/2addr v9, v10

    if-eqz v4, :cond_5

    move v4, v8

    goto :goto_3

    .line 235
    :cond_5
    sget v4, Lcom/appsflyer/internal/AFf1qSDK;->$11:I

    add-int/lit8 v4, v4, 0x6b

    rem-int/lit16 v10, v4, 0x80

    sput v10, Lcom/appsflyer/internal/AFf1qSDK;->$10:I

    rem-int/2addr v4, v0

    move v4, v7

    :goto_3
    add-int/2addr v9, v4

    .line 198
    iput v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getCurrencyIso4217Code:I

    .line 213
    sget v4, Lcom/appsflyer/internal/AFf1qSDK;->getRevenue:I

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
    sget-object v4, Lcom/appsflyer/internal/AFf1qSDK;->getMediationNetwork:[B

    if-eqz v4, :cond_8

    .line 235
    sget v9, Lcom/appsflyer/internal/AFf1qSDK;->$10:I

    add-int/lit8 v9, v9, 0x61

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFf1qSDK;->$11:I

    rem-int/2addr v9, v0

    if-nez v9, :cond_6

    array-length v9, v4

    new-array v10, v9, [B

    move v11, v8

    goto :goto_4

    .line 218
    :cond_6
    array-length v9, v4

    new-array v10, v9, [B

    move v11, v7

    :goto_4
    if-ge v11, v9, :cond_7

    aget-byte v12, v4, v11

    int-to-long v12, v12

    xor-long/2addr v12, v5

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    move-object v4, v10

    :cond_8
    if-eqz v4, :cond_9

    move v4, v8

    goto :goto_5

    :cond_9
    move v4, v7

    .line 219
    :goto_5
    iput v8, v1, Lcom/appsflyer/internal/AFk1kSDK;->AFAdRevenueData:I

    :goto_6
    iget v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->AFAdRevenueData:I

    if-ge v9, v3, :cond_b

    xor-int/lit8 v9, v4, 0x1

    if-eq v9, v8, :cond_a

    .line 222
    sget-object v9, Lcom/appsflyer/internal/AFf1qSDK;->getMediationNetwork:[B

    iget v10, v1, Lcom/appsflyer/internal/AFk1kSDK;->getCurrencyIso4217Code:I

    add-int/lit8 v11, v10, -0x1

    iput v11, v1, Lcom/appsflyer/internal/AFk1kSDK;->getCurrencyIso4217Code:I

    aget-byte v9, v9, v10

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 223
    iget-char v10, v1, Lcom/appsflyer/internal/AFk1kSDK;->getMediationNetwork:C

    add-int v9, v9, p2

    int-to-byte v9, v9

    xor-int/2addr v9, p1

    add-int/2addr v10, v9

    int-to-char v9, v10

    iput-char v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    goto :goto_7

    .line 226
    :cond_a
    sget-object v9, Lcom/appsflyer/internal/AFf1qSDK;->getMonetizationNetwork:[S

    iget v10, v1, Lcom/appsflyer/internal/AFk1kSDK;->getCurrencyIso4217Code:I

    add-int/lit8 v11, v10, -0x1

    iput v11, v1, Lcom/appsflyer/internal/AFk1kSDK;->getCurrencyIso4217Code:I

    aget-short v9, v9, v10

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    int-to-short v9, v9

    .line 227
    iget-char v10, v1, Lcom/appsflyer/internal/AFk1kSDK;->getMediationNetwork:C

    add-int v9, v9, p2

    int-to-short v9, v9

    xor-int/2addr v9, p1

    add-int/2addr v10, v9

    int-to-char v9, v10

    iput-char v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    .line 230
    :goto_7
    iget-char v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    iget-char v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getRevenue:C

    iput-char v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->getMediationNetwork:C

    .line 219
    iget v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->AFAdRevenueData:I

    add-int/2addr v9, v8

    iput v9, v1, Lcom/appsflyer/internal/AFk1kSDK;->AFAdRevenueData:I

    .line 235
    sget v9, Lcom/appsflyer/internal/AFf1qSDK;->$11:I

    add-int/lit8 v9, v9, 0x1f

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFf1qSDK;->$10:I

    rem-int/2addr v9, v0

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v7

    return-void
.end method

.method private static getCurrencyIso4217Code(Lcom/appsflyer/internal/AFi1wSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFi1rSDK;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 64
    new-instance p1, Lcom/appsflyer/internal/AFi1rSDK;

    .line 1063
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1wSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFh1cSDK;

    .line 64
    sget-object p2, Lcom/appsflyer/internal/AFh1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFh1cSDK;

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object p0, Lcom/appsflyer/internal/AFi1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1uSDK;

    invoke-direct {p1, v0, p0}, Lcom/appsflyer/internal/AFi1rSDK;-><init>(ZLcom/appsflyer/internal/AFi1uSDK;)V

    return-object p1

    .line 68
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const v3, 0x5ac383cb

    add-int v4, v2, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    neg-int v2, v2

    int-to-byte v2, v2

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    cmp-long v3, v7, v5

    add-int/lit8 v3, v3, 0x6b

    int-to-short v6, v3

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    shr-int/lit8 v3, v3, 0x6

    rsub-int/lit8 v7, v3, -0x52

    const/16 v3, 0x30

    const-string v10, ""

    invoke-static {v10, v3, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    const v5, -0x750b3ea1

    add-int v8, v3, v5

    new-array v0, v0, [Ljava/lang/Object;

    move v5, v2

    move-object v9, v0

    invoke-static/range {v4 .. v9}, Lcom/appsflyer/internal/AFf1qSDK;->a(IBSII[Ljava/lang/Object;)V

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2063
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1wSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFh1cSDK;

    .line 70
    sget-object v2, Lcom/appsflyer/internal/AFh1cSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1cSDK;

    if-ne v1, v2, :cond_2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object p3, v0

    .line 3058
    :goto_1
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1wSDK;->getRevenue:Ljava/lang/String;

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    const-string p3, "android"

    const-string/jumbo v0, "v1"

    invoke-static {p2, p0, p3, v0, v10}, Lcom/appsflyer/internal/AFf1qSDK;->getMediationNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 78
    new-instance p1, Lcom/appsflyer/internal/AFi1rSDK;

    if-eqz p0, :cond_3

    sget-object p2, Lcom/appsflyer/internal/AFi1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1uSDK;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/appsflyer/internal/AFi1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1uSDK;

    :goto_2
    invoke-direct {p1, p0, p2}, Lcom/appsflyer/internal/AFi1rSDK;-><init>(ZLcom/appsflyer/internal/AFi1uSDK;)V

    return-object p1
.end method

.method private static getMediationNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 106
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFf1qSDK;->areAllFieldsValid:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1qSDK;->component1:I

    rem-int/2addr v1, v0

    const/4 v1, 0x5

    .line 96
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    aput-object p3, v1, v0

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const/4 p1, 0x4

    const-string p2, ""

    aput-object p2, v1, p1

    .line 4120
    const-string/jumbo p1, "\u2063"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFj1bSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xc

    if-ge p1, p2, :cond_0

    .line 106
    sget p1, Lcom/appsflyer/internal/AFf1qSDK;->areAllFieldsValid:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFf1qSDK;->component1:I

    rem-int/2addr p1, v0

    return-object p0

    :cond_0
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getRevenue()V
    .locals 1

    const v0, -0x32379ca7

    .line 65353
    sput v0, Lcom/appsflyer/internal/AFf1qSDK;->getCurrencyIso4217Code:I

    const v0, 0x68f41f3d

    sput v0, Lcom/appsflyer/internal/AFf1qSDK;->AFAdRevenueData:I

    const v0, 0x1dff21b9

    sput v0, Lcom/appsflyer/internal/AFf1qSDK;->getRevenue:I

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFf1qSDK;->getMediationNetwork:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x7dt
        -0x17t
        -0x7t
        -0x7t
        -0x7t
        -0x3t
        -0x31t
        -0x1at
        -0x1et
        -0x7t
        -0xbt
        -0x8t
        -0x8t
        -0x4t
        -0x7t
        -0x5t
        -0x3t
        -0x1t
        -0x2t
        -0xat
        -0xet
        -0x1ct
        -0x38t
        -0x17t
        -0x7t
        -0x2t
        -0x34t
        -0x1bt
        -0x2t
        -0x7t
        -0x7t
        -0x8t
        -0x1dt
        -0xct
        -0x2t
        -0x5t
        -0x32t
        -0x18t
        -0x4t
        -0xct
        -0xct
        -0x4t
        -0xbt
        -0x1ft
        -0x5t
        -0x1t
        -0x6t
        -0x4t
        -0x8t
        -0x6t
        -0x8t
        -0x2t
        -0x9t
        -0x2t
        -0x6t
        -0x1et
        -0x5t
        -0x7t
        -0x1t
        -0x3t
        -0x8t
        -0xct
        -0x4t
        -0x8t
    .end array-data
.end method


# virtual methods
.method public final getRevenue(Lcom/appsflyer/internal/AFi1wSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFi1rSDK;
    .locals 3

    const/4 v0, 0x2

    .line 47
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFf1qSDK;->areAllFieldsValid:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1qSDK;->component1:I

    rem-int/2addr v1, v0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    add-int/lit8 v2, v2, 0x3d

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1qSDK;->areAllFieldsValid:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    if-eqz p4, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/appsflyer/internal/AFf1qSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFi1wSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFi1rSDK;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    .line 45
    :cond_1
    new-instance p1, Lcom/appsflyer/internal/AFi1rSDK;

    const/4 p2, 0x0

    sget-object p3, Lcom/appsflyer/internal/AFi1uSDK;->getRevenue:Lcom/appsflyer/internal/AFi1uSDK;

    invoke-direct {p1, p2, p3}, Lcom/appsflyer/internal/AFi1rSDK;-><init>(ZLcom/appsflyer/internal/AFi1uSDK;)V

    .line 47
    sget p2, Lcom/appsflyer/internal/AFf1qSDK;->component1:I

    add-int/lit8 p2, p2, 0x3b

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFf1qSDK;->areAllFieldsValid:I

    rem-int/2addr p2, v0

    return-object p1
.end method
