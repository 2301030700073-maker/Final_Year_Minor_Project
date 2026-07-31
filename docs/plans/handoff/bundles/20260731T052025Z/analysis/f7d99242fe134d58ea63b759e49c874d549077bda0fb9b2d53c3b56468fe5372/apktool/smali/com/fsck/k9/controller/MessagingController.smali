.class public final Lcom/fsck/k9/controller/MessagingController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;
.implements Lapp/k9mail/legacy/message/controller/MessagingControllerMailChecker;


# static fields
.field public static final SYNC_FLAGS:Ljava/util/EnumSet;

.field public static final sequencing:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final archiveOperations:Lcom/beetstra/jutf7/Base64Util;

.field public final backendManager:Lcom/fsck/k9/backend/BackendManager;

.field public final draftOperations:Lcom/fsck/k9/backend/imap/ImapSync;

.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final localDeleteOperationDecider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalDeleteOperationDecider;

.field public final localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

.field public final localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

.field public final memorizingMessagingListener:Lcom/fsck/k9/activity/MessageCompose$12;

.field public final messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

.field public final notificationController:Lcom/fsck/k9/notification/NotificationController;

.field public final notificationDismisser:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

.field public final notificationOperations:Lcom/fsck/k9/backend/imap/ImapSync;

.field public final notificationSender:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

.field public final notificationStrategy:Lcom/fsck/k9/notification/K9NotificationStrategy;

.field public final outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

.field public final preferences:Lcom/fsck/k9/Preferences;

.field public final queuedCommands:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final saveMessageDataCreator:Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

.field public final syncDebugLogger:Lnet/thunderbird/core/logging/Logger;

.field public final threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static -$$Nest$mcheckMailForAccount(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V
    .locals 11

    .line 1
    const-string v8, "clear notification flag for "

    .line 2
    .line 3
    const/4 v9, 0x1

    .line 4
    new-array v0, v9, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v10, 0x0

    .line 7
    aput-object p1, v0, v10

    .line 8
    .line 9
    const-string v3, "Synchronizing account %s"

    .line 10
    .line 11
    invoke-static {v3, v0}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v7, Lcom/fsck/k9/helper/MutableBoolean;

    .line 15
    .line 16
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$3;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-direct {v0, p0, p1, v3}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 23
    .line 24
    .line 25
    const-string v3, "sendPendingMessages"

    .line 26
    .line 27
    invoke-virtual {p0, v3, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->refreshFolderListIfStale(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v3, Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 45
    .line 46
    new-instance v5, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 47
    .line 48
    invoke-direct {v5, v10, v0, v3, v10}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v10, v5}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 71
    .line 72
    .line 73
    iget-boolean v4, v3, Lcom/fsck/k9/mailstore/LocalFolder;->visible:Z

    .line 74
    .line 75
    if-nez v4, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-boolean v4, v3, Lcom/fsck/k9/mailstore/LocalFolder;->syncEnabled:Z

    .line 79
    .line 80
    if-nez v4, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move-object v1, p0

    .line 84
    move-object v2, p1

    .line 85
    move v4, p2

    .line 86
    move v5, p3

    .line 87
    move-object v6, p4

    .line 88
    invoke-virtual/range {v1 .. v7}, Lcom/fsck/k9/controller/MessagingController;->synchronizeFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;ZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/helper/MutableBoolean;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v3, Lcom/fsck/k9/controller/MessagingController$3;

    .line 109
    .line 110
    invoke-direct {v3, p0, p1, v9}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :goto_2
    :try_start_1
    const-string v3, "Unable to synchronize account %s"

    .line 118
    .line 119
    new-array v4, v9, [Ljava/lang/Object;

    .line 120
    .line 121
    aput-object p1, v4, v10

    .line 122
    .line 123
    invoke-static {v0, v3, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v3, Lcom/fsck/k9/controller/MessagingController$3;

    .line 139
    .line 140
    invoke-direct {v3, p0, p1, v9}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    new-instance v4, Lcom/fsck/k9/controller/MessagingController$3;

    .line 157
    .line 158
    invoke-direct {v4, p0, p1, v9}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 162
    .line 163
    .line 164
    throw v0
.end method

.method public static -$$Nest$mclearSendingNotificationIfNecessary(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySync()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationController;->syncNotificationController:Lcom/fsck/k9/notification/SyncNotificationController;

    .line 13
    .line 14
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    mul-int/lit8 p1, p1, 0x10

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x8

    .line 21
    .line 22
    iget-object p0, p0, Lcom/fsck/k9/notification/SyncNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 4
    .line 5
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 6
    .line 7
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/fsck/k9/controller/MessagingController;->SYNC_FLAGS:Ljava/util/EnumSet;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/fsck/k9/controller/MessagingController;->sequencing:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/K9NotificationStrategy;Lcom/fsck/k9/mailstore/LocalStoreProvider;Lcom/fsck/k9/backend/BackendManager;Lcom/fsck/k9/Preferences;Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lcom/fsck/k9/mailstore/SaveMessageDataCreator;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalDeleteOperationDecider;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;Ljava/util/List;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V
    .locals 7

    .line 1
    move-object v0, p8

    .line 2
    move-object/from16 v1, p10

    .line 3
    .line 4
    move-object/from16 v2, p12

    .line 5
    .line 6
    move-object/from16 v3, p14

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v4, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->queuedCommands:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 17
    .line 18
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iput-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    new-instance v4, Lcom/fsck/k9/activity/MessageCompose$12;

    .line 32
    .line 33
    invoke-direct {v4}, Lcom/fsck/k9/activity/MessageCompose$12;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v5, Ljava/util/HashMap;

    .line 37
    .line 38
    const/16 v6, 0x1f

    .line 39
    .line 40
    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v5, v4, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Ljava/lang/Object;

    .line 44
    .line 45
    iput-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingMessagingListener:Lcom/fsck/k9/activity/MessageCompose$12;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 48
    .line 49
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController;->notificationStrategy:Lcom/fsck/k9/notification/K9NotificationStrategy;

    .line 50
    .line 51
    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 52
    .line 53
    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController;->backendManager:Lcom/fsck/k9/backend/BackendManager;

    .line 54
    .line 55
    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController;->preferences:Lcom/fsck/k9/Preferences;

    .line 56
    .line 57
    iput-object p7, p0, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->saveMessageDataCreator:Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 60
    .line 61
    move-object/from16 p3, p9

    .line 62
    .line 63
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController;->localDeleteOperationDecider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalDeleteOperationDecider;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 66
    .line 67
    iput-object v2, p0, Lcom/fsck/k9/controller/MessagingController;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 68
    .line 69
    move-object/from16 p3, p13

    .line 70
    .line 71
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController;->syncDebugLogger:Lnet/thunderbird/core/logging/Logger;

    .line 72
    .line 73
    new-instance p3, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 74
    .line 75
    invoke-direct {p3, v3}, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;-><init>(Lnet/thunderbird/feature/notification/api/sender/NotificationSender;)V

    .line 76
    .line 77
    .line 78
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController;->notificationSender:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 79
    .line 80
    new-instance p3, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 81
    .line 82
    invoke-direct {p3, v3}, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;-><init>(Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;)V

    .line 83
    .line 84
    .line 85
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController;->notificationDismisser:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 86
    .line 87
    move-object/from16 p3, p15

    .line 88
    .line 89
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 90
    .line 91
    new-instance p3, Ljava/lang/Thread;

    .line 92
    .line 93
    new-instance p4, Lcom/fsck/k9/controller/MessagingController$1;

    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-direct {p4, v3, p0}, Lcom/fsck/k9/controller/MessagingController$1;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    const-string p4, "MessagingController"

    .line 103
    .line 104
    invoke-virtual {p3, p4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v4}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 111
    .line 112
    .line 113
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-eqz p3, :cond_0

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result p4

    .line 128
    if-nez p4, :cond_1

    .line 129
    .line 130
    :goto_0
    new-instance p3, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 131
    .line 132
    invoke-direct {p3, p0, p7, p8, v1}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Lcom/fsck/k9/controller/MessagingController;Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lcom/fsck/k9/mailstore/SaveMessageDataCreator;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V

    .line 133
    .line 134
    .line 135
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController;->draftOperations:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 136
    .line 137
    new-instance p3, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 138
    .line 139
    const/16 p4, 0x12

    .line 140
    .line 141
    invoke-direct {p3, p2, p6, p7, p4}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController;->notificationOperations:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 145
    .line 146
    new-instance p1, Lcom/beetstra/jutf7/Base64Util;

    .line 147
    .line 148
    const/16 p2, 0x1d

    .line 149
    .line 150
    invoke-direct {p1, p2, p0, v2}, Lcom/beetstra/jutf7/Base64Util;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 154
    .line 155
    return-void

    .line 156
    :cond_1
    invoke-static {p3}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    throw p0
.end method

.method public static createSyncConfig(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/SyncConfig;
    .locals 8

    .line 1
    new-instance v0, Lcom/fsck/k9/backend/api/SyncConfig;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getExpungePolicy()Lnet/thunderbird/core/android/account/Expunge;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    if-eq v1, v4, :cond_1

    .line 17
    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    .line 20
    sget-object v1, Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;->ON_POLL:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    sget-object v1, Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;->MANUALLY:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget-object v1, Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;->IMMEDIATELY:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;

    .line 31
    .line 32
    :goto_0
    iget v5, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->maximumPolledMessageAge:I

    .line 33
    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    if-ltz v5, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move-object v6, v2

    .line 42
    :goto_1
    if-eqz v6, :cond_a

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const/16 v6, 0xb

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 56
    .line 57
    .line 58
    const/16 v6, 0xc

    .line 59
    .line 60
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 61
    .line 62
    .line 63
    const/16 v6, 0xd

    .line 64
    .line 65
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 66
    .line 67
    .line 68
    const/16 v6, 0xe

    .line 69
    .line 70
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 71
    .line 72
    .line 73
    const/16 v6, 0x1c

    .line 74
    .line 75
    const/4 v7, -0x1

    .line 76
    if-ge v2, v6, :cond_4

    .line 77
    .line 78
    const/4 v3, 0x5

    .line 79
    mul-int/2addr v2, v7

    .line 80
    invoke-virtual {v5, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    if-eq v2, v6, :cond_9

    .line 85
    .line 86
    const/16 v6, 0x38

    .line 87
    .line 88
    if-eq v2, v6, :cond_8

    .line 89
    .line 90
    const/16 v6, 0x54

    .line 91
    .line 92
    if-eq v2, v6, :cond_7

    .line 93
    .line 94
    const/16 v6, 0xa8

    .line 95
    .line 96
    if-eq v2, v6, :cond_6

    .line 97
    .line 98
    const/16 v3, 0x16d

    .line 99
    .line 100
    if-eq v2, v3, :cond_5

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    invoke-virtual {v5, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const/4 v2, -0x6

    .line 108
    invoke-virtual {v5, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    const/4 v2, -0x3

    .line 113
    invoke-virtual {v5, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_8
    const/4 v2, -0x2

    .line 118
    invoke-virtual {v5, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_9
    invoke-virtual {v5, v3, v7}, Ljava/util/Calendar;->add(II)V

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :cond_a
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSyncRemoteDeletions()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMaximumAutoDownloadMessageSize()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    sget-object v5, Lcom/fsck/k9/controller/MessagingController;->SYNC_FLAGS:Ljava/util/EnumSet;

    .line 138
    .line 139
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/backend/api/SyncConfig;-><init>(Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;Ljava/util/Date;ZILjava/util/Set;)V

    .line 140
    .line 141
    .line 142
    return-object v0
.end method

.method public static destroyPlaceholderMessages(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 25
    .line 26
    iget-object v3, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 27
    .line 28
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalMessage;->destroy()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    aput-object v0, v2, v3

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    aput-object v1, v2, v0

    .line 48
    .line 49
    const-string v0, "Expected local message %s in folder %s to be a placeholder, but DELETE flag wasn\'t set"

    .line 50
    .line 51
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method

.method public static isAuthenticationProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOutgoingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    iget-boolean v0, p1, Lcom/fsck/k9/mail/ServerSettings;->isMissingCredentials:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object p1, p1, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 17
    .line 18
    sget-object v0, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOAuthState()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public static putCommand(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 5

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$Command;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/fsck/k9/controller/MessagingController;->sequencing:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, v0, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    .line 20
    .line 21
    iput-object p2, v0, Lcom/fsck/k9/controller/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 22
    .line 23
    iput-object p1, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    .line 24
    .line 25
    iput-boolean p3, v0, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    move-object v1, v0

    .line 33
    const-wide/16 v3, 0xc8

    .line 34
    .line 35
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 36
    .line 37
    .line 38
    move v0, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/Error;

    .line 41
    .line 42
    invoke-direct {p0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static removeFlagForThreadsFromCache(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/fsck/k9/mailstore/MessageListCache;->getCache(Ljava/lang/String;)Lcom/fsck/k9/mailstore/MessageListCache;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MessageListCache;->threadCache:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MessageListCache;->threadCache:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/util/Map;

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MessageListCache;->threadCache:Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0

    .line 74
    throw p0
.end method

.method public static removeFlagFromCache(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/fsck/k9/mailstore/MessageListCache;->getCache(Ljava/lang/String;)Lcom/fsck/k9/mailstore/MessageListCache;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MessageListCache;->messageCache:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MessageListCache;->messageCache:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/util/Map;

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MessageListCache;->messageCache:Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0

    .line 74
    throw p0
.end method

.method public static setFlagInCache(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/fsck/k9/mailstore/MessageListCache;->getCache(Ljava/lang/String;)Lcom/fsck/k9/mailstore/MessageListCache;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MessageListCache;->messageCache:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MessageListCache;->messageCache:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_1
    check-cast v2, Ljava/util/Map;

    .line 60
    .line 61
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    monitor-exit v0

    .line 70
    const-class p1, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MessageListCache;->accountUuid:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->notifyMessageListChanged(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_2
    monitor-exit v0

    .line 85
    throw p0
.end method

.method public static suppressMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/fsck/k9/mailstore/MessageListCache;->getCache(Ljava/lang/String;)Lcom/fsck/k9/mailstore/MessageListCache;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MessageListCache;->hiddenMessageCache:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 28
    .line 29
    iget-wide v2, v1, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 30
    .line 31
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 32
    .line 33
    iget-wide v4, v1, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 34
    .line 35
    iget-object v1, p0, Lcom/fsck/k9/mailstore/MessageListCache;->hiddenMessageCache:Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    monitor-exit v0

    .line 52
    const-class p1, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MessageListCache;->accountUuid:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->notifyMessageListChanged(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v0

    .line 67
    throw p0
.end method

.method public static unsuppressMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/fsck/k9/mailstore/MessageListCache;->getCache(Ljava/lang/String;)Lcom/fsck/k9/mailstore/MessageListCache;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MessageListCache;->hiddenMessageCache:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

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
    check-cast v1, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 25
    .line 26
    iget-wide v2, v1, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 27
    .line 28
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 29
    .line 30
    iget-wide v4, v1, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 31
    .line 32
    iget-object v1, p0, Lcom/fsck/k9/mailstore/MessageListCache;->hiddenMessageCache:Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Long;

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    cmp-long v1, v6, v4

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    iget-object v1, p0, Lcom/fsck/k9/mailstore/MessageListCache;->hiddenMessageCache:Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v0

    .line 70
    throw p0
.end method


# virtual methods
.method public final actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, v1, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 26
    .line 27
    iget-wide v3, v1, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Ljava/util/Map;

    .line 34
    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    new-instance v5, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/List;

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    new-instance v2, Ljava/util/LinkedList;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/lang/String;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController;->preferences:Lcom/fsck/k9/Preferences;

    .line 100
    .line 101
    invoke-virtual {v2, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/util/Map$Entry;

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/Long;

    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Ljava/util/List;

    .line 146
    .line 147
    :try_start_0
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 148
    .line 149
    invoke-virtual {v5, v1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    new-instance v6, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 154
    .line 155
    invoke-direct {v6, v5, v3, v4}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessagesByReference(Ljava/util/List;)Ljava/util/ArrayList;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-interface {p2, v1, v6, v2}, Lcom/fsck/k9/controller/MessagingController$MessageActor;->act(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_0
    move-exception v2

    .line 167
    const/4 v3, 0x0

    .line 168
    new-array v3, v3, [Ljava/lang/Object;

    .line 169
    .line 170
    const-string v4, "Error loading account?!"

    .line 171
    .line 172
    invoke-static {v2, v4, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_5
    return-void
.end method

.method public final addListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_7

    .line 7
    .line 8
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingMessagingListener:Lcom/fsck/k9/activity/MessageCompose$12;

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    move-object v2, v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .line 36
    .line 37
    iget v4, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:I

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-static {v4}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    const/4 v5, 0x1

    .line 48
    if-eq v4, v5, :cond_2

    .line 49
    .line 50
    const/4 v5, 0x2

    .line 51
    if-eq v4, v5, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v4, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 55
    .line 56
    iget-wide v5, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderId:J

    .line 57
    .line 58
    iget-object v3, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->failureMessage:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v4, v5, v6, v3}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxFailed(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p1, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v4, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 68
    .line 69
    iget-wide v5, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderId:J

    .line 70
    .line 71
    invoke-virtual {p1, v4, v5, v6}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxFinished(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move-object v2, v3

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    if-eqz v2, :cond_5

    .line 78
    .line 79
    iget-object v0, v2, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 80
    .line 81
    iget-wide v3, v2, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderId:J

    .line 82
    .line 83
    invoke-virtual {p1, v0, v3, v4}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxStarted(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V

    .line 84
    .line 85
    .line 86
    move-object v1, v2

    .line 87
    :cond_5
    if-eqz v1, :cond_6

    .line 88
    .line 89
    iget v7, v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I

    .line 90
    .line 91
    if-lez v7, :cond_6

    .line 92
    .line 93
    iget-object v3, v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 94
    .line 95
    iget-wide v4, v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderId:J

    .line 96
    .line 97
    iget v6, v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderCompleted:I

    .line 98
    .line 99
    move-object v2, p1

    .line 100
    invoke-virtual/range {v2 .. v7}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxProgress(Lnet/thunderbird/core/android/account/LegacyAccountDto;JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    :cond_6
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw p1

    .line 107
    :cond_7
    return-void
.end method

.method public final checkMail(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V
    .locals 9

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const-class p3, Lcom/fsck/k9/power/AndroidPowerManager;

    .line 4
    .line 5
    invoke-static {p3}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    check-cast p3, Lcom/fsck/k9/power/AndroidPowerManager;

    .line 10
    .line 11
    const-string v0, "K9 MessagingController.checkMail"

    .line 12
    .line 13
    new-instance v1, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 14
    .line 15
    invoke-direct {v1, p3, v0}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;-><init>(Lcom/fsck/k9/power/AndroidPowerManager;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p3, v1, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 19
    .line 20
    monitor-enter p3

    .line 21
    :try_start_0
    iget-object v0, v1, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p3

    .line 28
    const-wide/32 v2, 0x1d4c0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->acquire(J)V

    .line 32
    .line 33
    .line 34
    :goto_0
    move-object v8, v1

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    monitor-exit p3

    .line 39
    throw p0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    invoke-virtual {p0, p5}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    const-string p3, "checkMail"

    .line 67
    .line 68
    new-instance v2, Lcom/fsck/k9/controller/MessagingController$9;

    .line 69
    .line 70
    move-object v3, p0

    .line 71
    move-object v4, p1

    .line 72
    move v5, p2

    .line 73
    move v6, p4

    .line 74
    move-object v7, p5

    .line 75
    invoke-direct/range {v2 .. v8}, Lcom/fsck/k9/controller/MessagingController$9;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, p3, v2}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final clearAuthenticationErrorNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "display_in_app_notifications"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOutgoingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    if-eqz p3, :cond_1

    .line 30
    .line 31
    iget-object p3, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 32
    .line 33
    sget-object v0, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    .line 34
    .line 35
    if-eq p3, v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance p3, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-direct {p3, v0, p1, p2}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Z)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;

    .line 45
    .line 46
    const/4 p2, 0x2

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-direct {p1, p2, v0, p3}, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    sget-object p3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 52
    .line 53
    invoke-static {p3, p1}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 58
    .line 59
    new-instance p3, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;

    .line 60
    .line 61
    const/16 v1, 0x1c

    .line 62
    .line 63
    invoke-direct {p3, v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationDismisser:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;->notificationSender:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

    .line 77
    .line 78
    invoke-interface {v1, p1}, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;->dismiss(Lnet/thunderbird/feature/notification/api/content/Notification;)Lkotlinx/coroutines/flow/Flow;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance v1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 83
    .line 84
    const/16 v2, 0x19

    .line 85
    .line 86
    invoke-direct {v1, p3, v0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 87
    .line 88
    .line 89
    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 90
    .line 91
    invoke-direct {p3, p1, v1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 95
    .line 96
    invoke-static {p3, p0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_1
    return-void
.end method

.method public final collectMessagesInThreads(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 27
    .line 28
    iget-wide v2, p2, Lcom/fsck/k9/mailstore/LocalMessage;->rootId:J

    .line 29
    .line 30
    const-wide/16 v4, -0x1

    .line 31
    .line 32
    cmp-long v0, v2, v4

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-wide v2, p2, Lcom/fsck/k9/mailstore/LocalMessage;->threadId:J

    .line 37
    .line 38
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 43
    .line 44
    invoke-direct {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v2, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->THREAD_ID:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 48
    .line 49
    sget-object v3, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 50
    .line 51
    invoke-virtual {v0, v2, p2, v3}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getConditions()Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {p2, v2, v0}, Lkotlin/io/ByteStreamsKt;->buildWhereClause(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lorg/jsoup/internal/SoftPool;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 v3, 0x1

    .line 78
    invoke-direct {p2, v3, v2, v0}, Lorg/jsoup/internal/SoftPool;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "id"

    .line 82
    .line 83
    filled-new-array {v0}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v2, p2, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Ljava/lang/String;

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    aget-object v0, v0, v6

    .line 93
    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v5, "(?<=^|[^\\.])\\b"

    .line 97
    .line 98
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v5, "\\b"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    const-string v5, "messages."

    .line 121
    .line 122
    invoke-static {v5, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object p2, p2, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p2, Ljava/util/ArrayList;

    .line 140
    .line 141
    new-array v2, v6, [Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    check-cast p2, [Ljava/lang/String;

    .line 148
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v4, "SELECT subject, sender_list, date, uid, flags, messages.id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, messages.message_id, folder_id, preview, threads.id, threads.root, deleted, read, flagged, answered, forwarded, message_part_id, messages.mime_type, preview_type, header FROM messages LEFT JOIN threads ON (threads.message_id = messages.id) LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN folders ON (folders.id = messages.folder_id) WHERE (empty = 0 AND deleted = 0)"

    .line 152
    .line 153
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_1

    .line 161
    .line 162
    const-string v4, " AND ("

    .line 163
    .line 164
    const-string v5, ")"

    .line 165
    .line 166
    invoke-static {v4, v0, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    goto :goto_1

    .line 171
    :cond_1
    const-string v0, ""

    .line 172
    .line 173
    :goto_1
    const-string v4, " ORDER BY date DESC"

    .line 174
    .line 175
    invoke-static {v2, v0, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    new-array v0, v3, [Ljava/lang/Object;

    .line 180
    .line 181
    aput-object v2, v0, v6

    .line 182
    .line 183
    const-string v3, "Query = %s"

    .line 184
    .line 185
    invoke-static {v3, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    new-instance v5, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    iget-object v7, v1, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 194
    .line 195
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 196
    .line 197
    const/4 v4, 0x0

    .line 198
    move-object v3, p2

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/ArrayList;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v6, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_2
    return-object p0
.end method

.method public final copyMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;J)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 8
    .line 9
    invoke-direct {v3, v0, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, p4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessagesByReference(Ljava/util/List;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v9, "copyMessages"

    .line 17
    .line 18
    move-object v5, v0

    .line 19
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    move-object v1, p0

    .line 23
    move-object v2, p1

    .line 24
    move-wide v3, p2

    .line 25
    move-wide v6, p5

    .line 26
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/ArrayList;JI)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v9, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const/4 v1, 0x0

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    const-string v2, "Error loading account?!"

    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final deleteDraft(Lnet/thunderbird/core/android/account/LegacyAccountDto;JZ)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    new-array p0, p0, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string p1, "No Drafts folder configured. Can\'t delete draft."

    .line 11
    .line 12
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 27
    .line 28
    invoke-virtual {v1, p2, p3}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getMessageServerId(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    new-instance p3, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 35
    .line 36
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    invoke-direct {p3, v0, v1, p1, p2}, Lapp/k9mail/legacy/message/controller/MessageReference;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;

    .line 50
    .line 51
    invoke-direct {p2, p0, p4}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;-><init>(Lcom/fsck/k9/controller/MessagingController;Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public final deleteMessagesSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/ArrayList;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v5, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v6, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-eqz v8, :cond_1

    .line 31
    .line 32
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    check-cast v8, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 37
    .line 38
    iget-object v9, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 39
    .line 40
    invoke-virtual {v8}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-virtual {v9, v1, v10}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 45
    .line 46
    .line 47
    iget-object v9, v8, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v10, v0, Lcom/fsck/k9/controller/MessagingController;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 50
    .line 51
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const-string v10, "K9LOCAL:"

    .line 55
    .line 56
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_0

    .line 61
    .line 62
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-object v8, v0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 78
    .line 79
    invoke-virtual {v8, v1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    new-instance v9, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 84
    .line 85
    invoke-direct {v9, v8, v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const/4 v11, 0x0

    .line 96
    const/4 v12, 0x1

    .line 97
    if-nez p5, :cond_9

    .line 98
    .line 99
    iget-object v13, v0, Lcom/fsck/k9/controller/MessagingController;->localDeleteOperationDecider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalDeleteOperationDecider;

    .line 100
    .line 101
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    monitor-enter p1
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    iget-object v13, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->trashFolderId:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    if-eqz v13, :cond_2

    .line 108
    .line 109
    move v13, v12

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    move v13, v11

    .line 112
    :goto_1
    :try_start_2
    monitor-exit p1

    .line 113
    if-nez v13, :cond_3

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_3
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    if-nez v13, :cond_4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v13

    .line 127
    cmp-long v13, v2, v13

    .line 128
    .line 129
    if-nez v13, :cond_5

    .line 130
    .line 131
    move v13, v12

    .line 132
    goto :goto_3

    .line 133
    :cond_5
    :goto_2
    move v13, v11

    .line 134
    :goto_3
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    if-nez v14, :cond_6

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 142
    .line 143
    .line 144
    move-result-wide v14
    :try_end_2
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    cmp-long v14, v2, v14

    .line 146
    .line 147
    if-nez v14, :cond_7

    .line 148
    .line 149
    move v14, v12

    .line 150
    goto :goto_5

    .line 151
    :cond_7
    :goto_4
    move v14, v11

    .line 152
    :goto_5
    if-nez v13, :cond_9

    .line 153
    .line 154
    if-eqz v14, :cond_8

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    move v13, v11

    .line 158
    goto :goto_7

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    :try_start_4
    throw v0

    .line 162
    :cond_9
    :goto_6
    move v13, v12

    .line 163
    :goto_7
    if-eqz v13, :cond_c

    .line 164
    .line 165
    const-string v14, "Not moving deleted messages to local Trash folder. Removing local copies."

    .line 166
    .line 167
    new-array v15, v11, [Ljava/lang/Object;

    .line 168
    .line 169
    invoke-static {v14, v15}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    if-nez v14, :cond_a

    .line 177
    .line 178
    iget-object v14, v8, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 179
    .line 180
    new-instance v15, Lcom/fsck/k9/mailstore/LocalFolder$9;

    .line 181
    .line 182
    invoke-direct {v15, v4}, Lcom/fsck/k9/mailstore/LocalFolder$9;-><init>(Ljava/util/List;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v14, v12, v15}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-nez v4, :cond_b

    .line 193
    .line 194
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 195
    .line 196
    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 201
    .line 202
    .line 203
    iget-object v8, v8, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 204
    .line 205
    new-instance v14, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 206
    .line 207
    invoke-direct {v14, v5, v4, v12}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Ljava/util/List;Ljava/util/Set;Z)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, v12, v14}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    :cond_b
    const/4 v4, 0x0

    .line 214
    move-object v2, v7

    .line 215
    move/from16 v17, v11

    .line 216
    .line 217
    move/from16 v16, v12

    .line 218
    .line 219
    move/from16 p5, v13

    .line 220
    .line 221
    move-object v7, v4

    .line 222
    goto/16 :goto_a

    .line 223
    .line 224
    :cond_c
    const-string v4, "Deleting messages in normal folder, moving"

    .line 225
    .line 226
    new-array v5, v11, [Ljava/lang/Object;

    .line 227
    .line 228
    invoke-static {v4, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 232
    .line 233
    .line 234
    move-result-wide v4

    .line 235
    new-instance v14, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 236
    .line 237
    invoke-direct {v14, v8, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 238
    .line 239
    .line 240
    iget-object v4, v0, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 241
    .line 242
    invoke-virtual {v4, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    new-instance v5, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .line 250
    .line 251
    new-instance v8, Ljava/util/HashMap;

    .line 252
    .line 253
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v15

    .line 260
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v16

    .line 264
    if-eqz v16, :cond_d

    .line 265
    .line 266
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v16

    .line 270
    move/from16 v17, v11

    .line 271
    .line 272
    move-object/from16 v11, v16

    .line 273
    .line 274
    check-cast v11, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 275
    .line 276
    move/from16 v16, v12

    .line 277
    .line 278
    move/from16 p5, v13

    .line 279
    .line 280
    iget-wide v12, v11, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 281
    .line 282
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    iget-object v3, v11, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-wide/from16 v2, p2

    .line 299
    .line 300
    move/from16 v13, p5

    .line 301
    .line 302
    move/from16 v12, v16

    .line 303
    .line 304
    move/from16 v11, v17

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_d
    move/from16 v17, v11

    .line 308
    .line 309
    move/from16 v16, v12

    .line 310
    .line 311
    move/from16 p5, v13

    .line 312
    .line 313
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 314
    .line 315
    .line 316
    move-result-wide v2

    .line 317
    iget-object v11, v4, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 318
    .line 319
    iget-object v11, v11, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v11, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 322
    .line 323
    invoke-virtual {v11, v5, v2, v3}, Lcom/fsck/k9/storage/messages/K9MessageStore;->moveMessages(Ljava/util/ArrayList;J)Ljava/util/Map;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v4, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->getMessageServerIds(Ljava/util/Collection;)Ljava/util/Map;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    new-instance v5, Ljava/util/HashMap;

    .line 336
    .line 337
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v12

    .line 352
    if-eqz v12, :cond_e

    .line 353
    .line 354
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v12

    .line 358
    check-cast v12, Ljava/util/Map$Entry;

    .line 359
    .line 360
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v13

    .line 364
    check-cast v13, Ljava/lang/Long;

    .line 365
    .line 366
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    check-cast v12, Ljava/lang/Long;

    .line 374
    .line 375
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v13

    .line 382
    check-cast v13, Ljava/lang/String;

    .line 383
    .line 384
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v12

    .line 388
    check-cast v12, Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v5, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    goto :goto_9

    .line 394
    :cond_e
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMarkMessageAsReadOnDelete()Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eqz v3, :cond_f

    .line 399
    .line 400
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 405
    .line 406
    invoke-virtual {v4, v2, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setFlag(Ljava/util/Collection;Lnet/thunderbird/core/common/mail/Flag;)V

    .line 407
    .line 408
    .line 409
    :cond_f
    move-object v2, v7

    .line 410
    move-object v4, v14

    .line 411
    move-object v7, v5

    .line 412
    :goto_a
    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 413
    .line 414
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    :cond_10
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    if-eqz v5, :cond_11

    .line 423
    .line 424
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    check-cast v5, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 429
    .line 430
    invoke-virtual {v5, v1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 431
    .line 432
    .line 433
    if-eqz v4, :cond_10

    .line 434
    .line 435
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v5, v1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 439
    .line 440
    .line 441
    goto :goto_b

    .line 442
    :cond_11
    const-string v3, "Delete policy for account %s is %s"

    .line 443
    .line 444
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDeletePolicy()Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    const/4 v5, 0x2

    .line 449
    new-array v5, v5, [Ljava/lang/Object;

    .line 450
    .line 451
    aput-object v1, v5, v17

    .line 452
    .line 453
    aput-object v4, v5, v16

    .line 454
    .line 455
    invoke-static {v3, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 459
    .line 460
    iget-object v4, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 461
    .line 462
    invoke-static {v3, v4}, Lkotlin/uuid/UuidKt;->getOutboxFolderIdSync(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Ljava/lang/String;)J

    .line 463
    .line 464
    .line 465
    move-result-wide v3

    .line 466
    const-wide/16 v11, -0x1

    .line 467
    .line 468
    cmp-long v5, v3, v11

    .line 469
    .line 470
    if-eqz v5, :cond_14

    .line 471
    .line 472
    cmp-long v3, p2, v3

    .line 473
    .line 474
    if-nez v3, :cond_14

    .line 475
    .line 476
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-interface {v3}, Lcom/fsck/k9/backend/api/Backend;->getSupportsUpload()Z

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    if-eqz v3, :cond_14

    .line 485
    .line 486
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    if-eqz v3, :cond_12

    .line 499
    .line 500
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    check-cast v3, Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 507
    .line 508
    .line 509
    move-result-wide v4

    .line 510
    invoke-static {v4, v5, v3}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->create(JLjava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-virtual {v0, v1, v3}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 515
    .line 516
    .line 517
    goto :goto_c

    .line 518
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 519
    .line 520
    .line 521
    :cond_13
    :goto_d
    move-object/from16 v0, p4

    .line 522
    .line 523
    goto/16 :goto_10

    .line 524
    .line 525
    :cond_14
    iget-boolean v3, v9, Lcom/fsck/k9/mailstore/LocalFolder;->localOnly:Z

    .line 526
    .line 527
    if-eqz v3, :cond_15

    .line 528
    .line 529
    goto :goto_d

    .line 530
    :cond_15
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    if-nez v3, :cond_13

    .line 535
    .line 536
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDeletePolicy()Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    sget-object v4, Lnet/thunderbird/core/android/account/DeletePolicy;->ON_DELETE:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 541
    .line 542
    if-ne v3, v4, :cond_19

    .line 543
    .line 544
    if-nez p5, :cond_16

    .line 545
    .line 546
    invoke-interface {v2}, Lcom/fsck/k9/backend/api/Backend;->getSupportsTrashFolder()Z

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    if-nez v2, :cond_17

    .line 551
    .line 552
    :cond_16
    move-wide/from16 v2, p2

    .line 553
    .line 554
    goto :goto_e

    .line 555
    :cond_17
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMarkMessageAsReadOnDelete()Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eqz v2, :cond_18

    .line 560
    .line 561
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 562
    .line 563
    .line 564
    move-result-wide v4

    .line 565
    sget-object v6, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->MOVE_AND_MARK_AS_READ:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 566
    .line 567
    move-wide/from16 v2, p2

    .line 568
    .line 569
    invoke-virtual/range {v0 .. v7}, Lcom/fsck/k9/controller/MessagingController;->queueMoveOrCopy(Lnet/thunderbird/core/android/account/LegacyAccountDto;JJLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;Ljava/util/HashMap;)V

    .line 570
    .line 571
    .line 572
    move-object/from16 v0, p0

    .line 573
    .line 574
    move-object/from16 v1, p1

    .line 575
    .line 576
    goto :goto_f

    .line 577
    :cond_18
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 578
    .line 579
    .line 580
    move-result-wide v4

    .line 581
    sget-object v6, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->MOVE:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 582
    .line 583
    move-object/from16 v0, p0

    .line 584
    .line 585
    move-object/from16 v1, p1

    .line 586
    .line 587
    move-wide/from16 v2, p2

    .line 588
    .line 589
    invoke-virtual/range {v0 .. v7}, Lcom/fsck/k9/controller/MessagingController;->queueMoveOrCopy(Lnet/thunderbird/core/android/account/LegacyAccountDto;JJLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;Ljava/util/HashMap;)V

    .line 590
    .line 591
    .line 592
    goto :goto_f

    .line 593
    :goto_e
    invoke-static {v2, v3, v6}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;->create(JLjava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 598
    .line 599
    .line 600
    :goto_f
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 601
    .line 602
    .line 603
    goto :goto_d

    .line 604
    :cond_19
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDeletePolicy()Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    sget-object v3, Lnet/thunderbird/core/android/account/DeletePolicy;->MARK_AS_READ:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 609
    .line 610
    if-ne v2, v3, :cond_1a

    .line 611
    .line 612
    iget-wide v2, v9, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 613
    .line 614
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 615
    .line 616
    move/from16 v5, v16

    .line 617
    .line 618
    invoke-static {v2, v3, v5, v4, v6}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->create(JZLnet/thunderbird/core/common/mail/Flag;Ljava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 626
    .line 627
    .line 628
    goto :goto_d

    .line 629
    :cond_1a
    const-string v0, "Delete policy %s prevents delete from server"

    .line 630
    .line 631
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDeletePolicy()Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    const/4 v5, 0x1

    .line 636
    new-array v3, v5, [Ljava/lang/Object;

    .line 637
    .line 638
    aput-object v2, v3, v17

    .line 639
    .line 640
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    goto :goto_d

    .line 644
    :goto_10
    invoke-static {v1, v0}, Lcom/fsck/k9/controller/MessagingController;->unsuppressMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;)V
    :try_end_4
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 645
    .line 646
    .line 647
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    const-string v1, "Error deleting message from local store."

    .line 650
    .line 651
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    .line 653
    .line 654
    return-void
.end method

.method public final getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;
    .locals 1

    .line 1
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->backendManager:Lcom/fsck/k9/backend/BackendManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/fsck/k9/backend/BackendManager;->getBackend(Lnet/thunderbird/feature/account/AccountId;)Lcom/fsck/k9/backend/api/Backend;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final getFolderId(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolderId(Ljava/lang/String;)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_0
    const-string p0, "Folder not found (server ID: "

    .line 28
    .line 29
    const-string p1, ")"

    .line 30
    .line 31
    invoke-static {p0, p2, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 p0, 0x0

    .line 39
    .line 40
    return-wide p0
.end method

.method public final getFolderServerId(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 12
    .line 13
    invoke-virtual {p0, p2, p3}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolderServerId(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "Folder not found (ID: "

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p2, ")"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getLocalStoreOrThrow(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    const-string p0, "Couldn\'t get LocalStore for account "

    .line 9
    .line 10
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public final handleAuthenticationFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->shouldMigrateToOAuth()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/16 v6, 0x1ef

    .line 20
    .line 21
    invoke-static {v3, v4, v4, v4, v6}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iput-object v3, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalIncomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 26
    .line 27
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOutgoingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3, v4, v4, v4, v6}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iput-object v3, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalOutgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setShouldMigrateToOAuth(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController;->preferences:Lcom/fsck/k9/Preferences;

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string v6, "display_in_app_notifications"

    .line 51
    .line 52
    invoke-virtual {v3, v6}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v6}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/4 v7, 0x3

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    const-string v6, "handleAuthenticationFailure: sending in-app notification"

    .line 64
    .line 65
    new-array v8, v5, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-static {v6, v8}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v6, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    invoke-direct {v6, v7, v1, v2}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Z)V

    .line 73
    .line 74
    .line 75
    new-instance v8, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;

    .line 76
    .line 77
    const/4 v9, 0x2

    .line 78
    invoke-direct {v8, v9, v4, v6}, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 82
    .line 83
    invoke-static {v6, v8}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 88
    .line 89
    new-instance v8, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;

    .line 90
    .line 91
    const/16 v10, 0x1b

    .line 92
    .line 93
    invoke-direct {v8, v10}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 94
    .line 95
    .line 96
    iget-object v10, v0, Lcom/fsck/k9/controller/MessagingController;->notificationSender:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 97
    .line 98
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v11, v10, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;->notificationSender:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v11, Lnet/thunderbird/feature/notification/api/sender/NotificationSender;

    .line 107
    .line 108
    invoke-interface {v11, v6}, Lnet/thunderbird/feature/notification/api/sender/NotificationSender;->send(Lnet/thunderbird/feature/notification/api/content/Notification;)Lkotlinx/coroutines/flow/Flow;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    new-instance v11, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 113
    .line 114
    const/16 v12, 0x1a

    .line 115
    .line 116
    invoke-direct {v11, v8, v4, v12}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 120
    .line 121
    invoke-direct {v4, v6, v11, v9}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 122
    .line 123
    .line 124
    iget-object v6, v10, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 125
    .line 126
    invoke-static {v4, v6}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 127
    .line 128
    .line 129
    :cond_1
    const-string/jumbo v4, "use_notification_sender_for_system_notifications"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-interface {v3}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isDisabled()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_4

    .line 141
    .line 142
    const-string v3, "handleAuthenticationFailure: sending system notification via old notification controller"

    .line 143
    .line 144
    new-array v4, v5, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-static {v3, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationController;->authenticationErrorNotificationController:Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;

    .line 155
    .line 156
    iget-object v3, v0, Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 157
    .line 158
    iget-object v4, v0, Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 159
    .line 160
    iget-object v4, v4, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 161
    .line 162
    if-eqz v2, :cond_2

    .line 163
    .line 164
    move v6, v7

    .line 165
    goto :goto_0

    .line 166
    :cond_2
    const/4 v6, 0x4

    .line 167
    :goto_0
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    const/16 v9, 0x10

    .line 172
    .line 173
    mul-int/2addr v8, v9

    .line 174
    add-int/2addr v8, v7

    .line 175
    add-int/2addr v8, v6

    .line 176
    iget-object v6, v0, Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;->actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 177
    .line 178
    if-eqz v2, :cond_3

    .line 179
    .line 180
    invoke-virtual {v6, v1}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->getEditIncomingServerSettingsIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Landroid/app/PendingIntent;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    goto :goto_1

    .line 185
    :cond_3
    invoke-virtual {v6, v1}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->getEditOutgoingServerSettingsIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Landroid/app/PendingIntent;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    :goto_1
    const v6, 0x7f1204f2

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    const/4 v11, 0x1

    .line 204
    new-array v12, v11, [Ljava/lang/Object;

    .line 205
    .line 206
    aput-object v10, v12, v5

    .line 207
    .line 208
    const v5, 0x7f1204f1

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v5, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    sget-object v10, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MISCELLANEOUS:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 219
    .line 220
    invoke-virtual {v3, v1, v10}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    iget-object v13, v12, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 225
    .line 226
    const v14, 0x7f080122

    .line 227
    .line 228
    .line 229
    iput v14, v13, Landroid/app/Notification;->icon:I

    .line 230
    .line 231
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 232
    .line 233
    .line 234
    move-result v15

    .line 235
    iput v15, v12, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 236
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 238
    .line 239
    .line 240
    move-result-wide v14

    .line 241
    iput-wide v14, v13, Landroid/app/Notification;->when:J

    .line 242
    .line 243
    invoke-virtual {v12, v9, v11}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v12, v7}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    iput-object v7, v12, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 254
    .line 255
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    iput-object v7, v12, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 260
    .line 261
    iput-object v2, v12, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 262
    .line 263
    new-instance v2, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 264
    .line 265
    invoke-direct {v2, v11}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    iput-object v5, v2, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 273
    .line 274
    invoke-virtual {v12, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/work/WorkRequest$Builder;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v1, v10}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    iget-object v5, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 282
    .line 283
    const v7, 0x7f080122

    .line 284
    .line 285
    .line 286
    iput v7, v5, Landroid/app/Notification;->icon:I

    .line 287
    .line 288
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    iput v1, v2, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 293
    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 295
    .line 296
    .line 297
    move-result-wide v9

    .line 298
    iput-wide v9, v5, Landroid/app/Notification;->when:J

    .line 299
    .line 300
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iput-object v1, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 312
    .line 313
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    iput-object v1, v12, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 321
    .line 322
    const-string v1, "err"

    .line 323
    .line 324
    iput-object v1, v12, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 325
    .line 326
    iget-object v0, v0, Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 327
    .line 328
    invoke-static {v12, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->setErrorAppearance(Landroidx/core/app/NotificationCompat$Builder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v8, v0}, Lcom/fsck/k9/notification/NotificationHelper;->notify(ILandroid/app/Notification;)V

    .line 339
    .line 340
    .line 341
    :cond_4
    return-void
.end method

.method public final handleSendFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "Failed to send message"

    .line 5
    .line 6
    invoke-static {p4, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_SEND_FAILED:Lnet/thunderbird/core/common/mail/Flag;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p3, v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 13
    .line 14
    .line 15
    iget-wide p2, p2, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 16
    .line 17
    invoke-static {p4}, Lokhttp3/CacheControl$Companion;->getRootCauseMessage(Ljava/lang/Exception;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2, p3, p4}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxFailed(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public final isMoveCapable(Lapp/k9mail/legacy/message/controller/MessageReference;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p0, "K9LOCAL:"

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    xor-int/lit8 p0, p0, 0x1

    .line 15
    .line 16
    return p0
.end method

.method public final loadMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 8
    .line 9
    invoke-direct {p1, p0, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-wide p2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    cmp-long p2, p2, v0

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    new-instance p2, Lcom/fsck/k9/mail/FetchProfile;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object p3, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 35
    .line 36
    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p1, p3, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    iget-object p0, p1, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    .line 48
    .line 49
    const-string p1, "Message not found: folder="

    .line 50
    .line 51
    const-string p2, ", uid="

    .line 52
    .line 53
    invoke-static {p1, p0, p2, p4}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public final loadMessageRemoteSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;Z)V
    .locals 2

    .line 1
    const-string v0, "Folder not found (ID: "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "K9LOCAL:"

    .line 9
    .line 10
    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_3

    .line 15
    .line 16
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 27
    .line 28
    invoke-virtual {v1, p2, p3}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolderServerId(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz p6, :cond_0

    .line 39
    .line 40
    invoke-static {p1}, Lcom/fsck/k9/controller/MessagingController;->createSyncConfig(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/SyncConfig;

    .line 41
    .line 42
    .line 43
    move-result-object p6

    .line 44
    invoke-interface {v0, p6, v1, p4}, Lcom/fsck/k9/backend/api/Backend;->downloadMessage(Lcom/fsck/k9/backend/api/SyncConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p2

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    invoke-interface {v0, v1, p4}, Lcom/fsck/k9/backend/api/Backend;->downloadCompleteMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, p5}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 54
    .line 55
    .line 56
    move-result-object p6

    .line 57
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p6

    .line 61
    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 72
    .line 73
    invoke-virtual {v0, p1, p2, p3, p4}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->loadMessageRemoteFinished(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    return-void

    .line 78
    :cond_2
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    new-instance p6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p2, ")"

    .line 89
    .line 90
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p4, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p4

    .line 101
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string p3, "Must not be called with a local UID"

    .line 104
    .line 105
    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_2
    invoke-virtual {p0, p5}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result p4

    .line 121
    if-eqz p4, :cond_4

    .line 122
    .line 123
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    check-cast p4, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 128
    .line 129
    invoke-virtual {p4, p2}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->loadMessageRemoteFailed(Ljava/lang/Exception;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    const/4 p3, 0x1

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Exception;Z)V

    .line 135
    .line 136
    .line 137
    const/4 p1, 0x0

    .line 138
    new-array p1, p1, [Ljava/lang/Object;

    .line 139
    .line 140
    const-string p3, "Error while loading remote message"

    .line 141
    .line 142
    invoke-static {p2, p3, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    const/16 p2, 0xe

    .line 148
    .line 149
    invoke-direct {p1, p2}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->syncDebugLogger:Lnet/thunderbird/core/logging/Logger;

    .line 153
    .line 154
    const-string p2, "MessagingException"

    .line 155
    .line 156
    const/4 p3, 0x0

    .line 157
    invoke-interface {p0, p2, p3, p1}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final moveMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;J)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 8
    .line 9
    invoke-direct {v3, v0, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, p4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessagesByReference(Ljava/util/List;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lcom/fsck/k9/controller/MessagingController;->suppressMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    const-string v9, "moveMessages"

    .line 20
    .line 21
    move-object v5, v0

    .line 22
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p1

    .line 27
    move-wide v3, p2

    .line 28
    move-wide v6, p5

    .line 29
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/ArrayList;JI)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v9, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const/4 v1, 0x0

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v2, "Error loading account?!"

    .line 41
    .line 42
    invoke-static {v0, v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final moveOrCopyMessageSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;JLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v6, p7

    .line 8
    .line 9
    :try_start_0
    iget-object v4, v0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 10
    .line 11
    invoke-virtual {v4, v1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    sget-object v5, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->MOVE:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 16
    .line 17
    if-ne v6, v5, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-interface {v5}, Lcom/fsck/k9/backend/api/Backend;->getSupportsMove()Z

    .line 24
    .line 25
    .line 26
    move-result v5
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v5, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->COPY:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 31
    .line 32
    if-ne v6, v5, :cond_1

    .line 33
    .line 34
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-interface {v7}, Lcom/fsck/k9/backend/api/Backend;->getSupportsCopy()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :cond_1
    new-instance v7, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 46
    .line 47
    move-wide/from16 v8, p2

    .line 48
    .line 49
    invoke-direct {v7, v4, v8, v9}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 53
    .line 54
    .line 55
    new-instance v10, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 56
    .line 57
    invoke-direct {v10, v4, v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v10}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 61
    .line 62
    .line 63
    new-instance v4, Ljava/util/LinkedList;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    const/4 v13, 0x0

    .line 73
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    if-eqz v14, :cond_5

    .line 78
    .line 79
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    check-cast v14, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 84
    .line 85
    const/16 p4, 0x0

    .line 86
    .line 87
    iget-object v12, v14, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v15, v14, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 90
    .line 91
    iget-object v8, v0, Lcom/fsck/k9/controller/MessagingController;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const-string v8, "K9LOCAL:"

    .line 97
    .line 98
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_2

    .line 103
    .line 104
    invoke-virtual {v4, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_2
    sget-object v8, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->MOVE_AND_MARK_AS_READ:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 108
    .line 109
    if-ne v6, v8, :cond_3

    .line 110
    .line 111
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 112
    .line 113
    invoke-interface {v15, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-nez v9, :cond_4

    .line 118
    .line 119
    const/4 v9, 0x1

    .line 120
    invoke-virtual {v14, v8, v9}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 121
    .line 122
    .line 123
    :goto_2
    const/4 v13, 0x1

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    if-nez v13, :cond_4

    .line 126
    .line 127
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 128
    .line 129
    invoke-interface {v15, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-nez v8, :cond_4

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    :goto_3
    move-wide/from16 v8, p2

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    const/16 p4, 0x0

    .line 140
    .line 141
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 142
    .line 143
    .line 144
    new-instance v8, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-eqz v9, :cond_7

    .line 158
    .line 159
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    check-cast v9, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v7, v9}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    if-eqz v9, :cond_6

    .line 170
    .line 171
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-lez v4, :cond_c

    .line 180
    .line 181
    const-string v4, "moveOrCopyMessageSynchronous: source folder = %s, %d messages, destination folder = %s, operation = %s"

    .line 182
    .line 183
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    const/4 v15, 0x4

    .line 204
    new-array v15, v15, [Ljava/lang/Object;

    .line 205
    .line 206
    aput-object v9, v15, p4

    .line 207
    .line 208
    const/16 v16, 0x1

    .line 209
    .line 210
    aput-object v11, v15, v16

    .line 211
    .line 212
    const/4 v9, 0x2

    .line 213
    aput-object v12, v15, v9

    .line 214
    .line 215
    const/4 v9, 0x3

    .line 216
    aput-object v14, v15, v9

    .line 217
    .line 218
    invoke-static {v4, v15}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iget-object v4, v0, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 222
    .line 223
    invoke-virtual {v4, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    iget-object v9, v4, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 228
    .line 229
    iget-object v9, v9, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v9, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 232
    .line 233
    new-instance v11, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .line 237
    .line 238
    new-instance v12, Ljava/util/HashMap;

    .line 239
    .line 240
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v15

    .line 251
    if-eqz v15, :cond_8

    .line 252
    .line 253
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    check-cast v15, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 258
    .line 259
    move/from16 p4, v13

    .line 260
    .line 261
    move-object/from16 p2, v14

    .line 262
    .line 263
    iget-wide v13, v15, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 264
    .line 265
    move-wide/from16 v17, v13

    .line 266
    .line 267
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    iget-object v14, v15, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .line 282
    .line 283
    move-object/from16 v14, p2

    .line 284
    .line 285
    move/from16 v13, p4

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_8
    move/from16 p4, v13

    .line 289
    .line 290
    iget-object v13, v0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 291
    .line 292
    if-ne v6, v5, :cond_9

    .line 293
    .line 294
    :try_start_2
    invoke-virtual {v9, v11, v2, v3}, Lcom/fsck/k9/storage/messages/K9MessageStore;->copyMessages(Ljava/util/ArrayList;J)Ljava/util/Map;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    if-eqz p4, :cond_a

    .line 299
    .line 300
    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_a

    .line 309
    .line 310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    check-cast v5, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 315
    .line 316
    invoke-virtual {v5, v1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_9
    invoke-virtual {v9, v11, v2, v3}, Lcom/fsck/k9/storage/messages/K9MessageStore;->moveMessages(Ljava/util/ArrayList;J)Ljava/util/Map;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-static {v1, v8}, Lcom/fsck/k9/controller/MessagingController;->unsuppressMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;)V

    .line 325
    .line 326
    .line 327
    if-eqz p4, :cond_a

    .line 328
    .line 329
    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-eqz v5, :cond_a

    .line 338
    .line 339
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    check-cast v5, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 344
    .line 345
    invoke-virtual {v5, v1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5, v1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 349
    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_a
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-virtual {v4, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->getMessageServerIds(Ljava/util/Collection;)Ljava/util/Map;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    new-instance v4, Ljava/util/HashMap;

    .line 361
    .line 362
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    if-eqz v5, :cond_b

    .line 378
    .line 379
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    check-cast v5, Ljava/util/Map$Entry;

    .line 384
    .line 385
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    check-cast v8, Ljava/lang/Long;

    .line 390
    .line 391
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    check-cast v5, Ljava/lang/Long;

    .line 399
    .line 400
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    check-cast v8, Ljava/lang/String;

    .line 408
    .line 409
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    goto :goto_8

    .line 419
    :cond_b
    iget-wide v2, v7, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 420
    .line 421
    iget-wide v7, v10, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 422
    .line 423
    move-wide/from16 v19, v7

    .line 424
    .line 425
    move-object v7, v4

    .line 426
    move-wide/from16 v4, v19

    .line 427
    .line 428
    invoke-virtual/range {v0 .. v7}, Lcom/fsck/k9/controller/MessagingController;->queueMoveOrCopy(Lnet/thunderbird/core/android/account/LegacyAccountDto;JJLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;Ljava/util/HashMap;)V

    .line 429
    .line 430
    .line 431
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_2
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    const-string v1, "Error moving message"

    .line 437
    .line 438
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    .line 440
    .line 441
    return-void
.end method

.method public final moveOrDeleteSentMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalStore;Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 10

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->sentFolderId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    monitor-exit p1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isUploadSentMessages()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderId()Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    new-instance v5, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 30
    .line 31
    invoke-direct {v5, p2, v3, v4}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 35
    .line 36
    .line 37
    iget-object p2, v5, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 38
    .line 39
    const-string v6, "Moving sent message to folder \'%s\' (%d)"

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    new-array v8, v7, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p2, v8, v2

    .line 45
    .line 46
    aput-object v0, v8, v1

    .line 47
    .line 48
    invoke-static {v6, v8}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 52
    .line 53
    invoke-virtual {v6, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v6, v6, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 58
    .line 59
    iget-wide v8, p3, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 60
    .line 61
    iget-object p3, v6, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p3, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 64
    .line 65
    invoke-virtual {p3, v8, v9, v3, v4}, Lcom/fsck/k9/storage/messages/K9MessageStore;->moveMessage(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v8

    .line 69
    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 70
    .line 71
    .line 72
    const-string p3, "Moved sent message to folder \'%s\' (%d)"

    .line 73
    .line 74
    new-array v7, v7, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object p2, v7, v2

    .line 77
    .line 78
    aput-object v0, v7, v1

    .line 79
    .line 80
    invoke-static {p3, v7}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-boolean p2, v5, Lcom/fsck/k9/mailstore/LocalFolder;->localOnly:Z

    .line 84
    .line 85
    if-nez p2, :cond_3

    .line 86
    .line 87
    iget-object p2, v6, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p2, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 90
    .line 91
    invoke-virtual {p2, v8, v9}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getMessageServerId(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    invoke-static {v3, v4, p2}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->create(JLjava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    :goto_1
    const-string p2, "Not uploading sent message; deleting local message"

    .line 109
    .line 110
    new-array v0, v2, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {p2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Lcom/fsck/k9/mailstore/LocalMessage;->destroy()V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/fsck/k9/controller/MessagingController;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 119
    .line 120
    iget-object p3, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {p2, p3}, Lkotlin/uuid/UuidKt;->getOutboxFolderIdSync(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Ljava/lang/String;)J

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-eqz p2, :cond_4

    .line 136
    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    check-cast p2, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 142
    .line 143
    invoke-virtual {p2, p1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    return-void

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw p0
.end method

.method public final notifyUserIfCertificateProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Exception;Z)V
    .locals 12

    .line 1
    instance-of p2, p2, Lcom/fsck/k9/mail/CertificateValidationException;

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationController;->certificateErrorNotificationController:Lcom/fsck/k9/notification/CertificateErrorNotificationController;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/fsck/k9/notification/CertificateErrorNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/notification/CertificateErrorNotificationController;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    move v2, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x2

    .line 25
    :goto_0
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/16 v4, 0x10

    .line 30
    .line 31
    mul-int/2addr v3, v4

    .line 32
    add-int/lit8 v3, v3, 0x3

    .line 33
    .line 34
    add-int/2addr v3, v2

    .line 35
    iget-object v2, p0, Lcom/fsck/k9/notification/CertificateErrorNotificationController;->actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 36
    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->getEditIncomingServerSettingsIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Landroid/app/PendingIntent;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v2, p1}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->getEditOutgoingServerSettingsIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Landroid/app/PendingIntent;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    :goto_1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v0, v0, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 53
    .line 54
    new-array v5, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    aput-object v2, v5, v6

    .line 58
    .line 59
    const v2, 0x7f1204fa

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const v5, 0x7f1204f9

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v6, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MISCELLANEOUS:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 80
    .line 81
    invoke-virtual {p2, p1, v6}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    iget-object v8, v7, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 86
    .line 87
    const v9, 0x7f080122

    .line 88
    .line 89
    .line 90
    iput v9, v8, Landroid/app/Notification;->icon:I

    .line 91
    .line 92
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    iput v10, v7, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v10

    .line 102
    iput-wide v10, v8, Landroid/app/Notification;->when:J

    .line 103
    .line 104
    invoke-virtual {v7, v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iput-object v2, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 115
    .line 116
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iput-object v2, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 121
    .line 122
    iput-object p3, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 123
    .line 124
    new-instance p3, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 125
    .line 126
    invoke-direct {p3, v1}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput-object v1, p3, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {v7, p3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/work/WorkRequest$Builder;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p1, v6}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    iget-object v1, p3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 143
    .line 144
    iput v9, v1, Landroid/app/Notification;->icon:I

    .line 145
    .line 146
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iput p1, p3, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 151
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v4

    .line 156
    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 157
    .line 158
    const p1, 0x7f1204f8

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iput-object p1, p3, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 173
    .line 174
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    iput-object p1, v7, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 182
    .line 183
    const-string p1, "err"

    .line 184
    .line 185
    iput-object p1, v7, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/fsck/k9/notification/CertificateErrorNotificationController;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 188
    .line 189
    invoke-static {v7, p0}, Landroidx/compose/ui/unit/IntOffsetKt;->setErrorAppearance(Landroidx/core/app/NotificationCompat$Builder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v3, p0}, Lcom/fsck/k9/notification/NotificationHelper;->notify(ILandroid/app/Notification;)V

    .line 200
    .line 201
    .line 202
    :cond_2
    return-void
.end method

.method public final processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, "processPendingCommands"

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final processPendingCommandsSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 8
    .line 9
    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$3;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lcom/fsck/k9/mailstore/LocalStore$3;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/List;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 38
    .line 39
    :try_start_1
    invoke-virtual {v5}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->getCommandName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v6, "Processing pending command \'%s\'"

    .line 44
    .line 45
    new-array v7, v3, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object v4, v7, v0

    .line 48
    .line 49
    invoke-static {v6, v7}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x2

    .line 53
    :try_start_2
    invoke-virtual {v5, p0, p1}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->execute(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 54
    .line 55
    .line 56
    new-instance v7, Lokhttp3/ConnectionPool;

    .line 57
    .line 58
    invoke-direct {v7, v6, v5}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0, v7}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-string v7, "Done processing pending command \'%s\'"

    .line 65
    .line 66
    new-array v8, v3, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v4, v8, v0

    .line 69
    .line 70
    invoke-static {v7, v8}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :catch_0
    move-exception v7

    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception v7

    .line 77
    goto :goto_3

    .line 78
    :goto_1
    :try_start_3
    const-string v8, "Unexpected exception with command \'%s\', removing command from queue"

    .line 79
    .line 80
    new-array v9, v3, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v4, v9, v0

    .line 83
    .line 84
    invoke-static {v7, v8, v9}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    new-instance v4, Lokhttp3/ConnectionPool;

    .line 88
    .line 89
    invoke-direct {v4, v6, v5}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0, v4}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :goto_2
    move-object v4, v5

    .line 97
    goto :goto_5

    .line 98
    :catch_2
    move-exception v1

    .line 99
    goto :goto_2

    .line 100
    :goto_3
    iget-boolean v8, v7, Lnet/thunderbird/core/common/exception/MessagingException;->isPermanentFailure:Z

    .line 101
    .line 102
    if-eqz v8, :cond_0

    .line 103
    .line 104
    const-string v8, "Failure of command \'%s\' was permanent, removing command from queue"

    .line 105
    .line 106
    new-array v9, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v4, v9, v0

    .line 109
    .line 110
    invoke-static {v7, v8, v9}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-instance v4, Lokhttp3/ConnectionPool;

    .line 114
    .line 115
    invoke-direct {v4, v6, v5}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0, v4}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :goto_4
    move-object v4, v5

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    throw v7
    :try_end_3
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 124
    :catch_3
    move-exception v1

    .line 125
    goto :goto_5

    .line 126
    :cond_1
    return-void

    .line 127
    :goto_5
    invoke-virtual {p0, p1, v1, v3}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Exception;Z)V

    .line 128
    .line 129
    .line 130
    new-array p0, v3, [Ljava/lang/Object;

    .line 131
    .line 132
    aput-object v4, p0, v0

    .line 133
    .line 134
    const-string p1, "Could not process command \'%s\'"

    .line 135
    .line 136
    invoke-static {v1, p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    throw v1
.end method

.method public final processPendingMoveOrCopy(Lnet/thunderbird/core/android/account/LegacyAccountDto;JJLjava/util/List;Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;Ljava/util/Map;)V
    .locals 7

    .line 1
    if-eqz p8, :cond_9

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 10
    .line 11
    invoke-direct {v1, v0, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 15
    .line 16
    .line 17
    iget-object p2, v1, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p3, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 20
    .line 21
    invoke-direct {p3, v0, p4, p5}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p3, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-eq v3, v4, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    if-ne v3, v4, :cond_0

    .line 44
    .line 45
    invoke-interface {v2, p2, v0, p6}, Lcom/fsck/k9/backend/api/Backend;->moveMessagesAndMarkAsRead(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "Unsupported messaging operation"

    .line 51
    .line 52
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-interface {v2, p2, v0, p6}, Lcom/fsck/k9/backend/api/Backend;->copyMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {v2, p2, v0, p6}, Lcom/fsck/k9/backend/api/Backend;->moveMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    :goto_0
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->COPY:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 66
    .line 67
    if-eq p7, v0, :cond_3

    .line 68
    .line 69
    invoke-static {v1, p6}, Lcom/fsck/k9/controller/MessagingController;->destroyPlaceholderMessages(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    if-nez p2, :cond_4

    .line 73
    .line 74
    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 75
    .line 76
    :cond_4
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p6

    .line 80
    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result p7

    .line 84
    if-eqz p7, :cond_8

    .line 85
    .line 86
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p7

    .line 90
    check-cast p7, Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {p8, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    move-object v5, v0

    .line 97
    check-cast v5, Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {p2, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p7

    .line 103
    move-object v6, p7

    .line 104
    check-cast v6, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p3, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 107
    .line 108
    .line 109
    move-result-object p7

    .line 110
    if-nez p7, :cond_5

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    if-eqz v6, :cond_7

    .line 114
    .line 115
    invoke-virtual {p7, v6}, Lcom/fsck/k9/mailstore/LocalMessage;->setUid(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p7}, Lcom/fsck/k9/mailstore/LocalFolder;->changeUid(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 119
    .line 120
    .line 121
    iget-object p7, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 122
    .line 123
    invoke-virtual {p7}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object p7

    .line 127
    :goto_2
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move-object v1, v0

    .line 138
    check-cast v1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 139
    .line 140
    move-object v2, p1

    .line 141
    move-wide v3, p4

    .line 142
    invoke-virtual/range {v1 .. v6}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->messageUidChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    move-object v2, p1

    .line 147
    move-wide v3, p4

    .line 148
    goto :goto_3

    .line 149
    :cond_7
    move-object v2, p1

    .line 150
    move-wide v3, p4

    .line 151
    invoke-virtual {p7}, Lcom/fsck/k9/mailstore/LocalMessage;->destroy()V

    .line 152
    .line 153
    .line 154
    :goto_3
    move-object p1, v2

    .line 155
    move-wide p4, v3

    .line 156
    goto :goto_1

    .line 157
    :cond_8
    return-void

    .line 158
    :cond_9
    const-string p0, "Required value was null."

    .line 159
    .line 160
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->queuedCommands:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, p1, p2, v0}, Lcom/fsck/k9/controller/MessagingController;->putCommand(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->queuedCommands:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, v0}, Lcom/fsck/k9/controller/MessagingController;->putCommand(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final queueMoveOrCopy(Lnet/thunderbird/core/android/account/LegacyAccountDto;JJLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;Ljava/util/HashMap;)V
    .locals 6

    .line 1
    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p6

    .line 5
    if-eqz p6, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p6, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p6, v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {p2, p3, p4, p5, p7}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;->create(JJLjava/util/Map;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v4, 0x1

    .line 20
    move-wide v0, p2

    .line 21
    move-wide v2, p4

    .line 22
    move-object v5, p7

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->create(JJZLjava/util/Map;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move-wide v0, p2

    .line 29
    move-wide v2, p4

    .line 30
    move-object v5, p7

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->create(JJZLjava/util/Map;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Landroid/content/ContentValues;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "command"

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->getCommandName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "data"

    .line 22
    .line 23
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore;->pendingCommandSerializer:Lcom/fsck/k9/controller/PendingCommandSerializer;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/fsck/k9/controller/PendingCommandSerializer;->adapters:Ljava/util/Map;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->getCommandName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/squareup/moshi/JsonAdapter;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1, p2}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 47
    .line 48
    new-instance p2, Lcom/fsck/k9/mailstore/LocalStore$2;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-direct {p2, p1, v0}, Lcom/fsck/k9/mailstore/LocalStore$2;-><init>(Landroid/content/ContentValues;I)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p1, "Unsupported pending command type!"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string p1, "Unable to enqueue pending command"

    .line 69
    .line 70
    invoke-static {p1, p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final refreshFolderListIfStale(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLastFolderListRefreshTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    if-gtz v4, :cond_1

    .line 14
    .line 15
    const-wide/32 v7, 0x1b7740

    .line 16
    .line 17
    .line 18
    add-long/2addr v7, v0

    .line 19
    cmp-long v2, v7, v2

    .line 20
    .line 21
    if-gtz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-array p1, v6, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p0, p1, v5

    .line 31
    .line 32
    const-string p0, "Last folder list refresh @ %tc. Not refreshing now."

    .line 33
    .line 34
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-array v1, v6, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object v0, v1, v5

    .line 45
    .line 46
    const-string v0, "Last folder list refresh @ %tc. Refreshing now\u2026"

    .line 47
    .line 48
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->refreshFolderListSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final refreshFolderListSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {p1, v1}, Lcom/fsck/k9/controller/MessagingController;->isAuthenticationProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v2, "Authentication will fail. Skip refreshing the folder list."

    .line 10
    .line 11
    new-array v3, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Lcom/fsck/k9/backend/api/Backend;->refreshFolderList()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->folderPathDelimiter()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderPathDelimiter(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    const-string v4, "Folder list successfully refreshed @ %tc"

    .line 56
    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    new-array v6, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v5, v6, v0

    .line 64
    .line 65
    invoke-static {v4, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLastFolderListRefreshTime(J)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController;->preferences:Lcom/fsck/k9/Preferences;

    .line 72
    .line 73
    invoke-virtual {v2, p1}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object p1, v3, v0

    .line 80
    .line 81
    const-string v0, "Could not refresh folder list for account %s"

    .line 82
    .line 83
    invoke-static {v2, v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    instance-of v0, v2, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p0, p1, v2, v1}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Exception;Z)V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method public final removeListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final saveDraft(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->draftOperations:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-object p0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/fsck/k9/controller/MessagingController;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Lcom/fsck/k9/backend/api/Backend;->getSupportsUpload()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    move-object v1, p1

    .line 37
    move-object v2, p2

    .line 38
    move-object v5, p3

    .line 39
    move-object v6, p4

    .line 40
    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/backend/imap/ImapSync;->saveAndUploadDraft(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mail/internet/MimeMessage;JLjava/lang/Long;Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v1, p1

    .line 46
    move-object v2, p2

    .line 47
    move-object v5, p3

    .line 48
    move-object v6, p4

    .line 49
    iget-object p0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object p1, v0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 60
    .line 61
    sget-object p2, Lcom/fsck/k9/mail/MessageDownloadState;->FULL:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 62
    .line 63
    invoke-virtual {p1, v2, p2, v6}, Lcom/fsck/k9/mailstore/SaveMessageDataCreator;->createSaveMessageData(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p2, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 72
    .line 73
    invoke-virtual {p2, v3, v4, p1, v5}, Lcom/fsck/k9/storage/messages/K9MessageStore;->saveLocalMessage(JLapp/k9mail/legacy/mailstore/SaveMessageData;Ljava/lang/Long;)J

    .line 74
    .line 75
    .line 76
    move-result-wide p1

    .line 77
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 78
    .line 79
    .line 80
    move-wide p0, p1

    .line 81
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string p1, "No Drafts folder configured"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    move-object p0, v0

    .line 96
    const/4 p1, 0x0

    .line 97
    new-array p1, p1, [Ljava/lang/Object;

    .line 98
    .line 99
    const-string p2, "Unable to save message as draft."

    .line 100
    .line 101
    invoke-static {p0, p2, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    return-object p0
.end method

.method public final sendPendingMessagesSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    iget-object v8, v1, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    .line 7
    iget-object v9, v1, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    :try_start_0
    invoke-static {v3, v10}, Lcom/fsck/k9/controller/MessagingController;->isAuthenticationProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3c
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_1
    const-string v0, "Authentication will fail. Skip sending messages."

    .line 17
    .line 18
    new-array v2, v10, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3, v10}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v9, v3}, Lcom/fsck/k9/notification/NotificationController;->clearSendFailedNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    move-object v8, v3

    .line 32
    :goto_0
    move-object v15, v9

    .line 33
    const/4 v11, 0x0

    .line 34
    goto/16 :goto_34

    .line 35
    .line 36
    :catch_0
    move-exception v0

    .line 37
    move-object v8, v3

    .line 38
    :goto_1
    move-object v15, v9

    .line 39
    const/4 v11, 0x0

    .line 40
    goto/16 :goto_32

    .line 41
    .line 42
    :cond_0
    :try_start_2
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    iget-object v13, v12, Lcom/fsck/k9/mailstore/LocalStore;->outboxStateRepository:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 49
    .line 50
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 51
    .line 52
    iget-object v2, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v2}, Lkotlin/uuid/UuidKt;->getOutboxFolderIdSync(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Ljava/lang/String;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3c
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    .line 58
    :try_start_3
    new-instance v14, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 59
    .line 60
    invoke-direct {v14, v12, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3d
    .catchall {:try_start_3 .. :try_end_3} :catchall_12

    .line 61
    .line 62
    .line 63
    :try_start_4
    invoke-virtual {v14}, Lcom/fsck/k9/mailstore/LocalFolder;->exists()Z

    .line 64
    .line 65
    .line 66
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3c
    .catchall {:try_start_4 .. :try_end_4} :catchall_11

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    :try_start_5
    const-string v0, "Outbox does not exist"

    .line 70
    .line 71
    new-array v1, v10, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v3}, Lcom/fsck/k9/notification/NotificationController;->clearSendFailedNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    :try_start_6
    invoke-virtual {v14}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 81
    .line 82
    .line 83
    const/4 v15, 0x1

    .line 84
    invoke-virtual {v14, v15}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Z)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v16

    .line 96
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3c
    .catchall {:try_start_6 .. :try_end_6} :catchall_11

    .line 100
    const/4 v6, 0x0

    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    :try_start_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 108
    .line 109
    invoke-virtual/range {v2 .. v7}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxProgress(Lnet/thunderbird/core/android/account/LegacyAccountDto;JII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 110
    .line 111
    .line 112
    move-object/from16 v3, p1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    move-object/from16 v8, p1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    move-object/from16 v8, p1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    :try_start_8
    new-instance v2, Lcom/fsck/k9/mail/FetchProfile;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    const-string v3, "Scanning Outbox folder for messages to send"

    .line 139
    .line 140
    new-array v6, v10, [Ljava/lang/Object;

    .line 141
    .line 142
    invoke-static {v3, v6}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v17
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3b
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    .line 153
    const/4 v6, 0x0

    .line 154
    const/16 v18, 0x0

    .line 155
    .line 156
    :goto_3
    :try_start_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_c

    .line 161
    .line 162
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    move-object v11, v0

    .line 167
    check-cast v11, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 168
    .line 169
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 170
    .line 171
    move/from16 v19, v15

    .line 172
    .line 173
    iget-object v15, v11, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 174
    .line 175
    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    invoke-virtual {v11}, Lcom/fsck/k9/mailstore/LocalMessage;->destroy()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 182
    .line 183
    .line 184
    move-object/from16 v26, v2

    .line 185
    .line 186
    move-wide/from16 v22, v4

    .line 187
    .line 188
    move/from16 v27, v7

    .line 189
    .line 190
    move-object/from16 v20, v8

    .line 191
    .line 192
    move-object v15, v9

    .line 193
    move/from16 v10, v19

    .line 194
    .line 195
    const/16 v16, 0x0

    .line 196
    .line 197
    move-object/from16 v2, p1

    .line 198
    .line 199
    move-object/from16 v19, v3

    .line 200
    .line 201
    goto/16 :goto_1f

    .line 202
    .line 203
    :catchall_2
    move-exception v0

    .line 204
    move-object/from16 v8, p1

    .line 205
    .line 206
    move-object v15, v9

    .line 207
    :goto_4
    move-object/from16 v11, v18

    .line 208
    .line 209
    goto/16 :goto_34

    .line 210
    .line 211
    :catch_2
    move-exception v0

    .line 212
    move-object/from16 v8, p1

    .line 213
    .line 214
    move-object v15, v9

    .line 215
    move-object/from16 v11, v18

    .line 216
    .line 217
    goto/16 :goto_32

    .line 218
    .line 219
    :cond_3
    move-object/from16 v20, v8

    .line 220
    .line 221
    move-object v15, v9

    .line 222
    :try_start_a
    iget-wide v8, v11, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_38
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 223
    .line 224
    :try_start_b
    iget-object v0, v13, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 227
    .line 228
    new-instance v10, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_37
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    .line 229
    .line 230
    move-wide/from16 v22, v4

    .line 231
    .line 232
    const/4 v4, 0x3

    .line 233
    :try_start_c
    invoke-direct {v10, v4, v8, v9}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 234
    .line 235
    .line 236
    const/4 v5, 0x0

    .line 237
    invoke-virtual {v0, v5, v10}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    check-cast v0, Lcom/fsck/k9/mailstore/OutboxState;

    .line 245
    .line 246
    iget v10, v0, Lcom/fsck/k9/mailstore/OutboxState;->numberOfSendAttempts:I

    .line 247
    .line 248
    iget-object v5, v0, Lcom/fsck/k9/mailstore/OutboxState;->sendError:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_36
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    .line 249
    .line 250
    :try_start_d
    iget-object v0, v0, Lcom/fsck/k9/mailstore/OutboxState;->sendState:Lcom/fsck/k9/mailstore/SendState;

    .line 251
    .line 252
    sget-object v4, Lcom/fsck/k9/mailstore/SendState;->READY:Lcom/fsck/k9/mailstore/SendState;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_35
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 253
    .line 254
    move/from16 v25, v10

    .line 255
    .line 256
    const/4 v10, 0x2

    .line 257
    if-eq v0, v4, :cond_5

    .line 258
    .line 259
    :try_start_e
    const-string v4, "Skipping sending message %s (reason: %s - %s)"

    .line 260
    .line 261
    iget-object v8, v11, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v9, v0, Lcom/fsck/k9/mailstore/SendState;->databaseName:Ljava/lang/String;

    .line 264
    .line 265
    const/4 v11, 0x3

    .line 266
    new-array v11, v11, [Ljava/lang/Object;

    .line 267
    .line 268
    const/16 v21, 0x0

    .line 269
    .line 270
    aput-object v8, v11, v21

    .line 271
    .line 272
    aput-object v9, v11, v19

    .line 273
    .line 274
    aput-object v5, v11, v10

    .line 275
    .line 276
    invoke-static {v4, v11}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    sget-object v4, Lcom/fsck/k9/mailstore/SendState;->RETRIES_EXCEEDED:Lcom/fsck/k9/mailstore/SendState;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 280
    .line 281
    if-ne v0, v4, :cond_4

    .line 282
    .line 283
    :try_start_f
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 284
    .line 285
    const-string v4, "Retries exceeded"

    .line 286
    .line 287
    move/from16 v5, v19

    .line 288
    .line 289
    const/4 v8, 0x0

    .line 290
    invoke-direct {v0, v4, v5, v8}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 291
    .line 292
    .line 293
    const/4 v8, 0x0

    .line 294
    :goto_5
    move-object/from16 v18, v0

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :catchall_3
    move-exception v0

    .line 298
    :goto_6
    move-object/from16 v8, p1

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :catch_3
    move-exception v0

    .line 302
    move-object/from16 v8, p1

    .line 303
    .line 304
    move-object/from16 v26, v2

    .line 305
    .line 306
    move-object/from16 v19, v3

    .line 307
    .line 308
    move/from16 v27, v7

    .line 309
    .line 310
    const/4 v10, 0x1

    .line 311
    const/16 v16, 0x0

    .line 312
    .line 313
    :goto_7
    move-object v2, v0

    .line 314
    goto/16 :goto_2a

    .line 315
    .line 316
    :cond_4
    :try_start_10
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 317
    .line 318
    const/4 v4, 0x1

    .line 319
    const/4 v8, 0x0

    .line 320
    :try_start_11
    invoke-direct {v0, v5, v4, v8}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :goto_8
    move-object v9, v15

    .line 325
    move-object/from16 v8, v20

    .line 326
    .line 327
    move-wide/from16 v4, v22

    .line 328
    .line 329
    const/4 v10, 0x0

    .line 330
    const/4 v15, 0x1

    .line 331
    goto/16 :goto_3

    .line 332
    .line 333
    :catch_4
    move-exception v0

    .line 334
    :goto_9
    move-object/from16 v26, v2

    .line 335
    .line 336
    move-object/from16 v19, v3

    .line 337
    .line 338
    move/from16 v27, v7

    .line 339
    .line 340
    move-object/from16 v16, v8

    .line 341
    .line 342
    const/4 v10, 0x1

    .line 343
    move-object/from16 v8, p1

    .line 344
    .line 345
    goto :goto_7

    .line 346
    :catch_5
    move-exception v0

    .line 347
    const/4 v8, 0x0

    .line 348
    goto :goto_9

    .line 349
    :cond_5
    const/16 v16, 0x0

    .line 350
    .line 351
    :try_start_12
    const-string v0, "Send count for message %s is %d"

    .line 352
    .line 353
    iget-object v4, v11, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 354
    .line 355
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_32
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 359
    move-object/from16 v24, v4

    .line 360
    .line 361
    :try_start_13
    new-array v4, v10, [Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_32
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    .line 362
    .line 363
    const/16 v21, 0x0

    .line 364
    .line 365
    :try_start_14
    aput-object v24, v4, v21
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_34
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 366
    .line 367
    const/16 v19, 0x1

    .line 368
    .line 369
    :try_start_15
    aput-object v5, v4, v19
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_33
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 370
    .line 371
    :try_start_16
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v14, v0, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_32
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 379
    .line 380
    .line 381
    :try_start_17
    const-string v0, "X-K9mail-Identity"
    :try_end_17
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_17 .. :try_end_17} :catch_31
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_17 .. :try_end_17} :catch_2f
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_17 .. :try_end_17} :catch_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_22
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 382
    .line 383
    :try_start_18
    iget-object v4, v11, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 384
    .line 385
    invoke-virtual {v4, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0
    :try_end_18
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_18 .. :try_end_18} :catch_29
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_18 .. :try_end_18} :catch_28
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_18 .. :try_end_18} :catch_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_26
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 389
    :try_start_19
    array-length v0, v0

    .line 390
    if-gtz v0, :cond_6

    .line 391
    .line 392
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->DRAFT:Lnet/thunderbird/core/common/mail/Flag;
    :try_end_19
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_19 .. :try_end_19} :catch_25
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_19 .. :try_end_19} :catch_24
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_19 .. :try_end_19} :catch_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_22
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 393
    .line 394
    :try_start_1a
    iget-object v4, v11, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 395
    .line 396
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v0
    :try_end_1a
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1a .. :try_end_1a} :catch_29
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_1a .. :try_end_1a} :catch_28
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1a .. :try_end_1a} :catch_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_26
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 400
    if-eqz v0, :cond_7

    .line 401
    .line 402
    :cond_6
    move-object/from16 v26, v2

    .line 403
    .line 404
    move-object/from16 v19, v3

    .line 405
    .line 406
    move/from16 v27, v7

    .line 407
    .line 408
    const/4 v10, 0x1

    .line 409
    move-object/from16 v2, p1

    .line 410
    .line 411
    goto/16 :goto_1e

    .line 412
    .line 413
    :cond_7
    :try_start_1b
    invoke-virtual {v13, v8, v9}, Lcom/fsck/k9/mailstore/LocalStore$1;->incrementSendAttempts(J)V

    .line 414
    .line 415
    .line 416
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_SEND_IN_PROGRESS:Lnet/thunderbird/core/common/mail/Flag;
    :try_end_1b
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1b .. :try_end_1b} :catch_25
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_1b .. :try_end_1b} :catch_24
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1b .. :try_end_1b} :catch_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_22
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 417
    .line 418
    const/4 v4, 0x1

    .line 419
    :try_start_1c
    invoke-virtual {v11, v0, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 420
    .line 421
    .line 422
    const-string v5, "Sending message with UID %s"

    .line 423
    .line 424
    iget-object v10, v11, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;
    :try_end_1c
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1c .. :try_end_1c} :catch_21
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_1c .. :try_end_1c} :catch_20
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1c .. :try_end_1c} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 425
    .line 426
    move-object/from16 v26, v2

    .line 427
    .line 428
    :try_start_1d
    new-array v2, v4, [Ljava/lang/Object;
    :try_end_1d
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1d .. :try_end_1d} :catch_1d
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_1d .. :try_end_1d} :catch_1c
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1d .. :try_end_1d} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 429
    .line 430
    const/4 v4, 0x0

    .line 431
    :try_start_1e
    aput-object v10, v2, v4
    :try_end_1e
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1e .. :try_end_1e} :catch_19
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_1e .. :try_end_1e} :catch_18
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1e .. :try_end_1e} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_16
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 432
    .line 433
    :try_start_1f
    invoke-static {v5, v2}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v3, v11}, Lcom/fsck/k9/backend/api/Backend;->sendMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v11, v0, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 440
    .line 441
    .line 442
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;
    :try_end_1f
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1f .. :try_end_1f} :catch_15
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_1f .. :try_end_1f} :catch_14
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1f .. :try_end_1f} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_12
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 443
    .line 444
    const/4 v10, 0x1

    .line 445
    :try_start_20
    invoke-virtual {v11, v0, v10}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 446
    .line 447
    .line 448
    add-int/lit8 v6, v6, 0x1

    .line 449
    .line 450
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_8

    .line 459
    .line 460
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    check-cast v2, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;
    :try_end_20
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_20 .. :try_end_20} :catch_d
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_20 .. :try_end_20} :catch_c
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_20 .. :try_end_20} :catch_b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 465
    .line 466
    move-object/from16 v19, v3

    .line 467
    .line 468
    move-wide/from16 v4, v22

    .line 469
    .line 470
    move-object/from16 v3, p1

    .line 471
    .line 472
    :try_start_21
    invoke-virtual/range {v2 .. v7}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxProgress(Lnet/thunderbird/core/android/account/LegacyAccountDto;JII)V
    :try_end_21
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_21 .. :try_end_21} :catch_9
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_21 .. :try_end_21} :catch_8
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_21 .. :try_end_21} :catch_7
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 473
    .line 474
    .line 475
    move-object v2, v3

    .line 476
    move-wide/from16 v22, v4

    .line 477
    .line 478
    move/from16 v27, v7

    .line 479
    .line 480
    move-object/from16 v3, v19

    .line 481
    .line 482
    move/from16 v7, v27

    .line 483
    .line 484
    goto :goto_a

    .line 485
    :catchall_4
    move-exception v0

    .line 486
    move-object v2, v3

    .line 487
    :goto_b
    move-object v8, v2

    .line 488
    goto/16 :goto_4

    .line 489
    .line 490
    :catch_6
    move-exception v0

    .line 491
    move-object v2, v3

    .line 492
    move-wide/from16 v22, v4

    .line 493
    .line 494
    :goto_c
    move/from16 v27, v7

    .line 495
    .line 496
    :goto_d
    move-object v3, v0

    .line 497
    goto/16 :goto_20

    .line 498
    .line 499
    :catch_7
    move-exception v0

    .line 500
    move-object v2, v3

    .line 501
    move-wide/from16 v22, v4

    .line 502
    .line 503
    :goto_e
    move/from16 v27, v7

    .line 504
    .line 505
    :goto_f
    move-object v3, v0

    .line 506
    move/from16 v18, v6

    .line 507
    .line 508
    goto/16 :goto_21

    .line 509
    .line 510
    :catch_8
    move-exception v0

    .line 511
    move-object v2, v3

    .line 512
    move-wide/from16 v22, v4

    .line 513
    .line 514
    :goto_10
    move/from16 v27, v7

    .line 515
    .line 516
    :goto_11
    move-wide v4, v8

    .line 517
    move-object v8, v2

    .line 518
    :goto_12
    move-object v2, v0

    .line 519
    goto/16 :goto_26

    .line 520
    .line 521
    :catch_9
    move-exception v0

    .line 522
    move-object v2, v3

    .line 523
    move-wide/from16 v22, v4

    .line 524
    .line 525
    :goto_13
    move/from16 v27, v7

    .line 526
    .line 527
    :goto_14
    move-wide v4, v8

    .line 528
    move-object v8, v2

    .line 529
    :goto_15
    move-object v2, v0

    .line 530
    goto/16 :goto_27

    .line 531
    .line 532
    :catchall_5
    move-exception v0

    .line 533
    move-object/from16 v2, p1

    .line 534
    .line 535
    goto :goto_b

    .line 536
    :catch_a
    move-exception v0

    .line 537
    move-object/from16 v2, p1

    .line 538
    .line 539
    move-object/from16 v19, v3

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :catch_b
    move-exception v0

    .line 543
    move-object/from16 v2, p1

    .line 544
    .line 545
    move-object/from16 v19, v3

    .line 546
    .line 547
    goto :goto_e

    .line 548
    :catch_c
    move-exception v0

    .line 549
    move-object/from16 v2, p1

    .line 550
    .line 551
    move-object/from16 v19, v3

    .line 552
    .line 553
    goto :goto_10

    .line 554
    :catch_d
    move-exception v0

    .line 555
    move-object/from16 v2, p1

    .line 556
    .line 557
    move-object/from16 v19, v3

    .line 558
    .line 559
    goto :goto_13

    .line 560
    :cond_8
    move-object/from16 v2, p1

    .line 561
    .line 562
    move-object/from16 v19, v3

    .line 563
    .line 564
    move/from16 v27, v7

    .line 565
    .line 566
    :try_start_22
    invoke-virtual {v1, v2, v12, v11}, Lcom/fsck/k9/controller/MessagingController;->moveOrDeleteSentMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalStore;Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v13, v8, v9}, Lcom/fsck/k9/mailstore/LocalStore$1;->removeOutboxState(J)V

    .line 570
    .line 571
    .line 572
    move-object v8, v2

    .line 573
    goto/16 :goto_1f

    .line 574
    .line 575
    :catchall_6
    move-exception v0

    .line 576
    goto :goto_b

    .line 577
    :catch_e
    move-exception v0

    .line 578
    goto :goto_d

    .line 579
    :catch_f
    move-exception v0

    .line 580
    goto :goto_f

    .line 581
    :catch_10
    move-exception v0

    .line 582
    goto :goto_11

    .line 583
    :catch_11
    move-exception v0

    .line 584
    goto :goto_14

    .line 585
    :catch_12
    move-exception v0

    .line 586
    move-object/from16 v2, p1

    .line 587
    .line 588
    move-object/from16 v19, v3

    .line 589
    .line 590
    move/from16 v27, v7

    .line 591
    .line 592
    const/4 v10, 0x1

    .line 593
    goto :goto_d

    .line 594
    :catch_13
    move-exception v0

    .line 595
    move-object/from16 v2, p1

    .line 596
    .line 597
    move-object/from16 v19, v3

    .line 598
    .line 599
    move/from16 v27, v7

    .line 600
    .line 601
    const/4 v10, 0x1

    .line 602
    goto :goto_f

    .line 603
    :catch_14
    move-exception v0

    .line 604
    move-object/from16 v2, p1

    .line 605
    .line 606
    move-object/from16 v19, v3

    .line 607
    .line 608
    move/from16 v27, v7

    .line 609
    .line 610
    const/4 v10, 0x1

    .line 611
    goto :goto_11

    .line 612
    :catch_15
    move-exception v0

    .line 613
    move-object/from16 v2, p1

    .line 614
    .line 615
    move-object/from16 v19, v3

    .line 616
    .line 617
    move/from16 v27, v7

    .line 618
    .line 619
    const/4 v10, 0x1

    .line 620
    goto :goto_14

    .line 621
    :catch_16
    move-exception v0

    .line 622
    const/4 v10, 0x1

    .line 623
    :goto_16
    move-object/from16 v2, p1

    .line 624
    .line 625
    move-object/from16 v19, v3

    .line 626
    .line 627
    goto/16 :goto_c

    .line 628
    .line 629
    :catch_17
    move-exception v0

    .line 630
    const/4 v10, 0x1

    .line 631
    :goto_17
    move-object/from16 v2, p1

    .line 632
    .line 633
    move-object/from16 v19, v3

    .line 634
    .line 635
    goto/16 :goto_e

    .line 636
    .line 637
    :catch_18
    move-exception v0

    .line 638
    const/4 v10, 0x1

    .line 639
    :goto_18
    move-object/from16 v2, p1

    .line 640
    .line 641
    move-object/from16 v19, v3

    .line 642
    .line 643
    goto/16 :goto_10

    .line 644
    .line 645
    :catch_19
    move-exception v0

    .line 646
    const/4 v10, 0x1

    .line 647
    :goto_19
    move-object/from16 v2, p1

    .line 648
    .line 649
    move-object/from16 v19, v3

    .line 650
    .line 651
    goto :goto_13

    .line 652
    :catch_1a
    move-exception v0

    .line 653
    move v10, v4

    .line 654
    goto :goto_16

    .line 655
    :catch_1b
    move-exception v0

    .line 656
    move v10, v4

    .line 657
    goto :goto_17

    .line 658
    :catch_1c
    move-exception v0

    .line 659
    move v10, v4

    .line 660
    goto :goto_18

    .line 661
    :catch_1d
    move-exception v0

    .line 662
    move v10, v4

    .line 663
    goto :goto_19

    .line 664
    :catch_1e
    move-exception v0

    .line 665
    move-object/from16 v26, v2

    .line 666
    .line 667
    move-object/from16 v19, v3

    .line 668
    .line 669
    move v10, v4

    .line 670
    move/from16 v27, v7

    .line 671
    .line 672
    :goto_1a
    move-object/from16 v2, p1

    .line 673
    .line 674
    goto/16 :goto_d

    .line 675
    .line 676
    :catch_1f
    move-exception v0

    .line 677
    move-object/from16 v26, v2

    .line 678
    .line 679
    move-object/from16 v19, v3

    .line 680
    .line 681
    move v10, v4

    .line 682
    move/from16 v27, v7

    .line 683
    .line 684
    :goto_1b
    move-object/from16 v2, p1

    .line 685
    .line 686
    goto/16 :goto_f

    .line 687
    .line 688
    :catch_20
    move-exception v0

    .line 689
    move-object/from16 v26, v2

    .line 690
    .line 691
    move-object/from16 v19, v3

    .line 692
    .line 693
    move v10, v4

    .line 694
    move/from16 v27, v7

    .line 695
    .line 696
    :goto_1c
    move-object/from16 v2, p1

    .line 697
    .line 698
    goto/16 :goto_11

    .line 699
    .line 700
    :catch_21
    move-exception v0

    .line 701
    move-object/from16 v26, v2

    .line 702
    .line 703
    move-object/from16 v19, v3

    .line 704
    .line 705
    move v10, v4

    .line 706
    move/from16 v27, v7

    .line 707
    .line 708
    :goto_1d
    move-object/from16 v2, p1

    .line 709
    .line 710
    goto/16 :goto_14

    .line 711
    .line 712
    :catch_22
    move-exception v0

    .line 713
    move-object/from16 v26, v2

    .line 714
    .line 715
    move-object/from16 v19, v3

    .line 716
    .line 717
    move/from16 v27, v7

    .line 718
    .line 719
    const/4 v10, 0x1

    .line 720
    goto :goto_1a

    .line 721
    :catch_23
    move-exception v0

    .line 722
    move-object/from16 v26, v2

    .line 723
    .line 724
    move-object/from16 v19, v3

    .line 725
    .line 726
    move/from16 v27, v7

    .line 727
    .line 728
    const/4 v10, 0x1

    .line 729
    goto :goto_1b

    .line 730
    :catch_24
    move-exception v0

    .line 731
    move-object/from16 v26, v2

    .line 732
    .line 733
    move-object/from16 v19, v3

    .line 734
    .line 735
    move/from16 v27, v7

    .line 736
    .line 737
    const/4 v10, 0x1

    .line 738
    goto :goto_1c

    .line 739
    :catch_25
    move-exception v0

    .line 740
    move-object/from16 v26, v2

    .line 741
    .line 742
    move-object/from16 v19, v3

    .line 743
    .line 744
    move/from16 v27, v7

    .line 745
    .line 746
    const/4 v10, 0x1

    .line 747
    goto :goto_1d

    .line 748
    :catch_26
    move-exception v0

    .line 749
    move-object/from16 v26, v2

    .line 750
    .line 751
    move-object/from16 v19, v3

    .line 752
    .line 753
    move/from16 v27, v7

    .line 754
    .line 755
    const/4 v10, 0x1

    .line 756
    goto :goto_1a

    .line 757
    :catch_27
    move-exception v0

    .line 758
    move-object/from16 v26, v2

    .line 759
    .line 760
    move-object/from16 v19, v3

    .line 761
    .line 762
    move/from16 v27, v7

    .line 763
    .line 764
    const/4 v10, 0x1

    .line 765
    goto :goto_1b

    .line 766
    :catch_28
    move-exception v0

    .line 767
    move-object/from16 v26, v2

    .line 768
    .line 769
    move-object/from16 v19, v3

    .line 770
    .line 771
    move/from16 v27, v7

    .line 772
    .line 773
    const/4 v10, 0x1

    .line 774
    goto :goto_1c

    .line 775
    :catch_29
    move-exception v0

    .line 776
    move-object/from16 v26, v2

    .line 777
    .line 778
    move-object/from16 v19, v3

    .line 779
    .line 780
    move/from16 v27, v7

    .line 781
    .line 782
    const/4 v10, 0x1

    .line 783
    goto :goto_1d

    .line 784
    :goto_1e
    const-string v0, "The user has set the Outbox and Drafts folder to the same thing. This message appears to be a draft, so K-9 will not send it"

    .line 785
    .line 786
    const/4 v4, 0x0

    .line 787
    new-array v3, v4, [Ljava/lang/Object;

    .line 788
    .line 789
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_22 .. :try_end_22} :catch_11
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_22 .. :try_end_22} :catch_10
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_22 .. :try_end_22} :catch_f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    .line 790
    .line 791
    .line 792
    :goto_1f
    move-object v9, v15

    .line 793
    move-object/from16 v3, v19

    .line 794
    .line 795
    move-object/from16 v8, v20

    .line 796
    .line 797
    move-wide/from16 v4, v22

    .line 798
    .line 799
    move-object/from16 v2, v26

    .line 800
    .line 801
    move/from16 v7, v27

    .line 802
    .line 803
    move v15, v10

    .line 804
    const/4 v10, 0x0

    .line 805
    goto/16 :goto_3

    .line 806
    .line 807
    :goto_20
    :try_start_23
    invoke-virtual {v1, v2, v14, v11, v3}, Lcom/fsck/k9/controller/MessagingController;->handleSendFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;Ljava/lang/Exception;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_2a
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    .line 808
    .line 809
    .line 810
    move-object v8, v2

    .line 811
    move-object/from16 v18, v3

    .line 812
    .line 813
    goto :goto_1f

    .line 814
    :catchall_7
    move-exception v0

    .line 815
    move-object v8, v2

    .line 816
    move-object v11, v3

    .line 817
    goto/16 :goto_34

    .line 818
    .line 819
    :catch_2a
    move-exception v0

    .line 820
    move-object v8, v2

    .line 821
    goto/16 :goto_7

    .line 822
    .line 823
    :goto_21
    :try_start_24
    iget-boolean v0, v3, Lnet/thunderbird/core/common/exception/MessagingException;->isPermanentFailure:Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2e
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    .line 824
    .line 825
    if-eqz v0, :cond_a

    .line 826
    .line 827
    :try_start_25
    iget-object v0, v3, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 828
    .line 829
    invoke-virtual {v13, v8, v9, v0}, Lcom/fsck/k9/mailstore/LocalStore$1;->setSendAttemptError(JLjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_2b
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 830
    .line 831
    .line 832
    :cond_9
    move-object v8, v2

    .line 833
    move-object v9, v3

    .line 834
    goto :goto_24

    .line 835
    :catch_2b
    move-exception v0

    .line 836
    move-object v8, v2

    .line 837
    move/from16 v6, v18

    .line 838
    .line 839
    goto/16 :goto_7

    .line 840
    .line 841
    :cond_a
    add-int/lit8 v0, v25, 0x1

    .line 842
    .line 843
    const/4 v4, 0x5

    .line 844
    if-lt v0, v4, :cond_9

    .line 845
    .line 846
    :try_start_26
    iget-object v0, v13, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 847
    .line 848
    check-cast v0, Lkotlin/time/Clock;

    .line 849
    .line 850
    invoke-interface {v0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    invoke-virtual {v0}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 855
    .line 856
    .line 857
    move-result-wide v6

    .line 858
    iget-object v0, v13, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 859
    .line 860
    check-cast v0, Lcom/fsck/k9/mailstore/LockableDatabase;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_2e
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    .line 861
    .line 862
    :try_start_27
    new-instance v2, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda1;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_2c
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    .line 863
    .line 864
    move-object v4, v3

    .line 865
    const/4 v3, 0x0

    .line 866
    move-wide/from16 v28, v8

    .line 867
    .line 868
    move-object v9, v4

    .line 869
    move-wide/from16 v4, v28

    .line 870
    .line 871
    move-object/from16 v8, p1

    .line 872
    .line 873
    :try_start_28
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 874
    .line 875
    .line 876
    const/4 v4, 0x0

    .line 877
    invoke-virtual {v0, v4, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    goto :goto_24

    .line 881
    :catchall_8
    move-exception v0

    .line 882
    move-object/from16 v8, p1

    .line 883
    .line 884
    goto :goto_25

    .line 885
    :catch_2c
    move-exception v0

    .line 886
    move-object/from16 v8, p1

    .line 887
    .line 888
    goto :goto_23

    .line 889
    :catchall_9
    move-exception v0

    .line 890
    move-object v8, v2

    .line 891
    goto :goto_25

    .line 892
    :goto_22
    move-object v11, v9

    .line 893
    goto/16 :goto_34

    .line 894
    .line 895
    :goto_23
    move-object v2, v0

    .line 896
    move/from16 v6, v18

    .line 897
    .line 898
    goto/16 :goto_2a

    .line 899
    .line 900
    :goto_24
    invoke-virtual {v1, v8, v14, v11, v9}, Lcom/fsck/k9/controller/MessagingController;->handleSendFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;Ljava/lang/Exception;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_2d
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    .line 901
    .line 902
    .line 903
    move/from16 v6, v18

    .line 904
    .line 905
    move-object/from16 v18, v9

    .line 906
    .line 907
    goto :goto_1f

    .line 908
    :catchall_a
    move-exception v0

    .line 909
    goto :goto_22

    .line 910
    :catch_2d
    move-exception v0

    .line 911
    goto :goto_23

    .line 912
    :catchall_b
    move-exception v0

    .line 913
    move-object v8, v2

    .line 914
    :goto_25
    move-object v9, v3

    .line 915
    goto :goto_22

    .line 916
    :catch_2e
    move-exception v0

    .line 917
    move-object v8, v2

    .line 918
    goto :goto_23

    .line 919
    :catch_2f
    move-exception v0

    .line 920
    move-object/from16 v26, v2

    .line 921
    .line 922
    move-object/from16 v19, v3

    .line 923
    .line 924
    move/from16 v27, v7

    .line 925
    .line 926
    move-wide v4, v8

    .line 927
    const/4 v10, 0x1

    .line 928
    move-object/from16 v8, p1

    .line 929
    .line 930
    goto/16 :goto_12

    .line 931
    .line 932
    :goto_26
    :try_start_29
    iget-object v0, v13, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 933
    .line 934
    check-cast v0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 935
    .line 936
    new-instance v3, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 937
    .line 938
    const/4 v7, 0x2

    .line 939
    invoke-direct {v3, v7, v4, v5}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 940
    .line 941
    .line 942
    const/4 v4, 0x0

    .line 943
    invoke-virtual {v0, v4, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_30
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    .line 944
    .line 945
    .line 946
    :try_start_2a
    invoke-virtual {v1, v8, v2, v4}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Exception;Z)V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v1, v8, v14, v11, v2}, Lcom/fsck/k9/controller/MessagingController;->handleSendFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;Ljava/lang/Exception;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_30
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    .line 950
    .line 951
    .line 952
    goto/16 :goto_2c

    .line 953
    .line 954
    :catchall_c
    move-exception v0

    .line 955
    move-object v11, v2

    .line 956
    goto/16 :goto_34

    .line 957
    .line 958
    :catch_30
    move-exception v0

    .line 959
    goto/16 :goto_7

    .line 960
    .line 961
    :catchall_d
    move-exception v0

    .line 962
    goto/16 :goto_4

    .line 963
    .line 964
    :catch_31
    move-exception v0

    .line 965
    move-object/from16 v26, v2

    .line 966
    .line 967
    move-object/from16 v19, v3

    .line 968
    .line 969
    move/from16 v27, v7

    .line 970
    .line 971
    move-wide v4, v8

    .line 972
    const/4 v10, 0x1

    .line 973
    move-object/from16 v8, p1

    .line 974
    .line 975
    goto/16 :goto_15

    .line 976
    .line 977
    :goto_27
    :try_start_2b
    iget-object v0, v13, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 978
    .line 979
    check-cast v0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 980
    .line 981
    new-instance v3, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 982
    .line 983
    const/4 v7, 0x2

    .line 984
    invoke-direct {v3, v7, v4, v5}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 985
    .line 986
    .line 987
    const/4 v4, 0x0

    .line 988
    invoke-virtual {v0, v4, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_30
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    .line 989
    .line 990
    .line 991
    :try_start_2c
    invoke-virtual {v1, v8, v4}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v1, v8, v14, v11, v2}, Lcom/fsck/k9/controller/MessagingController;->handleSendFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;Ljava/lang/Exception;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_30
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    .line 995
    .line 996
    .line 997
    goto/16 :goto_2c

    .line 998
    .line 999
    :catch_32
    move-exception v0

    .line 1000
    move-object/from16 v8, p1

    .line 1001
    .line 1002
    move-object/from16 v26, v2

    .line 1003
    .line 1004
    move-object/from16 v19, v3

    .line 1005
    .line 1006
    move/from16 v27, v7

    .line 1007
    .line 1008
    const/4 v10, 0x1

    .line 1009
    goto/16 :goto_7

    .line 1010
    .line 1011
    :catch_33
    move-exception v0

    .line 1012
    move/from16 v10, v19

    .line 1013
    .line 1014
    move-object/from16 v8, p1

    .line 1015
    .line 1016
    move-object/from16 v26, v2

    .line 1017
    .line 1018
    move/from16 v27, v7

    .line 1019
    .line 1020
    goto :goto_29

    .line 1021
    :catch_34
    move-exception v0

    .line 1022
    const/4 v10, 0x1

    .line 1023
    move-object/from16 v8, p1

    .line 1024
    .line 1025
    move-object/from16 v26, v2

    .line 1026
    .line 1027
    move-object/from16 v19, v3

    .line 1028
    .line 1029
    move/from16 v27, v7

    .line 1030
    .line 1031
    goto/16 :goto_7

    .line 1032
    .line 1033
    :catchall_e
    move-exception v0

    .line 1034
    goto/16 :goto_6

    .line 1035
    .line 1036
    :catch_35
    move-exception v0

    .line 1037
    move-object/from16 v8, p1

    .line 1038
    .line 1039
    move-object/from16 v26, v2

    .line 1040
    .line 1041
    :goto_28
    move/from16 v27, v7

    .line 1042
    .line 1043
    move/from16 v10, v19

    .line 1044
    .line 1045
    const/16 v16, 0x0

    .line 1046
    .line 1047
    :goto_29
    move-object/from16 v19, v3

    .line 1048
    .line 1049
    goto/16 :goto_7

    .line 1050
    .line 1051
    :catch_36
    move-exception v0

    .line 1052
    move-object/from16 v8, p1

    .line 1053
    .line 1054
    move-object/from16 v26, v2

    .line 1055
    .line 1056
    goto :goto_28

    .line 1057
    :catch_37
    move-exception v0

    .line 1058
    move-object/from16 v8, p1

    .line 1059
    .line 1060
    move-object/from16 v26, v2

    .line 1061
    .line 1062
    move-wide/from16 v22, v4

    .line 1063
    .line 1064
    goto :goto_28

    .line 1065
    :catch_38
    move-exception v0

    .line 1066
    move-object/from16 v8, p1

    .line 1067
    .line 1068
    move-object/from16 v26, v2

    .line 1069
    .line 1070
    move-wide/from16 v22, v4

    .line 1071
    .line 1072
    goto :goto_28

    .line 1073
    :goto_2a
    :try_start_2d
    const-string v0, "Failed to fetch message for sending"

    .line 1074
    .line 1075
    const/4 v4, 0x0

    .line 1076
    new-array v3, v4, [Ljava/lang/Object;

    .line 1077
    .line 1078
    invoke-static {v2, v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    .line 1080
    .line 1081
    iget-wide v3, v14, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 1082
    .line 1083
    invoke-static {v2}, Lokhttp3/CacheControl$Companion;->getRootCauseMessage(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v5

    .line 1091
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1092
    .line 1093
    .line 1094
    move-result v7

    .line 1095
    if-eqz v7, :cond_b

    .line 1096
    .line 1097
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v7

    .line 1101
    check-cast v7, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 1102
    .line 1103
    invoke-virtual {v7, v8, v3, v4, v0}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxFailed(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_39
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c

    .line 1104
    .line 1105
    .line 1106
    goto :goto_2b

    .line 1107
    :cond_b
    :goto_2c
    move-object/from16 v18, v2

    .line 1108
    .line 1109
    goto/16 :goto_1f

    .line 1110
    .line 1111
    :goto_2d
    move-object v11, v2

    .line 1112
    goto :goto_32

    .line 1113
    :catch_39
    move-exception v0

    .line 1114
    goto :goto_2d

    .line 1115
    :cond_c
    move-object/from16 v8, p1

    .line 1116
    .line 1117
    move-object v15, v9

    .line 1118
    move-object/from16 v11, v18

    .line 1119
    .line 1120
    if-eqz v11, :cond_d

    .line 1121
    .line 1122
    :try_start_2e
    invoke-virtual {v15, v8, v11}, Lcom/fsck/k9/notification/NotificationController;->showSendFailedNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Exception;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_3a
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    .line 1123
    .line 1124
    .line 1125
    goto :goto_2e

    .line 1126
    :catchall_f
    move-exception v0

    .line 1127
    goto :goto_34

    .line 1128
    :catch_3a
    move-exception v0

    .line 1129
    goto :goto_32

    .line 1130
    :cond_d
    :goto_2e
    if-nez v11, :cond_e

    .line 1131
    .line 1132
    :goto_2f
    invoke-virtual {v15, v8}, Lcom/fsck/k9/notification/NotificationController;->clearSendFailedNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 1133
    .line 1134
    .line 1135
    goto :goto_33

    .line 1136
    :catchall_10
    move-exception v0

    .line 1137
    move-object/from16 v8, p1

    .line 1138
    .line 1139
    :goto_30
    move-object v15, v9

    .line 1140
    const/16 v16, 0x0

    .line 1141
    .line 1142
    move-object/from16 v11, v16

    .line 1143
    .line 1144
    goto :goto_34

    .line 1145
    :catch_3b
    move-exception v0

    .line 1146
    move-object/from16 v8, p1

    .line 1147
    .line 1148
    :goto_31
    move-object v15, v9

    .line 1149
    const/16 v16, 0x0

    .line 1150
    .line 1151
    move-object/from16 v11, v16

    .line 1152
    .line 1153
    goto :goto_32

    .line 1154
    :catchall_11
    move-exception v0

    .line 1155
    move-object v8, v3

    .line 1156
    goto :goto_30

    .line 1157
    :catch_3c
    move-exception v0

    .line 1158
    move-object v8, v3

    .line 1159
    goto :goto_31

    .line 1160
    :catchall_12
    move-exception v0

    .line 1161
    move-object v8, v3

    .line 1162
    goto :goto_30

    .line 1163
    :catch_3d
    move-exception v0

    .line 1164
    move-object v8, v3

    .line 1165
    goto :goto_31

    .line 1166
    :goto_32
    :try_start_2f
    const-string v1, "Failed to send pending messages"

    .line 1167
    .line 1168
    const/4 v4, 0x0

    .line 1169
    new-array v2, v4, [Ljava/lang/Object;

    .line 1170
    .line 1171
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    .line 1172
    .line 1173
    .line 1174
    if-nez v11, :cond_e

    .line 1175
    .line 1176
    goto :goto_2f

    .line 1177
    :cond_e
    :goto_33
    return-void

    .line 1178
    :goto_34
    if-nez v11, :cond_f

    .line 1179
    .line 1180
    invoke-virtual {v15, v8}, Lcom/fsck/k9/notification/NotificationController;->clearSendFailedNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 1181
    .line 1182
    .line 1183
    :cond_f
    throw v0
.end method

.method public final setFlag(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Lnet/thunderbird/core/common/mail/Flag;)V
    .locals 7

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-direct {v1, v0, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 117
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 118
    invoke-virtual {v1, p4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 119
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 120
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setFlag(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 8
    .line 9
    invoke-direct {v1, v0, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 13
    .line 14
    .line 15
    invoke-static {p5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 23
    .line 24
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 25
    .line 26
    invoke-direct {v3, p4, v2, p6}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Ljava/util/List;Ljava/util/Set;Z)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/fsck/k9/backend/api/Backend;->getSupportsFlags()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-boolean v0, v1, Lcom/fsck/k9/mailstore/LocalFolder;->localOnly:Z

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ge v1, v2, :cond_1

    .line 84
    .line 85
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-static {p2, p3, p6, p5, v0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->create(JZLnet/thunderbird/core/common/mail/Flag;Ljava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void

    .line 110
    :catch_0
    move-exception p0

    .line 111
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final setFlagSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;ZZ)V
    .locals 10

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 5
    .line 6
    .line 7
    move-result-object v3
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_7

    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    :try_start_1
    invoke-static {p3}, Lcom/fsck/k9/mailstore/LocalStore;->getColumnNameForFlag(Lnet/thunderbird/core/common/mail/Flag;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Landroidx/compose/runtime/Latch;

    .line 15
    .line 16
    invoke-direct {v2, v3, p2, v0, p4}, Landroidx/compose/runtime/Latch;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v2}, Lcom/fsck/k9/mailstore/LocalStore;->doBatchSetSelection(Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->removeFlagForThreadsFromCache(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;)V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    .line 25
    move-object v4, p2

    .line 26
    goto :goto_2

    .line 27
    :catch_0
    move-exception v0

    .line 28
    move-object v4, p2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :try_start_2
    new-instance v5, Landroid/content/ContentValues;
    :try_end_2
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_2 .. :try_end_2} :catch_4

    .line 31
    .line 32
    :try_start_3
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p3}, Lcom/fsck/k9/mailstore/LocalStore;->getColumnNameForFlag(Lnet/thunderbird/core/common/mail/Flag;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lcom/fsck/k9/backend/imap/ImapSync;
    :try_end_3
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 47
    .line 48
    const/16 v7, 0x1b

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    move-object v4, p2

    .line 52
    :try_start_4
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Lcom/fsck/k9/mailstore/LocalStore;->doBatchSetSelection(Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;)V
    :try_end_4
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 56
    .line 57
    .line 58
    :try_start_5
    invoke-static {p1, v4, p3}, Lcom/fsck/k9/controller/MessagingController;->removeFlagFromCache(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;)V
    :try_end_5
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_5 .. :try_end_5} :catch_1

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catch_1
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :catch_2
    move-exception v0

    .line 65
    goto :goto_0

    .line 66
    :catch_3
    move-exception v0

    .line 67
    move-object v4, p2

    .line 68
    :goto_0
    move-object p2, v0

    .line 69
    move-object v0, p2

    .line 70
    goto :goto_1

    .line 71
    :catch_4
    move-exception v0

    .line 72
    move-object v4, p2

    .line 73
    move-object p2, v0

    .line 74
    :goto_1
    const-string p2, "Couldn\'t set flags in local database"

    .line 75
    .line 76
    new-array v2, v1, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {v0, p2, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    :try_start_6
    new-instance p2, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v0, Landroidx/compose/runtime/Latch;

    .line 87
    .line 88
    invoke-direct {v0, v3, v4, p5, p2}, Landroidx/compose/runtime/Latch;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;ZLjava/util/HashMap;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v0}, Lcom/fsck/k9/mailstore/LocalStore;->doBatchSetSelection(Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;)V
    :try_end_6
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_6 .. :try_end_6} :catch_6

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 95
    .line 96
    .line 97
    move-result-object p5

    .line 98
    invoke-interface {p5}, Lcom/fsck/k9/backend/api/Backend;->getSupportsFlags()Z

    .line 99
    .line 100
    .line 101
    move-result p5

    .line 102
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    :cond_1
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Ljava/lang/Long;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v4

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/util/List;

    .line 137
    .line 138
    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_2

    .line 149
    .line 150
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    check-cast v7, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 155
    .line 156
    invoke-virtual {v7, p1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_2
    sget-object v6, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 161
    .line 162
    if-ne p3, v6, :cond_3

    .line 163
    .line 164
    if-eqz p4, :cond_3

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-eqz v7, :cond_3

    .line 175
    .line 176
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    check-cast v7, Ljava/lang/String;

    .line 181
    .line 182
    new-instance v8, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 183
    .line 184
    iget-object v9, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 185
    .line 186
    invoke-direct {v8, v4, v5, v9, v7}, Lapp/k9mail/legacy/message/controller/MessageReference;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 190
    .line 191
    invoke-virtual {v7, p1, v8}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_3
    if-eqz p5, :cond_1

    .line 196
    .line 197
    new-instance v6, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 198
    .line 199
    invoke-direct {v6, v3, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 200
    .line 201
    .line 202
    :try_start_7
    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 203
    .line 204
    .line 205
    iget-boolean v6, v6, Lcom/fsck/k9/mailstore/LocalFolder;->localOnly:Z

    .line 206
    .line 207
    if-nez v6, :cond_1

    .line 208
    .line 209
    invoke-static {v4, v5, p4, p3, v0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->create(JZLnet/thunderbird/core/common/mail/Flag;Ljava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_7
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_7 .. :try_end_7} :catch_5

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :catch_5
    move-exception v0

    .line 221
    const/4 v4, 0x2

    .line 222
    new-array v4, v4, [Ljava/lang/Object;

    .line 223
    .line 224
    aput-object p1, v4, v1

    .line 225
    .line 226
    const/4 v5, 0x1

    .line 227
    aput-object v2, v4, v5

    .line 228
    .line 229
    const-string v2, "Couldn\'t open folder. Account: %s, folder ID: %d"

    .line 230
    .line 231
    invoke-static {v0, v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_4
    return-void

    .line 236
    :catch_6
    move-exception v0

    .line 237
    move-object p0, v0

    .line 238
    const-string p1, "Couldn\'t get folder name and UID of messages"

    .line 239
    .line 240
    new-array p2, v1, [Ljava/lang/Object;

    .line 241
    .line 242
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :catch_7
    move-exception v0

    .line 247
    move-object p0, v0

    .line 248
    const-string p1, "Couldn\'t get LocalStore instance"

    .line 249
    .line 250
    new-array p2, v1, [Ljava/lang/Object;

    .line 251
    .line 252
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    return-void
.end method

.method public final showEmptyFetchingMailNotificationIfNecessary(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySync()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationController;->syncNotificationController:Lcom/fsck/k9/notification/SyncNotificationController;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/fsck/k9/notification/SyncNotificationController;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 17
    .line 18
    const v1, 0x7f1204f6

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    mul-int/lit8 v2, v2, 0x10

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x8

    .line 39
    .line 40
    iget-object v3, p0, Lcom/fsck/k9/notification/SyncNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 41
    .line 42
    sget-object v4, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MISCELLANEOUS:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 43
    .line 44
    invoke-virtual {v3, p1, v4}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-object v5, v4, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 49
    .line 50
    const v6, 0x7f0800f5

    .line 51
    .line 52
    .line 53
    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 54
    .line 55
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    iput v6, v4, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    const/4 v6, 0x2

    .line 69
    invoke-virtual {v4, v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 77
    .line 78
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/SyncNotificationController;->createFetchingMailLockScreenNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Landroid/app/Notification;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    iput-object p0, v4, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 89
    .line 90
    const-string p0, "service"

    .line 91
    .line 92
    iput-object p0, v4, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2, p0}, Lcom/fsck/k9/notification/NotificationHelper;->notify(ILandroid/app/Notification;)V

    .line 102
    .line 103
    .line 104
    :cond_0
    return-void
.end method

.method public final showFetchingMailNotificationIfNecessary(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySync()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationController;->syncNotificationController:Lcom/fsck/k9/notification/SyncNotificationController;

    .line 13
    .line 14
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-wide v1, p2, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 19
    .line 20
    iget-object p2, p2, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/fsck/k9/notification/SyncNotificationController;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    new-array v5, v4, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    aput-object v0, v5, v6

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    aput-object p2, v5, v6

    .line 37
    .line 38
    const v7, 0x7f1204f5

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const v7, 0x7f1204f6

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const v8, 0x7f1204f7

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    mul-int/lit8 v0, v0, 0x10

    .line 91
    .line 92
    add-int/lit8 v0, v0, 0x8

    .line 93
    .line 94
    iget-object v3, p0, Lcom/fsck/k9/notification/SyncNotificationController;->actionBuilder:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 95
    .line 96
    invoke-virtual {v3, p1, v1, v2}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createViewFolderPendingIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Landroid/app/PendingIntent;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/fsck/k9/notification/SyncNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 101
    .line 102
    sget-object v3, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MISCELLANEOUS:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 103
    .line 104
    invoke-virtual {v2, p1, v3}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget-object v8, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 109
    .line 110
    const v9, 0x7f0800f5

    .line 111
    .line 112
    .line 113
    iput v9, v8, Landroid/app/Notification;->icon:I

    .line 114
    .line 115
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    iput v9, v3, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 120
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v9

    .line 125
    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 126
    .line 127
    invoke-virtual {v3, v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 138
    .line 139
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    iput-object p2, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 144
    .line 145
    iput-object v1, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/SyncNotificationController;->createFetchingMailLockScreenNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Landroid/app/Notification;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    iput-object p0, v3, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 152
    .line 153
    const-string p0, "service"

    .line 154
    .line 155
    iput-object p0, v3, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v0, p0}, Lcom/fsck/k9/notification/NotificationHelper;->notify(ILandroid/app/Notification;)V

    .line 165
    .line 166
    .line 167
    :cond_0
    return-void
.end method

.method public final synchronizeFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;ZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/helper/MutableBoolean;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "sync"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p2, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;

    .line 18
    .line 19
    move-object v2, p0

    .line 20
    move-object v3, p1

    .line 21
    move-object v4, p2

    .line 22
    move v5, p3

    .line 23
    move v6, p4

    .line 24
    move-object v7, p5

    .line 25
    move-object v8, p6

    .line 26
    invoke-direct/range {v1 .. v8}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;ZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/helper/MutableBoolean;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final synchronizeMailboxSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/helper/MutableBoolean;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-wide/from16 v6, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->refreshFolderListIfStale(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 11
    .line 12
    .line 13
    move-result-object v8

    .line 14
    const-string v9, "MessagingException"

    .line 15
    .line 16
    iget-object v10, v1, Lcom/fsck/k9/controller/MessagingController;->syncDebugLogger:Lnet/thunderbird/core/logging/Logger;

    .line 17
    .line 18
    const/4 v11, 0x1

    .line 19
    invoke-static {v2, v11}, Lcom/fsck/k9/controller/MessagingController;->isAuthenticationProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v12, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-array v3, v11, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v0, v3, v12

    .line 33
    .line 34
    const-string v0, "Authentication will fail. Skip synchronizing folder %d."

    .line 35
    .line 36
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v11}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const/4 v13, 0x0

    .line 44
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommandsSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    move-object v14, v13

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v3, "Failure processing command, but allow message sync attempt"

    .line 51
    .line 52
    new-array v4, v12, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {v0, v3, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v14, v0

    .line 58
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 65
    .line 66
    invoke-direct {v3, v0, v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    iget-boolean v0, v3, Lcom/fsck/k9/mailstore/LocalFolder;->localOnly:Z

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_1
    iget-object v15, v1, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 79
    .line 80
    if-eqz p4, :cond_3

    .line 81
    .line 82
    invoke-virtual {v15, v2}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v4, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 87
    .line 88
    invoke-direct {v4, v11}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 96
    .line 97
    invoke-virtual {v0, v6, v7, v4}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolder(JLapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Long;

    .line 102
    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    move v0, v11

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move v0, v12

    .line 108
    :goto_1
    move v4, v0

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    move v4, v11

    .line 111
    :goto_2
    iget-object v0, v3, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->createSyncConfig(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/SyncConfig;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    move-object v5, v0

    .line 118
    new-instance v0, Landroidx/room/RoomConnectionManager;

    .line 119
    .line 120
    move/from16 v17, v11

    .line 121
    .line 122
    move/from16 v16, v12

    .line 123
    .line 124
    move-object v11, v3

    .line 125
    move-object v12, v5

    .line 126
    move-object/from16 v3, p5

    .line 127
    .line 128
    move-object/from16 v5, p6

    .line 129
    .line 130
    invoke-direct/range {v0 .. v5}, Landroidx/room/RoomConnectionManager;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;ZLcom/fsck/k9/helper/MutableBoolean;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v8, v12, v11, v0}, Lcom/fsck/k9/backend/api/Backend;->sync(Ljava/lang/String;Lcom/fsck/k9/backend/api/SyncConfig;Landroidx/room/RoomConnectionManager;)V

    .line 134
    .line 135
    .line 136
    if-eqz v14, :cond_4

    .line 137
    .line 138
    iget-boolean v0, v0, Landroidx/room/RoomConnectionManager;->isInitializing:Z

    .line 139
    .line 140
    if-nez v0, :cond_4

    .line 141
    .line 142
    invoke-static {v14}, Lokhttp3/CacheControl$Companion;->getRootCauseMessage(Ljava/lang/Exception;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v1, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    const/4 v3, 0x3

    .line 149
    invoke-direct {v1, v0, v3}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v10, v9, v13, v1}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 153
    .line 154
    .line 155
    new-array v1, v3, [Ljava/lang/Object;

    .line 156
    .line 157
    aput-object v2, v1, v16

    .line 158
    .line 159
    aput-object v12, v1, v17

    .line 160
    .line 161
    const/4 v3, 0x2

    .line 162
    aput-object v0, v1, v3

    .line 163
    .line 164
    const-string v3, "Root cause failure in %s:%s was \'%s\'"

    .line 165
    .line 166
    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v15, v2}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1, v6, v7, v0}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setStatus(JLjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v3, p5

    .line 177
    .line 178
    invoke-virtual {v3, v2, v6, v7, v0}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxFailed(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :catch_1
    move-exception v0

    .line 183
    move/from16 v17, v11

    .line 184
    .line 185
    move/from16 v16, v12

    .line 186
    .line 187
    new-instance v1, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 188
    .line 189
    const/16 v2, 0xa

    .line 190
    .line 191
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v10, v9, v13, v1}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    move/from16 v2, v17

    .line 202
    .line 203
    new-array v2, v2, [Ljava/lang/Object;

    .line 204
    .line 205
    aput-object v1, v2, v16

    .line 206
    .line 207
    const-string v1, "syncFolder: Couldn\'t load local folder %d"

    .line 208
    .line 209
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :cond_4
    :goto_3
    return-void
.end method
