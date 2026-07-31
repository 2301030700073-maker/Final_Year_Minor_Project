.class public final Lcom/fsck/k9/mail/store/pop3/Pop3Store;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/MessageRetrievalListener;


# instance fields
.field public final authType:Ljava/lang/Object;

.field public final clientCertificateAlias:Ljava/lang/Object;

.field public final connectionSecurity:Ljava/io/Serializable;

.field public final host:Ljava/lang/String;

.field public final mFolders:Ljava/lang/Object;

.field public final password:Ljava/io/Serializable;

.field public final port:I

.field public final trustedSocketFactory:Ljava/lang/Object;

.field public final username:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mFolders:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "pop3"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->trustedSocketFactory:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->host:Ljava/lang/String;

    .line 26
    .line 27
    iget p2, p1, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 28
    .line 29
    iput p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->port:I

    .line 30
    .line 31
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->connectionSecurity:Ljava/io/Serializable;

    .line 34
    .line 35
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->username:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->password:Ljava/io/Serializable;

    .line 42
    .line 43
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->clientCertificateAlias:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->authType:Ljava/lang/Object;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const-string p0, "Expected POP3 ServerSettings"

    .line 53
    .line 54
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    throw p0
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Landroidx/room/RoomConnectionManager;ILcom/fsck/k9/backend/api/SyncConfig;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->trustedSocketFactory:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->username:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->host:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->password:Ljava/io/Serializable;

    iput-object p5, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->clientCertificateAlias:Ljava/lang/Object;

    iput p6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->port:I

    iput-object p7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->authType:Ljava/lang/Object;

    iput-object p8, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->connectionSecurity:Ljava/io/Serializable;

    iput-object p9, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mFolders:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkSettings()V
    .locals 3

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;

    .line 2
    .line 3
    const-string v1, "INBOX"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;-><init>(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->open()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :try_start_1
    iget-object v1, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 15
    .line 16
    iget-boolean v2, v2, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->uidl:Z

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v2, "UIDL"

    .line 21
    .line 22
    invoke-virtual {v1, v2, p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->handleIOException(Ljava/io/IOException;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :catch_1
    move-exception v1

    .line 40
    :try_start_3
    const-string v2, "Error while checking server settings"

    .line 41
    .line 42
    new-array p0, p0, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v1, v2, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :goto_2
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/pop3/Pop3Folder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mFolders:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;-><init>(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v1, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v1
.end method

.method public messageFinished(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->password:Ljava/io/Serializable;

    .line 4
    .line 5
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->trustedSocketFactory:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/Date;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :try_start_0
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 18
    .line 19
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->olderThan(Ljava/util/Date;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->authType:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lcom/fsck/k9/backend/api/SyncConfig;

    .line 35
    .line 36
    iget v0, v0, Lcom/fsck/k9/backend/api/SyncConfig;->maximumAutoDownloadMessageSize:I

    .line 37
    .line 38
    if-lez v0, :cond_1

    .line 39
    .line 40
    iget v1, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 41
    .line 42
    int-to-long v1, v1

    .line 43
    int-to-long v4, v0

    .line 44
    cmp-long v0, v1, v4

    .line 45
    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->connectionSecurity:Ljava/io/Serializable;

    .line 49
    .line 50
    check-cast p0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mFolders:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    :goto_0
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v4, 0x2

    .line 71
    const/4 v5, 0x1

    .line 72
    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->host:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    :try_start_1
    const-string v1, "Newly downloaded message %s:%s:%s was marked deleted on server, skipping"

    .line 77
    .line 78
    iget-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->username:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 81
    .line 82
    iget-object v2, v2, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 87
    .line 88
    const/4 v7, 0x3

    .line 89
    new-array v7, v7, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object v2, v7, v3

    .line 92
    .line 93
    aput-object v6, v7, v5

    .line 94
    .line 95
    aput-object p1, v7, v4

    .line 96
    .line 97
    invoke-static {v1, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const-string v2, "Newly downloaded message %s is older than %s, skipping"

    .line 102
    .line 103
    iget-object p1, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 104
    .line 105
    new-array v4, v4, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object p1, v4, v3

    .line 108
    .line 109
    aput-object v1, v4, v5

    .line 110
    .line 111
    invoke-static {v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->clientCertificateAlias:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Landroidx/room/RoomConnectionManager;

    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iget p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->port:I

    .line 129
    .line 130
    invoke-virtual {p1, v0, v6, p0}, Landroidx/room/RoomConnectionManager;->syncProgress(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :goto_2
    const-string p1, "Error while storing downloaded message."

    .line 135
    .line 136
    new-array v0, v3, [Ljava/lang/Object;

    .line 137
    .line 138
    invoke-static {p0, p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method
