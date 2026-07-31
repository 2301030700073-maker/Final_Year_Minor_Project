.class public final Lcom/appsflyer/internal/AFf1wSDK;
.super Lcom/appsflyer/internal/AFe1eSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFf1wSDK$AFa1ySDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1eSDK<",
        "Lcom/appsflyer/internal/AFa1mSDK;",
        ">;"
    }
.end annotation


# instance fields
.field private AFInAppEventParameterName:I

.field private AFInAppEventType:I

.field private final AFKeystoreWrapper:Ljava/util/concurrent/CountDownLatch;

.field private AFLogger:I

.field private final areAllFieldsValid:Lcom/appsflyer/internal/AFa1pSDK;

.field private final copy:Lcom/appsflyer/internal/AFj1rSDK;

.field private final copydefault:Lcom/appsflyer/internal/AFa1rSDK;

.field private final equals:Lcom/appsflyer/internal/AFh1tSDK;

.field private final hashCode:Lcom/appsflyer/internal/AFc1eSDK;

.field private final registerClient:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFj1qSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final toString:Lcom/appsflyer/internal/AFc1pSDK;


# direct methods
.method public static synthetic $r8$lambda$yV5TRPbZvd8h5epJ_m--Xcw8OMU(Lcom/appsflyer/internal/AFj1qSDK;Lcom/appsflyer/internal/AFf1wSDK;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/appsflyer/internal/AFf1wSDK;->getRevenue(Lcom/appsflyer/internal/AFj1qSDK;Lcom/appsflyer/internal/AFf1wSDK;Ljava/util/Observable;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 13

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/appsflyer/internal/AFe1mSDK;->component3:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v2, 0x2

    .line 46
    new-array v3, v2, [Lcom/appsflyer/internal/AFe1mSDK;

    sget-object v4, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/appsflyer/internal/AFe1mSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 48
    const-string v4, "DdlSdk"

    .line 44
    invoke-direct {p0, v1, v3, p2, v4}, Lcom/appsflyer/internal/AFe1eSDK;-><init>(Lcom/appsflyer/internal/AFe1mSDK;[Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1pSDK;

    .line 60
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFKeystoreWrapper:Ljava/util/concurrent/CountDownLatch;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Ljava/util/List;

    .line 64
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->toString:Lcom/appsflyer/internal/AFc1pSDK;

    .line 65
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->hashCode:Lcom/appsflyer/internal/AFc1eSDK;

    .line 66
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    .line 67
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->component3()Lcom/appsflyer/internal/AFh1tSDK;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    .line 68
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->AFLogger()Lcom/appsflyer/internal/AFj1rSDK;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->copy:Lcom/appsflyer/internal/AFj1rSDK;

    .line 2050
    iget-object p1, p1, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array p2, v5, [Lcom/appsflyer/internal/AFj1qSDK;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/appsflyer/internal/AFj1qSDK;

    .line 1197
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    .line 1293
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 1294
    array-length v1, p1

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v3, p1, v5

    move-object v4, v3

    check-cast v4, Lcom/appsflyer/internal/AFj1qSDK;

    if-eqz v4, :cond_0

    .line 3056
    iget-object v4, v4, Lcom/appsflyer/internal/AFj1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    .line 1198
    sget-object v7, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getRevenue:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    if-eq v4, v7, :cond_0

    .line 1294
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1295
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 1200
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFLogger:I

    .line 1202
    check-cast p2, Ljava/lang/Iterable;

    .line 1296
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFj1qSDK;

    .line 4056
    iget-object v1, p2, Lcom/appsflyer/internal/AFj1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_2

    .line 1203
    :cond_2
    sget-object v3, Lcom/appsflyer/internal/AFf1wSDK$AFa1ySDK;->getMonetizationNetwork:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_2
    if-eq v1, v6, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 1209
    :cond_3
    new-instance v1, Lcom/appsflyer/internal/AFf1wSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p0}, Lcom/appsflyer/internal/AFf1wSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFj1qSDK;Lcom/appsflyer/internal/AFf1wSDK;)V

    invoke-virtual {p2, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    goto :goto_1

    .line 1205
    :cond_4
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v7, v1

    check-cast v7, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v8, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    iget-object v1, p2, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string/jumbo v3, "source"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " referrer collected earlier"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1206
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFf1wSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFj1qSDK;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static AFAdRevenueData(Lcom/appsflyer/internal/AFj1qSDK;)Z
    .locals 5

    .line 230
    iget-object p0, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v0, "click_ts"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sub-long/2addr v3, v1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    cmp-long p0, v3, v1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private final copy()Z
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1wSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1pSDK;

    .line 51178
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 225
    const-string/jumbo v1, "referrers"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 226
    :goto_1
    iget v3, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFLogger:I

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1wSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1pSDK;

    .line 51179
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 226
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private static getCurrencyIso4217Code(Lcom/appsflyer/internal/AFb1mSDK;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFb1mSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 51032
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1mSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 249
    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51038
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1mSDK;->getRevenue:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x2

    .line 254
    new-array p0, p0, [Lkotlin/Pair;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "unhashed"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    .line 255
    const-string/jumbo v1, "value"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    .line 253
    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getMonetizationNetwork(Lcom/appsflyer/internal/AFj1qSDK;)V
    .locals 7

    .line 181
    invoke-static {p1}, Lcom/appsflyer/internal/AFf1wSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFj1qSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFKeystoreWrapper:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 184
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Added non-organic "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 185
    :cond_0
    iget p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventParameterName:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventParameterName:I

    iget v0, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFLogger:I

    if-ne p1, v0, :cond_1

    .line 186
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFKeystoreWrapper:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method

.method private static final getRevenue(Lcom/appsflyer/internal/AFj1qSDK;Lcom/appsflyer/internal/AFf1wSDK;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7

    const-string p3, ""

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 211
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    .line 212
    iget-object p0, p0, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string/jumbo v0, "source"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " referrer collected via observer"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 210
    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 214
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/appsflyer/internal/AFj1qSDK;

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFf1wSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFj1qSDK;)V

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final a_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic areAllFieldsValid()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final copydefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrencyIso4217Code()J
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    .line 51310
    iget-wide v0, v0, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    return-wide v0
.end method

.method public final getMediationNetwork()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 17

    move-object/from16 v1, p0

    .line 114
    const-string v0, ""

    .line 0
    const-string v2, "Error occurred. Server response code = "

    .line 114
    sget-object v3, Lcom/appsflyer/internal/AFe1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/appsflyer/internal/AFe1eSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFe1uSDK;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :try_start_1
    iget-object v3, v1, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    iget v7, v1, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventType:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    if-lez v7, :cond_2

    if-le v7, v10, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v7, v4

    .line 28188
    iget-object v11, v3, Lcom/appsflyer/internal/AFh1tSDK;->component1:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    aput-wide v12, v11, v7

    .line 28189
    iget-object v11, v3, Lcom/appsflyer/internal/AFh1tSDK;->component4:[J

    aget-wide v12, v11, v7

    cmp-long v11, v12, v8

    if-eqz v11, :cond_1

    .line 28190
    iget-object v11, v3, Lcom/appsflyer/internal/AFh1tSDK;->areAllFieldsValid:[J

    iget-object v12, v3, Lcom/appsflyer/internal/AFh1tSDK;->component1:[J

    aget-wide v13, v12, v7

    iget-object v12, v3, Lcom/appsflyer/internal/AFh1tSDK;->component4:[J

    aget-wide v15, v12, v7

    sub-long/2addr v13, v15

    aput-wide v13, v11, v7

    .line 28191
    iget-object v7, v3, Lcom/appsflyer/internal/AFh1tSDK;->getRevenue:Ljava/util/Map;

    const-string/jumbo v11, "net"

    iget-object v3, v3, Lcom/appsflyer/internal/AFh1tSDK;->areAllFieldsValid:[J

    invoke-interface {v7, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 28193
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "Metrics: ddlStart["

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] ts is missing"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_1

    .line 28184
    :cond_2
    :goto_0
    const-string v3, "Unexpected ddl requestCount - end"

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Metrics: Unexpected ddl requestCount = "

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v11}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :goto_1
    sget-object v3, Lcom/appsflyer/internal/AFf1wSDK$AFa1ySDK;->AFAdRevenueData:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v3, v3, v7

    if-eq v3, v4, :cond_5

    if-eq v3, v10, :cond_3

    goto/16 :goto_7

    .line 133
    :cond_3
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v7, v0

    check-cast v7, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v8, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    .line 43108
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFe1xSDK;

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1xSDK;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v5

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 44077
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v5, v2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 45264
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    iget-object v3, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    .line 46300
    iget-wide v7, v3, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    .line 45264
    invoke-virtual {v2, v0, v7, v8}, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 45265
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    goto/16 :goto_7

    .line 29108
    :cond_5
    iget-object v2, v1, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFe1xSDK;

    .line 122
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1xSDK;->getBody()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/appsflyer/internal/AFa1mSDK;

    .line 30004
    iget-object v0, v2, Lcom/appsflyer/internal/AFa1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/deeplink/DeepLink;

    if-eqz v0, :cond_6

    .line 31004
    iget-object v0, v2, Lcom/appsflyer/internal/AFa1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/deeplink/DeepLink;

    .line 32073
    new-instance v2, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v2, v0, v5}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 33264
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    iget-object v3, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    .line 34300
    iget-wide v7, v3, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    .line 33264
    invoke-virtual {v0, v2, v7, v8}, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 33265
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    goto/16 :goto_7

    .line 126
    :cond_6
    iget v0, v1, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventType:I

    if-gt v0, v4, :cond_9

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFa1mSDK;->getCurrencyIso4217Code()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/internal/AFf1wSDK;->copy()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35169
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v10, v0

    check-cast v10, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v11, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v12, "Waiting for referrers..."

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35170
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1wSDK;->AFKeystoreWrapper:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 35171
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    .line 36198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 36199
    iget-object v7, v0, Lcom/appsflyer/internal/AFh1tSDK;->component1:[J

    const/4 v10, 0x0

    aget-wide v11, v7, v10

    cmp-long v7, v11, v8

    if-eqz v7, :cond_7

    .line 36200
    iget-object v7, v0, Lcom/appsflyer/internal/AFh1tSDK;->getRevenue:Ljava/util/Map;

    const-string/jumbo v8, "rfr_wait"

    iget-object v0, v0, Lcom/appsflyer/internal/AFh1tSDK;->component1:[J

    aget-wide v9, v0, v10

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 36202
    :cond_7
    const-string v0, "Metrics: ddlEnd[0] ts is missing"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 35172
    :goto_3
    iget v0, v1, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventParameterName:I

    iget v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->AFLogger:I

    if-ne v0, v2, :cond_8

    .line 37072
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v0, v5, v5}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 38264
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    iget-object v3, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    .line 39300
    iget-wide v7, v3, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    .line 38264
    invoke-virtual {v2, v0, v7, v8}, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 38265
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 35174
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getRevenue:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0

    .line 35176
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFe1eSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFe1uSDK;

    move-result-object v0

    return-object v0

    .line 40072
    :cond_9
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v0, v5, v5}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 41264
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    iget-object v3, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    .line 42300
    iget-wide v7, v3, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    .line 41264
    invoke-virtual {v2, v0, v7, v8}, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 41265
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v3, v6

    goto :goto_4

    :catch_1
    move-exception v0

    .line 141
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 142
    instance-of v6, v2, Ljava/lang/InterruptedException;

    if-eqz v6, :cond_a

    goto :goto_5

    .line 143
    :cond_a
    instance-of v4, v2, Ljava/io/InterruptedIOException;

    :goto_5
    if-eqz v4, :cond_b

    .line 144
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "[DDL] Timeout"

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v6, v0

    check-cast v6, Lcom/appsflyer/internal/AFh1ySDK;

    .line 146
    sget-object v7, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    .line 147
    iget v0, v1, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventType:I

    .line 148
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    .line 47300
    iget-wide v2, v2, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Timeout, didn\'t manage to find deferred deeplink after "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " attempt(s) within "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " milliseconds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 145
    invoke-static/range {v6 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48074
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v5, v2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 49264
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    iget-object v3, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    .line 50300
    iget-wide v3, v3, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    .line 49264
    invoke-virtual {v2, v0, v3, v4}, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 49265
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 151
    sget-object v6, Lcom/appsflyer/internal/AFe1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    goto :goto_7

    .line 154
    :cond_b
    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_c

    .line 155
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v6, v0

    check-cast v6, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v7, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "Http Exception: the request was not sent to the server"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51076
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v5, v2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 51265
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    iget-object v4, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    .line 51302
    iget-wide v4, v4, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    .line 51265
    invoke-virtual {v2, v0, v4, v5}, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 51266
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    goto :goto_6

    .line 160
    :cond_c
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v6, v2

    check-cast v6, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v7, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected Exception: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51078
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v5, v2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 51268
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    iget-object v4, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    .line 51305
    iget-wide v4, v4, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    .line 51268
    invoke-virtual {v2, v0, v4, v5}, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 51269
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1wSDK;->copydefault:Lcom/appsflyer/internal/AFa1rSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    :goto_6
    move-object v6, v3

    :goto_7
    return-object v6
.end method

.method protected final getRevenue(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Lcom/appsflyer/internal/AFa1mSDK;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5087
    iget p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventType:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventType:I

    .line 5088
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v2, p1

    check-cast v2, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    iget p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventType:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Preparing request "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 5090
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1pSDK;

    .line 6172
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 5091
    iget v2, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventType:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v2, v1, :cond_4

    .line 5092
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1wSDK;->toString:Lcom/appsflyer/internal/AFc1pSDK;

    .line 7290
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v5, "appsFlyerCount"

    invoke-interface {v2, v5, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 5092
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "is_first"

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5093
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "lang"

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5094
    const-string/jumbo v2, "os"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5095
    const-string/jumbo v2, "type"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5096
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1wSDK;->toString:Lcom/appsflyer/internal/AFc1pSDK;

    .line 8179
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object v2

    .line 5096
    const-string/jumbo v5, "request_id"

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5097
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1wSDK;->hashCode:Lcom/appsflyer/internal/AFc1eSDK;

    .line 9020
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1eSDK;->getRevenue:Lcom/appsflyer/internal/AFb1uSDK;

    if-eqz v2, :cond_1

    .line 10040
    iget-object v2, v2, Lcom/appsflyer/internal/AFb1uSDK;->getMediationNetwork:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 5097
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "sharing_filter"

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5098
    :cond_1
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1wSDK;->toString:Lcom/appsflyer/internal/AFc1pSDK;

    .line 12138
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1eSDK;

    .line 13030
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1eSDK;->component2:Lcom/appsflyer/internal/AFh1pSDK;

    if-eqz v2, :cond_2

    .line 11127
    new-instance v5, Lcom/appsflyer/internal/AFb1mSDK;

    .line 14008
    iget-object v6, v2, Lcom/appsflyer/internal/AFh1pSDK;->getRevenue:Ljava/lang/String;

    .line 15009
    iget-object v2, v2, Lcom/appsflyer/internal/AFh1pSDK;->getMonetizationNetwork:Ljava/lang/Boolean;

    .line 11127
    invoke-direct {v5, v6, v2}, Lcom/appsflyer/internal/AFb1mSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    move-object v5, v4

    .line 5098
    :goto_1
    invoke-static {v5}, Lcom/appsflyer/internal/AFf1wSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFb1mSDK;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v5, "gaid"

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5099
    :cond_3
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1wSDK;->toString:Lcom/appsflyer/internal/AFc1pSDK;

    .line 17298
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 18025
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 16143
    invoke-static {v2}, Lcom/appsflyer/internal/AFb1kSDK;->getCurrencyIso4217Code(Landroid/content/Context;)Lcom/appsflyer/internal/AFb1mSDK;

    move-result-object v2

    .line 5099
    invoke-static {v2}, Lcom/appsflyer/internal/AFf1wSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFb1mSDK;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v5, "oaid"

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5101
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 20022
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v2, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 21017
    const-string v7, "UTC"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 21018
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 5101
    const-string/jumbo v5, "timestamp"

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5102
    iget v2, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v6, "request_count"

    invoke-interface {p1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5104
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 5280
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 5289
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 5288
    check-cast v7, Lcom/appsflyer/internal/AFj1qSDK;

    .line 23056
    iget-object v9, v7, Lcom/appsflyer/internal/AFj1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    .line 22235
    sget-object v10, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    if-ne v9, v10, :cond_7

    .line 22236
    iget-object v9, v7, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string/jumbo v10, "referrer"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_6

    check-cast v9, Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v9, v4

    :goto_3
    if-eqz v9, :cond_7

    .line 22239
    new-array v8, v8, [Lkotlin/Pair;

    iget-object v7, v7, Lcom/appsflyer/internal/AFj1qSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string/jumbo v10, "source"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    invoke-static {v10, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v8, v3

    .line 22240
    const-string/jumbo v7, "value"

    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v8, v1

    .line 22238
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v4

    :goto_4
    if-eqz v7, :cond_5

    .line 5288
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5292
    :cond_8
    check-cast v6, Ljava/util/List;

    .line 5105
    move-object v1, v6

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 5106
    const-string/jumbo v1, "referrers"

    invoke-interface {p1, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5109
    :cond_9
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1pSDK;

    .line 24191
    new-instance v1, Lcom/appsflyer/internal/AFj1eSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1wSDK;->toString:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-direct {v1, v2, v4, v8, v4}, Lcom/appsflyer/internal/AFj1eSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFk1ySDK;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24192
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1eSDK;->component2:Lcom/appsflyer/internal/AFf1cSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v2

    .line 24193
    iget-object v3, p0, Lcom/appsflyer/internal/AFf1wSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1pSDK;

    .line 25172
    iget-object v3, v3, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 24193
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 24191
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26083
    iput-object v1, p1, Lcom/appsflyer/internal/AFh1jSDK;->component3:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->equals:Lcom/appsflyer/internal/AFh1tSDK;

    iget v1, p0, Lcom/appsflyer/internal/AFf1wSDK;->AFInAppEventType:I

    if-lez v1, :cond_c

    if-le v1, v8, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 27172
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1tSDK;->component4:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v2, v1

    if-nez v1, :cond_d

    .line 27174
    iget-wide v2, p1, Lcom/appsflyer/internal/AFh1tSDK;->component3:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 27175
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1tSDK;->getRevenue:Ljava/util/Map;

    iget-object v3, p1, Lcom/appsflyer/internal/AFh1tSDK;->component4:[J

    aget-wide v4, v3, v1

    iget-wide v6, p1, Lcom/appsflyer/internal/AFh1tSDK;->component3:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "from_fg"

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 27177
    :cond_b
    const-string p1, "Metrics: fg ts is missing"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_6

    .line 27168
    :cond_c
    :goto_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "Metrics: Unexpected ddl requestCount = "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "Unexpected ddl requestCount - start"

    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component1:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1wSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1pSDK;

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFa1pSDK;)Lcom/appsflyer/internal/AFd1jSDK;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
