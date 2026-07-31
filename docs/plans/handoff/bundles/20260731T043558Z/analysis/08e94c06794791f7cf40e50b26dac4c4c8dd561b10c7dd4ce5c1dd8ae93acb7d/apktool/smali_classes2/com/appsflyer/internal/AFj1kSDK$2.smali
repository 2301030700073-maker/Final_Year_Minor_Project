.class final Lcom/appsflyer/internal/AFj1kSDK$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFj1kSDK;->I_(Ljava/lang/String;J)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroid/content/Intent;",
        "K_",
        "()Landroid/content/Intent;"
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
.field private synthetic $AFAdRevenueData:J

.field private synthetic $getMonetizationNetwork:Ljava/lang/String;

.field private synthetic getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1kSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFj1kSDK;Ljava/lang/String;J)V
    .locals 0

    .line 65354
    iput-object p1, p0, Lcom/appsflyer/internal/AFj1kSDK$2;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1kSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFj1kSDK$2;->$getMonetizationNetwork:Ljava/lang/String;

    iput-wide p3, p0, Lcom/appsflyer/internal/AFj1kSDK$2;->$AFAdRevenueData:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final K_()Landroid/content/Intent;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1kSDK$2;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1kSDK;

    .line 1016
    iget-object v0, v0, Lcom/appsflyer/internal/AFj1kSDK;->getCurrencyIso4217Code:Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1kSDK$2;->$getMonetizationNetwork:Ljava/lang/String;

    iget-wide v2, p0, Lcom/appsflyer/internal/AFj1kSDK$2;->$AFAdRevenueData:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFj1kSDK$2;->K_()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
