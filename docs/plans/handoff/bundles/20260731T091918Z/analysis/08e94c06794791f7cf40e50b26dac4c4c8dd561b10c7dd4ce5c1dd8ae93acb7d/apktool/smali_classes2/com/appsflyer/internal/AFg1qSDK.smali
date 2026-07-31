.class public final Lcom/appsflyer/internal/AFg1qSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFg1rSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFInAppEventParameterName:Z = false

.field private static AFInAppEventType:[C = null

.field private static AFLogger:I = 0x0

.field private static i:I = 0x1

.field private static registerClient:Z

.field private static w:I


# instance fields
.field private final AFAdRevenueData:Lcom/appsflyer/internal/AFg1sSDK;

.field private final AFKeystoreWrapper:Lkotlin/Lazy;

.field private final areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

.field private final component1:Lcom/appsflyer/internal/AFc1oSDK;

.field private final component2:Lcom/appsflyer/internal/AFg1vSDK;

.field private final component3:Lcom/appsflyer/internal/AFh1tSDK;

.field private final component4:Lcom/appsflyer/internal/AFi1sSDK;

.field private final copy:Lcom/appsflyer/internal/AFf1cSDK;

.field private final copydefault:Lkotlin/Lazy;

.field private final equals:Lcom/appsflyer/internal/AFc1gSDK;

.field private final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1lSDK;

.field private final getMediationNetwork:Landroid/content/Context;

.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFj1pSDK;

.field private final getRevenue:Ljava/lang/String;

.field private final hashCode:Lcom/appsflyer/internal/AFg1xSDK;

.field private final toString:Lcom/appsflyer/internal/AFc1eSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    .line 65341
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFg1qSDK;->AFInAppEventType:[C

    const v0, 0x71fb8de3

    sput v0, Lcom/appsflyer/internal/AFg1qSDK;->AFLogger:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsflyer/internal/AFg1qSDK;->AFInAppEventParameterName:Z

    sput-boolean v0, Lcom/appsflyer/internal/AFg1qSDK;->registerClient:Z

    return-void

    :array_0
    .array-data 2
        -0x73bbs
        -0x73a8s
        -0x73afs
        -0x73aas
        -0x73a9s
        -0x73c1s
        -0x73c0s
        -0x73acs
        -0x73a3s
        -0x73bas
        -0x73a5s
        -0x73d9s
        -0x73bcs
        -0x73bfs
        -0x73b9s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/appsflyer/internal/AFi1lSDK;Lcom/appsflyer/internal/AFg1sSDK;Lcom/appsflyer/internal/AFj1pSDK;Lcom/appsflyer/internal/AFg1vSDK;Lcom/appsflyer/internal/AFh1tSDK;Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFi1sSDK;Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFg1xSDK;Lcom/appsflyer/internal/AFc1eSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getRevenue:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1lSDK;

    .line 78
    iput-object p4, p0, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1sSDK;

    .line 79
    iput-object p5, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1pSDK;

    .line 80
    iput-object p6, p0, Lcom/appsflyer/internal/AFg1qSDK;->component2:Lcom/appsflyer/internal/AFg1vSDK;

    .line 81
    iput-object p7, p0, Lcom/appsflyer/internal/AFg1qSDK;->component3:Lcom/appsflyer/internal/AFh1tSDK;

    .line 82
    iput-object p8, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    .line 83
    iput-object p9, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 84
    iput-object p10, p0, Lcom/appsflyer/internal/AFg1qSDK;->component4:Lcom/appsflyer/internal/AFi1sSDK;

    .line 85
    iput-object p11, p0, Lcom/appsflyer/internal/AFg1qSDK;->copy:Lcom/appsflyer/internal/AFf1cSDK;

    .line 86
    iput-object p12, p0, Lcom/appsflyer/internal/AFg1qSDK;->equals:Lcom/appsflyer/internal/AFc1gSDK;

    .line 87
    iput-object p13, p0, Lcom/appsflyer/internal/AFg1qSDK;->hashCode:Lcom/appsflyer/internal/AFg1xSDK;

    .line 88
    iput-object p14, p0, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 91
    sget-object p1, Lcom/appsflyer/internal/AFg1qSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1qSDK$5;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->copydefault:Lkotlin/Lazy;

    .line 92
    sget-object p1, Lcom/appsflyer/internal/AFg1qSDK$3;->getRevenue:Lcom/appsflyer/internal/AFg1qSDK$3;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    return-void
.end method

.method private static AFAdRevenueData(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x2

    .line 888
    rem-int v1, v0, v0

    if-eqz p0, :cond_1

    .line 882
    :try_start_0
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 883
    new-instance v1, Ljava/io/File;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 888
    :cond_0
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p0, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 886
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 888
    :cond_1
    :goto_0
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFg1qSDK;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    check-cast p0, Ljava/util/Map;

    const/4 v3, 0x2

    .line 661
    rem-int v4, v3, v3

    sget v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v4, v4, 0x77

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v4, v3

    const-string v5, ""

    if-eqz v4, :cond_0

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1qSDK;->hashCode:Lcom/appsflyer/internal/AFg1xSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFg1xSDK;->getCurrencyIso4217Code()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/16 p0, 0x44

    .line 661
    div-int/2addr p0, v0

    goto :goto_0

    .line 0
    :cond_0
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1qSDK;->hashCode:Lcom/appsflyer/internal/AFg1xSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFg1xSDK;->getCurrencyIso4217Code()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 661
    :goto_0
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    div-int/2addr v2, v0

    :cond_1
    return-object v1
.end method

.method private AFAdRevenueData(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    .line 467
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    .line 449
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string/jumbo v2, "preInstallName"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 467
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/16 p1, 0xc

    .line 451
    div-int/lit8 p1, p1, 0x0

    :cond_0
    return-object v1

    .line 452
    :cond_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {v3, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 453
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {p1, v2, v4}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    if-gt p1, v3, :cond_6

    .line 451
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_5

    .line 457
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->equals()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 467
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    const-string v1, "AF_PRE_INSTALL_NAME"

    if-eqz p1, :cond_3

    .line 458
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 467
    :cond_3
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    throw v4

    :cond_4
    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 457
    :cond_5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->equals()Ljava/lang/String;

    .line 458
    throw v4

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 461
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {p1, v2, v1}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_8

    .line 451
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 465
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object p1
.end method

.method private static AFAdRevenueData(Lcom/appsflyer/internal/AFc1oSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 832
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    const/4 v1, 0x0

    .line 831
    const-string v2, "CACHED_CHANNEL"

    invoke-interface {p0, v2, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 832
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p0, v0

    return-object v1

    .line 835
    :cond_0
    invoke-interface {p0, v2, p1}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private final AFAdRevenueData(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 144
    rem-int v1, v0, v0

    .line 138
    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, -0x5aadfc5d

    const v4, 0x5aadfc69

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 139
    const-string/jumbo v3, "yyyy-MM-dd_HHmmssZ"

    .line 14022
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 140
    const-string v3, "installDate"

    .line 15017
    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 15018
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    :catch_0
    move-exception p1

    .line 142
    const-string v0, "Exception while collecting install date. "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private AFAdRevenueData(Ljava/util/Map;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 691
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1pSDK;->areAllFieldsValid()Ljava/lang/String;

    move-result-object v2

    .line 672
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {v3, v2}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFc1oSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 674
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 691
    sget v6, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v6, v6, 0x11

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v6, v0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x0

    if-nez v3, :cond_2

    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v3, v3, 0x4f

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    throw v7

    :cond_2
    move v4, v5

    :goto_1
    if-nez v6, :cond_3

    if-eqz v4, :cond_4

    .line 677
    :cond_3
    const-string v3, "af_latestchannel"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :cond_4
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 681
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "af_installstore"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_5
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 691
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0xb

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v0

    const-string v0, "af_preinstall_name"

    if-nez v2, :cond_6

    .line 685
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    throw v7

    .line 691
    :cond_7
    sget p2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p2, p2, 0x4d

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p2, v0

    .line 688
    :goto_2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->component2()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 689
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "af_currentstore"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method private static AFAdRevenueData(Ljava/util/Map;Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFh1jSDK;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51124
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1jSDK;->component4:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 696
    const-string v1, "eventName"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51089
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/appsflyer/internal/AFh1jSDK;->AFAdRevenueData:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->AFAdRevenueData:Ljava/util/Map;

    :goto_0
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 697
    const-string v0, "eventValue"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private AFAdRevenueData(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 641
    rem-int v1, v0, v0

    .line 631
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 0
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const-string/jumbo v2, "referrer"

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 627
    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget p2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p2, p2, 0x43

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p2, v0

    goto :goto_0

    .line 627
    :cond_1
    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v1, "extraReferrers"

    invoke-interface {p2, v1, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 633
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :cond_3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-virtual {p2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object p2

    .line 638
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 641
    :cond_5
    :goto_1
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    move v1, v4

    :goto_2
    xor-int/2addr v1, v4

    if-eq v1, v4, :cond_6

    goto :goto_4

    :cond_6
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_7

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    div-int/2addr v1, v3

    if-nez v0, :cond_8

    goto :goto_3

    .line 638
    :cond_7
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 639
    :goto_3
    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    return-void

    .line 631
    :cond_9
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    check-cast p2, Ljava/lang/CharSequence;

    throw v3
.end method

.method private AFAdRevenueData(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 285
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v1, "platformextension"

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->getRevenue:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 283
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1lSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFi1lSDK;->AFAdRevenueData()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo v1, "platform_extension_v2"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    :cond_0
    return-void
.end method

.method private AFInAppEventParameterName(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 648
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component3:Lcom/appsflyer/internal/AFh1tSDK;

    .line 51065
    iget-wide v1, v1, Lcom/appsflyer/internal/AFh1tSDK;->hashCode:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 648
    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v3, v3, 0x29

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v3, v0

    .line 645
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 646
    const-string/jumbo v2, "prev_session_dur"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    rem-int/lit8 p1, v0, 0x3

    :cond_0
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    return-void
.end method

.method private AFInAppEventType(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65345
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x782008d6

    const v2, 0x782008d7

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private static AFKeystoreWrapper(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 657
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 0
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    sget-object v1, Lcom/appsflyer/internal/AFa1zSDK;->INSTANCE:Lcom/appsflyer/internal/AFa1zSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFa1zSDK;->getMonetizationNetwork()Ljava/lang/String;

    move-result-object v1

    .line 652
    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->INSTANCE:Lcom/appsflyer/internal/AFa1zSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFa1zSDK;->getRevenue()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 653
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v3, v3, 0x39

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v3, v0

    .line 654
    const-string/jumbo v0, "reinstallCounter"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string/jumbo v0, "originalAppsflyerId"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 657
    :cond_1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    sget-object p0, Lcom/appsflyer/internal/AFa1zSDK;->INSTANCE:Lcom/appsflyer/internal/AFa1zSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFa1zSDK;->getMonetizationNetwork()Ljava/lang/String;

    .line 652
    sget-object p0, Lcom/appsflyer/internal/AFa1zSDK;->INSTANCE:Lcom/appsflyer/internal/AFa1zSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFa1zSDK;->getRevenue()Ljava/lang/String;

    const/4 p0, 0x0

    .line 653
    throw p0
.end method

.method private AFLogger(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 668
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string/jumbo v2, "sdkExtension"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 668
    sget v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v4, v4, 0x27

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v4, v0

    .line 665
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v3, v3, 0x75

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v3, v0

    .line 666
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x2

    .line 172
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->$11:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->$10:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_b

    if-eqz p1, :cond_0

    .line 0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    check-cast p0, [C

    .line 129
    new-instance v1, Lcom/appsflyer/internal/AFk1iSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1iSDK;-><init>()V

    .line 131
    sget-object v2, Lcom/appsflyer/internal/AFg1qSDK;->AFInAppEventType:[C

    const-wide v3, 0x19569dd871fb8d0aL

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 172
    sget v6, Lcom/appsflyer/internal/AFg1qSDK;->$11:I

    add-int/lit8 v6, v6, 0x73

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFg1qSDK;->$10:I

    rem-int/2addr v6, v0

    .line 131
    array-length v6, v2

    new-array v7, v6, [C

    move v8, v5

    :goto_0
    if-ge v8, v6, :cond_2

    .line 152
    sget v9, Lcom/appsflyer/internal/AFg1qSDK;->$11:I

    add-int/lit8 v9, v9, 0x35

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFg1qSDK;->$10:I

    rem-int/2addr v9, v0

    .line 131
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
    sget v6, Lcom/appsflyer/internal/AFg1qSDK;->AFLogger:I

    int-to-long v6, v6

    xor-long/2addr v3, v6

    long-to-int v3, v3

    .line 134
    sget-boolean v4, Lcom/appsflyer/internal/AFg1qSDK;->registerClient:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    .line 172
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->$11:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1qSDK;->$10:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_4

    .line 136
    array-length p0, p1

    iput p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    .line 137
    iget p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    new-array p0, p0, [C

    .line 139
    iput v6, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    goto :goto_1

    .line 136
    :cond_4
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

    if-ge p2, v4, :cond_5

    .line 172
    sget p2, Lcom/appsflyer/internal/AFg1qSDK;->$10:I

    add-int/lit8 p2, p2, 0x1d

    rem-int/lit16 v4, p2, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->$11:I

    rem-int/2addr p2, v0

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
    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    aput-object p1, p4, v5

    return-void

    .line 147
    :cond_6
    sget-boolean p1, Lcom/appsflyer/internal/AFg1qSDK;->AFInAppEventParameterName:Z

    if-eqz p1, :cond_9

    .line 149
    array-length p1, p0

    iput p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    .line 150
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    new-array p1, p1, [C

    .line 152
    iput v5, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    :goto_2
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    if-ge p2, v4, :cond_8

    .line 139
    sget p2, Lcom/appsflyer/internal/AFg1qSDK;->$10:I

    add-int/lit8 p2, p2, 0x4d

    rem-int/lit16 v4, p2, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->$11:I

    rem-int/2addr p2, v0

    if-nez p2, :cond_7

    .line 153
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    shl-int/2addr v4, v6

    iget v7, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    ushr-int/2addr v4, v7

    aget-char v4, p0, v4

    add-int/2addr v4, p3

    aget-char v4, v2, v4

    ushr-int/2addr v4, v3

    int-to-char v4, v4

    aput-char v4, p1, p2

    .line 152
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    rem-int/2addr p2, v5

    goto :goto_3

    .line 153
    :cond_7
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    sub-int/2addr v4, v6

    iget v7, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    sub-int/2addr v4, v7

    aget-char v4, p0, v4

    sub-int/2addr v4, p3

    aget-char v4, v2, v4

    sub-int/2addr v4, v3

    int-to-char v4, v4

    aput-char v4, p1, p2

    .line 152
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    add-int/2addr p2, v6

    :goto_3
    iput p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    goto :goto_2

    .line 159
    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p4, v5

    return-void

    .line 162
    :cond_9
    array-length p0, p2

    iput p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    .line 163
    iget p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    new-array p0, p0, [C

    .line 165
    iput v5, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    :goto_4
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    if-ge p1, v0, :cond_a

    .line 166
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    sub-int/2addr v0, v6

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    sub-int/2addr v0, v4

    aget v0, p2, v0

    sub-int/2addr v0, p3

    aget-char v0, v2, v0

    sub-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, p0, p1

    .line 165
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    add-int/2addr p1, v6

    iput p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    goto :goto_4

    .line 172
    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    aput-object p1, p4, v5

    return-void

    :cond_b
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private afDebugLog(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 785
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "collectFacebookAttrId"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.facebook.katana"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 777
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    rem-int/2addr v2, v2

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x77

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v0

    .line 782
    const-string v0, "fb"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static areAllFieldsValid()J
    .locals 5

    const/4 v0, 0x2

    .line 263
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v3, v0

    return-wide v1
.end method

.method private static synthetic areAllFieldsValid([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFg1qSDK;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    check-cast p0, Ljava/util/Map;

    const/4 v2, 0x2

    .line 394
    rem-int v3, v2, v2

    .line 0
    const-string v3, ""

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1qSDK;->component3:Lcom/appsflyer/internal/AFh1tSDK;

    .line 51093
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, v1, Lcom/appsflyer/internal/AFh1tSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 51094
    iget-object v5, v1, Lcom/appsflyer/internal/AFh1tSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 51264
    iget-object v1, v1, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v5, "gcd"

    invoke-interface {v1, v5}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;)V

    .line 390
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v2

    add-int/lit8 v6, v6, 0x1f

    rem-int/lit16 v1, v6, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v6, v2

    if-nez v6, :cond_0

    .line 391
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 392
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x58

    .line 394
    div-int/2addr p0, v0

    goto :goto_0

    .line 391
    :cond_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 392
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 394
    :cond_1
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v2

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static areAllFieldsValid(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 551
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    add-int/lit8 v1, v1, 0x7e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u008f\u0089\u0087\u0083\u008e"

    invoke-static {v3, v4, v3, v1, v2}, Lcom/appsflyer/internal/AFg1qSDK;->a(Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/Object;)V

    const/4 v1, 0x0

    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string/jumbo v1, "product"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sdk"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string/jumbo v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v1, "deviceType"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v0

    return-void
.end method

.method private static synthetic component1([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFg1qSDK;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    check-cast p0, Ljava/util/Map;

    const/4 v2, 0x2

    .line 375
    rem-int v3, v2, v2

    .line 370
    iget-object v3, v1, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1sSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-interface {v3, v1}, Lcom/appsflyer/internal/AFg1sSDK;->AFAdRevenueData(Landroid/content/Context;)Lcom/appsflyer/internal/AFg1sSDK$AFa1uSDK;

    move-result-object v1

    .line 51003
    iget v3, v1, Lcom/appsflyer/internal/AFg1sSDK$AFa1uSDK;->getRevenue:F

    .line 51004
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1sSDK$AFa1uSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 371
    const-string v4, "btl"

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 375
    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v3, v3, 0x5f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v3, v2

    .line 373
    const-string v3, "btch"

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/16 p0, 0xe

    div-int/2addr p0, v0

    :cond_1
    return-object v1
.end method

.method private final component1()Ljava/lang/String;
    .locals 4

    .line 65346
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x39c6c90c

    const v3, -0x39c6c904

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private component1(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 290
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-static {p1, v1}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork(Ljava/util/Map;Lcom/appsflyer/internal/AFc1pSDK;)V

    .line 290
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method private static synthetic component2([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFg1qSDK;

    const/4 v0, 0x2

    .line 541
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    .line 528
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v2, "androidIdCached"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    :try_start_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "android_id"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 541
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    return-object p0

    :catch_0
    move-exception p0

    .line 535
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {v2, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    if-eqz v1, :cond_2

    .line 538
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "use cached AndroidId: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 541
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3

    :cond_2
    return-object v3
.end method

.method private component2()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 425
    rem-int v1, v0, v0

    .line 424
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "api_store_value"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 425
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    const-string v1, "AF_STORE"

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method private component2(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65349
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x78f0885e

    const v2, 0x78f08863

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic component3([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFg1qSDK;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x2

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/String;

    .line 500
    rem-int v4, v3, v3

    .line 485
    sget v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v4, v4, 0x55

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v4, v3

    .line 0
    const-string v4, ""

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-direct {v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "deviceTrackingDisabled"

    invoke-virtual {v5, v6, v0}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_7

    .line 478
    iget-object v5, v1, Lcom/appsflyer/internal/AFg1qSDK;->copy:Lcom/appsflyer/internal/AFf1cSDK;

    iget-object v6, v1, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-virtual {v5, v6}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object v5

    .line 479
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    sget v6, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v6, v6, 0x57

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v6, v3

    const-string v8, "imei"

    if-nez v6, :cond_1

    .line 480
    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x7

    .line 482
    div-int/2addr v5, v0

    goto :goto_0

    .line 480
    :cond_1
    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_2
    :goto_0
    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFg1qSDK;->getRevenue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    sget v5, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v5, v5, 0x2b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v5, v3

    const-string v3, "android_id"

    const-string v6, "androidIdCached"

    if-nez v5, :cond_3

    .line 484
    iget-object v5, v1, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {v5, v6, p0}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x25

    div-int/2addr p0, v0

    goto :goto_1

    .line 484
    :cond_3
    iget-object v0, v1, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {v0, v6, p0}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 487
    :cond_4
    const-string p0, "Android ID was not collected."

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 489
    :goto_1
    iget-object p0, v1, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1kSDK;->getCurrencyIso4217Code(Landroid/content/Context;)Lcom/appsflyer/internal/AFb1mSDK;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 490
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 51023
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1mSDK;->getMediationNetwork:Ljava/lang/Boolean;

    .line 491
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "isManual"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51032
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1mSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 492
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "val"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51038
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1mSDK;->getRevenue:Ljava/lang/Boolean;

    if-eqz p0, :cond_5

    .line 495
    const-string v1, "isLat"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_5
    const-string/jumbo p0, "oaid"

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v7

    .line 476
    :cond_7
    const-string/jumbo p0, "true"

    invoke-interface {v2, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7
.end method

.method private static component3()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 65352
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, -0x3465d41c    # -2.020756E7f

    const v3, 0x3465d420

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private component3(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65350
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x75eceff5

    const v2, -0x75eceff2

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic component4([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljava/util/Map;

    const/4 v0, 0x2

    .line 723
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    const-string v2, "lang"

    const-string v3, ""

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 0
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 723
    :cond_0
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 723
    throw p0

    .line 709
    :goto_0
    const-string v2, "Exception while collecting display language name. "

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    :goto_1
    :try_start_3
    const-string v1, "lang_code"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 707
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 715
    const-string v1, "Exception while collecting display language code. "

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 719
    :goto_2
    :try_start_4
    const-string v0, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v4

    :catch_2
    move-exception p0

    .line 721
    const-string v0, "Exception while collecting country name. "

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private final component4(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65351
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0xcfa99ec

    const v2, 0xcfa99f2

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private component4()Z
    .locals 4

    const/4 v0, 0x2

    .line 446
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    const-string/jumbo v2, "sentSuccessfully"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v0

    return v1
.end method

.method private final copy(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 591
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 583
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x75

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    const-string/jumbo v2, "uimode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/app/UiModeManager;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/UiModeManager;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 584
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    :goto_1
    if-eqz v1, :cond_3

    .line 588
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 589
    const-string/jumbo v1, "tv"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    :cond_3
    return-void
.end method

.method private final copy()Z
    .locals 4

    .line 65342
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0x379ba9cc

    const v3, 0x379ba9d7

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static synthetic copydefault([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFg1qSDK;

    const/4 v2, 0x1

    aget-object v3, p0, v2

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x2

    aget-object p0, p0, v4

    check-cast p0, Lcom/appsflyer/internal/AFe1mSDK;

    .line 818
    rem-int v5, v4, v4

    .line 0
    const-string v5, ""

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    invoke-static {}, Lcom/appsflyer/internal/AFg1qSDK;->copydefault()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v5

    .line 793
    :cond_0
    iget-object p0, v1, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1eSDK;->getMediationNetwork()Z

    move-result p0

    const-string v6, "app_set_id"

    if-eqz p0, :cond_3

    .line 818
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v4

    const-string v2, "app_set_id_disabled"

    if-eqz p0, :cond_1

    .line 794
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v3, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object p0, v1, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 51053
    iget-object p0, p0, Lcom/appsflyer/internal/AFc1eSDK;->equals:Lcom/appsflyer/internal/AFb1gSDK;

    const/16 v1, 0xf

    .line 796
    div-int/2addr v1, v0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 794
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v3, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object p0, v1, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 51053
    iget-object p0, p0, Lcom/appsflyer/internal/AFc1eSDK;->equals:Lcom/appsflyer/internal/AFb1gSDK;

    if-eqz p0, :cond_2

    .line 818
    :goto_0
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v4

    .line 797
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v6, p0

    check-cast v6, Lcom/appsflyer/internal/AFh1ySDK;

    .line 798
    sget-object v7, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 797
    const-string v8, "App Set Id was collected, but will not be included in the payload.To prevent collection entirely, call disableAppSetId() before initializing the SDK."

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v5

    .line 803
    :cond_2
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v6, p0

    check-cast v6, Lcom/appsflyer/internal/AFh1ySDK;

    .line 804
    sget-object v7, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 803
    const-string v8, "App Set ID collection is disabled. Skipping inclusion in the event payload."

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v5

    .line 812
    :cond_3
    iget-object p0, v1, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 51054
    iget-object p0, p0, Lcom/appsflyer/internal/AFc1eSDK;->equals:Lcom/appsflyer/internal/AFb1gSDK;

    if-eqz p0, :cond_5

    .line 814
    new-array v1, v4, [Lkotlin/Pair;

    .line 51036
    iget v7, p0, Lcom/appsflyer/internal/AFb1gSDK;->getRevenue:I

    .line 814
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "scope"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v1, v0

    .line 815
    const-string v0, "id"

    .line 51037
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1gSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 815
    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    aput-object p0, v1, v2

    .line 813
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v3, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v4

    if-nez p0, :cond_4

    return-object v5

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    throw v5

    :cond_5
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p0, v4

    if-eqz p0, :cond_6

    return-object v5

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    throw v5
.end method

.method private static copydefault()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFe1mSDK;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 828
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    const/4 v1, 0x7

    .line 821
    new-array v1, v1, [Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v2, 0x0

    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 822
    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->copydefault:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v3, v1, v2

    .line 823
    sget-object v2, Lcom/appsflyer/internal/AFe1mSDK;->equals:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v2, v1, v0

    const/4 v2, 0x3

    .line 824
    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 825
    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->registerClient:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 826
    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->AFLogger:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 827
    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->e:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v3, v1, v2

    .line 820
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 828
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v0

    return-object v1
.end method

.method private copydefault(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 617
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v2, "AppsFlyerTimePassedSincePrevLaunch"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;J)J

    move-result-wide v5

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 608
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {v1, v2, v7, v8}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;J)V

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    .line 617
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 611
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    rem-long/2addr v7, v5

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v7, v5

    :goto_0
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    goto :goto_1

    .line 617
    :cond_1
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    const-wide/16 v0, -0x1

    .line 616
    :goto_1
    const-string/jumbo v2, "timepassedsincelastlaunch"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 762
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v2, "is_stop_tracking_used"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 759
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    move-result v1

    .line 760
    const-string v2, "istu"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    :cond_0
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method private e(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 748
    rem-int v1, v0, v0

    .line 746
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    const-string v2, "didConfigureTokenRefreshService="

    const-string v3, ""

    if-nez v1, :cond_0

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/internal/AFg1tSDK;->getMediationNetwork(Landroid/content/Context;)Z

    move-result v1

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/16 v2, 0x2d

    .line 742
    div-int/lit8 v2, v2, 0x0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 0
    :cond_0
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/internal/AFg1tSDK;->getMediationNetwork(Landroid/content/Context;)Z

    move-result v1

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-nez v1, :cond_3

    .line 748
    :cond_1
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    const-string/jumbo v0, "tokenRefreshConfigured"

    if-nez v1, :cond_2

    .line 743
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 746
    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1tSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1oSDK;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 747
    const-string/jumbo v1, "registeredUninstall"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final equals()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 873
    rem-int v1, v0, v0

    .line 858
    const-string/jumbo v1, "ro.appsflyer.preinstall.path"

    invoke-static {v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 859
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 860
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    const-string v1, "AF_PRE_INSTALL_PATH"

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 866
    :cond_0
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    const-string v1, "/data/local/tmp/pre_install.appsflyer"

    invoke-static {v1}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 869
    :cond_1
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 871
    const-string v1, "/etc/pre_install.appsflyer"

    invoke-static {v1}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 873
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x33

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v0

    :cond_2
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    const/4 v0, 0x0

    return-object v0

    .line 876
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final equals(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 580
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerProperties;->isOtherSdkStringDisabled()Z

    move-result v1

    div-int/lit8 v2, v0, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerProperties;->isOtherSdkStringDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 577
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1sSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFg1sSDK;->AFAdRevenueData(Landroid/content/Context;)Lcom/appsflyer/internal/AFg1sSDK$AFa1uSDK;

    move-result-object v1

    .line 51021
    iget v1, v1, Lcom/appsflyer/internal/AFg1sSDK$AFa1uSDK;->getRevenue:F

    .line 578
    const-string v2, "batteryLevel"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_1
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method private static synthetic getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFg1qSDK;

    const/4 v1, 0x2

    .line 260
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v2, v2, 0x37

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v2, v1

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/appsflyer/internal/AFj1iSDK;->N_(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x79

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/16 v1, 0x1b

    div-int/2addr v1, v0

    :cond_0
    return-object p0
.end method

.method private final getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 853
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {v1, p1}, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private getCurrencyIso4217Code(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    .line 440
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    const/4 v3, 0x0

    const-string v4, "appsFlyerFirstInstall"

    invoke-interface {v2, v4, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 440
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-gt p2, v2, :cond_1

    .line 432
    :goto_0
    const-string p2, "AppsFlyer: first launch detected"

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 433
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 440
    sget p2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p2, p2, 0x79

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p2, v0

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 437
    :goto_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {p1, v4, v2}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    .line 439
    :cond_2
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v3, p1

    check-cast v3, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AppsFlyer: first launch date: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 440
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method private getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFb1rSDK;)V
    .locals 5

    const/4 v0, 0x2

    .line 573
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51182
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 560
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;

    move-result-object p1

    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    if-ne p1, v3, :cond_0

    .line 573
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    .line 561
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->equals(Ljava/util/Map;)V

    .line 562
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->copy(Ljava/util/Map;)V

    .line 563
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->toString(Ljava/util/Map;)V

    .line 564
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->equals:Lcom/appsflyer/internal/AFc1gSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-static {p1, v3}, Lcom/appsflyer/internal/AFa1zSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFc1pSDK;)V

    .line 573
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    .line 566
    :cond_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->copydefault(Ljava/util/Map;)V

    .line 567
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v3, 0x75eceff5

    const v4, -0x75eceff2

    invoke-static {p1, v3, v4, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 568
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v3, -0x78f0885e

    const v4, 0x78f08863

    invoke-static {p1, v3, v4, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 569
    invoke-static {v2, p3}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork(Ljava/util/Map;Ljava/lang/String;)V

    .line 570
    invoke-direct {p0, v2, p2}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(Ljava/util/Map;Ljava/lang/String;)V

    .line 571
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->AFInAppEventParameterName(Ljava/util/Map;)V

    if-eqz p4, :cond_2

    .line 573
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    invoke-virtual {p4, v2}, Lcom/appsflyer/internal/AFb1rSDK;->getMonetizationNetwork(Ljava/util/Map;)V

    const/16 p1, 0x12

    div-int/lit8 p1, p1, 0x0

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {p4, v2}, Lcom/appsflyer/internal/AFb1rSDK;->getMonetizationNetwork(Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final getCurrencyIso4217Code(Ljava/util/Map;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ""

    const-string/jumbo v1, "versionCode"

    const/4 v2, 0x2

    .line 165
    rem-int v3, v2, v2

    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v3, v3, 0x4b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v3, v2

    const/4 v3, 0x1

    .line 151
    :try_start_0
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v4

    .line 152
    iget-object v6, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 16095
    invoke-virtual {v6}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v6, v4, :cond_0

    .line 165
    sget v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v4, v4, 0x27

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v4, v2

    .line 154
    :try_start_1
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 17095
    invoke-virtual {v4}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 154
    invoke-interface {v2, v1, v4}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;I)V

    .line 156
    :cond_0
    const-string v1, "app_version_code"

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 18095
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 156
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "app_version_name"

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 19170
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 157
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v1, "targetSDKver"

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 21298
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 22025
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 23238
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "date1"

    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    const v8, -0x5aadfc5d

    const v9, 0x5aadfc69

    invoke-static {v6, v8, v9, v7}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "date2"

    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    iget-object v6, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {v6}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v1, "\u008d\u0085\u0087\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    const/16 v2, 0x30

    invoke-static {v0, v2, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7e

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6, v1, v6, v2, v4}, Lcom/appsflyer/internal/AFg1qSDK;->a(Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/Object;)V

    aget-object v1, v4, v5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 163
    const-string p2, "Exception while collecting app version data "

    invoke-static {p2, p1, v3}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private getCurrencyIso4217Code(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65347
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, -0x158d6250

    const v1, 0x158d6257

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private getCurrencyIso4217Code(Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 315
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 298
    const-string/jumbo v2, "ro.product.cpu.abi"

    invoke-static {v2}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpu_abi"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v2, "ro.product.cpu.abi2"

    invoke-static {v2}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpu_abi2"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v2, "os.arch"

    invoke-static {v2}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arch"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string/jumbo v2, "ro.build.display.id"

    invoke-static {v2}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "build_display_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 310
    sget p2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p2, p2, 0x29

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p2, v0

    const-string v2, "appsFlyerCount"

    const v3, 0xcfa99f2

    const v4, -0xcfa99ec

    if-nez p2, :cond_0

    .line 303
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {p2, v4, v3, v5}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 306
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 43290
    iget-object p2, p2, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x5

    if-gt p2, v2, :cond_2

    goto :goto_0

    .line 303
    :cond_0
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {p2, v4, v3, v5}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 306
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 43290
    iget-object p2, p2, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result p2

    if-gt p2, v0, :cond_2

    .line 315
    :goto_0
    sget p2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p2, p2, 0x55

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p2, v0

    if-nez p2, :cond_1

    .line 307
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1pSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFj1pSDK;->AFAdRevenueData()Ljava/util/Map;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1pSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFj1pSDK;->AFAdRevenueData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 310
    throw p1

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1qSDK;->component2:Lcom/appsflyer/internal/AFg1vSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-interface {p2, v0}, Lcom/appsflyer/internal/AFg1vSDK;->getMediationNetwork(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p2

    .line 311
    const-string v0, "dim"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string p2, "deviceData"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 p0, 0x2

    .line 277
    rem-int v0, p0, p0

    .line 268
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    .line 272
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long/2addr v3, v1

    .line 273
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v5

    mul-long/2addr v5, v1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    .line 274
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    long-to-double v2, v3

    div-double/2addr v2, v0

    double-to-long v2, v2

    long-to-double v4, v5

    div-double/2addr v4, v0

    double-to-long v0, v4

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, p0

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method public static synthetic getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 5

    mul-int/lit8 v0, p1, 0x32

    mul-int/lit8 v1, p2, -0x61

    add-int/2addr v0, v1

    not-int v1, p2

    not-int v2, p3

    or-int v3, v1, v2

    not-int v3, v3

    or-int v4, v1, p1

    not-int v4, v4

    or-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x62

    add-int/2addr v0, v3

    not-int v3, p1

    or-int/2addr v2, v3

    not-int v2, v2

    or-int/2addr v2, v1

    or-int v3, p1, p3

    not-int v3, v3

    or-int/2addr v2, v3

    mul-int/lit8 v2, v2, -0x31

    add-int/2addr v0, v2

    or-int/2addr p3, v1

    not-int p3, p3

    or-int/2addr p1, p2

    not-int p1, p1

    or-int/2addr p1, p3

    mul-int/lit8 p1, p1, 0x31

    add-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 p2, 0x2

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_0
    aget-object p0, p0, p1

    check-cast p0, Lcom/appsflyer/internal/AFg1qSDK;

    .line 51523
    rem-int p1, p2, p2

    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, p2

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-wide p0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, p2

    goto/16 :goto_2

    .line 1
    :pswitch_1
    aget-object p0, p0, p1

    check-cast p0, Lcom/appsflyer/internal/AFg1qSDK;

    .line 52187
    rem-int p3, p2, p2

    .line 52185
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p3

    const-string v0, "collectAndroidIdForceByUser"

    invoke-virtual {p3, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_2

    .line 52187
    sget p3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p3, p3, 0x39

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p3, p2

    .line 52186
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p3

    const-string v0, "collectIMEIForceByUser"

    invoke-virtual {p3, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 52187
    :cond_0
    sget p3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p3, p3, 0x51

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p3, p2

    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 p3, p0, 0x80

    sput p3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p0, p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_0
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, p2

    :goto_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    .line 1
    :pswitch_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->copydefault([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :pswitch_3
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->component4([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :pswitch_4
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->component2([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :pswitch_5
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->component3([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :pswitch_6
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->component1([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :pswitch_7
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :pswitch_8
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :pswitch_9
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getRevenue([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :pswitch_a
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :pswitch_b
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    .line 850
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    const/4 v1, 0x0

    .line 844
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 845
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 846
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 844
    const-string v2, ""

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    throw v1

    :catchall_0
    move-exception p0

    .line 848
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private final getMediationNetwork()Ljava/text/SimpleDateFormat;
    .locals 4

    const/4 v0, 0x2

    .line 92
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method private getMediationNetwork(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65348
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, 0x432dd400    # 173.82812f

    const v1, -0x432dd3fe

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private final getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;
    .locals 3

    const/4 v0, 0x2

    .line 91
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1qSDK;->copydefault:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/AppsFlyerProperties;

    if-eqz v1, :cond_0

    const/16 v1, 0x58

    div-int/lit8 v1, v1, 0x0

    :cond_0
    return-object v0
.end method

.method private static synthetic getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const-string/jumbo v0, "prev_event_name"

    const/4 v1, 0x0

    aget-object v1, p0, v1

    check-cast v1, Lcom/appsflyer/internal/AFg1qSDK;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x2

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/String;

    .line 410
    rem-int v4, v3, v3

    sget v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v4, v4, 0x51

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v4, v3

    .line 0
    const-string v4, ""

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 398
    :try_start_0
    iget-object v5, v1, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {v5, v0, v4}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    const-string/jumbo v6, "prev_event_timestamp"

    if-eqz v5, :cond_0

    .line 400
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 401
    iget-object v8, v1, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    const-wide/16 v9, -0x1

    invoke-interface {v8, v6, v9, v10}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 402
    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string/jumbo v5, "prev_event"

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_0
    iget-object v2, v1, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {v2, v0, p0}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object p0, v1, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v6, v0, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 410
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v3

    if-nez p0, :cond_1

    return-object v4

    :cond_1
    throw v4

    :catch_0
    move-exception p0

    .line 408
    const-string v0, "Error while processing previous event."

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private getMonetizationNetwork(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    .line 413
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    const-string v3, "INSTALL_STORE"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {v1, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {p1, v3, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    .line 413
    :cond_1
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    const/4 p1, 0x0

    :goto_0
    if-eq p1, v1, :cond_2

    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    goto :goto_1

    .line 417
    :cond_2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->component2()Ljava/lang/String;

    move-result-object v2

    .line 418
    :goto_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {p1, v3, v2}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 413
    :cond_3
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {p1, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;)Z

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
.end method

.method private static getMonetizationNetwork(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "PreInstall file wasn\'t found: "

    const/4 v1, 0x2

    .line 915
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v3, v2, 0x57

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-nez p0, :cond_1

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_0

    const/16 p0, 0x3a

    div-int/lit8 p0, p0, 0x0

    :cond_0
    return-object v4

    .line 899
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 900
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, p0}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 901
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 902
    const-string v3, "Found PreInstall property!"

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 910
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 912
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v2, v4

    .line 907
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v2, :cond_2

    .line 910
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    .line 912
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-object v2, v4

    .line 905
    :catch_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v2, :cond_2

    .line 910
    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    :goto_2
    return-object v4

    :catchall_4
    move-exception p0

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    .line 912
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p0

    .line 894
    :cond_4
    throw v4
.end method

.method private static getMonetizationNetwork(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 623
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 623
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 621
    const-string/jumbo v1, "phone"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v0

    :cond_0
    return-void
.end method

.method private static getMonetizationNetwork(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x2

    .line 891
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    xor-int/2addr p0, v1

    if-eq p0, v1, :cond_0

    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p0, v0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method private static synthetic getRevenue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFg1qSDK;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, Ljava/util/Map;

    const/4 v1, 0x2

    .line 386
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v1

    const-string/jumbo v3, "onelinkVersion"

    const-string/jumbo v4, "oneLinkSlug"

    const-string v5, ""

    const/4 v6, 0x0

    if-nez v2, :cond_2

    .line 0
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    .line 381
    const-string/jumbo v3, "onelink_id"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    .line 384
    const-string/jumbo v2, "onelink_ver"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget p0, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p0, v1

    :cond_1
    return-object v6

    .line 386
    :cond_2
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    throw v6
.end method

.method private getRevenue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 65353
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0x6fc78d16

    const v3, 0x6fc78d16

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getRevenue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 523
    rem-int v1, v0, v0

    .line 513
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "collectAndroidId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 514
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 523
    :cond_0
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 515
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->copy()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 516
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x39c6c90c

    const v3, -0x39c6c904

    invoke-static {p1, v2, v3, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 515
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x37

    :goto_0
    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->copy()Z

    throw v2

    :cond_2
    if-eqz p1, :cond_3

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x55

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_1
    return-object p1
.end method

.method private hashCode(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 597
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    const-string v0, "is_pc"

    const-string v2, "com.google.android.play.feature.HPE_EXPERIENCE"

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 0
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 595
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 594
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 596
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 597
    :cond_0
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 595
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 594
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 596
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 597
    throw p1
.end method

.method private i(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 755
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1kSDK;->l_(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFb1mSDK;

    move-result-object v1

    const/16 v2, 0x36

    div-int/lit8 v2, v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 0
    :cond_0
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1kSDK;->l_(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFb1mSDK;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 755
    :goto_0
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v2, v0

    .line 752
    const-string v0, "amazon_aid"

    .line 51041
    iget-object v2, v1, Lcom/appsflyer/internal/AFb1mSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 752
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51047
    iget-object v0, v1, Lcom/appsflyer/internal/AFb1mSDK;->getRevenue:Ljava/lang/Boolean;

    .line 753
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon_aid_limit"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private registerClient(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 703
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/AFc1pSDK;->getMediationNetwork(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "af_preinstalled"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final toString(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 603
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/internal/AFg1kSDK;->AFAdRevenueData(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    const-string v1, "inst_app"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    :cond_0
    return-void

    .line 600
    :cond_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-static {p1}, Lcom/appsflyer/internal/AFg1kSDK;->AFAdRevenueData(Landroid/content/Context;)Z

    const/4 p1, 0x0

    throw p1
.end method

.method private static unregisterClient(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65344
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, -0x296ac0c

    const v2, 0x296ac15

    invoke-static {p0, v1, v2, v0}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private w(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 769
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    const-string v2, ""

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 0
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->copy:Lcom/appsflyer/internal/AFf1cSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v1

    .line 766
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 769
    :cond_0
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v2, v0

    const-string v0, "appsflyerKey"

    if-eqz v2, :cond_1

    .line 767
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->copy:Lcom/appsflyer/internal/AFf1cSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object p1

    .line 766
    check-cast p1, Ljava/lang/CharSequence;

    throw v3
.end method


# virtual methods
.method public final AFAdRevenueData()Ljava/lang/Long;
    .locals 4

    .line 65354
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0x5aadfc5d

    const v3, 0x5aadfc69

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 7

    const/4 v0, 0x2

    .line 254
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1pSDK;->component1()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 254
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v0

    const-string v4, "ad_ids_disabled"

    if-nez v2, :cond_0

    .line 28172
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 228
    invoke-static {v2}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 229
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 28172
    :cond_0
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 228
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 229
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 29138
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1eSDK;

    .line 30030
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1eSDK;->component2:Lcom/appsflyer/internal/AFh1pSDK;

    if-nez v2, :cond_2

    .line 249
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    return-void

    .line 31013
    :cond_2
    iget-object v4, v2, Lcom/appsflyer/internal/AFh1pSDK;->component1:Ljava/lang/String;

    .line 234
    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 235
    :cond_3
    const-string v4, "gaidError"

    .line 32013
    iget-object v5, v2, Lcom/appsflyer/internal/AFh1pSDK;->component1:Ljava/lang/String;

    .line 235
    invoke-virtual {p1, v4, v5}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 33008
    :cond_4
    :goto_0
    iget-object v4, v2, Lcom/appsflyer/internal/AFh1pSDK;->getRevenue:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 249
    sget v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v4, v4, 0x79

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v4, v0

    .line 34010
    iget-object v4, v2, Lcom/appsflyer/internal/AFh1pSDK;->getMediationNetwork:Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 238
    const-string v4, "advertiserId"

    .line 35008
    iget-object v5, v2, Lcom/appsflyer/internal/AFh1pSDK;->getRevenue:Ljava/lang/String;

    .line 238
    invoke-virtual {p1, v4, v5}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 36010
    iget-object v4, v2, Lcom/appsflyer/internal/AFh1pSDK;->getMediationNetwork:Ljava/lang/Boolean;

    .line 239
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "advertiserIdEnabled"

    invoke-virtual {p1, v5, v4}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 37011
    iget-object v2, v2, Lcom/appsflyer/internal/AFh1pSDK;->getCurrencyIso4217Code:Ljava/lang/Boolean;

    .line 240
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "isGaidWithGps"

    invoke-virtual {p1, v4, v2}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 245
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 38138
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1eSDK;

    .line 39030
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1eSDK;->component2:Lcom/appsflyer/internal/AFh1pSDK;

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 249
    sget v5, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v5, v5, 0x2d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v5, v0

    .line 40014
    iget-object v2, v2, Lcom/appsflyer/internal/AFh1pSDK;->component2:Ljava/lang/Boolean;

    .line 245
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "GAID_retry"

    invoke-virtual {p1, v5, v2}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 248
    new-array v2, v0, [Lcom/appsflyer/internal/AFe1mSDK;

    sget-object v5, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v5, v2, v4

    const/4 v5, 0x1

    sget-object v6, Lcom/appsflyer/internal/AFe1mSDK;->copydefault:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v6, v2, v5

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 249
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 41029
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1eSDK;->component4:Lcom/appsflyer/internal/AFd1aSDK;

    if-eqz v2, :cond_9

    .line 229
    sget v5, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v5, v5, 0x7

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v5, v0

    const-string v6, "fetchAdIdLatency"

    if-eqz v5, :cond_8

    .line 42172
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 250
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 251
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, v2, Lcom/appsflyer/internal/AFd1aSDK;->getRevenue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/16 p1, 0x5c

    div-int/2addr p1, v4

    :cond_7
    return-void

    .line 42172
    :cond_8
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 250
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 251
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, v2, Lcom/appsflyer/internal/AFd1aSDK;->getRevenue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3

    :cond_9
    return-void
.end method

.method public final getCurrencyIso4217Code()J
    .locals 5

    const/4 v0, 0x2

    .line 265
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v3, v3, 0x69

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v3, v0

    return-wide v1
.end method

.method public final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 6

    const/4 v0, 0x2

    .line 183
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24172
    iget-object v3, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 169
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork()Z

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code(Ljava/util/Map;Z)V

    .line 170
    invoke-static {v3}, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid(Ljava/util/Map;)V

    .line 171
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v1, v4

    const v4, -0x296ac0c

    const v5, 0x296ac15

    invoke-static {p1, v4, v5, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0, v3}, Lcom/appsflyer/internal/AFg1qSDK;->getRevenue(Ljava/util/Map;)V

    .line 173
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 25021
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1eSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 173
    filled-new-array {p0, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v4, -0x158d6250

    const v5, 0x158d6257

    invoke-static {p1, v4, v5, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 174
    invoke-direct {p0, v3}, Lcom/appsflyer/internal/AFg1qSDK;->i(Ljava/util/Map;)V

    .line 176
    new-array p1, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "mcc"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, p1, v4

    .line 177
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v5, "mnc"

    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v2

    .line 175
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 179
    const-string v1, "cell"

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0x6fc78d16

    const v5, 0x6fc78d16

    invoke-static {p1, v2, v5, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v1, "sig"

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "last_boot_time"

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, -0x3465d41c    # -2.020756E7f

    const v4, 0x3465d420

    invoke-static {p1, v2, v4, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "disk"

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final getCurrencyIso4217Code(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 223
    rem-int v1, v0, v0

    .line 220
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "appid"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    sget v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v4, v4, 0x35

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v4, v0

    .line 189
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "currencyCode"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WARNING: currency code should be 3 characters!!! \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    const-string v4, "\' is not a legal value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 220
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    .line 201
    :cond_1
    const-string v1, "currency"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "IS_UPDATE"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 205
    const-string v2, "isUpdate"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "additionalCustomData"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 220
    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v3, v0

    const-string v4, "customData"

    if-eqz v3, :cond_4

    .line 209
    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    throw v2

    .line 212
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v3, "AppUserId"

    invoke-virtual {v1, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 213
    const-string v3, "appUserId"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_6
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string/jumbo v3, "userEmails"

    invoke-virtual {v1, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 220
    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v3, v3, 0x27

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v3, v0

    .line 217
    const-string/jumbo v3, "user_emails"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_7
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 26020
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1eSDK;->getRevenue:Lcom/appsflyer/internal/AFb1uSDK;

    if-eqz v1, :cond_9

    .line 27040
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1uSDK;->getMediationNetwork:[Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 223
    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v3, v3, 0x13

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v3, v0

    const-string/jumbo v0, "sharing_filter"

    if-nez v3, :cond_8

    .line 221
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2

    :cond_9
    return-void
.end method

.method public final getCurrencyIso4217Code(Ljava/util/Map;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 342
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    const-string v1, "counter"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string p2, "iaecounter"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->component4()Z

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    .line 342
    sget p2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p2, p2, 0x73

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p2, v0

    goto :goto_0

    :cond_0
    sget p2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p2, p2, 0x3d

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p2, v0

    const/4 p3, 0x0

    .line 341
    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "isFirstCall"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 4

    const/4 v0, 0x2

    .line 134
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6172
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 128
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(Ljava/util/Map;)V

    .line 7172
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 129
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8191
    iget v3, p1, Lcom/appsflyer/internal/AFh1jSDK;->component1:I

    .line 129
    invoke-direct {p0, v2, v3}, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code(Ljava/util/Map;I)V

    .line 9172
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 130
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10191
    iget v3, p1, Lcom/appsflyer/internal/AFh1jSDK;->component1:I

    .line 130
    invoke-direct {p0, v2, v3}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(Ljava/util/Map;I)V

    .line 11172
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 131
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->registerClient(Ljava/util/Map;)V

    .line 12172
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 132
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->afDebugLog(Ljava/util/Map;)V

    .line 13172
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 133
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p0, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0x72d019df

    const v3, 0x72d019e9

    invoke-static {p1, v2, v3, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 134
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final getMediationNetwork(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 732
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 51194
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 727
    const-string/jumbo v0, "uid"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1pSDK;

    .line 51199
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v2, "CUSTOM_INSTALL_ID_APPLIED"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 728
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string v0, "custom_install_id"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 732
    :cond_1
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 7

    const/4 v0, 0x2

    .line 123
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1172
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 100
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2120
    iget-object v3, p1, Lcom/appsflyer/internal/AFh1jSDK;->areAllFieldsValid:Ljava/lang/String;

    .line 101
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 3018
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1eSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 101
    iget-object v5, p0, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 4019
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1eSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFb1rSDK;

    .line 101
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/appsflyer/internal/AFg1qSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFb1rSDK;)V

    goto :goto_0

    .line 103
    :cond_0
    instance-of v3, p1, Lcom/appsflyer/internal/AFh1fSDK;

    if-nez v3, :cond_1

    .line 104
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5111
    iget-object v3, p1, Lcom/appsflyer/internal/AFh1jSDK;->component4:Ljava/lang/String;

    .line 104
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    const v5, 0x432dd400    # 173.82812f

    const v6, -0x432dd3fe

    invoke-static {v3, v5, v6, v4}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v3, 0x3

    .line 107
    new-array v3, v3, [Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v4, 0x0

    sget-object v5, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/appsflyer/internal/AFe1mSDK;->copydefault:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v5, v3, v4

    sget-object v4, Lcom/appsflyer/internal/AFe1mSDK;->equals:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v4, v3, v0

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->hashCode(Ljava/util/Map;)V

    .line 110
    :cond_2
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v3, v3, 0x1d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v3, v0

    .line 111
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->component1(Ljava/util/Map;)V

    .line 123
    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v3, v3, 0x51

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v3, v0

    .line 113
    :cond_3
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->w(Ljava/util/Map;)V

    .line 114
    invoke-static {v2}, Lcom/appsflyer/internal/AFg1qSDK;->AFKeystoreWrapper(Ljava/util/Map;)V

    .line 115
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v3, -0x782008d6

    const v4, 0x782008d7

    invoke-static {v0, v3, v4, v1}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 116
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->AFLogger(Ljava/util/Map;)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork(Ljava/util/Map;)V

    .line 118
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(Ljava/util/Map;Z)V

    .line 119
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->e(Ljava/util/Map;)V

    .line 120
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1qSDK;->d(Ljava/util/Map;)V

    .line 121
    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFg1qSDK;->AFAdRevenueData(Ljava/util/Map;Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 122
    const-string p1, "af_events_api"

    const-string v0, "1"

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getMonetizationNetwork(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 359
    rem-int v1, v0, v0

    .line 346
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 48017
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1eSDK;->getMediationNetwork:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 359
    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v3, v3, 0x19

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v3, v0

    const-string v4, "af_deeplink"

    if-nez v3, :cond_2

    .line 346
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 347
    const-string p1, "Skip \'af\' payload as deeplink was found by path"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 349
    :cond_0
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/appsflyer/internal/AFg1qSDK;

    .line 350
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 351
    const-string v1, "isPush"

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 349
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 353
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 346
    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    rem-int/2addr v1, v0

    .line 354
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v3, v1

    check-cast v3, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v11, 0x78

    const/4 v12, 0x0

    const-string v5, "Exception while trying to create JSONObject from pushPayload"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    .line 353
    :cond_1
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto :goto_1

    .line 346
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2

    .line 358
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1qSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 49017
    iput-object v2, p1, Lcom/appsflyer/internal/AFc1eSDK;->getMediationNetwork:Ljava/lang/String;

    .line 346
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final getMonetizationNetwork(Ljava/util/Map;Lcom/appsflyer/internal/AFe1mSDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFe1mSDK;",
            ")V"
        }
    .end annotation

    .line 65343
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, -0x72d019df

    const v1, 0x72d019e9

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFg1qSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final getRevenue(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 5

    const/4 v0, 0x2

    .line 367
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v1, v0

    const-string/jumbo v2, "open_referrer"

    const/4 v3, 0x0

    const-string v4, ""

    if-nez v1, :cond_3

    .line 0
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50172
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 363
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51130
    iget-object v4, p1, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork:Ljava/lang/String;

    .line 363
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51141
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1jSDK;->component2:Ljava/lang/String;

    .line 364
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    sget v2, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v2, v2, 0x29

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v2, v0

    const-string v0, "af_web_referrer"

    if-nez v2, :cond_1

    .line 51142
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->component2:Ljava/lang/String;

    .line 365
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51142
    :cond_1
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->component2:Ljava/lang/String;

    .line 365
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50172
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 363
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51130
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork:Ljava/lang/String;

    .line 363
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51141
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->component2:Ljava/lang/String;

    .line 364
    check-cast p1, Ljava/lang/CharSequence;

    throw v3
.end method

.method public final getRevenue(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 332
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1qSDK;->component4:Lcom/appsflyer/internal/AFi1sSDK;

    .line 44017
    iget-object v1, v1, Lcom/appsflyer/internal/AFi1sSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1pSDK;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFi1pSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFi1tSDK;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 319
    const-string/jumbo v3, "network"

    .line 45004
    iget-object v4, v1, Lcom/appsflyer/internal/AFi1tSDK;->getRevenue:Ljava/lang/String;

    .line 319
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFi1tSDK;->getCurrencyIso4217Code()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "ivc"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1qSDK;->getMonetizationNetwork()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v4, "disableCollectNetworkData"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 332
    sget v3, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 v3, v3, 0x59

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr v3, v0

    .line 46006
    iget-object v3, v1, Lcom/appsflyer/internal/AFi1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 325
    const-string/jumbo v4, "operator"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47005
    :cond_1
    iget-object v1, v1, Lcom/appsflyer/internal/AFi1tSDK;->getMediationNetwork:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 328
    const-string v0, "carrier"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 332
    :cond_2
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    rem-int/2addr p1, p1

    :cond_3
    sget p1, Lcom/appsflyer/internal/AFg1qSDK;->i:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1qSDK;->w:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_4

    return-void

    :cond_4
    throw v2

    :cond_5
    return-void
.end method
