.class public final synthetic Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda12;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast p1, Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItemFromView(Landroid/view/View;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->listItemListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->toggleMessageSelect(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p1, Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItemFromView(Landroid/view/View;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->listItemListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onToggleMessageFlag(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void

    .line 61
    :pswitch_1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->listItemListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_2
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 72
    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_3
    iget-boolean v2, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->moreMessages:Z

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-boolean v2, v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 86
    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    iget-wide v6, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 106
    .line 107
    new-instance v3, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JI)V

    .line 111
    .line 112
    .line 113
    const-string p0, "loadMoreMessages"

    .line 114
    .line 115
    invoke-virtual {v4, p0, v3}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_4
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteSearch:Z

    .line 120
    .line 121
    if-eqz v2, :cond_8

    .line 122
    .line 123
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 124
    .line 125
    if-nez v2, :cond_5

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_6
    iget p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    .line 136
    .line 137
    const/4 v3, 0x1

    .line 138
    if-gt v3, p1, :cond_7

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ge p1, v3, :cond_7

    .line 145
    .line 146
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-interface {v2, p1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    invoke-interface {v2, v3, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :goto_2
    move-object v9, v2

    .line 162
    goto :goto_3

    .line 163
    :cond_7
    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateFooterText(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :goto_3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iget-wide v7, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 175
    .line 176
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    iget-object v4, p1, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 195
    .line 196
    iget-object p0, v4, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 197
    .line 198
    new-instance v3, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;

    .line 199
    .line 200
    invoke-direct/range {v3 .. v9}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;-><init>(Lcom/fsck/k9/controller/MessagingController;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 204
    .line 205
    .line 206
    :cond_8
    :goto_4
    return-void

    .line 207
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItemFromView(Landroid/view/View;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-nez p1, :cond_9

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_9
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->listItemListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 218
    .line 219
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onMessageClicked(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V

    .line 220
    .line 221
    .line 222
    :goto_5
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
