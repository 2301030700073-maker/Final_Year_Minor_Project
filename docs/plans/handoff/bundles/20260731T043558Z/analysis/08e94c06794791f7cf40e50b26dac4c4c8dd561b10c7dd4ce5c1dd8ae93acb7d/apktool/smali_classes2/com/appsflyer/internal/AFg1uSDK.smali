.class public final Lcom/appsflyer/internal/AFg1uSDK;
.super Lcom/appsflyer/internal/AFh1jSDK;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "Register"

    invoke-direct {p0, v2, v0, v1}, Lcom/appsflyer/internal/AFh1jSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;
    .locals 1

    .line 24
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->copy:Lcom/appsflyer/internal/AFe1mSDK;

    return-object v0
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
