.class public final Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;
.implements Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDownloadErrorMessageNotFound()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageTopView;->downloadRemainderButton:Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const v0, 0x7f120621

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p0, "downloadRemainderButton"

    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    const-string p0, "messageTopView"

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v1
.end method

.method public onDownloadErrorNetworkError()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageTopView;->downloadRemainderButton:Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const v0, 0x7f120624

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p0, "downloadRemainderButton"

    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    const-string p0, "messageTopView"

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v1
.end method

.method public onMenuItemClick(I)V
    .locals 1

    .line 1
    const v0, 0x7f09036e

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onReply$1()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const v0, 0x7f09036f

    .line 13
    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onReplyAll$1()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const v0, 0x7f0901ff

    .line 22
    .line 23
    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onForward$1()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    const v0, 0x7f090200

    .line 31
    .line 32
    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onForwardAsAttachment$1()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    const v0, 0x7f0901c1

    .line 40
    .line 41
    .line 42
    if-ne p1, v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onEditAsNewMessage$1()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    const v0, 0x7f0903c5

    .line 49
    .line 50
    .line 51
    if-ne p1, v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onSendAlternate()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_5
    const-string p0, "Missing handler for reply menu item "

    .line 58
    .line 59
    invoke-static {p0, p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onMessageDataLoadFailed()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f120622

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showProgressThreshold:Ljava/lang/Long;

    .line 20
    .line 21
    return-void
.end method

.method public onMessageDataLoadFinished(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isOutbox$1()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "messageTopView"

    .line 18
    .line 19
    if-eqz v1, :cond_9

    .line 20
    .line 21
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 22
    .line 23
    const-string v5, "account"

    .line 24
    .line 25
    if-eqz v4, :cond_8

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-boolean v7, v1, Lcom/fsck/k9/ui/messageview/MessageTopView;->showAccountIndicator:Z

    .line 32
    .line 33
    invoke-virtual {v6, p1, v4, v0, v7}, Lcom/fsck/k9/view/MessageHeader;->populate(Lcom/fsck/k9/mail/internet/MimeMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 45
    .line 46
    if-eqz v0, :cond_7

    .line 47
    .line 48
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->openPgpProvider:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageHeader;->setCryptoStatusLoading()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v2

    .line 68
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    const p1, 0x7f120315

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setSubject(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 106
    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setToLoadingState()V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showProgressThreshold:Ljava/lang/Long;

    .line 113
    .line 114
    iget p1, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 115
    .line 116
    const/4 v0, 0x7

    .line 117
    if-lt p1, v0, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->markMessageAsOpened()V

    .line 120
    .line 121
    .line 122
    :cond_4
    return-void

    .line 123
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v2

    .line 127
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v2

    .line 131
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v2

    .line 135
    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v2

    .line 139
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v2
.end method

.method public onMessageViewInfoLoadFailed(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->preferredUnsubscribeUri:Lcom/fsck/k9/helper/UnsubscribeUri;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showProgressThreshold:Ljava/lang/Long;

    .line 10
    .line 11
    return-void
.end method

.method public onMessageViewInfoLoadFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->preferredUnsubscribeUri:Lcom/fsck/k9/helper/UnsubscribeUri;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->preferredUnsubscribeUri:Lcom/fsck/k9/helper/UnsubscribeUri;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showProgressThreshold:Ljava/lang/Long;

    .line 17
    .line 18
    return-void
.end method

.method public restartMessageCryptoProcessing()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setToLoadingState()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearCryptoOperation()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManagerImpl;->destroyLoader(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 25
    .line 26
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeCryptoOperation(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeDecodeMessage()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    const-string p0, "messageLoaderHelper"

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_2
    const-string p0, "messageTopView"

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1
.end method

.method public setLoadingProgress(II)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showProgressThreshold:Ljava/lang/Long;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    const-wide/32 v0, 0x7a120

    .line 12
    .line 13
    .line 14
    add-long/2addr p1, v0

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showProgressThreshold:Ljava/lang/Long;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    cmp-long v1, v1, v3

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    cmp-long v0, v1, v5

    .line 41
    .line 42
    if-lez v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void

    .line 46
    :cond_2
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showProgressThreshold:Ljava/lang/Long;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    if-eqz p0, :cond_9

    .line 56
    .line 57
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->isShowingProgress:Z

    .line 58
    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    const/4 p2, 0x1

    .line 66
    invoke-virtual {p1, p2}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChild(I)V

    .line 67
    .line 68
    .line 69
    iput-boolean p2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->isShowingProgress:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    const-string/jumbo p0, "viewAnimator"

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_4
    int-to-float p1, p1

    .line 80
    int-to-float p2, p2

    .line 81
    div-float/2addr p1, p2

    .line 82
    const p2, 0x446d8000    # 950.0f

    .line 83
    .line 84
    .line 85
    mul-float/2addr p1, p2

    .line 86
    float-to-int p1, p1

    .line 87
    iget-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    .line 88
    .line 89
    const-string v1, "progressBar"

    .line 90
    .line 91
    if-eqz p2, :cond_8

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    .line 98
    .line 99
    if-le p1, p2, :cond_6

    .line 100
    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    const-string v0, "progress"

    .line 104
    .line 105
    filled-new-array {p2, p1}, [I

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const-wide/16 p1, 0xb4

    .line 114
    .line 115
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_6
    if-eqz p0, :cond_7

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_9
    const-string p0, "messageTopView"

    .line 142
    .line 143
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0
.end method

.method public startIntentSenderForMessageLoaderHelper(Landroid/content/IntentSender;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isActive:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showProgressThreshold:Ljava/lang/Long;

    .line 14
    .line 15
    const/16 v0, 0x17c

    .line 16
    .line 17
    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/openintents/openpgp/util/OpenPgpIntentStarter;->startIntentSenderForResult(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "Irrecoverable error calling PendingIntent!"

    .line 23
    .line 24
    new-array v0, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {p0, p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    const/4 p0, 0x1

    .line 30
    return p0
.end method
