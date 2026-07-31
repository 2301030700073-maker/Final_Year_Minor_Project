.class public final Lorg/wikipedia/bridge/CommunicationBridge;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

.field public final eventListeners:Ljava/util/HashMap;

.field public incomingMessageHandler:Landroid/os/Handler;

.field public isMetadataReady:Z

.field public isPcsReady:Z

.field public final pendingEvals:Ljava/util/HashMap;

.field public final pendingJSMessages:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->eventListeners:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-interface {p1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lorg/wikipedia/bridge/CommunicationBridge$CommunicatingChrome;

    .line 67
    .line 68
    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;-><init>(Lorg/wikipedia/bridge/CommunicationBridge;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "pcsClient"

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Landroid/os/Handler;

    .line 89
    .line 90
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Lorg/wikipedia/bridge/CommunicationBridge$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lorg/wikipedia/bridge/CommunicationBridge$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/bridge/CommunicationBridge;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge;->incomingMessageHandler:Landroid/os/Handler;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->eventListeners:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final cleanup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->eventListeners:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->incomingMessageHandler:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object v1, p0, Lorg/wikipedia/bridge/CommunicationBridge;->incomingMessageHandler:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object p0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 27
    .line 28
    invoke-interface {p0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Landroid/webkit/WebViewClient;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "pcsClient"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v0, "about:blank"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final execute(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "javascript:"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final flushMessages()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v3}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/util/Map$Entry;

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/webkit/ValueCallback;

    .line 80
    .line 81
    invoke-interface {v3}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_2
    return-void
.end method

.method public final resetHtml(Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 20
    .line 21
    invoke-interface {p0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getModel()Lorg/wikipedia/page/PageViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getShouldLoadAsMobileWeb()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-interface {p0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 48
    .line 49
    iget-object v0, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 50
    .line 51
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRestBasePath(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :try_start_0
    const-string v1, "UTF-8"

    .line 60
    .line 61
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const-string v1, "+"

    .line 69
    .line 70
    const-string v2, "%20"

    .line 71
    .line 72
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "page/mobile-html/"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catch_0
    move-exception p0

    .line 98
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method
