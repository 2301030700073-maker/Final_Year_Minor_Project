.class public final Lcom/fsck/k9/activity/MessageLoaderHelper$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/AsyncTaskLoader;
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/fsck/k9/controller/MessagingController;->SYNC_FLAGS:Ljava/util/EnumSet;

    .line 5
    .line 6
    const-class p1, Lcom/fsck/k9/controller/MessagingController;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    move-object v2, p1

    .line 13
    check-cast v2, Lcom/fsck/k9/controller/MessagingController;

    .line 14
    .line 15
    new-instance v0, Lcom/fsck/k9/ui/message/LocalMessageLoader;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 24
    .line 25
    iget-boolean v5, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->onlyLoadMetadata:Z

    .line 26
    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/message/LocalMessageLoader;-><init>(Landroid/content/Context;Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;Z)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    const-string p0, "loader id must be message loader id"

    .line 32
    .line 33
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public onLoadFinished(Landroidx/loader/content/AsyncTaskLoader;Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 4
    .line 5
    move-object/from16 v1, p1

    .line 6
    .line 7
    iget v1, v1, Landroidx/loader/content/AsyncTaskLoader;->mId:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_7

    .line 11
    .line 12
    move-object/from16 v1, p0

    .line 13
    .line 14
    iget-object v1, v1, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 15
    .line 16
    iget-object v3, v1, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 17
    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 22
    .line 23
    iget-object v3, v1, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 24
    .line 25
    const-string v4, "unexpected call when callback is already detached"

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v3}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onMessageDataLoadFailed()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    if-eqz v3, :cond_6

    .line 40
    .line 41
    invoke-interface {v3, v0}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onMessageDataLoadFinished(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 45
    .line 46
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 49
    .line 50
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v3, v1, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 55
    .line 56
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_PARTIAL:Lnet/thunderbird/core/common/mail/Flag;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 59
    .line 60
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startDownloadingMessageBody(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    iget-boolean v3, v1, Lcom/fsck/k9/activity/MessageLoaderHelper;->onlyLoadMetadata:Z

    .line 74
    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    iget-object v5, v1, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 78
    .line 79
    xor-int/lit8 v6, v0, 0x1

    .line 80
    .line 81
    iget-object v8, v5, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v4, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 84
    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    const/16 v17, 0x0

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    const/4 v11, 0x0

    .line 93
    const/4 v12, 0x0

    .line 94
    const/4 v13, 0x0

    .line 95
    const/4 v14, 0x0

    .line 96
    const/4 v15, 0x0

    .line 97
    invoke-direct/range {v4 .. v17}, Lcom/fsck/k9/mailstore/MessageViewInfo;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/helper/UnsubscribeUri;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v4}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onDecodeMessageFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 105
    .line 106
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeCryptoOperation(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeDecodeMessage()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_6
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_7
    const-string v0, "loader id must be message loader id"

    .line 125
    .line 126
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 0

    .line 1
    iget p0, p1, Landroidx/loader/content/AsyncTaskLoader;->mId:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string p0, "loader id must be message loader id"

    .line 8
    .line 9
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
