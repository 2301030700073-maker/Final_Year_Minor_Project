.class public final Lcom/appsflyer/internal/AFg1dSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;
    }
.end annotation


# instance fields
.field private final AFAdRevenueData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;",
            ">;"
        }
    .end annotation
.end field

.field private getMediationNetwork:Ljava/lang/StringBuilder;

.field private final getRevenue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getRevenue:Ljava/lang/String;

    return-void
.end method

.method private getMediationNetwork()Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    return-object v0

    .line 163
    :cond_0
    new-instance v0, Lcom/appsflyer/internal/AFg1jSDK;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFg1jSDK;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getMonetizationNetwork()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    move-result-object v0

    .line 363
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    if-ne v0, v1, :cond_1

    .line 364
    sget-object v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->getRevenue:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    .line 4172
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 366
    :cond_1
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->getRevenue:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    if-ne v0, v1, :cond_2

    .line 367
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 369
    :cond_2
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    if-ne v0, v1, :cond_3

    .line 370
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    sget-object v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    .line 7172
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 372
    :cond_3
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->component4:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    if-ne v0, v1, :cond_4

    return-void

    .line 373
    :cond_4
    new-instance v0, Lcom/appsflyer/internal/AFg1jSDK;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFg1jSDK;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final AFAdRevenueData(Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFg1dSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Lcom/appsflyer/internal/AFg1jSDK;

    const-string p2, "Nesting problem: multiple top-level roots"

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1jSDK;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork()V

    .line 135
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method final getCurrencyIso4217Code()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    move-result-object v0

    .line 343
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    if-ne v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 345
    :cond_0
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    if-ne v0, v1, :cond_1

    .line 349
    :goto_0
    sget-object v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    .line 3172
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 346
    :cond_1
    new-instance v0, Lcom/appsflyer/internal/AFg1jSDK;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFg1jSDK;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getCurrencyIso4217Code(Ljava/lang/String;)V
    .locals 6

    .line 261
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 263
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/16 v4, 0x22

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    packed-switch v3, :pswitch_data_0

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 300
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "\\u%04x"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 302
    :cond_0
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 287
    :pswitch_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 279
    :pswitch_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 283
    :pswitch_2
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 275
    :cond_1
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 291
    :cond_2
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :cond_3
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_4
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMediationNetwork(Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFg1dSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFg1dSDK$AFa1uSDK;

    move-result-object v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance p1, Lcom/appsflyer/internal/AFg1jSDK;

    const-string p2, "Nesting problem"

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1jSDK;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 154
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final getMonetizationNetwork(Ljava/lang/Object;)Lcom/appsflyer/internal/AFg1dSDK;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1jSDK;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 189
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x141

    const v1, 0xdd83

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-char v1, v1

    const-string v3, ""

    invoke-static {v3}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x25

    invoke-static {v0, v1, v4}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    const v4, 0x4ed174ab

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/telephony/cdma/CdmaCellLocation;->convertQuartSecToDecDegrees(I)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    add-int/lit16 v1, v1, 0x141

    const/16 v5, 0x30

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    const v5, 0xdd85

    add-int/2addr v3, v5

    int-to-char v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    add-int/lit8 v5, v5, 0x23

    invoke-static {v1, v3, v5}, Lcom/appsflyer/internal/AFa1jSDK;->AFAdRevenueData(ICI)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v3, "getRevenue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lcom/appsflyer/internal/AFg1dSDK;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p1

    .line 193
    :cond_2
    instance-of v0, p1, Lcom/appsflyer/internal/AFg1gSDK;

    if-eqz v0, :cond_3

    .line 194
    check-cast p1, Lcom/appsflyer/internal/AFg1gSDK;

    invoke-virtual {p1, p0}, Lcom/appsflyer/internal/AFg1gSDK;->getRevenue(Lcom/appsflyer/internal/AFg1dSDK;)V

    return-object p0

    .line 198
    :cond_3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork()V

    if-eqz p1, :cond_6

    .line 200
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_6

    sget-object v0, Lcom/appsflyer/internal/AFg1gSDK;->getRevenue:Ljava/lang/Object;

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 205
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 209
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFg1dSDK;->getCurrencyIso4217Code(Ljava/lang/String;)V

    goto :goto_2

    .line 203
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    return-object p0

    .line 186
    :cond_7
    new-instance p1, Lcom/appsflyer/internal/AFg1jSDK;

    const-string v0, "Nesting problem"

    invoke-direct {p1, v0}, Lcom/appsflyer/internal/AFg1jSDK;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
