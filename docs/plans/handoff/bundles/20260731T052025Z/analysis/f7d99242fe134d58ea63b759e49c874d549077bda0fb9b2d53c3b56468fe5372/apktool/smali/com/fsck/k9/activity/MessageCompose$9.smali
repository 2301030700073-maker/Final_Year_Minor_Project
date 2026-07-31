.class public final Lcom/fsck/k9/activity/MessageCompose$9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;

.field public final synthetic val$adapter:Lcom/fsck/k9/activity/compose/IdentityAdapter;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/activity/compose/IdentityAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$9;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$9;->val$adapter:Lcom/fsck/k9/activity/compose/IdentityAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$9;->val$adapter:Lcom/fsck/k9/activity/compose/IdentityAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;

    .line 10
    .line 11
    iget-object p2, p1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$9;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-nez v0, :cond_6

    .line 25
    .line 26
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v0, v2, v3

    .line 33
    .line 34
    aput-object p2, v2, v1

    .line 35
    .line 36
    const-string v0, "Switching account from %s to %s"

    .line 37
    .line 38
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 42
    .line 43
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    if-ne v0, v2, :cond_0

    .line 47
    .line 48
    iput-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 49
    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 65
    .line 66
    iput-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 69
    .line 70
    const-string p2, "Account switch, saving new draft in new account"

    .line 71
    .line 72
    new-array v4, v3, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {p2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 78
    .line 79
    invoke-virtual {p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->hasDraftsFolder()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-nez p2, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-boolean p2, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 87
    .line 88
    if-nez p2, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    iput-boolean v3, p0, Lcom/fsck/k9/activity/MessageCompose;->finishAfterDraftSaved:Z

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->performSaveAfterChecks()V

    .line 94
    .line 95
    .line 96
    :goto_1
    if-eqz v0, :cond_5

    .line 97
    .line 98
    new-array p2, v1, [Ljava/lang/Object;

    .line 99
    .line 100
    aput-object v0, p2, v3

    .line 101
    .line 102
    const-string v4, "Account switch, deleting draft from previous account: %d"

    .line 103
    .line 104
    invoke-static {v4, p2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    invoke-virtual {p2, v2, v4, v5, v3}, Lcom/fsck/k9/controller/MessagingController;->deleteDraft(Lnet/thunderbird/core/android/account/LegacyAccountDto;JZ)V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->dismissActiveInAppNotifications()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->triggerIfNeededSentFolderNotFoundInAppNotification()V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 125
    .line 126
    invoke-virtual {p2, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onSwitchAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 127
    .line 128
    .line 129
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 132
    .line 133
    iput-object v0, p2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 134
    .line 135
    :cond_6
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 136
    .line 137
    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 138
    .line 139
    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 140
    .line 141
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->chooseIdentityView:Lcom/google/android/material/textview/MaterialTextView;

    .line 142
    .line 143
    iget-object v0, p1, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 152
    .line 153
    .line 154
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 155
    .line 156
    invoke-virtual {p2, p1}, Lcom/fsck/k9/backend/imap/ImapSync;->setIdentity(Lnet/thunderbird/core/android/account/Identity;)V

    .line 157
    .line 158
    .line 159
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 162
    .line 163
    .line 164
    return-void
.end method
