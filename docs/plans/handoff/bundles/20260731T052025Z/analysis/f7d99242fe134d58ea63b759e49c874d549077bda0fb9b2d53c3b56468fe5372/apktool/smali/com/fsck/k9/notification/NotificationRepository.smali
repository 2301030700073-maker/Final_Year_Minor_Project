.class public final Lcom/fsck/k9/notification/NotificationRepository;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

.field public final messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

.field public final notificationContentCreator:Lcom/fsck/k9/notification/NotificationContentCreator;

.field public final notificationDataStore:Landroidx/work/Data$Builder;

.field public final notificationStoreProvider:Lcom/fsck/k9/storage/notifications/K9NotificationStoreProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/storage/notifications/K9NotificationStoreProvider;Lcom/fsck/k9/mailstore/LocalStoreProvider;Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lcom/fsck/k9/notification/NotificationContentCreator;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationRepository;->notificationStoreProvider:Lcom/fsck/k9/storage/notifications/K9NotificationStoreProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/NotificationRepository;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/notification/NotificationRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/notification/NotificationRepository;->notificationContentCreator:Lcom/fsck/k9/notification/NotificationContentCreator;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/notification/NotificationRepository;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 13
    .line 14
    new-instance p1, Landroidx/work/Data$Builder;

    .line 15
    .line 16
    const/16 p2, 0x8

    .line 17
    .line 18
    invoke-direct {p1, p2}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationRepository;->notificationDataStore:Landroidx/work/Data$Builder;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final persistNotificationDataStoreChanges(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationRepository;->notificationStoreProvider:Lcom/fsck/k9/storage/notifications/K9NotificationStoreProvider;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/fsck/k9/storage/notifications/K9NotificationStoreProvider;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v2, p2, v1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/mikepenz/fastadapter/VerboseLogger;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    if-eqz p3, :cond_2

    .line 35
    .line 36
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/fsck/k9/notification/NotificationStoreOperation;

    .line 57
    .line 58
    instance-of p3, p2, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;

    .line 59
    .line 60
    if-eqz p3, :cond_1

    .line 61
    .line 62
    check-cast p2, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;

    .line 63
    .line 64
    iget-object p2, p2, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 65
    .line 66
    iget-wide v2, p2, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 67
    .line 68
    iget-object p2, p2, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, v2, v3, p2, v1}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setNewMessageState(JLjava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    instance-of p3, p2, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;

    .line 75
    .line 76
    if-eqz p3, :cond_0

    .line 77
    .line 78
    check-cast p2, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;

    .line 79
    .line 80
    iget-object p2, p2, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 81
    .line 82
    iget-wide v2, p2, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 83
    .line 84
    iget-object p2, p2, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 85
    .line 86
    const/4 p3, 0x0

    .line 87
    invoke-virtual {p0, v2, v3, p2, p3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setNewMessageState(JLjava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    return-void
.end method

.method public final declared-synchronized restoreNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/notification/NotificationData;
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationRepository;->notificationDataStore:Landroidx/work/Data$Builder;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/work/Data$Builder;->isAccountInitialized(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationRepository;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 23
    .line 24
    new-instance v3, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/16 v4, 0x19

    .line 27
    .line 28
    invoke-direct {v3, v4, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {v2, v0, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    move-object v5, v4

    .line 66
    check-cast v5, Lcom/fsck/k9/mailstore/NotificationMessage;

    .line 67
    .line 68
    iget-object v5, v5, Lcom/fsck/k9/mailstore/NotificationMessage;->notificationId:Ljava/lang/Integer;

    .line 69
    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    const/16 v4, 0xa

    .line 86
    .line 87
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_3

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Lcom/fsck/k9/mailstore/NotificationMessage;

    .line 109
    .line 110
    iget-object v6, p0, Lcom/fsck/k9/notification/NotificationRepository;->notificationContentCreator:Lcom/fsck/k9/notification/NotificationContentCreator;

    .line 111
    .line 112
    iget-object v7, v5, Lcom/fsck/k9/mailstore/NotificationMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 113
    .line 114
    invoke-virtual {v6, p1, v7}, Lcom/fsck/k9/notification/NotificationContentCreator;->createFromMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/notification/NotificationContent;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    new-instance v7, Lcom/fsck/k9/notification/NotificationHolder;

    .line 119
    .line 120
    iget-object v8, v5, Lcom/fsck/k9/mailstore/NotificationMessage;->notificationId:Ljava/lang/Integer;

    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    iget-wide v9, v5, Lcom/fsck/k9/mailstore/NotificationMessage;->timestamp:J

    .line 130
    .line 131
    invoke-direct {v7, v8, v9, v10, v6}, Lcom/fsck/k9/notification/NotificationHolder;-><init>(IJLcom/fsck/k9/notification/NotificationContent;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_4

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lcom/fsck/k9/mailstore/NotificationMessage;

    .line 162
    .line 163
    iget-object v5, p0, Lcom/fsck/k9/notification/NotificationRepository;->notificationContentCreator:Lcom/fsck/k9/notification/NotificationContentCreator;

    .line 164
    .line 165
    iget-object v6, v4, Lcom/fsck/k9/mailstore/NotificationMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 166
    .line 167
    invoke-virtual {v5, p1, v6}, Lcom/fsck/k9/notification/NotificationContentCreator;->createFromMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/notification/NotificationContent;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    new-instance v6, Lcom/fsck/k9/notification/InactiveNotificationHolder;

    .line 172
    .line 173
    iget-wide v7, v4, Lcom/fsck/k9/mailstore/NotificationMessage;->timestamp:J

    .line 174
    .line 175
    invoke-direct {v6, v7, v8, v5}, Lcom/fsck/k9/notification/InactiveNotificationHolder;-><init>(JLcom/fsck/k9/notification/NotificationContent;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    iget-object v3, p0, Lcom/fsck/k9/notification/NotificationRepository;->notificationDataStore:Landroidx/work/Data$Builder;

    .line 183
    .line 184
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationRepository;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 185
    .line 186
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    iget-object v4, v4, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 193
    .line 194
    iget-object v4, v4, Lnet/thunderbird/core/preference/notification/NotificationPreference;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 195
    .line 196
    invoke-virtual {v3, p1, v0, v2, v4}, Landroidx/work/Data$Builder;->initializeAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)Lcom/fsck/k9/notification/NotificationData;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iget-object v0, p1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    if-nez v0, :cond_5

    .line 207
    .line 208
    move-object v1, p1

    .line 209
    :cond_5
    monitor-exit p0

    .line 210
    return-object v1

    .line 211
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    throw p1
.end method
