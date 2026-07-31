.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final folderId:J

.field public final uid:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->folderId:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->uid:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static create(JLjava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;-><init>(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string p0, "Required value was null."

    .line 10
    .line 11
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method


# virtual methods
.method public execute(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 4
    .line 5
    invoke-virtual {v1, p2}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-wide v4, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->folderId:J

    .line 10
    .line 11
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 12
    .line 13
    invoke-direct {v2, v1, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->uid:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    iget-object v6, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v7, p1, Lcom/fsck/k9/controller/MessagingController;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 34
    .line 35
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v7, "K9LOCAL:"

    .line 39
    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_1

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_1
    invoke-virtual {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object v6, Lnet/thunderbird/core/common/mail/Flag;->X_REMOTE_COPY_STARTED:Lnet/thunderbird/core/common/mail/Flag;

    .line 53
    .line 54
    iget-object v7, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 55
    .line 56
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const/4 v8, 0x1

    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    iget-object v7, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 64
    .line 65
    const/4 v9, 0x2

    .line 66
    new-array v10, v9, [Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    aput-object v7, v10, v11

    .line 70
    .line 71
    aput-object v6, v10, v8

    .line 72
    .line 73
    const-string v7, "Local message with uid %s has flag %s  already set, checking for remote message with same message id"

    .line 74
    .line 75
    invoke-static {v7, v10}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-interface {p1, v3, v7}, Lcom/fsck/k9/backend/api/Backend;->findByMessageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-eqz v7, :cond_2

    .line 87
    .line 88
    new-array p1, v9, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object v6, p1, v11

    .line 91
    .line 92
    aput-object v7, p1, v8

    .line 93
    .line 94
    const-string v1, "Local message has flag %s already set, and there is a remote message with uid %s, assuming message was already copied and aborting this copy"

    .line 95
    .line 96
    invoke-static {v1, p1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v6, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p0, v7}, Lcom/fsck/k9/mailstore/LocalMessage;->setUid(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p0}, Lcom/fsck/k9/mailstore/LocalFolder;->changeUid(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object v2, v0

    .line 122
    check-cast v2, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 123
    .line 124
    iget-object v7, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 125
    .line 126
    move-object v3, p2

    .line 127
    invoke-virtual/range {v2 .. v7}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->messageUidChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const-string v7, "No remote message with message-id found, proceeding with append"

    .line 132
    .line 133
    new-array v9, v11, [Ljava/lang/Object;

    .line 134
    .line 135
    invoke-static {v7, v9}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    new-instance v7, Lcom/fsck/k9/mail/FetchProfile;

    .line 139
    .line 140
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    sget-object v9, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 144
    .line 145
    invoke-virtual {v7, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-virtual {v2, v9, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;)V

    .line 153
    .line 154
    .line 155
    move-object v7, v6

    .line 156
    iget-object v6, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p0, v7, v8}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, v3, p0}, Lcom/fsck/k9/backend/api/Backend;->uploadMessage(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-nez p1, :cond_4

    .line 166
    .line 167
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    iget-object p1, v1, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 172
    .line 173
    new-instance p2, Lcom/fsck/k9/mailstore/LocalFolder$9;

    .line 174
    .line 175
    invoke-direct {p2, p0}, Lcom/fsck/k9/mailstore/LocalFolder$9;-><init>(Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v8, p2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_4
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalMessage;->setUid(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, p0}, Lcom/fsck/k9/mailstore/LocalFolder;->changeUid(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    move-object v2, v0

    .line 203
    check-cast v2, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 204
    .line 205
    iget-object v7, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 206
    .line 207
    move-object v3, p2

    .line 208
    invoke-virtual/range {v2 .. v7}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->messageUidChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_5
    :goto_2
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "append"

    .line 2
    .line 3
    return-object p0
.end method
