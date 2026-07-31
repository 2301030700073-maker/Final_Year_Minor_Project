.class public final Lcom/fsck/k9/activity/MessageCompose$12;
.super Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 9
    const/4 v0, 0x2

    iput v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/activity/MessageCompose$12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final declared-synchronized synchronizeMailboxFailed$com$fsck$k9$controller$MemorizingMessagingListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageCompose$12;->getMemory(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 p2, 0x3

    .line 7
    iput p2, p1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:I

    .line 8
    .line 9
    iput-object p4, p1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->failureMessage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method private final declared-synchronized synchronizeMailboxFinished$com$fsck$k9$controller$MemorizingMessagingListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageCompose$12;->getMemory(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 p2, 0x2

    .line 7
    iput p2, p1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method private final declared-synchronized synchronizeMailboxProgress$com$fsck$k9$controller$MemorizingMessagingListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;JII)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageCompose$12;->getMemory(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput p4, p1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderCompleted:I

    .line 7
    .line 8
    iput p5, p1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method private final declared-synchronized synchronizeMailboxStarted$com$fsck$k9$controller$MemorizingMessagingListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageCompose$12;->getMemory(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 p2, 0x1

    .line 7
    iput p2, p1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:I

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput p2, p1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderCompleted:I

    .line 11
    .line 12
    iput p2, p1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method


# virtual methods
.method public getMemory(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ":"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iput v2, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:I

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    iput-object v3, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->failureMessage:Ljava/lang/String;

    .line 45
    .line 46
    iput v2, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderCompleted:I

    .line 47
    .line 48
    iput v2, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I

    .line 49
    .line 50
    iput-object p1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 51
    .line 52
    iput-wide p2, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderId:J

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_0
    return-object v0
.end method

.method public loadMessageRemoteFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/fsck/k9/activity/MessageLoaderHelper;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Landroidx/core/app/ActivityRecreator$1;

    .line 14
    .line 15
    const/16 v2, 0xe

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, v2, p0, p1, v3}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public loadMessageRemoteFinished(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/fsck/k9/activity/MessageLoaderHelper;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-wide v4, p2

    .line 19
    move-object v6, p4

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public messageUidChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 17
    .line 18
    iget-wide v2, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 19
    .line 20
    iget-object v0, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    cmp-long p1, p2, v2

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object p2, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 49
    .line 50
    iget-wide p3, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance p1, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 56
    .line 57
    invoke-direct {p1, p3, p4, p2, p5}, Lapp/k9mail/legacy/message/controller/MessageReference;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized synchronizeMailboxFailed(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/MessageCompose$12;->synchronizeMailboxFailed$com$fsck$k9$controller$MemorizingMessagingListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized synchronizeMailboxFinished(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageCompose$12;->synchronizeMailboxFinished$com$fsck$k9$controller$MemorizingMessagingListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized synchronizeMailboxProgress(Lnet/thunderbird/core/android/account/LegacyAccountDto;JII)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/fsck/k9/activity/MessageCompose$12;->synchronizeMailboxProgress$com$fsck$k9$controller$MemorizingMessagingListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;JII)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized synchronizeMailboxStarted(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageCompose$12;->synchronizeMailboxStarted$com$fsck$k9$controller$MemorizingMessagingListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
