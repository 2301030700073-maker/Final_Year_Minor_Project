.class public final synthetic Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public isActionSupported(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/action/SwipeAction;)Z
    .locals 3

    .line 1
    iget-wide v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 2
    .line 3
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    packed-switch p2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 19
    .line 20
    .line 21
    return v2

    .line 22
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->isMoveCapable(Lnet/thunderbird/feature/account/AccountId;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_3

    .line 46
    .line 47
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    cmp-long p0, v0, p0

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return v2

    .line 64
    :pswitch_2
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_3

    .line 69
    .line 70
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 71
    .line 72
    if-nez p0, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide p0

    .line 79
    cmp-long p0, v0, p0

    .line 80
    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_3

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_4
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-nez p0, :cond_3

    .line 96
    .line 97
    :goto_0
    :pswitch_5
    const/4 p0, 0x1

    .line 98
    return p0

    .line 99
    :cond_3
    :pswitch_6
    return v2

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x207

    .line 5
    .line 6
    iget-object p2, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v0, 0x7f0700bc

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 35
    .line 36
    iget v1, p2, Landroidx/core/graphics/Insets;->left:I

    .line 37
    .line 38
    add-int/2addr v1, p0

    .line 39
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 40
    .line 41
    iget v1, p2, Landroidx/core/graphics/Insets;->bottom:I

    .line 42
    .line 43
    add-int/2addr v1, p0

    .line 44
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 45
    .line 46
    iget p2, p2, Landroidx/core/graphics/Insets;->right:I

    .line 47
    .line 48
    add-int/2addr p0, p2

    .line 49
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_0
    const-string p0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 58
    .line 59
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public onRefresh()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-wide v4, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 22
    .line 23
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v6, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v2, v1, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 45
    .line 46
    new-instance v1, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    const/4 v7, 0x4

    .line 49
    invoke-direct/range {v1 .. v7}, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    const-string v0, "synchronizeMailbox"

    .line 53
    .line 54
    invoke-virtual {v2, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 77
    .line 78
    new-instance v1, Lcom/fsck/k9/controller/MessagingController$3;

    .line 79
    .line 80
    const/4 v2, 0x2

    .line 81
    invoke-direct {v1, p0, v0, v2}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 82
    .line 83
    .line 84
    const-string v0, "sendPendingMessages"

    .line 85
    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->allAccounts:Z

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v6, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    iget-object v1, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 102
    .line 103
    const/4 v3, 0x1

    .line 104
    const/4 v4, 0x1

    .line 105
    const/4 v5, 0x0

    .line 106
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/controller/MessagingController;->checkMail(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    array-length v1, v0

    .line 115
    const/4 v2, 0x0

    .line 116
    :goto_0
    if-ge v2, v1, :cond_4

    .line 117
    .line 118
    aget-object v3, v0, v2

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v4, v3}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_3

    .line 129
    .line 130
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 131
    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    iget-object v10, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 139
    .line 140
    invoke-virtual {v4, v3}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrNull(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    iget-object v5, v4, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 145
    .line 146
    const/4 v7, 0x1

    .line 147
    const/4 v8, 0x1

    .line 148
    const/4 v9, 0x0

    .line 149
    invoke-virtual/range {v5 .. v10}, Lcom/fsck/k9/controller/MessagingController;->checkMail(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    :goto_1
    return-void

    .line 156
    :cond_5
    const-string p0, "accountUuids"

    .line 157
    .line 158
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/4 p0, 0x0

    .line 162
    throw p0

    .line 163
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onRemoteSearchRequested()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
