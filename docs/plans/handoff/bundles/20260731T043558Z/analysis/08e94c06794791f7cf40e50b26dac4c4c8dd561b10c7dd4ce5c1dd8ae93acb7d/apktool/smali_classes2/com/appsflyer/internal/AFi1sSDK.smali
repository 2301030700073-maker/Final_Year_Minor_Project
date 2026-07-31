.class public final Lcom/appsflyer/internal/AFi1sSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final getCurrencyIso4217Code:Landroid/content/Context;

.field public getMediationNetwork:Lcom/appsflyer/internal/AFi1pSDK;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFi1sSDK;->getCurrencyIso4217Code:Landroid/content/Context;

    return-void
.end method
