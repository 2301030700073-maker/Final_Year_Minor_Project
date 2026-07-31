.class public final Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountStateLoader:Lcom/fsck/k9/account/AccountStateLoader;

.field public final accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/account/AccountStateLoader;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;->accountStateLoader:Lcom/fsck/k9/account/AccountStateLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;->label:I

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
    iput v1, v0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;-><init>(Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;->label:I

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
    iget-object p1, v0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;->L$0:Ljava/lang/String;

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
    return-object v2

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, v0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;->L$0:Ljava/lang/String;

    .line 51
    .line 52
    iput v3, v0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState$execute$1;->label:I

    .line 53
    .line 54
    iget-object p2, p0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;->accountStateLoader:Lcom/fsck/k9/account/AccountStateLoader;

    .line 55
    .line 56
    invoke-virtual {p2, p1, v0}, Lcom/fsck/k9/account/AccountStateLoader;->loadAccountState(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 61
    .line 62
    if-ne p2, v0, :cond_3

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    :goto_1
    check-cast p2, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    iget-object p0, p0, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 70
    .line 71
    check-cast p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 72
    .line 73
    iput-object p2, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 74
    .line 75
    return-object p2

    .line 76
    :cond_4
    const-string p0, "Account state for "

    .line 77
    .line 78
    const-string p2, " not found"

    .line 79
    .line 80
    invoke-static {p1, p2, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v2
.end method
