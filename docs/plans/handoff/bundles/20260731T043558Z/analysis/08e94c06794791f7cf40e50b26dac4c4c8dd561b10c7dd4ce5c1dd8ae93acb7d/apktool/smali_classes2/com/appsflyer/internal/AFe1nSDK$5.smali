.class final Lcom/appsflyer/internal/AFe1nSDK$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFe1nSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFAdRevenueData:Lcom/appsflyer/internal/AFe1lSDK;

.field private synthetic getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1nSDK$5;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFe1nSDK$5;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1lSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1nSDK$5;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFe1nSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFe1sSDK;

    goto :goto_0

    :cond_0
    return-void
.end method
