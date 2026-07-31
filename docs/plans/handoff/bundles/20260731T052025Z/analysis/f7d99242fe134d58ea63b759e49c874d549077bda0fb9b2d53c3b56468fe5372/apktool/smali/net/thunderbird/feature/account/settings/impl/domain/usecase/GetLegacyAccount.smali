.class public final Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;->repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount$invoke$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount$invoke$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount$invoke$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount;->repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 52
    .line 53
    iget-object p0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iput v3, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetLegacyAccount$invoke$1;->label:I

    .line 60
    .line 61
    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 66
    .line 67
    if-ne p2, p0, :cond_3

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_3
    :goto_1
    check-cast p2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 75
    .line 76
    invoke-direct {p0, p2}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_4
    new-instance p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 81
    .line 82
    const-string p1, "Account not found"

    .line 83
    .line 84
    invoke-direct {p0, p1}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 88
    .line 89
    invoke-direct {p1, p0, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-object p1
.end method
