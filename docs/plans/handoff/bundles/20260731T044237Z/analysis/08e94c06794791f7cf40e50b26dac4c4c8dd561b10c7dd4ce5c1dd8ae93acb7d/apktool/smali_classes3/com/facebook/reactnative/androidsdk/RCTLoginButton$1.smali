.class Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;
.super Lcom/facebook/AccessTokenTracker;
.source "RCTLoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;


# direct methods
.method constructor <init>(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    if-nez p2, :cond_0

    .line 63
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 64
    const-string p2, "type"

    const-string v0, "logoutFinished"

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {p2}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/bridge/ReactContext;

    .line 66
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-static {v0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->-$$Nest$fgetmEventDispatcher(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;

    invoke-static {p2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result p2

    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {v2}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getId()I

    move-result v2

    invoke-direct {v1, p2, v2, p1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method
