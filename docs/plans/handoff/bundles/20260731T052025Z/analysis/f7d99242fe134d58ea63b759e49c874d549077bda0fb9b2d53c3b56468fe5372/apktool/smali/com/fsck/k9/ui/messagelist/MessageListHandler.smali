.class public final Lcom/fsck/k9/ui/messagelist/MessageListHandler;
.super Landroid/os/Handler;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public mFragment:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->$r8$classId:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public folderLoading(JZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-static {p0, p2, p3, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const/4 v2, -0x3

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    const/4 v2, -0x2

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroid/content/DialogInterface;

    .line 24
    .line 25
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroid/content/DialogInterface;

    .line 40
    .line 41
    iget p1, p1, Landroid/os/Message;->what:I

    .line 42
    .line 43
    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 54
    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 59
    .line 60
    const/4 v2, 0x4

    .line 61
    if-eq v0, v2, :cond_9

    .line 62
    .line 63
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->getFragmentActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    if-eq v0, v1, :cond_7

    .line 74
    .line 75
    const/4 v3, 0x2

    .line 76
    if-eq v0, v3, :cond_6

    .line 77
    .line 78
    const/4 v3, 0x3

    .line 79
    if-eq v0, v3, :cond_4

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 83
    .line 84
    if-ne p1, v1, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    move v1, v2

    .line 88
    :goto_1
    invoke-interface {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->progress(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->updateTitle()V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Ljava/lang/Long;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 105
    .line 106
    if-ne p1, v1, :cond_8

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    move v1, v2

    .line 110
    :goto_2
    invoke-interface {p0, v3, v4, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->folderLoading(JZ)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_9
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->remoteSearchFinished()V

    .line 115
    .line 116
    .line 117
    :goto_3
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public progress(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public updateFooter(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/app/ActivityRecreator$1;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p0, p1, v2}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
