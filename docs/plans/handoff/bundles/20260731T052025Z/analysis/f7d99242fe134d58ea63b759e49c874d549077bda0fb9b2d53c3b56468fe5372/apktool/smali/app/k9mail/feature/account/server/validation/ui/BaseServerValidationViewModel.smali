.class public abstract Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

.field public final authorizationStateRepository:Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;

.field public final certificateErrorRepository:Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

.field public final isIncomingValidation:Z

.field public final oAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

.field public final validateServerSettings:Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Z)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 3
    .line 4
    iget-object v0, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 5
    .line 6
    invoke-static {v0, p6}, Landroidx/sqlite/SQLite;->toServerValidationState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;Z)Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 14
    .line 15
    iput-object p2, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->validateServerSettings:Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;

    .line 16
    .line 17
    iput-object p3, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->authorizationStateRepository:Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;

    .line 18
    .line 19
    iput-object p4, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->certificateErrorRepository:Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

    .line 20
    .line 21
    iput-object p5, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->oAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 22
    .line 23
    iput-boolean p6, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->isIncomingValidation:Z

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;->INSTANCE$1:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/16 v8, 0x8

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-class v4, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;

    .line 21
    .line 22
    const-string v5, "loadAccountStateAndValidate"

    .line 23
    .line 24
    const-string v6, "loadAccountStateAndValidate()V"

    .line 25
    .line 26
    move-object v3, p0

    .line 27
    invoke-direct/range {v1 .. v8}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->handleOneTimeEvent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    move-object v3, p0

    .line 35
    instance-of p0, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnOAuthResult;

    .line 36
    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    check-cast p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnOAuthResult;

    .line 40
    .line 41
    iget-object p0, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnOAuthResult;->result:Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult;

    .line 42
    .line 43
    instance-of p1, p0, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult$Success;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    check-cast p0, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult$Success;

    .line 48
    .line 49
    iget-object v7, p0, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult$Success;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 50
    .line 51
    iget-object p0, v3, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 52
    .line 53
    check-cast p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    const/16 v11, 0xef

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    invoke-static/range {v4 .. v11}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->copy$default(Lapp/k9mail/feature/account/common/domain/entity/AccountState;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;I)Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 72
    .line 73
    :cond_1
    iget-object p0, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 74
    .line 75
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    move-object v4, p1

    .line 80
    check-cast v4, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const/4 v8, 0x0

    .line 86
    const/16 v9, 0x3b

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    invoke-static/range {v4 .. v9}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->copy$default(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZZLapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;ZI)Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_1

    .line 100
    .line 101
    invoke-virtual {v3}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->validateServerSettings()V

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void

    .line 105
    :cond_3
    sget-object p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;->INSTANCE$5:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    invoke-virtual {v3}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->onValidateConfig()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    sget-object p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;->INSTANCE$3:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;

    .line 118
    .line 119
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_5

    .line 124
    .line 125
    invoke-virtual {v3}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->navigateNext$3()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    sget-object p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;->INSTANCE:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_6

    .line 136
    .line 137
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 142
    .line 143
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    .line 144
    .line 145
    .line 146
    sget-object p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Effect$NavigateBack;

    .line 147
    .line 148
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_6
    sget-object p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;->INSTANCE$4:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;

    .line 153
    .line 154
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-eqz p0, :cond_7

    .line 159
    .line 160
    invoke-virtual {v3}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->onRetry$1()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_7
    sget-object p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;->INSTANCE$2:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Event$OnBackClicked;

    .line 165
    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-eqz p0, :cond_8

    .line 171
    .line 172
    invoke-virtual {v3}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->onRetry$1()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final navigateNext$3()V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Effect$NavigateNext;->INSTANCE:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Effect$NavigateNext;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onRetry$1()V
    .locals 8

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
    check-cast v2, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/16 v7, 0x2f

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v2 .. v7}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->copy$default(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZZLapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;ZI)Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->onValidateConfig()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onValidateConfig()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    .line 3
    iget-object v1, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 10
    .line 11
    iget-boolean v1, v1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isSuccess:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->navigateNext$3()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 20
    .line 21
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 26
    .line 27
    iget-object v0, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    sget-object v1, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    .line 36
    .line 37
    if-ne v0, v1, :cond_6

    .line 38
    .line 39
    iget-object v0, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 40
    .line 41
    check-cast v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 42
    .line 43
    iget-object v0, v0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 44
    .line 45
    iget-object v0, v0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    iget-object v1, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->authorizationStateRepository:Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :try_start_0
    iget-object v0, v0, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;->value:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-static {v0}, Lnet/openid/appauth/AuthState;->jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/AuthState;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance v0, Lnet/openid/appauth/AuthState;

    .line 66
    .line 67
    invoke-direct {v0}, Lnet/openid/appauth/AuthState;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_1
    const-string v1, "Error deserializing AuthorizationState"

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lnet/openid/appauth/AuthState;

    .line 80
    .line 81
    invoke-direct {v0}, Lnet/openid/appauth/AuthState;-><init>()V

    .line 82
    .line 83
    .line 84
    :goto_2
    iget-object v1, v0, Lnet/openid/appauth/AuthState;->mAuthorizationException:Lnet/openid/appauth/AuthorizationException;

    .line 85
    .line 86
    if-nez v1, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0}, Lnet/openid/appauth/AuthState;->getAccessToken()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Lnet/openid/appauth/AuthState;->getIdToken()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->validateServerSettings()V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    invoke-virtual {p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->startOAuthSignIn()V

    .line 105
    .line 106
    .line 107
    :goto_3
    return-void

    .line 108
    :cond_5
    invoke-virtual {p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->startOAuthSignIn()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6
    invoke-virtual {p0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->validateServerSettings()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final startOAuthSignIn()V
    .locals 10

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    .line 3
    iget-object v1, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 10
    .line 11
    iget-object v1, v1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 20
    .line 21
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 26
    .line 27
    iget-object v0, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->emailAddress:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v2, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 35
    .line 36
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    move-object v4, v3

    .line 41
    check-cast v4, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const/16 v9, 0x3b

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-static/range {v4 .. v9}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->copy$default(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZZLapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;ZI)Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v2, v3, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    new-instance v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 63
    .line 64
    const/16 v3, 0x3c

    .line 65
    .line 66
    invoke-direct {v2, v3, v1, v0}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->oAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 70
    .line 71
    check-cast p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->initState(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    :goto_1
    new-instance v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$UnknownError;

    .line 78
    .line 79
    const-string v1, "Hostname or email address not set"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$UnknownError;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final updateError(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$CertificateError;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 6
    .line 7
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 8
    .line 9
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 14
    .line 15
    iget-object v0, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 22
    .line 23
    iget v0, v0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 24
    .line 25
    move-object v3, p1

    .line 26
    check-cast v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$CertificateError;

    .line 27
    .line 28
    iget-object v3, v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$CertificateError;->certificateChain:Ljava/util/List;

    .line 29
    .line 30
    invoke-direct {v1, v2, v0, v3}, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->certificateErrorRepository:Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object v1, v0, Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;->serverCertificateError:Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "Required value was null."

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 48
    .line 49
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v2, v1

    .line 54
    check-cast v2, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x7

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    move-object v5, p1

    .line 64
    invoke-static/range {v2 .. v7}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->copy$default(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZZLapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;ZI)Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    move-object p1, v5

    .line 76
    goto :goto_0
.end method

.method public final validateServerSettings()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel$updateSuccess$2;-><init>(Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x3

    .line 13
    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 14
    .line 15
    .line 16
    return-void
.end method
