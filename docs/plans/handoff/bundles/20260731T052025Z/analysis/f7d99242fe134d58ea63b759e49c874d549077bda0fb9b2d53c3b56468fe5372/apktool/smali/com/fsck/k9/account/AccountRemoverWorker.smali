.class public final Lcom/fsck/k9/account/AccountRemoverWorker;
.super Landroidx/work/Worker;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountRemover:Lcom/fsck/k9/account/AccountRemover;

.field public final notificationController:Lcom/fsck/k9/notification/BackgroundWorkNotificationController;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/account/AccountRemover;Lcom/fsck/k9/notification/BackgroundWorkNotificationController;Landroid/content/Context;Landroidx/work/WorkerParameters;)V
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
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3, p4}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/account/AccountRemoverWorker;->accountRemover:Lcom/fsck/k9/account/AccountRemover;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/fsck/k9/account/AccountRemoverWorker;->notificationController:Lcom/fsck/k9/notification/BackgroundWorkNotificationController;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 4
    .line 5
    const-string v1, "accountUuid"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/account/AccountRemoverWorker;->accountRemover:Lcom/fsck/k9/account/AccountRemover;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/fsck/k9/account/AccountRemover;->preferences:Lcom/fsck/k9/Preferences;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const-string p0, "Can\'t remove account with UUID %s because it doesn\'t exist."

    .line 30
    .line 31
    new-array v1, v3, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object v0, v1, v4

    .line 34
    .line 35
    invoke-static {p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v5, "Removing account \'%s\'\u2026"

    .line 45
    .line 46
    new-array v6, v3, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v0, v6, v4

    .line 49
    .line 50
    invoke-static {v5, v6}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v5, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v6, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 56
    .line 57
    const/4 v7, 0x3

    .line 58
    invoke-direct {v6, p0, v5, v1, v7}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v6}, Lkotlinx/coroutines/JobKt;->runBlockingK$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/fsck/k9/account/AccountRemover;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 65
    .line 66
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/LocalStore;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v5

    .line 75
    const-string v6, "Error removing message database for account \'%s\'"

    .line 76
    .line 77
    new-array v7, v3, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object v2, v7, v4

    .line 80
    .line 81
    invoke-static {v5, v6, v7}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    iget-object v5, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStoreProvider;->localStores:Lj$/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    invoke-virtual {v1, v5}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/fsck/k9/account/AccountRemover;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 95
    .line 96
    iget-object v5, v1, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 97
    .line 98
    invoke-virtual {v5, v2, v4}, Lcom/fsck/k9/notification/NotificationController;->clearNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 99
    .line 100
    .line 101
    iget-object v5, v1, Lcom/fsck/k9/controller/MessagingController;->memorizingMessagingListener:Lcom/fsck/k9/activity/MessageCompose$12;

    .line 102
    .line 103
    monitor-enter v5

    .line 104
    :try_start_1
    iget-object v1, v5, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_2

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Ljava/util/Map$Entry;

    .line 127
    .line 128
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    check-cast v6, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .line 133
    .line 134
    iget-object v6, v6, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 135
    .line 136
    iget-object v6, v6, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v7, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_1

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catchall_0
    move-exception p0

    .line 151
    goto :goto_4

    .line 152
    :cond_2
    monitor-exit v5

    .line 153
    invoke-virtual {p0, v2}, Lcom/fsck/k9/account/AccountRemover;->removeBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lcom/fsck/k9/account/AccountRemover;->preferences:Lcom/fsck/k9/Preferences;

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Lcom/fsck/k9/Preferences;->deleteAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 159
    .line 160
    .line 161
    :try_start_2
    iget-object v1, p0, Lcom/fsck/k9/account/AccountRemover;->localKeyStoreManager:Lcom/fsck/k9/LocalKeyStoreManager;

    .line 162
    .line 163
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    iget-object v1, v1, Lcom/fsck/k9/LocalKeyStoreManager;->localKeyStore:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 168
    .line 169
    iget-object v6, v5, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 170
    .line 171
    iget v5, v5, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 172
    .line 173
    invoke-virtual {v1, v6, v5}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->deleteCertificate(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOutgoingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    iget-object v6, v5, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 181
    .line 182
    iget v5, v5, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 183
    .line 184
    invoke-virtual {v1, v6, v5}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->deleteCertificate(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :catch_1
    move-exception v1

    .line 189
    const-string v5, "Failed to remove certificates for account %s"

    .line 190
    .line 191
    new-array v6, v3, [Ljava/lang/Object;

    .line 192
    .line 193
    aput-object v2, v6, v4

    .line 194
    .line 195
    invoke-static {v1, v5, v6}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :goto_2
    sget-object v1, Lcom/fsck/k9/Core;->context$delegate:Lkotlin/Lazy;

    .line 199
    .line 200
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Landroid/content/Context;

    .line 205
    .line 206
    invoke-static {v1}, Lcom/fsck/k9/Core;->setServicesEnabled(Landroid/content/Context;)V

    .line 207
    .line 208
    .line 209
    iget-object p0, p0, Lcom/fsck/k9/account/AccountRemover;->unifiedInboxConfigurator:Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;->configureUnifiedInbox()V

    .line 212
    .line 213
    .line 214
    const-string p0, "Finished removing account \'%s\'."

    .line 215
    .line 216
    new-array v1, v3, [Ljava/lang/Object;

    .line 217
    .line 218
    aput-object v0, v1, v4

    .line 219
    .line 220
    invoke-static {p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :goto_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    return-object p0

    .line 228
    :goto_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    throw p0

    .line 230
    :cond_3
    const-string p0, "No account UUID provided"

    .line 231
    .line 232
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-object v1
.end method

.method public final getForegroundInfo()Landroidx/work/ForegroundInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f1201e5

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/account/AccountRemoverWorker;->notificationController:Lcom/fsck/k9/notification/BackgroundWorkNotificationController;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast p0, Lcom/fsck/k9/notification/RealBackgroundWorkNotificationController;

    .line 19
    .line 20
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/fsck/k9/notification/RealBackgroundWorkNotificationController;->context:Landroid/content/Context;

    .line 23
    .line 24
    const-string v2, "misc"

    .line 25
    .line 26
    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const p0, 0x7f0800c4

    .line 30
    .line 31
    .line 32
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 33
    .line 34
    iput p0, v2, Landroid/app/Notification;->icon:I

    .line 35
    .line 36
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iput-object p0, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 41
    .line 42
    const/4 p0, 0x2

    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {v1, p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 45
    .line 46
    .line 47
    iput-boolean v0, v1, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    .line 48
    .line 49
    const/4 v2, -0x2

    .line 50
    iput v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 51
    .line 52
    iput-boolean v0, v1, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-boolean v0, v1, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 56
    .line 57
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v2, Landroidx/work/ForegroundInfo;

    .line 65
    .line 66
    invoke-direct {v2, p0, v1, v0}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    .line 67
    .line 68
    .line 69
    return-object v2
.end method
