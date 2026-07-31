.class public final Lcom/appsflyer/internal/AFe1cSDK;
.super Lcom/appsflyer/internal/AFe1eSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1eSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final areAllFieldsValid:Ljava/lang/String;

.field private final copy:Lcom/appsflyer/internal/AFk1sSDK;

.field private final toString:Lcom/appsflyer/internal/AFc1pSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFk1sSDK;)V
    .locals 4

    .line 30
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1mSDK;

    const/4 v2, 0x0

    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/appsflyer/internal/AFe1mSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1mSDK;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/appsflyer/internal/AFe1eSDK;-><init>(Lcom/appsflyer/internal/AFe1mSDK;[Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/appsflyer/internal/AFe1cSDK;->areAllFieldsValid:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/appsflyer/internal/AFe1cSDK;->copy:Lcom/appsflyer/internal/AFk1sSDK;

    .line 33
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1cSDK;->toString:Lcom/appsflyer/internal/AFc1pSDK;

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final areAllFieldsValid()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final copydefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final getRevenue(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1jSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component1:Lcom/appsflyer/internal/AFd1lSDK;

    .line 1045
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1cSDK;->toString:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1pSDK;->component4()Ljava/lang/String;

    move-result-object v0

    .line 1046
    invoke-static {v0}, Lcom/appsflyer/internal/AFk1xSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1cSDK;->areAllFieldsValid:Ljava/lang/String;

    goto :goto_0

    .line 1049
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1cSDK;->areAllFieldsValid:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1050
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "advertising_id"

    .line 1051
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;

    move-result-object p1

    return-object p1
.end method

.method public final getRevenue()V
    .locals 4

    .line 58
    invoke-super {p0}, Lcom/appsflyer/internal/AFe1eSDK;->getRevenue()V

    .line 2108
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFe1xSDK;

    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1xSDK;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "call to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFe1cSDK;->areAllFieldsValid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cross promotion redirection success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFe1cSDK;->areAllFieldsValid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 69
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFe1xSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1cSDK;->copy:Lcom/appsflyer/internal/AFk1sSDK;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 3027
    iput-object v0, v1, Lcom/appsflyer/internal/AFk1sSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1cSDK;->copy:Lcom/appsflyer/internal/AFk1sSDK;

    .line 4031
    iget-object v1, v0, Lcom/appsflyer/internal/AFk1sSDK;->AFAdRevenueData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 4033
    :try_start_0
    iget-object v2, v0, Lcom/appsflyer/internal/AFk1sSDK;->getMonetizationNetwork:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4034
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v0, v0, Lcom/appsflyer/internal/AFk1sSDK;->getMonetizationNetwork:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4038
    const-string v1, "Failed to open cross promotion url, does OS have browser installed?"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cross promotion impressions success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1cSDK;->areAllFieldsValid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method
