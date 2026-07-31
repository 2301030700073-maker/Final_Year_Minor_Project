.class final Lcom/appsflyer/internal/AFe1ySDK$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFe1ySDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFc1oSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "AFAdRevenueData",
        "()Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private synthetic getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1ySDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 0

    .line 65354
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1ySDK$3;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1ySDK;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1ySDK$3;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1ySDK;

    .line 101
    invoke-static {v0}, Lcom/appsflyer/internal/AFe1ySDK;->getRevenue(Lcom/appsflyer/internal/AFe1ySDK;)Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v0

    .line 2298
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue:Lcom/appsflyer/internal/AFc1gSDK;

    .line 3025
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 1165
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1ySDK$3;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1ySDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFe1ySDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFe1ySDK;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFe1ySDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1ySDK$3;->AFAdRevenueData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
