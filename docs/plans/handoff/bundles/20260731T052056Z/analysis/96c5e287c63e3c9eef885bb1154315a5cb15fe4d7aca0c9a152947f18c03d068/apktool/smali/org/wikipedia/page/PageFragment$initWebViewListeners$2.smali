.class public final Lorg/wikipedia/page/PageFragment$initWebViewListeners$2;
.super Lorg/wikipedia/dataclient/okhttp/OkHttpWebViewClient;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$initWebViewListeners$2;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getLinkHandler()Lorg/wikipedia/page/LinkHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$initWebViewListeners$2;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getLinkHandler()Lorg/wikipedia/page/LinkHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getModel()Lorg/wikipedia/page/PageViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$initWebViewListeners$2;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 4
    .line 5
    return-object p0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$initWebViewListeners$2;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 8
    .line 9
    iget-object p2, p1, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, v1, p1, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p2, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 20
    .line 21
    invoke-interface {p0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "(function() { return (typeof pcs !== \'undefined\'); })();"

    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p0, "bridge"

    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    throw p0
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v0, "page/mobile-html/"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :try_start_0
    const-string v1, "+"

    .line 56
    .line 57
    const-string v2, "%2B"

    .line 58
    .line 59
    invoke-static {p3, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "UTF-8"

    .line 64
    .line 65
    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    move-object p3, v1

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p0

    .line 75
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catch_1
    const-string v1, "URL decoding failed. String was: "

    .line 80
    .line 81
    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-direct {p1, v0, p2, p3}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$initWebViewListeners$2;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->onPageLoadError(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
