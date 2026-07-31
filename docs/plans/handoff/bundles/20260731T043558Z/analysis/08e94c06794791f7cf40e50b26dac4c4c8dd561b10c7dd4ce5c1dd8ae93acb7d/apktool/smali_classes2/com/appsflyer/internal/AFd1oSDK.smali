.class public final Lcom/appsflyer/internal/AFd1oSDK;
.super Lcom/appsflyer/internal/AFc1aSDK;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B;\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0013\u0010\r\u001a\u00020\u0007*\u00020\u0007H\u0017\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0013\u001a\u00020\u000f8\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\r\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\r\u001a\u00020\u00178\u0017X\u0097D\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0018\u0010\u001aR\u0014\u0010\u0014\u001a\u00020\u00078WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u001b"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFd1oSDK;",
        "Lcom/appsflyer/internal/AFc1aSDK;",
        "Lcom/appsflyer/internal/AFc1pSDK;",
        "p0",
        "",
        "p1",
        "",
        "",
        "p2",
        "",
        "p3",
        "<init>",
        "(Lcom/appsflyer/internal/AFc1pSDK;[BLjava/util/Map;I)V",
        "getCurrencyIso4217Code",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Lcom/appsflyer/internal/AFd1gSDK;",
        "component4",
        "Lcom/appsflyer/internal/AFd1gSDK;",
        "()Lcom/appsflyer/internal/AFd1gSDK;",
        "getMediationNetwork",
        "getRevenue",
        "Lcom/appsflyer/internal/AFc1pSDK;",
        "AFAdRevenueData",
        "",
        "getMonetizationNetwork",
        "Z",
        "()Z",
        "()Ljava/lang/String;"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final component4:Lcom/appsflyer/internal/AFd1gSDK;

.field private final getMonetizationNetwork:Z

.field public getRevenue:Lcom/appsflyer/internal/AFc1pSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1pSDK;[B)V
    .locals 8

    .line 65354
    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;[BLjava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/internal/AFc1pSDK;[BLjava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1pSDK;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2, p3, p4}, Lcom/appsflyer/internal/AFc1aSDK;-><init>([BLjava/util/Map;I)V

    .line 13
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1oSDK;->getRevenue:Lcom/appsflyer/internal/AFc1pSDK;

    .line 24
    sget-object p1, Lcom/appsflyer/internal/AFd1gSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFd1gSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1oSDK;->component4:Lcom/appsflyer/internal/AFd1gSDK;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFc1pSDK;[BLjava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/16 p4, 0x7d0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;[BLjava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code()Lcom/appsflyer/internal/AFd1gSDK;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1oSDK;->component4:Lcom/appsflyer/internal/AFd1gSDK;

    return-object v0
.end method

.method public final getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[RD]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getMediationNetwork()Ljava/lang/String;
    .locals 4

    .line 22
    new-instance v0, Lcom/appsflyer/internal/AFj1eSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1oSDK;->getRevenue:Lcom/appsflyer/internal/AFc1pSDK;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/appsflyer/internal/AFj1eSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFk1ySDK;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1261
    iget-object v1, v0, Lcom/appsflyer/internal/AFj1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFk1ySDK;

    sget-object v2, Lcom/appsflyer/internal/AFj1eSDK;->component3:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFk1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFj1eSDK;->getRevenue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1oSDK;->getMonetizationNetwork:Z

    return v0
.end method
