.class final Lcom/appsflyer/internal/AFd1ySDK$6;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFd1ySDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/appsflyer/internal/AFd1vSDK;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFd1vSDK;",
        "AFAdRevenueData",
        "()Lcom/appsflyer/internal/AFd1vSDK;"
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
.field private synthetic getMonetizationNetwork:Lcom/appsflyer/internal/AFd1ySDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFd1ySDK;)V
    .locals 0

    .line 65354
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK$6;->getMonetizationNetwork:Lcom/appsflyer/internal/AFd1ySDK;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData()Lcom/appsflyer/internal/AFd1vSDK;
    .locals 2

    .line 55
    new-instance v0, Lcom/appsflyer/internal/AFd1vSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK$6;->getMonetizationNetwork:Lcom/appsflyer/internal/AFd1ySDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFd1vSDK;-><init>(Lcom/appsflyer/internal/AFd1zSDK;)V

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK$6;->AFAdRevenueData()Lcom/appsflyer/internal/AFd1vSDK;

    move-result-object v0

    return-object v0
.end method
