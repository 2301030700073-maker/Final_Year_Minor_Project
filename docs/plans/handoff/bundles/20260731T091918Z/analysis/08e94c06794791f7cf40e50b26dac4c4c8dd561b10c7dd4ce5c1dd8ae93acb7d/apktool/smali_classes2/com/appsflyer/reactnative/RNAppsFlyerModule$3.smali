.class Lcom/appsflyer/reactnative/RNAppsFlyerModule$3;
.super Ljava/lang/Object;
.source "RNAppsFlyerModule.java"

# interfaces
.implements Lcom/appsflyer/attribution/AppsFlyerRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/reactnative/RNAppsFlyerModule;->logEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/reactnative/RNAppsFlyerModule;

.field final synthetic val$errorCallback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$successCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/appsflyer/reactnative/RNAppsFlyerModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/appsflyer/reactnative/RNAppsFlyerModule$3;->this$0:Lcom/appsflyer/reactnative/RNAppsFlyerModule;

    iput-object p2, p0, Lcom/appsflyer/reactnative/RNAppsFlyerModule$3;->val$successCallback:Lcom/facebook/react/bridge/Callback;

    iput-object p3, p0, Lcom/appsflyer/reactnative/RNAppsFlyerModule$3;->val$errorCallback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 333
    iget-object p1, p0, Lcom/appsflyer/reactnative/RNAppsFlyerModule$3;->val$errorCallback:Lcom/facebook/react/bridge/Callback;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/appsflyer/reactnative/RNAppsFlyerModule$3;->val$successCallback:Lcom/facebook/react/bridge/Callback;

    const-string v1, "Success"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
