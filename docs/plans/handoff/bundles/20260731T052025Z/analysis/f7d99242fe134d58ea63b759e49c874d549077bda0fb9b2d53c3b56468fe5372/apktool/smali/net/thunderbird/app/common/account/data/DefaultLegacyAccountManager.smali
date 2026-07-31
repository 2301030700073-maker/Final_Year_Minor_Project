.class public final Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/account/api/AccountManager;


# instance fields
.field public final accountDataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountDataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 5
    .line 6
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountDataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;->toDomain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final getAccounts()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 35
    .line 36
    iget-object v3, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountDataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;->toDomain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-object v1
.end method

.method public final getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 11
    .line 12
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v1, v0, p1, v2, v3}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, v0, Lcom/fsck/k9/Preferences;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-direct {v0, p1, p0, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;I)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public final getByIdSync(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountDataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;->toDto(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 11
    .line 12
    iget-object p0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 13
    .line 14
    check-cast p0, Lcom/fsck/k9/Preferences;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
