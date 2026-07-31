.class public final Lcom/fsck/k9/backend/imap/CommandDelete;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public moveOrCopyMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/util/Map;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/CommandDelete;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string p0, "moveOrCopyMessages: no remote messages to move, skipping"

    .line 16
    .line 17
    new-array p1, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    move-object p1, v0

    .line 28
    move-object v0, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :try_start_2
    sget-object v2, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v4, 0xa

    .line 38
    .line 39
    invoke-static {p3, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v5, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 66
    .line 67
    invoke-direct {v5, v4}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string p3, "moveOrCopyMessages: source folder = %s, %d messages, destination folder = %s, isCopy = %s"

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/4 v6, 0x4

    .line 89
    new-array v6, v6, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object p1, v6, v3

    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    aput-object v4, v6, p1

    .line 95
    .line 96
    const/4 p1, 0x2

    .line 97
    aput-object p2, v6, p1

    .line 98
    .line 99
    const/4 p1, 0x3

    .line 100
    aput-object v5, v6, p1

    .line 101
    .line 102
    invoke-static {p3, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz p4, :cond_2

    .line 110
    .line 111
    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->copyMessages(Ljava/util/ArrayList;Lcom/fsck/k9/mail/store/imap/RealImapFolder;)Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->moveMessages(Ljava/util/ArrayList;Lcom/fsck/k9/mail/store/imap/RealImapFolder;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :goto_1
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    move-object p1, v0

    .line 129
    :goto_2
    if-eqz v0, :cond_3

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 132
    .line 133
    .line 134
    :cond_3
    if-eqz p1, :cond_4

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 137
    .line 138
    .line 139
    :cond_4
    throw p0
.end method
