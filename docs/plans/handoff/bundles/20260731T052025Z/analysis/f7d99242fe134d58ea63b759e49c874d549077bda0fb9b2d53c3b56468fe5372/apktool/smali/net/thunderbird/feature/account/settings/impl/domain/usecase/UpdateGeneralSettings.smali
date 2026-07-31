.class public final Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final repository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;->repository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateAccountProfile(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->label:I

    .line 28
    .line 29
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings;->repository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x2

    .line 33
    const/4 v4, 0x0

    .line 34
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-eq v1, v2, :cond_2

    .line 39
    .line 40
    if-ne v1, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v4

    .line 52
    :cond_2
    iget-object p2, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->L$1:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    iget-object p1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 55
    .line 56
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;->getById(Lnet/thunderbird/feature/account/AccountId;)Lkotlinx/coroutines/flow/Flow;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iput-object p1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 68
    .line 69
    iput-object p2, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->L$1:Lkotlin/jvm/functions/Function1;

    .line 70
    .line 71
    iput v2, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->label:I

    .line 72
    .line 73
    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    if-ne p3, v5, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    :goto_1
    check-cast p3, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 81
    .line 82
    if-nez p3, :cond_5

    .line 83
    .line 84
    new-instance p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 85
    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string p3, "Account profile not found for accountId: "

    .line 89
    .line 90
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 104
    .line 105
    invoke-direct {p1, p0, v4}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-object p1

    .line 109
    :cond_5
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 114
    .line 115
    iput-object v4, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 116
    .line 117
    iput-object v4, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->L$1:Lkotlin/jvm/functions/Function1;

    .line 118
    .line 119
    iput v3, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$updateAccountProfile$1;->label:I

    .line 120
    .line 121
    iget-object p0, p0, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;->localDataSource:Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 122
    .line 123
    invoke-virtual {p0, p1, v0}, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;->update(Lnet/thunderbird/feature/account/profile/AccountProfile;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    if-ne p0, v5, :cond_6

    .line 128
    .line 129
    :goto_2
    return-object v5

    .line 130
    :cond_6
    :goto_3
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 131
    .line 132
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 133
    .line 134
    invoke-direct {p0, p1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-object p0
.end method
