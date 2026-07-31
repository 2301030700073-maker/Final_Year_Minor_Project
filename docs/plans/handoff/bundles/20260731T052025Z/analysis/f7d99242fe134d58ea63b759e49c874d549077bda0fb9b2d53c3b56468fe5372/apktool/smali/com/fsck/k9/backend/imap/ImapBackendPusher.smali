.class public final Lcom/fsck/k9/backend/imap/ImapBackendPusher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final callback:Lcom/fsck/k9/mailstore/LocalStore$7;

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public currentFolderServerIds:Ljava/util/Collection;

.field public volatile currentIdleRefreshMs:J

.field public volatile currentMaxPushFolders:I

.field public final idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

.field public final idleRefreshTimeoutProvider:Landroidx/work/Configuration$Builder;

.field public final imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

.field public final lock:Ljava/lang/Object;

.field public final powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

.field public final pushConfigProvider:Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;

.field public final pushFolderSleeping:Ljava/util/LinkedHashMap;

.field public final pushFolders:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;Lcom/fsck/k9/power/AndroidPowerManager;Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushConfigProvider:Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->callback:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 23
    .line 24
    iput-object p6, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->accountName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 31
    .line 32
    new-instance p1, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->lock:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentFolderServerIds:Ljava/util/Collection;

    .line 49
    .line 50
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolderSleeping:Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    new-instance p1, Landroidx/work/Configuration$Builder;

    .line 58
    .line 59
    const/16 p2, 0x14

    .line 60
    .line 61
    invoke-direct {p1, p2, p0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->idleRefreshTimeoutProvider:Landroidx/work/Configuration$Builder;

    .line 65
    .line 66
    const-wide/32 p1, 0xdbba0

    .line 67
    .line 68
    .line 69
    iput-wide p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentIdleRefreshMs:J

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final onPushEvent(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->callback:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lnet/thunderbird/feature/account/AccountId;

    .line 16
    .line 17
    iget-object v2, v2, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Lcom/fsck/k9/controller/MessagingController;

    .line 33
    .line 34
    invoke-virtual {v4, v5, p1}, Lcom/fsck/k9/controller/MessagingController;->getFolderId(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    invoke-direct {v8, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const-string p1, "synchronizeMailbox"

    .line 45
    .line 46
    new-instance v3, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    const/4 v9, 0x5

    .line 49
    invoke-direct/range {v3 .. v9}, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1, v3}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    move-object p1, v0

    .line 61
    const-string v0, "Interrupted while awaiting latch release"

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {p1, v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 70
    .line 71
    check-cast p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 72
    .line 73
    monitor-enter p0

    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .line 76
    :try_start_1
    iput-wide v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->currentTriggerTime:J

    .line 77
    .line 78
    iget-object p1, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->alarmManager:Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 79
    .line 80
    iget-object v0, p1, Lcom/fsck/k9/backends/AndroidAlarmManager;->callback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p1, Lcom/fsck/k9/backends/AndroidAlarmManager;->alarmManager:Landroid/app/AlarmManager;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/fsck/k9/backends/AndroidAlarmManager;->pendingIntent:Landroid/app/PendingIntent;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    monitor-exit p0

    .line 94
    invoke-virtual {p0}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->onTimeout()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    move-object p1, v0

    .line 100
    monitor-exit p0

    .line 101
    throw p1
.end method

.method public final startRetryTimer(JLjava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object p3, v1, v2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v0, v1, v2

    .line 13
    .line 14
    const-string v0, "ImapBackendPusher for folder %s sleeping for %d ms"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/16 v9, 0x12

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const-class v5, Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 26
    .line 27
    const-string v6, "restartFolderPushers"

    .line 28
    .line 29
    const-string v7, "restartFolderPushers()V"

    .line 30
    .line 31
    move-object v4, p0

    .line 32
    invoke-direct/range {v2 .. v9}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    iget-object p0, v4, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 36
    .line 37
    check-cast p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, v2}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->startTimer(JLkotlin/jvm/functions/Function0;)Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p1, v4, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolderSleeping:Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final updateFolders(ILjava/util/Collection;)V
    .locals 7

    .line 1
    const-string v0, "ImapBackendPusher.updateFolders(): %s"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object p2, v2, v3

    .line 8
    .line 9
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x2

    .line 17
    if-le v0, p1, :cond_0

    .line 18
    .line 19
    move-object v0, p2

    .line 20
    check-cast v0, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v4, "..limiting Push to %d folders: %s"

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-array v5, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p1, v5, v3

    .line 35
    .line 36
    aput-object v0, v5, v1

    .line 37
    .line 38
    invoke-static {v4, v5}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v0, p2

    .line 43
    :goto_0
    iget-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->lock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter p1

    .line 46
    :try_start_0
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentFolderServerIds:Ljava/util/Collection;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object v4, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolderSleeping:Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/Iterable;

    .line 61
    .line 62
    invoke-static {p2, v4}, Lorg/jsoup/helper/Validate;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    move-object v5, v0

    .line 67
    check-cast v5, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-static {v4, v5}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Ljava/lang/Iterable;

    .line 74
    .line 75
    new-instance v5, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 76
    .line 77
    invoke-direct {v5, v2, v4}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance v4, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    invoke-direct {v4, p0, v3}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;I)V

    .line 83
    .line 84
    .line 85
    new-instance v6, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {v6, v3, v4}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    .line 90
    new-instance v4, Lkotlin/sequences/TakeWhileSequence;

    .line 91
    .line 92
    invoke-direct {v4, v5, v6, v2}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 93
    .line 94
    .line 95
    new-instance v5, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    invoke-direct {v5, p0, v1}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;I)V

    .line 98
    .line 99
    .line 100
    new-instance v6, Lkotlin/sequences/TakeWhileSequence;

    .line 101
    .line 102
    invoke-direct {v6, v4, v5, v2}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 103
    .line 104
    .line 105
    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v0, Ljava/lang/Iterable;

    .line 114
    .line 115
    check-cast p2, Ljava/lang/Iterable;

    .line 116
    .line 117
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    new-instance v0, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 122
    .line 123
    invoke-direct {v0, v2, p2}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance p2, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    invoke-direct {p2, p0, v2}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;I)V

    .line 129
    .line 130
    .line 131
    new-instance v5, Lkotlin/sequences/FilteringSequence;

    .line 132
    .line 133
    invoke-direct {v5, v0, v3, p2}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 134
    .line 135
    .line 136
    new-instance p2, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    const/4 v0, 0x3

    .line 139
    invoke-direct {p2, p0, v0}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;I)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    invoke-direct {v0, v3, p2}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 145
    .line 146
    .line 147
    new-instance p2, Lkotlin/sequences/TakeWhileSequence;

    .line 148
    .line 149
    invoke-direct {p2, v5, v0, v2}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    const/4 v5, 0x4

    .line 155
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;I)V

    .line 156
    .line 157
    .line 158
    new-instance p0, Lkotlin/sequences/TakeWhileSequence;

    .line 159
    .line 160
    invoke-direct {p0, p2, v0, v2}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 161
    .line 162
    .line 163
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p1

    .line 168
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    if-eqz p2, :cond_1

    .line 177
    .line 178
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    check-cast p2, Lcom/fsck/k9/backend/imap/ImapFolderPusher;

    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->stop()V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_2

    .line 197
    .line 198
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lcom/fsck/k9/backend/imap/ImapFolderPusher;

    .line 203
    .line 204
    const-string p2, "Starting ImapFolderPusher for %s / %s"

    .line 205
    .line 206
    iget-object v0, p1, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->accountName:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v4, p1, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 209
    .line 210
    new-array v5, v2, [Ljava/lang/Object;

    .line 211
    .line 212
    aput-object v0, v5, v3

    .line 213
    .line 214
    aput-object v4, v5, v1

    .line 215
    .line 216
    invoke-static {p2, v5}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v5, "ImapFolderPusher-"

    .line 222
    .line 223
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v0, "-"

    .line 230
    .line 231
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    new-instance v0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 242
    .line 243
    const/16 v4, 0x9

    .line 244
    .line 245
    invoke-direct {v0, v4, p1}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    const/16 p1, 0x17

    .line 249
    .line 250
    invoke-static {p2, v0, p1}, Lorg/jsoup/nodes/NodeUtils;->thread$default(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_2
    return-void

    .line 255
    :catchall_0
    move-exception p0

    .line 256
    monitor-exit p1

    .line 257
    throw p0
.end method

.method public final updateFolders$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentFolderServerIds:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    iget v0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentMaxPushFolders:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->updateFolders(ILjava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    .line 15
    throw p0
.end method
