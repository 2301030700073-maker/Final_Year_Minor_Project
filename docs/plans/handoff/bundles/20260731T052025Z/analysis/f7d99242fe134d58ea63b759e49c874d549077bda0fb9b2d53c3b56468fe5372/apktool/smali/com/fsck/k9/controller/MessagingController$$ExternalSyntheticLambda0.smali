.class public final synthetic Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->f$2:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->f$2:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;->create(J)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v4, v3, p0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v3}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object p0, v4, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 34
    .line 35
    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->clearAllMessages()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    move-object p0, v0

    .line 47
    const-string v0, "clearFolder failed"

    .line 48
    .line 49
    new-array v1, v5, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-static {p0, v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :pswitch_1
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 56
    .line 57
    iget-object v0, v2, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;

    .line 66
    .line 67
    const/16 v4, 0x1d

    .line 68
    .line 69
    invoke-direct {v1, v4}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iget-object v4, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 73
    .line 74
    iget-object v4, v4, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v4, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 77
    .line 78
    iget-wide v6, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;->f$2:J

    .line 79
    .line 80
    invoke-virtual {v4, v6, v7, v1}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolder(JLapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Ljava/lang/Integer;

    .line 85
    .line 86
    if-nez p0, :cond_0

    .line 87
    .line 88
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const/4 v0, 0x2

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v3, v0, v5

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    aput-object p0, v0, v1

    .line 99
    .line 100
    const-string p0, "loadMoreMessages(%s, %d): Folder not found"

    .line 101
    .line 102
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-lez v1, :cond_1

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-virtual {v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayCount()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/2addr v1, p0

    .line 121
    iget-object p0, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 126
    .line 127
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 130
    .line 131
    new-instance v0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda2;

    .line 132
    .line 133
    invoke-direct {v0, v1, v6, v7}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda2;-><init>(IJ)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v5, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_1
    new-instance v8, Lcom/fsck/k9/helper/MutableBoolean;

    .line 140
    .line 141
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 142
    .line 143
    .line 144
    move-wide v4, v6

    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x0

    .line 147
    invoke-virtual/range {v2 .. v8}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailboxSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/helper/MutableBoolean;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
