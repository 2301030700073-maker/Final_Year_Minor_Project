.class public final Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$3;
.super Lorg/wikipedia/dataclient/okhttp/OkHttpWebViewClient;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/activity/SingleWebViewActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/activity/SingleWebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$3;->this$0:Lorg/wikipedia/activity/SingleWebViewActivity;

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
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$3;->this$0:Lorg/wikipedia/activity/SingleWebViewActivity;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->blankLinkHandler:Lorg/wikipedia/activity/SingleWebViewActivity$SingleWebViewLinkHandler;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "blankLinkHandler"

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public final getModel()Lorg/wikipedia/page/PageViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$3;->this$0:Lorg/wikipedia/activity/SingleWebViewActivity;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->blankModel:Lorg/wikipedia/page/PageViewModel;

    .line 4
    .line 5
    return-object p0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$3;->this$0:Lorg/wikipedia/activity/SingleWebViewActivity;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 7
    .line 8
    const-string v1, "binding"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, v0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->currentUrl:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string v0, "(function() {let style = document.createElement(\'style\');style.innerHTML = \'.header-chrome { visibility: hidden; margin-top: 0px; height: 0px; } #page-secondary-actions { display: none; } .mw-footer { padding-bottom: 0px; } .page-actions-menu { display: none; } .minerva__tab-container { display: none; } .banner-container { display: none; }\';document.head.appendChild(style);})();"

    .line 27
    .line 28
    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->isWebForm:Z

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-boolean p1, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->wasFormSubmitted:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Landroid/widget/Button;

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v2

    .line 59
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 60
    .line 61
    const-string p2, ""

    .line 62
    .line 63
    :cond_3
    invoke-static {p2}, Lorg/wikipedia/activity/SingleWebViewActivity;->setCookies(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$3;->this$0:Lorg/wikipedia/activity/SingleWebViewActivity;

    .line 5
    .line 6
    iget-object p1, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, "binding"

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
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
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "POST"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$3;->this$0:Lorg/wikipedia/activity/SingleWebViewActivity;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Lorg/wikipedia/activity/SingleWebViewActivity;->wasFormSubmitted:Z

    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/OkHttpWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$3;->this$0:Lorg/wikipedia/activity/SingleWebViewActivity;

    .line 2
    .line 3
    iget-boolean p1, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->isWebForm:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, p1

    .line 17
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->targetUrl:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    const-string p1, ""

    .line 47
    .line 48
    :cond_1
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 49
    .line 50
    const-string v1, "en"

    .line 51
    .line 52
    invoke-static {v1}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, " "

    .line 57
    .line 58
    const-string v3, "_"

    .line 59
    .line 60
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    const/4 p0, 0x1

    .line 81
    return p0

    .line 82
    :cond_3
    const-string p0, "targetUrl"

    .line 83
    .line 84
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_4
    return v0
.end method
