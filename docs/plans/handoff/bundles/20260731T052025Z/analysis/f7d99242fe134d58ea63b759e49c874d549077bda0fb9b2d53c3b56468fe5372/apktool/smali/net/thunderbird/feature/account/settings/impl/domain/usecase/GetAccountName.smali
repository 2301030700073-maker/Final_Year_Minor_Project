.class public final Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;
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
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;->repository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName;->repository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;->getById(Lnet/thunderbird/feature/account/AccountId;)Lkotlinx/coroutines/flow/Flow;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, p1, v1}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/GetAccountName$invoke$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lnet/thunderbird/feature/account/AccountId;I)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
