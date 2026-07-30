.class public final Lcom/appsflyer/internal/AFa1gSDK$AFa1vSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1gSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AFa1vSDK"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFa1gSDK$AFa1vSDK;",
        "",
        "<init>",
        "()V",
        "Lcom/appsflyer/internal/AFh1jSDK;",
        "p0",
        "Lcom/appsflyer/internal/AFa1gSDK;",
        "getMediationNetwork",
        "(Lcom/appsflyer/internal/AFh1jSDK;)Lcom/appsflyer/internal/AFa1gSDK;",
        "Lcom/appsflyer/internal/AFa1hSDK;",
        "AFAdRevenueData",
        "(Lcom/appsflyer/internal/AFa1hSDK;)Lcom/appsflyer/internal/AFa1gSDK;"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1gSDK$AFa1vSDK;-><init>()V

    return-void
.end method

.method public static AFAdRevenueData(Lcom/appsflyer/internal/AFa1hSDK;)Lcom/appsflyer/internal/AFa1gSDK;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/appsflyer/internal/AFa1gSDK;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/appsflyer/internal/AFa1gSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/internal/AFa1hSDK;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)Lcom/appsflyer/internal/AFa1gSDK;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/appsflyer/internal/AFa1gSDK;

    .line 1172
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 26
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2, v0}, Lcom/appsflyer/internal/AFa1gSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/internal/AFa1hSDK;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
