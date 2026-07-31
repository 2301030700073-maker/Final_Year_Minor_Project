.class public final Lcom/fsck/k9/job/K9JobManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final mailSyncWorkerManager:Lcom/fsck/k9/job/MailSyncWorkerManager;

.field public final syncDebugFileLogManager:Lcom/fsck/k9/job/FileLogLimitWorkManager;

.field public final workManager:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/job/MailSyncWorkerManager;Lcom/fsck/k9/job/FileLogLimitWorkManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/job/K9JobManager;->workManager:Landroidx/work/impl/WorkManagerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/job/K9JobManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/job/K9JobManager;->mailSyncWorkerManager:Lcom/fsck/k9/job/MailSyncWorkerManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/job/K9JobManager;->syncDebugFileLogManager:Lcom/fsck/k9/job/FileLogLimitWorkManager;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final scheduleAllMailJobs()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "scheduling all jobs"

    .line 5
    .line 6
    invoke-static {v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "canceling mail sync job"

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/job/K9JobManager;->workManager:Landroidx/work/impl/WorkManagerImpl;

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 21
    .line 22
    const-string v2, "CancelWorkByTag_"

    .line 23
    .line 24
    const-string v3, "MailSync"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 31
    .line 32
    iget-object v3, v3, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Landroidx/room/TransactionExecutor;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v4, Landroidx/work/impl/WorkManagerImpl$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-direct {v4, v0, v5}, Landroidx/work/impl/WorkManagerImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkManagerImpl;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2, v3, v4}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/SystemClock;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/fsck/k9/job/K9JobManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 49
    .line 50
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/fsck/k9/job/K9JobManager;->mailSyncWorkerManager:Lcom/fsck/k9/job/MailSyncWorkerManager;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Lcom/fsck/k9/job/MailSyncWorkerManager;->scheduleMailSync(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method
