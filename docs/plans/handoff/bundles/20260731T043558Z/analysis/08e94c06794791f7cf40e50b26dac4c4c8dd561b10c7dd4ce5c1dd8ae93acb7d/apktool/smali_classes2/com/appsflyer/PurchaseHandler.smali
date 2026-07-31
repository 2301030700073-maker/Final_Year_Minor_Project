.class public final Lcom/appsflyer/PurchaseHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;
    }
.end annotation


# instance fields
.field public final AFAdRevenueData:Lcom/appsflyer/internal/AFc1bSDK;

.field public final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1nSDK;

.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFc1pSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/appsflyer/PurchaseHandler;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1bSDK;

    .line 30
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/PurchaseHandler;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    .line 31
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/PurchaseHandler;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1nSDK;

    return-void
.end method


# virtual methods
.method public final varargs getMonetizationNetwork(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/appsflyer/PurchaseHandler;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-static {p1, p3, v0}, Lcom/appsflyer/internal/AFj1bSDK;->AFAdRevenueData(Ljava/util/Map;[Ljava/lang/String;Lcom/appsflyer/internal/AFc1pSDK;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 46
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Request Data"

    invoke-direct {p3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return p1
.end method
