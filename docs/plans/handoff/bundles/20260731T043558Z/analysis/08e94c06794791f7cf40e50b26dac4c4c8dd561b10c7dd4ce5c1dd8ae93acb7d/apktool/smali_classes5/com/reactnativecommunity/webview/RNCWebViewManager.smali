.class public Lcom/reactnativecommunity/webview/RNCWebViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "RNCWebViewManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNCWebViewManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCWebView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/reactnativecommunity/webview/RNCWebViewWrapper;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNCWebViewManagerInterface<",
        "Lcom/reactnativecommunity/webview/RNCWebViewWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/reactnativecommunity/webview/RNCWebViewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 43
    new-instance v0, Lcom/facebook/react/viewmanagers/RNCWebViewManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/RNCWebViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    .line 44
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;-><init>(Z)V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p2, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 0

    .line 505
    invoke-virtual {p2}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    new-instance p2, Lcom/reactnativecommunity/webview/RNCWebViewClient;

    invoke-direct {p2}, Lcom/reactnativecommunity/webview/RNCWebViewClient;-><init>()V

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public bridge synthetic clearCache(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->clearCache(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public clearCache(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    .line 494
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->clearCache(Z)V

    return-void
.end method

.method public bridge synthetic clearFormData(Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->clearFormData(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public clearFormData(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 0

    .line 489
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->clearFormData()V

    return-void
.end method

.method public bridge synthetic clearHistory(Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->clearHistory(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public clearHistory(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 0

    .line 499
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->clearHistory()V

    return-void
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->getCommandsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/reactnativecommunity/webview/RNCWebViewWrapper;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 510
    invoke-super {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 512
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 515
    :cond_0
    const-string v1, "onLoadingStart"

    const-string v2, "registrationName"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topLoadingStart"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v1, "onLoadingFinish"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topLoadingFinish"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v1, "onLoadingError"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topLoadingError"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v1, "onMessage"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topMessage"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v1, "onLoadingProgress"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topLoadingProgress"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v1, "onShouldStartLoadWithRequest"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topShouldStartLoadWithRequest"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v1, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {v1}, Lcom/facebook/react/views/scroll/ScrollEventType;->getJSEventName(Lcom/facebook/react/views/scroll/ScrollEventType;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "onScroll"

    invoke-static {v2, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v1, "onHttpError"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topHttpError"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v1, "onRenderProcessGone"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topRenderProcessGone"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v1, "onCustomMenuSelection"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topCustomMenuSelection"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v1, "onOpenWindow"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "topOpenWindow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "RNCWebView"

    return-object v0
.end method

.method public bridge synthetic goBack(Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->goBack(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public goBack(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 0

    .line 431
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->goBack()V

    return-void
.end method

.method public bridge synthetic goForward(Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->goForward(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public goForward(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 0

    .line 436
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->goForward()V

    return-void
.end method

.method public bridge synthetic injectJavaScript(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->injectJavaScript(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public injectJavaScript(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 0

    .line 451
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic loadUrl(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->loadUrl(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 0

    .line 484
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->onAfterUpdateTransaction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 1

    .line 544
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 545
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->onAfterUpdateTransaction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->onDropViewInstance(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->onDropViewInstance(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    .line 551
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onDropViewInstance(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic postMessage(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->postMessage(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public postMessage(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 3

    const-string v0, "(function () {var event;var data = "

    .line 462
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 463
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ";try {event = new MessageEvent(\'message\', data);} catch (e) {event = document.createEvent(\'MessageEvent\');event.initMessageEvent(\'message\', true, true, data.data, data.origin, data.lastEventId, data.source);}document.dispatchEvent(event);})();"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 464
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 478
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->receiveCommand(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 539
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewGroupManager;->receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic reload(Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->reload(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public reload(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 0

    .line 441
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->reload()V

    return-void
.end method

.method public bridge synthetic requestFocus(Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->requestFocus(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public requestFocus(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 0

    .line 456
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->requestFocus()Z

    return-void
.end method

.method public bridge synthetic setAllowFileAccess(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowFileAccess"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowFileAccess(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowFileAccess(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowFileAccess"
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAllowFileAccess(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setAllowFileAccessFromFileURLs(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowFileAccessFromFileURLs"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowFileAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowFileAccessFromFileURLs"
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAllowFileAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setAllowUniversalAccessFromFileURLs(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowUniversalAccessFromFileURLs"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowUniversalAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowUniversalAccessFromFileURLs"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAllowUniversalAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setAllowingReadAccessToURL(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowingReadAccessToURL(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setAllowingReadAccessToURL(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setAllowsAirPlayForMediaPlayback(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowsAirPlayForMediaPlayback(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowsAirPlayForMediaPlayback(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setAllowsBackForwardNavigationGestures(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowsBackForwardNavigationGestures(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowsBackForwardNavigationGestures(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setAllowsFullscreenVideo(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowsFullscreenVideo"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowsFullscreenVideo(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowsFullscreenVideo(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowsFullscreenVideo"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAllowsFullscreenVideo(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setAllowsInlineMediaPlayback(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowsInlineMediaPlayback(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowsInlineMediaPlayback(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setAllowsLinkPreview(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowsLinkPreview(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowsLinkPreview(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setAllowsPictureInPictureMediaPlayback(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowsPictureInPictureMediaPlayback(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowsPictureInPictureMediaPlayback(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setAllowsProtectedMedia(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowsProtectedMedia"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAllowsProtectedMedia(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowsProtectedMedia(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowsProtectedMedia"
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAllowsProtectedMedia(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setAndroidLayerType(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "androidLayerType"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAndroidLayerType(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setAndroidLayerType(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "androidLayerType"
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAndroidLayerType(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setApplicationNameForUserAgent(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "applicationNameForUserAgent"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setApplicationNameForUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setApplicationNameForUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "applicationNameForUserAgent"
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setApplicationNameForUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAutoManageStatusBarEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAutoManageStatusBarEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAutoManageStatusBarEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setAutomaticallyAdjustContentInsets(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setAutomaticallyAdjustContentInsets(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAutomaticallyAdjustContentInsets(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setBasicAuthCredential(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "basicAuthCredential"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "basicAuthCredential"
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public bridge synthetic setBounces(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setBounces(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setBounces(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setCacheEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cacheEnabled"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setCacheEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setCacheEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cacheEnabled"
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setCacheEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setCacheMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cacheMode"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setCacheMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setCacheMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cacheMode"
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setCacheMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setContentInset(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setContentInset(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setContentInset(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setContentInsetAdjustmentBehavior(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setContentInsetAdjustmentBehavior(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setContentInsetAdjustmentBehavior(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setContentMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setContentMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setContentMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setDataDetectorTypes(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setDataDetectorTypes(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setDataDetectorTypes(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setDecelerationRate(Landroid/view/View;D)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setDecelerationRate(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;D)V

    return-void
.end method

.method public setDecelerationRate(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;D)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setDirectionalLockEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setDirectionalLockEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setDirectionalLockEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setDomStorageEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "domStorageEnabled"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setDomStorageEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setDomStorageEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "domStorageEnabled"
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setDomStorageEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setDownloadingMessage(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "downloadingMessage"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setDownloadingMessage(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadingMessage(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "downloadingMessage"
    .end annotation

    .line 135
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setDownloadingMessage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setEnableApplePay(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setEnableApplePay(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setEnableApplePay(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setForceDarkOn(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "forceDarkOn"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setForceDarkOn(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setForceDarkOn(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "forceDarkOn"
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setForceDarkOn(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setFraudulentWebsiteWarningEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setFraudulentWebsiteWarningEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setFraudulentWebsiteWarningEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setGeolocationEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "geolocationEnabled"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setGeolocationEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setGeolocationEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "geolocationEnabled"
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setGeolocationEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setHasOnFileDownload(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setHasOnFileDownload(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setHasOnFileDownload(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setHasOnOpenWindowEvent(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hasOnOpenWindowEvent"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setHasOnOpenWindowEvent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setHasOnOpenWindowEvent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hasOnOpenWindowEvent"
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setHasOnOpenWindowEvent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setHasOnScroll(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hasOnScroll"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setHasOnScroll(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setHasOnScroll(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hasOnScroll"
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setHasOnScroll(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setHideKeyboardAccessoryView(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setHideKeyboardAccessoryView(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setHideKeyboardAccessoryView(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setIncognito(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "incognito"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setIncognito(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setIncognito(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "incognito"
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setIncognito(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setInjectedJavaScript(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScript"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setInjectedJavaScript(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setInjectedJavaScript(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScript"
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setInjectedJavaScript(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setInjectedJavaScriptBeforeContentLoaded(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptBeforeContentLoaded"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setInjectedJavaScriptBeforeContentLoaded(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setInjectedJavaScriptBeforeContentLoaded(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptBeforeContentLoaded"
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setInjectedJavaScriptBeforeContentLoaded(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptBeforeContentLoadedForMainFrameOnly"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptBeforeContentLoadedForMainFrameOnly"
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setInjectedJavaScriptForMainFrameOnly(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptForMainFrameOnly"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setInjectedJavaScriptForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setInjectedJavaScriptForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptForMainFrameOnly"
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setInjectedJavaScriptForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setInjectedJavaScriptObject(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptObject"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setInjectedJavaScriptObject(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setInjectedJavaScriptObject(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptObject"
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setInjectedJavaScriptObject(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setJavaScriptCanOpenWindowsAutomatically(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "javaScriptCanOpenWindowsAutomatically"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setJavaScriptCanOpenWindowsAutomatically(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "javaScriptCanOpenWindowsAutomatically"
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setJavaScriptCanOpenWindowsAutomatically(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setJavaScriptEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "javaScriptEnabled"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setJavaScriptEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setJavaScriptEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "javaScriptEnabled"
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setJavaScriptEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setKeyboardDisplayRequiresUserAction(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setKeyboardDisplayRequiresUserAction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setKeyboardDisplayRequiresUserAction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setLackPermissionToDownloadMessage(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "lackPermissionToDownloadMessage"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setLackPermissionToDownloadMessage(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setLackPermissionToDownloadMessage(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "lackPermissionToDownloadMessage"
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setLackPermissionToDownloadMessage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setLimitsNavigationsToAppBoundDomains(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setLimitsNavigationsToAppBoundDomains(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setLimitsNavigationsToAppBoundDomains(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setMediaCapturePermissionGrantType(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setMediaCapturePermissionGrantType(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setMediaCapturePermissionGrantType(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setMediaPlaybackRequiresUserAction(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mediaPlaybackRequiresUserAction"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setMediaPlaybackRequiresUserAction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setMediaPlaybackRequiresUserAction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mediaPlaybackRequiresUserAction"
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMediaPlaybackRequiresUserAction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setMenuItems(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "menuItems"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setMenuItems(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setMenuItems(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "menuItems"
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMenuCustomItems(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic setMessagingEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "messagingEnabled"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setMessagingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setMessagingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "messagingEnabled"
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMessagingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setMessagingModuleName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "messagingModuleName"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setMessagingModuleName(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setMessagingModuleName(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "messagingModuleName"
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMessagingModuleName(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setMinimumFontSize(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minimumFontSize"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setMinimumFontSize(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V

    return-void
.end method

.method public setMinimumFontSize(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minimumFontSize"
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMinimumFontSize(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V

    return-void
.end method

.method public bridge synthetic setMixedContentMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mixedContentMode"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setMixedContentMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setMixedContentMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mixedContentMode"
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMixedContentMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNestedScrollEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nestedScrollEnabled"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setNestedScrollEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setNestedScrollEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nestedScrollEnabled"
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setNestedScrollEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setNewSource(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "newSource"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setNewSource(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setNewSource(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "newSource"
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSource(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public bridge synthetic setOverScrollMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overScrollMode"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setOverScrollMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setOverScrollMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overScrollMode"
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setOverScrollMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPagingEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setPagingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setPagingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setPullToRefreshEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setPullToRefreshEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setPullToRefreshEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setRefreshControlLightMode(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setRefreshControlLightMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setRefreshControlLightMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setSaveFormDataDisabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "saveFormDataDisabled"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setSaveFormDataDisabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setSaveFormDataDisabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "saveFormDataDisabled"
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSaveFormDataDisabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setScalesPageToFit(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scalesPageToFit"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setScalesPageToFit(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setScalesPageToFit(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scalesPageToFit"
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setScalesPageToFit(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setScrollEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setScrollEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setScrollEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setSetBuiltInZoomControls(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "setBuiltInZoomControls"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setSetBuiltInZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setSetBuiltInZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "setBuiltInZoomControls"
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSetBuiltInZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setSetDisplayZoomControls(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "setDisplayZoomControls"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setSetDisplayZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setSetDisplayZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "setDisplayZoomControls"
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSetDisplayZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setSetSupportMultipleWindows(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "setSupportMultipleWindows"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setSetSupportMultipleWindows(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setSetSupportMultipleWindows(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "setSupportMultipleWindows"
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSetSupportMultipleWindows(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setSharedCookiesEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setSharedCookiesEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setSharedCookiesEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setShowsHorizontalScrollIndicator(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "showsHorizontalScrollIndicator"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setShowsHorizontalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setShowsHorizontalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "showsHorizontalScrollIndicator"
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setShowsHorizontalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setShowsVerticalScrollIndicator(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "showsVerticalScrollIndicator"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setShowsVerticalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setShowsVerticalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "showsVerticalScrollIndicator"
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setShowsVerticalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setSuppressMenuItems(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "suppressMenuItems "
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setSuppressMenuItems(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setSuppressMenuItems(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "suppressMenuItems "
    .end annotation

    return-void
.end method

.method public bridge synthetic setTextInteractionEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setTextInteractionEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setTextInteractionEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setTextZoom(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textZoom"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setTextZoom(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V

    return-void
.end method

.method public setTextZoom(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textZoom"
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setTextZoom(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V

    return-void
.end method

.method public bridge synthetic setThirdPartyCookiesEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "thirdPartyCookiesEnabled"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setThirdPartyCookiesEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setThirdPartyCookiesEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "thirdPartyCookiesEnabled"
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setThirdPartyCookiesEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic setUseSharedProcessPool(Landroid/view/View;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setUseSharedProcessPool(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setUseSharedProcessPool(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setUserAgent(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "userAgent"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "userAgent"
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setWebviewDebuggingEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "webviewDebuggingEnabled"
    .end annotation

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->setWebviewDebuggingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setWebviewDebuggingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "webviewDebuggingEnabled"
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setWebviewDebuggingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public bridge synthetic stopLoading(Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->stopLoading(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public stopLoading(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 0

    .line 446
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->stopLoading()V

    return-void
.end method
