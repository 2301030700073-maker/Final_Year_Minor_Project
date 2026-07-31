.class public final Lcom/fsck/k9/controller/push/AccountPushController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountId:Lnet/thunderbird/feature/account/AccountId;

.field public final backendManager:Lcom/fsck/k9/backend/BackendManager;

.field public volatile backendPusher:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

.field public final backendPusherCallback:Lcom/fsck/k9/mailstore/LocalStore$7;

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/backend/BackendManager;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/mailstore/LocalStore$7;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/core/logging/Logger;)V
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
    iput-object p1, p0, Lcom/fsck/k9/controller/push/AccountPushController;->backendManager:Lcom/fsck/k9/backend/BackendManager;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/fsck/k9/controller/push/AccountPushController;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/fsck/k9/controller/push/AccountPushController;->backendPusherCallback:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/fsck/k9/controller/push/AccountPushController;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/fsck/k9/controller/push/AccountPushController;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/fsck/k9/controller/push/AccountPushController;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final reconnect()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/push/AccountPushController;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    const-string v1, "AccountPushController"

    .line 4
    .line 5
    new-instance v2, Lcom/fsck/k9/controller/push/AccountPushController$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-direct {v2, p0, v3}, Lcom/fsck/k9/controller/push/AccountPushController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/push/AccountPushController;I)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v1, v4, v2, v3}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/controller/push/AccountPushController;->backendPusher:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 16
    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    const-string v0, "ImapBackendPusher.reconnect()"

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->lock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/fsck/k9/backend/imap/ImapFolderPusher;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->stop()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolderSleeping:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->cancel()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolderSleeping:Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    monitor-exit v0

    .line 95
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->closeAllConnections()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->updateFolders$1()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_2
    monitor-exit v0

    .line 105
    throw p0

    .line 106
    :cond_2
    return-void
.end method

.method public final start()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/push/AccountPushController;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Lcom/fsck/k9/controller/push/AccountPushController$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/controller/push/AccountPushController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/push/AccountPushController;I)V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const-string v4, "AccountPushController"

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static {v0, v4, v5, v1, v3}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/controller/push/AccountPushController;->backendManager:Lcom/fsck/k9/backend/BackendManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/controller/push/AccountPushController;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/fsck/k9/backend/BackendManager;->getBackend(Lnet/thunderbird/feature/account/AccountId;)Lcom/fsck/k9/backend/api/Backend;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/fsck/k9/controller/push/AccountPushController;->backendPusherCallback:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/fsck/k9/backend/api/Backend;->createPusher(Lcom/fsck/k9/mailstore/LocalStore$7;)Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 31
    .line 32
    new-instance v3, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-direct {v3, v0, v5, v4}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;Lkotlin/coroutines/Continuation;I)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    invoke-static {v1, v5, v5, v3, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;

    .line 43
    .line 44
    invoke-direct {v3, v0, v5, v2}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;Lkotlin/coroutines/Continuation;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v5, v5, v3, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/fsck/k9/controller/push/AccountPushController;->backendPusher:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/fsck/k9/controller/push/AccountPushController;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 53
    .line 54
    new-instance v1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 55
    .line 56
    const/16 v2, 0xe

    .line 57
    .line 58
    invoke-direct {v1, p0, v5, v2}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v5, v5, v1, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final stop()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/push/AccountPushController;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    const-string v1, "AccountPushController"

    .line 4
    .line 5
    new-instance v2, Lcom/fsck/k9/controller/push/AccountPushController$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, p0, v3}, Lcom/fsck/k9/controller/push/AccountPushController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/push/AccountPushController;I)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static {v0, v1, v5, v2, v4}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/controller/push/AccountPushController;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 17
    .line 18
    invoke-static {v0, v5}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/fsck/k9/controller/push/AccountPushController;->backendPusher:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string v1, "ImapBackendPusher.stop()"

    .line 26
    .line 27
    new-array v2, v3, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 33
    .line 34
    invoke-static {v1, v5}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->lock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/fsck/k9/backend/imap/ImapFolderPusher;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->stop()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolderSleeping:Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_1

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->cancel()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolderSleeping:Ljava/util/LinkedHashMap;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 102
    .line 103
    .line 104
    sget-object v2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 105
    .line 106
    iput-object v2, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentFolderServerIds:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    monitor-exit v1

    .line 109
    goto :goto_3

    .line 110
    :goto_2
    monitor-exit v1

    .line 111
    throw p0

    .line 112
    :cond_2
    :goto_3
    iput-object v5, p0, Lcom/fsck/k9/controller/push/AccountPushController;->backendPusher:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 113
    .line 114
    return-void
.end method
