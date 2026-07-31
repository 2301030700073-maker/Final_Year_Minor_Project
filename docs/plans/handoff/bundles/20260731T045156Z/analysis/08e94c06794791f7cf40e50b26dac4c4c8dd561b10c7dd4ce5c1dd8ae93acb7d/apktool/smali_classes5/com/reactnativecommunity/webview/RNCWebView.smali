.class public Lcom/reactnativecommunity/webview/RNCWebView;
.super Landroid/webkit/WebView;
.source "RNCWebView.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;,
        Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;
    }
.end annotation


# static fields
.field protected static final JAVASCRIPT_INTERFACE:Ljava/lang/String; = "ReactNativeWebView"


# instance fields
.field protected bridgeListener:Landroidx/webkit/WebViewCompat$WebMessageListener;

.field protected fallbackBridge:Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

.field protected hasScrollEvent:Z

.field protected injectedJS:Ljava/lang/String;

.field protected injectedJSBeforeContentLoaded:Ljava/lang/String;

.field protected injectedJavaScriptBeforeContentLoadedForMainFrameOnly:Z

.field protected injectedJavaScriptForMainFrameOnly:Z

.field protected injectedJavaScriptObject:Ljava/lang/String;

.field protected mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

.field private mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

.field protected mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

.field mWebChromeClient:Landroid/webkit/WebChromeClient;

.field protected menuCustomItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected messagingEnabled:Z

.field protected messagingModuleName:Ljava/lang/String;

.field protected nestedScrollEnabled:Z

.field protected progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

.field protected sendContentSizeChangeEvents:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->bridgeListener:Landroidx/webkit/WebViewCompat$WebMessageListener;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptForMainFrameOnly:Z

    .line 67
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptBeforeContentLoadedForMainFrameOnly:Z

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingEnabled:Z

    .line 76
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->sendContentSizeChangeEvents:Z

    .line 78
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->hasScrollEvent:Z

    .line 79
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->nestedScrollEnabled:Z

    .line 324
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptObject:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-class v0, Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    .line 91
    new-instance p1, Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    invoke-direct {p1}, Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;-><init>()V

    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    return-void
.end method

.method private injectJavascriptObject()V
    .locals 4

    .line 280
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(function(){\n    window.ReactNativeWebView = window.ReactNativeWebView || {};\n    window.ReactNativeWebView.injectedObjectJson = function () { return "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptObject:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "`"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptObject:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; };\n})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public callInjectedJavaScript()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(function() {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->injectJavascriptObject()V

    :cond_0
    return-void
.end method

.method public callInjectedJavaScriptBeforeContentLoaded()V
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJSBeforeContentLoaded:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(function() {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJSBeforeContentLoaded:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->injectJavascriptObject()V

    :cond_0
    return-void
.end method

.method protected cleanupCallbacksAndDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 418
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->destroy()V

    return-void
.end method

.method protected createRNCWebViewBridge(Lcom/reactnativecommunity/webview/RNCWebView;)V
    .locals 3

    .line 255
    const-string v0, "WEB_MESSAGE_LISTENER"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ReactNativeWebView"

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->bridgeListener:Landroidx/webkit/WebViewCompat$WebMessageListener;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebView$2;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/webview/RNCWebView$2;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;)V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->bridgeListener:Landroidx/webkit/WebViewCompat$WebMessageListener;

    .line 263
    const-string v0, "*"

    .line 266
    invoke-static {v0}, Lio/sentry/react/RNSentryPackage$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebView;->bridgeListener:Landroidx/webkit/WebViewCompat$WebMessageListener;

    .line 263
    invoke-static {p1, v1, v0, v2}, Landroidx/webkit/WebViewCompat;->addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->fallbackBridge:Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

    invoke-direct {v0, p0, p1}, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebView;)V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->fallbackBridge:Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

    .line 273
    invoke-virtual {p0, v0, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->injectJavascriptObject()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 426
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected dispatchDirectMessage(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 366
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 367
    const-string v1, "nativeEvent"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 368
    const-string p1, "messagingModuleName"

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingModuleName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    invoke-interface {p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;->onMessage(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method protected dispatchDirectShouldStartLoadWithRequest(Lcom/facebook/react/bridge/WritableMap;)Z
    .locals 2

    .line 374
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 375
    const-string v1, "nativeEvent"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 376
    const-string p1, "messagingModuleName"

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingModuleName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    invoke-interface {p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;->onShouldStartLoadWithRequest(Lcom/facebook/react/bridge/WritableMap;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    .line 412
    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result p1

    .line 413
    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method protected evaluateJavascriptWithFallback(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getMessagingEnabled()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingEnabled:Z

    return v0
.end method

.method public getRNCWebViewClient()Lcom/reactnativecommunity/webview/RNCWebViewClient;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    return-object v0
.end method

.method public getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 434
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method public getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public onHostDestroy()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->cleanupCallbacksAndDestroy()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 332
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 335
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebView$3;

    invoke-direct {v0, p0, p0, p2, p1}, Lcom/reactnativecommunity/webview/RNCWebView$3;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 355
    const-string v0, "data"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    if-eqz p1, :cond_1

    .line 358
    invoke-virtual {p0, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchDirectMessage(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 360
    :cond_1
    new-instance p1, Lcom/reactnativecommunity/webview/events/TopMessageEvent;

    invoke-static {p0}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v0

    invoke-direct {p1, v0, p2}, Lcom/reactnativecommunity/webview/events/TopMessageEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-virtual {p0, p0, p1}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    :goto_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 10

    .line 383
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 385
    iget-boolean p3, p0, Lcom/reactnativecommunity/webview/RNCWebView;->hasScrollEvent:Z

    if-nez p3, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    if-nez p3, :cond_1

    .line 390
    new-instance p3, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-direct {p3}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;-><init>()V

    iput-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 393
    :cond_1
    iget-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->onScrollChanged(II)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 395
    invoke-static {p0}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v0

    sget-object v1, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    int-to-float v2, p1

    int-to-float v3, p2

    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 399
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getXFlingVelocity()F

    move-result v4

    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 400
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getYFlingVelocity()F

    move-result v5

    .line 401
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->computeHorizontalScrollRange()I

    move-result v6

    .line 402
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->computeVerticalScrollRange()I

    move-result v7

    .line 403
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getWidth()I

    move-result v8

    .line 404
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getHeight()I

    move-result v9

    .line 394
    invoke-static/range {v0 .. v9}, Lcom/facebook/react/views/scroll/ScrollEvent;->obtain(ILcom/facebook/react/views/scroll/ScrollEventType;FFFFIIII)Lcom/facebook/react/views/scroll/ScrollEvent;

    move-result-object p1

    .line 406
    invoke-virtual {p0, p0, p1}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 141
    iget-boolean p3, p0, Lcom/reactnativecommunity/webview/RNCWebView;->sendContentSizeChangeEvents:Z

    if-eqz p3, :cond_0

    .line 142
    new-instance p3, Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;

    .line 145
    invoke-static {p0}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result p4

    invoke-direct {p3, p4, p1, p2}, Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;-><init>(III)V

    .line 142
    invoke-virtual {p0, p0, p3}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->nestedScrollEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->requestDisallowInterceptTouchEvent(Z)V

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;)V

    return-void
.end method

.method public setHasScrollEvent(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->hasScrollEvent:Z

    return-void
.end method

.method public setIgnoreErrFailedForThisURL(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->setIgnoreErrFailedForThisURL(Ljava/lang/String;)V

    return-void
.end method

.method public setInjectedJavaScriptObject(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptObject:Ljava/lang/String;

    .line 328
    invoke-direct {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->injectJavascriptObject()V

    return-void
.end method

.method public setMenuCustomItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->menuCustomItems:Ljava/util/List;

    return-void
.end method

.method public setMessagingEnabled(Z)V
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 295
    :cond_0
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingEnabled:Z

    if-eqz p1, :cond_1

    .line 298
    invoke-virtual {p0, p0}, Lcom/reactnativecommunity/webview/RNCWebView;->createRNCWebViewBridge(Lcom/reactnativecommunity/webview/RNCWebView;)V

    :cond_1
    return-void
.end method

.method public setNestedScrollEnabled(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->nestedScrollEnabled:Z

    return-void
.end method

.method public setSendContentSizeChangeEvents(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->sendContentSizeChangeEvents:Z

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .line 234
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 235
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 236
    instance-of v0, p1, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    if-eqz v0, :cond_0

    .line 237
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    invoke-virtual {p1, v0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;)V

    :cond_0
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 224
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 225
    instance-of v0, p1, Lcom/reactnativecommunity/webview/RNCWebViewClient;

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewClient;

    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    .line 227
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    invoke-virtual {p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;)V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->menuCustomItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 163
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebView$1;

    invoke-direct {v0, p0, p1}, Lcom/reactnativecommunity/webview/RNCWebView$1;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;Landroid/view/ActionMode$Callback;)V

    invoke-super {p0, v0, p2}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
