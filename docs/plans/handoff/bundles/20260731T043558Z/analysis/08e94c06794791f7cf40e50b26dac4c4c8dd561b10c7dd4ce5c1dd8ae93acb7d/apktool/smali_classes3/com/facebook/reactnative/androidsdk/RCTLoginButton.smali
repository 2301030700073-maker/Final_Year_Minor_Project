.class public Lcom/facebook/reactnative/androidsdk/RCTLoginButton;
.super Lcom/facebook/login/widget/LoginButton;
.source "RCTLoginButton.java"


# instance fields
.field private final mCallbackManager:Lcom/facebook/CallbackManager;

.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEventDispatcher(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetToStringArray(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;Ljava/util/Set;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/CallbackManager;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;)V

    .line 50
    sget-object p1, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->NEVER_DISPLAY:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    invoke-virtual {p0, p1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->setToolTipMode(Lcom/facebook/login/widget/LoginButton$ToolTipMode;)V

    .line 51
    iput-object p2, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 52
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 53
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->init()V

    return-void
.end method

.method private setToStringArray(Ljava/util/Set;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 121
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 122
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 57
    new-instance v0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;

    invoke-direct {v0, p0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;-><init>(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)V

    .line 71
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v1, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;

    invoke-direct {v1, p0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;-><init>(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method
