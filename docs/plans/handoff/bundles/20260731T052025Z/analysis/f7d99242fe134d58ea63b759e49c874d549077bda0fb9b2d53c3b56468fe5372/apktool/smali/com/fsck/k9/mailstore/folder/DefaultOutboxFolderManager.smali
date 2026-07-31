.class public final Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final outboxFolderIdCache:Lnet/thunderbird/core/common/cache/TimeLimitedCache;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/LocalStoreProvider;Lnet/thunderbird/core/common/cache/TimeLimitedCache;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->outboxFolderIdCache:Lnet/thunderbird/core/common/cache/TimeLimitedCache;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 20
    .line 21
    return-void
.end method

.method public static final access$createLocalStore(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)Lcom/fsck/k9/mailstore/LocalStore;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 2
    .line 3
    iget-object v1, p1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstanceByLegacyAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "Account with id "

    .line 23
    .line 24
    const-string v0, " not found"

    .line 25
    .line 26
    invoke-static {p1, v0, p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method


# virtual methods
.method public final getOutboxFolderId(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    new-instance v0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 8
    .line 9
    const-string v2, "DefaultOutboxFolderManager"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x2

    .line 13
    invoke-static {v1, v2, v3, v0, v4}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->outboxFolderIdCache:Lnet/thunderbird/core/common/cache/TimeLimitedCache;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v5, v0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->cache:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;

    .line 31
    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v6, v6, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->expiresAt:Lkotlin/time/Instant;

    .line 36
    .line 37
    iget-object v0, v0, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->clock:Lkotlin/time/Clock;

    .line 38
    .line 39
    invoke-interface {v0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-wide v7, v6, Lkotlin/time/Instant;->epochSeconds:J

    .line 50
    .line 51
    iget-wide v9, v0, Lkotlin/time/Instant;->epochSeconds:J

    .line 52
    .line 53
    invoke-static {v7, v8, v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget v6, v6, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 61
    .line 62
    iget v0, v0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 63
    .line 64
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    :goto_0
    if-gez v7, :cond_2

    .line 69
    .line 70
    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    new-instance p0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    const/16 p1, 0xc

    .line 84
    .line 85
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2, v3, p0, v4}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 89
    .line 90
    .line 91
    iget-object p0, v0, Lnet/thunderbird/core/common/cache/TimeLimitedCache$Entry;->value:Ljava/lang/Long;

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_3
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 95
    .line 96
    const/16 v1, 0xf

    .line 97
    .line 98
    invoke-direct {v0, p0, p1, v3, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 102
    .line 103
    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method
