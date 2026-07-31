.class public final Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final localDataSource:Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;->localDataSource:Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getById(Lnet/thunderbird/feature/account/AccountId;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;->localDataSource:Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 5
    .line 6
    iget-object v0, p0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
