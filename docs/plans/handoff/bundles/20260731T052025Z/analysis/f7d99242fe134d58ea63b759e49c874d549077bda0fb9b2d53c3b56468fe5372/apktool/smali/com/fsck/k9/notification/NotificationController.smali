.class public final Lcom/fsck/k9/notification/NotificationController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authenticationErrorNotificationController:Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;

.field public final certificateErrorNotificationController:Lcom/fsck/k9/notification/CertificateErrorNotificationController;

.field public final newMailNotificationController:Lcom/fsck/k9/notification/NewMailNotificationController;

.field public final sendFailedNotificationController:Lcom/fsck/k9/notification/SendFailedNotificationController;

.field public final syncNotificationController:Lcom/fsck/k9/notification/SyncNotificationController;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/CertificateErrorNotificationController;Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;Lcom/fsck/k9/notification/SyncNotificationController;Lcom/fsck/k9/notification/SendFailedNotificationController;Lcom/fsck/k9/notification/NewMailNotificationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationController;->certificateErrorNotificationController:Lcom/fsck/k9/notification/CertificateErrorNotificationController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/NotificationController;->authenticationErrorNotificationController:Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/notification/NotificationController;->syncNotificationController:Lcom/fsck/k9/notification/SyncNotificationController;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/notification/NotificationController;->sendFailedNotificationController:Lcom/fsck/k9/notification/SendFailedNotificationController;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/notification/NotificationController;->newMailNotificationController:Lcom/fsck/k9/notification/NewMailNotificationController;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final clearNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Removing all notifications for account %s"

    .line 5
    .line 6
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v1, v2, v3

    .line 13
    .line 14
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationController;->newMailNotificationController:Lcom/fsck/k9/notification/NewMailNotificationController;

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationController;->newMailNotificationManager:Lcom/fsck/k9/notification/NewMailNotificationManager;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/NewMailNotificationManager;->clearNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p1
.end method

.method public final clearSendFailedNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    mul-int/lit8 p1, p1, 0x10

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x3

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationController;->sendFailedNotificationController:Lcom/fsck/k9/notification/SendFailedNotificationController;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/notification/SendFailedNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final removeNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p2, v1, v2

    .line 12
    .line 13
    const-string v2, "Removing notification for message %s"

    .line 14
    .line 15
    invoke-static {v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v2, 0x7

    .line 21
    invoke-direct {v1, v2, p2}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationController;->newMailNotificationController:Lcom/fsck/k9/notification/NewMailNotificationController;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, v1}, Lcom/fsck/k9/notification/NewMailNotificationController;->removeNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final restoreNewMailNotifications(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationController;->newMailNotificationController:Lcom/fsck/k9/notification/NewMailNotificationController;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/fsck/k9/notification/NewMailNotificationController;->newMailNotificationManager:Lcom/fsck/k9/notification/NewMailNotificationManager;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/fsck/k9/notification/NewMailNotificationManager;->restoreNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/notification/NewMailNotificationData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/fsck/k9/notification/NewMailNotificationController;->processNewMailNotificationData(Lcom/fsck/k9/notification/NewMailNotificationData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public final showSendFailedNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Exception;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/fsck/k9/notification/NotificationController;->sendFailedNotificationController:Lcom/fsck/k9/notification/SendFailedNotificationController;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/fsck/k9/notification/SendFailedNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 11
    .line 12
    iget-object v3, v1, Lcom/fsck/k9/notification/SendFailedNotificationController;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 15
    .line 16
    const v4, 0x7f12058a

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static/range {p2 .. p2}, Lokhttp3/CacheControl$Companion;->getRootCauseMessage(Ljava/lang/Exception;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    const-string v6, ""

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/16 v8, 0x10

    .line 39
    .line 40
    mul-int/2addr v7, v8

    .line 41
    add-int/lit8 v7, v7, 0x3

    .line 42
    .line 43
    iget-object v9, v1, Lcom/fsck/k9/notification/SendFailedNotificationController;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 44
    .line 45
    iget-object v10, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 46
    .line 47
    invoke-static {v9, v10}, Lkotlinx/io/Sink$-CC;->getOutboxFolderIdSync$default(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v9

    .line 51
    const-wide/16 v11, -0x1

    .line 52
    .line 53
    cmp-long v11, v9, v11

    .line 54
    .line 55
    iget-object v12, v1, Lcom/fsck/k9/notification/SendFailedNotificationController;->actionBuilder:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 56
    .line 57
    iget-object v13, v12, Lcom/fsck/k9/notification/K9NotificationActionCreator;->context:Landroid/content/Context;

    .line 58
    .line 59
    const/4 v14, 0x1

    .line 60
    if-eqz v11, :cond_1

    .line 61
    .line 62
    invoke-virtual {v12, v0, v9, v10}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createViewFolderPendingIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Landroid/app/PendingIntent;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v9, v12, Lcom/fsck/k9/notification/K9NotificationActionCreator;->defaultFolderProvider:Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 68
    .line 69
    invoke-virtual {v9, v0}, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;->getDefaultFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v9

    .line 73
    new-instance v11, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 74
    .line 75
    invoke-direct {v11}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11, v9, v10}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 79
    .line 80
    .line 81
    iget-object v12, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v11, v12}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v15, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 87
    .line 88
    const/4 v15, 0x0

    .line 89
    invoke-static {v13, v11, v15, v14}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->intentDisplaySearch(Landroid/content/Context;Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZZ)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v8, "data:,messageList/"

    .line 96
    .line 97
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v8, "/"

    .line 104
    .line 105
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    const/high16 v4, 0x8000000

    .line 123
    .line 124
    invoke-static {v13, v15, v11, v4, v15}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    :goto_0
    sget-object v4, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MISCELLANEOUS:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 132
    .line 133
    invoke-virtual {v2, v0, v4}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    iget-object v10, v8, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 138
    .line 139
    const v11, 0x7f080122

    .line 140
    .line 141
    .line 142
    iput v11, v10, Landroid/app/Notification;->icon:I

    .line 143
    .line 144
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    iput v12, v8, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 149
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 151
    .line 152
    .line 153
    move-result-wide v12

    .line 154
    iput-wide v12, v10, Landroid/app/Notification;->when:J

    .line 155
    .line 156
    const/16 v10, 0x10

    .line 157
    .line 158
    invoke-virtual {v8, v10, v14}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iput-object v5, v8, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 169
    .line 170
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    iput-object v5, v8, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 175
    .line 176
    iput-object v9, v8, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 177
    .line 178
    new-instance v5, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 179
    .line 180
    invoke-direct {v5, v14}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 181
    .line 182
    .line 183
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    iput-object v6, v5, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 188
    .line 189
    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/work/WorkRequest$Builder;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v0, v4}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    iget-object v5, v4, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 197
    .line 198
    iput v11, v5, Landroid/app/Notification;->icon:I

    .line 199
    .line 200
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iput v0, v4, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 205
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    iput-wide v9, v5, Landroid/app/Notification;->when:J

    .line 211
    .line 212
    const v0, 0x7f12058a

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iput-object v0, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 227
    .line 228
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    iput-object v0, v8, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 236
    .line 237
    const-string v0, "err"

    .line 238
    .line 239
    iput-object v0, v8, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 240
    .line 241
    iget-object v0, v1, Lcom/fsck/k9/notification/SendFailedNotificationController;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 242
    .line 243
    invoke-static {v8, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->setErrorAppearance(Landroidx/core/app/NotificationCompat$Builder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v7, v0}, Lcom/fsck/k9/notification/NotificationHelper;->notify(ILandroid/app/Notification;)V

    .line 254
    .line 255
    .line 256
    return-void
.end method
