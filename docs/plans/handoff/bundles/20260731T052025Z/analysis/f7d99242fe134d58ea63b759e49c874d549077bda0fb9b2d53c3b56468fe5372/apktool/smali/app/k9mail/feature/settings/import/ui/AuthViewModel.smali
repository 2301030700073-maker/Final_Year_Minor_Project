.class public final Lapp/k9mail/feature/settings/import/ui/AuthViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public authService:Lnet/openid/appauth/AuthorizationService;

.field public final authState:Lnet/openid/appauth/AuthState;

.field public final getOAuthRequestIntent:Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public resultObserver:Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;Lnet/thunderbird/core/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 5
    .line 6
    iput-object p3, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->getOAuthRequestIntent:Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 7
    .line 8
    iput-object p4, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 9
    .line 10
    new-instance p1, Lnet/openid/appauth/AuthState;

    .line 11
    .line 12
    invoke-direct {p1}, Lnet/openid/appauth/AuthState;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->authState:Lnet/openid/appauth/AuthState;

    .line 16
    .line 17
    sget-object p1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/StateFlowImpl;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 30
    .line 31
    return-void
.end method

.method public static final access$startLogin(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    instance-of v1, p2, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$startLogin$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$startLogin$1;

    .line 9
    .line 10
    iget v2, v1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$startLogin$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$startLogin$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$startLogin$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$startLogin$1;-><init>(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$startLogin$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$startLogin$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v4

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 51
    .line 52
    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 53
    .line 54
    new-instance v2, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;

    .line 55
    .line 56
    invoke-direct {v2, p0, p1, v4, v3}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;-><init>(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/coroutines/Continuation;I)V

    .line 57
    .line 58
    .line 59
    iput v3, v1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$startLogin$1;->label:I

    .line 60
    .line 61
    invoke-static {p2, v2, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 66
    .line 67
    if-ne p2, p1, :cond_3

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_3
    :goto_1
    check-cast p2, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult;

    .line 71
    .line 72
    sget-object p1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$NotSupported;->INSTANCE:Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$NotSupported;

    .line 73
    .line 74
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    move-object p1, p0

    .line 85
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState;

    .line 86
    .line 87
    sget-object p1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE$3:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 88
    .line 89
    invoke-virtual {v0, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    sget-object p1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$NotSupported;->INSTANCE$1:Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$NotSupported;

    .line 97
    .line 98
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_7

    .line 103
    .line 104
    :cond_6
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    move-object p1, p0

    .line 109
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState;

    .line 110
    .line 111
    sget-object p1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE$1:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 112
    .line 113
    invoke-virtual {v0, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_6

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    instance-of p1, p2, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$Success;

    .line 121
    .line 122
    if-eqz p1, :cond_a

    .line 123
    .line 124
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->resultObserver:Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;

    .line 125
    .line 126
    if-eqz p0, :cond_9

    .line 127
    .line 128
    check-cast p2, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$Success;

    .line 129
    .line 130
    iget-object p1, p2, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$Success;->intent:Landroid/content/Intent;

    .line 131
    .line 132
    iget-object p2, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;->authorizationLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 133
    .line 134
    if-eqz p2, :cond_8

    .line 135
    .line 136
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;->authRequestIntent:Landroid/content/Intent;

    .line 141
    .line 142
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_9
    const-string p0, "resultObserver"

    .line 146
    .line 147
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v4

    .line 151
    :cond_a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 152
    .line 153
    .line 154
    return-object v4
.end method


# virtual methods
.method public final declared-synchronized onCleared()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->authService:Lnet/openid/appauth/AuthorizationService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationService;->dispose()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->authService:Lnet/openid/appauth/AuthorizationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method
