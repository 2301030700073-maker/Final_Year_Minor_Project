.class public final Lcom/fsck/k9/notification/NewMailNotificationManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final clock:Lkotlin/time/Clock;

.field public final contentCreator:Lcom/fsck/k9/notification/NotificationContentCreator;

.field public final notificationRepository:Lcom/fsck/k9/notification/NotificationRepository;

.field public final singleMessageNotificationDataCreator:Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;

.field public final summaryNotificationDataCreator:Lcom/fsck/k9/notification/SummaryNotificationDataCreator;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationContentCreator;Lcom/fsck/k9/notification/NotificationRepository;Lcom/fsck/k9/notification/BaseNotificationDataCreator;Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;Lcom/fsck/k9/notification/SummaryNotificationDataCreator;Lkotlin/time/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->contentCreator:Lcom/fsck/k9/notification/NotificationContentCreator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->notificationRepository:Lcom/fsck/k9/notification/NotificationRepository;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->singleMessageNotificationDataCreator:Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->summaryNotificationDataCreator:Lcom/fsck/k9/notification/SummaryNotificationDataCreator;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->clock:Lkotlin/time/Clock;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final addNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalMessage;Z)Lcom/fsck/k9/notification/NewMailNotificationData;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->contentCreator:Lcom/fsck/k9/notification/NotificationContentCreator;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/notification/NotificationContentCreator;->createFromMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/notification/NotificationContent;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v1, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->notificationRepository:Lcom/fsck/k9/notification/NotificationRepository;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->clock:Lkotlin/time/Clock;

    .line 13
    .line 14
    invoke-interface {v0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/fsck/k9/notification/NotificationRepository;->restoreNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/notification/NotificationData;

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/fsck/k9/notification/NotificationRepository;->notificationDataStore:Landroidx/work/Data$Builder;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, v2, v3}, Landroidx/work/Data$Builder;->addNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationContent;J)Landroidx/compose/runtime/Latch;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 v0, 0x1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    iget-object v3, p2, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v1, p1, v3, v0}, Lcom/fsck/k9/notification/NotificationRepository;->persistNotificationDataStoreChanges(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    move-object p0, v0

    .line 46
    goto :goto_4

    .line 47
    :cond_0
    move-object p2, v2

    .line 48
    :goto_0
    monitor-exit v1

    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_1
    iget-object v1, p2, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lcom/fsck/k9/notification/NotificationHolder;

    .line 55
    .line 56
    iget v5, v1, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 57
    .line 58
    iget-object v6, v1, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 59
    .line 60
    iget-wide v7, v1, Lcom/fsck/k9/notification/NotificationHolder;->timestamp:J

    .line 61
    .line 62
    iget-object v1, p2, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Lcom/fsck/k9/notification/NotificationData;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ne v1, v0, :cond_2

    .line 73
    .line 74
    :goto_1
    move-object v3, p0

    .line 75
    move-object v4, p1

    .line 76
    move v9, v0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const/4 v0, 0x0

    .line 79
    goto :goto_1

    .line 80
    :goto_2
    invoke-virtual/range {v3 .. v9}, Lcom/fsck/k9/notification/NewMailNotificationManager;->createSingleNotificationData(Lnet/thunderbird/core/android/account/LegacyAccountDto;ILcom/fsck/k9/notification/NotificationContent;JZ)Lcom/fsck/k9/notification/SingleNotificationData;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    new-instance p1, Lcom/fsck/k9/notification/NewMailNotificationData;

    .line 85
    .line 86
    iget-boolean v0, p2, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p2, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lcom/fsck/k9/notification/NotificationHolder;

    .line 95
    .line 96
    iget v0, v0, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_3

    .line 107
    :cond_3
    const-string p0, "shouldCancelNotification == false"

    .line 108
    .line 109
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :cond_4
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 114
    .line 115
    :goto_3
    iget-object v1, p2, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v1, Lcom/fsck/k9/notification/NotificationData;

    .line 118
    .line 119
    invoke-virtual {v3, v1}, Lcom/fsck/k9/notification/NewMailNotificationManager;->createBaseNotificationData(Lcom/fsck/k9/notification/NotificationData;)Lcom/fsck/k9/notification/BaseNotificationData;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    iget-object p2, p2, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p2, Lcom/fsck/k9/notification/NotificationData;

    .line 130
    .line 131
    invoke-virtual {v3, p2, p3}, Lcom/fsck/k9/notification/NewMailNotificationManager;->createSummaryNotificationData(Lcom/fsck/k9/notification/NotificationData;Z)Lcom/fsck/k9/notification/SummaryNotificationData;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/fsck/k9/notification/NewMailNotificationData;-><init>(Ljava/util/List;Lcom/fsck/k9/notification/BaseNotificationData;Ljava/util/List;Lcom/fsck/k9/notification/SummaryNotificationData;)V

    .line 136
    .line 137
    .line 138
    return-object p1

    .line 139
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw p0
.end method

.method public final clearNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Ljava/util/ArrayList;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->notificationRepository:Lcom/fsck/k9/notification/NotificationRepository;

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationRepository;->notificationDataStore:Landroidx/work/Data$Builder;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/work/Data$Builder;->clearNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationRepository;->notificationStoreProvider:Lcom/fsck/k9/storage/notifications/K9NotificationStoreProvider;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/fsck/k9/storage/notifications/K9NotificationStoreProvider;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 26
    .line 27
    const/16 v2, 0xd

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    iget-object p2, p0, Lcom/fsck/k9/notification/NotificationRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->clearNewMessageState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :cond_0
    monitor-exit p0

    .line 48
    const/16 p0, 0x9

    .line 49
    .line 50
    invoke-static {v2, p0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    const/16 v1, 0xa

    .line 57
    .line 58
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :goto_0
    move-object v2, p2

    .line 70
    check-cast v2, Lkotlin/ranges/IntProgressionIterator;

    .line 71
    .line 72
    iget-boolean v2, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    move-object v2, p2

    .line 77
    check-cast v2, Lkotlin/collections/IntIterator;

    .line 78
    .line 79
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    mul-int/lit8 v3, v3, 0x10

    .line 88
    .line 89
    add-int/2addr v3, v1

    .line 90
    add-int/2addr v3, v2

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    mul-int/lit8 p1, p1, 0x10

    .line 108
    .line 109
    add-int/2addr p1, p0

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p2, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw p1
.end method

.method public final createBaseNotificationData(Lcom/fsck/k9/notification/NotificationData;)Lcom/fsck/k9/notification/BaseNotificationData;
    .locals 9

    .line 1
    iget-object v1, p1, Lcom/fsck/k9/notification/NotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const-string v0, "newMailNotifications-"

    .line 11
    .line 12
    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object p0, p1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v5, p1, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    add-int/2addr v5, v0

    .line 37
    iget-object p1, p1, Lcom/fsck/k9/notification/NotificationData;->lockScreenNotificationVisibility:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    const/4 v7, 0x2

    .line 48
    if-eq p1, v6, :cond_3

    .line 49
    .line 50
    if-eq p1, v7, :cond_2

    .line 51
    .line 52
    const/4 p0, 0x3

    .line 53
    if-eq p1, p0, :cond_1

    .line 54
    .line 55
    const/4 p0, 0x4

    .line 56
    if-ne p1, p0, :cond_0

    .line 57
    .line 58
    sget-object p0, Lcom/fsck/k9/notification/LockScreenNotificationData$None;->INSTANCE:Lcom/fsck/k9/notification/LockScreenNotificationData$None;

    .line 59
    .line 60
    :goto_0
    move-object v6, p0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_1
    sget-object p0, Lcom/fsck/k9/notification/LockScreenNotificationData$None;->INSTANCE$1:Lcom/fsck/k9/notification/LockScreenNotificationData$None;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget-object p0, Lcom/fsck/k9/notification/LockScreenNotificationData$None;->INSTANCE$2:Lcom/fsck/k9/notification/LockScreenNotificationData$None;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    new-instance p1, Lcom/fsck/k9/notification/LockScreenNotificationData$SenderNames;

    .line 73
    .line 74
    new-instance v6, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 75
    .line 76
    invoke-direct {v6, v7, p0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance p0, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    const/16 v8, 0xd

    .line 82
    .line 83
    invoke-direct {p0, v8}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 84
    .line 85
    .line 86
    new-instance v8, Lkotlin/sequences/TakeWhileSequence;

    .line 87
    .line 88
    invoke-direct {v8, v6, p0, v7}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 89
    .line 90
    .line 91
    new-instance p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    const/16 v6, 0x17

    .line 94
    .line 95
    invoke-direct {p0, v6}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 96
    .line 97
    .line 98
    new-instance v6, Lkotlin/sequences/DistinctSequence;

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    invoke-direct {v6, v7, v8, p0}, Lkotlin/sequences/DistinctSequence;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x5

    .line 105
    invoke-static {v6, p0}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const/16 v6, 0x3f

    .line 110
    .line 111
    invoke-static {p0, v0, v6}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/String;I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {p1, p0}, Lcom/fsck/k9/notification/LockScreenNotificationData$SenderNames;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    move-object v6, p1

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    sget-object p0, Lcom/fsck/k9/notification/LockScreenNotificationData$None;->INSTANCE$3:Lcom/fsck/k9/notification/LockScreenNotificationData$None;

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :goto_1
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    iget-object p1, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 128
    .line 129
    iget-object v7, p1, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 130
    .line 131
    iget p1, p1, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 132
    .line 133
    invoke-static {v7, p1}, Lkotlin/ranges/RangesKt;->getSystemPattern(Lnet/thunderbird/feature/notification/VibratePattern;I)[J

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object v7, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 138
    .line 139
    iget-boolean v7, v7, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 140
    .line 141
    if-eqz v7, :cond_5

    .line 142
    .line 143
    move-object v0, p1

    .line 144
    :cond_5
    new-instance v7, Lcom/fsck/k9/notification/NotificationAppearance;

    .line 145
    .line 146
    iget-object p0, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object p1, p1, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 153
    .line 154
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    invoke-virtual {p1, v8}, Lnet/thunderbird/feature/notification/NotificationLight;->toColor(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-direct {v7, p0, v0, p1}, Lcom/fsck/k9/notification/NotificationAppearance;-><init>(Ljava/lang/String;[JLjava/lang/Integer;)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Lcom/fsck/k9/notification/BaseNotificationData;

    .line 166
    .line 167
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/notification/BaseNotificationData;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;Ljava/lang/String;IILcom/fsck/k9/notification/LockScreenNotificationData;Lcom/fsck/k9/notification/NotificationAppearance;)V

    .line 168
    .line 169
    .line 170
    return-object v0
.end method

.method public final createSingleNotificationData(Lnet/thunderbird/core/android/account/LegacyAccountDto;ILcom/fsck/k9/notification/NotificationContent;JZ)Lcom/fsck/k9/notification/SingleNotificationData;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/notification/SingleNotificationData;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->singleMessageNotificationDataCreator:Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->createSingleNotificationActions(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->createSingleNotificationWearActions(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lkotlin/collections/builders/ListBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    const/4 v2, 0x1

    .line 17
    move v1, p2

    .line 18
    move-object v5, p3

    .line 19
    move-wide v3, p4

    .line 20
    move v8, p6

    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/notification/SingleNotificationData;-><init>(IZJLcom/fsck/k9/notification/NotificationContent;Ljava/util/ArrayList;Lkotlin/collections/builders/ListBuilder;Z)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final createSummaryNotificationData(Lcom/fsck/k9/notification/NotificationData;Z)Lcom/fsck/k9/notification/SummaryNotificationData;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    move-object/from16 v2, p0

    .line 14
    .line 15
    iget-object v2, v2, Lcom/fsck/k9/notification/NewMailNotificationManager;->summaryNotificationDataCreator:Lcom/fsck/k9/notification/SummaryNotificationDataCreator;

    .line 16
    .line 17
    iget-object v3, v2, Lcom/fsck/k9/notification/SummaryNotificationDataCreator;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 18
    .line 19
    iget-object v4, v0, Lcom/fsck/k9/notification/NotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lcom/fsck/k9/notification/NotificationHolder;

    .line 26
    .line 27
    iget-wide v9, v5, Lcom/fsck/k9/notification/NotificationHolder;->timestamp:J

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v6, 0x0

    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    move-object v7, v3

    .line 34
    check-cast v7, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 35
    .line 36
    invoke-virtual {v7}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v7, v7, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 41
    .line 42
    invoke-static {v7}, Landroidx/compose/ui/unit/IntOffsetKt;->isQuietTime(Lnet/thunderbird/core/preference/notification/NotificationPreference;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v8, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    move v8, v5

    .line 52
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-ne v7, v5, :cond_3

    .line 57
    .line 58
    iget-object v0, v2, Lcom/fsck/k9/notification/SummaryNotificationDataCreator;->singleMessageNotificationDataCreator:Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;

    .line 59
    .line 60
    new-instance v2, Lcom/fsck/k9/notification/SummarySingleNotificationData;

    .line 61
    .line 62
    new-instance v6, Lcom/fsck/k9/notification/SingleNotificationData;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    mul-int/lit8 v3, v3, 0x10

    .line 72
    .line 73
    add-int/lit8 v7, v3, 0x9

    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/fsck/k9/notification/NotificationHolder;

    .line 80
    .line 81
    iget-object v11, v1, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->createSingleNotificationActions(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    invoke-virtual {v0, v4}, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;->createSingleNotificationWearActions(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lkotlin/collections/builders/ListBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    const/4 v14, 0x0

    .line 92
    invoke-direct/range {v6 .. v14}, Lcom/fsck/k9/notification/SingleNotificationData;-><init>(IZJLcom/fsck/k9/notification/NotificationContent;Ljava/util/ArrayList;Lkotlin/collections/builders/ListBuilder;Z)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v6}, Lcom/fsck/k9/notification/SummarySingleNotificationData;-><init>(Lcom/fsck/k9/notification/SingleNotificationData;)V

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :cond_3
    move v2, v6

    .line 100
    new-instance v6, Lcom/fsck/k9/notification/SummaryInboxNotificationData;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    mul-int/lit8 v5, v5, 0x10

    .line 110
    .line 111
    add-int/lit8 v7, v5, 0x9

    .line 112
    .line 113
    new-instance v5, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 114
    .line 115
    const/4 v11, 0x2

    .line 116
    invoke-direct {v5, v11, v1}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    new-instance v12, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    const/16 v13, 0x11

    .line 122
    .line 123
    invoke-direct {v12, v13}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 124
    .line 125
    .line 126
    new-instance v13, Lkotlin/sequences/TakeWhileSequence;

    .line 127
    .line 128
    invoke-direct {v13, v5, v12, v11}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 129
    .line 130
    .line 131
    const/4 v5, 0x5

    .line 132
    invoke-static {v13, v5}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-static {v11}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    add-int/2addr v0, v12

    .line 151
    sub-int/2addr v0, v5

    .line 152
    if-gez v0, :cond_4

    .line 153
    .line 154
    move v12, v2

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    move v12, v0

    .line 157
    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    .line 158
    .line 159
    const/16 v0, 0xa

    .line 160
    .line 161
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_5

    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Lcom/fsck/k9/notification/NotificationHolder;

    .line 183
    .line 184
    iget-object v1, v1, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 185
    .line 186
    iget-object v1, v1, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 187
    .line 188
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_5
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    sget-object v1, Lcom/fsck/k9/notification/SummaryNotificationAction;->MarkAsRead:Lcom/fsck/k9/notification/SummaryNotificationAction;

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-object v1, v3

    .line 202
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 209
    .line 210
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isSummaryDeleteActionEnabled:Z

    .line 211
    .line 212
    if-eqz v1, :cond_6

    .line 213
    .line 214
    sget-object v1, Lcom/fsck/k9/notification/SummaryNotificationAction;->Delete:Lcom/fsck/k9/notification/SummaryNotificationAction;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    :cond_6
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 220
    .line 221
    .line 222
    move-result-object v14

    .line 223
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    sget-object v1, Lcom/fsck/k9/notification/SummaryWearNotificationAction;->MarkAsRead:Lcom/fsck/k9/notification/SummaryWearNotificationAction;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-object v1, v3

    .line 233
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 240
    .line 241
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isSummaryDeleteActionEnabled:Z

    .line 242
    .line 243
    if-eqz v1, :cond_7

    .line 244
    .line 245
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 252
    .line 253
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteFromNotification:Z

    .line 254
    .line 255
    if-nez v1, :cond_7

    .line 256
    .line 257
    sget-object v1, Lcom/fsck/k9/notification/SummaryWearNotificationAction;->Delete:Lcom/fsck/k9/notification/SummaryWearNotificationAction;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    :cond_7
    invoke-virtual {v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->hasArchiveFolder()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_8

    .line 267
    .line 268
    sget-object v1, Lcom/fsck/k9/notification/SummaryWearNotificationAction;->Archive:Lcom/fsck/k9/notification/SummaryWearNotificationAction;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    :cond_8
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 274
    .line 275
    .line 276
    move-result-object v15

    .line 277
    invoke-direct/range {v6 .. v15}, Lcom/fsck/k9/notification/SummaryInboxNotificationData;-><init>(IZJLjava/util/List;ILjava/util/ArrayList;Lkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V

    .line 278
    .line 279
    .line 280
    return-object v6
.end method

.method public final removeNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLkotlin/jvm/functions/Function1;)Lcom/fsck/k9/notification/NewMailNotificationData;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->notificationRepository:Lcom/fsck/k9/notification/NotificationRepository;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/fsck/k9/notification/NotificationRepository;->restoreNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/notification/NotificationData;

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lcom/fsck/k9/notification/NotificationRepository;->notificationDataStore:Landroidx/work/Data$Builder;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p3}, Landroidx/work/Data$Builder;->removeNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/jvm/functions/Function1;)Lcom/fsck/k9/notification/RemoveNotificationsResult;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    iget-object v2, p3, Lcom/fsck/k9/notification/RemoveNotificationsResult;->notificationStoreOperations:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v2, p2}, Lcom/fsck/k9/notification/NotificationRepository;->persistNotificationDataStoreChanges(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    move-object p0, v0

    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    move-object p3, v0

    .line 30
    :goto_0
    monitor-exit v1

    .line 31
    if-nez p3, :cond_1

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    iget-object p2, p3, Lcom/fsck/k9/notification/RemoveNotificationsResult;->notificationData:Lcom/fsck/k9/notification/NotificationData;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget-object v0, p3, Lcom/fsck/k9/notification/RemoveNotificationsResult;->cancelNotificationIds:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    mul-int/lit8 p2, p2, 0x10

    .line 51
    .line 52
    add-int/lit8 p2, p2, 0x9

    .line 53
    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_2
    iget-object p2, p3, Lcom/fsck/k9/notification/RemoveNotificationsResult;->notificationHolders:Ljava/util/ArrayList;

    .line 63
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    .line 65
    .line 66
    const/16 v2, 0xa

    .line 67
    .line 68
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v3, 0x1

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/fsck/k9/notification/NotificationHolder;

    .line 91
    .line 92
    iget v6, v2, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 93
    .line 94
    iget-object v7, v2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 95
    .line 96
    iget-wide v8, v2, Lcom/fsck/k9/notification/NotificationHolder;->timestamp:J

    .line 97
    .line 98
    iget-object v2, p3, Lcom/fsck/k9/notification/RemoveNotificationsResult;->notificationData:Lcom/fsck/k9/notification/NotificationData;

    .line 99
    .line 100
    iget-object v2, v2, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-ne v2, v3, :cond_3

    .line 107
    .line 108
    :goto_2
    move-object v4, p0

    .line 109
    move-object v5, p1

    .line 110
    move v10, v3

    .line 111
    goto :goto_3

    .line 112
    :cond_3
    const/4 v3, 0x0

    .line 113
    goto :goto_2

    .line 114
    :goto_3
    invoke-virtual/range {v4 .. v10}, Lcom/fsck/k9/notification/NewMailNotificationManager;->createSingleNotificationData(Lnet/thunderbird/core/android/account/LegacyAccountDto;ILcom/fsck/k9/notification/NotificationContent;JZ)Lcom/fsck/k9/notification/SingleNotificationData;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-object p0, v4

    .line 122
    move-object p1, v5

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    move-object v4, p0

    .line 125
    new-instance p0, Lcom/fsck/k9/notification/NewMailNotificationData;

    .line 126
    .line 127
    iget-object p1, p3, Lcom/fsck/k9/notification/RemoveNotificationsResult;->notificationData:Lcom/fsck/k9/notification/NotificationData;

    .line 128
    .line 129
    invoke-virtual {v4, p1}, Lcom/fsck/k9/notification/NewMailNotificationManager;->createBaseNotificationData(Lcom/fsck/k9/notification/NotificationData;)Lcom/fsck/k9/notification/BaseNotificationData;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object p2, p3, Lcom/fsck/k9/notification/RemoveNotificationsResult;->notificationData:Lcom/fsck/k9/notification/NotificationData;

    .line 134
    .line 135
    invoke-virtual {v4, p2, v3}, Lcom/fsck/k9/notification/NewMailNotificationManager;->createSummaryNotificationData(Lcom/fsck/k9/notification/NotificationData;Z)Lcom/fsck/k9/notification/SummaryNotificationData;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/fsck/k9/notification/NewMailNotificationData;-><init>(Ljava/util/List;Lcom/fsck/k9/notification/BaseNotificationData;Ljava/util/List;Lcom/fsck/k9/notification/SummaryNotificationData;)V

    .line 140
    .line 141
    .line 142
    return-object p0

    .line 143
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    throw p0
.end method

.method public final restoreNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/notification/NewMailNotificationData;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationManager;->notificationRepository:Lcom/fsck/k9/notification/NotificationRepository;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/NotificationRepository;->restoreNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/notification/NotificationData;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    move v10, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    move v10, v2

    .line 27
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 v4, 0xa

    .line 30
    .line 31
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/fsck/k9/notification/NotificationHolder;

    .line 53
    .line 54
    iget v6, v4, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 55
    .line 56
    iget-object v7, v4, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 57
    .line 58
    iget-wide v8, v4, Lcom/fsck/k9/notification/NotificationHolder;->timestamp:J

    .line 59
    .line 60
    move-object v4, p0

    .line 61
    move-object v5, p1

    .line 62
    invoke-virtual/range {v4 .. v10}, Lcom/fsck/k9/notification/NewMailNotificationManager;->createSingleNotificationData(Lnet/thunderbird/core/android/account/LegacyAccountDto;ILcom/fsck/k9/notification/NotificationContent;JZ)Lcom/fsck/k9/notification/SingleNotificationData;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-object p0, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move-object v4, p0

    .line 72
    new-instance p0, Lcom/fsck/k9/notification/NewMailNotificationData;

    .line 73
    .line 74
    invoke-virtual {v4, v0}, Lcom/fsck/k9/notification/NewMailNotificationManager;->createBaseNotificationData(Lcom/fsck/k9/notification/NotificationData;)Lcom/fsck/k9/notification/BaseNotificationData;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v4, v0, v3}, Lcom/fsck/k9/notification/NewMailNotificationManager;->createSummaryNotificationData(Lcom/fsck/k9/notification/NotificationData;Z)Lcom/fsck/k9/notification/SummaryNotificationData;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 83
    .line 84
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/fsck/k9/notification/NewMailNotificationData;-><init>(Ljava/util/List;Lcom/fsck/k9/notification/BaseNotificationData;Ljava/util/List;Lcom/fsck/k9/notification/SummaryNotificationData;)V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method
