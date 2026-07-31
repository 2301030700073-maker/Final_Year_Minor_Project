.class public final Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final callback:Lkotlin/jvm/functions/Function0;

.field public isWaiting:Z

.field public final synthetic this$0:Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

.field public final triggerTime:J


# direct methods
.method public constructor <init>(Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;JLkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->this$0:Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->triggerTime:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->callback:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->isWaiting:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->isWaiting:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->isWaiting:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->this$0:Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->access$removeTimer(Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final onTimeout$tfa_backend_imap()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->isWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->callback:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method
