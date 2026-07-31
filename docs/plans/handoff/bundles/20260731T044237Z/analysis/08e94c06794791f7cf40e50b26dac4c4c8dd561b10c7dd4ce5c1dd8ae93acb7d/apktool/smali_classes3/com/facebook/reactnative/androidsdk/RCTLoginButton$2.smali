.class Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;
.super Ljava/lang/Object;
.source "RCTLoginButton.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;


# direct methods
.method constructor <init>(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 5

    .line 106
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 107
    const-string v1, "type"

    const-string v2, "loginFinished"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "error"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 110
    const-string v2, "isCancelled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    const-string v2, "result"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 112
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {v1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    .line 113
    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-static {v2}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->-$$Nest$fgetmEventDispatcher(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v2

    new-instance v3, Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;

    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v1

    iget-object v4, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {v4}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getId()I

    move-result v4

    invoke-direct {v3, v1, v4, v0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {v2, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 4

    .line 94
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 95
    const-string v1, "type"

    const-string v2, "loginFinished"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "error"

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 98
    const-string v1, "isCancelled"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string v1, "result"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 100
    iget-object p1, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {p1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    .line 101
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-static {v1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->-$$Nest$fgetmEventDispatcher(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    new-instance v2, Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;

    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result p1

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {v3}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getId()I

    move-result v3

    invoke-direct {v2, p1, v3, v0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 4

    .line 74
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 75
    const-string v1, "type"

    const-string v2, "loginFinished"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "error"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 78
    const-string v2, "isCancelled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    .line 82
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->-$$Nest$msetToStringArray(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->fromJavaArgs([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v2

    .line 79
    const-string v3, "grantedPermissions"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 83
    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    .line 86
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getRecentlyDeniedPermissions()Ljava/util/Set;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->-$$Nest$msetToStringArray(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->fromJavaArgs([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object p1

    .line 83
    const-string v2, "declinedPermissions"

    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 87
    const-string p1, "result"

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 88
    iget-object p1, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {p1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    .line 89
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-static {v1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->-$$Nest$fgetmEventDispatcher(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    new-instance v2, Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;

    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result p1

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {v3}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getId()I

    move-result v3

    invoke-direct {v2, p1, v3, v0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
