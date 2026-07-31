.class public final Lcom/fsck/k9/backend/imap/ImapFolderPusher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final callback:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

.field public volatile folderIdler:Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;

.field public final folderServerId:Ljava/lang/String;

.field public final idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

.field public final idleRefreshTimeoutProvider:Landroidx/work/Configuration$Builder;

.field public final imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

.field public final powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

.field public volatile stopPushing:Z


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;Lcom/fsck/k9/power/AndroidPowerManager;Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;Lcom/fsck/k9/backend/imap/ImapBackendPusher;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Configuration$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

    .line 25
    .line 26
    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 27
    .line 28
    iput-object p4, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->callback:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 29
    .line 30
    iput-object p5, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->accountName:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p6, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p7, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->idleRefreshTimeoutProvider:Landroidx/work/Configuration$Builder;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final refresh()V
    .locals 5

    .line 1
    const-string v0, "Refreshing ImapFolderPusher for %s / %s"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->accountName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v1, v3, v4

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aput-object v2, v3, v1

    .line 15
    .line 16
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderIdler:Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    const-string v0, "%s.refresh()"

    .line 25
    .line 26
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 27
    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v2, v1, v4

    .line 31
    .line 32
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->endIdle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v0

    .line 43
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 5

    .line 1
    const-string v0, "Stopping ImapFolderPusher for %s / %s"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->accountName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderServerId:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v1, v3, v4

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aput-object v2, v3, v1

    .line 15
    .line 16
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->stopPushing:Z

    .line 20
    .line 21
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->folderIdler:Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    const-string v0, "%s.stop()"

    .line 27
    .line 28
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 29
    .line 30
    new-array v3, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v2, v3, v4

    .line 33
    .line 34
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->stopIdle:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->endIdle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v0

    .line 47
    :cond_0
    return-void
.end method
