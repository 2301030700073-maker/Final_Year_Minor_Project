.class public final Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;->this$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;->this$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v2, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 24
    .line 25
    invoke-virtual {v2, p1, v1, v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->startSearch(Ljava/lang/String;Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->collapseSearchView$1()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_1
    const-string p0, "fragmentListener"

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method public onSwipeAction(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/action/SwipeAction;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p2, Lnet/thunderbird/core/common/action/SwipeAction;->removesItem:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;->this$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleSelection:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 12
    .line 13
    if-ne p2, v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->itemSelectedOnSwipeStart:Z

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v0, 0x1

    .line 22
    packed-switch p2, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->resetSwipedView(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onMove(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getGeneralSettingsManager$2()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iget-object p2, p2, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 63
    .line 64
    iget-boolean p2, p2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 69
    .line 70
    const p1, 0x7f09019f

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showDialog$1(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onSpamConfirmed(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_2
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onDelete(Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_3
    iget-object p2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->setupArchiveFolderDialogFragmentFactory$delegate:Lkotlin/Lazy;

    .line 94
    .line 95
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$Factory;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 102
    .line 103
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    new-instance p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;

    .line 116
    .line 117
    invoke-direct {p2}, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance v2, Lkotlin/Pair;

    .line 121
    .line 122
    const-string v3, "SetupArchiveFolderDialogFragmentFactory_accountUuid"

    .line 123
    .line 124
    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    new-array p1, v0, [Lkotlin/Pair;

    .line 128
    .line 129
    aput-object v2, p1, v1

    .line 130
    .line 131
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 136
    .line 137
    .line 138
    const-string p1, "SetupArchiveFolderDialogFragmentFactory"

    .line 139
    .line 140
    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :pswitch_4
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 145
    .line 146
    if-eqz p0, :cond_3

    .line 147
    .line 148
    sget-object p1, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const p2, 0x7f1201de

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_3
    const-string p0, "Required value was null."

    .line 170
    .line 171
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_5
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    sget-object p2, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;

    .line 184
    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;)Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-nez p2, :cond_4

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_4
    iget-boolean p2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 193
    .line 194
    if-eqz p2, :cond_5

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 201
    .line 202
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 203
    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance p2, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    invoke-direct {p2, p0, v0}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;-><init>(Lcom/beetstra/jutf7/Base64Util;I)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 213
    .line 214
    const-string v2, "archiveThreads"

    .line 215
    .line 216
    invoke-direct {v0, p0, v2, p2, v1}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    new-instance p2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    const/16 v1, 0x14

    .line 222
    .line 223
    invoke-direct {p2, v1, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p0, Lcom/fsck/k9/controller/MessagingController;

    .line 229
    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_5
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 239
    .line 240
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 241
    .line 242
    invoke-virtual {p0, p1}, Lcom/beetstra/jutf7/Base64Util;->archiveMessages(Ljava/util/List;)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :pswitch_6
    sget-object p2, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 247
    .line 248
    iget-boolean v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 249
    .line 250
    xor-int/2addr v0, v1

    .line 251
    invoke-virtual {p0, p1, p2, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->setFlag(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :pswitch_7
    sget-object p2, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 256
    .line 257
    iget-boolean v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 258
    .line 259
    xor-int/2addr v0, v1

    .line 260
    invoke-virtual {p0, p1, p2, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->setFlag(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->toggleMessageSelect(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V

    .line 265
    .line 266
    .line 267
    :goto_0
    :pswitch_9
    return-void

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
