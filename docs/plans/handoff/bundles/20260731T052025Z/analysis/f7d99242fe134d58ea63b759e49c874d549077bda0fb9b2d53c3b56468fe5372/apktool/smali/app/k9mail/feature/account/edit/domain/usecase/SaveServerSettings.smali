.class public final Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final getAccountState:Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;

.field public final serverSettingsUpdater:Lcom/fsck/k9/account/AccountServerSettingsUpdater;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;Lcom/fsck/k9/account/AccountServerSettingsUpdater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;->getAccountState:Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;->serverSettingsUpdater:Lcom/fsck/k9/account/AccountServerSettingsUpdater;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p3}, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;-><init>(Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p3, v6, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v0, v6, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->label:I

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    if-eq v0, v2, :cond_2

    .line 39
    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object p3

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_2
    iget-boolean p2, v6, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->Z$0:Z

    .line 53
    .line 54
    iget-object p1, v6, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->L$0:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    move-object v2, p1

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, v6, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->L$0:Ljava/lang/String;

    .line 65
    .line 66
    iput-boolean p2, v6, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->Z$0:Z

    .line 67
    .line 68
    iput v2, v6, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->label:I

    .line 69
    .line 70
    iget-object p3, p0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;->getAccountState:Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;

    .line 71
    .line 72
    iget-object p3, p3, Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 73
    .line 74
    check-cast p3, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 75
    .line 76
    iget-object p3, p3, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 77
    .line 78
    iget-object v0, p3, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->uuid:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    if-ne p3, v7, :cond_3

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :goto_2
    check-cast p3, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 90
    .line 91
    if-eqz p2, :cond_5

    .line 92
    .line 93
    iget-object p1, p3, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 94
    .line 95
    :goto_3
    move-object v4, p1

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    iget-object p1, p3, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :goto_4
    iget-object v5, p3, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 101
    .line 102
    if-eqz v4, :cond_7

    .line 103
    .line 104
    iput-object v3, v6, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->L$0:Ljava/lang/String;

    .line 105
    .line 106
    iput-boolean p2, v6, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->Z$0:Z

    .line 107
    .line 108
    iput v1, v6, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$execute$1;->label:I

    .line 109
    .line 110
    move-object v1, p0

    .line 111
    move v3, p2

    .line 112
    invoke-virtual/range {v1 .. v6}, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;->updateServerSettings(Ljava/lang/String;ZLcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-ne p0, v7, :cond_6

    .line 117
    .line 118
    :goto_5
    return-object v7

    .line 119
    :cond_6
    return-object p0

    .line 120
    :cond_7
    const-string p0, "Server settings not found"

    .line 121
    .line 122
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-object v3

    .line 126
    :cond_8
    const-string p0, "Account state for "

    .line 127
    .line 128
    const-string p2, " not found"

    .line 129
    .line 130
    invoke-static {p1, p2, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v3
.end method

.method public final updateServerSettings(Ljava/lang/String;ZLcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p5, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$updateServerSettings$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$updateServerSettings$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$updateServerSettings$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$updateServerSettings$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object p5, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$updateServerSettings$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p5}, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$updateServerSettings$1;-><init>(Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object v0, p5, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$updateServerSettings$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v1, p5, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$updateServerSettings$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput v3, p5, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings$updateServerSettings$1;->label:I

    .line 51
    .line 52
    iget-object p0, p0, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;->serverSettingsUpdater:Lcom/fsck/k9/account/AccountServerSettingsUpdater;

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p5}, Lcom/fsck/k9/account/AccountServerSettingsUpdater;->updateServerSettings(Ljava/lang/String;ZLcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 59
    .line 60
    if-ne v0, p0, :cond_3

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_3
    :goto_2
    check-cast v0, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterResult;

    .line 64
    .line 65
    instance-of p0, v0, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterResult$Failure;

    .line 66
    .line 67
    if-nez p0, :cond_4

    .line 68
    .line 69
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_4
    const-string p0, "Server settings update failed"

    .line 73
    .line 74
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v2
.end method
