.class public final Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/compose/AttachmentPresenter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$1(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$2(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$3(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/AsyncTaskLoader;
    .locals 3

    .line 1
    iget p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 5
    .line 6
    const-class v1, Landroid/net/Uri;

    .line 7
    .line 8
    const-string v2, "attachment"

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v2, v1}, Landroidx/sqlite/SQLite;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/net/Uri;

    .line 18
    .line 19
    new-instance p2, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->context:Landroid/content/Context;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->inlineAttachments:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/fsck/k9/activity/misc/InlineAttachment;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/fsck/k9/activity/misc/InlineAttachment;->attachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 32
    .line 33
    invoke-direct {p2, v1, p0, v0}, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/misc/Attachment;I)V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :pswitch_0
    invoke-static {p2, v2, v1}, Landroidx/sqlite/SQLite;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/net/Uri;

    .line 42
    .line 43
    new-instance p2, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->context:Landroid/content/Context;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 54
    .line 55
    invoke-direct {p2, v1, p0, v0}, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/misc/Attachment;I)V

    .line 56
    .line 57
    .line 58
    return-object p2

    .line 59
    :pswitch_1
    invoke-static {p2, v2, v1}, Landroidx/sqlite/SQLite;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/net/Uri;

    .line 64
    .line 65
    new-instance p2, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->context:Landroid/content/Context;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    invoke-direct {p2, v0, p0, p1}, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/misc/Attachment;I)V

    .line 79
    .line 80
    .line 81
    return-object p2

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLoadFinished(Landroidx/loader/content/AsyncTaskLoader;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    sget-object v2, Lcom/fsck/k9/message/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p2, Lcom/fsck/k9/activity/misc/Attachment;

    .line 13
    .line 14
    iget p1, p1, Landroidx/loader/content/AsyncTaskLoader;->mId:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl;->destroyLoader(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p2, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 22
    .line 23
    iget-object v0, p2, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->inlineAttachments:Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    if-ne p1, v2, :cond_0

    .line 28
    .line 29
    new-instance p1, Lcom/fsck/k9/activity/misc/InlineAttachment;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/fsck/k9/activity/misc/InlineAttachment;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/fsck/k9/activity/misc/InlineAttachment;->contentId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {p1, v2, p2}, Lcom/fsck/k9/activity/misc/InlineAttachment;-><init>(Ljava/lang/String;Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :goto_0
    new-instance p1, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance p2, Landroidx/fragment/app/Fragment$1;

    .line 55
    .line 56
    invoke-direct {p2, v1, p0}, Landroidx/fragment/app/Fragment$1;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_0
    check-cast p2, Lcom/fsck/k9/activity/misc/Attachment;

    .line 64
    .line 65
    iget p1, p1, Landroidx/loader/content/AsyncTaskLoader;->mId:I

    .line 66
    .line 67
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl;->destroyLoader(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    iget-object v0, p2, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    iget-object v4, p2, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 86
    .line 87
    if-ne v4, v2, :cond_2

    .line 88
    .line 89
    invoke-virtual {v3, p2}, Lcom/beetstra/jutf7/Base64Util;->updateAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, p2}, Lcom/beetstra/jutf7/Base64Util;->removeAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    new-instance p1, Landroid/os/Handler;

    .line 103
    .line 104
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance p2, Landroidx/fragment/app/Fragment$1;

    .line 108
    .line 109
    invoke-direct {p2, v1, p0}, Landroidx/fragment/app/Fragment$1;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    :goto_2
    return-void

    .line 116
    :pswitch_1
    check-cast p2, Lcom/fsck/k9/activity/misc/Attachment;

    .line 117
    .line 118
    iget p1, p1, Landroidx/loader/content/AsyncTaskLoader;->mId:I

    .line 119
    .line 120
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl;->destroyLoader(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 128
    .line 129
    iget-object v0, p2, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_3

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_3
    iget-object v2, p2, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 139
    .line 140
    sget-object v3, Lcom/fsck/k9/message/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 141
    .line 142
    if-ne v2, v3, :cond_4

    .line 143
    .line 144
    invoke-virtual {v1, p2}, Lcom/beetstra/jutf7/Base64Util;->updateAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->initAttachmentContentLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p2}, Lcom/beetstra/jutf7/Base64Util;->removeAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 158
    .line 159
    .line 160
    :goto_3
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLoaderReset(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method
