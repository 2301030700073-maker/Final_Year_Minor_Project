.class public final Lcom/appsflyer/internal/AFi1nSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFi1kSDK;


# instance fields
.field private getMonetizationNetwork:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRevenue(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFb1tSDK;->k_(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_2

    const-string p0, ""

    .line 68
    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFi1nSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method

.method private static getRevenue(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 75
    const-string v2, "android-app://"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getCurrencyIso4217Code(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1032
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1036
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    return-object v0
.end method

.method public final getMediationNetwork(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1nSDK;->getMonetizationNetwork:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/appsflyer/internal/AFi1nSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 50
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 54
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFi1nSDK;->getRevenue(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getMonetizationNetwork(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1nSDK;->getMonetizationNetwork:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFi1nSDK;->getRevenue(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFi1nSDK;->getMonetizationNetwork:Ljava/lang/String;

    :cond_1
    return-void
.end method
