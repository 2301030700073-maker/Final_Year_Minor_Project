.class public final Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;
.super Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public folderCompleted:I

.field public folderTotal:I

.field public final lock:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 19
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    return-void
.end method

.method private final getFolderCompleted$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderCompleted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    .line 10
    throw p0
.end method

.method private final synchronizeMailboxHeadersFinished$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)V
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
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter p1

    .line 10
    const/4 p2, 0x0

    .line 11
    :try_start_0
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderCompleted:I

    .line 12
    .line 13
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p1

    .line 16
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1

    .line 36
    throw p0
.end method

.method private final synchronizeMailboxHeadersProgress$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;II)V
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
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iput p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderCompleted:I

    .line 11
    .line 12
    iput p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p1

    .line 15
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit p1

    .line 35
    throw p0
.end method

.method private final synchronizeMailboxProgress$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;JII)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iput p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderCompleted:I

    .line 8
    .line 9
    iput p5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p1

    .line 12
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit p1

    .line 32
    throw p0
.end method

.method private final synchronizeMailboxStarted$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->updateForMe$1(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 25
    .line 26
    invoke-virtual {p1, p2, p3, v0}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->folderLoading(JZ)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter p1

    .line 32
    const/4 p2, 0x0

    .line 33
    :try_start_0
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderCompleted:I

    .line 34
    .line 35
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit p1

    .line 38
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 39
    .line 40
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit p1

    .line 58
    throw p0

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public final checkMailFinished()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final enableProgressIndicator(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getFolderCompleted()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderCompleted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    .line 15
    throw p0

    .line 16
    :pswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->getFolderCompleted$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remoteSearchFailed()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 11
    .line 12
    new-instance v1, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v2, 0x7

    .line 15
    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 25
    .line 26
    new-instance v1, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remoteSearchFinished(ILjava/util/List;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x7f12039c

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 18
    .line 19
    invoke-virtual {v0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-array p2, v4, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object p1, p2, v5

    .line 56
    .line 57
    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 76
    .line 77
    invoke-virtual {v0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    .line 89
    .line 90
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 91
    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_1

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-array p2, v4, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object p1, p2, v5

    .line 114
    .line 115
    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {v0, p0}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remoteSearchServerQueryComplete(II)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x7f100009

    .line 4
    .line 5
    .line 6
    const v2, 0x7f10000a

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x2

    .line 13
    const/4 v5, 0x1

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 20
    .line 21
    invoke-virtual {v0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    if-le p1, p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-array v7, v4, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object v6, v7, v3

    .line 43
    .line 44
    aput-object p1, v7, v5

    .line 45
    .line 46
    invoke-virtual {v1, v2, p2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-array v5, v5, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v2, v5, v3

    .line 62
    .line 63
    invoke-virtual {p2, v1, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 89
    .line 90
    invoke-virtual {v0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 91
    .line 92
    .line 93
    if-eqz p2, :cond_1

    .line 94
    .line 95
    if-le p1, p2, :cond_1

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-array v7, v4, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object v6, v7, v3

    .line 112
    .line 113
    aput-object p1, v7, v5

    .line 114
    .line 115
    invoke-virtual {v1, v2, p2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    new-array v5, v5, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v2, v5, v3

    .line 131
    .line 132
    invoke-virtual {p2, v1, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remoteSearchStarted()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x7f120567

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->updateFooter(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synchronizeMailboxFailed(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 10
    .line 11
    iget-object v0, v1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->updateForMe(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2, p3, v2}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->folderLoading(JZ)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_0
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 33
    .line 34
    iget-object v0, v1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->updateForMe$1(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2, p3, v2}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->folderLoading(JZ)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synchronizeMailboxFinished(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 10
    .line 11
    iget-object v0, v1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->updateForMe(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2, p3, v2}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->folderLoading(JZ)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_0
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 30
    .line 31
    iget-object v0, v1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->updateForMe$1(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2, p3, v2}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->folderLoading(JZ)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synchronizeMailboxHeadersFinished(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

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
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    const/4 p2, 0x0

    .line 16
    :try_start_0
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderCompleted:I

    .line 17
    .line 18
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit p1

    .line 21
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit p1

    .line 41
    throw p0

    .line 42
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->synchronizeMailboxHeadersFinished$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synchronizeMailboxHeadersProgress(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

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
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iput p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderCompleted:I

    .line 16
    .line 17
    iput p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit p1

    .line 20
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit p1

    .line 40
    throw p0

    .line 41
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->synchronizeMailboxHeadersProgress$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;II)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synchronizeMailboxProgress(Lnet/thunderbird/core/android/account/LegacyAccountDto;JII)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iput p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderCompleted:I

    .line 13
    .line 14
    iput p5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p1

    .line 17
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    monitor-exit p1

    .line 38
    throw p0

    .line 39
    :pswitch_0
    move-object v0, p0

    .line 40
    move-object v1, p1

    .line 41
    move-wide v2, p2

    .line 42
    move v4, p4

    .line 43
    move v5, p5

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->synchronizeMailboxProgress$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;JII)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synchronizeMailboxStarted(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->updateForMe(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    check-cast p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->progress(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    check-cast p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 30
    .line 31
    invoke-virtual {p1, p2, p3, v0}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->folderLoading(JZ)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter p1

    .line 37
    const/4 p2, 0x0

    .line 38
    :try_start_0
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderCompleted:I

    .line 39
    .line 40
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    monitor-exit p1

    .line 43
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 44
    .line 45
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit p1

    .line 63
    throw p0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->synchronizeMailboxStarted$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public updateForMe(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    :cond_1
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_2
    const-string p0, "accountUuids"

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0

    .line 53
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public updateForMe$1(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->this$0:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    :cond_1
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_2
    const-string p0, "accountUuids"

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0

    .line 53
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 54
    return p0
.end method
