.class public final Lcom/fsck/k9/activity/compose/AttachmentPresenter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public actionToPerformAfterWaiting:I

.field public final attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

.field public final attachments:Ljava/util/LinkedHashMap;

.field public final context:Landroid/content/Context;

.field public final inlineAttachments:Ljava/util/LinkedHashMap;

.field public final listener:Lcom/fsck/k9/activity/MessageCompose;

.field public final loaderManager:Landroidx/loader/app/LoaderManagerImpl;

.field public final mAttachmentContentLoaderCallback:Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

.field public final mAttachmentInfoLoaderCallback:Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

.field public final mInlineAttachmentContentLoaderCallback:Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

.field public nextLoaderId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/beetstra/jutf7/Base64Util;Landroidx/loader/app/LoaderManagerImpl;Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:I

    .line 9
    .line 10
    new-instance v2, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

    .line 11
    .line 12
    invoke-direct {v2, p0, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;-><init>(Lcom/fsck/k9/activity/compose/AttachmentPresenter;I)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->mAttachmentInfoLoaderCallback:Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

    .line 16
    .line 17
    new-instance v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;-><init>(Lcom/fsck/k9/activity/compose/AttachmentPresenter;I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->mAttachmentContentLoaderCallback:Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

    .line 23
    .line 24
    new-instance v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;-><init>(Lcom/fsck/k9/activity/compose/AttachmentPresenter;I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->mInlineAttachmentContentLoaderCallback:Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->context:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->listener:Lcom/fsck/k9/activity/MessageCompose;

    .line 39
    .line 40
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->inlineAttachments:Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final addAttachment(Landroid/net/Uri;Ljava/lang/String;ZZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->getNextFreeLoaderId()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/fsck/k9/activity/misc/Attachment;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    sget-object v3, Lcom/fsck/k9/message/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    move-object v2, p1

    .line 25
    move-object v5, p2

    .line 26
    move v6, p3

    .line 27
    move v10, p4

    .line 28
    invoke-direct/range {v1 .. v10}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/message/Attachment$LoadingState;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachmentAndStartLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final addAttachmentAndStartLoader(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->listener:Lcom/fsck/k9/activity/MessageCompose;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/beetstra/jutf7/Base64Util;->addAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 19
    .line 20
    sget-object v1, Lcom/fsck/k9/message/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->initAttachmentInfoLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget-object v1, Lcom/fsck/k9/message/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->initAttachmentContentLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    const-string p0, "Attachment can only be added in URI_ONLY or METADATA state!"

    .line 37
    .line 38
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final checkOkForSendingOrDraftSaving()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/fsck/k9/activity/misc/Attachment;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 30
    .line 31
    iget v2, v2, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Landroidx/loader/app/LoaderManagerImpl;->getLoader(I)Landroidx/loader/content/AsyncTaskLoader;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-boolean v2, v2, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:I

    .line 45
    .line 46
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 51
    .line 52
    invoke-static {v0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eq v2, v1, :cond_3

    .line 57
    .line 58
    if-eq v2, v0, :cond_2

    .line 59
    .line 60
    :goto_0
    return v1

    .line 61
    :cond_2
    const v0, 0x7f1202db

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const v0, 0x7f1202dc

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_1
    const v2, 0x7f1202da

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-instance v3, Lcom/fsck/k9/fragment/ProgressDialogFragment;

    .line 84
    .line 85
    invoke-direct {v3}, Lcom/fsck/k9/fragment/ProgressDialogFragment;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v4, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v5, "title"

    .line 94
    .line 95
    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "message"

    .line 99
    .line 100
    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string/jumbo v0, "waitingForAttachment"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :cond_4
    const/4 p0, 0x0

    .line 118
    return p0
.end method

.method public final getNextFreeLoaderId()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    .line 2
    .line 3
    const/16 v1, 0x3f

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    iput v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    .line 10
    .line 11
    or-int/lit8 p0, v0, 0x40

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const-string p0, "more than 63 attachments? hum."

    .line 15
    .line 16
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final initAttachmentContentLoader(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 2
    .line 3
    sget-object v1, Lcom/fsck/k9/message/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "attachment"

    .line 13
    .line 14
    iget-object v2, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    .line 18
    .line 19
    iget p1, p1, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->mAttachmentContentLoaderCallback:Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0, v1}, Landroidx/loader/app/LoaderManagerImpl;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/AsyncTaskLoader;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "initAttachmentContentLoader can only be called for METADATA state!"

    .line 30
    .line 31
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final initAttachmentInfoLoader(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 2
    .line 3
    sget-object v1, Lcom/fsck/k9/message/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "attachment"

    .line 13
    .line 14
    iget-object v2, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    .line 18
    .line 19
    iget p1, p1, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->mAttachmentInfoLoaderCallback:Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0, v1}, Landroidx/loader/app/LoaderManagerImpl;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/AsyncTaskLoader;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "initAttachmentInfoLoader can only be called for URI_ONLY state!"

    .line 30
    .line 31
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final loadAllAvailableAttachments(Lcom/fsck/k9/mailstore/MessageViewInfo;)Z
    .locals 13

    .line 1
    iget-object p1, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v5, 0x1

    .line 8
    move v10, v5

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v11, v0

    .line 20
    check-cast v11, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 21
    .line 22
    iget-boolean v0, v11, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable:Z

    .line 23
    .line 24
    iget-wide v1, v11, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    .line 25
    .line 26
    iget-object v6, v11, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, v11, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 29
    .line 30
    move-wide v2, v1

    .line 31
    iget-object v1, v11, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-boolean v0, v11, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    .line 37
    .line 38
    move-wide v8, v2

    .line 39
    sget-object v2, Lcom/fsck/k9/message/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 40
    .line 41
    const-string v3, "Received the same attachmentViewInfo twice!"

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v12, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->inlineAttachments:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-virtual {v12, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->getNextFreeLoaderId()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 61
    .line 62
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    const/4 v8, 0x0

    .line 67
    move v9, v5

    .line 68
    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/message/Attachment$LoadingState;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/fsck/k9/activity/misc/InlineAttachment;

    .line 72
    .line 73
    iget-object v2, v11, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    .line 74
    .line 75
    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getContentId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/activity/misc/InlineAttachment;-><init>(Ljava/lang/String;Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, v0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 83
    .line 84
    invoke-virtual {v12, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    new-instance v1, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "attachment"

    .line 93
    .line 94
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    .line 96
    .line 97
    iget v0, v0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 98
    .line 99
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->mInlineAttachmentContentLoaderCallback:Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 102
    .line 103
    invoke-virtual {v3, v0, v1, v2}, Landroidx/loader/app/LoaderManagerImpl;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/AsyncTaskLoader;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return v7

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->getNextFreeLoaderId()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 127
    .line 128
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    const/4 v8, 0x0

    .line 133
    move v9, v5

    .line 134
    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/message/Attachment$LoadingState;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachmentAndStartLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_2
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return v7

    .line 146
    :cond_3
    move v10, v7

    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_4
    return v10
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_5

    .line 3
    .line 4
    const/4 p2, -0x1

    .line 5
    if-eq p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    if-nez p3, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    move v1, v0

    .line 24
    :goto_0
    if-ge v1, p3, :cond_4

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v2, p2, v0, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachment(Landroid/net/Uri;Ljava/lang/String;ZZ)V

    .line 37
    .line 38
    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachment(Landroid/net/Uri;Ljava/lang/String;ZZ)V

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_1
    return-void

    .line 52
    :cond_5
    const-string p0, "onActivityResult must only be called for our request code"

    .line 53
    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
