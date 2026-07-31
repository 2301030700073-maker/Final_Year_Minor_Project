.class public final Lcom/appsflyer/internal/AFa1gSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFa1gSDK$AFa1vSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B+\u0008\u0002\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\n\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\n\u0010\rR\"\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFa1gSDK;",
        "",
        "",
        "",
        "p0",
        "Lcom/appsflyer/internal/AFa1hSDK;",
        "p1",
        "<init>",
        "(Ljava/util/Map;Lcom/appsflyer/internal/AFa1hSDK;)V",
        "",
        "getCurrencyIso4217Code",
        "(Ljava/lang/String;)Z",
        "",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "AFAdRevenueData",
        "Ljava/util/Map;",
        "getMediationNetwork",
        "Lcom/appsflyer/internal/AFa1hSDK;",
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
.field public static final AFa1vSDK:Lcom/appsflyer/internal/AFa1gSDK$AFa1vSDK;


# instance fields
.field final AFAdRevenueData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final getMediationNetwork:Lcom/appsflyer/internal/AFa1hSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65351
    new-instance v0, Lcom/appsflyer/internal/AFa1gSDK$AFa1vSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFa1gSDK$AFa1vSDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/AFa1gSDK;->AFa1vSDK:Lcom/appsflyer/internal/AFa1gSDK$AFa1vSDK;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Lcom/appsflyer/internal/AFa1hSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFa1hSDK;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 15
    iput-object p2, p0, Lcom/appsflyer/internal/AFa1gSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1hSDK;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/appsflyer/internal/AFa1hSDK;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFa1gSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/internal/AFa1hSDK;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lcom/appsflyer/internal/AFa1hSDK;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65352
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFa1gSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/internal/AFa1hSDK;)V

    return-void
.end method

.method public static final AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)Lcom/appsflyer/internal/AFa1gSDK;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 65354
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1gSDK$AFa1vSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)Lcom/appsflyer/internal/AFa1gSDK;

    move-result-object p0

    return-object p0
.end method

.method public static final getMonetizationNetwork(Lcom/appsflyer/internal/AFa1hSDK;)Lcom/appsflyer/internal/AFa1gSDK;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 65353
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1gSDK$AFa1vSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFa1hSDK;)Lcom/appsflyer/internal/AFa1gSDK;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1gSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFa1hSDK;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/appsflyer/internal/AFa1hSDK;->getMonetizationNetwork(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final getCurrencyIso4217Code(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1gSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
