.class public final Lcom/fsck/k9/backend/imap/ImapBackend;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/backend/api/Backend;


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final commandDelete:Lcom/fsck/k9/backend/imap/CommandDelete;

.field public final commandDeleteAll:Lcom/fsck/k9/backend/imap/CommandDelete;

.field public final commandDownloadMessage:Lcom/beetstra/jutf7/Base64Util;

.field public final commandExpunge:Lcom/fsck/k9/backend/imap/CommandDelete;

.field public final commandFetchMessage:Lcom/fsck/k9/backend/imap/CommandDelete;

.field public final commandFindByMessageId:Lcom/fsck/k9/backend/imap/CommandDelete;

.field public final commandMarkAllAsRead:Lcom/fsck/k9/backend/imap/CommandDelete;

.field public final commandMoveOrCopyMessages:Lcom/fsck/k9/backend/imap/CommandDelete;

.field public final commandRefreshFolderList:Lcom/fsck/k9/backend/imap/ImapSync;

.field public final commandSearch:Lcom/fsck/k9/backend/imap/CommandDelete;

.field public final commandSetFlag:Lcom/fsck/k9/backend/imap/CommandDelete;

.field public final commandUploadMessage:Lcom/fsck/k9/backend/imap/CommandDelete;

.field public final idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

.field public final imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

.field public final imapSync:Lcom/fsck/k9/backend/imap/ImapSync;

.field public final isPushCapable:Z

.field public final powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

.field public final pushConfigProvider:Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;

.field public final smtpTransport:Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;

.field public final supportsCopy:Z

.field public final supportsExpunge:Z

.field public final supportsFlags:Z

.field public final supportsFolderSubscriptions:Z

.field public final supportsMove:Z

.field public final supportsSearchByDate:Z

.field public final supportsTrashFolder:Z

.field public final supportsUpload:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Dispatcher;Lcom/fsck/k9/mail/store/imap/RealImapStore;Lcom/fsck/k9/power/AndroidPowerManager;Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->accountName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->pushConfigProvider:Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->smtpTransport:Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;

    .line 15
    .line 16
    new-instance p4, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 17
    .line 18
    const/4 p5, 0x0

    .line 19
    invoke-direct {p4, p1, p2, p3, p5}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    iput-object p4, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->imapSync:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 23
    .line 24
    new-instance p1, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 25
    .line 26
    invoke-direct {p1, p2, p3}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Lokhttp3/Dispatcher;Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandRefreshFolderList:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 30
    .line 31
    new-instance p1, Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 32
    .line 33
    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/imap/CommandDelete;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandSetFlag:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 37
    .line 38
    new-instance p1, Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 39
    .line 40
    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/imap/CommandDelete;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandMarkAllAsRead:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 44
    .line 45
    new-instance p1, Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 46
    .line 47
    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/imap/CommandDelete;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandExpunge:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 51
    .line 52
    new-instance p1, Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 53
    .line 54
    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/imap/CommandDelete;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandMoveOrCopyMessages:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 58
    .line 59
    new-instance p1, Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 60
    .line 61
    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/imap/CommandDelete;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandDelete:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 65
    .line 66
    new-instance p1, Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 67
    .line 68
    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/imap/CommandDelete;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandDeleteAll:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 72
    .line 73
    new-instance p1, Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 74
    .line 75
    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/imap/CommandDelete;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandSearch:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 79
    .line 80
    new-instance p1, Lcom/beetstra/jutf7/Base64Util;

    .line 81
    .line 82
    const/16 p4, 0x1b

    .line 83
    .line 84
    invoke-direct {p1, p4, p2, p3}, Lcom/beetstra/jutf7/Base64Util;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandDownloadMessage:Lcom/beetstra/jutf7/Base64Util;

    .line 88
    .line 89
    new-instance p1, Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 90
    .line 91
    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/imap/CommandDelete;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandFetchMessage:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 95
    .line 96
    new-instance p1, Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 97
    .line 98
    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/imap/CommandDelete;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandFindByMessageId:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 102
    .line 103
    new-instance p1, Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 104
    .line 105
    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/imap/CommandDelete;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandUploadMessage:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 109
    .line 110
    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsFlags:Z

    .line 112
    .line 113
    iput-boolean p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsExpunge:Z

    .line 114
    .line 115
    iput-boolean p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsMove:Z

    .line 116
    .line 117
    iput-boolean p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsCopy:Z

    .line 118
    .line 119
    iput-boolean p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsUpload:Z

    .line 120
    .line 121
    iput-boolean p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsTrashFolder:Z

    .line 122
    .line 123
    iput-boolean p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsSearchByDate:Z

    .line 124
    .line 125
    iput-boolean p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsFolderSubscriptions:Z

    .line 126
    .line 127
    iput-boolean p1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->isPushCapable:Z

    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final copyMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 1

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
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandMoveOrCopyMessages:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fsck/k9/backend/imap/CommandDelete;->moveOrCopyMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final createPusher(Lcom/fsck/k9/mailstore/LocalStore$7;)Lcom/fsck/k9/backend/imap/ImapBackendPusher;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 5
    .line 6
    iget-object v4, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->pushConfigProvider:Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;

    .line 7
    .line 8
    iget-object v6, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->accountName:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 15
    .line 16
    move-object v5, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;Lcom/fsck/k9/power/AndroidPowerManager;Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final deleteAllMessages(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandDeleteAll:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    sget-object p1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpenWithWriteAccess()V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 24
    .line 25
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->setFlagsForAllMessages(Ljava/util/Set;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/fsck/k9/mail/store/imap/RealImapStore;->config:Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;->isExpungeImmediately()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->expunge()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final deleteMessages(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandDelete:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :try_start_0
    sget-object p1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->deleteMessages(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public final downloadCompleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandDownloadMessage:Lcom/beetstra/jutf7/Base64Util;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 23
    .line 24
    invoke-direct {v1, p2}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x2

    .line 28
    new-array p2, p2, [Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 29
    .line 30
    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object v2, p2, v3

    .line 34
    .line 35
    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    aput-object v2, p2, v4

    .line 39
    .line 40
    invoke-static {p2}, Landroidx/work/OperationKt;->fetchProfileOf([Lcom/fsck/k9/mail/FetchProfile$Item;)Lcom/fsck/k9/mail/FetchProfile;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {v0, v2, p2, v4, v3}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lokhttp3/HttpUrl$Builder;I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lokhttp3/Dispatcher;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/K9BackendFolder;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object p1, Lcom/fsck/k9/mail/MessageDownloadState;->FULL:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 61
    .line 62
    invoke-virtual {p0, v1, p1}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final downloadMessage(Lcom/fsck/k9/backend/api/SyncConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->imapSync:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lokhttp3/Dispatcher;

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lokhttp3/Dispatcher;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/K9BackendFolder;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object p0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :try_start_0
    sget-object p0, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 26
    .line 27
    invoke-virtual {v2, p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 31
    .line 32
    invoke-direct {p0, p3}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v6, Lcom/bumptech/glide/load/Option$1;

    .line 40
    .line 41
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    move-object v1, p1

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/backend/imap/ImapSync;->downloadMessages(Lcom/fsck/k9/backend/api/SyncConfig;Lcom/fsck/k9/mail/store/imap/RealImapFolder;Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/List;Ljava/lang/Long;Lcom/fsck/k9/backend/api/SyncListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final downloadMessageStructure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandDownloadMessage:Lcom/beetstra/jutf7/Base64Util;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 26
    .line 27
    invoke-direct {v1, p2}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x2

    .line 31
    new-array p2, p2, [Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 32
    .line 33
    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    aput-object v2, p2, v3

    .line 37
    .line 38
    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    aput-object v2, p2, v4

    .line 42
    .line 43
    invoke-static {p2}, Landroidx/work/OperationKt;->fetchProfileOf([Lcom/fsck/k9/mail/FetchProfile$Item;)Lcom/fsck/k9/mail/FetchProfile;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v0, v2, p2, v5, v3}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lokhttp3/HttpUrl$Builder;I)V

    .line 53
    .line 54
    .line 55
    new-array p2, v4, [Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 56
    .line 57
    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 58
    .line 59
    aput-object v2, p2, v3

    .line 60
    .line 61
    invoke-static {p2}, Landroidx/work/OperationKt;->fetchProfileOf([Lcom/fsck/k9/mail/FetchProfile$Item;)Lcom/fsck/k9/mail/FetchProfile;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2, p2, v5, v3}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lokhttp3/HttpUrl$Builder;I)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lokhttp3/Dispatcher;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/K9BackendFolder;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    sget-object p1, Lcom/fsck/k9/mail/MessageDownloadState;->ENVELOPE:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 81
    .line 82
    invoke-virtual {p0, v1, p1}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public final expunge(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandExpunge:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 11
    .line 12
    const-string v3, "processPendingExpunge: folder = %s"

    .line 13
    .line 14
    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :try_start_0
    sget-object v1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->expunge()V

    .line 29
    .line 30
    .line 31
    const-string v1, "processPendingExpunge: complete for folder = %s"

    .line 32
    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p1, v0, v2

    .line 36
    .line 37
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public final fetchPart(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/ProgressBodyFactory;)V
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
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandFetchMessage:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :try_start_0
    sget-object p1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p2, -0x1

    .line 32
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->fetchPart(Lcom/fsck/k9/mail/store/imap/ImapMessage;Lcom/fsck/k9/mail/Part;Lokio/AsyncTimeout$Companion;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final findByMessageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandFindByMessageId:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :try_start_0
    sget-object p1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getUidFromMessageId(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final getSupportsCopy()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsCopy:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportsExpunge()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsExpunge:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportsFlags()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsFlags:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportsFolderSubscriptions()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsFolderSubscriptions:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportsMove()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsMove:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportsSearchByDate()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsSearchByDate:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportsTrashFolder()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsTrashFolder:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportsUpload()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->supportsUpload:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isPushCapable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->isPushCapable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final markAllAsRead(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandMarkAllAsRead:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    sget-object p1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 21
    .line 22
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->setFlagsForAllMessages(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final moveMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 1

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
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandMoveOrCopyMessages:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fsck/k9/backend/imap/CommandDelete;->moveOrCopyMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final moveMessagesAndMarkAsRead(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 2

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
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandMoveOrCopyMessages:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fsck/k9/backend/imap/CommandDelete;->moveOrCopyMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/fsck/k9/backend/imap/ImapBackend;->setFlag(Ljava/lang/String;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-object p1
.end method

.method public final refreshFolderList()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandRefreshFolderList:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lokhttp3/Dispatcher;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 12
    .line 13
    new-instance v3, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/16 v4, 0xb

    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const-string v5, "CommandRefreshFolderList"

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x2

    .line 24
    invoke-static {v2, v5, v6, v3, v7}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolders()Ljava/util/AbstractList;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    move-object v10, v9

    .line 50
    check-cast v10, Lcom/fsck/k9/mail/store/imap/FolderListItem;

    .line 51
    .line 52
    iget-object v10, v10, Lcom/fsck/k9/mail/store/imap/FolderListItem;->folderPathDelimiter:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v10, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v9, v6

    .line 58
    :goto_0
    check-cast v9, Lcom/fsck/k9/mail/store/imap/FolderListItem;

    .line 59
    .line 60
    if-eqz v9, :cond_2

    .line 61
    .line 62
    iget-object v8, v9, Lcom/fsck/k9/mail/store/imap/FolderListItem;->folderPathDelimiter:Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v8, v6

    .line 66
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    .line 67
    .line 68
    const/16 v10, 0xa

    .line 69
    .line 70
    invoke-static {v3, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    if-eqz v11, :cond_3

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    check-cast v11, Lcom/fsck/k9/mail/store/imap/FolderListItem;

    .line 92
    .line 93
    new-instance v12, Lcom/fsck/k9/backend/imap/LegacyFolderListItem;

    .line 94
    .line 95
    iget-object v13, v11, Lcom/fsck/k9/mail/store/imap/FolderListItem;->serverId:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v14, v11, Lcom/fsck/k9/mail/store/imap/FolderListItem;->name:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v11, v11, Lcom/fsck/k9/mail/store/imap/FolderListItem;->type:Lcom/fsck/k9/mail/FolderType;

    .line 100
    .line 101
    invoke-direct {v12, v13, v14, v11}, Lcom/fsck/k9/backend/imap/LegacyFolderListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    iget-object v3, v1, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v3, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 111
    .line 112
    new-instance v11, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 113
    .line 114
    const/4 v12, 0x6

    .line 115
    invoke-direct {v11, v12}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v3, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 119
    .line 120
    iget-object v3, v3, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v3, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 123
    .line 124
    invoke-virtual {v3, v11}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolders(Lapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    new-instance v11, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;

    .line 129
    .line 130
    invoke-direct {v11, v1}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;-><init>(Lokhttp3/Dispatcher;)V

    .line 131
    .line 132
    .line 133
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v14, v11, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->this$0:Lokhttp3/Dispatcher;

    .line 147
    .line 148
    if-eqz v13, :cond_5

    .line 149
    .line 150
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    check-cast v13, Lcom/fsck/k9/backend/imap/LegacyFolderListItem;

    .line 155
    .line 156
    invoke-virtual {v0, v13}, Lcom/fsck/k9/backend/imap/ImapSync;->getNormalizedServerId(Lcom/fsck/k9/backend/imap/LegacyFolderListItem;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v15

    .line 160
    iget-object v4, v13, Lcom/fsck/k9/backend/imap/LegacyFolderListItem;->type:Lcom/fsck/k9/mail/FolderType;

    .line 161
    .line 162
    iget-object v10, v13, Lcom/fsck/k9/backend/imap/LegacyFolderListItem;->name:Ljava/lang/String;

    .line 163
    .line 164
    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    if-nez v15, :cond_4

    .line 169
    .line 170
    new-instance v14, Lcom/fsck/k9/backend/api/FolderInfo;

    .line 171
    .line 172
    invoke-virtual {v0, v13}, Lcom/fsck/k9/backend/imap/ImapSync;->getNormalizedServerId(Lcom/fsck/k9/backend/imap/LegacyFolderListItem;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    invoke-direct {v14, v13, v10, v4}, Lcom/fsck/k9/backend/api/FolderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :goto_4
    const/16 v4, 0xb

    .line 183
    .line 184
    const/16 v10, 0xa

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    move-object v1, v0

    .line 189
    goto :goto_6

    .line 190
    :cond_4
    invoke-virtual {v0, v13}, Lcom/fsck/k9/backend/imap/ImapSync;->getNormalizedServerId(Lcom/fsck/k9/backend/imap/LegacyFolderListItem;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    iget-object v14, v14, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v14, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 200
    .line 201
    invoke-virtual {v14, v13, v10, v4}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->changeFolder(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_5
    new-instance v4, Lcom/fsck/k9/backend/imap/CommandRefreshFolderList$$ExternalSyntheticLambda1;

    .line 206
    .line 207
    const/4 v10, 0x0

    .line 208
    invoke-direct {v4, v10, v1}, Lcom/fsck/k9/backend/imap/CommandRefreshFolderList$$ExternalSyntheticLambda1;-><init>(ILjava/util/ArrayList;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v2, v5, v6, v4, v7}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11, v1}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->createFolders(Ljava/util/List;)Ljava/util/Set;

    .line 215
    .line 216
    .line 217
    new-instance v1, Ljava/util/ArrayList;

    .line 218
    .line 219
    const/16 v4, 0xa

    .line 220
    .line 221
    invoke-static {v9, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-eqz v9, :cond_6

    .line 237
    .line 238
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    check-cast v9, Lcom/fsck/k9/backend/imap/LegacyFolderListItem;

    .line 243
    .line 244
    invoke-virtual {v0, v9}, Lcom/fsck/k9/backend/imap/ImapSync;->getNormalizedServerId(Lcom/fsck/k9/backend/imap/LegacyFolderListItem;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_6
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-instance v1, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 257
    .line 258
    const/4 v3, 0x1

    .line 259
    invoke-direct {v1, v3, v0}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v2, v5, v6, v1, v7}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 263
    .line 264
    .line 265
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_7

    .line 270
    .line 271
    iget-object v1, v14, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 274
    .line 275
    iget-object v2, v1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 276
    .line 277
    iget-object v2, v2, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v2, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 280
    .line 281
    iget-object v2, v2, Lcom/fsck/k9/storage/messages/K9MessageStore;->deleteFolderOperations:Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    iget-object v4, v2, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 287
    .line 288
    new-instance v5, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 289
    .line 290
    const/16 v6, 0xb

    .line 291
    .line 292
    invoke-direct {v5, v6, v0, v2}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v3, v5}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->notifyFolderSettingsChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    .line 300
    .line 301
    :cond_7
    invoke-virtual {v11}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->close()V

    .line 302
    .line 303
    .line 304
    return-object v8

    .line 305
    :goto_6
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    :catchall_1
    move-exception v0

    .line 307
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 308
    .line 309
    .line 310
    throw v0
.end method

.method public final search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandSearch:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    sget-object p1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->search(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Landroidx/viewpager/widget/ViewPager$1;

    .line 25
    .line 26
    const/16 v0, 0x10

    .line 27
    .line 28
    invoke-direct {p2, v0}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance p2, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v0, 0xa

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 71
    .line 72
    .line 73
    return-object p2

    .line 74
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public final sendMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->smtpTransport:Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->sendMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFlag(Ljava/lang/String;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 2

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
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandSetFlag:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :try_start_0
    sget-object p1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    const/16 v0, 0xa

    .line 36
    .line 37
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p0, p1, p2, p4}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->setFlags(Ljava/util/ArrayList;Ljava/util/Set;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method public final sync(Ljava/lang/String;Lcom/fsck/k9/backend/api/SyncConfig;Landroidx/room/RoomConnectionManager;)V
    .locals 34

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p0

    .line 11
    .line 12
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapBackend;->imapSync:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v0, "imapUidValidity"

    .line 18
    .line 19
    const-string v9, "Saving new highest known UID: %d"

    .line 20
    .line 21
    const-string v10, "imapHighestKnownUid"

    .line 22
    .line 23
    const-string v4, "Message count "

    .line 24
    .line 25
    iget-object v5, v2, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v11, v5

    .line 28
    check-cast v11, Ljava/lang/String;

    .line 29
    .line 30
    const/4 v12, 0x2

    .line 31
    new-array v5, v12, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v13, 0x0

    .line 34
    aput-object v11, v5, v13

    .line 35
    .line 36
    const/4 v14, 0x1

    .line 37
    aput-object v1, v5, v14

    .line 38
    .line 39
    const-string v6, "Synchronizing folder %s:%s"

    .line 40
    .line 41
    invoke-static {v6, v5}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    const-string v5, "SYNC: About to get local folder %s"

    .line 45
    .line 46
    new-array v15, v14, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v1, v15, v13

    .line 49
    .line 50
    invoke-static {v5, v15}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v5, v2, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Lokhttp3/Dispatcher;

    .line 56
    .line 57
    invoke-virtual {v5, v1}, Lokhttp3/Dispatcher;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/K9BackendFolder;

    .line 58
    .line 59
    .line 60
    move-result-object v5
    :try_end_0
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_27
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    .line 61
    :try_start_1
    iget-wide v6, v5, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 62
    .line 63
    iget-object v15, v5, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 64
    .line 65
    invoke-virtual {v8, v1}, Landroidx/room/RoomConnectionManager;->syncStarted(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move/from16 v18, v13

    .line 69
    .line 70
    const-string v13, "SYNC: About to get remote folder %s"

    .line 71
    .line 72
    new-array v12, v14, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v1, v12, v18

    .line 75
    .line 76
    invoke-static {v13, v12}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v12, v2, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v12, Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 82
    .line 83
    invoke-virtual {v12, v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 84
    .line 85
    .line 86
    move-result-object v12
    :try_end_1
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1 .. :try_end_1} :catch_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_25
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    .line 87
    :try_start_2
    const-string v13, "SYNC: About to open remote folder %s"
    :try_end_2
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1e
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    .line 88
    .line 89
    move-object/from16 v20, v2

    .line 90
    .line 91
    :try_start_3
    new-array v2, v14, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v1, v2, v18
    :try_end_3
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_23
    .catchall {:try_start_3 .. :try_end_3} :catchall_11

    .line 94
    .line 95
    :try_start_4
    invoke-static {v13, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v3, Lcom/fsck/k9/backend/api/SyncConfig;->expungePolicy:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;

    .line 99
    .line 100
    sget-object v13, Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;->ON_POLL:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;
    :try_end_4
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1e
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    .line 101
    .line 102
    if-ne v2, v13, :cond_3

    .line 103
    .line 104
    :try_start_5
    const-string v2, "SYNC: Expunging folder %s:%s"
    :try_end_5
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 105
    .line 106
    move/from16 v21, v14

    .line 107
    .line 108
    const/4 v13, 0x2

    .line 109
    :try_start_6
    new-array v14, v13, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object v11, v14, v18

    .line 112
    .line 113
    aput-object v1, v14, v21

    .line 114
    .line 115
    invoke-static {v2, v14}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, v12, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;
    :try_end_6
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    .line 120
    if-eqz v2, :cond_0

    .line 121
    .line 122
    move/from16 v2, v21

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    move/from16 v2, v18

    .line 126
    .line 127
    :goto_0
    sget-object v13, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 128
    .line 129
    if-eqz v2, :cond_1

    .line 130
    .line 131
    :try_start_7
    iget-object v2, v12, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->mode:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 132
    .line 133
    if-eq v2, v13, :cond_2

    .line 134
    .line 135
    goto :goto_a

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    :goto_1
    move-object v3, v9

    .line 138
    move-object v6, v10

    .line 139
    :goto_2
    const-wide/16 v13, 0x0

    .line 140
    .line 141
    :goto_3
    const-wide/16 v16, 0x0

    .line 142
    .line 143
    goto/16 :goto_3a

    .line 144
    .line 145
    :catch_0
    move-exception v0

    .line 146
    :goto_4
    move-object v2, v0

    .line 147
    move-object v3, v9

    .line 148
    move-object v6, v10

    .line 149
    move-object/from16 v24, v11

    .line 150
    .line 151
    :goto_5
    const-wide/16 v13, 0x0

    .line 152
    .line 153
    :goto_6
    const-wide/16 v16, 0x0

    .line 154
    .line 155
    goto/16 :goto_33

    .line 156
    .line 157
    :catch_1
    move-exception v0

    .line 158
    :goto_7
    move-object v3, v9

    .line 159
    move-object v6, v10

    .line 160
    :goto_8
    const-wide/16 v13, 0x0

    .line 161
    .line 162
    :goto_9
    const-wide/16 v16, 0x0

    .line 163
    .line 164
    goto/16 :goto_38

    .line 165
    .line 166
    :cond_1
    :goto_a
    invoke-virtual {v12, v13}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 167
    .line 168
    .line 169
    :cond_2
    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->expunge()V
    :try_end_7
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    .line 171
    .line 172
    goto :goto_b

    .line 173
    :catchall_1
    move-exception v0

    .line 174
    move/from16 v21, v14

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :catch_2
    move-exception v0

    .line 178
    move/from16 v21, v14

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :catch_3
    move-exception v0

    .line 182
    move/from16 v21, v14

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_3
    move/from16 v21, v14

    .line 186
    .line 187
    :goto_b
    :try_start_8
    sget-object v2, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 188
    .line 189
    invoke-virtual {v12, v2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Landroidx/room/RoomConnectionManager;->syncAuthenticationSuccess()V
    :try_end_8
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1e
    .catchall {:try_start_8 .. :try_end_8} :catchall_e

    .line 193
    .line 194
    .line 195
    :try_start_9
    iget-object v2, v12, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 196
    .line 197
    if-eqz v2, :cond_4

    .line 198
    .line 199
    iget-object v2, v12, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->uidValidity:Ljava/lang/Long;

    .line 200
    .line 201
    goto :goto_c

    .line 202
    :cond_4
    const-string v2, "ImapFolder needs to be open"

    .line 203
    .line 204
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    :goto_c
    iget-object v13, v15, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 209
    .line 210
    iget-object v13, v13, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v13, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 213
    .line 214
    invoke-virtual {v13, v6, v7, v0}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolderExtraNumber(JLjava/lang/String;)Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v13
    :try_end_9
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_23
    .catchall {:try_start_9 .. :try_end_9} :catchall_11

    .line 218
    if-nez v13, :cond_6

    .line 219
    .line 220
    if-eqz v2, :cond_6

    .line 221
    .line 222
    :try_start_a
    const-string v13, "SYNC: Saving UIDVALIDITY for %s"

    .line 223
    .line 224
    move-object/from16 v22, v2

    .line 225
    .line 226
    move/from16 v14, v21

    .line 227
    .line 228
    new-array v2, v14, [Ljava/lang/Object;

    .line 229
    .line 230
    aput-object v1, v2, v18

    .line 231
    .line 232
    invoke-static {v13, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    .line 236
    .line 237
    .line 238
    move-result-wide v13

    .line 239
    invoke-virtual {v5, v13, v14, v0}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setFolderExtraNumber(JLjava/lang/String;)V
    :try_end_a
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 240
    .line 241
    .line 242
    :cond_5
    const-wide/16 v13, 0x0

    .line 243
    .line 244
    goto :goto_13

    .line 245
    :cond_6
    move-object/from16 v22, v2

    .line 246
    .line 247
    if-eqz v13, :cond_5

    .line 248
    .line 249
    :try_start_b
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 250
    .line 251
    .line 252
    move-result-wide v13

    .line 253
    if-nez v22, :cond_7

    .line 254
    .line 255
    goto :goto_d

    .line 256
    :cond_7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    .line 257
    .line 258
    .line 259
    move-result-wide v23

    .line 260
    cmp-long v2, v13, v23

    .line 261
    .line 262
    if-eqz v2, :cond_5

    .line 263
    .line 264
    :goto_d
    const-string v2, "SYNC: UIDVALIDITY for %s changed; clearing local message cache"

    .line 265
    .line 266
    const/4 v14, 0x1

    .line 267
    new-array v13, v14, [Ljava/lang/Object;

    .line 268
    .line 269
    aput-object v1, v13, v18

    .line 270
    .line 271
    invoke-static {v2, v13}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/K9BackendFolder;->clearAllMessages()V

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    .line 281
    .line 282
    .line 283
    move-result-wide v13

    .line 284
    invoke-virtual {v5, v13, v14, v0}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setFolderExtraNumber(JLjava/lang/String;)V
    :try_end_b
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 285
    .line 286
    .line 287
    const-wide/16 v13, 0x0

    .line 288
    .line 289
    :try_start_c
    invoke-virtual {v5, v13, v14, v10}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setFolderExtraNumber(JLjava/lang/String;)V
    :try_end_c
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 290
    .line 291
    .line 292
    goto :goto_13

    .line 293
    :catchall_2
    move-exception v0

    .line 294
    :goto_e
    move-object v3, v9

    .line 295
    move-object v6, v10

    .line 296
    :goto_f
    move-wide/from16 v16, v13

    .line 297
    .line 298
    goto/16 :goto_3a

    .line 299
    .line 300
    :catch_4
    move-exception v0

    .line 301
    :goto_10
    move-object v2, v0

    .line 302
    move-object v3, v9

    .line 303
    move-object v6, v10

    .line 304
    move-object/from16 v24, v11

    .line 305
    .line 306
    move-wide/from16 v16, v13

    .line 307
    .line 308
    goto/16 :goto_33

    .line 309
    .line 310
    :catch_5
    move-exception v0

    .line 311
    :goto_11
    move-object v3, v9

    .line 312
    move-object v6, v10

    .line 313
    :goto_12
    move-wide/from16 v16, v13

    .line 314
    .line 315
    goto/16 :goto_38

    .line 316
    .line 317
    :catchall_3
    move-exception v0

    .line 318
    const-wide/16 v13, 0x0

    .line 319
    .line 320
    goto :goto_e

    .line 321
    :catch_6
    move-exception v0

    .line 322
    const-wide/16 v13, 0x0

    .line 323
    .line 324
    goto :goto_10

    .line 325
    :catch_7
    move-exception v0

    .line 326
    const-wide/16 v13, 0x0

    .line 327
    .line 328
    goto :goto_11

    .line 329
    :goto_13
    :try_start_d
    iget-object v0, v15, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 334
    .line 335
    invoke-virtual {v0, v6, v7, v10}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolderExtraNumber(JLjava/lang/String;)Ljava/lang/Long;

    .line 336
    .line 337
    .line 338
    move-result-object v0
    :try_end_d
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_d .. :try_end_d} :catch_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_21
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    .line 339
    if-eqz v0, :cond_8

    .line 340
    .line 341
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 342
    .line 343
    .line 344
    move-result-wide v16
    :try_end_e
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 345
    goto :goto_14

    .line 346
    :cond_8
    move-wide/from16 v16, v13

    .line 347
    .line 348
    :goto_14
    :try_start_f
    invoke-virtual {v15, v6, v7}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->getAllMessagesAndEffectiveDates(J)Ljava/util/Map;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iget v2, v12, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->messageCount:I
    :try_end_f
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_f .. :try_end_f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 353
    .line 354
    :try_start_10
    iget v13, v5, Lcom/fsck/k9/mailstore/K9BackendFolder;->visibleLimit:I

    .line 355
    .line 356
    if-gez v13, :cond_9

    .line 357
    .line 358
    const/16 v13, 0x19

    .line 359
    .line 360
    :cond_9
    new-instance v14, Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_10
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_10 .. :try_end_10} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1e
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    .line 363
    .line 364
    .line 365
    move-object/from16 v24, v11

    .line 366
    .line 367
    :try_start_11
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 368
    .line 369
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 370
    .line 371
    .line 372
    move/from16 v25, v13

    .line 373
    .line 374
    const-string v13, "SYNC: Remote message count for folder %s is %d"

    .line 375
    .line 376
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v26
    :try_end_11
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_11 .. :try_end_11} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1c
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    .line 380
    move-object/from16 v27, v4

    .line 381
    .line 382
    move-object/from16 v28, v10

    .line 383
    .line 384
    const/4 v4, 0x2

    .line 385
    :try_start_12
    new-array v10, v4, [Ljava/lang/Object;

    .line 386
    .line 387
    aput-object v1, v10, v18

    .line 388
    .line 389
    const/16 v21, 0x1

    .line 390
    .line 391
    aput-object v26, v10, v21
    :try_end_12
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 392
    .line 393
    :try_start_13
    invoke-static {v13, v10}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    iget-object v4, v3, Lcom/fsck/k9/backend/api/SyncConfig;->earliestPollDate:Ljava/util/Date;
    :try_end_13
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_18
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 397
    .line 398
    if-eqz v4, :cond_a

    .line 399
    .line 400
    :try_start_14
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 401
    .line 402
    .line 403
    move-result-wide v29

    .line 404
    goto :goto_15

    .line 405
    :catchall_4
    move-exception v0

    .line 406
    move-object v3, v9

    .line 407
    move-object/from16 v6, v28

    .line 408
    .line 409
    goto/16 :goto_2

    .line 410
    .line 411
    :catch_8
    move-exception v0

    .line 412
    move-object v2, v0

    .line 413
    move-object v3, v9

    .line 414
    move-object/from16 v6, v28

    .line 415
    .line 416
    goto/16 :goto_5

    .line 417
    .line 418
    :catch_9
    move-exception v0

    .line 419
    move-object v3, v9

    .line 420
    move-object/from16 v6, v28

    .line 421
    .line 422
    goto/16 :goto_8

    .line 423
    .line 424
    :cond_a
    const-wide/16 v29, 0x0

    .line 425
    .line 426
    :goto_15
    if-lez v2, :cond_10

    .line 427
    .line 428
    if-lez v25, :cond_b

    .line 429
    .line 430
    sub-int v10, v2, v25

    .line 431
    .line 432
    move/from16 v13, v18

    .line 433
    .line 434
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    .line 435
    .line 436
    .line 437
    move-result v10
    :try_end_14
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 438
    const/16 v21, 0x1

    .line 439
    .line 440
    add-int/lit8 v10, v10, 0x1

    .line 441
    .line 442
    goto :goto_16

    .line 443
    :cond_b
    const/4 v10, 0x1

    .line 444
    :goto_16
    :try_start_15
    const-string v13, "SYNC: About to get messages %d through %d for folder %s"

    .line 445
    .line 446
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v25

    .line 450
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v26
    :try_end_15
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 454
    move-object/from16 v31, v9

    .line 455
    .line 456
    const/4 v9, 0x3

    .line 457
    :try_start_16
    new-array v3, v9, [Ljava/lang/Object;

    .line 458
    .line 459
    const/4 v9, 0x0

    .line 460
    aput-object v25, v3, v9

    .line 461
    .line 462
    const/16 v21, 0x1

    .line 463
    .line 464
    aput-object v26, v3, v21

    .line 465
    .line 466
    const/16 v19, 0x2

    .line 467
    .line 468
    aput-object v1, v3, v19

    .line 469
    .line 470
    invoke-static {v13, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 474
    .line 475
    invoke-direct {v3, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v8, v1}, Landroidx/room/RoomConnectionManager;->syncHeadersStarted(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v12, v10, v2, v4}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getMessages(IILjava/util/Date;)Ljava/util/ArrayList;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 486
    .line 487
    .line 488
    move-result v9

    .line 489
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 490
    .line 491
    .line 492
    move-result-object v2
    :try_end_16
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 493
    const-wide/16 v25, 0x0

    .line 494
    .line 495
    :goto_17
    :try_start_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    .line 497
    .line 498
    move-result v13

    .line 499
    if-eqz v13, :cond_f

    .line 500
    .line 501
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v13

    .line 505
    check-cast v13, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 506
    .line 507
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 508
    .line 509
    .line 510
    move-object/from16 v27, v2

    .line 511
    .line 512
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    invoke-virtual {v8, v2, v1, v9}, Landroidx/room/RoomConnectionManager;->syncHeadersProgress(ILjava/lang/String;I)V

    .line 517
    .line 518
    .line 519
    iget-object v2, v13, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 525
    .line 526
    .line 527
    move-result-wide v32

    .line 528
    cmp-long v2, v32, v16

    .line 529
    .line 530
    if-lez v2, :cond_c

    .line 531
    .line 532
    cmp-long v2, v32, v25

    .line 533
    .line 534
    if-lez v2, :cond_c

    .line 535
    .line 536
    move-wide/from16 v25, v32

    .line 537
    .line 538
    :cond_c
    iget-object v2, v13, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 539
    .line 540
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    check-cast v2, Ljava/lang/Long;

    .line 545
    .line 546
    if-eqz v2, :cond_d

    .line 547
    .line 548
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 549
    .line 550
    .line 551
    move-result-wide v32

    .line 552
    cmp-long v2, v32, v29

    .line 553
    .line 554
    if-ltz v2, :cond_e

    .line 555
    .line 556
    goto :goto_1a

    .line 557
    :catchall_5
    move-exception v0

    .line 558
    :goto_18
    move-wide/from16 v13, v25

    .line 559
    .line 560
    move-object/from16 v6, v28

    .line 561
    .line 562
    move-object/from16 v3, v31

    .line 563
    .line 564
    goto/16 :goto_3

    .line 565
    .line 566
    :catch_a
    move-exception v0

    .line 567
    move-object v2, v0

    .line 568
    move-wide/from16 v13, v25

    .line 569
    .line 570
    move-object/from16 v6, v28

    .line 571
    .line 572
    move-object/from16 v3, v31

    .line 573
    .line 574
    goto/16 :goto_6

    .line 575
    .line 576
    :catch_b
    move-exception v0

    .line 577
    :goto_19
    move-wide/from16 v13, v25

    .line 578
    .line 579
    move-object/from16 v6, v28

    .line 580
    .line 581
    move-object/from16 v3, v31

    .line 582
    .line 583
    goto/16 :goto_9

    .line 584
    .line 585
    :cond_d
    :goto_1a
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    iget-object v2, v13, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 589
    .line 590
    invoke-interface {v11, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    :cond_e
    move-object/from16 v2, v27

    .line 594
    .line 595
    goto :goto_17

    .line 596
    :cond_f
    const-string v2, "SYNC: Got %d messages for folder %s"

    .line 597
    .line 598
    invoke-interface {v11}, Ljava/util/Map;->size()I

    .line 599
    .line 600
    .line 601
    move-result v9

    .line 602
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 603
    .line 604
    .line 605
    move-result-object v9

    .line 606
    move-object/from16 v27, v3

    .line 607
    .line 608
    const/4 v13, 0x2

    .line 609
    new-array v3, v13, [Ljava/lang/Object;

    .line 610
    .line 611
    const/16 v18, 0x0

    .line 612
    .line 613
    aput-object v9, v3, v18

    .line 614
    .line 615
    const/16 v21, 0x1

    .line 616
    .line 617
    aput-object v1, v3, v21

    .line 618
    .line 619
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    invoke-interface {v11}, Ljava/util/Map;->size()I

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    invoke-virtual {v8, v2, v1, v3}, Landroidx/room/RoomConnectionManager;->syncHeadersFinished(ILjava/lang/String;I)V
    :try_end_17
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 631
    .line 632
    .line 633
    goto :goto_1e

    .line 634
    :catchall_6
    move-exception v0

    .line 635
    :goto_1b
    move-object/from16 v6, v28

    .line 636
    .line 637
    move-object/from16 v3, v31

    .line 638
    .line 639
    goto/16 :goto_2

    .line 640
    .line 641
    :catch_c
    move-exception v0

    .line 642
    :goto_1c
    move-object v2, v0

    .line 643
    move-object/from16 v6, v28

    .line 644
    .line 645
    move-object/from16 v3, v31

    .line 646
    .line 647
    goto/16 :goto_5

    .line 648
    .line 649
    :catch_d
    move-exception v0

    .line 650
    :goto_1d
    move-object/from16 v6, v28

    .line 651
    .line 652
    move-object/from16 v3, v31

    .line 653
    .line 654
    goto/16 :goto_8

    .line 655
    .line 656
    :catchall_7
    move-exception v0

    .line 657
    move-object/from16 v31, v9

    .line 658
    .line 659
    goto :goto_1b

    .line 660
    :catch_e
    move-exception v0

    .line 661
    move-object/from16 v31, v9

    .line 662
    .line 663
    goto :goto_1c

    .line 664
    :catch_f
    move-exception v0

    .line 665
    move-object/from16 v31, v9

    .line 666
    .line 667
    goto :goto_1d

    .line 668
    :cond_10
    move-object/from16 v31, v9

    .line 669
    .line 670
    if-ltz v2, :cond_19

    .line 671
    .line 672
    const/4 v10, 0x1

    .line 673
    const-wide/16 v25, 0x0

    .line 674
    .line 675
    :goto_1e
    :try_start_18
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 676
    .line 677
    invoke-direct {v2, v5}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(Lcom/fsck/k9/mailstore/K9BackendFolder;)V

    .line 678
    .line 679
    .line 680
    iget-object v3, v15, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 681
    .line 682
    iget-object v3, v3, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v3, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 685
    .line 686
    invoke-virtual {v3, v6, v7, v2}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolder(JLapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    check-cast v2, Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;
    :try_end_18
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 691
    .line 692
    sget-object v3, Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;

    .line 693
    .line 694
    if-nez v2, :cond_11

    .line 695
    .line 696
    move-object v2, v3

    .line 697
    :cond_11
    move-object/from16 v9, p2

    .line 698
    .line 699
    :try_start_19
    iget-boolean v13, v9, Lcom/fsck/k9/backend/api/SyncConfig;->syncRemoteDeletions:Z
    :try_end_19
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 700
    .line 701
    if-eqz v13, :cond_15

    .line 702
    .line 703
    :try_start_1a
    new-instance v13, Ljava/util/ArrayList;

    .line 704
    .line 705
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .line 707
    .line 708
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 717
    .line 718
    .line 719
    move-result v27

    .line 720
    if-eqz v27, :cond_13

    .line 721
    .line 722
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v27

    .line 726
    move-object/from16 v29, v2

    .line 727
    .line 728
    move-object/from16 v2, v27

    .line 729
    .line 730
    check-cast v2, Ljava/lang/String;

    .line 731
    .line 732
    invoke-virtual {v11, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v27

    .line 736
    if-nez v27, :cond_12

    .line 737
    .line 738
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    :cond_12
    move-object/from16 v2, v29

    .line 742
    .line 743
    goto :goto_1f

    .line 744
    :cond_13
    move-object/from16 v29, v2

    .line 745
    .line 746
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 747
    .line 748
    .line 749
    move-result v0

    .line 750
    if-nez v0, :cond_16

    .line 751
    .line 752
    iget-object v0, v15, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 753
    .line 754
    invoke-virtual {v0, v6, v7, v13}, Lcom/fsck/k9/mailstore/LocalStore$1;->destroyMessages(JLjava/util/Collection;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    if-eqz v2, :cond_14

    .line 766
    .line 767
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    check-cast v2, Ljava/lang/String;

    .line 772
    .line 773
    invoke-virtual {v8, v1, v2}, Landroidx/room/RoomConnectionManager;->syncRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    goto :goto_20

    .line 777
    :cond_14
    move-object v2, v3

    .line 778
    goto :goto_21

    .line 779
    :cond_15
    move-object/from16 v29, v2

    .line 780
    .line 781
    :cond_16
    move-object/from16 v2, v29

    .line 782
    .line 783
    :goto_21
    if-ne v2, v3, :cond_17

    .line 784
    .line 785
    invoke-static {v12, v5, v4, v10}, Lcom/fsck/k9/backend/imap/ImapSync;->updateMoreMessages(Lcom/fsck/k9/mail/store/imap/RealImapFolder;Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/Date;I)V
    :try_end_1a
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 786
    .line 787
    .line 788
    :cond_17
    :try_start_1b
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 789
    .line 790
    .line 791
    move-result-object v0
    :try_end_1b
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1b .. :try_end_1b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_12
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    .line 792
    move-wide v10, v6

    .line 793
    move-object v3, v9

    .line 794
    move-object v4, v12

    .line 795
    move-object v6, v14

    .line 796
    move-object/from16 v2, v20

    .line 797
    .line 798
    move-wide/from16 v13, v25

    .line 799
    .line 800
    const/4 v9, 0x0

    .line 801
    const-wide/16 v16, 0x0

    .line 802
    .line 803
    move-object v7, v0

    .line 804
    :try_start_1c
    invoke-virtual/range {v2 .. v8}, Lcom/fsck/k9/backend/imap/ImapSync;->downloadMessages(Lcom/fsck/k9/backend/api/SyncConfig;Lcom/fsck/k9/mail/store/imap/RealImapFolder;Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/List;Ljava/lang/Long;Lcom/fsck/k9/backend/api/SyncListener;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v8, v1}, Landroidx/room/RoomConnectionManager;->folderStatusChanged(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 811
    .line 812
    .line 813
    move-result-wide v2

    .line 814
    invoke-virtual {v15, v10, v11, v2, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setLastChecked(JJ)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v15, v10, v11, v9}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setStatus(JLjava/lang/String;)V

    .line 818
    .line 819
    .line 820
    const-string v0, "Done synchronizing folder %s:%s @ %tc"

    .line 821
    .line 822
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 823
    .line 824
    .line 825
    move-result-wide v2

    .line 826
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    const/4 v9, 0x3

    .line 831
    new-array v3, v9, [Ljava/lang/Object;

    .line 832
    .line 833
    const/16 v18, 0x0

    .line 834
    .line 835
    aput-object v24, v3, v18

    .line 836
    .line 837
    const/16 v21, 0x1

    .line 838
    .line 839
    aput-object v1, v3, v21

    .line 840
    .line 841
    const/4 v6, 0x2

    .line 842
    aput-object v2, v3, v6

    .line 843
    .line 844
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v8, v1}, Landroidx/room/RoomConnectionManager;->syncFinished(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    const-string v0, "Done synchronizing folder %s:%s"

    .line 851
    .line 852
    new-array v2, v6, [Ljava/lang/Object;

    .line 853
    .line 854
    const/16 v18, 0x0

    .line 855
    .line 856
    aput-object v24, v2, v18

    .line 857
    .line 858
    const/4 v3, 0x1

    .line 859
    aput-object v1, v2, v3

    .line 860
    .line 861
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1c
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 862
    .line 863
    .line 864
    cmp-long v0, v13, v16

    .line 865
    .line 866
    if-lez v0, :cond_18

    .line 867
    .line 868
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    new-array v1, v3, [Ljava/lang/Object;

    .line 873
    .line 874
    aput-object v0, v1, v18

    .line 875
    .line 876
    move-object/from16 v3, v31

    .line 877
    .line 878
    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 879
    .line 880
    .line 881
    move-object/from16 v6, v28

    .line 882
    .line 883
    invoke-virtual {v5, v13, v14, v6}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setFolderExtraNumber(JLjava/lang/String;)V

    .line 884
    .line 885
    .line 886
    :cond_18
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 887
    .line 888
    .line 889
    return-void

    .line 890
    :catchall_8
    move-exception v0

    .line 891
    move-object/from16 v6, v28

    .line 892
    .line 893
    move-object/from16 v3, v31

    .line 894
    .line 895
    :goto_22
    move-object v12, v4

    .line 896
    goto/16 :goto_3a

    .line 897
    .line 898
    :catch_10
    move-exception v0

    .line 899
    move-object/from16 v6, v28

    .line 900
    .line 901
    move-object/from16 v3, v31

    .line 902
    .line 903
    :goto_23
    move-object v2, v0

    .line 904
    move-object v12, v4

    .line 905
    goto/16 :goto_33

    .line 906
    .line 907
    :catch_11
    move-exception v0

    .line 908
    move-object/from16 v6, v28

    .line 909
    .line 910
    move-object/from16 v3, v31

    .line 911
    .line 912
    :goto_24
    move-object v12, v4

    .line 913
    goto/16 :goto_38

    .line 914
    .line 915
    :catchall_9
    move-exception v0

    .line 916
    move-object v4, v12

    .line 917
    goto/16 :goto_18

    .line 918
    .line 919
    :catch_12
    move-exception v0

    .line 920
    move-object v4, v12

    .line 921
    move-wide/from16 v13, v25

    .line 922
    .line 923
    move-object/from16 v6, v28

    .line 924
    .line 925
    move-object/from16 v3, v31

    .line 926
    .line 927
    const-wide/16 v16, 0x0

    .line 928
    .line 929
    :goto_25
    move-object v2, v0

    .line 930
    goto/16 :goto_33

    .line 931
    .line 932
    :catch_13
    move-exception v0

    .line 933
    move-object v4, v12

    .line 934
    goto/16 :goto_19

    .line 935
    .line 936
    :catchall_a
    move-exception v0

    .line 937
    move-object v4, v12

    .line 938
    move-wide/from16 v13, v25

    .line 939
    .line 940
    move-object/from16 v6, v28

    .line 941
    .line 942
    move-object/from16 v3, v31

    .line 943
    .line 944
    const-wide/16 v16, 0x0

    .line 945
    .line 946
    goto :goto_22

    .line 947
    :catch_14
    move-exception v0

    .line 948
    move-object v4, v12

    .line 949
    move-wide/from16 v13, v25

    .line 950
    .line 951
    move-object/from16 v6, v28

    .line 952
    .line 953
    move-object/from16 v3, v31

    .line 954
    .line 955
    const-wide/16 v16, 0x0

    .line 956
    .line 957
    goto :goto_23

    .line 958
    :catch_15
    move-exception v0

    .line 959
    move-object v4, v12

    .line 960
    move-wide/from16 v13, v25

    .line 961
    .line 962
    move-object/from16 v6, v28

    .line 963
    .line 964
    move-object/from16 v3, v31

    .line 965
    .line 966
    const-wide/16 v16, 0x0

    .line 967
    .line 968
    goto :goto_24

    .line 969
    :cond_19
    move-object v4, v12

    .line 970
    move-object/from16 v6, v28

    .line 971
    .line 972
    move-object/from16 v3, v31

    .line 973
    .line 974
    const-wide/16 v16, 0x0

    .line 975
    .line 976
    :try_start_1d
    new-instance v0, Ljava/lang/Exception;

    .line 977
    .line 978
    new-instance v7, Ljava/lang/StringBuilder;

    .line 979
    .line 980
    move-object/from16 v9, v27

    .line 981
    .line 982
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    const-string v2, " for folder "

    .line 989
    .line 990
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    .line 992
    .line 993
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    throw v0
    :try_end_1d
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1d .. :try_end_1d} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_16
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .line 1004
    :catchall_b
    move-exception v0

    .line 1005
    :goto_26
    move-object v12, v4

    .line 1006
    :goto_27
    move-wide/from16 v13, v16

    .line 1007
    .line 1008
    goto/16 :goto_3a

    .line 1009
    .line 1010
    :catch_16
    move-exception v0

    .line 1011
    :goto_28
    move-object v2, v0

    .line 1012
    move-object v12, v4

    .line 1013
    :goto_29
    move-wide/from16 v13, v16

    .line 1014
    .line 1015
    goto/16 :goto_33

    .line 1016
    .line 1017
    :catch_17
    move-exception v0

    .line 1018
    :goto_2a
    move-object v12, v4

    .line 1019
    :goto_2b
    move-wide/from16 v13, v16

    .line 1020
    .line 1021
    goto/16 :goto_38

    .line 1022
    .line 1023
    :catchall_c
    move-exception v0

    .line 1024
    move-object v3, v9

    .line 1025
    move-object v4, v12

    .line 1026
    move-object/from16 v6, v28

    .line 1027
    .line 1028
    :goto_2c
    const-wide/16 v16, 0x0

    .line 1029
    .line 1030
    goto :goto_27

    .line 1031
    :catch_18
    move-exception v0

    .line 1032
    move-object v3, v9

    .line 1033
    move-object v4, v12

    .line 1034
    move-object/from16 v6, v28

    .line 1035
    .line 1036
    :goto_2d
    const-wide/16 v16, 0x0

    .line 1037
    .line 1038
    move-object v2, v0

    .line 1039
    goto :goto_29

    .line 1040
    :catch_19
    move-exception v0

    .line 1041
    move-object v3, v9

    .line 1042
    move-object v4, v12

    .line 1043
    move-object/from16 v6, v28

    .line 1044
    .line 1045
    :goto_2e
    const-wide/16 v16, 0x0

    .line 1046
    .line 1047
    goto :goto_2b

    .line 1048
    :catchall_d
    move-exception v0

    .line 1049
    move-object v3, v9

    .line 1050
    move-object v4, v12

    .line 1051
    move-object/from16 v6, v28

    .line 1052
    .line 1053
    :goto_2f
    const-wide/16 v16, 0x0

    .line 1054
    .line 1055
    goto :goto_26

    .line 1056
    :catch_1a
    move-exception v0

    .line 1057
    move-object v3, v9

    .line 1058
    move-object v4, v12

    .line 1059
    move-object/from16 v6, v28

    .line 1060
    .line 1061
    :goto_30
    const-wide/16 v16, 0x0

    .line 1062
    .line 1063
    goto :goto_28

    .line 1064
    :catch_1b
    move-exception v0

    .line 1065
    move-object v3, v9

    .line 1066
    move-object v4, v12

    .line 1067
    move-object/from16 v6, v28

    .line 1068
    .line 1069
    :goto_31
    const-wide/16 v16, 0x0

    .line 1070
    .line 1071
    goto :goto_2a

    .line 1072
    :catchall_e
    move-exception v0

    .line 1073
    move-object v3, v9

    .line 1074
    move-object v6, v10

    .line 1075
    move-object v4, v12

    .line 1076
    goto :goto_2c

    .line 1077
    :catch_1c
    move-exception v0

    .line 1078
    move-object v3, v9

    .line 1079
    move-object v6, v10

    .line 1080
    :goto_32
    move-object v4, v12

    .line 1081
    goto :goto_2d

    .line 1082
    :catch_1d
    move-exception v0

    .line 1083
    move-object v3, v9

    .line 1084
    move-object v6, v10

    .line 1085
    move-object v4, v12

    .line 1086
    goto :goto_2e

    .line 1087
    :catch_1e
    move-exception v0

    .line 1088
    move-object v3, v9

    .line 1089
    move-object v6, v10

    .line 1090
    move-object/from16 v24, v11

    .line 1091
    .line 1092
    goto :goto_32

    .line 1093
    :catchall_f
    move-exception v0

    .line 1094
    move-object v3, v9

    .line 1095
    move-object v6, v10

    .line 1096
    move-object v4, v12

    .line 1097
    goto/16 :goto_f

    .line 1098
    .line 1099
    :catch_1f
    move-exception v0

    .line 1100
    move-object v3, v9

    .line 1101
    move-object v6, v10

    .line 1102
    move-object/from16 v24, v11

    .line 1103
    .line 1104
    move-object v4, v12

    .line 1105
    move-wide/from16 v16, v13

    .line 1106
    .line 1107
    goto/16 :goto_25

    .line 1108
    .line 1109
    :catch_20
    move-exception v0

    .line 1110
    move-object v3, v9

    .line 1111
    move-object v6, v10

    .line 1112
    move-object v4, v12

    .line 1113
    goto/16 :goto_12

    .line 1114
    .line 1115
    :catchall_10
    move-exception v0

    .line 1116
    move-object v3, v9

    .line 1117
    move-object v6, v10

    .line 1118
    move-object v4, v12

    .line 1119
    move-wide/from16 v16, v13

    .line 1120
    .line 1121
    goto :goto_26

    .line 1122
    :catch_21
    move-exception v0

    .line 1123
    move-object v3, v9

    .line 1124
    move-object v6, v10

    .line 1125
    move-object/from16 v24, v11

    .line 1126
    .line 1127
    move-object v4, v12

    .line 1128
    move-wide/from16 v16, v13

    .line 1129
    .line 1130
    goto :goto_28

    .line 1131
    :catch_22
    move-exception v0

    .line 1132
    move-object v3, v9

    .line 1133
    move-object v6, v10

    .line 1134
    move-object v4, v12

    .line 1135
    move-wide/from16 v16, v13

    .line 1136
    .line 1137
    goto :goto_2a

    .line 1138
    :catchall_11
    move-exception v0

    .line 1139
    move-object v3, v9

    .line 1140
    move-object v6, v10

    .line 1141
    move-object v4, v12

    .line 1142
    goto :goto_2f

    .line 1143
    :catch_23
    move-exception v0

    .line 1144
    move-object v3, v9

    .line 1145
    move-object v6, v10

    .line 1146
    move-object/from16 v24, v11

    .line 1147
    .line 1148
    move-object v4, v12

    .line 1149
    goto :goto_30

    .line 1150
    :catch_24
    move-exception v0

    .line 1151
    move-object v3, v9

    .line 1152
    move-object v6, v10

    .line 1153
    move-object v4, v12

    .line 1154
    goto :goto_31

    .line 1155
    :catchall_12
    move-exception v0

    .line 1156
    move-object v3, v9

    .line 1157
    move-object v6, v10

    .line 1158
    const/4 v9, 0x0

    .line 1159
    const-wide/16 v16, 0x0

    .line 1160
    .line 1161
    move-object v12, v9

    .line 1162
    goto/16 :goto_27

    .line 1163
    .line 1164
    :catch_25
    move-exception v0

    .line 1165
    move-object v3, v9

    .line 1166
    move-object v6, v10

    .line 1167
    move-object/from16 v24, v11

    .line 1168
    .line 1169
    const/4 v9, 0x0

    .line 1170
    const-wide/16 v16, 0x0

    .line 1171
    .line 1172
    move-object v2, v0

    .line 1173
    move-object v12, v9

    .line 1174
    goto/16 :goto_29

    .line 1175
    .line 1176
    :catch_26
    move-exception v0

    .line 1177
    move-object v3, v9

    .line 1178
    move-object v6, v10

    .line 1179
    const/4 v9, 0x0

    .line 1180
    const-wide/16 v16, 0x0

    .line 1181
    .line 1182
    move-object v12, v9

    .line 1183
    goto/16 :goto_2b

    .line 1184
    .line 1185
    :catchall_13
    move-exception v0

    .line 1186
    move-object v3, v9

    .line 1187
    move-object v6, v10

    .line 1188
    const/4 v9, 0x0

    .line 1189
    const-wide/16 v16, 0x0

    .line 1190
    .line 1191
    move-object v5, v9

    .line 1192
    move-object v12, v5

    .line 1193
    goto/16 :goto_27

    .line 1194
    .line 1195
    :catch_27
    move-exception v0

    .line 1196
    move-object v3, v9

    .line 1197
    move-object v6, v10

    .line 1198
    move-object/from16 v24, v11

    .line 1199
    .line 1200
    const/4 v9, 0x0

    .line 1201
    const-wide/16 v16, 0x0

    .line 1202
    .line 1203
    move-object v2, v0

    .line 1204
    move-object v5, v9

    .line 1205
    move-object v12, v5

    .line 1206
    goto/16 :goto_29

    .line 1207
    .line 1208
    :catch_28
    move-exception v0

    .line 1209
    move-object v3, v9

    .line 1210
    move-object v6, v10

    .line 1211
    const/4 v9, 0x0

    .line 1212
    const-wide/16 v16, 0x0

    .line 1213
    .line 1214
    move-object v5, v9

    .line 1215
    move-object v12, v5

    .line 1216
    goto/16 :goto_2b

    .line 1217
    .line 1218
    :goto_33
    :try_start_1e
    const-string v0, "synchronizeMailbox"

    .line 1219
    .line 1220
    const/4 v9, 0x0

    .line 1221
    new-array v4, v9, [Ljava/lang/Object;

    .line 1222
    .line 1223
    invoke-static {v2, v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-static {v2}, Lokhttp3/CacheControl$Companion;->getRootCauseMessage(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_16

    .line 1230
    if-nez v0, :cond_1a

    .line 1231
    .line 1232
    :try_start_1f
    const-string v0, ""
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_14

    .line 1233
    .line 1234
    :cond_1a
    move-object v4, v0

    .line 1235
    goto :goto_34

    .line 1236
    :catchall_14
    move-exception v0

    .line 1237
    goto/16 :goto_3a

    .line 1238
    .line 1239
    :goto_34
    if-eqz v5, :cond_1b

    .line 1240
    .line 1241
    :try_start_20
    iget-object v0, v5, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 1242
    .line 1243
    iget-wide v9, v5, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 1244
    .line 1245
    invoke-virtual {v0, v9, v10, v4}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setStatus(JLjava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2a
    .catchall {:try_start_20 .. :try_end_20} :catchall_15

    .line 1246
    .line 1247
    .line 1248
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1249
    .line 1250
    .line 1251
    move-result-wide v9
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2a
    .catchall {:try_start_21 .. :try_end_21} :catchall_16

    .line 1252
    :try_start_22
    iget-object v0, v5, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2a
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    .line 1253
    .line 1254
    move-object/from16 p0, v12

    .line 1255
    .line 1256
    :try_start_23
    iget-wide v11, v5, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 1257
    .line 1258
    invoke-virtual {v0, v11, v12, v9, v10}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setLastChecked(JJ)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_29
    .catchall {:try_start_23 .. :try_end_23} :catchall_17

    .line 1259
    .line 1260
    .line 1261
    goto :goto_37

    .line 1262
    :catch_29
    move-exception v0

    .line 1263
    goto :goto_36

    .line 1264
    :catchall_15
    move-exception v0

    .line 1265
    move-object/from16 p0, v12

    .line 1266
    .line 1267
    :goto_35
    move-object/from16 v12, p0

    .line 1268
    .line 1269
    goto/16 :goto_3a

    .line 1270
    .line 1271
    :catchall_16
    move-exception v0

    .line 1272
    move-object/from16 p0, v12

    .line 1273
    .line 1274
    goto/16 :goto_3a

    .line 1275
    .line 1276
    :catch_2a
    move-exception v0

    .line 1277
    move-object/from16 p0, v12

    .line 1278
    .line 1279
    :goto_36
    :try_start_24
    const-string v7, "Could not set last checked on folder %s:%s"

    .line 1280
    .line 1281
    const/4 v9, 0x2

    .line 1282
    new-array v10, v9, [Ljava/lang/Object;

    .line 1283
    .line 1284
    const/16 v18, 0x0

    .line 1285
    .line 1286
    aput-object v24, v10, v18

    .line 1287
    .line 1288
    const/16 v21, 0x1

    .line 1289
    .line 1290
    aput-object v1, v10, v21

    .line 1291
    .line 1292
    invoke-static {v0, v7, v10}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1293
    .line 1294
    .line 1295
    goto :goto_37

    .line 1296
    :catchall_17
    move-exception v0

    .line 1297
    goto :goto_35

    .line 1298
    :cond_1b
    move-object/from16 p0, v12

    .line 1299
    .line 1300
    :goto_37
    invoke-virtual {v8, v1, v4, v2}, Landroidx/room/RoomConnectionManager;->syncFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1301
    .line 1302
    .line 1303
    const-string v0, "Failed synchronizing folder %s:%s @ %tc"

    .line 1304
    .line 1305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1306
    .line 1307
    .line 1308
    move-result-wide v7

    .line 1309
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v2

    .line 1313
    const/4 v9, 0x3

    .line 1314
    new-array v4, v9, [Ljava/lang/Object;

    .line 1315
    .line 1316
    const/16 v18, 0x0

    .line 1317
    .line 1318
    aput-object v24, v4, v18

    .line 1319
    .line 1320
    const/4 v7, 0x1

    .line 1321
    aput-object v1, v4, v7

    .line 1322
    .line 1323
    const/16 v19, 0x2

    .line 1324
    .line 1325
    aput-object v2, v4, v19

    .line 1326
    .line 1327
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_17

    .line 1328
    .line 1329
    .line 1330
    cmp-long v0, v13, v16

    .line 1331
    .line 1332
    if-lez v0, :cond_1c

    .line 1333
    .line 1334
    if-eqz v5, :cond_1c

    .line 1335
    .line 1336
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0

    .line 1340
    new-array v1, v7, [Ljava/lang/Object;

    .line 1341
    .line 1342
    const/16 v18, 0x0

    .line 1343
    .line 1344
    aput-object v0, v1, v18

    .line 1345
    .line 1346
    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v5, v13, v14, v6}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setFolderExtraNumber(JLjava/lang/String;)V

    .line 1350
    .line 1351
    .line 1352
    :cond_1c
    if-eqz p0, :cond_1e

    .line 1353
    .line 1354
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 1355
    .line 1356
    .line 1357
    goto :goto_39

    .line 1358
    :goto_38
    :try_start_25
    const-string v2, "Authentication failure"

    .line 1359
    .line 1360
    invoke-virtual {v8, v1, v2, v0}, Landroidx/room/RoomConnectionManager;->syncFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    .line 1361
    .line 1362
    .line 1363
    cmp-long v0, v13, v16

    .line 1364
    .line 1365
    if-lez v0, :cond_1d

    .line 1366
    .line 1367
    if-eqz v5, :cond_1d

    .line 1368
    .line 1369
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v0

    .line 1373
    const/4 v7, 0x1

    .line 1374
    new-array v1, v7, [Ljava/lang/Object;

    .line 1375
    .line 1376
    const/16 v18, 0x0

    .line 1377
    .line 1378
    aput-object v0, v1, v18

    .line 1379
    .line 1380
    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v5, v13, v14, v6}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setFolderExtraNumber(JLjava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    :cond_1d
    if-eqz v12, :cond_1e

    .line 1387
    .line 1388
    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 1389
    .line 1390
    .line 1391
    :cond_1e
    :goto_39
    return-void

    .line 1392
    :goto_3a
    cmp-long v1, v13, v16

    .line 1393
    .line 1394
    if-lez v1, :cond_1f

    .line 1395
    .line 1396
    if-eqz v5, :cond_1f

    .line 1397
    .line 1398
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v1

    .line 1402
    const/4 v7, 0x1

    .line 1403
    new-array v2, v7, [Ljava/lang/Object;

    .line 1404
    .line 1405
    const/16 v18, 0x0

    .line 1406
    .line 1407
    aput-object v1, v2, v18

    .line 1408
    .line 1409
    invoke-static {v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {v5, v13, v14, v6}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setFolderExtraNumber(JLjava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    :cond_1f
    if-eqz v12, :cond_20

    .line 1416
    .line 1417
    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 1418
    .line 1419
    .line 1420
    :cond_20
    throw v0
.end method

.method public final uploadMessage(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackend;->commandUploadMessage:Lcom/fsck/k9/backend/imap/CommandDelete;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    sget-object p1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->appendMessages(Ljava/util/List;)Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method
