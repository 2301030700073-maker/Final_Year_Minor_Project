.class public final Lcom/appsflyer/internal/AFd1qSDK;
.super Lcom/appsflyer/internal/AFc1aSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFd1qSDK$AFa1vSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0013\u0010\u000b\u001a\u00020\u0005*\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u000b\u001a\u00020\r8\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00058WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFd1qSDK;",
        "Lcom/appsflyer/internal/AFc1aSDK;",
        "",
        "p0",
        "",
        "",
        "p1",
        "",
        "p2",
        "<init>",
        "([BLjava/util/Map;I)V",
        "getCurrencyIso4217Code",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Lcom/appsflyer/internal/AFd1gSDK;",
        "getRevenue",
        "Lcom/appsflyer/internal/AFd1gSDK;",
        "()Lcom/appsflyer/internal/AFd1gSDK;",
        "getMediationNetwork",
        "()Ljava/lang/String;",
        "getMonetizationNetwork",
        "AFa1vSDK"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AFa1vSDK:Lcom/appsflyer/internal/AFd1qSDK$AFa1vSDK;

.field public static getMonetizationNetwork:Ljava/lang/String;


# instance fields
.field private final getRevenue:Lcom/appsflyer/internal/AFd1gSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appsflyer/internal/AFd1qSDK$AFa1vSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFd1qSDK$AFa1vSDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/AFd1qSDK;->AFa1vSDK:Lcom/appsflyer/internal/AFd1qSDK$AFa1vSDK;

    .line 28
    const-string v0, "https://%smonitorsdk.%s/remote-debug/exception-manager"

    sput-object v0, Lcom/appsflyer/internal/AFd1qSDK;->getMonetizationNetwork:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/internal/AFc1aSDK;-><init>([BLjava/util/Map;I)V

    .line 21
    sget-object p1, Lcom/appsflyer/internal/AFd1gSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1gSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1qSDK;->getRevenue:Lcom/appsflyer/internal/AFd1gSDK;

    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code()Lcom/appsflyer/internal/AFd1gSDK;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1qSDK;->getRevenue:Lcom/appsflyer/internal/AFd1gSDK;

    return-object v0
.end method

.method public final getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/appsflyer/internal/AFd1rSDK;->getRevenue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getMediationNetwork()Ljava/lang/String;
    .locals 3

    .line 19
    sget-object v0, Lcom/appsflyer/internal/AFd1qSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 1056
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
