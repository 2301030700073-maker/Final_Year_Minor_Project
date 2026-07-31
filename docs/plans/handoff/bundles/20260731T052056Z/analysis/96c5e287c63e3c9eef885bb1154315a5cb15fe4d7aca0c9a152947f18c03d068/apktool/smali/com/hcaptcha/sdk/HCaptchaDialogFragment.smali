.class public final Lcom/hcaptcha/sdk/HCaptchaDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/hcaptcha/sdk/IHCaptchaVerifier;


# static fields
.field public static sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;


# instance fields
.field public defaultDimAmount:F

.field public listener:Lcom/hcaptcha/sdk/HCaptcha$1;

.field public loadingContainer:Landroid/widget/LinearLayout;

.field public readyForInteraction:Z

.field public webViewHelper:Lcoil3/ImageLoader$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3f19999a    # 0.6f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->defaultDimAmount:F

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->readyForInteraction:Z

    .line 11
    .line 12
    return-void
.end method

.method public static newInstance(Lorg/wikipedia/activity/BaseActivity;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaInternalConfig;Lcom/hcaptcha/sdk/HCaptcha$1;)Lcom/hcaptcha/sdk/HCaptchaDialogFragment;
    .locals 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "hCaptchaConfig"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "hCaptchaInternalConfig"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "hCaptchaDialogListener"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    new-instance v7, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;

    .line 22
    .line 23
    invoke-direct {v7}, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v8, Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 27
    .line 28
    invoke-direct {v8, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcoil3/ImageLoader$Builder;

    .line 32
    .line 33
    new-instance v3, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    move-object v4, p0

    .line 43
    move-object v5, p1

    .line 44
    move-object v6, p2

    .line 45
    invoke-direct/range {v2 .. v8}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaInternalConfig;Lcom/hcaptcha/sdk/IHCaptchaVerifier;Lcom/hcaptcha/sdk/HCaptchaWebView;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, v7, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 49
    .line 50
    sput-object v8, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 51
    .line 52
    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    iput-object p3, v7, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 56
    .line 57
    return-object v7
.end method


# virtual methods
.method public final hideLoadingContainer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->loadingContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->loadingContainer:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-wide/16 v1, 0xc8

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Landroidx/transition/Transition$3;

    .line 43
    .line 44
    const/16 v2, 0xc

    .line 45
    .line 46
    invoke-direct {v1, v2, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v2, 0x2

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->defaultDimAmount:F

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Landroid/view/Window;->setDimAmount(F)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 2
    .line 3
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaError;->CHALLENGE_CLOSED:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p1, v0, v1}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    invoke-static {p1}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Setting style and theme for DialogFragment "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " to 2, 2131952023"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "FragmentManager"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 36
    .line 37
    const p1, 0x7f130197

    .line 38
    .line 39
    .line 40
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/hcaptcha/sdk/HCaptchaCompat;->getParcelable(Landroid/os/Bundle;)Landroid/os/Parcelable;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 52
    .line 53
    const-string v1, "hCaptchaConfig"

    .line 54
    .line 55
    const-class v2, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 56
    .line 57
    invoke-static {v0, v1, v2}, Lcom/hcaptcha/sdk/HCaptchaCompat;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v5, v1

    .line 62
    check-cast v5, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 63
    .line 64
    const-string v1, "hCaptchaInternalConfig"

    .line 65
    .line 66
    const-class v2, Lcom/hcaptcha/sdk/HCaptchaInternalConfig;

    .line 67
    .line 68
    invoke-static {v0, v1, v2}, Lcom/hcaptcha/sdk/HCaptchaCompat;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object v6, v0

    .line 73
    check-cast v6, Lcom/hcaptcha/sdk/HCaptchaInternalConfig;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    if-nez v6, :cond_2

    .line 82
    .line 83
    :cond_1
    move-object v7, p0

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 86
    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 99
    .line 100
    :cond_3
    move-object v8, v0

    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-object v7, p0

    .line 103
    goto :goto_2

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 105
    .line 106
    if-nez v0, :cond_4

    .line 107
    .line 108
    new-instance v2, Lcoil3/ImageLoader$Builder;

    .line 109
    .line 110
    new-instance v3, Landroid/os/Handler;

    .line 111
    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    move-object v7, p0

    .line 124
    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaInternalConfig;Lcom/hcaptcha/sdk/IHCaptchaVerifier;Lcom/hcaptcha/sdk/HCaptchaWebView;)V

    .line 125
    .line 126
    .line 127
    iput-object v2, v7, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 128
    .line 129
    return-void

    .line 130
    :goto_1
    if-eqz v0, :cond_4

    .line 131
    .line 132
    new-instance p0, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 133
    .line 134
    sget-object v1, Lcom/hcaptcha/sdk/HCaptchaError;->ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 135
    .line 136
    invoke-direct {p0, v1, p1}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p0}, Lcom/hcaptcha/sdk/HCaptcha$1;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :catch_1
    :goto_2
    iget-object p0, v7, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 144
    .line 145
    if-eqz p0, :cond_4

    .line 146
    .line 147
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 148
    .line 149
    sget-object v1, Lcom/hcaptcha/sdk/HCaptchaError;->ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 150
    .line 151
    invoke-direct {v0, v1, p1}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/hcaptcha/sdk/HCaptcha$1;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    const/4 p3, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 3
    .line 4
    const-string v1, "hCaptchaConfig"

    .line 5
    .line 6
    const-class v2, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Lcom/hcaptcha/sdk/HCaptchaCompat;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->prepareRootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/hcaptcha/sdk/HCaptchaConfig;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->prepareWebView(Landroid/view/View;Lcom/hcaptcha/sdk/HCaptchaConfig;)V

    .line 21
    .line 22
    .line 23
    const p2, 0x7f090351

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->loadingContainer:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getTheme()Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    sget-object v1, Lcom/hcaptcha/sdk/HCaptchaTheme;->DARK:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 41
    .line 42
    if-ne p2, v1, :cond_0

    .line 43
    .line 44
    const/high16 p2, -0x1000000

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p2, -0x1

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->loadingContainer:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->loadingContainer:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->readyForInteraction:Z

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    move v0, p3

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/16 v0, 0x8

    .line 74
    .line 75
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-object p1

    .line 79
    :cond_3
    new-instance p1, Landroid/view/InflateException;

    .line 80
    .line 81
    const-string p2, "inflater is null"

    .line 82
    .line 83
    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    invoke-virtual {p0, p3, p3}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    if-eqz p0, :cond_4

    .line 94
    .line 95
    new-instance p2, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 96
    .line 97
    sget-object p3, Lcom/hcaptcha/sdk/HCaptchaError;->ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 98
    .line 99
    invoke-direct {p2, p3, p1}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p2}, Lcom/hcaptcha/sdk/HCaptcha$1;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->reset()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRetryPredicate()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lcom/hcaptcha/sdk/HCaptchaConfig$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$r8$lambda$G1CA-Kw-lWwIW6y9x0rXF896dWY(Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaException;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v1

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Lcoil3/ImageLoader$Builder;->resetAndExecute()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/HCaptcha$1;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method

.method public final onLoaded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSize()Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lcom/hcaptcha/sdk/HCaptchaSize;->INVISIBLE:Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-nez v1, :cond_2

    .line 23
    .line 24
    iput-boolean v3, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->readyForInteraction:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->hideLoadingContainer()V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v2, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 30
    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHideDialog()Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->resetAndExecute()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->setVerifyParams()V

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_1
    return-void
.end method

.method public final onOpen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSize()Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/hcaptcha/sdk/HCaptchaSize;->INVISIBLE:Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->hideLoadingContainer()V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->readyForInteraction:Z

    .line 23
    .line 24
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptcha$1;->onOpen()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 30
    .line 31
    iput v1, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->defaultDimAmount:F

    .line 32
    .line 33
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 36
    .line 37
    iget-object p0, p0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    const/4 p0, 0x2

    .line 52
    invoke-virtual {v0, p0}, Landroid/view/Window;->clearFlags(I)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    invoke-virtual {v0, p0}, Landroid/view/Window;->setDimAmount(F)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/HCaptcha$1;->onSuccess(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final prepareRootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/hcaptcha/sdk/HCaptchaConfig;)Landroid/view/View;
    .locals 2

    .line 1
    const v0, 0x7f0c02e7

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    new-instance p2, Lcom/hcaptcha/sdk/HCaptchaDialogFragment$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    invoke-direct {p2, p0, p3}, Lcom/hcaptcha/sdk/HCaptchaDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/hcaptcha/sdk/HCaptchaDialogFragment;Lcom/hcaptcha/sdk/HCaptchaConfig;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method public final prepareWebView(Landroid/view/View;Lcom/hcaptcha/sdk/HCaptchaConfig;)V
    .locals 3

    .line 1
    const v0, 0x7f090768

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Landroid/view/ViewStub;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    .line 50
    sget-object v2, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    sget-object p1, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 73
    .line 74
    new-instance p2, Lorg/wikipedia/views/SwipeableListView$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    invoke-direct {p2, v0, p0}, Lorg/wikipedia/views/SwipeableListView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final reset$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcoil3/ImageLoader$Builder;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    sput-object p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->sPreloadWebView:Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 21
    .line 22
    return-void
.end method

.method public final startVerification(Lorg/wikipedia/activity/BaseActivity;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->readyForInteraction:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcoil3/ImageLoader$Builder;->setVerifyParams()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "HCaptchaDialogFragment"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->listener:Lcom/hcaptcha/sdk/HCaptcha$1;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    new-instance p1, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 51
    .line 52
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaError;->ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-direct {p1, v0, v1}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/HCaptcha$1;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method
