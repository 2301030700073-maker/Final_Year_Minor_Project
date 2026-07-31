.class public final Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $accountUuid:Ljava/lang/String;

.field public final synthetic $authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

.field public final synthetic $isIncoming:Z

.field public final synthetic $serverSettings:Lcom/fsck/k9/mail/ServerSettings;

.field public final synthetic this$0:Lcom/fsck/k9/account/AccountServerSettingsUpdater;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/account/AccountServerSettingsUpdater;Ljava/lang/String;ZLcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->this$0:Lcom/fsck/k9/account/AccountServerSettingsUpdater;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$accountUuid:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$isIncoming:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 4
    .line 5
    iget-object v5, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->this$0:Lcom/fsck/k9/account/AccountServerSettingsUpdater;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$accountUuid:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v3, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$isIncoming:Z

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;-><init>(Lcom/fsck/k9/account/AccountServerSettingsUpdater;Ljava/lang/String;ZLcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->this$0:Lcom/fsck/k9/account/AccountServerSettingsUpdater;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/fsck/k9/account/AccountServerSettingsUpdater;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 7
    .line 8
    check-cast p1, Lcom/fsck/k9/Preferences;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$accountUuid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance p0, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterResult$Failure;

    .line 19
    .line 20
    new-instance p1, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterFailure$AccountNotFound;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterFailure$AccountNotFound;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterResult$Failure;-><init>(Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterFailure;)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    iget-boolean v3, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$isIncoming:Z

    .line 31
    .line 32
    iget-object v4, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iget-object v3, v4, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 37
    .line 38
    const-string v5, "imap"

    .line 39
    .line 40
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-static {v4}, Landroidx/core/util/DebugUtils;->isUseCompression(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setUseCompression(Z)V

    .line 51
    .line 52
    .line 53
    invoke-static {v4}, Landroidx/core/util/DebugUtils;->isSendClientInfo(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSendClientInfoEnabled(Z)V

    .line 58
    .line 59
    .line 60
    invoke-static {v4}, Landroidx/core/util/DebugUtils;->getAutoDetectNamespace(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-static {v4}, Landroidx/core/util/DebugUtils;->getPathPrefix(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-instance v6, Lkotlin/Pair;

    .line 73
    .line 74
    const-string v7, "autoDetectNamespace"

    .line 75
    .line 76
    invoke-direct {v6, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v3, Lkotlin/Pair;

    .line 80
    .line 81
    const-string v7, "pathPrefix"

    .line 82
    .line 83
    invoke-direct {v3, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const/4 v5, 0x2

    .line 87
    new-array v5, v5, [Lkotlin/Pair;

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    aput-object v6, v5, v7

    .line 91
    .line 92
    const/4 v6, 0x1

    .line 93
    aput-object v3, v5, v6

    .line 94
    .line 95
    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/16 v5, 0xff

    .line 100
    .line 101
    invoke-static {v4, v2, v2, v3, v5}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iput-object v3, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalIncomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iput-object v4, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalIncomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iput-object v4, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalOutgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 115
    .line 116
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;->$authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 117
    .line 118
    if-eqz p0, :cond_3

    .line 119
    .line 120
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;->value:Ljava/lang/String;

    .line 121
    .line 122
    :cond_3
    invoke-virtual {v1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOAuthState(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v1}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 126
    .line 127
    .line 128
    new-instance p0, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterResult$Success;

    .line 129
    .line 130
    invoke-direct {p0, v0}, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterResult$Success;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object p0
.end method
