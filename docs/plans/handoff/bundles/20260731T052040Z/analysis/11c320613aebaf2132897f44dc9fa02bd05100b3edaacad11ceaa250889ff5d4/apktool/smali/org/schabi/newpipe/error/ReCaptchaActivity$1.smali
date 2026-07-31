.class public final Lorg/schabi/newpipe/error/ReCaptchaActivity$1;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/error/ReCaptchaActivity;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/error/ReCaptchaActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity$1;->this$0:Lorg/schabi/newpipe/error/ReCaptchaActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lorg/schabi/newpipe/error/ReCaptchaActivity;->$r8$clinit:I

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity$1;->this$0:Lorg/schabi/newpipe/error/ReCaptchaActivity;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->handleCookiesFromUrl(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 1
    sget p1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget p2, Lorg/schabi/newpipe/error/ReCaptchaActivity;->$r8$clinit:I

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity$1;->this$0:Lorg/schabi/newpipe/error/ReCaptchaActivity;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->handleCookiesFromUrl(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0
.end method
