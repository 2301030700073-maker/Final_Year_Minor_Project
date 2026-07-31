.class final Lcom/appsflyer/internal/AFb1zSDK$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFb1zSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic getMonetizationNetwork:Lcom/appsflyer/internal/AFb1zSDK$AFa1uSDK;

.field private synthetic getRevenue:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/appsflyer/internal/AFb1zSDK$AFa1uSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1zSDK$1;->getRevenue:Ljava/lang/Class;

    iput-object p2, p0, Lcom/appsflyer/internal/AFb1zSDK$1;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1zSDK$AFa1uSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onDeferredAppLinkDataFetched"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 48
    aget-object p3, p3, p1

    if-eqz p3, :cond_2

    .line 56
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1zSDK$1;->getRevenue:Ljava/lang/Class;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 57
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1zSDK$1;->getRevenue:Ljava/lang/Class;

    const-string v1, "getArgumentBundle"

    new-array v2, p1, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 58
    const-class v1, Landroid/os/Bundle;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 61
    const-string p3, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 62
    const-string/jumbo v0, "target_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "extras"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    const-string v1, "deeplink_context"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    const-string/jumbo v1, "promo_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, p2

    move-object p3, p1

    move-object v0, p3

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1zSDK$1;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1zSDK$AFa1uSDK;

    if-eqz v1, :cond_3

    .line 73
    invoke-interface {v1, p3, v0, p1}, Lcom/appsflyer/internal/AFb1zSDK$AFa1uSDK;->getMediationNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1zSDK$1;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1zSDK$AFa1uSDK;

    if-eqz p1, :cond_3

    .line 78
    invoke-interface {p1, p2, p2, p2}, Lcom/appsflyer/internal/AFb1zSDK$AFa1uSDK;->getMediationNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object p2

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1zSDK$1;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1zSDK$AFa1uSDK;

    if-eqz p1, :cond_5

    .line 84
    const-string/jumbo p3, "onDeferredAppLinkDataFetched invocation failed"

    invoke-interface {p1, p3}, Lcom/appsflyer/internal/AFb1zSDK$AFa1uSDK;->AFAdRevenueData(Ljava/lang/String;)V

    :cond_5
    return-object p2
.end method
