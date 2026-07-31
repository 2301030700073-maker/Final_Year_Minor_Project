.class public final Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;
.super Landroid/webkit/WebViewClient;
.source "IncognitoWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/propertyguru/webkit/IncognitoWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncognitoWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncognitoWebView.kt\ncom/propertyguru/webkit/IncognitoWebView$webClient$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000O\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J0\u0010\t\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J&\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001c\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0016J.\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000eH\u0017J&\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0017J \u0010\u001c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u001dH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "com/propertyguru/webkit/IncognitoWebView$webClient$1",
        "Landroid/webkit/WebViewClient;",
        "lastLoadFailed",
        "",
        "shouldOverrideUrlLoading",
        "view",
        "Landroid/webkit/WebView;",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "onReceivedHttpAuthRequest",
        "",
        "handler",
        "Landroid/webkit/HttpAuthHandler;",
        "host",
        "",
        "realm",
        "onPageStarted",
        "url",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onPageFinished",
        "onReceivedError",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "error",
        "Landroid/webkit/WebResourceError;",
        "handleError",
        "Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;",
        "propertyguru_react-native-webkit_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private lastLoadFailed:Z

.field final synthetic this$0:Lcom/propertyguru/webkit/IncognitoWebView;


# direct methods
.method constructor <init>(Lcom/propertyguru/webkit/IncognitoWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebView;

    .line 116
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private final handleError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;)V
    .locals 2

    .line 223
    sget-object v0, Lcom/propertyguru/webkit/IncognitoWebView;->Companion:Lcom/propertyguru/webkit/IncognitoWebView$Companion;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/propertyguru/webkit/IncognitoWebView$Companion;->access$baseEvent(Lcom/propertyguru/webkit/IncognitoWebView$Companion;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 225
    const-string v0, "WEB_RESOURCE_ERROR_GET_CODE"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "errorCode"

    invoke-virtual {p3}, Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;->getErrorCode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 230
    :cond_0
    const-string v0, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p3}, Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "errorDescription"

    invoke-interface {p2, v0, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    sget-object p3, Lcom/propertyguru/webkit/IncognitoWebView;->Companion:Lcom/propertyguru/webkit/IncognitoWebView$Companion;

    check-cast p1, Landroid/view/View;

    const-string v0, "onError"

    invoke-virtual {p3, p1, v0, p2}, Lcom/propertyguru/webkit/IncognitoWebView$Companion;->dispatchEvent(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 165
    iget-boolean v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->lastLoadFailed:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 171
    :cond_1
    sget-object v0, Lcom/propertyguru/webkit/IncognitoWebView;->Companion:Lcom/propertyguru/webkit/IncognitoWebView$Companion;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/propertyguru/webkit/IncognitoWebView;->Companion:Lcom/propertyguru/webkit/IncognitoWebView$Companion;

    invoke-static {v2, p1, p2}, Lcom/propertyguru/webkit/IncognitoWebView$Companion;->access$baseEvent(Lcom/propertyguru/webkit/IncognitoWebView$Companion;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "onLoadEnd"

    invoke-virtual {v0, v1, v3, v2}, Lcom/propertyguru/webkit/IncognitoWebView$Companion;->dispatchEvent(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 172
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebView;

    invoke-virtual {v0}, Lcom/propertyguru/webkit/IncognitoWebView;->getInjectedJavaScript()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 175
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->lastLoadFailed:Z

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/propertyguru/webkit/IncognitoWebView;->Companion:Lcom/propertyguru/webkit/IncognitoWebView$Companion;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/propertyguru/webkit/IncognitoWebView;->Companion:Lcom/propertyguru/webkit/IncognitoWebView$Companion;

    invoke-static {v2, p1, p2}, Lcom/propertyguru/webkit/IncognitoWebView$Companion;->access$baseEvent(Lcom/propertyguru/webkit/IncognitoWebView$Companion;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "onLoadStart"

    invoke-virtual {v0, v1, v3, v2}, Lcom/propertyguru/webkit/IncognitoWebView$Companion;->dispatchEvent(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->lastLoadFailed:Z

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebView;

    check-cast p1, Landroid/webkit/WebView;

    :cond_0
    if-eqz p4, :cond_1

    .line 187
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    if-nez p4, :cond_2

    :cond_1
    sget-object p4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 188
    :cond_2
    new-instance v0, Lcom/propertyguru/webkit/IncognitoWebView$DeprecatedWebResourceRequest;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p4}, Lcom/propertyguru/webkit/IncognitoWebView$DeprecatedWebResourceRequest;-><init>(Landroid/net/Uri;)V

    .line 189
    new-instance p4, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$error$1;

    invoke-direct {p4, p3, p2}, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$error$1;-><init>(Ljava/lang/String;I)V

    .line 198
    check-cast v0, Landroid/webkit/WebResourceRequest;

    check-cast p4, Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;

    invoke-direct {p0, p1, v0, p4}, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->handleError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->lastLoadFailed:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 213
    :cond_2
    new-instance v0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$compatibleError$1;

    invoke-direct {v0, p3}, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1$onReceivedError$compatibleError$1;-><init>(Landroid/webkit/WebResourceError;)V

    .line 219
    check-cast v0, Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;

    invoke-direct {p0, p1, p2, v0}, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->handleError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebView;

    .line 144
    invoke-static {v0}, Lcom/propertyguru/webkit/IncognitoWebView;->access$getAuthorization$p(Lcom/propertyguru/webkit/IncognitoWebView;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "basic"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    const-string v1, "username"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    const-string v2, "password"

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p2, v1, v0}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;->this$0:Lcom/propertyguru/webkit/IncognitoWebView;

    invoke-virtual {v0}, Lcom/propertyguru/webkit/IncognitoWebView;->getInterceptLinks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    .line 122
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    :cond_2
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 127
    const-string v0, "url"

    invoke-interface {p2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/propertyguru/webkit/IncognitoWebView;->Companion:Lcom/propertyguru/webkit/IncognitoWebView$Companion;

    check-cast p1, Landroid/view/View;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "onLinkPressed"

    invoke-virtual {v0, p1, v1, p2}, Lcom/propertyguru/webkit/IncognitoWebView$Companion;->dispatchEvent(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method
