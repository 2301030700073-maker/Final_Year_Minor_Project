.class public final Lcom/appsflyer/internal/AFf1vSDK;
.super Lcom/appsflyer/internal/AFe1eSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFf1vSDK$AFa1vSDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1eSDK<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final AFInAppEventParameterName:Ljava/util/UUID;

.field public areAllFieldsValid:Lcom/appsflyer/internal/AFf1vSDK$AFa1vSDK;

.field private final copy:Lcom/appsflyer/internal/AFd1lSDK;

.field private copydefault:Ljava/lang/String;

.field private final equals:Z

.field private hashCode:Ljava/lang/String;

.field private toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;Ljava/util/UUID;Landroid/net/Uri;)V
    .locals 11

    .line 44
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->component2:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/appsflyer/internal/AFe1mSDK;

    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-direct {p0, v0, v2, p1, v3}, Lcom/appsflyer/internal/AFe1eSDK;-><init>(Lcom/appsflyer/internal/AFe1mSDK;[Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->getRevenue()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->copy:Lcom/appsflyer/internal/AFd1lSDK;

    .line 51
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventParameterName:Ljava/util/UUID;

    .line 55
    :try_start_0
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/internal/AFk1xSDK;->getRevenue(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/internal/AFk1xSDK;->getRevenue(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 56
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x2

    :try_start_1
    new-array v0, p2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p3, v0, v4

    sget-object p1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v2, 0xd9e650f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-char v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x25

    invoke-static {p1, v3, v5}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    new-array v3, p2, [Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    aput-object v5, v3, v4

    const-class v5, Lcom/appsflyer/internal/AFa1rSDK;

    aput-object v5, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    sget-object v3, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v2, -0x35288a77    # -7060164.5f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v3, "getRevenue"

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-static {v4, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    invoke-static {v4, v4}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v6

    int-to-char v6, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x25

    invoke-static {v0, v6, v7}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v6, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    :try_start_4
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v2, -0x6a988aa5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const v6, 0x9881

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    rsub-int/lit8 v0, v0, 0x26

    invoke-static {v4, v4}, Landroid/view/View;->resolveSize(II)I

    move-result v7

    add-int/2addr v7, v6

    int-to-char v7, v7

    invoke-static {v4, v4}, Landroid/view/View;->resolveSize(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x33

    invoke-static {v0, v7, v8}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v3, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    :try_start_5
    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v3, 0x2ebe83bb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v7

    add-int/lit8 v7, v7, -0xb

    const/4 v8, 0x0

    invoke-static {v4, v8, v8}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v9

    cmpl-float v8, v9, v8

    sub-int/2addr v6, v8

    int-to-char v6, v6

    const-string v8, ""

    invoke-static {v8, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x32

    invoke-static {v7, v6, v2}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-string v6, "getMediationNetwork"

    invoke-virtual {v2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v6, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    :try_start_6
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_8

    .line 61
    array-length v0, p1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 62
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->toString:Ljava/lang/String;

    .line 63
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1vSDK;->hashCode:Ljava/lang/String;

    .line 64
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1vSDK;->copydefault:Ljava/lang/String;

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    throw p2

    :cond_4
    throw p1

    :catchall_1
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    throw p2

    :cond_5
    throw p1

    :catchall_2
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_6

    throw p2

    :cond_6
    throw p1

    :catchall_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    throw p2

    :cond_7
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 68
    const-string p2, "OneLinkValidator: reflection init failed"

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :cond_8
    :goto_4
    iput-boolean v4, p0, Lcom/appsflyer/internal/AFf1vSDK;->equals:Z

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

.method protected final areAllFieldsValid()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final copy()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->equals:Z

    return v0
.end method

.method protected final copydefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->toString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->hashCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->toString:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrencyIso4217Code()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method protected final getRevenue(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->copy:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1vSDK;->toString:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1vSDK;->hashCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventParameterName:Ljava/util/UUID;

    filled-new-array {v0, v1, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x6cdaee79

    const v2, -0x6cdaee79

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1jSDK;

    return-object p1
.end method

.method public final getRevenue()V
    .locals 4

    .line 93
    invoke-super {p0}, Lcom/appsflyer/internal/AFe1eSDK;->getRevenue()V

    .line 95
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFf1vSDK$AFa1vSDK;

    if-eqz v0, :cond_5

    .line 2236
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1lSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;

    .line 1101
    sget-object v2, Lcom/appsflyer/internal/AFe1uSDK;->getRevenue:Lcom/appsflyer/internal/AFe1uSDK;

    if-ne v1, v2, :cond_0

    .line 3108
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFe1xSDK;

    if-eqz v1, :cond_0

    .line 4108
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFe1xSDK;

    .line 1102
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1xSDK;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFf1vSDK$AFa1vSDK;->getCurrencyIso4217Code(Ljava/util/Map;)V

    return-void

    .line 1104
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1lSDK;->component1()Ljava/lang/Throwable;

    move-result-object v1

    .line 1105
    instance-of v2, v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    const-string v3, "Can\'t get OneLink data"

    if-eqz v2, :cond_3

    .line 1108
    check-cast v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    invoke-virtual {v1}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->getRawResponse()Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1xSDK;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1109
    const-string v1, "Can\'t parse one link data"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFf1vSDK$AFa1vSDK;->getMediationNetwork(Ljava/lang/String;)V

    return-void

    .line 5120
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1vSDK;->copydefault:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v3, v1

    .line 5121
    :cond_2
    invoke-interface {v0, v3}, Lcom/appsflyer/internal/AFf1vSDK$AFa1vSDK;->getMediationNetwork(Ljava/lang/String;)V

    return-void

    .line 6120
    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1vSDK;->copydefault:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v3, v1

    .line 6121
    :cond_4
    invoke-interface {v0, v3}, Lcom/appsflyer/internal/AFf1vSDK$AFa1vSDK;->getMediationNetwork(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
