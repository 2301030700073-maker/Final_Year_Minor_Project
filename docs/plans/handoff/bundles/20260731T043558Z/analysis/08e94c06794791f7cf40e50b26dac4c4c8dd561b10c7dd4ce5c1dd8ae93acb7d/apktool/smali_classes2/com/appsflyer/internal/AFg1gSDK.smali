.class public final Lcom/appsflyer/internal/AFg1gSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final getMonetizationNetwork:Ljava/lang/Double;

.field public static final getRevenue:Ljava/lang/Object;


# instance fields
.field private final getMediationNetwork:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    new-instance v0, Lcom/appsflyer/internal/AFg1gSDK$1;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1gSDK$1;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFg1gSDK;->getRevenue:Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFg1gSDK;->getMonetizationNetwork:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    :try_start_0
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v1, 0x38cf7d5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "getMediationNetwork"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x165

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-char v4, v4

    const-string v5, ""

    invoke-static {v5}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-static {v0, v4, v5}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v4, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    instance-of v0, p1, Lcom/appsflyer/internal/AFg1gSDK;

    if-eqz v0, :cond_1

    .line 172
    check-cast p1, Lcom/appsflyer/internal/AFg1gSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    return-void

    .line 174
    :cond_1
    const-string v0, "AFJsonObject"

    const/4 v1, 0x2

    :try_start_2
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x0

    aput-object p1, v4, v0

    sget-object p1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v6, -0x1595323f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int p1, p1, 0x11d

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    const v8, 0x8377

    sub-int/2addr v8, v7

    int-to-char v7, v8

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x23

    invoke-static {p1, v7, v8}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v1, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v1, v5

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    throw v0

    :cond_3
    throw p1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    .line 187
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v1, 0x3798f11c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x165

    const-string v2, ""

    const/16 v3, 0x30

    invoke-static {v2, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1

    int-to-char v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x24

    invoke-static {v0, v2, v3}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1gSDK;-><init>(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p1
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3

    .line 141
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1gSDK;-><init>()V

    .line 143
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 152
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static getMediationNetwork(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    if-nez p0, :cond_0

    .line 269
    sget-object p0, Lcom/appsflyer/internal/AFg1gSDK;->getRevenue:Ljava/lang/Object;

    return-object p0

    .line 271
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    add-int/lit16 v0, v0, 0x141

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    const v5, 0xdd84

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v3}, Landroid/telephony/cdma/CdmaCellLocation;->convertQuartSecToDecDegrees(I)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    rsub-int/lit8 v6, v6, 0x24

    invoke-static {v0, v4, v6}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    instance-of v0, p0, Lcom/appsflyer/internal/AFg1gSDK;

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    .line 275
    :try_start_0
    instance-of v4, p0, Lorg/json/JSONArray;

    if-eqz v4, :cond_4

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lcom/appsflyer/internal/AFg1jSDK; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    sget-object v8, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v9, -0x7f5bb10e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v8

    add-int/lit16 v8, v8, 0x141

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v10

    cmpl-float v1, v10, v1

    sub-int v1, v5, v1

    int-to-char v1, v1

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    const v11, 0x1000024

    add-int/2addr v10, v11

    invoke-static {v8, v1, v10}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    new-array v8, v0, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v8, Ljava/lang/reflect/Constructor;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3

    throw v4

    :cond_3
    throw v1

    .line 278
    :cond_4
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 279
    new-instance v1, Lcom/appsflyer/internal/AFg1gSDK;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/appsflyer/internal/AFg1gSDK;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/appsflyer/internal/AFg1jSDK; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 283
    :catch_0
    :cond_5
    sget-object v1, Lcom/appsflyer/internal/AFg1gSDK;->getRevenue:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object p0

    .line 287
    :cond_6
    :try_start_3
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_9

    .line 288
    check-cast p0, Ljava/util/Collection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v4, -0x55e796d5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v1, v8, v6

    rsub-int v1, v1, 0x142

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x24

    invoke-static {v1, v5, v2}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/Collection;

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    throw v0

    :cond_8
    throw p0

    .line 289
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v1, :cond_c

    .line 290
    :try_start_6
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v4, 0x1b0b7ea0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    rsub-int v1, v1, 0x140

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    sub-int/2addr v5, v2

    int-to-char v2, v5

    invoke-static {v3, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x24

    invoke-static {v1, v2, v5}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object p0

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b

    throw v0

    :cond_b
    throw p0

    .line 292
    :cond_c
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 293
    new-instance v0, Lcom/appsflyer/internal/AFg1gSDK;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFg1gSDK;-><init>(Ljava/util/Map;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    return-object v0

    .line 295
    :cond_d
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_e

    goto :goto_3

    .line 306
    :cond_e
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_f
    :goto_3
    return-object p0

    :catch_1
    :cond_10
    const/4 p0, 0x0

    :cond_11
    :goto_4
    return-object p0
.end method

.method static getMediationNetwork(Ljava/lang/Number;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 217
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 218
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v4, -0x68a067ee

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x11d

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    const v7, 0x8377

    sub-int/2addr v7, v6

    int-to-char v6, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x24

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const-string v6, "getMonetizationNetwork"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sget-object v5, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v3, Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    sget-object v2, Lcom/appsflyer/internal/AFg1gSDK;->getMonetizationNetwork:Ljava/lang/Double;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    const-string p0, "-0"

    return-object p0

    .line 225
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v4, v2

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    .line 227
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    throw v0

    :cond_3
    throw p0

    .line 214
    :cond_4
    new-instance p0, Lcom/appsflyer/internal/AFg1jSDK;

    const-string v0, "Number must be non-null"

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1jSDK;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getRevenue(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFg1gSDK;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    .line 381
    const-string v0, ""

    if-nez p2, :cond_0

    .line 382
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 385
    :cond_0
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 387
    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v3, -0x68a067ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    add-int/lit16 v2, v2, 0xed

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    const v5, 0x8377

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x24

    invoke-static {v2, v4, v0}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v2, "getMonetizationNetwork"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v2, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    throw p2

    :cond_2
    throw p1

    .line 389
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 1474
    :cond_4
    new-instance p1, Lcom/appsflyer/internal/AFg1jSDK;

    const-string p2, "Names must be non-null"

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1jSDK;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final getRevenue(Lcom/appsflyer/internal/AFg1dSDK;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    .line 2114
    sget-object v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    const-string/jumbo v1, "{"

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFg1dSDK;

    .line 846
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 847
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3332
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFg1dSDK;->getCurrencyIso4217Code()V

    .line 3333
    invoke-virtual {p1, v2}, Lcom/appsflyer/internal/AFg1dSDK;->getCurrencyIso4217Code(Ljava/lang/String;)V

    .line 847
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork(Ljava/lang/Object;)Lcom/appsflyer/internal/AFg1dSDK;

    goto :goto_0

    .line 3330
    :cond_0
    new-instance p1, Lcom/appsflyer/internal/AFg1jSDK;

    const-string v0, "Names must be non-null"

    invoke-direct {p1, v0}, Lcom/appsflyer/internal/AFg1jSDK;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4123
    :cond_1
    sget-object v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    const-string/jumbo v2, "}"

    invoke-virtual {p1, v0, v1, v2}, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFg1dSDK;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 815
    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/AFg1dSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1dSDK;-><init>()V

    .line 816
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFg1gSDK;->getRevenue(Lcom/appsflyer/internal/AFg1dSDK;)V

    .line 817
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/appsflyer/internal/AFg1jSDK; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
