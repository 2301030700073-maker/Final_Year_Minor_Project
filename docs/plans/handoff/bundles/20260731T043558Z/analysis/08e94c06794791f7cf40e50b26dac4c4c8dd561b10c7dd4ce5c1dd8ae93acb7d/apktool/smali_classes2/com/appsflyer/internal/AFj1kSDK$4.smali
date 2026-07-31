.class final Lcom/appsflyer/internal/AFj1kSDK$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFj1kSDK;->H_(Ljava/lang/String;)Landroid/os/Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00018\u0000\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroid/os/Parcelable;",
        "T",
        "J_",
        "()Landroid/os/Parcelable;"
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
.field private synthetic $getCurrencyIso4217Code:Ljava/lang/String;

.field private synthetic getRevenue:Lcom/appsflyer/internal/AFj1kSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFj1kSDK;Ljava/lang/String;)V
    .locals 0

    .line 65354
    iput-object p1, p0, Lcom/appsflyer/internal/AFj1kSDK$4;->getRevenue:Lcom/appsflyer/internal/AFj1kSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFj1kSDK$4;->$getCurrencyIso4217Code:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final J_()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1kSDK$4;->getRevenue:Lcom/appsflyer/internal/AFj1kSDK;

    .line 1016
    iget-object v0, v0, Lcom/appsflyer/internal/AFj1kSDK;->getCurrencyIso4217Code:Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1kSDK$4;->$getCurrencyIso4217Code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFj1kSDK$4;->J_()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
