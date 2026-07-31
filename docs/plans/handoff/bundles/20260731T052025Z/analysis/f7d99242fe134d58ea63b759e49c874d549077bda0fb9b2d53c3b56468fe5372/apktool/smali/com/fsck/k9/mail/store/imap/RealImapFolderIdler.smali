.class public final Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public doneSent:Z

.field public folder:Lcom/fsck/k9/mail/store/imap/RealImapFolder;

.field public final folderServerId:Ljava/lang/String;

.field public final idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

.field public final idleRefreshTimeoutProvider:Landroidx/work/Configuration$Builder;

.field public idleRefreshTimer:Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

.field public idleSent:Z

.field public final imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

.field public final logTag:Ljava/lang/String;

.field public volatile stopIdle:Z

.field public final wakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;Lcom/fsck/k9/mail/store/imap/RealImapStore;Ljava/lang/String;Landroidx/work/Configuration$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->wakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->folderServerId:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p5, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleRefreshTimeoutProvider:Landroidx/work/Configuration$Builder;

    .line 25
    .line 26
    const-string p1, "ImapFolderIdler["

    .line 27
    .line 28
    const-string p2, "]"

    .line 29
    .line 30
    invoke-static {p1, p4, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public static isRelevant(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-lt v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "EXISTS"

    .line 20
    .line 21
    invoke-static {v1, v2}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "EXPUNGE"

    .line 32
    .line 33
    invoke-static {v1, v2}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v1, "FETCH"

    .line 44
    .line 45
    invoke-static {p0, v1}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    :cond_0
    return v0

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    return p0
.end method


# virtual methods
.method public final endIdle()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleSent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->doneSent:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleRefreshTimer:Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->sendDone()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 26
    .line 27
    aput-object p0, v1, v2

    .line 28
    .line 29
    const-string p0, "%s: IOException while sending DONE"

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final idle()Lcom/fsck/k9/mail/store/imap/IdleResult;
    .locals 6

    const/4 v0, 0x1

    .line 364
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v4, "%s.idle()"

    invoke-static {v4, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->folderServerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    invoke-virtual {v4, v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->folder:Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 366
    sget-object v4, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/store/imap/OpenMode;

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 367
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idle(Lcom/fsck/k9/mail/store/imap/RealImapFolder;)Lcom/fsck/k9/mail/store/imap/IdleResult;

    move-result-object p0

    .line 368
    const-string v4, "%s.idle(): result=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    throw p0
.end method

.method public final idle(Lcom/fsck/k9/mail/store/imap/RealImapFolder;)Lcom/fsck/k9/mail/store/imap/IdleResult;
    .locals 20

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    sget-object v0, Lcom/fsck/k9/mail/store/imap/IdleResult;->STOPPED:Lcom/fsck/k9/mail/store/imap/IdleResult;

    .line 6
    .line 7
    iget-object v9, v8, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 8
    .line 9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v10, 0x1

    .line 19
    const/4 v11, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v1, "Connection %s has %d capabilities"

    .line 23
    .line 24
    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, v9, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->capabilities:Ljava/util/Set;

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x2

    .line 39
    new-array v5, v5, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v3, v5, v11

    .line 42
    .line 43
    aput-object v4, v5, v10

    .line 44
    .line 45
    invoke-static {v1, v5}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v1, v9, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->capabilities:Ljava/util/Set;

    .line 49
    .line 50
    const-string v3, "IDLE"

    .line 51
    .line 52
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    const-string v0, "%s: IDLE not supported by server"

    .line 59
    .line 60
    iget-object v1, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 61
    .line 62
    new-array v2, v10, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object v1, v2, v11

    .line 65
    .line 66
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Lcom/fsck/k9/mail/store/imap/IdleResult;->NOT_SUPPORTED:Lcom/fsck/k9/mail/store/imap/IdleResult;

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_1
    iput-boolean v11, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->stopIdle:Z

    .line 73
    .line 74
    :goto_0
    monitor-enter p1

    .line 75
    :try_start_0
    iput-boolean v11, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleSent:Z

    .line 76
    .line 77
    iput-boolean v11, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->doneSent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 78
    .line 79
    monitor-exit p1

    .line 80
    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->setSocketDefaultReadTimeout()V

    .line 81
    .line 82
    .line 83
    const-string v1, "IDLE"

    .line 84
    .line 85
    invoke-virtual {v9, v1, v11}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    monitor-enter p1

    .line 90
    :try_start_1
    iput-boolean v10, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleSent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .line 92
    monitor-exit p1

    .line 93
    move v1, v11

    .line 94
    :cond_2
    const/4 v13, 0x0

    .line 95
    invoke-virtual {v9, v13}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-object v4, v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_3

    .line 106
    .line 107
    const-string v0, "%s.idle(): IDLE command completed without a continuation request response"

    .line 108
    .line 109
    iget-object v1, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 110
    .line 111
    new-array v2, v10, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v1, v2, v11

    .line 114
    .line 115
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lcom/fsck/k9/mail/store/imap/IdleResult;->NOT_SUPPORTED:Lcom/fsck/k9/mail/store/imap/IdleResult;

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_3
    invoke-static {v3}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->isRelevant(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_4

    .line 126
    .line 127
    move v1, v10

    .line 128
    :cond_4
    iget-boolean v3, v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isContinuationRequested:Z

    .line 129
    .line 130
    if-eqz v3, :cond_2

    .line 131
    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    const-string v0, "%s.idle(): Received a relevant untagged response right after sending IDLE command"

    .line 135
    .line 136
    iget-object v1, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 137
    .line 138
    new-array v3, v10, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object v1, v3, v11

    .line 141
    .line 142
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    sget-object v0, Lcom/fsck/k9/mail/store/imap/IdleResult;->SYNC:Lcom/fsck/k9/mail/store/imap/IdleResult;

    .line 146
    .line 147
    iput-boolean v10, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->stopIdle:Z

    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->sendDone()V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    iget-object v1, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleRefreshTimeoutProvider:Landroidx/work/Configuration$Builder;

    .line 154
    .line 155
    iget-object v1, v1, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 158
    .line 159
    iget-wide v3, v1, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentIdleRefreshMs:J

    .line 160
    .line 161
    const-wide/32 v5, 0x1d4c0

    .line 162
    .line 163
    .line 164
    add-long/2addr v3, v5

    .line 165
    long-to-int v1, v3

    .line 166
    invoke-virtual {v9, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->setSocketReadTimeout(I)V

    .line 167
    .line 168
    .line 169
    :goto_1
    move-object v14, v0

    .line 170
    :goto_2
    iget-object v15, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 171
    .line 172
    iget-object v0, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleRefreshTimeoutProvider:Landroidx/work/Configuration$Builder;

    .line 173
    .line 174
    iget-object v0, v0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 177
    .line 178
    iget-wide v0, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentIdleRefreshMs:J

    .line 179
    .line 180
    move-wide v3, v0

    .line 181
    new-instance v0, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 182
    .line 183
    move-wide v4, v3

    .line 184
    const-class v3, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;

    .line 185
    .line 186
    move-wide v5, v4

    .line 187
    const-string v4, "idleRefresh"

    .line 188
    .line 189
    move-wide v6, v5

    .line 190
    const-string v5, "idleRefresh()V"

    .line 191
    .line 192
    move-wide/from16 v16, v6

    .line 193
    .line 194
    const/4 v6, 0x0

    .line 195
    const/16 v7, 0x13

    .line 196
    .line 197
    const/4 v1, 0x0

    .line 198
    move/from16 v19, v11

    .line 199
    .line 200
    move-object/from16 v18, v12

    .line 201
    .line 202
    move-wide/from16 v11, v16

    .line 203
    .line 204
    invoke-direct/range {v0 .. v7}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 205
    .line 206
    .line 207
    check-cast v15, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 208
    .line 209
    invoke-virtual {v15, v11, v12, v0}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->startTimer(JLkotlin/jvm/functions/Function0;)Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iput-object v0, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleRefreshTimer:Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 214
    .line 215
    iget-object v0, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->wakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->release()V

    .line 218
    .line 219
    .line 220
    :try_start_2
    invoke-virtual {v9, v13}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 221
    .line 222
    .line 223
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    iget-object v1, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->wakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->acquire()V

    .line 227
    .line 228
    .line 229
    iget-object v1, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleRefreshTimer:Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 230
    .line 231
    if-eqz v1, :cond_6

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->cancel()V

    .line 234
    .line 235
    .line 236
    :cond_6
    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->isRelevant(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_7

    .line 241
    .line 242
    iget-boolean v1, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->stopIdle:Z

    .line 243
    .line 244
    if-nez v1, :cond_7

    .line 245
    .line 246
    const-string v1, "%s.idle(): Received a relevant untagged response during IDLE"

    .line 247
    .line 248
    iget-object v3, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 249
    .line 250
    new-array v4, v10, [Ljava/lang/Object;

    .line 251
    .line 252
    aput-object v3, v4, v19

    .line 253
    .line 254
    invoke-static {v1, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    sget-object v1, Lcom/fsck/k9/mail/store/imap/IdleResult;->SYNC:Lcom/fsck/k9/mail/store/imap/IdleResult;

    .line 258
    .line 259
    iput-boolean v10, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->stopIdle:Z

    .line 260
    .line 261
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->sendDone()V

    .line 262
    .line 263
    .line 264
    move-object v14, v1

    .line 265
    goto :goto_3

    .line 266
    :cond_7
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_8

    .line 271
    .line 272
    const-string v1, "%s.idle(): Ignoring untagged response"

    .line 273
    .line 274
    iget-object v3, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 275
    .line 276
    new-array v4, v10, [Ljava/lang/Object;

    .line 277
    .line 278
    aput-object v3, v4, v19

    .line 279
    .line 280
    invoke-static {v1, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 284
    .line 285
    move-object/from16 v3, v18

    .line 286
    .line 287
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_b

    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_a

    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-lt v1, v10, :cond_a

    .line 304
    .line 305
    move/from16 v4, v19

    .line 306
    .line 307
    invoke-virtual {v0, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    const-string v1, "OK"

    .line 312
    .line 313
    invoke-static {v0, v1}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_a

    .line 318
    .line 319
    iget-boolean v0, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->stopIdle:Z

    .line 320
    .line 321
    if-eqz v0, :cond_9

    .line 322
    .line 323
    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->setSocketDefaultReadTimeout()V

    .line 324
    .line 325
    .line 326
    return-object v14

    .line 327
    :cond_9
    move v11, v4

    .line 328
    move-object v0, v14

    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_a
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 332
    .line 333
    const-string v1, "Received non-OK response to IDLE command"

    .line 334
    .line 335
    invoke-direct {v0, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw v0

    .line 339
    :cond_b
    move-object v12, v3

    .line 340
    move/from16 v11, v19

    .line 341
    .line 342
    goto/16 :goto_2

    .line 343
    .line 344
    :catchall_0
    move-exception v0

    .line 345
    iget-object v1, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->wakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->acquire()V

    .line 348
    .line 349
    .line 350
    iget-object v1, v2, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleRefreshTimer:Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 351
    .line 352
    if-eqz v1, :cond_c

    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->cancel()V

    .line 355
    .line 356
    .line 357
    :cond_c
    throw v0

    .line 358
    :catchall_1
    move-exception v0

    .line 359
    monitor-exit p1

    .line 360
    throw v0

    .line 361
    :catchall_2
    move-exception v0

    .line 362
    monitor-exit p1

    .line 363
    throw v0
.end method

.method public final declared-synchronized sendDone()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->folder:Lcom/fsck/k9/mail/store/imap/RealImapFolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_1
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :try_start_3
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->isConnected()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->doneSent:Z

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->setSocketDefaultReadTimeout()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    .line 26
    .line 27
    :try_start_4
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->sendContinuation()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v2

    .line 34
    :try_start_5
    const-string v3, "%s: IOException while sending DONE"

    .line 35
    .line 36
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 37
    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    aput-object v4, v1, v5

    .line 42
    .line 43
    invoke-static {v2, v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 47
    :cond_2
    :goto_0
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    goto :goto_2

    .line 52
    :goto_1
    :try_start_7
    monitor-exit v0

    .line 53
    throw v1

    .line 54
    :goto_2
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 55
    throw v0
.end method
