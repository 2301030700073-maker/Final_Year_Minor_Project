.class public final Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;
.super Landroid/webkit/WebViewClient;
.source "AppleWebviewClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;",
        "Landroid/webkit/WebViewClient;",
        "redirectUri",
        "",
        "javascriptToInject",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "shouldInterceptRequest",
        "Landroid/webkit/WebResourceResponse;",
        "view",
        "Landroid/webkit/WebView;",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "app_myPublicRelease"
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
.field private final javascriptToInject:Ljava/lang/String;

.field private final redirectUri:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$JxxlJHhMf71TEWySDahiIszP4BY(Landroid/webkit/WebView;Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;->shouldInterceptRequest$lambda$1$lambda$0(Landroid/webkit/WebView;Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "redirectUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javascriptToInject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;->redirectUri:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;->javascriptToInject:Ljava/lang/String;

    return-void
.end method

.method private static final shouldInterceptRequest$lambda$1$lambda$0(Landroid/webkit/WebView;Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 24
    iget-object p1, p1, Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;->javascriptToInject:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 18
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;->redirectUri:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "getMainExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v1, Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/WebView;Lcom/allproperty/android/consumer/modules/applesignin/AppleWebviewClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
