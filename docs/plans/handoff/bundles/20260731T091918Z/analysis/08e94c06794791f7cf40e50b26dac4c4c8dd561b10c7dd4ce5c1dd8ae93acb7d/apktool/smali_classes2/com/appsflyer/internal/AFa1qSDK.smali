.class public final Lcom/appsflyer/internal/AFa1qSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFe1vSDK;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/AFe1vSDK<",
        "Lcom/appsflyer/internal/AFa1mSDK;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic getMonetizationNetwork(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1009
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1011
    const-string p1, "found"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1012
    const-string v1, "is_second_ping"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz p1, :cond_1

    .line 1016
    const-string p1, "click_event"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1018
    invoke-static {p1}, Lcom/appsflyer/deeplink/DeepLink;->getMonetizationNetwork(Lorg/json/JSONObject;)Lcom/appsflyer/deeplink/DeepLink;

    move-result-object v2

    .line 2140
    iget-object p1, v2, Lcom/appsflyer/deeplink/DeepLink;->getCurrencyIso4217Code:Lorg/json/JSONObject;

    const-string v0, "is_deferred"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1021
    :cond_1
    new-instance p1, Lcom/appsflyer/internal/AFa1mSDK;

    invoke-direct {p1, v1, v2}, Lcom/appsflyer/internal/AFa1mSDK;-><init>(ZLcom/appsflyer/deeplink/DeepLink;)V

    return-object p1

    .line 1023
    :cond_2
    :goto_0
    new-instance p1, Lcom/appsflyer/internal/AFa1mSDK;

    const/4 v0, 0x3

    invoke-direct {p1, v1, v2, v0, v2}, Lcom/appsflyer/internal/AFa1mSDK;-><init>(ZLcom/appsflyer/deeplink/DeepLink;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
