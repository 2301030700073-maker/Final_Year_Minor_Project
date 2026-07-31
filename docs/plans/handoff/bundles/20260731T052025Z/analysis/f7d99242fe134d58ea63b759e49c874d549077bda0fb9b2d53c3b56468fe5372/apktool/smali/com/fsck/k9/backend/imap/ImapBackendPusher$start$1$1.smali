.class public final Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;->this$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget p2, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Number;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object p2, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;->this$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 13
    .line 14
    mul-int/lit8 p1, p1, 0x3c

    .line 15
    .line 16
    int-to-long v0, p1

    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    mul-long/2addr v0, v2

    .line 20
    iput-wide v0, p2, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentIdleRefreshMs:J

    .line 21
    .line 22
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;->this$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->lock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lcom/fsck/k9/backend/imap/ImapFolderPusher;

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/fsck/k9/backend/imap/ImapFolderPusher;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    monitor-exit p1

    .line 56
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p0

    .line 59
    :goto_1
    monitor-exit p1

    .line 60
    throw p0

    .line 61
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget-object p2, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;->this$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 68
    .line 69
    iput p1, p2, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentMaxPushFolders:I

    .line 70
    .line 71
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;->this$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->updateFolders$1()V

    .line 74
    .line 75
    .line 76
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
