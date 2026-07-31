.class public final Lcom/appsflyer/internal/AFh1eSDK;
.super Lcom/appsflyer/internal/AFh1jSDK;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFh1jSDK;-><init>()V

    return-void
.end method


# virtual methods
.method public final component3()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;
    .locals 2

    .line 1191
    iget v0, p0, Lcom/appsflyer/internal/AFh1jSDK;->component1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    return-object v0

    .line 13
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->copydefault:Lcom/appsflyer/internal/AFe1mSDK;

    return-object v0
.end method
