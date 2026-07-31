.class public final Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;
.super Landroid/os/AsyncTask;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final contacts:Lcom/fsck/k9/helper/Contacts;

.field public final draftId:Ljava/lang/Long;

.field public final flag:Lnet/thunderbird/core/common/mail/Flag;

.field public final message:Lcom/fsck/k9/mail/internet/MimeMessage;

.field public final messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;

.field public final plaintextSubject:Ljava/lang/String;

.field public final preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Preferences;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/helper/Contacts;Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/Long;Ljava/lang/String;Lapp/k9mail/legacy/message/controller/MessageReference;Lnet/thunderbird/core/common/mail/Flag;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->preferences:Lcom/fsck/k9/Preferences;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->contacts:Lcom/fsck/k9/helper/Contacts;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->draftId:Ljava/lang/Long;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->plaintextSubject:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->flag:Lnet/thunderbird/core/common/mail/Flag;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->contacts:Lcom/fsck/k9/helper/Contacts;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_0
    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 13
    .line 14
    invoke-virtual {v1, v5}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->flag:Lnet/thunderbird/core/common/mail/Flag;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v6, v5, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->preferences:Lcom/fsck/k9/Preferences;

    .line 41
    .line 42
    invoke-virtual {v7, v6}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    iget-wide v10, v5, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 47
    .line 48
    iget-object v12, v5, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 49
    .line 50
    const-string v5, "Setting referenced message (%d, %s) flag to %s"

    .line 51
    .line 52
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const/4 v7, 0x3

    .line 57
    new-array v7, v7, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v6, v7, v4

    .line 60
    .line 61
    aput-object v12, v7, v3

    .line 62
    .line 63
    aput-object v0, v7, v2

    .line 64
    .line 65
    invoke-static {v5, v7}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v8, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 69
    .line 70
    iget-object v13, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->flag:Lnet/thunderbird/core/common/mail/Flag;

    .line 71
    .line 72
    invoke-virtual/range {v8 .. v13}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Lnet/thunderbird/core/common/mail/Flag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v5, "Failed to mark contact as contacted."

    .line 78
    .line 79
    new-array v6, v4, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v0, v5, v6}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->plaintextSubject:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    :try_start_1
    iget-object v7, v5, Lcom/fsck/k9/controller/MessagingController;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 93
    .line 94
    iget-object v8, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v7, v8}, Lkotlin/uuid/UuidKt;->getOutboxFolderIdSync(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Ljava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    sget-object v9, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 101
    .line 102
    invoke-virtual {v1, v9, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 103
    .line 104
    .line 105
    iget-object v9, v5, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 106
    .line 107
    invoke-virtual {v9, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    iget-object v10, v5, Lcom/fsck/k9/controller/MessagingController;->saveMessageDataCreator:Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 112
    .line 113
    sget-object v11, Lcom/fsck/k9/mail/MessageDownloadState;->FULL:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 114
    .line 115
    invoke-virtual {v10, v1, v11, v0}, Lcom/fsck/k9/mailstore/SaveMessageDataCreator;->createSaveMessageData(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, v9, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 120
    .line 121
    iget-object v9, v1, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v9, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 124
    .line 125
    invoke-virtual {v9, v7, v8, v0, v6}, Lcom/fsck/k9/storage/messages/K9MessageStore;->saveLocalMessage(JLapp/k9mail/legacy/mailstore/SaveMessageData;Ljava/lang/Long;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 130
    .line 131
    .line 132
    iget-object v0, v5, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore;->outboxStateRepository:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 143
    .line 144
    new-instance v1, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 145
    .line 146
    invoke-direct {v1, v4, v7, v8}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v4, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const-string v0, "sendPendingMessages"

    .line 153
    .line 154
    new-instance v1, Lcom/fsck/k9/controller/MessagingController$3;

    .line 155
    .line 156
    invoke-direct {v1, v5, p1, v2}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    const-string v1, "Error sending message"

    .line 165
    .line 166
    new-array v2, v4, [Ljava/lang/Object;

    .line 167
    .line 168
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :goto_1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->draftId:Ljava/lang/Long;

    .line 172
    .line 173
    if-eqz p0, :cond_1

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    invoke-virtual {v5, p1, v0, v1, v3}, Lcom/fsck/k9/controller/MessagingController;->deleteDraft(Lnet/thunderbird/core/android/account/LegacyAccountDto;JZ)V

    .line 180
    .line 181
    .line 182
    :cond_1
    return-object v6
.end method
