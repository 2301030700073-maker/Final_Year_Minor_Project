.class public final Lcom/fsck/k9/backend/BackendManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final backendCache:Ljava/util/LinkedHashMap;

.field public final backendFactories:Ljava/util/LinkedHashMap;

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/backend/BackendManager;->backendFactories:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/backend/BackendManager;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 7
    .line 8
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/fsck/k9/backend/BackendManager;->backendCache:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/fsck/k9/backend/BackendManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getBackend(Lnet/thunderbird/feature/account/AccountId;)Lcom/fsck/k9/backend/api/Backend;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/backend/BackendManager;->backendCache:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/backend/BackendManager;->backendCache:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    iget-object v2, p1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/fsck/k9/backend/BackendContainer;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/fsck/k9/backend/BackendManager;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getByIdSync(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v3, v1, Lcom/fsck/k9/backend/BackendContainer;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 32
    .line 33
    iget-object v4, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/ServerSettings;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    iget-object v3, v1, Lcom/fsck/k9/backend/BackendContainer;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 42
    .line 43
    iget-object v4, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/ServerSettings;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    iget-object p0, v1, Lcom/fsck/k9/backend/BackendContainer;->backend:Lcom/fsck/k9/backend/api/Backend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-object p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    :try_start_1
    iget-object v1, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/fsck/k9/backend/BackendManager;->backendFactories:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lnet/thunderbird/backend/api/BackendFactory;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v3, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 72
    .line 73
    invoke-interface {v1, v3}, Lnet/thunderbird/backend/api/BackendFactory;->createBackend(Lnet/thunderbird/feature/account/AccountId;)Lcom/fsck/k9/backend/api/Backend;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v3, p0, Lcom/fsck/k9/backend/BackendManager;->backendCache:Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    iget-object v4, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v5, Lcom/fsck/k9/backend/BackendContainer;

    .line 82
    .line 83
    iget-object v6, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 84
    .line 85
    iget-object v2, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 86
    .line 87
    invoke-direct {v5, v1, v6, v2}, Lcom/fsck/k9/backend/BackendContainer;-><init>(Lcom/fsck/k9/backend/api/Backend;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    monitor-exit v0

    .line 94
    invoke-virtual {p0, p1}, Lcom/fsck/k9/backend/BackendManager;->notifyListeners(Lnet/thunderbird/feature/account/AccountId;)V

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    const-string p1, "Unsupported account type"

    .line 101
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v2, "Account not found: "

    .line 111
    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :goto_0
    monitor-exit v0

    .line 131
    throw p0
.end method

.method public final notifyListeners(Lnet/thunderbird/feature/account/AccountId;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/BackendManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/fsck/k9/controller/push/PushController$initInBackground$2;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/fsck/k9/controller/push/PushController$initInBackground$2;->$tmp0:Lcom/fsck/k9/controller/push/PushController;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/fsck/k9/controller/push/PushController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/fsck/k9/controller/push/PushController;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 33
    .line 34
    new-instance v3, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 35
    .line 36
    const/16 v4, 0x1c

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-direct {v3, v0, p1, v5, v4}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-static {v1, v2, v5, v3, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method
