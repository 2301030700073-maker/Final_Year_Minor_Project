.class public final Lcom/appsflyer/internal/AFi1oSDK$AFa1tSDK;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFi1oSDK;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private synthetic AFAdRevenueData:Lcom/appsflyer/internal/AFi1oSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFi1oSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFi1oSDK$AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1oSDK;

    .line 20
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1oSDK$AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1oSDK;

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFi1oSDK;->z_(Lcom/appsflyer/internal/AFi1oSDK;Landroid/net/Network;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1oSDK$AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1oSDK;

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFi1oSDK;->z_(Lcom/appsflyer/internal/AFi1oSDK;Landroid/net/Network;)V

    .line 27
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1oSDK$AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1oSDK;

    const-string v0, "NetworkLost"

    invoke-static {p1, v0}, Lcom/appsflyer/internal/AFi1oSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFi1oSDK;Ljava/lang/String;)V

    return-void
.end method
