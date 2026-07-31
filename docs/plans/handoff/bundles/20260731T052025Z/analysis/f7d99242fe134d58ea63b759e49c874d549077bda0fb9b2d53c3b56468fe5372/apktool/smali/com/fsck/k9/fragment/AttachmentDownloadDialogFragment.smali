.class public Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public messagingController:Lcom/fsck/k9/controller/MessagingController;

.field public messagingListener:Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    instance-of p1, p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:I

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v0, "size"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-string v2, "message"

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v2, 0x6

    .line 16
    invoke-static {v2}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->values(I)[I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    array-length v3, v2

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    const/4 v6, 0x1

    .line 24
    if-ge v5, v3, :cond_1

    .line 25
    .line 26
    aget v7, v2, v5

    .line 27
    .line 28
    const-wide/16 v8, 0x2800

    .line 29
    .line 30
    invoke-static {v7}, Lcoil3/size/ViewSizeResolver$-CC;->getSize(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v10

    .line 34
    mul-long/2addr v10, v8

    .line 35
    cmp-long v8, v0, v10

    .line 36
    .line 37
    if-gez v8, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v7, v6

    .line 44
    :goto_1
    new-instance v2, Landroid/app/ProgressDialog;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v7}, Lcoil3/size/ViewSizeResolver$-CC;->getSize(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v8

    .line 60
    div-long/2addr v0, v8

    .line 61
    long-to-int p1, v0

    .line 62
    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 69
    .line 70
    .line 71
    packed-switch v7, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    throw p0

    .line 76
    :pswitch_0
    const-string p1, "PiB"

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :pswitch_1
    const-string p1, "TiB"

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :pswitch_2
    const-string p1, "GiB"

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :pswitch_3
    const-string p1, "MiB"

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :pswitch_4
    const-string p1, "KiB"

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :pswitch_5
    const-string p1, "B"

    .line 92
    .line 93
    :goto_2
    const-string v0, "%1d/%2d "

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 103
    .line 104
    .line 105
    new-instance p1, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;

    .line 106
    .line 107
    invoke-direct {p1, v2, v7}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;-><init>(Landroid/app/ProgressDialog;I)V

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingListener:Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;

    .line 111
    .line 112
    sget-object p1, Lcom/fsck/k9/controller/MessagingController;->SYNC_FLAGS:Ljava/util/EnumSet;

    .line 113
    .line 114
    const-class p1, Lcom/fsck/k9/controller/MessagingController;

    .line 115
    .line 116
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcom/fsck/k9/controller/MessagingController;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingListener:Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;

    .line 125
    .line 126
    invoke-virtual {p1, p0}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 127
    .line 128
    .line 129
    return-object v2

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingListener:Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
