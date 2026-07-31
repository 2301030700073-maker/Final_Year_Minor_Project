.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final deleteMessageId:J

.field public final folderId:J

.field public final uploadMessageId:J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;->folderId:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;->uploadMessageId:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;->deleteMessageId:J

    .line 9
    .line 10
    return-void
.end method

.method public static create(JJJ)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;
    .locals 7

    .line 1
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;

    .line 2
    .line 3
    move-wide v1, p0

    .line 4
    move-wide v3, p2

    .line 5
    move-wide v5, p4

    .line 6
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;-><init>(JJJ)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public execute(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 13

    .line 1
    iget-object p1, p1, Lcom/fsck/k9/controller/MessagingController;->draftOperations:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/fsck/k9/controller/MessagingController;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->getLocalStoreOrThrow(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-wide v1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;->folderId:J

    .line 18
    .line 19
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 20
    .line 21
    invoke-direct {v3, v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-wide v4, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;->uploadMessageId:J

    .line 32
    .line 33
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 34
    .line 35
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;

    .line 36
    .line 37
    invoke-direct {v2, v3, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;J)V

    .line 38
    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-virtual {v0, v6, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-array p1, v2, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p0, p1, v6

    .line 57
    .line 58
    const-string p0, "Couldn\'t find local copy of message to upload [ID: %d]"

    .line 59
    .line 60
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    iget-object v7, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const-string v8, "K9LOCAL:"

    .line 70
    .line 71
    invoke-static {v7, v8, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_1

    .line 76
    .line 77
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-array p2, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object p1, p2, v6

    .line 84
    .line 85
    const-string p1, "Message [ID: %d] to be uploaded already has a server ID set. Skipping upload."

    .line 86
    .line 87
    invoke-static {p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-object v4, v3, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 95
    .line 96
    iget-wide v7, v0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 97
    .line 98
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const/4 v7, 0x2

    .line 103
    new-array v7, v7, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v5, v7, v6

    .line 106
    .line 107
    aput-object v4, v7, v2

    .line 108
    .line 109
    const-string v5, "Uploading message [ID: %d] to remote folder \'%s\'"

    .line 110
    .line 111
    invoke-static {v5, v7}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    new-instance v5, Lcom/fsck/k9/mail/FetchProfile;

    .line 115
    .line 116
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    sget-object v7, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 120
    .line 121
    invoke-virtual {v5, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v3, v7, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-interface {v1, v4, v0}, Lcom/fsck/k9/backend/api/Backend;->uploadMessage(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-nez v4, :cond_2

    .line 139
    .line 140
    iget-wide p1, v0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 141
    .line 142
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    new-array p2, v2, [Ljava/lang/Object;

    .line 147
    .line 148
    aput-object p1, p2, v6

    .line 149
    .line 150
    const-string p1, "Failed to get a server ID for the uploaded message. Removing local copy [ID: %d]"

    .line 151
    .line 152
    invoke-static {p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->destroy()V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    iget-object v11, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v0, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setUid(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->changeUid(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p1, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_3

    .line 178
    .line 179
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    move-object v7, v4

    .line 184
    check-cast v7, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 185
    .line 186
    iget-wide v9, v3, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 187
    .line 188
    iget-object v12, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 189
    .line 190
    move-object v8, p2

    .line 191
    invoke-virtual/range {v7 .. v12}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->messageUidChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    iget-wide p0, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;->deleteMessageId:J

    .line 199
    .line 200
    iget-object p2, v3, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 201
    .line 202
    iget-object p2, p2, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 203
    .line 204
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$6;

    .line 205
    .line 206
    invoke-direct {v0, v3, p0, p1, v6}, Lcom/fsck/k9/mailstore/LocalFolder$6;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;JI)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, v6, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    check-cast p2, Ljava/lang/String;

    .line 214
    .line 215
    if-nez p2, :cond_4

    .line 216
    .line 217
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    new-array p1, v2, [Ljava/lang/Object;

    .line 222
    .line 223
    aput-object p0, p1, v6

    .line 224
    .line 225
    const-string p0, "Couldn\'t find local copy of message [ID: %d] to be deleted. Skipping delete."

    .line 226
    .line 227
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_4
    invoke-static {p2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    iget-object p1, v3, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-interface {v1, p1, p0}, Lcom/fsck/k9/backend/api/Backend;->deleteMessages(Ljava/lang/String;Ljava/util/List;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v3, p0}, Lcom/fsck/k9/controller/MessagingController;->destroyPlaceholderMessages(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "replace"

    .line 2
    .line 3
    return-object p0
.end method
