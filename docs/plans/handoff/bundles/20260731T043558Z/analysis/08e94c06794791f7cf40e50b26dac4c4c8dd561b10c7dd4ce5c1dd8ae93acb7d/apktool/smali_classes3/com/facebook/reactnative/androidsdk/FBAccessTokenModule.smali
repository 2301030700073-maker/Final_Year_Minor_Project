.class public Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FBAccessTokenModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "FBAccessToken"
.end annotation


# static fields
.field public static final CHANGE_EVENT_NAME:Ljava/lang/String; = "fbsdk.accessTokenDidChange"

.field public static final NAME:Ljava/lang/String; = "FBAccessToken"


# instance fields
.field private accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static bridge synthetic -$$Nest$fgetmReactContext(Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    iget-object p0, p0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 51
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public getCurrentAccessToken(Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 105
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/reactnative/androidsdk/Utility;->accessTokenToReactMap(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 105
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "FBAccessToken"

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->initialize()V

    .line 61
    new-instance v0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$1;

    invoke-direct {v0, p0}, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$1;-><init>(Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;)V

    iput-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->invalidate()V

    .line 93
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    :cond_0
    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    .line 83
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    :cond_0
    return-void
.end method

.method public refreshCurrentAccessTokenAsync(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 139
    new-instance v0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$2;-><init>(Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-static {v0}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public setCurrentAccessToken(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 118
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildAccessToken(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/AccessToken;

    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    return-void
.end method
