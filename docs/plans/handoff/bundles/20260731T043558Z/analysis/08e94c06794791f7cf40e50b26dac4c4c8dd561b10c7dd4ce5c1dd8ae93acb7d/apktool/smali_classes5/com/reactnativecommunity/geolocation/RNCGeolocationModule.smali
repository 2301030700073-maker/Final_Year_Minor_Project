.class public Lcom/reactnativecommunity/geolocation/RNCGeolocationModule;
.super Lcom/reactnativecommunity/geolocation/NativeRNCGeolocationSpec;
.source "RNCGeolocationModule.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "RNCGeolocation"


# instance fields
.field mImpl:Lcom/reactnativecommunity/geolocation/GeolocationModule;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/geolocation/NativeRNCGeolocationSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 16
    new-instance v0, Lcom/reactnativecommunity/geolocation/GeolocationModule;

    invoke-direct {v0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/RNCGeolocationModule;->mImpl:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getCurrentPosition(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/RNCGeolocationModule;->mImpl:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getCurrentPosition(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "RNCGeolocation"

    return-object v0
.end method

.method public removeListeners(D)V
    .locals 0

    return-void
.end method

.method public requestAuthorization(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/RNCGeolocationModule;->mImpl:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->requestAuthorization(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setConfiguration(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/RNCGeolocationModule;->mImpl:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->setConfiguration(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public startObserving(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/RNCGeolocationModule;->mImpl:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->startObserving(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public stopObserving()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/RNCGeolocationModule;->mImpl:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    invoke-virtual {v0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->stopObserving()V

    return-void
.end method
