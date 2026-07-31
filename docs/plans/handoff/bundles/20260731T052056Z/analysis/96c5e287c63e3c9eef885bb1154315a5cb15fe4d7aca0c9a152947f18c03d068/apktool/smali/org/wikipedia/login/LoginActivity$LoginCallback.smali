.class public final Lorg/wikipedia/login/LoginActivity$LoginCallback;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/login/LoginClient$LoginCallback;
.implements Lorg/wikipedia/captcha/HCaptchaHelper$Callback;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/login/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/login/LoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lorg/wikipedia/login/LoginActivity;->showProgressBar$2(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginActivity;->resetAuthState()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Landroidx/paging/HintHandler;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v4, 0x23

    .line 34
    .line 35
    if-lt v2, v4, :cond_0

    .line 36
    .line 37
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 38
    .line 39
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v4, 0x1e

    .line 44
    .line 45
    if-lt v2, v4, :cond_1

    .line 46
    .line 47
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 48
    .line 49
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/16 v4, 0x1a

    .line 54
    .line 55
    if-lt v2, v4, :cond_2

    .line 56
    .line 57
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 58
    .line 59
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 64
    .line 65
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v2}, Lcoil3/util/UtilsKt;->hide()V

    .line 69
    .line 70
    .line 71
    instance-of v1, p1, Lorg/wikipedia/login/LoginFailedException;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-static {p1}, Lokio/Options$Companion;->getInstrumentActionContext(Ljava/lang/Throwable;)Ljava/util/LinkedHashMap;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    const/16 v9, 0x7e

    .line 90
    .line 91
    const-string v3, "error"

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    const-string v3, "binding"

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 110
    .line 111
    sget v4, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 112
    .line 113
    invoke-virtual {v1, p1, v2}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 117
    .line 118
    if-eqz p0, :cond_5

    .line 119
    .line 120
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v2

    .line 132
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v2
.end method

.method public hCaptchaPrompt(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/login/LoginFailedException;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget p1, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lorg/wikipedia/login/LoginActivity;->showProgressBar$2(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p4, p0, Lorg/wikipedia/login/LoginActivity;->firstStepToken:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->hCaptchaHelper:Lokio/internal/DefaultSocket;

    .line 15
    .line 16
    invoke-virtual {p1}, Lokio/internal/DefaultSocket;->cleanup()V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/16 v7, 0xfe

    .line 27
    .line 28
    const-string v1, "hcaptcha_load"

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1, p3}, Lokio/internal/DefaultSocket;->show(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onError(Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lokio/Options$Companion;->getInstrumentActionContext(Ljava/lang/Throwable;)Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    const/16 v7, 0x7e

    .line 14
    .line 15
    const-string v1, "hcaptcha_error"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget v0, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lorg/wikipedia/login/LoginActivity;->showProgressBar$2(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaException;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    :cond_1
    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onShow()V
    .locals 8

    .line 1
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/16 v7, 0xfe

    .line 11
    .line 12
    const-string v1, "hcaptcha_show"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    .line 5
    .line 6
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v7, 0xfe

    .line 14
    .line 15
    const-string v1, "hcaptcha_success"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity;->hCaptchaToken:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginActivity;->doLogin()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public passwordResetPrompt(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->resetPasswordLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 4
    .line 5
    sget v1, Lorg/wikipedia/login/ResetPasswordActivity;->$r8$clinit:I

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 15
    .line 16
    invoke-static {v1}, Lorg/wikipedia/login/LoginActivity;->getText$1(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v3, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v4, Lorg/wikipedia/login/ResetPasswordActivity;

    .line 23
    .line 24
    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo p0, "userName"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v1, "token"

    .line 35
    .line 36
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0, v2}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    const-string p0, "binding"

    .line 48
    .line 49
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v2
.end method

.method public success(Lorg/wikipedia/login/LoginResult;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lorg/wikipedia/login/LoginActivity;->showProgressBar$2(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "PASS"

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v1, "accountAuthenticatorResponse"

    .line 30
    .line 31
    const-class v2, Landroid/accounts/AccountAuthenticatorResponse;

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/os/Parcelable;

    .line 38
    .line 39
    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 40
    .line 41
    invoke-static {v0, p1}, Lokhttp3/Headers$Companion;->updateAccount(Landroid/accounts/AccountAuthenticatorResponse;Lorg/wikipedia/login/LoginResult;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginActivity;->onLoginSuccess()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const-string v2, "FAIL"

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v1, ""

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget-object v3, p1, Lorg/wikipedia/login/LoginResult;->messageCode:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    move-object v3, v1

    .line 69
    :cond_1
    const-string v4, "code"

    .line 70
    .line 71
    invoke-static {v4, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const/16 v9, 0x7e

    .line 79
    .line 80
    const-string v3, "error"

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v7, 0x0

    .line 86
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object p1, p1, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    .line 90
    .line 91
    if-nez p1, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move-object v1, p1

    .line 95
    :goto_0
    invoke-static {p0, v1, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 96
    .line 97
    .line 98
    const-string p0, "Login failed with result "

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    sget-object p1, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, p0, v0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    return-void
.end method

.method public uiPrompt(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/login/LoginFailedException;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lorg/wikipedia/login/LoginActivity;->showProgressBar$2(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p4, p0, Lorg/wikipedia/login/LoginActivity;->firstStepToken:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p3, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lorg/wikipedia/login/LoginActivity;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-static {p0, p2}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v2, Lorg/wikipedia/captcha/CaptchaResult;

    .line 25
    .line 26
    invoke-direct {v2, p3}, Lorg/wikipedia/captcha/CaptchaResult;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lorg/wikipedia/login/LoginActivity;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 30
    .line 31
    iget-object p3, p0, Lorg/wikipedia/login/LoginActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    iput-object p4, p3, Lorg/wikipedia/captcha/CaptchaHandler;->token:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v2, p3, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 38
    .line 39
    invoke-virtual {p3, v0}, Lorg/wikipedia/captcha/CaptchaHandler;->handleCaptcha(Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p0, "captchaHandler"

    .line 44
    .line 45
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_2
    :goto_0
    instance-of p3, p1, Lorg/wikipedia/login/LoginEmailAuthResult;

    .line 50
    .line 51
    if-nez p3, :cond_3

    .line 52
    .line 53
    instance-of p4, p1, Lorg/wikipedia/login/LoginOATHResult;

    .line 54
    .line 55
    if-eqz p4, :cond_8

    .line 56
    .line 57
    :cond_3
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    instance-of p4, p1, Lorg/wikipedia/login/LoginOATHResult;

    .line 64
    .line 65
    if-eqz p4, :cond_4

    .line 66
    .line 67
    const-string p4, "2fa_oath"

    .line 68
    .line 69
    :goto_1
    move-object v6, p4

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const-string p4, "2fa_email"

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_2
    const/4 v8, 0x0

    .line 75
    const/16 v9, 0xf6

    .line 76
    .line 77
    const-string v3, "impression"

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    const/4 v5, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity;->uiPromptResult:Lorg/wikipedia/login/LoginResult;

    .line 86
    .line 87
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 88
    .line 89
    const-string p4, "binding"

    .line 90
    .line 91
    if-eqz p1, :cond_f

    .line 92
    .line 93
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 96
    .line 97
    if-eqz p3, :cond_6

    .line 98
    .line 99
    const p3, 0x7f12034b

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    const p3, 0x7f120346

    .line 104
    .line 105
    .line 106
    :goto_3
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 114
    .line 115
    if-eqz p1, :cond_e

    .line 116
    .line 117
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 125
    .line 126
    if-eqz p1, :cond_d

    .line 127
    .line 128
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    const-string p3, ""

    .line 139
    .line 140
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 144
    .line 145
    if-eqz p1, :cond_c

    .line 146
    .line 147
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 152
    .line 153
    .line 154
    invoke-static {p0, p2}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    new-instance p2, Landroidx/paging/HintHandler;

    .line 169
    .line 170
    invoke-direct {p2, p1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 171
    .line 172
    .line 173
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 174
    .line 175
    const/16 p3, 0x23

    .line 176
    .line 177
    if-lt p1, p3, :cond_9

    .line 178
    .line 179
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 180
    .line 181
    invoke-direct {p1, p0, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_9
    const/16 p3, 0x1e

    .line 186
    .line 187
    if-lt p1, p3, :cond_a

    .line 188
    .line 189
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 190
    .line 191
    invoke-direct {p1, p0, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_a
    const/16 p3, 0x1a

    .line 196
    .line 197
    if-lt p1, p3, :cond_b

    .line 198
    .line 199
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 200
    .line 201
    invoke-direct {p1, p0, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_b
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 206
    .line 207
    invoke-direct {p1, p0, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 208
    .line 209
    .line 210
    :goto_4
    invoke-virtual {p1}, Lcoil3/util/UtilsKt;->hide()V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_c
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v1

    .line 218
    :cond_d
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v1

    .line 222
    :cond_e
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v1

    .line 226
    :cond_f
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v1
.end method
