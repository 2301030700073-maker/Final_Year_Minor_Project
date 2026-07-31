.class public Lio/sentry/react/RNSentryModule;
.super Lio/sentry/react/NativeRNSentrySpec;
.source "RNSentryModule.java"


# instance fields
.field private final impl:Lio/sentry/react/RNSentryModuleImpl;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lio/sentry/react/NativeRNSentrySpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 16
    new-instance v0, Lio/sentry/react/RNSentryModuleImpl;

    invoke-direct {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    return-void
.end method


# virtual methods
.method public addBreadcrumb(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->addBreadcrumb(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->addListener(Ljava/lang/String;)V

    return-void
.end method

.method public captureEnvelope(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1, p2, p3}, Lio/sentry/react/RNSentryModuleImpl;->captureEnvelope(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public captureReplay(ZLcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl;->captureReplay(ZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public captureScreenshot(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->captureScreenshot(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 1

    .line 97
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0}, Lio/sentry/react/RNSentryModuleImpl;->clearBreadcrumbs()V

    return-void
.end method

.method public closeNativeSdk(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->closeNativeSdk(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public crash()V
    .locals 1

    .line 47
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0}, Lio/sentry/react/RNSentryModuleImpl;->crash()V

    return-void
.end method

.method public crashedLastRun(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->crashedLastRun(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public disableNativeFramesTracking()V
    .locals 1

    .line 127
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0}, Lio/sentry/react/RNSentryModuleImpl;->disableNativeFramesTracking()V

    return-void
.end method

.method public enableNativeFramesTracking()V
    .locals 1

    .line 122
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0}, Lio/sentry/react/RNSentryModuleImpl;->enableNativeFramesTracking()V

    return-void
.end method

.method public fetchModules(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->fetchModules(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public fetchNativeAppStart(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->fetchNativeAppStart(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public fetchNativeDeviceContexts(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->fetchNativeDeviceContexts(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public fetchNativeFrames(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->fetchNativeFrames(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public fetchNativePackageName()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0}, Lio/sentry/react/RNSentryModuleImpl;->fetchNativePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchNativeRelease(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->fetchNativeRelease(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public fetchNativeSdkInfo(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->fetchNativeSdkInfo(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public fetchNativeStackFramesBy(Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public fetchViewHierarchy(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->fetchViewHierarchy(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getCurrentReplayId()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0}, Lio/sentry/react/RNSentryModuleImpl;->getCurrentReplayId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataFromUri(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl;->getDataFromUri(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "RNSentry"

    return-object v0
.end method

.method public getNewScreenTimeToDisplay(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->getNewScreenTimeToDisplay(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public initNativeReactNavigationNewFrameTracking(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->initNativeReactNavigationNewFrameTracking(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public initNativeSdk(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl;->initNativeSdk(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public popTimeToDisplayFor(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl;->popTimeToDisplayFor(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public removeListeners(D)V
    .locals 1

    .line 32
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl;->removeListeners(D)V

    return-void
.end method

.method public setActiveSpanId(Ljava/lang/String;)Z
    .locals 1

    .line 193
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->setActiveSpanId(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setContext(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl;->setContext(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUser(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1, p2}, Lio/sentry/react/RNSentryModuleImpl;->setUser(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public startProfiling(Z)Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 142
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->startProfiling(Z)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method public stopProfiling()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/sentry/react/RNSentryModule;->impl:Lio/sentry/react/RNSentryModuleImpl;

    invoke-virtual {v0}, Lio/sentry/react/RNSentryModuleImpl;->stopProfiling()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
