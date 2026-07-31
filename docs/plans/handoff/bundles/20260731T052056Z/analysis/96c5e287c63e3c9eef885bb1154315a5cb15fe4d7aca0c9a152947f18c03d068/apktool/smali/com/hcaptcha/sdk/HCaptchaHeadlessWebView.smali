.class public final Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/hcaptcha/sdk/IHCaptchaVerifier;


# instance fields
.field public final listener:Lcom/hcaptcha/sdk/HCaptcha$1;

.field public shouldExecuteOnLoad:Z

.field public shouldResetOnLoad:Z

.field public final webViewHelper:Lcoil3/ImageLoader$Builder;

.field public webViewLoaded:Z


# direct methods
.method public constructor <init>(Lorg/wikipedia/activity/BaseActivity;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaInternalConfig;Lcom/hcaptcha/sdk/HCaptcha$1;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    iput-object p4, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 10
    .line 11
    new-instance v7, Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 12
    .line 13
    invoke-direct {v7, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const p4, 0x7f090768

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7, p4}, Landroid/view/View;->setId(I)V

    .line 20
    .line 21
    .line 22
    const/16 p4, 0x8

    .line 23
    .line 24
    invoke-virtual {v7, p4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    if-nez p4, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    invoke-virtual {p4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    invoke-virtual {p4}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    check-cast p4, Landroid/view/ViewGroup;

    .line 46
    .line 47
    invoke-virtual {p4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    new-instance v1, Lcoil3/ImageLoader$Builder;

    .line 51
    .line 52
    new-instance v2, Landroid/os/Handler;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    invoke-direct {v2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    .line 60
    .line 61
    move-object v6, p0

    .line 62
    move-object v3, p1

    .line 63
    move-object v4, p2

    .line 64
    move-object v5, p3

    .line 65
    invoke-direct/range {v1 .. v7}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaInternalConfig;Lcom/hcaptcha/sdk/IHCaptchaVerifier;Lcom/hcaptcha/sdk/HCaptchaWebView;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, v6, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    const-string p0, "internalConfig is marked non-null but is null"

    .line 72
    .line 73
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_2
    const-string p0, "activity is marked non-null but is null"

    .line 78
    .line 79
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method


# virtual methods
.method public final onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 4
    .line 5
    iget-object v1, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRetryPredicate()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/hcaptcha/sdk/HCaptchaConfig$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$r8$lambda$G1CA-Kw-lWwIW6y9x0rXF896dWY(Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaException;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcoil3/ImageLoader$Builder;->resetAndExecute()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/HCaptcha$1;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-string p0, "exception is marked non-null but is null"

    .line 35
    .line 36
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onLoaded()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->webViewLoaded:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->shouldResetOnLoad:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->shouldResetOnLoad:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->reset$1()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->shouldExecuteOnLoad:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->shouldExecuteOnLoad:Z

    .line 20
    .line 21
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->resetAndExecute()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final onOpen()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptcha$1;->onOpen()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/HCaptcha$1;->onSuccess(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final reset$1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->webViewLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->reset()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->shouldResetOnLoad:Z

    .line 32
    .line 33
    return-void
.end method

.method public final startVerification(Lorg/wikipedia/activity/BaseActivity;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->webViewLoaded:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->resetAndExecute()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/hcaptcha/sdk/HCaptchaHeadlessWebView;->shouldExecuteOnLoad:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const-string p0, "activity is marked non-null but is null"

    .line 18
    .line 19
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
