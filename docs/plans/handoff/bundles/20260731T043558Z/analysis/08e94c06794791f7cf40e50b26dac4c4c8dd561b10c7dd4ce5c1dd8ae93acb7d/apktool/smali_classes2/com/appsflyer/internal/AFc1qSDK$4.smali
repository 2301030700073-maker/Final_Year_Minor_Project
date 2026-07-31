.class final Lcom/appsflyer/internal/AFc1qSDK$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFc1qSDK;-><init>(Lcom/appsflyer/internal/AFc1hSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroid/content/SharedPreferences;",
        "m_",
        "()Landroid/content/SharedPreferences;"
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
.field private synthetic getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1qSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFc1qSDK;)V
    .locals 0

    .line 65354
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1qSDK$4;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1qSDK;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1qSDK$4;->m_()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public final m_()Landroid/content/SharedPreferences;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1qSDK$4;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1qSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFc1qSDK;)Lcom/appsflyer/internal/AFc1hSDK;

    move-result-object v0

    .line 1025
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1hSDK;->getRevenue:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method
