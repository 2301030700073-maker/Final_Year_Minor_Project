.class public final Lcom/fsck/k9/mail/store/pop3/Pop3Folder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

.field public messageCount:I

.field public final msgNumToMsgMap:Ljava/util/HashMap;

.field public final name:Ljava/lang/String;

.field public final pop3Store:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

.field public final uidToMsgMap:Ljava/util/HashMap;

.field public final uidToMsgNumMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Ljava/lang/String;)V
    .locals 1

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
    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgMap:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->msgNumToMsgMap:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgNumMap:Ljava/util/HashMap;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->pop3Store:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->name:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 18
    .line 19
    const-string v2, "QUIT"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->close()V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->name:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    if-eq p0, p1, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->indexUids(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 40
    .line 41
    .line 42
    :try_start_1
    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v3, 0x1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne v1, v3, :cond_2

    .line 54
    .line 55
    move-object v1, p3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object v1, v2

    .line 58
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->fetchEnvelope(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_7

    .line 64
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_a

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 79
    .line 80
    :try_start_2
    sget-object v4, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 81
    .line 82
    invoke-virtual {p2, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const/4 v5, -0x1

    .line 87
    if-eqz v4, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, v5, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->fetchBody(ILcom/fsck/k9/mail/store/pop3/Pop3Message;)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :catch_1
    move-exception p1

    .line 94
    goto :goto_5

    .line 95
    :cond_5
    sget-object v4, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 96
    .line 97
    invoke-virtual {p2, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_7

    .line 102
    .line 103
    if-lez p4, :cond_6

    .line 104
    .line 105
    div-int/lit8 v4, p4, 0x4c

    .line 106
    .line 107
    invoke-virtual {p0, v4, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->fetchBody(ILcom/fsck/k9/mail/store/pop3/Pop3Message;)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_6
    invoke-virtual {p0, v5, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->fetchBody(ILcom/fsck/k9/mail/store/pop3/Pop3Message;)V

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_7
    sget-object v4, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 116
    .line 117
    invoke-virtual {p2, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_8

    .line 122
    .line 123
    iput-object v2, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 124
    .line 125
    :cond_8
    :goto_4
    if-eqz p3, :cond_4

    .line 126
    .line 127
    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_9

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eq v4, v3, :cond_4

    .line 138
    .line 139
    :cond_9
    invoke-interface {p3, v1}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :goto_5
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->handleIOException(Ljava/io/IOException;)V

    .line 144
    .line 145
    .line 146
    throw v2

    .line 147
    :cond_a
    :goto_6
    return-void

    .line 148
    :goto_7
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->handleIOException(Ljava/io/IOException;)V

    .line 149
    .line 150
    .line 151
    throw v2

    .line 152
    :catch_2
    move-exception p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->handleIOException(Ljava/io/IOException;)V

    .line 154
    .line 155
    .line 156
    throw v2
.end method

.method public final fetchBody(ILcom/fsck/k9/mail/store/pop3/Pop3Message;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgNumMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, -0x1

    .line 7
    if-eq p1, v4, :cond_4

    .line 8
    .line 9
    iget-object v5, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 10
    .line 11
    iget-boolean v6, v5, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->topNotAdvertised:Z

    .line 12
    .line 13
    if-eqz v6, :cond_0

    .line 14
    .line 15
    iget-object v5, v5, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 16
    .line 17
    iget-boolean v5, v5, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->top:Z

    .line 18
    .line 19
    if-eqz v5, :cond_4

    .line 20
    .line 21
    :cond_0
    :try_start_0
    sget-object v5, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 22
    .line 23
    invoke-interface {v5}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    iget-object v5, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 30
    .line 31
    iget-object v5, v5, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 32
    .line 33
    iget-boolean v5, v5, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->top:Z

    .line 34
    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    const-string v5, "This server doesn\'t support the CAPA command. Checking to see if the TOP command is supported nevertheless."

    .line 38
    .line 39
    new-array v6, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v5, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v5

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 48
    .line 49
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 50
    .line 51
    const-string v7, "TOP %d %d"

    .line 52
    .line 53
    iget-object v8, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const/4 v10, 0x2

    .line 64
    new-array v10, v10, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v8, v10, v2

    .line 67
    .line 68
    aput-object v9, v10, v1

    .line 69
    .line 70
    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v5, v6, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v5, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 79
    .line 80
    iget-object v5, v5, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 81
    .line 82
    iput-boolean v1, v5, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->top:Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3ErrorResponse; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :goto_1
    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 86
    .line 87
    iget-object v6, v6, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 88
    .line 89
    iget-boolean v6, v6, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->top:Z

    .line 90
    .line 91
    if-nez v6, :cond_3

    .line 92
    .line 93
    sget-object v5, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 94
    .line 95
    invoke-interface {v5}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_2

    .line 100
    .line 101
    const-string v5, "The server really doesn\'t support the TOP command. Using RETR instead."

    .line 102
    .line 103
    new-array v6, v2, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {v5, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v5, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 109
    .line 110
    iput-boolean v2, v5, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->topNotAdvertised:Z

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    throw v5

    .line 114
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 115
    .line 116
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 117
    .line 118
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 119
    .line 120
    iget-object v6, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-array v6, v1, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v0, v6, v2

    .line 129
    .line 130
    const-string v0, "RETR %d"

    .line 131
    .line 132
    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v3, v0, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    :cond_5
    :try_start_1
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3ResponseInputStream;

    .line 140
    .line 141
    iget-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 142
    .line 143
    iget-object v2, v2, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->in:Ljava/io/BufferedInputStream;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-boolean v1, v0, Lcom/fsck/k9/mail/store/pop3/Pop3ResponseInputStream;->mStartOfLine:Z

    .line 149
    .line 150
    iput-object v2, v0, Lcom/fsck/k9/mail/store/pop3/Pop3ResponseInputStream;->mIn:Ljava/io/BufferedInputStream;

    .line 151
    .line 152
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 153
    .line 154
    .line 155
    if-eq p1, v4, :cond_6

    .line 156
    .line 157
    iget-object p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 158
    .line 159
    iget-object p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->capabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;

    .line 160
    .line 161
    iget-boolean p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->top:Z

    .line 162
    .line 163
    if-nez p0, :cond_7

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :catch_1
    move-exception p0

    .line 167
    goto :goto_4

    .line 168
    :cond_6
    :goto_3
    sget-object p0, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 169
    .line 170
    invoke-virtual {p2, p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :goto_4
    if-eq p1, v4, :cond_8

    .line 175
    .line 176
    :cond_7
    :goto_5
    return-void

    .line 177
    :cond_8
    throw p0
.end method

.method public final fetchEnvelope(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 18
    .line 19
    iget v3, v3, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 20
    .line 21
    int-to-long v3, v3

    .line 22
    const-wide/16 v5, -0x1

    .line 23
    .line 24
    cmp-long v3, v3, v5

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_2
    const/16 v0, 0x32

    .line 36
    .line 37
    const-string v3, " "

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-ge v2, v0, :cond_4

    .line 41
    .line 42
    iget v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->messageCount:I

    .line 43
    .line 44
    const/16 v2, 0x1388

    .line 45
    .line 46
    if-le v0, v2, :cond_4

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 65
    .line 66
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67
    .line 68
    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgNumMap:Ljava/util/HashMap;

    .line 69
    .line 70
    iget-object v7, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-array v7, v4, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object v6, v7, v1

    .line 79
    .line 80
    const-string v6, "LIST %d"

    .line 81
    .line 82
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v2, v5, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const/4 v5, 0x2

    .line 95
    aget-object v2, v2, v5

    .line 96
    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iput v2, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 102
    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    invoke-interface {p2, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_5

    .line 123
    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 129
    .line 130
    iget-object v5, v5, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 140
    .line 141
    const-string v2, "LIST"

    .line 142
    .line 143
    invoke-virtual {p1, v2, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->readLine()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string v2, "."

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_8

    .line 159
    .line 160
    :cond_7
    :goto_4
    return-void

    .line 161
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    aget-object v2, p1, v1

    .line 166
    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    aget-object p1, p1, v4

    .line 172
    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    iget-object v5, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->msgNumToMsgMap:Ljava/util/HashMap;

    .line 178
    .line 179
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 188
    .line 189
    if-eqz v2, :cond_6

    .line 190
    .line 191
    iget-object v5, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-eqz v5, :cond_6

    .line 198
    .line 199
    iput p1, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 200
    .line 201
    if-eqz p2, :cond_6

    .line 202
    .line 203
    invoke-interface {p2, v2}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 204
    .line 205
    .line 206
    goto :goto_3
.end method

.method public final getMessages(II)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_2

    .line 3
    .line 4
    if-lt p2, v0, :cond_2

    .line 5
    .line 6
    if-lt p2, p1, :cond_2

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    if-gt p1, p2, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->msgNumToMsgMap:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->handleIOException(Ljava/io/IOException;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    throw p0

    .line 46
    :cond_2
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 47
    .line 48
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 49
    .line 50
    const-string v0, "Invalid message set "

    .line 51
    .line 52
    const-string v1, " "

    .line 53
    .line 54
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final handleIOException(Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 9
    .line 10
    const-string v0, "I/O error"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v0, v1, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final indexMessage(ILcom/fsck/k9/mail/store/pop3/Pop3Message;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v0, v2, v3

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v2, v0

    .line 23
    .line 24
    const-string v0, "Adding index for UID %s to msgNum %d"

    .line 25
    .line 26
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->msgNumToMsgMap:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgMap:Ljava/util/HashMap;

    .line 39
    .line 40
    iget-object v1, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object p2, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgNumMap:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final indexMsgNums(II)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p1

    .line 3
    move v2, v0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->msgNumToMsgMap:Ljava/util/HashMap;

    .line 5
    .line 6
    if-gt v1, p2, :cond_1

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-nez v2, :cond_2

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_2
    const/16 v1, 0x32

    .line 28
    .line 29
    const-string v4, "+OK"

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    const-string v6, " +"

    .line 33
    .line 34
    const/4 v7, 0x2

    .line 35
    const/4 v8, 0x1

    .line 36
    if-ge v2, v1, :cond_6

    .line 37
    .line 38
    iget v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->messageCount:I

    .line 39
    .line 40
    const/16 v2, 0x1388

    .line 41
    .line 42
    if-le v1, v2, :cond_6

    .line 43
    .line 44
    :goto_1
    if-gt p1, p2, :cond_8

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 55
    .line 56
    if-nez v1, :cond_5

    .line 57
    .line 58
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v9, "UIDL "

    .line 63
    .line 64
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    array-length v9, v2

    .line 83
    if-lt v9, v5, :cond_4

    .line 84
    .line 85
    aget-object v9, v2, v0

    .line 86
    .line 87
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-nez v9, :cond_3

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    aget-object v1, v2, v7

    .line 95
    .line 96
    new-instance v2, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 97
    .line 98
    invoke-direct {v2, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Message;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/pop3/Pop3Message;)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    :goto_2
    new-array p0, v8, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object v1, p0, v0

    .line 108
    .line 109
    const-string p1, "ERR response: %s"

    .line 110
    .line 111
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 119
    .line 120
    const-string v2, "UIDL"

    .line 121
    .line 122
    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->readLine()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "."

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_9

    .line 138
    .line 139
    :cond_8
    :goto_5
    return-void

    .line 140
    :cond_9
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    array-length v2, v1

    .line 145
    if-lt v2, v5, :cond_a

    .line 146
    .line 147
    aget-object v2, v1, v0

    .line 148
    .line 149
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_a

    .line 154
    .line 155
    aget-object v2, v1, v8

    .line 156
    .line 157
    aput-object v2, v1, v0

    .line 158
    .line 159
    aget-object v2, v1, v7

    .line 160
    .line 161
    aput-object v2, v1, v8

    .line 162
    .line 163
    :cond_a
    array-length v2, v1

    .line 164
    if-lt v2, v7, :cond_7

    .line 165
    .line 166
    aget-object v2, v1, v0

    .line 167
    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    aget-object v1, v1, v8

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-lt v9, p1, :cond_7

    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-gt v9, p2, :cond_7

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    check-cast v9, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 191
    .line 192
    if-nez v9, :cond_7

    .line 193
    .line 194
    new-instance v9, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 195
    .line 196
    invoke-direct {v9, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Message;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-virtual {p0, v1, v9}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/pop3/Pop3Message;)V

    .line 204
    .line 205
    .line 206
    goto :goto_4
.end method

.method public final indexUids(Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    iget-object v4, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgMap:Ljava/util/HashMap;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    sget-object v4, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 33
    .line 34
    invoke-interface {v4}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object v1, v2, v3

    .line 43
    .line 44
    const-string v3, "Need to index UID %s"

    .line 45
    .line 46
    invoke-static {v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 61
    .line 62
    const-string v1, "UIDL"

    .line 63
    .line 64
    invoke-virtual {p1, v1, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->readLine()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v1, "."

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    :goto_2
    return-void

    .line 82
    :cond_5
    const-string v1, " +"

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    array-length v1, p1

    .line 89
    const/4 v5, 0x2

    .line 90
    if-lt v1, v5, :cond_4

    .line 91
    .line 92
    aget-object v1, p1, v3

    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    aget-object p1, p1, v2

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_4

    .line 105
    .line 106
    sget-object v6, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 107
    .line 108
    invoke-interface {v6}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_6

    .line 113
    .line 114
    new-array v5, v5, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v1, v5, v3

    .line 117
    .line 118
    aput-object p1, v5, v2

    .line 119
    .line 120
    const-string v6, "Got msgNum %d for UID %s"

    .line 121
    .line 122
    invoke-static {v6, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_6
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 130
    .line 131
    if-nez v5, :cond_7

    .line 132
    .line 133
    new-instance v5, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 134
    .line 135
    invoke-direct {v5, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Message;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {p0, p1, v5}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/pop3/Pop3Message;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1
.end method

.method public final declared-synchronized open()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->isOpen()Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_1
    :try_start_1
    const-string v0, "INBOX"

    .line 22
    .line 23
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->pop3Store:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 37
    .line 38
    new-instance v4, Lcom/fsck/k9/backend/pop3/CommandSetFlag;

    .line 39
    .line 40
    invoke-direct {v4, v0}, Lcom/fsck/k9/backend/pop3/CommandSetFlag;-><init>(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->trustedSocketFactory:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 46
    .line 47
    invoke-direct {v3, v4, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;-><init>(Lcom/fsck/k9/backend/pop3/CommandSetFlag;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;)V

    .line 48
    .line 49
    .line 50
    iput-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    :try_start_2
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->open()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 56
    .line 57
    const-string v3, "STAT"

    .line 58
    .line 59
    invoke-virtual {v0, v3, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, " "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v0, v0, v2

    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->messageCount:I

    .line 76
    .line 77
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgMap:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->msgNumToMsgMap:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgNumMap:Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->handleIOException(Ljava/io/IOException;)V

    .line 98
    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    throw v0

    .line 102
    :cond_2
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 103
    .line 104
    const-string v1, "Folder does not exist"

    .line 105
    .line 106
    invoke-direct {v0, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    throw v0
.end method

.method public final setFlags(Ljava/util/ArrayList;Ljava/util/Set;Z)V
    .locals 3

    .line 1
    if-eqz p3, :cond_3

    .line 2
    .line 3
    sget-object p3, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 4
    .line 5
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->indexUids(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgNumMap:Ljava/util/HashMap;

    .line 62
    .line 63
    iget-object v1, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/Integer;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->open()V

    .line 74
    .line 75
    .line 76
    :try_start_1
    iget-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->connection:Lcom/fsck/k9/mail/store/pop3/Pop3Connection;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v2, "DELE "

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p2, v0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Connection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_1
    move-exception p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->handleIOException(Ljava/io/IOException;)V

    .line 102
    .line 103
    .line 104
    throw p3

    .line 105
    :cond_2
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 106
    .line 107
    iget-object p1, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 108
    .line 109
    const-string p2, "Could not delete message "

    .line 110
    .line 111
    const-string v0, " because no msgNum found; permanent error"

    .line 112
    .line 113
    invoke-static {p2, p1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/4 p2, 0x1

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :goto_2
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->handleIOException(Ljava/io/IOException;)V

    .line 123
    .line 124
    .line 125
    throw p3

    .line 126
    :cond_3
    :goto_3
    return-void
.end method
