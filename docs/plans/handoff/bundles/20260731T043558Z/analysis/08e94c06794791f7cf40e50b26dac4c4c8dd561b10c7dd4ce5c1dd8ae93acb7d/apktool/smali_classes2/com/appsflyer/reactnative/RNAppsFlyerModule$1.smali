.class Lcom/appsflyer/reactnative/RNAppsFlyerModule$1;
.super Ljava/lang/Object;
.source "RNAppsFlyerModule.java"

# interfaces
.implements Lcom/appsflyer/deeplink/DeepLinkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/reactnative/RNAppsFlyerModule;->registerDeepLinkListener()Lcom/appsflyer/deeplink/DeepLinkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/reactnative/RNAppsFlyerModule;


# direct methods
.method constructor <init>(Lcom/appsflyer/reactnative/RNAppsFlyerModule;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/appsflyer/reactnative/RNAppsFlyerModule$1;->this$0:Lcom/appsflyer/reactnative/RNAppsFlyerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeepLinking(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    .locals 9

    .line 200
    const-string/jumbo v0, "onDeepLinking"

    const-string/jumbo v1, "status"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 201
    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getError()Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    move-result-object v3

    .line 203
    :try_start_0
    const-string v4, "deepLinkStatus"

    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string/jumbo v4, "success"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    .line 207
    const-string v5, "isDeferred"

    const-string v6, "data"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    move-result-object v7

    sget-object v8, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    if-ne v7, v8, :cond_0

    .line 208
    const-string p1, "failure"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    invoke-virtual {v3}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    move-result-object v1

    sget-object v3, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    if-ne v1, v3, :cond_1

    .line 212
    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getDeepLink()Lcom/appsflyer/deeplink/DeepLink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DeepLink;->getClickEvent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getDeepLink()Lcom/appsflyer/deeplink/DeepLink;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLink;->isDeferred()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 215
    :cond_1
    const-string p1, "deep link not found"

    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 223
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/appsflyer/reactnative/RNAppsFlyerModule$1;->this$0:Lcom/appsflyer/reactnative/RNAppsFlyerModule;

    invoke-static {p1}, Lcom/appsflyer/reactnative/RNAppsFlyerModule;->-$$Nest$fgetreactContext(Lcom/appsflyer/reactnative/RNAppsFlyerModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/appsflyer/reactnative/RNAppsFlyerModule;->-$$Nest$msendEvent(Lcom/appsflyer/reactnative/RNAppsFlyerModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
