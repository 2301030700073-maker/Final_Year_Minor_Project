.class public final Lcom/appsflyer/internal/AFd1ySDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFd1xSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static copy:J = -0x13ad74b5beb72412L

.field private static copydefault:I = 0x1

.field private static equals:I


# instance fields
.field private final AFAdRevenueData:Lkotlin/Lazy;

.field private final areAllFieldsValid:Lkotlin/Lazy;

.field private final component1:Ljava/lang/String;

.field private final component2:Lkotlin/Lazy;

.field private final component3:Lkotlin/Lazy;

.field private component4:Lcom/appsflyer/internal/AFd1xSDK$AFa1ySDK;

.field private final getCurrencyIso4217Code:Lkotlin/Lazy;

.field private final getMediationNetwork:Lkotlin/Lazy;

.field private final getMonetizationNetwork:Lkotlin/Lazy;

.field private getRevenue:Lcom/appsflyer/internal/AFc1bSDK;


# direct methods
.method public static synthetic $r8$lambda$4bnperVCrJT1o9mMnMJ-unfA1ZI(Lcom/appsflyer/internal/AFd1ySDK;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/appsflyer/internal/AFd1ySDK;->getMediationNetwork(Lcom/appsflyer/internal/AFd1ySDK;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4xThdHYuJcljhLoDDLwjyAIwavY(Lcom/appsflyer/internal/AFd1ySDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1ySDK;->getMediationNetwork(Lcom/appsflyer/internal/AFd1ySDK;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IxpI-EiPEihQnkCT5zEtWExTvRU(Lcom/appsflyer/internal/AFd1ySDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1ySDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFd1ySDK;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yRS0tPwqn41V8YkQaeSJE77Oblo(Lcom/appsflyer/internal/AFd1ySDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue(Lcom/appsflyer/internal/AFd1ySDK;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    .line 34
    new-instance p1, Lcom/appsflyer/internal/AFd1ySDK$1;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1ySDK$1;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getCurrencyIso4217Code:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lcom/appsflyer/internal/AFd1ySDK$5;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1ySDK$5;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getMediationNetwork:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/appsflyer/internal/AFd1ySDK$3;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1ySDK$3;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getMonetizationNetwork:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lcom/appsflyer/internal/AFd1ySDK$9;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1ySDK$9;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/appsflyer/internal/AFd1ySDK$2;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1ySDK$2;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->component2:Lkotlin/Lazy;

    .line 45
    const-string p1, "6.17.3"

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->component1:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/appsflyer/internal/AFd1ySDK$4;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1ySDK$4;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid:Lkotlin/Lazy;

    .line 55
    new-instance p1, Lcom/appsflyer/internal/AFd1ySDK$6;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1ySDK$6;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->component3:Lkotlin/Lazy;

    return-void
.end method

.method private static synthetic AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFd1ySDK;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    check-cast p0, Ljava/lang/String;

    .line 64
    rem-int v3, v2, v2

    sget v3, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v3, v3, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v3, v2

    const v2, 0x48d5b348    # 437658.25f

    const v4, -0x48d5b346

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v3, :cond_0

    .line 0
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v3, v4, v2, v6}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1, p0}, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda2;-><init>(Lcom/appsflyer/internal/AFd1ySDK;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v5

    .line 64
    :cond_0
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v3, v4, v2, v6}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1, p0}, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda2;-><init>(Lcom/appsflyer/internal/AFd1ySDK;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    throw v5
.end method

.method private final AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 65350
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, -0x3e6edb35

    const v1, 0x3e6edb39

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private final AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z
    .locals 11

    const/4 v0, 0x2

    .line 243
    rem-int v1, v0, v0

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 230
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component3()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v3

    const-string v4, "af_send_exc_to_server_window"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;J)J

    move-result-wide v3

    .line 18053
    iget-wide v7, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMediationNetwork:J

    .line 232
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    cmp-long v7, v7, v9

    const/4 v8, 0x0

    if-gez v7, :cond_0

    return v8

    :cond_0
    cmp-long v5, v3, v5

    if-eqz v5, :cond_6

    .line 243
    sget v5, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v5, v5, 0x33

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v5, v0

    if-nez v5, :cond_5

    cmp-long v1, v3, v1

    if-gez v1, :cond_1

    goto :goto_1

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component3()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    const-string v2, "af_send_exc_min"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()I

    move-result v2

    if-ge v2, v1, :cond_2

    goto :goto_0

    .line 247
    :cond_2
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result p1

    return p1

    .line 243
    :cond_3
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_4

    const/16 p1, 0xf

    div-int/2addr p1, v8

    :cond_4
    return v8

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    :cond_6
    :goto_1
    return v8
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x2

    .line 77
    rem-int v1, v0, v0

    if-eqz p0, :cond_0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->$10:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->$11:I

    rem-int/2addr v1, v0

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 54
    new-instance v1, Lcom/appsflyer/internal/AFk1lSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1lSDK;-><init>()V

    .line 57
    iput p1, v1, Lcom/appsflyer/internal/AFk1lSDK;->getMonetizationNetwork:I

    .line 60
    array-length p1, p0

    new-array v2, p1, [J

    const/4 v3, 0x0

    .line 63
    iput v3, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    :goto_0
    iget v4, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 77
    sget v4, Lcom/appsflyer/internal/AFd1ySDK;->$10:I

    add-int/lit8 v4, v4, 0x1d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1ySDK;->$11:I

    rem-int/2addr v4, v0

    .line 64
    iget v4, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    iget v5, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    aget-char v5, p0, v5

    int-to-long v5, v5

    iget v7, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    int-to-long v7, v7

    iget v9, v1, Lcom/appsflyer/internal/AFk1lSDK;->getMonetizationNetwork:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    xor-long/2addr v5, v7

    sget-wide v7, Lcom/appsflyer/internal/AFd1ySDK;->copy:J

    const-wide v9, -0x2303b60eca85f722L    # -8.421958473976257E139

    xor-long/2addr v7, v9

    xor-long/2addr v5, v7

    aput-wide v5, v2, v4

    .line 63
    iget v4, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    goto :goto_0

    .line 72
    :cond_1
    new-array p1, p1, [C

    .line 73
    iput v3, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    :goto_1
    iget v4, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    array-length v5, p0

    if-ge v4, v5, :cond_2

    .line 77
    sget v4, Lcom/appsflyer/internal/AFd1ySDK;->$10:I

    add-int/lit8 v4, v4, 0x4d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1ySDK;->$11:I

    rem-int/2addr v4, v0

    .line 74
    iget v4, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    iget v5, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    aget-wide v5, v2, v5

    long-to-int v5, v5

    int-to-char v5, v5

    aput-char v5, p1, v4

    .line 73
    iget v4, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/appsflyer/internal/AFk1lSDK;->getRevenue:I

    goto :goto_1

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    sget p1, Lcom/appsflyer/internal/AFd1ySDK;->$11:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1ySDK;->$10:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_3

    aput-object p0, p2, v3

    return-void

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method private final areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;
    .locals 4

    const/4 v0, 0x2

    .line 49
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->getMediationNetwork()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object v1

    .line 1064
    iget-object v1, v1, Lcom/appsflyer/internal/AFf1lSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1iSDK;

    .line 2062
    iget-object v1, v1, Lcom/appsflyer/internal/AFf1iSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1wSDK;

    if-eqz v1, :cond_0

    .line 3068
    iget-object v1, v1, Lcom/appsflyer/internal/AFi1wSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1zSDK;

    if-eqz v1, :cond_0

    .line 49
    sget v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v2, v0

    .line 4010
    iget-object v0, v1, Lcom/appsflyer/internal/AFi1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1aSDK;

    return-object v0

    .line 49
    :cond_0
    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    throw v2

    :cond_2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->getMediationNetwork()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object v0

    .line 1064
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1lSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1iSDK;

    .line 2062
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1iSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1wSDK;

    .line 49
    throw v2
.end method

.method private final component1()Lcom/appsflyer/internal/AFf1cSDK;
    .locals 4

    const/4 v0, 0x2

    .line 37
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFf1cSDK;

    sget v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method private component2()Lcom/appsflyer/internal/AFd1wSDK;
    .locals 3

    const/4 v0, 0x2

    .line 55
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v1, v0

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1ySDK;->component3:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFd1wSDK;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method private final component3()Lcom/appsflyer/internal/AFc1oSDK;
    .locals 4

    const/4 v0, 0x2

    .line 36
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getMonetizationNetwork:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1oSDK;

    sget v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v2, v0

    return-object v1
.end method

.method private final component4()Ljava/util/concurrent/ExecutorService;
    .locals 4

    .line 65354
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0x48d5b346

    const v3, 0x48d5b348    # 437658.25f

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private final copy()V
    .locals 7

    const/4 v0, 0x2

    .line 158
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 146
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 147
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    sget v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v2, v2, 0x17

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component1()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x42

    div-int/lit8 v2, v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component1()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    :goto_0
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1ySDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1aSDK;)Ljava/util/Map;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1zSDK;->getMediationNetwork()Ljava/util/List;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const v3, -0x5a8f00b0

    const v4, 0x5a8f00b0

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 151
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0x3e6edb35

    const v3, 0x3e6edb39

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    :cond_1
    return-void

    .line 155
    :cond_2
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->registerClient:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string/jumbo v3, "skipping"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    return-void

    .line 146
    :cond_4
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;

    const/4 v0, 0x0

    throw v0
.end method

.method private final declared-synchronized copydefault()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    .line 182
    :try_start_0
    rem-int v1, v0, v0

    .line 167
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10049
    iget v2, v1, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 182
    sget v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v2, v0

    .line 169
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component3()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v2

    const-string v3, "af_send_exc_to_server_window"

    invoke-interface {v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component3()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v2

    const-string v3, "af_send_exc_to_server_window"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 176
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1ySDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)V

    .line 179
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1ySDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result v1

    .line 182
    rem-int v2, v0, v0

    goto :goto_1

    :cond_2
    rem-int v1, v0, v0

    const/4 v1, 0x0

    .line 181
    :goto_1
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1ySDK;->component4:Lcom/appsflyer/internal/AFd1xSDK$AFa1ySDK;

    if-eqz v2, :cond_4

    .line 182
    sget v3, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v3, v3, 0x43

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_3

    .line 181
    invoke-interface {v2, v1}, Lcom/appsflyer/internal/AFd1xSDK$AFa1ySDK;->onConfigurationChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    .line 182
    :cond_3
    :try_start_1
    invoke-interface {v2, v1}, Lcom/appsflyer/internal/AFd1xSDK$AFa1ySDK;->onConfigurationChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
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

.method private final declared-synchronized equals()V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x2

    .line 140
    :try_start_0
    rem-int v1, v0, v0

    .line 7056
    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 98
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5053
    iget-wide v3, v1, Lcom/appsflyer/internal/AFh1aSDK;->getMediationNetwork:J

    .line 140
    rem-int v1, v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    .line 99
    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    .line 102
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->registerClient:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v3, "TTL is already passed"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component3()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v0

    const-string v1, "af_send_exc_to_server_window"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->getCurrencyIso4217Code()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 105
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_10

    .line 98
    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    .line 109
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v1

    const/4 v5, -0x1

    if-eqz v1, :cond_8

    .line 6041
    iget-object v1, v1, Lcom/appsflyer/internal/AFh1aSDK;->AFAdRevenueData:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 109
    const-string v6, ""

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7054
    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "(\\d+).(\\d+).(\\d+).*"

    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 140
    sget v6, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v6, v6, 0x59

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v6, v0

    if-eqz v6, :cond_2

    .line 7056
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v6

    invoke-interface {v6, v3}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v6

    invoke-interface {v6, v4}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 140
    :goto_1
    sget v7, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v7, v7, 0x23

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v7, v0

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v7, 0x5

    :try_start_2
    div-int/2addr v7, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0

    .line 7056
    :cond_3
    invoke-virtual {v6}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    :goto_2
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_3

    :cond_4
    move v6, v3

    :goto_3
    const v7, 0xf4240

    mul-int/2addr v6, v7

    .line 7057
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v7

    invoke-interface {v7, v0}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 140
    sget v8, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v8, v8, 0x3f

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v8, v0

    .line 7057
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_4

    :cond_5
    move v7, v3

    :goto_4
    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    .line 7058
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v1

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 140
    rem-int v7, v0, v0

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    add-int/2addr v6, v1

    goto :goto_6

    :cond_7
    move v6, v5

    .line 109
    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    .line 110
    :goto_7
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 8041
    iget-object v6, v6, Lcom/appsflyer/internal/AFh1aSDK;->AFAdRevenueData:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 110
    invoke-static {v6}, Lcom/appsflyer/internal/AFd1rSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v6

    goto :goto_8

    :cond_9
    move-object v6, v2

    .line 111
    :goto_8
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 9041
    iget-object v7, v7, Lcom/appsflyer/internal/AFh1aSDK;->AFAdRevenueData:Ljava/lang/String;

    if-eqz v7, :cond_b

    .line 140
    sget v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_a

    invoke-static {v7}, Lcom/appsflyer/internal/AFd1rSDK;->getMonetizationNetwork(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v7, 0x50

    :try_start_4
    div-int/2addr v7, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    :try_start_5
    throw v0

    .line 111
    :cond_a
    invoke-static {v7}, Lcom/appsflyer/internal/AFd1rSDK;->getMonetizationNetwork(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_9

    .line 140
    :cond_b
    rem-int v7, v0, v0

    :goto_9
    if-nez v1, :cond_c

    goto :goto_a

    .line 116
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_d

    :goto_a
    if-nez v6, :cond_d

    .line 117
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/internal/AFd1ySDK;->component1:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1zSDK;->getCurrencyIso4217Code([Ljava/lang/String;)Z

    goto :goto_b

    :cond_d
    if-eqz v6, :cond_e

    .line 121
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v0

    .line 122
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 123
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 121
    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1zSDK;->getMediationNetwork(II)V

    goto :goto_b

    :cond_e
    if-eqz v2, :cond_f

    .line 126
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v1

    .line 127
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 128
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 126
    invoke-interface {v1, v4, v2}, Lcom/appsflyer/internal/AFd1zSDK;->getMediationNetwork(II)V

    .line 140
    rem-int/2addr v0, v0

    goto :goto_b

    .line 131
    :cond_f
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component3()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v0

    const-string v1, "af_send_exc_to_server_window"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->getCurrencyIso4217Code()Z

    goto :goto_b

    .line 136
    :cond_10
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component3()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v0

    const-string v1, "af_send_exc_to_server_window"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->getCurrencyIso4217Code()Z

    .line 139
    :goto_b
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1ySDK;->component4:Lcom/appsflyer/internal/AFd1xSDK$AFa1ySDK;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1ySDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result v3

    :cond_11
    invoke-interface {v0, v3}, Lcom/appsflyer/internal/AFd1xSDK$AFa1ySDK;->onConfigurationChanged(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    return-void

    .line 140
    :cond_12
    monitor-exit p0

    return-void

    .line 98
    :cond_13
    :try_start_6
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 7056
    :try_start_8
    throw v0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method private static synthetic getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFd1ySDK;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    check-cast p0, Ljava/lang/String;

    .line 221
    rem-int v3, v2, v2

    sget v3, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v3, v3, 0x29

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v3, v2

    .line 217
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {v1, p0}, Lcom/appsflyer/internal/AFj1bSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 219
    const-string v1, "Authorization"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 220
    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1ySDK;->component2()Lcom/appsflyer/internal/AFd1wSDK;

    move-result-object v0

    const/16 v1, 0x7d0

    .line 17016
    invoke-interface {v0, v3, p0, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue([BLjava/util/Map;I)V

    .line 221
    sget p0, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr p0, v2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    throw v0
.end method

.method private final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1aSDK;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1aSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 206
    rem-int v1, v0, v0

    const/16 v1, 0x8

    .line 198
    new-array v1, v1, [Lkotlin/Pair;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    const v3, 0x99fb

    add-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "\ud352\u4ab9\ue0a7\u1eaf\ub4b8"

    invoke-static {v5, v2, v4}, Lcom/appsflyer/internal/AFd1ySDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    aget-object v4, v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v2

    .line 199
    const-string/jumbo v2, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v3

    .line 200
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v2

    .line 14298
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 15025
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 13165
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 200
    const-string v3, "app_id"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v0

    .line 201
    new-instance v2, Lcom/appsflyer/internal/AFa1ySDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFa1ySDK;-><init>()V

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFa1ySDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "p_ex"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 202
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 203
    const-string/jumbo v2, "sdk"

    iget-object v3, p0, Lcom/appsflyer/internal/AFd1ySDK;->component1:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 204
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v2

    .line 16179
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object v2

    .line 204
    const-string/jumbo v3, "uid"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 205
    const-string v2, "exc_config"

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1aSDK;->getMonetizationNetwork()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x7

    aput-object p1, v1, v2

    .line 197
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 206
    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v1, v0

    return-object p1
.end method

.method private static final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFd1ySDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 78
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->copy()V

    .line 78
    sget p0, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr p0, v0

    return-void
.end method

.method private final getMediationNetwork()Lcom/appsflyer/internal/AFf1lSDK;
    .locals 4

    const/4 v0, 0x2

    .line 34
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFf1lSDK;

    const/16 v2, 0x47

    div-int/lit8 v2, v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFf1lSDK;

    :goto_0
    sget v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v2, v2, 0x1f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v2, v0

    return-object v1
.end method

.method private static synthetic getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFd1ySDK;

    const/4 v0, 0x2

    .line 38
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1ySDK;->component2:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private static final getMediationNetwork(Lcom/appsflyer/internal/AFd1ySDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 72
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    const-string v0, ""

    if-nez v1, :cond_0

    .line 0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->equals()V

    return-void

    .line 72
    :cond_0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->equals()V

    const/4 p0, 0x0

    .line 72
    throw p0
.end method

.method private static final getMediationNetwork(Lcom/appsflyer/internal/AFd1ySDK;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 63
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1ySDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v1, v0

    .line 61
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/appsflyer/internal/AFd1zSDK;->getRevenue(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private final getMediationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)V
    .locals 8

    const/4 v0, 0x2

    .line 192
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v1, v0

    const-string v0, "af_send_exc_min"

    const-string v2, "af_send_exc_to_server_window"

    if-nez v1, :cond_0

    .line 11045
    iget v1, p1, Lcom/appsflyer/internal/AFh1aSDK;->getCurrencyIso4217Code:I

    .line 12049
    iget p1, p1, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:I

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    xor-long/2addr v3, v5

    goto :goto_0

    .line 11045
    :cond_0
    iget v1, p1, Lcom/appsflyer/internal/AFh1aSDK;->getCurrencyIso4217Code:I

    .line 12049
    iget p1, p1, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:I

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component3()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p1

    .line 189
    invoke-interface {p1, v2, v3, v4}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;J)V

    .line 190
    invoke-interface {p1, v0, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic getMonetizationNetwork(Lcom/appsflyer/internal/AFd1ySDK;)Lcom/appsflyer/internal/AFc1bSDK;
    .locals 4

    const/4 v0, 0x2

    .line 30
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v2, v1, 0x13

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v2, v0

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue:Lcom/appsflyer/internal/AFc1bSDK;

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    return-object p0
.end method

.method private final getMonetizationNetwork()Lcom/appsflyer/internal/AFc1pSDK;
    .locals 4

    const/4 v0, 0x2

    .line 35
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getMediationNetwork:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1pSDK;

    const/16 v2, 0x33

    div-int/lit8 v2, v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getMediationNetwork:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1pSDK;

    :goto_0
    sget v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method private final getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z
    .locals 12

    const/4 v0, 0x2

    .line 259
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    const-string v2, "af_send_exc_to_server_window"

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-nez v1, :cond_4

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 257
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component3()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    invoke-interface {v1, v2, v3, v4}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;J)J

    move-result-wide v1

    .line 19053
    iget-wide v8, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMediationNetwork:J

    .line 259
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    cmp-long v8, v8, v10

    const/4 v9, 0x0

    if-gez v8, :cond_1

    sget p1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v9

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    throw v5

    :cond_1
    cmp-long v0, v1, v3

    if-eqz v0, :cond_3

    cmp-long v0, v1, v6

    if-gez v0, :cond_2

    goto :goto_0

    .line 266
    :cond_2
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v9

    .line 256
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 257
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->component3()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v6

    invoke-interface {v6, v2, v3, v4}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;J)J

    .line 19053
    iget-wide v2, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMediationNetwork:J

    .line 259
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    throw v5
.end method

.method public static synthetic getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 3

    mul-int/lit16 v0, p1, -0x1d0

    mul-int/lit16 v1, p2, -0x3a1

    add-int/2addr v0, v1

    not-int p1, p1

    or-int v1, p2, p3

    not-int v2, v1

    or-int/2addr v2, p1

    mul-int/lit16 v2, v2, -0x1d1

    add-int/2addr v0, v2

    or-int/2addr p3, p1

    not-int p3, p3

    or-int/2addr p2, p3

    mul-int/lit16 p2, p2, 0x3a2

    add-int/2addr v0, p2

    or-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x1d1

    add-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x2

    if-eq v0, p2, :cond_3

    if-eq v0, p3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1
    aget-object v0, p0, p1

    check-cast v0, Ljava/util/Map;

    aget-object p0, p0, p2

    check-cast p0, Ljava/util/List;

    .line 21209
    rem-int v1, p3, p3

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, p3

    new-array v1, p3, [Lkotlin/Pair;

    const-string v2, "deviceInfo"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "excs"

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1tSDK;->AFAdRevenueData(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    aput-object p0, v1, p2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr p1, p3

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1ySDK;->getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1ySDK;->getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_3
    aget-object p1, p0, p1

    check-cast p1, Lcom/appsflyer/internal/AFd1ySDK;

    aget-object p0, p0, p2

    check-cast p0, Lcom/appsflyer/internal/AFd1xSDK$AFa1ySDK;

    .line 22073
    rem-int p2, p3, p3

    sget p2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 p2, p2, 0x39

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr p2, p3

    .line 22069
    iput-object p0, p1, Lcom/appsflyer/internal/AFd1ySDK;->component4:Lcom/appsflyer/internal/AFd1xSDK$AFa1ySDK;

    .line 22070
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, -0x48d5b346

    const v1, 0x48d5b348    # 437658.25f

    invoke-static {p0, v0, v1, p2}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda1;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 22073
    sget p0, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr p0, p3

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getRevenue(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFc1cSDK;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 65351
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int p1, v0

    const v0, -0x5a8f00b0

    const v1, 0x5a8f00b0

    invoke-static {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static final getRevenue(Lcom/appsflyer/internal/AFd1ySDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 84
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v1, v0

    const-string v0, ""

    if-eqz v1, :cond_0

    .line 0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->copydefault()V

    return-void

    .line 84
    :cond_0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->copydefault()V

    const/4 p0, 0x0

    .line 84
    throw p0
.end method

.method private final getRevenue(Lcom/appsflyer/internal/AFh1aSDK;)Z
    .locals 3

    const/4 v0, 0x2

    .line 271
    rem-int v1, v0, v0

    new-instance v1, Lcom/appsflyer/internal/AFd1sSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFd1sSDK;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->component1:Ljava/lang/String;

    .line 20041
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1aSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 271
    const-string v2, ""

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFd1sSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;
    .locals 4

    const/4 v0, 0x2

    .line 52
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->areAllFieldsValid:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFd1zSDK;

    sget v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method public final getCurrencyIso4217Code()V
    .locals 5

    const/4 v0, 0x2

    .line 79
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    const v2, 0x48d5b348    # 437658.25f

    const v3, -0x48d5b346

    if-nez v1, :cond_0

    .line 76
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda3;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    return-void

    .line 76
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v3, v2, v1}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda3;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 79
    throw v0
.end method

.method public final getMediationNetwork(Lcom/appsflyer/internal/AFd1xSDK$AFa1ySDK;)V
    .locals 3

    .line 65352
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x29f74da5

    const v2, 0x29f74da6

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final getRevenue()V
    .locals 5

    const/4 v0, 0x2

    .line 85
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    rem-int/2addr v1, v0

    const v2, 0x48d5b348    # 437658.25f

    const v3, -0x48d5b346

    if-nez v1, :cond_0

    .line 82
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/16 v1, 0x17

    .line 85
    div-int/lit8 v1, v1, 0x0

    goto :goto_0

    .line 82
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/appsflyer/internal/AFd1ySDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFd1ySDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 85
    :goto_0
    sget v1, Lcom/appsflyer/internal/AFd1ySDK;->copydefault:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1ySDK;->equals:I

    rem-int/2addr v1, v0

    return-void
.end method

.method public final getRevenue(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 65353
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, 0x445a84f2

    const v1, -0x445a84ef

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method
