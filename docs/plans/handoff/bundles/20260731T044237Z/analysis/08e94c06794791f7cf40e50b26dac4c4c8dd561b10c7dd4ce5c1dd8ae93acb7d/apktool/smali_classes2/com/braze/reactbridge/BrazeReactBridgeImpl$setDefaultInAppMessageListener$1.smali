.class public final Lcom/braze/reactbridge/BrazeReactBridgeImpl$setDefaultInAppMessageListener$1;
.super Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageManagerListener;
.source "BrazeReactBridgeImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setDefaultInAppMessageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/braze/reactbridge/BrazeReactBridgeImpl$setDefaultInAppMessageListener$1",
        "Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageManagerListener;",
        "beforeInAppMessageDisplayed",
        "Lcom/braze/ui/inappmessage/InAppMessageOperation;",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "braze_react-native-sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braze/reactbridge/BrazeReactBridgeImpl;


# direct methods
.method constructor <init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$setDefaultInAppMessageListener$1;->this$0:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    .line 930
    invoke-direct {p0}, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeInAppMessageDisplayed(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/InAppMessageOperation;
    .locals 2

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v1, Lcom/facebook/react/bridge/WritableMap;

    .line 933
    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessage;->forJsonPut()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$setDefaultInAppMessageListener$1;->this$0:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    .line 935
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 936
    const-string v0, "inAppMessageReceived"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 937
    iget-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$setDefaultInAppMessageListener$1;->this$0:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-static {p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->access$getInAppMessageDisplayOperation$p(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)Lcom/braze/ui/inappmessage/InAppMessageOperation;

    move-result-object p1

    return-object p1
.end method
