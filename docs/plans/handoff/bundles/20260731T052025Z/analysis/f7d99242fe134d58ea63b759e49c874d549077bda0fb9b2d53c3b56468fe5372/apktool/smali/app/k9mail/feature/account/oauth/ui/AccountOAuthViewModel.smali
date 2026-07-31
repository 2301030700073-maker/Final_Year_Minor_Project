.class public final Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;


# instance fields
.field public final checkIsGoogleSignIn:Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;

.field public final finishOAuthSignIn:Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;

.field public final getOAuthRequestIntent:Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;Lnet/thunderbird/core/logging/Logger;)V
    .locals 3

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x3f

    .line 5
    .line 6
    invoke-direct {v0, v2, v1, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->getOAuthRequestIntent:Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 13
    .line 14
    iput-object p2, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->finishOAuthSignIn:Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;

    .line 15
    .line 16
    iput-object p3, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->checkIsGoogleSignIn:Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;

    .line 17
    .line 18
    iput-object p4, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final event(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnOAuthResult;

    .line 5
    .line 6
    const/16 v1, 0x2f

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    check-cast p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnOAuthResult;

    .line 15
    .line 16
    iget v0, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnOAuthResult;->resultCode:I

    .line 17
    .line 18
    iget-object p1, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnOAuthResult;->data:Landroid/content/Intent;

    .line 19
    .line 20
    const/4 v5, -0x1

    .line 21
    if-ne v0, v5, :cond_1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/16 v6, 0x1f

    .line 37
    .line 38
    invoke-static {v1, v3, v2, v5, v6}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->copy$default(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;ZI)Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v4, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 53
    .line 54
    const/16 v3, 0x16

    .line 55
    .line 56
    invoke-direct {v1, p0, p1, v2, v3}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x3

    .line 60
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    move-object p1, p0

    .line 69
    check-cast p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;->INSTANCE:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;

    .line 75
    .line 76
    invoke-static {p1, v3, v0, v3, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->copy$default(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;ZI)Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v4, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_1

    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    sget-object v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnBackClicked;->INSTANCE$2:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnBackClicked;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {p0}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->onSignIn()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    sget-object v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnBackClicked;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    sget-object p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateBack;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    sget-object v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnBackClicked;->INSTANCE$1:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnBackClicked;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    :cond_5
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    move-object v0, p1

    .line 126
    check-cast v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v3, v2, v3, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->copy$default(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;ZI)Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v4, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    invoke-virtual {p0}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->onSignIn()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_6
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final bridge synthetic event(Ljava/lang/Object;)V
    .locals 0

    .line 149
    check-cast p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event;

    invoke-virtual {p0, p1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->event(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event;)V

    return-void
.end method

.method public final initState(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->checkIsGoogleSignIn:Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;->domainList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v4, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v0, v3

    .line 48
    :cond_2
    :goto_0
    iget-object v1, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 49
    .line 50
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v4, v2

    .line 55
    check-cast v4, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    const/16 v5, 0x37

    .line 62
    .line 63
    invoke-static {p1, v0, v4, v3, v5}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->copy$default(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;ZI)Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v1, v2, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    return-void
.end method

.method public final onSignIn()V
    .locals 6

    .line 1
    sget-object v0, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$NotSupported;->INSTANCE$1:Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$NotSupported;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->getOAuthRequestIntent:Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 6
    .line 7
    iget-object v3, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 8
    .line 9
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 14
    .line 15
    iget-object v3, v3, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->hostname:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 18
    .line 19
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 24
    .line 25
    iget-object v1, v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->emailAddress:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3, v1}, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;->execute(Ljava/lang/String;Ljava/lang/String;)Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult;

    .line 28
    .line 29
    .line 30
    move-result-object v1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    new-instance v2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/16 v3, 0x9

    .line 36
    .line 37
    invoke-direct {v2, v3}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    iget-object v4, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-static {v4, v5, v1, v2, v3}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 45
    .line 46
    .line 47
    move-object v1, v0

    .line 48
    :goto_0
    sget-object v2, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$NotSupported;->INSTANCE:Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$NotSupported;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 57
    .line 58
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v2, v1

    .line 63
    check-cast v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget-object v3, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;->INSTANCE$2:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;

    .line 69
    .line 70
    const/16 v4, 0x2f

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-static {v2, v5, v3, v5, v4}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->copy$default(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;ZI)Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    sget-object v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;->INSTANCE$1:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error$Canceled;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->updateErrorState(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    instance-of v0, v1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$Success;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    new-instance v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$LaunchOAuth;

    .line 101
    .line 102
    check-cast v1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$Success;

    .line 103
    .line 104
    iget-object v1, v1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$Success;->intent:Landroid/content/Intent;

    .line 105
    .line 106
    invoke-direct {v0, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$LaunchOAuth;-><init>(Landroid/content/Intent;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-void

    .line 113
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final updateErrorState(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;)V
    .locals 5

    .line 1
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/16 v3, 0xf

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v2, v4, p1, v4, v3}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->copy$default(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;ZI)Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-void
.end method
