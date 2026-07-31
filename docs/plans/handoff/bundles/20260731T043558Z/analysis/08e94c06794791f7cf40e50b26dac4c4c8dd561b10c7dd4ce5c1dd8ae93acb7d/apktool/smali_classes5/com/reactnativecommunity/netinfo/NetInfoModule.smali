.class public Lcom/reactnativecommunity/netinfo/NetInfoModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "NetInfoModule.java"

# interfaces
.implements Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller$ConnectivityChangedCallback;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCNetInfo"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "RNCNetInfo"


# instance fields
.field private final mAmazonConnectivityChecker:Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;

.field private final mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

.field private numberOfListeners:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->numberOfListeners:I

    .line 30
    new-instance v0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-direct {v0, p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    .line 35
    new-instance v0, Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;

    invoke-direct {v0, p1, p0}, Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;-><init>(Landroid/content/Context;Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller$ConnectivityChangedCallback;)V

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mAmazonConnectivityChecker:Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 77
    iget p1, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->numberOfListeners:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->numberOfListeners:I

    .line 78
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    iput-boolean v0, p1, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->hasListener:Z

    return-void
.end method

.method public getCurrentState(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getCurrentState(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "RNCNetInfo"

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->register()V

    .line 41
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mAmazonConnectivityChecker:Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;->register()V

    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mAmazonConnectivityChecker:Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;->unregister()V

    .line 56
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->unregister()V

    .line 57
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->hasListener:Z

    return-void
.end method

.method public onAmazonFireDeviceConnectivityChanged(Z)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->setIsInternetReachableOverride(Z)V

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/NetInfoModule;->invalidate()V

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 83
    iget v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->numberOfListeners:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->numberOfListeners:I

    if-nez v0, :cond_0

    .line 85
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->hasListener:Z

    :cond_0
    return-void
.end method
