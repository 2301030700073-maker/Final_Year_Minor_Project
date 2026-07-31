.class public final Lorg/wikipedia/login/LoginActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/login/LoginActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "LoginCallback",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

.field public captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

.field public captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

.field public final createAccountLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public firstStepToken:Ljava/lang/String;

.field public final hCaptchaHelper:Lokio/internal/DefaultSocket;

.field public hCaptchaToken:Ljava/lang/String;

.field public final loginCallback:Lorg/wikipedia/login/LoginActivity$LoginCallback;

.field public final loginClient:Lorg/wikipedia/login/LoginClient;

.field public loginSource:Ljava/lang/String;

.field public final resetPasswordLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final textEnteredEventSent:Ljava/util/LinkedHashMap;

.field public uiPromptResult:Lorg/wikipedia/login/LoginResult;

.field public final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 15
    .line 16
    new-instance v0, Lorg/wikipedia/login/LoginClient;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    .line 23
    .line 24
    new-instance v0, Lorg/wikipedia/login/LoginActivity$LoginCallback;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginActivity$LoginCallback;-><init>(Lorg/wikipedia/login/LoginActivity;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginCallback:Lorg/wikipedia/login/LoginActivity$LoginCallback;

    .line 30
    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity;->textEnteredEventSent:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/login/LoginActivity;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 54
    .line 55
    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity;->createAccountLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 56
    .line 57
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 58
    .line 59
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/login/LoginActivity;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 73
    .line 74
    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity;->resetPasswordLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 75
    .line 76
    new-instance v0, Lokio/internal/DefaultSocket;

    .line 77
    .line 78
    new-instance v1, Lorg/wikipedia/login/LoginActivity$LoginCallback;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginActivity$LoginCallback;-><init>(Lorg/wikipedia/login/LoginActivity;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, p0, v1}, Lokio/internal/DefaultSocket;-><init>(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/captcha/HCaptchaHelper$Callback;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity;->hCaptchaHelper:Lokio/internal/DefaultSocket;

    .line 87
    .line 88
    return-void
.end method

.method public static getText$1(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    if-nez p0, :cond_1

    .line 20
    .line 21
    const-string p0, ""

    .line 22
    .line 23
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final doLogin()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 4
    .line 5
    const-string v2, "binding"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_c

    .line 9
    .line 10
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    .line 14
    invoke-static {v1}, Lorg/wikipedia/login/LoginActivity;->getText$1(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    iget-object v1, v0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 19
    .line 20
    if-eqz v1, :cond_b

    .line 21
    .line 22
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 25
    .line 26
    invoke-static {v1}, Lorg/wikipedia/login/LoginActivity;->getText$1(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    iget-object v1, v0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 31
    .line 32
    if-eqz v1, :cond_a

    .line 33
    .line 34
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 37
    .line 38
    invoke-static {v1}, Lorg/wikipedia/login/LoginActivity;->getText$1(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Lorg/wikipedia/login/LoginActivity;->showProgressBar$2(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Lorg/wikipedia/login/LoginActivity;->uiPromptResult:Lorg/wikipedia/login/LoginResult;

    .line 47
    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    iget-object v4, v0, Lorg/wikipedia/login/LoginActivity;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 51
    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    iget-object v4, v0, Lorg/wikipedia/login/LoginActivity;->hCaptchaToken:Ljava/lang/String;

    .line 55
    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 63
    .line 64
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-object v1, v0, Lorg/wikipedia/login/LoginActivity;->loginCallback:Lorg/wikipedia/login/LoginActivity$LoginCallback;

    .line 73
    .line 74
    const/16 v17, 0x7f0

    .line 75
    .line 76
    iget-object v4, v0, Lorg/wikipedia/login/LoginActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    const/4 v11, 0x0

    .line 81
    const/4 v12, 0x0

    .line 82
    const/4 v13, 0x0

    .line 83
    const/4 v14, 0x0

    .line 84
    const/4 v15, 0x0

    .line 85
    move-object/from16 v16, v1

    .line 86
    .line 87
    invoke-static/range {v4 .. v17}, Lorg/wikipedia/login/LoginClient;->login$default(Lorg/wikipedia/login/LoginClient;Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lorg/wikipedia/login/LoginClient$LoginCallback;I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_0
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 96
    .line 97
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    iget-object v10, v0, Lorg/wikipedia/login/LoginActivity;->firstStepToken:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v4, v0, Lorg/wikipedia/login/LoginActivity;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 108
    .line 109
    const-string v9, "captchaHandler"

    .line 110
    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    iget-object v11, v0, Lorg/wikipedia/login/LoginActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 114
    .line 115
    if-eqz v11, :cond_2

    .line 116
    .line 117
    iget-object v11, v11, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 118
    .line 119
    if-eqz v11, :cond_1

    .line 120
    .line 121
    iget-object v11, v11, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    move-object v11, v3

    .line 125
    :goto_0
    move-object v13, v11

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v3

    .line 131
    :cond_3
    move-object v13, v3

    .line 132
    :goto_1
    iget-object v11, v0, Lorg/wikipedia/login/LoginActivity;->hCaptchaToken:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz v11, :cond_4

    .line 135
    .line 136
    :goto_2
    move-object v14, v11

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    if-eqz v4, :cond_6

    .line 139
    .line 140
    iget-object v4, v0, Lorg/wikipedia/login/LoginActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 141
    .line 142
    if-eqz v4, :cond_5

    .line 143
    .line 144
    invoke-virtual {v4}, Lorg/wikipedia/captcha/CaptchaHandler;->captchaWord()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    goto :goto_2

    .line 149
    :cond_5
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v3

    .line 153
    :cond_6
    move-object v14, v3

    .line 154
    :goto_3
    iget-object v4, v0, Lorg/wikipedia/login/LoginActivity;->uiPromptResult:Lorg/wikipedia/login/LoginResult;

    .line 155
    .line 156
    instance-of v9, v4, Lorg/wikipedia/login/LoginOATHResult;

    .line 157
    .line 158
    if-eqz v9, :cond_7

    .line 159
    .line 160
    move-object v11, v1

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    move-object v11, v3

    .line 163
    :goto_4
    instance-of v9, v4, Lorg/wikipedia/login/LoginEmailAuthResult;

    .line 164
    .line 165
    if-eqz v9, :cond_8

    .line 166
    .line 167
    move-object v12, v1

    .line 168
    goto :goto_5

    .line 169
    :cond_8
    move-object v12, v3

    .line 170
    :goto_5
    if-eqz v4, :cond_9

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_9
    const/4 v2, 0x0

    .line 174
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    const/16 v17, 0x10

    .line 179
    .line 180
    iget-object v4, v0, Lorg/wikipedia/login/LoginActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    .line 181
    .line 182
    const/4 v9, 0x0

    .line 183
    iget-object v0, v0, Lorg/wikipedia/login/LoginActivity;->loginCallback:Lorg/wikipedia/login/LoginActivity$LoginCallback;

    .line 184
    .line 185
    move-object/from16 v16, v0

    .line 186
    .line 187
    invoke-static/range {v4 .. v17}, Lorg/wikipedia/login/LoginClient;->login$default(Lorg/wikipedia/login/LoginClient;Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lorg/wikipedia/login/LoginClient$LoginCallback;I)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v3

    .line 195
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v3

    .line 199
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v3
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v2, 0x7f0c0025

    .line 11
    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v10, 0x0

    .line 15
    invoke-virtual {v0, v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x7f0900c7

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1f

    .line 27
    .line 28
    invoke-static {v3}, Lorg/wikipedia/databinding/GroupCaptchaBinding;->bind(Landroid/view/View;)Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    const v2, 0x7f090265

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_1f

    .line 40
    .line 41
    invoke-static {v3}, Lokhttp3/Request$Builder;->bind(Landroid/view/View;)Lokhttp3/Request$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v14

    .line 45
    const v2, 0x7f090354

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    move-object v15, v3

    .line 53
    check-cast v15, Lcom/google/android/material/textfield/TextInputLayout;

    .line 54
    .line 55
    if-eqz v15, :cond_1f

    .line 56
    .line 57
    const v2, 0x7f090355

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    move-object/from16 v16, v3

    .line 65
    .line 66
    check-cast v16, Landroid/widget/Button;

    .line 67
    .line 68
    if-eqz v16, :cond_1f

    .line 69
    .line 70
    const v2, 0x7f090356

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    move-object/from16 v17, v3

    .line 78
    .line 79
    check-cast v17, Landroid/widget/Button;

    .line 80
    .line 81
    if-eqz v17, :cond_1f

    .line 82
    .line 83
    const v2, 0x7f090357

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    move-object/from16 v18, v3

    .line 91
    .line 92
    check-cast v18, Lcom/google/android/material/textfield/TextInputLayout;

    .line 93
    .line 94
    if-eqz v18, :cond_1f

    .line 95
    .line 96
    const v2, 0x7f090358

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    move-object/from16 v19, v3

    .line 104
    .line 105
    check-cast v19, Landroid/widget/LinearLayout;

    .line 106
    .line 107
    if-eqz v19, :cond_1f

    .line 108
    .line 109
    const v2, 0x7f090359

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object/from16 v20, v3

    .line 117
    .line 118
    check-cast v20, Lcom/google/android/material/textfield/TextInputLayout;

    .line 119
    .line 120
    if-eqz v20, :cond_1f

    .line 121
    .line 122
    const v2, 0x7f0906cb

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    move-object/from16 v21, v3

    .line 130
    .line 131
    check-cast v21, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 132
    .line 133
    if-eqz v21, :cond_1f

    .line 134
    .line 135
    const v2, 0x7f09073a

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    move-object/from16 v22, v3

    .line 143
    .line 144
    check-cast v22, Lorg/wikipedia/views/WikiErrorView;

    .line 145
    .line 146
    if-eqz v22, :cond_1f

    .line 147
    .line 148
    const v2, 0x7f09073f

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    move-object/from16 v23, v3

    .line 156
    .line 157
    check-cast v23, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 158
    .line 159
    if-eqz v23, :cond_1f

    .line 160
    .line 161
    new-instance v11, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 162
    .line 163
    move-object v12, v0

    .line 164
    check-cast v12, Landroid/widget/FrameLayout;

    .line 165
    .line 166
    invoke-direct/range {v11 .. v23}, Lorg/wikipedia/databinding/ActivityLoginBinding;-><init>(Landroid/widget/FrameLayout;Lorg/wikipedia/databinding/GroupCaptchaBinding;Lokhttp3/Request$Builder;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/Button;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/appbar/MaterialToolbar;Lorg/wikipedia/views/WikiErrorView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V

    .line 167
    .line 168
    .line 169
    iput-object v11, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 170
    .line 171
    invoke-virtual {v1, v12}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 175
    .line 176
    const-string v11, "binding"

    .line 177
    .line 178
    if-eqz v0, :cond_1e

    .line 179
    .line 180
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 185
    .line 186
    .line 187
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 193
    .line 194
    const-string v3, "apps-authentication"

    .line 195
    .line 196
    invoke-direct {v2, v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 197
    .line 198
    .line 199
    const-string v0, "login_form"

    .line 200
    .line 201
    iput-object v0, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 202
    .line 203
    const-string v0, "login_account"

    .line 204
    .line 205
    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iput-object v2, v1, Lorg/wikipedia/activity/BaseActivity;->_instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 209
    .line 210
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-instance v2, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 215
    .line 216
    const/16 v3, 0x12

    .line 217
    .line 218
    invoke-direct {v2, v3, v1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/DpKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 222
    .line 223
    .line 224
    new-instance v0, Lorg/wikipedia/captcha/CaptchaHandler;

    .line 225
    .line 226
    iget-object v2, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 227
    .line 228
    if-eqz v2, :cond_1d

    .line 229
    .line 230
    iget-object v3, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v3, Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 233
    .line 234
    iget-object v3, v3, Lorg/wikipedia/databinding/GroupCaptchaBinding;->rootView:Landroid/widget/LinearLayout;

    .line 235
    .line 236
    if-eqz v2, :cond_1c

    .line 237
    .line 238
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 239
    .line 240
    move-object v4, v2

    .line 241
    check-cast v4, Landroid/widget/LinearLayout;

    .line 242
    .line 243
    const v2, 0x7f120348

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    const/4 v7, 0x0

    .line 254
    invoke-static {v1}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    iget-object v2, v1, Lorg/wikipedia/login/LoginActivity;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 259
    .line 260
    const/4 v6, 0x0

    .line 261
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/captcha/CaptchaHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 262
    .line 263
    .line 264
    iput-object v0, v1, Lorg/wikipedia/login/LoginActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 265
    .line 266
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 267
    .line 268
    if-eqz v0, :cond_1b

    .line 269
    .line 270
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 273
    .line 274
    new-instance v2, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;

    .line 275
    .line 276
    invoke-direct {v2, v1, v10}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/login/LoginActivity;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 283
    .line 284
    if-eqz v0, :cond_1a

    .line 285
    .line 286
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 289
    .line 290
    new-instance v2, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;

    .line 291
    .line 292
    const/4 v3, 0x1

    .line 293
    invoke-direct {v2, v1, v3}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/login/LoginActivity;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    .line 300
    .line 301
    iget-object v2, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 302
    .line 303
    if-eqz v2, :cond_19

    .line 304
    .line 305
    iget-object v4, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v4, Landroid/widget/Button;

    .line 308
    .line 309
    if-eqz v2, :cond_18

    .line 310
    .line 311
    iget-object v5, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    .line 314
    .line 315
    if-eqz v2, :cond_17

    .line 316
    .line 317
    iget-object v6, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 320
    .line 321
    if-eqz v2, :cond_16

    .line 322
    .line 323
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 326
    .line 327
    const/4 v7, 0x3

    .line 328
    new-array v8, v7, [Lcom/google/android/material/textfield/TextInputLayout;

    .line 329
    .line 330
    aput-object v5, v8, v10

    .line 331
    .line 332
    aput-object v6, v8, v3

    .line 333
    .line 334
    const/4 v5, 0x2

    .line 335
    aput-object v2, v8, v5

    .line 336
    .line 337
    invoke-direct {v0, v4, v8}, Lcom/caverock/androidsvg/CSSParser;-><init>(Landroid/widget/Button;[Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 341
    .line 342
    if-eqz v0, :cond_15

    .line 343
    .line 344
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    if-eqz v0, :cond_0

    .line 353
    .line 354
    new-instance v2, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;

    .line 355
    .line 356
    invoke-direct {v2, v10, v1}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 360
    .line 361
    .line 362
    :cond_0
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 363
    .line 364
    if-eqz v0, :cond_14

    .line 365
    .line 366
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    if-eqz v0, :cond_1

    .line 375
    .line 376
    new-instance v2, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;

    .line 377
    .line 378
    const-string/jumbo v4, "username"

    .line 379
    .line 380
    .line 381
    invoke-direct {v2, v1, v0, v4, v10}, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 385
    .line 386
    .line 387
    :cond_1
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 388
    .line 389
    if-eqz v0, :cond_13

    .line 390
    .line 391
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 394
    .line 395
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    if-eqz v0, :cond_2

    .line 400
    .line 401
    new-instance v2, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;

    .line 402
    .line 403
    const-string v4, "password"

    .line 404
    .line 405
    invoke-direct {v2, v1, v0, v4, v10}, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 409
    .line 410
    .line 411
    :cond_2
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 412
    .line 413
    if-eqz v0, :cond_12

    .line 414
    .line 415
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    if-eqz v0, :cond_3

    .line 424
    .line 425
    new-instance v2, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;

    .line 426
    .line 427
    const-string v4, "2fa"

    .line 428
    .line 429
    invoke-direct {v2, v1, v0, v4, v10}, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 433
    .line 434
    .line 435
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    const-string v2, "login_request_source"

    .line 440
    .line 441
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    if-nez v0, :cond_4

    .line 446
    .line 447
    const-string v0, ""

    .line 448
    .line 449
    :cond_4
    iput-object v0, v1, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    const-string v2, "loginSource"

    .line 456
    .line 457
    if-lez v0, :cond_6

    .line 458
    .line 459
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    .line 460
    .line 461
    if-eqz v0, :cond_5

    .line 462
    .line 463
    const-string v4, "suggestededits"

    .line 464
    .line 465
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-eqz v0, :cond_6

    .line 470
    .line 471
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 472
    .line 473
    const v0, 0x7f120688

    .line 474
    .line 475
    .line 476
    invoke-static {v0, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 477
    .line 478
    .line 479
    goto :goto_0

    .line 480
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    throw v9

    .line 484
    :cond_6
    :goto_0
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    iget-object v4, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 489
    .line 490
    if-eqz v0, :cond_9

    .line 491
    .line 492
    if-eqz v4, :cond_8

    .line 493
    .line 494
    iget-object v0, v4, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v0, Lokhttp3/Request$Builder;

    .line 497
    .line 498
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v0, Landroid/widget/FrameLayout;

    .line 501
    .line 502
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 503
    .line 504
    .line 505
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 506
    .line 507
    if-eqz v0, :cond_7

    .line 508
    .line 509
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v0, Lokhttp3/Request$Builder;

    .line 512
    .line 513
    iget-object v0, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v0, Landroid/widget/TextView;

    .line 516
    .line 517
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 518
    .line 519
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    new-array v6, v3, [Ljava/lang/Object;

    .line 524
    .line 525
    aput-object v4, v6, v10

    .line 526
    .line 527
    const v4, 0x7f120999

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    .line 540
    .line 541
    goto :goto_1

    .line 542
    :cond_7
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    throw v9

    .line 546
    :cond_8
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    throw v9

    .line 550
    :cond_9
    if-eqz v4, :cond_11

    .line 551
    .line 552
    iget-object v0, v4, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v0, Lokhttp3/Request$Builder;

    .line 555
    .line 556
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v0, Landroid/widget/FrameLayout;

    .line 559
    .line 560
    const/16 v4, 0x8

    .line 561
    .line 562
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 563
    .line 564
    .line 565
    :goto_1
    if-nez p1, :cond_a

    .line 566
    .line 567
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    const-string v4, "accountAuthenticatorResponse"

    .line 572
    .line 573
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-nez v0, :cond_a

    .line 578
    .line 579
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    const-string v4, "create_account_first"

    .line 584
    .line 585
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    if-eqz v0, :cond_a

    .line 590
    .line 591
    invoke-virtual {v1}, Lorg/wikipedia/login/LoginActivity;->startCreateAccountActivity()V

    .line 592
    .line 593
    .line 594
    :cond_a
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 595
    .line 596
    if-eqz v0, :cond_10

    .line 597
    .line 598
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 599
    .line 600
    check-cast v0, Landroid/widget/Button;

    .line 601
    .line 602
    new-instance v3, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;

    .line 603
    .line 604
    invoke-direct {v3, v1, v5}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/login/LoginActivity;I)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    .line 609
    .line 610
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 611
    .line 612
    if-eqz v0, :cond_f

    .line 613
    .line 614
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v0, Landroid/widget/Button;

    .line 617
    .line 618
    new-instance v3, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;

    .line 619
    .line 620
    invoke-direct {v3, v1, v7}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/login/LoginActivity;I)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    .line 625
    .line 626
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 627
    .line 628
    if-eqz v0, :cond_e

    .line 629
    .line 630
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v0, Lokhttp3/Request$Builder;

    .line 633
    .line 634
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v0, Landroid/widget/TextView;

    .line 637
    .line 638
    new-instance v3, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;

    .line 639
    .line 640
    const/4 v4, 0x4

    .line 641
    invoke-direct {v3, v1, v4}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/login/LoginActivity;I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    .line 646
    .line 647
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 648
    .line 649
    if-eqz v0, :cond_d

    .line 650
    .line 651
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v0, Lokhttp3/Request$Builder;

    .line 654
    .line 655
    iget-object v0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 656
    .line 657
    check-cast v0, Landroid/widget/TextView;

    .line 658
    .line 659
    new-instance v3, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;

    .line 660
    .line 661
    const/4 v4, 0x5

    .line 662
    invoke-direct {v3, v1, v4}, Lorg/wikipedia/login/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/login/LoginActivity;I)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1}, Lorg/wikipedia/login/LoginActivity;->resetAuthState()V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1, v5}, Landroid/app/Activity;->setResult(I)V

    .line 672
    .line 673
    .line 674
    invoke-static {v1}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 675
    .line 676
    .line 677
    move-result-object v10

    .line 678
    if-eqz v10, :cond_c

    .line 679
    .line 680
    iget-object v0, v1, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    .line 681
    .line 682
    if-eqz v0, :cond_b

    .line 683
    .line 684
    const-string v1, "invoke_source"

    .line 685
    .line 686
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 687
    .line 688
    .line 689
    move-result-object v16

    .line 690
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    const/16 v17, 0x7e

    .line 694
    .line 695
    const-string v11, "impression"

    .line 696
    .line 697
    const/4 v12, 0x0

    .line 698
    const/4 v13, 0x0

    .line 699
    const/4 v14, 0x0

    .line 700
    const/4 v15, 0x0

    .line 701
    invoke-static/range {v10 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 702
    .line 703
    .line 704
    return-void

    .line 705
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw v9

    .line 709
    :cond_c
    return-void

    .line 710
    :cond_d
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    throw v9

    .line 714
    :cond_e
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    throw v9

    .line 718
    :cond_f
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    throw v9

    .line 722
    :cond_10
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    throw v9

    .line 726
    :cond_11
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    throw v9

    .line 730
    :cond_12
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    throw v9

    .line 734
    :cond_13
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    throw v9

    .line 738
    :cond_14
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    throw v9

    .line 742
    :cond_15
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    throw v9

    .line 746
    :cond_16
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    throw v9

    .line 750
    :cond_17
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    throw v9

    .line 754
    :cond_18
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    throw v9

    .line 758
    :cond_19
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    throw v9

    .line 762
    :cond_1a
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    throw v9

    .line 766
    :cond_1b
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    throw v9

    .line 770
    :cond_1c
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    throw v9

    .line 774
    :cond_1d
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    throw v9

    .line 778
    :cond_1e
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    throw v9

    .line 782
    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    const-string v1, "Missing required view with ID: "

    .line 791
    .line 792
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity;->hCaptchaHelper:Lokio/internal/DefaultSocket;

    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->cleanup()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onLoginSuccess()V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "loginSource"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    const-string/jumbo v3, "widget_challenge"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v4, p0, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const-string v1, "invoke_source"

    .line 28
    .line 29
    invoke-static {v1, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-object v9, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v2

    .line 42
    :cond_1
    move-object v9, v2

    .line 43
    :goto_0
    const/16 v10, 0x7e

    .line 44
    .line 45
    const-string v4, "success"

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    const/4 v1, 0x1

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 58
    .line 59
    const v0, 0x7f12064b

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const v3, 0x7f12064c

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 87
    .line 88
    const/4 v4, 0x6

    .line 89
    invoke-direct {v3, v4, p0, v2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 90
    .line 91
    .line 92
    const/4 v4, 0x3

    .line 93
    invoke-static {v0, v2, v2, v3, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v2, "login_request_source"

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-instance v3, Landroidx/paging/HintHandler;

    .line 117
    .line 118
    invoke-direct {v3, v2}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 122
    .line 123
    const/16 v4, 0x23

    .line 124
    .line 125
    if-lt v2, v4, :cond_4

    .line 126
    .line 127
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 128
    .line 129
    invoke-direct {v2, v0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    const/16 v4, 0x1e

    .line 134
    .line 135
    if-lt v2, v4, :cond_5

    .line 136
    .line 137
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 138
    .line 139
    invoke-direct {v2, v0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    const/16 v4, 0x1a

    .line 144
    .line 145
    if-lt v2, v4, :cond_6

    .line 146
    .line 147
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 148
    .line 149
    invoke-direct {v2, v0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 154
    .line 155
    invoke-direct {v2, v0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 156
    .line 157
    .line 158
    :goto_1
    invoke-virtual {v2}, Lcoil3/util/UtilsKt;->hide()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 162
    .line 163
    .line 164
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 165
    .line 166
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 167
    .line 168
    .line 169
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 170
    .line 171
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 175
    .line 176
    .line 177
    const/4 v0, 0x0

    .line 178
    const v1, 0x7f120698

    .line 179
    .line 180
    .line 181
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 182
    .line 183
    .line 184
    const-wide/16 v0, 0x0

    .line 185
    .line 186
    const v2, 0x7f120696

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 190
    .line 191
    .line 192
    const-string v0, ""

    .line 193
    .line 194
    const v1, 0x7f120621

    .line 195
    .line 196
    .line 197
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lokio/Path$Companion;->manualSyncWithForce()V

    .line 201
    .line 202
    .line 203
    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->schedulePollNotificationJob(Landroid/content/Context;)V

    .line 204
    .line 205
    .line 206
    new-instance v0, Lorg/wikipedia/events/LoggedInEvent;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-static {v0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v2
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const-string p0, "loginShowing"

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p0, "binding"

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    throw p0
.end method

.method public final resetAuthState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    const-string v1, "binding"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iput-object v2, p0, Lorg/wikipedia/login/LoginActivity;->firstStepToken:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v2, p0, Lorg/wikipedia/login/LoginActivity;->uiPromptResult:Lorg/wikipedia/login/LoginResult;

    .line 39
    .line 40
    iput-object v2, p0, Lorg/wikipedia/login/LoginActivity;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 41
    .line 42
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->hideCaptcha()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lorg/wikipedia/login/LoginActivity;->hCaptchaToken:Ljava/lang/String;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    const-string p0, "captchaHandler"

    .line 53
    .line 54
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v2

    .line 58
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v2

    .line 62
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v2
.end method

.method public final showProgressBar$2(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v3, 0x8

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroid/widget/Button;

    .line 28
    .line 29
    xor-int/lit8 v3, p1, 0x1

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/widget/Button;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const p1, 0x7f12034e

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const p1, 0x7f1203de

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public final startCreateAccountActivity()V
    .locals 4

    .line 1
    sget-object v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v2, Landroid/content/Intent;

    .line 9
    .line 10
    const-class v3, Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 11
    .line 12
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    const-string v3, "login_request_source"

    .line 16
    .line 17
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity;->createAccountLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string p0, "loginSource"

    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1
.end method

.method public final validateThenLogin()V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 17
    .line 18
    if-eqz v0, :cond_e

    .line 19
    .line 20
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 28
    .line 29
    const-string v3, "captchaHandler"

    .line 30
    .line 31
    if-eqz v0, :cond_d

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lorg/wikipedia/captcha/CaptchaHandler;->setErrorText(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    iget-object v4, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 39
    .line 40
    if-eqz v4, :cond_c

    .line 41
    .line 42
    iget-object v4, v4, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 45
    .line 46
    invoke-static {v4}, Lorg/wikipedia/login/LoginActivity;->getText$1(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const-string/jumbo v4, "validation_error"

    .line 59
    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_0

    .line 68
    .line 69
    const-string/jumbo v0, "username_invalid"

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const/16 v12, 0x7e

    .line 80
    .line 81
    const-string v6, "error"

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v9, 0x0

    .line 86
    const/4 v10, 0x0

    .line 87
    invoke-static/range {v5 .. v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 88
    .line 89
    .line 90
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 102
    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 108
    .line 109
    const v1, 0x7f1200e9

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v1

    .line 128
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 129
    .line 130
    if-eqz v0, :cond_b

    .line 131
    .line 132
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_a

    .line 137
    .line 138
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 139
    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->captchaWord()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_a

    .line 153
    .line 154
    :cond_4
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    if-eqz v5, :cond_5

    .line 159
    .line 160
    const-string v0, "fancy_captcha_empty"

    .line 161
    .line 162
    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    const/16 v12, 0x7e

    .line 170
    .line 171
    const-string v6, "error"

    .line 172
    .line 173
    const/4 v7, 0x0

    .line 174
    const/4 v8, 0x0

    .line 175
    const/4 v9, 0x0

    .line 176
    const/4 v10, 0x0

    .line 177
    invoke-static/range {v5 .. v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 178
    .line 179
    .line 180
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 181
    .line 182
    if-eqz v0, :cond_8

    .line 183
    .line 184
    const v2, 0x7f1201ac

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v0, v2}, Lorg/wikipedia/captcha/CaptchaHandler;->setErrorText(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 195
    .line 196
    if-eqz p0, :cond_7

    .line 197
    .line 198
    iget-object p0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->binding:Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 199
    .line 200
    iget-object p0, p0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    if-eqz p0, :cond_6

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 209
    .line 210
    .line 211
    :cond_6
    return-void

    .line 212
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v1

    .line 216
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v1

    .line 220
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v1

    .line 224
    :cond_a
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginActivity;->doLogin()V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v1

    .line 232
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v1

    .line 236
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v1

    .line 240
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v1

    .line 244
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v1
.end method
