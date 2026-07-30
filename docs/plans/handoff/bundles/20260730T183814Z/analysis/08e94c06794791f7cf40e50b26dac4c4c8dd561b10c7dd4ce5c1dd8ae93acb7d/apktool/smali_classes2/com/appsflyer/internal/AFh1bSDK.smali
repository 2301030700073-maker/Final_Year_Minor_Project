.class public final Lcom/appsflyer/internal/AFh1bSDK;
.super Lcom/appsflyer/internal/AFh1fSDK;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    const-string v0, "af_purchase"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/internal/AFh1fSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;
    .locals 1

    .line 13
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->AFLogger:Lcom/appsflyer/internal/AFe1mSDK;

    return-object v0
.end method
