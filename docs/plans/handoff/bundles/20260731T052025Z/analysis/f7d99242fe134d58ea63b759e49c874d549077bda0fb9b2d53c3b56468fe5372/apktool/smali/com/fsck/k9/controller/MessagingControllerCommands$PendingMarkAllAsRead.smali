.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final folderId:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;->folderId:J

    .line 5
    .line 6
    return-void
.end method

.method public static create(J)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;
    .locals 1

    .line 1
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public execute(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;->folderId:J

    .line 5
    .line 6
    iget-object p0, p1, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 13
    .line 14
    invoke-direct {v2, p0, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 18
    .line 19
    .line 20
    iget-object p0, v2, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    aput-object p2, v0, v1

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    aput-object p0, v0, v3

    .line 30
    .line 31
    const-string v4, "Marking all messages in %s:%s as read"

    .line 32
    .line 33
    invoke-static {v4, v0}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Z)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 55
    .line 56
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 57
    .line 58
    iget-object v4, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 59
    .line 60
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p1, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 87
    .line 88
    invoke-virtual {v1, p2}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {p1}, Lcom/fsck/k9/backend/api/Backend;->getSupportsFlags()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    invoke-interface {p1, p0}, Lcom/fsck/k9/backend/api/Backend;->markAllAsRead(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "mark_all_as_read"

    .line 2
    .line 3
    return-object p0
.end method
