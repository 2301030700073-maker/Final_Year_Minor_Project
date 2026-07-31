.class public final Landroidx/work/Data$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;


# instance fields
.field public final values:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    const/4 v1, 0x0

    .line 77
    const/high16 v2, 0x3f400000    # 0.75f

    .line 78
    .line 79
    invoke-direct {p1, v1, v2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 85
    iput-object p1, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewNotificationId(Lcom/fsck/k9/notification/NotificationData;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/fsck/k9/notification/NotificationHolder;

    .line 29
    .line 30
    iget v3, v3, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    move v3, v1

    .line 46
    :goto_1
    const/16 v4, 0x9

    .line 47
    .line 48
    if-ge v3, v4, :cond_3

    .line 49
    .line 50
    iget-object v5, p0, Lcom/fsck/k9/notification/NotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    if-ltz v3, :cond_2

    .line 56
    .line 57
    if-ge v3, v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    mul-int/lit8 v4, v4, 0x10

    .line 64
    .line 65
    add-int/2addr v4, v2

    .line 66
    add-int/2addr v4, v3

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_1

    .line 76
    .line 77
    return v4

    .line 78
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const-string p0, "Invalid index: "

    .line 82
    .line 83
    invoke-static {p0, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return v1

    .line 91
    :cond_3
    const-string p0, "getNewNotificationId() called with no free notification ID"

    .line 92
    .line 93
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return v1
.end method

.method public static key(ILjava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const/16 p0, 0x2d

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static replace(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne v1, p1, :cond_0

    .line 27
    .line 28
    move-object v1, p2

    .line 29
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addInitializer(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Landroidx/lifecycle/viewmodel/ViewModelInitializer;-><init>(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/16 p1, 0x2e

    .line 26
    .line 27
    const-string p2, "A `initializer` with the same `clazz` has already been added: "

    .line 28
    .line 29
    invoke-static {p1, p0, p2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(ILjava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public addMigration(Landroidx/room/migration/Migration;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroidx/room/migration/Migration;->startVersion:I

    .line 5
    .line 6
    iget v1, p1, Landroidx/room/migration/Migration;->endVersion:I

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Ljava/util/TreeMap;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    check-cast v2, Ljava/util/TreeMap;

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "Overriding migration "

    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " with "

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v0, "ROOM"

    .line 71
    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public declared-synchronized addNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationContent;J)Landroidx/compose/runtime/Latch;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/fsck/k9/notification/NotificationData;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/fsck/k9/notification/NotificationData;

    .line 18
    .line 19
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 20
    .line 21
    sget-object v3, Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;->MESSAGE_COUNT:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 22
    .line 23
    invoke-direct {v1, p1, v2, v2, v3}, Lcom/fsck/k9/notification/NotificationData;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Ljava/util/List;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p2, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    move-object v5, v3

    .line 51
    check-cast v5, Lcom/fsck/k9/notification/NotificationHolder;

    .line 52
    .line 53
    iget-object v5, v5, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 54
    .line 55
    iget-object v5, v5, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 56
    .line 57
    invoke-virtual {v5, v0}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_2
    move-object v3, v4

    .line 68
    :goto_0
    check-cast v3, Lcom/fsck/k9/notification/NotificationHolder;

    .line 69
    .line 70
    iget-object v2, v1, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    move-object v6, v5

    .line 87
    check-cast v6, Lcom/fsck/k9/notification/InactiveNotificationHolder;

    .line 88
    .line 89
    iget-object v6, v6, Lcom/fsck/k9/notification/InactiveNotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 90
    .line 91
    iget-object v6, v6, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 92
    .line 93
    invoke-virtual {v6, v0}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    move-object v5, v4

    .line 101
    :goto_1
    check-cast v5, Lcom/fsck/k9/notification/InactiveNotificationHolder;

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    const/16 v6, 0xd

    .line 105
    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    iget p3, v3, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 109
    .line 110
    iget-wide v7, v3, Lcom/fsck/k9/notification/NotificationHolder;->timestamp:J

    .line 111
    .line 112
    new-instance p4, Lcom/fsck/k9/notification/NotificationHolder;

    .line 113
    .line 114
    invoke-direct {p4, p3, v7, v8, p2}, Lcom/fsck/k9/notification/NotificationHolder;-><init>(IJLcom/fsck/k9/notification/NotificationContent;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/fsck/k9/notification/NotificationHolder;

    .line 118
    .line 119
    invoke-direct {v0, p3, v7, v8, p2}, Lcom/fsck/k9/notification/NotificationHolder;-><init>(IJLcom/fsck/k9/notification/NotificationContent;)V

    .line 120
    .line 121
    .line 122
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 123
    .line 124
    iget-object p3, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 125
    .line 126
    invoke-static {p3, v3, p4}, Landroidx/work/Data$Builder;->replace(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-static {v1, p3, v4, v6}, Lcom/fsck/k9/notification/NotificationData;->copy$default(Lcom/fsck/k9/notification/NotificationData;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/fsck/k9/notification/NotificationData;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    iget-object p4, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 135
    .line 136
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    new-instance v4, Landroidx/compose/runtime/Latch;

    .line 142
    .line 143
    invoke-direct {v4, p3, p2, v0, v2}, Landroidx/compose/runtime/Latch;-><init>(Lcom/fsck/k9/notification/NotificationData;Ljava/util/List;Lcom/fsck/k9/notification/NotificationHolder;Z)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :cond_5
    if-eqz v5, :cond_6

    .line 149
    .line 150
    iget-wide p3, v5, Lcom/fsck/k9/notification/InactiveNotificationHolder;->timestamp:J

    .line 151
    .line 152
    new-instance v0, Lcom/fsck/k9/notification/InactiveNotificationHolder;

    .line 153
    .line 154
    invoke-direct {v0, p3, p4, p2}, Lcom/fsck/k9/notification/InactiveNotificationHolder;-><init>(JLcom/fsck/k9/notification/NotificationContent;)V

    .line 155
    .line 156
    .line 157
    iget-object p2, v1, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 158
    .line 159
    invoke-static {p2, v5, v0}, Landroidx/work/Data$Builder;->replace(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    const/16 p3, 0xb

    .line 164
    .line 165
    invoke-static {v1, v4, p2, p3}, Lcom/fsck/k9/notification/NotificationData;->copy$default(Lcom/fsck/k9/notification/NotificationData;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/fsck/k9/notification/NotificationData;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    iget-object p3, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 170
    .line 171
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 172
    .line 173
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :cond_6
    iget-object v3, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    const/16 v5, 0x9

    .line 185
    .line 186
    if-ne v3, v5, :cond_7

    .line 187
    .line 188
    iget-object v3, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 189
    .line 190
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Lcom/fsck/k9/notification/NotificationHolder;

    .line 195
    .line 196
    new-instance v4, Lcom/fsck/k9/notification/InactiveNotificationHolder;

    .line 197
    .line 198
    iget-wide v6, v3, Lcom/fsck/k9/notification/NotificationHolder;->timestamp:J

    .line 199
    .line 200
    iget-object v8, v3, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 201
    .line 202
    invoke-direct {v4, v6, v7, v8}, Lcom/fsck/k9/notification/InactiveNotificationHolder;-><init>(JLcom/fsck/k9/notification/NotificationContent;)V

    .line 203
    .line 204
    .line 205
    iget v3, v3, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 206
    .line 207
    new-instance v6, Lcom/fsck/k9/notification/NotificationHolder;

    .line 208
    .line 209
    invoke-direct {v6, v3, p3, p4, p2}, Lcom/fsck/k9/notification/NotificationHolder;-><init>(IJLcom/fsck/k9/notification/NotificationContent;)V

    .line 210
    .line 211
    .line 212
    new-instance p2, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToInactive;

    .line 213
    .line 214
    iget-object v7, v8, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 215
    .line 216
    invoke-direct {p2, v7}, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToInactive;-><init>(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 217
    .line 218
    .line 219
    new-instance v7, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;

    .line 220
    .line 221
    invoke-direct {v7, v0, v3, p3, p4}, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;-><init>(Lapp/k9mail/legacy/message/controller/MessageReference;IJ)V

    .line 222
    .line 223
    .line 224
    const/4 p3, 0x2

    .line 225
    new-array p3, p3, [Lcom/fsck/k9/notification/NotificationStoreOperation;

    .line 226
    .line 227
    aput-object p2, p3, v2

    .line 228
    .line 229
    const/4 p2, 0x1

    .line 230
    aput-object v7, p3, p2

    .line 231
    .line 232
    invoke-static {p3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object p4

    .line 240
    iget-object v0, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 241
    .line 242
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {p4, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    move-result-object p4

    .line 250
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v2, v1, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 255
    .line 256
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v1, p4, v0, v5}, Lcom/fsck/k9/notification/NotificationData;->copy$default(Lcom/fsck/k9/notification/NotificationData;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/fsck/k9/notification/NotificationData;

    .line 261
    .line 262
    .line 263
    move-result-object p4

    .line 264
    iget-object v0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 265
    .line 266
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 267
    .line 268
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    new-instance v4, Landroidx/compose/runtime/Latch;

    .line 272
    .line 273
    invoke-direct {v4, p4, p3, v6, p2}, Landroidx/compose/runtime/Latch;-><init>(Lcom/fsck/k9/notification/NotificationData;Ljava/util/List;Lcom/fsck/k9/notification/NotificationHolder;Z)V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_7
    invoke-static {v1}, Landroidx/work/Data$Builder;->getNewNotificationId(Lcom/fsck/k9/notification/NotificationData;)I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    new-instance v5, Lcom/fsck/k9/notification/NotificationHolder;

    .line 282
    .line 283
    invoke-direct {v5, v3, p3, p4, p2}, Lcom/fsck/k9/notification/NotificationHolder;-><init>(IJLcom/fsck/k9/notification/NotificationContent;)V

    .line 284
    .line 285
    .line 286
    new-instance p2, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;

    .line 287
    .line 288
    invoke-direct {p2, v0, v3, p3, p4}, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;-><init>(Lapp/k9mail/legacy/message/controller/MessageReference;IJ)V

    .line 289
    .line 290
    .line 291
    invoke-static {p2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object p3

    .line 299
    iget-object p4, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 300
    .line 301
    invoke-static {p3, p4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 302
    .line 303
    .line 304
    move-result-object p3

    .line 305
    invoke-static {v1, p3, v4, v6}, Lcom/fsck/k9/notification/NotificationData;->copy$default(Lcom/fsck/k9/notification/NotificationData;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/fsck/k9/notification/NotificationData;

    .line 306
    .line 307
    .line 308
    move-result-object p3

    .line 309
    iget-object p4, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 310
    .line 311
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 312
    .line 313
    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    new-instance v4, Landroidx/compose/runtime/Latch;

    .line 317
    .line 318
    invoke-direct {v4, p3, p2, v5, v2}, Landroidx/compose/runtime/Latch;-><init>(Lcom/fsck/k9/notification/NotificationData;Ljava/util/List;Lcom/fsck/k9/notification/NotificationHolder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .line 320
    .line 321
    :goto_2
    monitor-exit p0

    .line 322
    return-object v4

    .line 323
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    throw p1
.end method

.method public build()Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    .line 14
    .line 15
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    .line 20
    .line 21
    array-length v1, p0

    .line 22
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;-><init>([Landroidx/lifecycle/viewmodel/ViewModelInitializer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public build()Landroidx/work/Data;
    .locals 1

    .line 32
    new-instance v0, Landroidx/work/Data;

    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Landroidx/work/Data;-><init>(Ljava/util/LinkedHashMap;)V

    .line 33
    invoke-static {v0}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    return-object v0
.end method

.method public declared-synchronized clearNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method

.method public foundLiteral(Lcom/fsck/k9/mail/store/imap/ImapResponse;Lcom/fsck/k9/mail/filter/FixedLengthInputStream;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "FETCH"

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 29
    .line 30
    const-string v1, "UID"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public declared-synchronized initializeAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)Lcom/fsck/k9/notification/NotificationData;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/fsck/k9/notification/NotificationData;

    .line 17
    .line 18
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/fsck/k9/notification/NotificationData;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Ljava/util/List;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_1
    const-string p1, "Failed requirement."

    .line 33
    .line 34
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2

    .line 40
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p1
.end method

.method public declared-synchronized isAccountInitialized(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    monitor-exit p0

    .line 19
    return p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_9

    .line 28
    .line 29
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_9

    .line 40
    .line 41
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_9

    .line 52
    .line 53
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_9

    .line 64
    .line 65
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_9

    .line 76
    .line 77
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_9

    .line 88
    .line 89
    const-class v1, Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_9

    .line 100
    .line 101
    const-class v1, [Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_9

    .line 112
    .line 113
    const-class v1, [Ljava/lang/Byte;

    .line 114
    .line 115
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_9

    .line 124
    .line 125
    const-class v1, [Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_9

    .line 136
    .line 137
    const-class v1, [Ljava/lang/Long;

    .line 138
    .line 139
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_9

    .line 148
    .line 149
    const-class v1, [Ljava/lang/Float;

    .line 150
    .line 151
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_9

    .line 160
    .line 161
    const-class v1, [Ljava/lang/Double;

    .line 162
    .line 163
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_9

    .line 172
    .line 173
    const-class v1, [Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_1

    .line 184
    .line 185
    goto/16 :goto_6

    .line 186
    .line 187
    :cond_1
    const-class v1, [Z

    .line 188
    .line 189
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    const/4 v2, 0x0

    .line 198
    if-eqz v1, :cond_3

    .line 199
    .line 200
    check-cast p1, [Z

    .line 201
    .line 202
    sget-object v0, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    .line 203
    .line 204
    array-length v0, p1

    .line 205
    new-array v1, v0, [Ljava/lang/Boolean;

    .line 206
    .line 207
    :goto_0
    if-ge v2, v0, :cond_2

    .line 208
    .line 209
    aget-boolean v3, p1, v2

    .line 210
    .line 211
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    aput-object v3, v1, v2

    .line 216
    .line 217
    add-int/lit8 v2, v2, 0x1

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_2
    move-object p1, v1

    .line 221
    goto/16 :goto_6

    .line 222
    .line 223
    :cond_3
    const-class v1, [B

    .line 224
    .line 225
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_4

    .line 234
    .line 235
    check-cast p1, [B

    .line 236
    .line 237
    sget-object v0, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    .line 238
    .line 239
    array-length v0, p1

    .line 240
    new-array v1, v0, [Ljava/lang/Byte;

    .line 241
    .line 242
    :goto_1
    if-ge v2, v0, :cond_2

    .line 243
    .line 244
    aget-byte v3, p1, v2

    .line 245
    .line 246
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    aput-object v3, v1, v2

    .line 251
    .line 252
    add-int/lit8 v2, v2, 0x1

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_4
    const-class v1, [I

    .line 256
    .line 257
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_5

    .line 266
    .line 267
    check-cast p1, [I

    .line 268
    .line 269
    sget-object v0, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    .line 270
    .line 271
    array-length v0, p1

    .line 272
    new-array v1, v0, [Ljava/lang/Integer;

    .line 273
    .line 274
    :goto_2
    if-ge v2, v0, :cond_2

    .line 275
    .line 276
    aget v3, p1, v2

    .line 277
    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    aput-object v3, v1, v2

    .line 283
    .line 284
    add-int/lit8 v2, v2, 0x1

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_5
    const-class v1, [J

    .line 288
    .line 289
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_6

    .line 298
    .line 299
    check-cast p1, [J

    .line 300
    .line 301
    sget-object v0, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    .line 302
    .line 303
    array-length v0, p1

    .line 304
    new-array v1, v0, [Ljava/lang/Long;

    .line 305
    .line 306
    :goto_3
    if-ge v2, v0, :cond_2

    .line 307
    .line 308
    aget-wide v3, p1, v2

    .line 309
    .line 310
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    aput-object v3, v1, v2

    .line 315
    .line 316
    add-int/lit8 v2, v2, 0x1

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_6
    const-class v1, [F

    .line 320
    .line 321
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_7

    .line 330
    .line 331
    check-cast p1, [F

    .line 332
    .line 333
    sget-object v0, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    .line 334
    .line 335
    array-length v0, p1

    .line 336
    new-array v1, v0, [Ljava/lang/Float;

    .line 337
    .line 338
    :goto_4
    if-ge v2, v0, :cond_2

    .line 339
    .line 340
    aget v3, p1, v2

    .line 341
    .line 342
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    aput-object v3, v1, v2

    .line 347
    .line 348
    add-int/lit8 v2, v2, 0x1

    .line 349
    .line 350
    goto :goto_4

    .line 351
    :cond_7
    const-class v1, [D

    .line 352
    .line 353
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_8

    .line 362
    .line 363
    check-cast p1, [D

    .line 364
    .line 365
    sget-object v0, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    .line 366
    .line 367
    array-length v0, p1

    .line 368
    new-array v1, v0, [Ljava/lang/Double;

    .line 369
    .line 370
    :goto_5
    if-ge v2, v0, :cond_2

    .line 371
    .line 372
    aget-wide v3, p1, v2

    .line 373
    .line 374
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    aput-object v3, v1, v2

    .line 379
    .line 380
    add-int/lit8 v2, v2, 0x1

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_8
    const-string p0, "Key "

    .line 384
    .line 385
    const-string p1, " has invalid type "

    .line 386
    .line 387
    invoke-static {p0, p2, p1, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :cond_9
    :goto_6
    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 392
    .line 393
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    return-void
.end method

.method public putAll(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0, v1}, Landroidx/work/Data$Builder;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/StartStopToken;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroidx/work/impl/model/WorkGenerationalId;

    .line 36
    .line 37
    iget-object v3, v3, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/Iterable;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroidx/work/impl/model/WorkGenerationalId;

    .line 78
    .line 79
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Ljava/lang/Iterable;

    .line 88
    .line 89
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public declared-synchronized removeNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/jvm/functions/Function1;)Lcom/fsck/k9/notification/RemoveNotificationsResult;
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/fsck/k9/notification/NotificationData;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/fsck/k9/notification/NotificationData;

    .line 18
    .line 19
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 20
    .line 21
    sget-object v3, Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;->MESSAGE_COUNT:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 22
    .line 23
    invoke-direct {v1, p1, v2, v2, v3}, Lcom/fsck/k9/notification/NotificationData;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Ljava/util/List;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-object v2

    .line 42
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/fsck/k9/notification/NotificationData;->getMessageReferences()Lkotlin/collections/builders/ListBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-object v2

    .line 60
    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v3, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v4, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v5, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 76
    .line 77
    new-instance v6, Ljava/util/ArrayList;

    .line 78
    .line 79
    const/16 v7, 0xa

    .line 80
    .line 81
    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_3

    .line 97
    .line 98
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    check-cast v8, Lcom/fsck/k9/notification/NotificationHolder;

    .line 103
    .line 104
    iget-object v8, v8, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 105
    .line 106
    iget-object v8, v8, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 107
    .line 108
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    goto/16 :goto_7

    .line 114
    .line 115
    :cond_3
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    new-instance v6, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v8, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_5

    .line 138
    .line 139
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    move-object v10, v9

    .line 144
    check-cast v10, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 145
    .line 146
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-eqz v10, :cond_4

    .line 151
    .line 152
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-nez p2, :cond_b

    .line 165
    .line 166
    iget-object p2, v1, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 167
    .line 168
    new-instance v5, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-static {p2, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .line 176
    .line 177
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-eqz v7, :cond_6

    .line 186
    .line 187
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    check-cast v7, Lcom/fsck/k9/notification/InactiveNotificationHolder;

    .line 192
    .line 193
    iget-object v7, v7, Lcom/fsck/k9/notification/InactiveNotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 194
    .line 195
    iget-object v7, v7, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 196
    .line 197
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_6
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-eqz v7, :cond_8

    .line 214
    .line 215
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    check-cast v7, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 220
    .line 221
    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    if-eqz v9, :cond_7

    .line 226
    .line 227
    new-instance v9, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;

    .line 228
    .line 229
    invoke-direct {v9, v7}, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;-><init>(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_8
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    iget-object v5, v1, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 241
    .line 242
    new-instance v7, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    if-eqz v8, :cond_a

    .line 256
    .line 257
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    move-object v9, v8

    .line 262
    check-cast v9, Lcom/fsck/k9/notification/InactiveNotificationHolder;

    .line 263
    .line 264
    iget-object v9, v9, Lcom/fsck/k9/notification/InactiveNotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 265
    .line 266
    iget-object v9, v9, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 267
    .line 268
    invoke-interface {p2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    if-nez v9, :cond_9

    .line 273
    .line 274
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_a
    const/16 p2, 0xb

    .line 279
    .line 280
    invoke-static {v1, v2, v7, p2}, Lcom/fsck/k9/notification/NotificationData;->copy$default(Lcom/fsck/k9/notification/NotificationData;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/fsck/k9/notification/NotificationData;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    :cond_b
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_f

    .line 293
    .line 294
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    check-cast v5, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 299
    .line 300
    iget-object v6, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 301
    .line 302
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    if-eqz v7, :cond_e

    .line 311
    .line 312
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    move-object v8, v7

    .line 317
    check-cast v8, Lcom/fsck/k9/notification/NotificationHolder;

    .line 318
    .line 319
    iget-object v8, v8, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 320
    .line 321
    iget-object v8, v8, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 322
    .line 323
    invoke-virtual {v8, v5}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    if-eqz v8, :cond_c

    .line 328
    .line 329
    check-cast v7, Lcom/fsck/k9/notification/NotificationHolder;

    .line 330
    .line 331
    iget-object v6, v1, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 332
    .line 333
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-nez v6, :cond_d

    .line 338
    .line 339
    iget-object v6, v1, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 340
    .line 341
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    check-cast v6, Lcom/fsck/k9/notification/InactiveNotificationHolder;

    .line 346
    .line 347
    iget v8, v7, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 348
    .line 349
    new-instance v9, Lcom/fsck/k9/notification/NotificationHolder;

    .line 350
    .line 351
    iget-wide v10, v6, Lcom/fsck/k9/notification/InactiveNotificationHolder;->timestamp:J

    .line 352
    .line 353
    iget-object v6, v6, Lcom/fsck/k9/notification/InactiveNotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 354
    .line 355
    invoke-direct {v9, v8, v10, v11, v6}, Lcom/fsck/k9/notification/NotificationHolder;-><init>(IJLcom/fsck/k9/notification/NotificationContent;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    iget v10, v7, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 362
    .line 363
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    new-instance v10, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;

    .line 371
    .line 372
    invoke-direct {v10, v5}, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;-><init>(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    new-instance v5, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToActive;

    .line 379
    .line 380
    iget-object v6, v6, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 381
    .line 382
    invoke-direct {v5, v6, v8}, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToActive;-><init>(Lapp/k9mail/legacy/message/controller/MessageReference;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    iget-object v5, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 389
    .line 390
    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->minus(Ljava/util/List;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    iget-object v6, v1, Lcom/fsck/k9/notification/NotificationData;->inactiveNotifications:Ljava/util/List;

    .line 399
    .line 400
    const/4 v7, 0x1

    .line 401
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->drop(ILjava/util/List;)Ljava/util/List;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    const/16 v7, 0x9

    .line 406
    .line 407
    invoke-static {v1, v5, v6, v7}, Lcom/fsck/k9/notification/NotificationData;->copy$default(Lcom/fsck/k9/notification/NotificationData;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/fsck/k9/notification/NotificationData;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    goto :goto_5

    .line 412
    :cond_d
    iget v6, v7, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 413
    .line 414
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    new-instance v6, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;

    .line 422
    .line 423
    invoke-direct {v6, v5}, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;-><init>(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    iget-object v5, v1, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/List;

    .line 430
    .line 431
    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->minus(Ljava/util/List;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    const/16 v6, 0xd

    .line 436
    .line 437
    invoke-static {v1, v5, v2, v6}, Lcom/fsck/k9/notification/NotificationData;->copy$default(Lcom/fsck/k9/notification/NotificationData;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/fsck/k9/notification/NotificationData;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    goto/16 :goto_5

    .line 442
    .line 443
    :cond_e
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 444
    .line 445
    const-string p2, "Collection contains no element matching the predicate."

    .line 446
    .line 447
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw p1

    .line 451
    :cond_f
    iget-object p2, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 452
    .line 453
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 454
    .line 455
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 459
    .line 460
    .line 461
    move-result p1

    .line 462
    if-eqz p1, :cond_10

    .line 463
    .line 464
    goto :goto_6

    .line 465
    :cond_10
    new-instance v2, Lcom/fsck/k9/notification/RemoveNotificationsResult;

    .line 466
    .line 467
    invoke-direct {v2, v1, v0, v3, v4}, Lcom/fsck/k9/notification/RemoveNotificationsResult;-><init>(Lcom/fsck/k9/notification/NotificationData;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    .line 469
    .line 470
    :goto_6
    monitor-exit p0

    .line 471
    return-object v2

    .line 472
    :goto_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 473
    throw p1
.end method

.method public tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/work/impl/StartStopToken;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/work/impl/StartStopToken;-><init>(Landroidx/work/impl/model/WorkGenerationalId;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    check-cast v0, Landroidx/work/impl/StartStopToken;

    .line 18
    .line 19
    return-object v0
.end method
