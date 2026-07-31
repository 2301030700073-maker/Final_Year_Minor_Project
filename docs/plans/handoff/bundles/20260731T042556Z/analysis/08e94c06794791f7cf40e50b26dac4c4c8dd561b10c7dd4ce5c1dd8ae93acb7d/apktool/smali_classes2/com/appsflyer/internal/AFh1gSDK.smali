.class public final Lcom/appsflyer/internal/AFh1gSDK;
.super Lcom/appsflyer/internal/AFh1jSDK;
.source ""


# instance fields
.field public final toString:Lcom/appsflyer/internal/AFe1mSDK;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/appsflyer/internal/AFh1jSDK;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/appsflyer/internal/AFh1gSDK;->toString:Lcom/appsflyer/internal/AFe1mSDK;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFe1mSDK;)V
    .locals 2

    const/4 v0, 0x0

    .line 21
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1, v1}, Lcom/appsflyer/internal/AFh1jSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1204
    iput-object p3, p0, Lcom/appsflyer/internal/AFh1jSDK;->getRevenue:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork([B)Lcom/appsflyer/internal/AFh1jSDK;

    .line 24
    iput-object p4, p0, Lcom/appsflyer/internal/AFh1gSDK;->toString:Lcom/appsflyer/internal/AFe1mSDK;

    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1gSDK;->toString:Lcom/appsflyer/internal/AFe1mSDK;

    if-eqz v0, :cond_0

    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

    return-object v0
.end method
