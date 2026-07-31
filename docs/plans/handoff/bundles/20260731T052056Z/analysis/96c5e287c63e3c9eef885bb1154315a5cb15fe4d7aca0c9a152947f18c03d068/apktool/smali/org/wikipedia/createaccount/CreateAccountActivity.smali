.class public final Lorg/wikipedia/createaccount/CreateAccountActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/createaccount/CreateAccountActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "ValidateResult",
        "org/wikipedia/util/TabUtil",
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
.field public static final USERNAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

.field public captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

.field public final hCaptchaHelper:Lokio/internal/DefaultSocket;

.field public requestSource:Ljava/lang/String;

.field public final textEnteredEventSent:Ljava/util/LinkedHashMap;

.field public userNameTextWatcher:Landroidx/appcompat/widget/SearchView$10;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;

.field public final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[^#<>\\[\\]|{}/@]*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 6

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
    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->requestSource:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lokhttp3/Request$Builder;

    .line 27
    .line 28
    const-class v2, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 29
    .line 30
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Lorg/wikipedia/createaccount/CreateAccountActivity$special$$inlined$viewModels$default$1;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/createaccount/CreateAccountActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lorg/wikipedia/createaccount/CreateAccountActivity$special$$inlined$viewModels$default$1;

    .line 43
    .line 44
    const/4 v5, 0x2

    .line 45
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/createaccount/CreateAccountActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2, v3, v0, v4}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 52
    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->textEnteredEventSent:Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    new-instance v0, Lokio/internal/DefaultSocket;

    .line 61
    .line 62
    new-instance v1, Lokhttp3/ConnectionPool;

    .line 63
    .line 64
    const/16 v2, 0x19

    .line 65
    .line 66
    invoke-direct {v1, v2, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0, v1}, Lokio/internal/DefaultSocket;-><init>(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/captcha/HCaptchaHelper$Callback;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->hCaptchaHelper:Lokio/internal/DefaultSocket;

    .line 73
    .line 74
    return-void
.end method

.method public static getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
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
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, ""

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public final createAccount()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 2
    .line 3
    const-string v1, "captchaHandler"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/captcha/CaptchaHandler;->token:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0, v2}, Lorg/wikipedia/createaccount/CreateAccountActivity;->doCreateAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v2

    .line 30
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getViewModel()Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$doCreateAccount$$inlined$CoroutineExceptionHandler$1;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-direct {v1, p0, v3}, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$doCreateAccount$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;I)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 45
    .line 46
    const/16 v4, 0x1b

    .line 47
    .line 48
    invoke-direct {v3, v4, p0, v2}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x2

    .line 52
    invoke-static {v0, v1, v2, v3, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v2
.end method

.method public final doCreateAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 6
    .line 7
    const-string v1, "binding"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    move-object v9, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v9, v0

    .line 29
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 30
    .line 31
    if-eqz v0, :cond_8

    .line 32
    .line 33
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 36
    .line 37
    invoke-static {v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 42
    .line 43
    if-eqz v0, :cond_7

    .line 44
    .line 45
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 48
    .line 49
    invoke-static {v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 60
    .line 61
    invoke-static {v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getViewModel()Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 70
    .line 71
    const-string v1, "captchaHandler"

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-object v0, v0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object v0, v0, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    .line 80
    .line 81
    move-object v10, v0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move-object v10, v2

    .line 84
    :goto_1
    if-eqz p2, :cond_3

    .line 85
    .line 86
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    move-object/from16 v11, p2

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    :goto_2
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 97
    .line 98
    if-eqz p0, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/wikipedia/captcha/CaptchaHandler;->captchaWord()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    move-object v11, p0

    .line 105
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {v12}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$doCreateAccount$$inlined$CoroutineExceptionHandler$1;

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-direct {v0, v12, v1}, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$doCreateAccount$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;I)V

    .line 125
    .line 126
    .line 127
    new-instance v4, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;

    .line 128
    .line 129
    const/4 v13, 0x0

    .line 130
    move-object v8, p1

    .line 131
    invoke-direct/range {v4 .. v13}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;Lkotlin/coroutines/Continuation;)V

    .line 132
    .line 133
    .line 134
    const/4 v1, 0x2

    .line 135
    invoke-static {p0, v0, v2, v4, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v2

    .line 143
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v2

    .line 147
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v2

    .line 151
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v2

    .line 155
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v2

    .line 159
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v2
.end method

.method public final getViewModel()Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final handleAccountCreationError(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "blocked"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const v0, 0x7f1200e1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/16 v2, 0xc

    .line 21
    .line 22
    invoke-static {p0, v0, v1, v2}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 29
    .line 30
    .line 31
    const p0, 0x7f1200df

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 42
    .line 43
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p0, v0, v1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    const-string p0, "Account creation failed with result "

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object p1, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p0, v0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 25

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
    const v2, 0x7f0c001f

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
    if-eqz v3, :cond_25

    .line 27
    .line 28
    invoke-static {v3}, Lorg/wikipedia/databinding/GroupCaptchaBinding;->bind(Landroid/view/View;)Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const v3, 0x7f09017f

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 40
    .line 41
    if-eqz v4, :cond_24

    .line 42
    .line 43
    const v3, 0x7f090180

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Landroid/widget/Button;

    .line 51
    .line 52
    if-eqz v5, :cond_24

    .line 53
    .line 54
    const v3, 0x7f090181

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 62
    .line 63
    if-eqz v6, :cond_24

    .line 64
    .line 65
    const v3, 0x7f090182

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    .line 73
    .line 74
    if-eqz v7, :cond_24

    .line 75
    .line 76
    const v3, 0x7f090183

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    if-eqz v8, :cond_24

    .line 86
    .line 87
    const v3, 0x7f090184

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    check-cast v11, Landroid/widget/Button;

    .line 95
    .line 96
    if-eqz v11, :cond_24

    .line 97
    .line 98
    const v3, 0x7f090185

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    .line 106
    .line 107
    if-eqz v12, :cond_24

    .line 108
    .line 109
    const v3, 0x7f09020e

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    check-cast v13, Landroid/widget/TextView;

    .line 117
    .line 118
    if-eqz v13, :cond_24

    .line 119
    .line 120
    const v3, 0x7f090265

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    if-eqz v13, :cond_24

    .line 128
    .line 129
    invoke-static {v13}, Lokhttp3/Request$Builder;->bind(Landroid/view/View;)Lokhttp3/Request$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const v13, 0x7f0906cb

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v13}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    check-cast v14, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 141
    .line 142
    if-eqz v14, :cond_23

    .line 143
    .line 144
    const v13, 0x7f090720

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v13}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    check-cast v15, Lorg/wikipedia/views/WikiErrorView;

    .line 152
    .line 153
    if-eqz v15, :cond_23

    .line 154
    .line 155
    const v13, 0x7f09073f

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v13}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v16

    .line 162
    move-object/from16 v13, v16

    .line 163
    .line 164
    check-cast v13, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 165
    .line 166
    if-eqz v13, :cond_22

    .line 167
    .line 168
    move-object/from16 v16, v9

    .line 169
    .line 170
    new-instance v9, Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 171
    .line 172
    check-cast v0, Landroid/widget/FrameLayout;

    .line 173
    .line 174
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    iput-object v2, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v4, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 180
    .line 181
    iput-object v5, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 182
    .line 183
    iput-object v6, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 184
    .line 185
    iput-object v7, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 186
    .line 187
    iput-object v8, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v11, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 190
    .line 191
    iput-object v12, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 192
    .line 193
    iput-object v3, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v14, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v15, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v13, v9, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v9, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 202
    .line 203
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 207
    .line 208
    const-string v9, "binding"

    .line 209
    .line 210
    if-eqz v0, :cond_21

    .line 211
    .line 212
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 217
    .line 218
    .line 219
    sget-object v11, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 220
    .line 221
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 225
    .line 226
    const-string v12, "apps-authentication"

    .line 227
    .line 228
    invoke-direct {v0, v12, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 229
    .line 230
    .line 231
    const-string v13, "create_account"

    .line 232
    .line 233
    invoke-virtual {v0, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iput-object v0, v1, Lorg/wikipedia/activity/BaseActivity;->_instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 237
    .line 238
    new-instance v0, Lorg/wikipedia/captcha/CaptchaHandler;

    .line 239
    .line 240
    iget-object v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 241
    .line 242
    if-eqz v2, :cond_20

    .line 243
    .line 244
    iget-object v3, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v3, Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 247
    .line 248
    iget-object v3, v3, Lorg/wikipedia/databinding/GroupCaptchaBinding;->rootView:Landroid/widget/LinearLayout;

    .line 249
    .line 250
    if-eqz v2, :cond_1f

    .line 251
    .line 252
    iget-object v2, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 253
    .line 254
    move-object v4, v2

    .line 255
    check-cast v4, Landroid/widget/LinearLayout;

    .line 256
    .line 257
    const v2, 0x7f1200d9

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    const v2, 0x7f1200db

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-static {v1}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    const/16 v8, 0x40

    .line 279
    .line 280
    iget-object v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 281
    .line 282
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/captcha/CaptchaHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/caverock/androidsvg/SVGAndroidRenderer;I)V

    .line 283
    .line 284
    .line 285
    iput-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 286
    .line 287
    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    .line 288
    .line 289
    iget-object v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 290
    .line 291
    if-eqz v2, :cond_1e

    .line 292
    .line 293
    iget-object v3, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v3, Landroid/widget/Button;

    .line 296
    .line 297
    if-eqz v2, :cond_1d

    .line 298
    .line 299
    iget-object v4, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 302
    .line 303
    if-eqz v2, :cond_1c

    .line 304
    .line 305
    iget-object v2, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 308
    .line 309
    const/4 v5, 0x2

    .line 310
    new-array v6, v5, [Lcom/google/android/material/textfield/TextInputLayout;

    .line 311
    .line 312
    aput-object v4, v6, v10

    .line 313
    .line 314
    const/4 v4, 0x1

    .line 315
    aput-object v2, v6, v4

    .line 316
    .line 317
    invoke-direct {v0, v3, v6}, Lcom/caverock/androidsvg/CSSParser;-><init>(Landroid/widget/Button;[Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 318
    .line 319
    .line 320
    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    .line 321
    .line 322
    iget-object v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 323
    .line 324
    if-eqz v2, :cond_1b

    .line 325
    .line 326
    iget-object v3, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v3, Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 329
    .line 330
    iget-object v6, v3, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaSubmitButton:Landroid/widget/Button;

    .line 331
    .line 332
    if-eqz v2, :cond_1a

    .line 333
    .line 334
    iget-object v2, v3, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 335
    .line 336
    new-array v3, v4, [Lcom/google/android/material/textfield/TextInputLayout;

    .line 337
    .line 338
    aput-object v2, v3, v10

    .line 339
    .line 340
    invoke-direct {v0, v6, v3}, Lcom/caverock/androidsvg/CSSParser;-><init>(Landroid/widget/Button;[Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 341
    .line 342
    .line 343
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 344
    .line 345
    if-eqz v0, :cond_19

    .line 346
    .line 347
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 350
    .line 351
    new-instance v2, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;

    .line 352
    .line 353
    invoke-direct {v2, v1, v4}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    .line 358
    .line 359
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 360
    .line 361
    if-eqz v0, :cond_18

    .line 362
    .line 363
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 366
    .line 367
    new-instance v2, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;

    .line 368
    .line 369
    invoke-direct {v2, v1, v5}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    .line 374
    .line 375
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 376
    .line 377
    if-eqz v0, :cond_17

    .line 378
    .line 379
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v0, Landroid/widget/Button;

    .line 382
    .line 383
    new-instance v2, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;

    .line 384
    .line 385
    const/4 v3, 0x3

    .line 386
    invoke-direct {v2, v1, v3}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    .line 391
    .line 392
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 393
    .line 394
    if-eqz v0, :cond_16

    .line 395
    .line 396
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v0, Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 399
    .line 400
    iget-object v0, v0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaSubmitButton:Landroid/widget/Button;

    .line 401
    .line 402
    new-instance v2, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;

    .line 403
    .line 404
    const/4 v6, 0x4

    .line 405
    invoke-direct {v2, v1, v6}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    .line 410
    .line 411
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 412
    .line 413
    if-eqz v0, :cond_15

    .line 414
    .line 415
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Landroid/widget/Button;

    .line 418
    .line 419
    new-instance v2, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;

    .line 420
    .line 421
    const/4 v7, 0x5

    .line 422
    invoke-direct {v2, v1, v7}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    .line 427
    .line 428
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 429
    .line 430
    if-eqz v0, :cond_14

    .line 431
    .line 432
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v0, Lokhttp3/Request$Builder;

    .line 435
    .line 436
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v0, Landroid/widget/TextView;

    .line 439
    .line 440
    new-instance v2, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;

    .line 441
    .line 442
    const/4 v7, 0x6

    .line 443
    invoke-direct {v2, v1, v7}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    .line 448
    .line 449
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 450
    .line 451
    if-eqz v0, :cond_13

    .line 452
    .line 453
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v0, Lokhttp3/Request$Builder;

    .line 456
    .line 457
    iget-object v0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v0, Landroid/widget/TextView;

    .line 460
    .line 461
    new-instance v2, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;

    .line 462
    .line 463
    const/4 v7, 0x7

    .line 464
    invoke-direct {v2, v1, v7}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 471
    .line 472
    if-eqz v0, :cond_12

    .line 473
    .line 474
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v0, Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 477
    .line 478
    iget-object v0, v0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 479
    .line 480
    new-instance v2, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda9;

    .line 481
    .line 482
    invoke-direct {v2, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda9;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 486
    .line 487
    .line 488
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 489
    .line 490
    if-eqz v0, :cond_11

    .line 491
    .line 492
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 495
    .line 496
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    if-eqz v0, :cond_0

    .line 501
    .line 502
    new-instance v2, Landroidx/appcompat/widget/SearchView$10;

    .line 503
    .line 504
    invoke-direct {v2, v4, v1}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 508
    .line 509
    .line 510
    goto :goto_0

    .line 511
    :cond_0
    move-object/from16 v2, v16

    .line 512
    .line 513
    :goto_0
    iput-object v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->userNameTextWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 514
    .line 515
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 516
    .line 517
    if-eqz v0, :cond_10

    .line 518
    .line 519
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v0, Lokhttp3/Request$Builder;

    .line 522
    .line 523
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v0, Landroid/widget/TextView;

    .line 526
    .line 527
    new-instance v2, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 528
    .line 529
    new-instance v7, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 530
    .line 531
    const/16 v8, 0xc

    .line 532
    .line 533
    invoke-direct {v7, v8, v1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    invoke-direct {v2, v7}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    const-string v2, "login_request_source"

    .line 547
    .line 548
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    if-nez v0, :cond_1

    .line 553
    .line 554
    const-string v0, ""

    .line 555
    .line 556
    :cond_1
    iput-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->requestSource:Ljava/lang/String;

    .line 557
    .line 558
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 559
    .line 560
    invoke-direct {v0, v12, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 561
    .line 562
    .line 563
    const-string v2, "create_account_form"

    .line 564
    .line 565
    iput-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 566
    .line 567
    invoke-virtual {v0, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    iput-object v0, v1, Lorg/wikipedia/activity/BaseActivity;->_instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 571
    .line 572
    if-nez p1, :cond_2

    .line 573
    .line 574
    invoke-static {v1}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 575
    .line 576
    .line 577
    move-result-object v17

    .line 578
    if-eqz v17, :cond_2

    .line 579
    .line 580
    const-string v0, "invoke_source"

    .line 581
    .line 582
    iget-object v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->requestSource:Ljava/lang/String;

    .line 583
    .line 584
    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 585
    .line 586
    .line 587
    move-result-object v23

    .line 588
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    const/16 v24, 0x7e

    .line 592
    .line 593
    const-string v18, "impression"

    .line 594
    .line 595
    const/16 v19, 0x0

    .line 596
    .line 597
    const/16 v20, 0x0

    .line 598
    .line 599
    const/16 v21, 0x0

    .line 600
    .line 601
    const/16 v22, 0x0

    .line 602
    .line 603
    invoke-static/range {v17 .. v24}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 604
    .line 605
    .line 606
    :cond_2
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 607
    .line 608
    if-eqz v0, :cond_f

    .line 609
    .line 610
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 613
    .line 614
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    if-eqz v0, :cond_3

    .line 619
    .line 620
    new-instance v2, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;

    .line 621
    .line 622
    const-string/jumbo v7, "username"

    .line 623
    .line 624
    .line 625
    invoke-direct {v2, v1, v0, v7, v4}, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 629
    .line 630
    .line 631
    :cond_3
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 632
    .line 633
    if-eqz v0, :cond_e

    .line 634
    .line 635
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 638
    .line 639
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    if-eqz v0, :cond_4

    .line 644
    .line 645
    new-instance v2, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;

    .line 646
    .line 647
    const-string v7, "password"

    .line 648
    .line 649
    invoke-direct {v2, v1, v0, v7, v4}, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 653
    .line 654
    .line 655
    :cond_4
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 656
    .line 657
    if-eqz v0, :cond_d

    .line 658
    .line 659
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 662
    .line 663
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    if-eqz v0, :cond_5

    .line 668
    .line 669
    new-instance v2, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;

    .line 670
    .line 671
    const-string v7, "confirm_password"

    .line 672
    .line 673
    invoke-direct {v2, v1, v0, v7, v4}, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 677
    .line 678
    .line 679
    :cond_5
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 680
    .line 681
    if-eqz v0, :cond_c

    .line 682
    .line 683
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 684
    .line 685
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 686
    .line 687
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    if-eqz v0, :cond_6

    .line 692
    .line 693
    new-instance v2, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;

    .line 694
    .line 695
    const-string v7, "email"

    .line 696
    .line 697
    invoke-direct {v2, v1, v0, v7, v4}, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;-><init>(Lorg/wikipedia/activity/BaseActivity;Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 701
    .line 702
    .line 703
    :cond_6
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    iget-object v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 708
    .line 709
    const/16 v7, 0x8

    .line 710
    .line 711
    if-eqz v0, :cond_9

    .line 712
    .line 713
    if-eqz v2, :cond_8

    .line 714
    .line 715
    iget-object v0, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 716
    .line 717
    check-cast v0, Lokhttp3/Request$Builder;

    .line 718
    .line 719
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 720
    .line 721
    check-cast v0, Landroid/widget/FrameLayout;

    .line 722
    .line 723
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 724
    .line 725
    .line 726
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 727
    .line 728
    if-eqz v0, :cond_7

    .line 729
    .line 730
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 731
    .line 732
    check-cast v0, Lokhttp3/Request$Builder;

    .line 733
    .line 734
    iget-object v0, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 735
    .line 736
    check-cast v0, Landroid/widget/TextView;

    .line 737
    .line 738
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 739
    .line 740
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    new-array v4, v4, [Ljava/lang/Object;

    .line 745
    .line 746
    aput-object v2, v4, v10

    .line 747
    .line 748
    const v2, 0x7f120999

    .line 749
    .line 750
    .line 751
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    .line 761
    .line 762
    goto :goto_1

    .line 763
    :cond_7
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    throw v16

    .line 767
    :cond_8
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    throw v16

    .line 771
    :cond_9
    if-eqz v2, :cond_b

    .line 772
    .line 773
    iget-object v0, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 774
    .line 775
    check-cast v0, Lokhttp3/Request$Builder;

    .line 776
    .line 777
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v0, Landroid/widget/FrameLayout;

    .line 780
    .line 781
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 782
    .line 783
    .line 784
    :goto_1
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 785
    .line 786
    if-eqz v0, :cond_a

    .line 787
    .line 788
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 789
    .line 790
    check-cast v0, Lokhttp3/Request$Builder;

    .line 791
    .line 792
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 793
    .line 794
    check-cast v0, Landroid/widget/TextView;

    .line 795
    .line 796
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    new-instance v2, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 804
    .line 805
    invoke-direct {v2, v6, v1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 806
    .line 807
    .line 808
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/DpKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v1, v5}, Landroid/app/Activity;->setResult(I)V

    .line 812
    .line 813
    .line 814
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    new-instance v2, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 819
    .line 820
    move-object/from16 v4, v16

    .line 821
    .line 822
    invoke-direct {v2, v1, v4, v10}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V

    .line 823
    .line 824
    .line 825
    invoke-static {v0, v4, v4, v2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 826
    .line 827
    .line 828
    return-void

    .line 829
    :cond_a
    move-object/from16 v4, v16

    .line 830
    .line 831
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    throw v4

    .line 835
    :cond_b
    move-object/from16 v4, v16

    .line 836
    .line 837
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    throw v4

    .line 841
    :cond_c
    move-object/from16 v4, v16

    .line 842
    .line 843
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    throw v4

    .line 847
    :cond_d
    move-object/from16 v4, v16

    .line 848
    .line 849
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    throw v4

    .line 853
    :cond_e
    move-object/from16 v4, v16

    .line 854
    .line 855
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    throw v4

    .line 859
    :cond_f
    move-object/from16 v4, v16

    .line 860
    .line 861
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    throw v4

    .line 865
    :cond_10
    move-object/from16 v4, v16

    .line 866
    .line 867
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    throw v4

    .line 871
    :cond_11
    move-object/from16 v4, v16

    .line 872
    .line 873
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    throw v4

    .line 877
    :cond_12
    move-object/from16 v4, v16

    .line 878
    .line 879
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    throw v4

    .line 883
    :cond_13
    move-object/from16 v4, v16

    .line 884
    .line 885
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    throw v4

    .line 889
    :cond_14
    move-object/from16 v4, v16

    .line 890
    .line 891
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    throw v4

    .line 895
    :cond_15
    move-object/from16 v4, v16

    .line 896
    .line 897
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    throw v4

    .line 901
    :cond_16
    move-object/from16 v4, v16

    .line 902
    .line 903
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    throw v4

    .line 907
    :cond_17
    move-object/from16 v4, v16

    .line 908
    .line 909
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    throw v4

    .line 913
    :cond_18
    move-object/from16 v4, v16

    .line 914
    .line 915
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    throw v4

    .line 919
    :cond_19
    move-object/from16 v4, v16

    .line 920
    .line 921
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    throw v4

    .line 925
    :cond_1a
    move-object/from16 v4, v16

    .line 926
    .line 927
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    throw v4

    .line 931
    :cond_1b
    move-object/from16 v4, v16

    .line 932
    .line 933
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    throw v4

    .line 937
    :cond_1c
    move-object/from16 v4, v16

    .line 938
    .line 939
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    throw v4

    .line 943
    :cond_1d
    move-object/from16 v4, v16

    .line 944
    .line 945
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    throw v4

    .line 949
    :cond_1e
    move-object/from16 v4, v16

    .line 950
    .line 951
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    throw v4

    .line 955
    :cond_1f
    move-object/from16 v4, v16

    .line 956
    .line 957
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    throw v4

    .line 961
    :cond_20
    move-object/from16 v4, v16

    .line 962
    .line 963
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    throw v4

    .line 967
    :cond_21
    move-object/from16 v4, v16

    .line 968
    .line 969
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    throw v4

    .line 973
    :cond_22
    const v2, 0x7f09073f

    .line 974
    .line 975
    .line 976
    goto :goto_2

    .line 977
    :cond_23
    move v2, v13

    .line 978
    goto :goto_2

    .line 979
    :cond_24
    move v2, v3

    .line 980
    :cond_25
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    const-string v1, "Missing required view with ID: "

    .line 989
    .line 990
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->hCaptchaHelper:Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/internal/DefaultSocket;->cleanup()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/captcha/CaptchaHandler;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->userNameTextWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v1, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p0, "binding"

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_2
    :goto_0
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    const-string p0, "captchaHandler"

    .line 51
    .line 52
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method

.method public final onStop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final showError(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lokio/Options$Companion;->getInstrumentActionContext(Ljava/lang/Throwable;)Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    const/16 v7, 0x7e

    .line 12
    .line 13
    const-string v1, "error"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const-string v2, "binding"

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 32
    .line 33
    sget v3, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1
.end method

.method public final showProgressBar(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

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
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

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
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 28
    .line 29
    iget-object v0, v0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaSubmitButton:Landroid/widget/Button;

    .line 30
    .line 31
    xor-int/lit8 v3, p1, 0x1

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 43
    .line 44
    iget-object p0, p0, Lorg/wikipedia/databinding/GroupCaptchaBinding;->captchaSubmitButton:Landroid/widget/Button;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    const p1, 0x7f120145

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const p1, 0x7f1200db

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v1
.end method

.method public final validateThenCreateAccount()V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_17

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

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
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 17
    .line 18
    if-eqz v0, :cond_16

    .line 19
    .line 20
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 28
    .line 29
    if-eqz v0, :cond_15

    .line 30
    .line 31
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 39
    .line 40
    if-eqz v0, :cond_14

    .line 41
    .line 42
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 50
    .line 51
    if-eqz v0, :cond_13

    .line 52
    .line 53
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 56
    .line 57
    invoke-static {v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v4, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 62
    .line 63
    if-eqz v4, :cond_12

    .line 64
    .line 65
    iget-object v4, v4, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 68
    .line 69
    invoke-static {v4}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object v5, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 74
    .line 75
    if-eqz v5, :cond_11

    .line 76
    .line 77
    iget-object v5, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    .line 80
    .line 81
    invoke-static {v5}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v6, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 86
    .line 87
    if-eqz v6, :cond_10

    .line 88
    .line 89
    iget-object v6, v6, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 92
    .line 93
    invoke-static {v6}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v0, v4, v5, v6}, Lorg/wikipedia/util/TabUtil;->validateInput(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v4, Lorg/wikipedia/createaccount/CreateAccountActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    aget v0, v4, v0

    .line 108
    .line 109
    const-string/jumbo v4, "validation_error"

    .line 110
    .line 111
    .line 112
    packed-switch v0, :pswitch_data_0

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_0
    invoke-virtual {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccount()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_1
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-eqz v5, :cond_0

    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    const/16 v12, 0xfc

    .line 131
    .line 132
    const-string v6, "impression"

    .line 133
    .line 134
    const-string v7, "create_account_email_form"

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    const/4 v9, 0x0

    .line 138
    const/4 v10, 0x0

    .line 139
    invoke-static/range {v5 .. v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 140
    .line 141
    .line 142
    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 143
    .line 144
    invoke-direct {v0, p0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 150
    .line 151
    iput-boolean v3, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 152
    .line 153
    const v2, 0x7f1201cc

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 157
    .line 158
    .line 159
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const v4, 0x7f1201cb

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iput-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 177
    .line 178
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda11;

    .line 179
    .line 180
    invoke-direct {v1, p0, v3}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 181
    .line 182
    .line 183
    const v2, 0x7f1201ca

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda11;

    .line 190
    .line 191
    const/4 v2, 0x1

    .line 192
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/createaccount/CreateAccountActivity$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 193
    .line 194
    .line 195
    const p0, 0x7f1201c9

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_2
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    if-eqz v3, :cond_1

    .line 210
    .line 211
    const-string v0, "email_invalid"

    .line 212
    .line 213
    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    const/16 v10, 0x7e

    .line 221
    .line 222
    const-string v4, "error"

    .line 223
    .line 224
    const/4 v5, 0x0

    .line 225
    const/4 v6, 0x0

    .line 226
    const/4 v7, 0x0

    .line 227
    const/4 v8, 0x0

    .line 228
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 229
    .line 230
    .line 231
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 232
    .line 233
    if-eqz v0, :cond_3

    .line 234
    .line 235
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 243
    .line 244
    if-eqz v0, :cond_2

    .line 245
    .line 246
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 249
    .line 250
    const v1, 0x7f1200dc

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v1

    .line 265
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v1

    .line 269
    :pswitch_3
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    if-eqz v3, :cond_4

    .line 274
    .line 275
    const-string v0, "password_mismatch"

    .line 276
    .line 277
    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    const/16 v10, 0x7e

    .line 285
    .line 286
    const-string v4, "error"

    .line 287
    .line 288
    const/4 v5, 0x0

    .line 289
    const/4 v6, 0x0

    .line 290
    const/4 v7, 0x0

    .line 291
    const/4 v8, 0x0

    .line 292
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 293
    .line 294
    .line 295
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 296
    .line 297
    if-eqz v0, :cond_6

    .line 298
    .line 299
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 302
    .line 303
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 307
    .line 308
    if-eqz v0, :cond_5

    .line 309
    .line 310
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 313
    .line 314
    const v1, 0x7f1200e8

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw v1

    .line 329
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw v1

    .line 333
    :pswitch_4
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    if-eqz v3, :cond_7

    .line 338
    .line 339
    const-string v0, "password_is_username"

    .line 340
    .line 341
    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    const/16 v10, 0x7e

    .line 349
    .line 350
    const-string v4, "error"

    .line 351
    .line 352
    const/4 v5, 0x0

    .line 353
    const/4 v6, 0x0

    .line 354
    const/4 v7, 0x0

    .line 355
    const/4 v8, 0x0

    .line 356
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 357
    .line 358
    .line 359
    :cond_7
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 360
    .line 361
    if-eqz v0, :cond_9

    .line 362
    .line 363
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 366
    .line 367
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 368
    .line 369
    .line 370
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 371
    .line 372
    if-eqz v0, :cond_8

    .line 373
    .line 374
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 377
    .line 378
    const v1, 0x7f1200e6

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v1

    .line 393
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw v1

    .line 397
    :pswitch_5
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    if-eqz v3, :cond_a

    .line 402
    .line 403
    const-string v0, "password_too_short"

    .line 404
    .line 405
    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    const/16 v10, 0x7e

    .line 413
    .line 414
    const-string v4, "error"

    .line 415
    .line 416
    const/4 v5, 0x0

    .line 417
    const/4 v6, 0x0

    .line 418
    const/4 v7, 0x0

    .line 419
    const/4 v8, 0x0

    .line 420
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 421
    .line 422
    .line 423
    :cond_a
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 424
    .line 425
    if-eqz v0, :cond_c

    .line 426
    .line 427
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 430
    .line 431
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 432
    .line 433
    .line 434
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 435
    .line 436
    if-eqz v0, :cond_b

    .line 437
    .line 438
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 441
    .line 442
    const v1, 0x7f1200e5

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 450
    .line 451
    .line 452
    return-void

    .line 453
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v1

    .line 457
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v1

    .line 461
    :pswitch_6
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    if-eqz v3, :cond_d

    .line 466
    .line 467
    const-string/jumbo v0, "username_invalid"

    .line 468
    .line 469
    .line 470
    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 471
    .line 472
    .line 473
    move-result-object v9

    .line 474
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    const/16 v10, 0x7e

    .line 478
    .line 479
    const-string v4, "error"

    .line 480
    .line 481
    const/4 v5, 0x0

    .line 482
    const/4 v6, 0x0

    .line 483
    const/4 v7, 0x0

    .line 484
    const/4 v8, 0x0

    .line 485
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 486
    .line 487
    .line 488
    :cond_d
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 489
    .line 490
    if-eqz v0, :cond_f

    .line 491
    .line 492
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 495
    .line 496
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 497
    .line 498
    .line 499
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 500
    .line 501
    if-eqz v0, :cond_e

    .line 502
    .line 503
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 506
    .line 507
    const v1, 0x7f1200e9

    .line 508
    .line 509
    .line 510
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object p0

    .line 514
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 515
    .line 516
    .line 517
    return-void

    .line 518
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    throw v1

    .line 522
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    throw v1

    .line 526
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    throw v1

    .line 530
    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    throw v1

    .line 534
    :cond_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    throw v1

    .line 538
    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    throw v1

    .line 542
    :cond_14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    throw v1

    .line 546
    :cond_15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    throw v1

    .line 550
    :cond_16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    throw v1

    .line 554
    :cond_17
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v1

    .line 558
    nop

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
