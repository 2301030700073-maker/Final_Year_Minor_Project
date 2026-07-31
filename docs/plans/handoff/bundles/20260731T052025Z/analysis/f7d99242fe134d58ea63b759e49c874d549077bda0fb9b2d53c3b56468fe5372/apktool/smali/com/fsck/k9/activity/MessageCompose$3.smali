.class public final Lcom/fsck/k9/activity/MessageCompose$3;
.super Landroidx/activity/OnBackPressedCallback;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/activity/MessageCompose$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$3;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/fsck/k9/activity/MessageCompose$3;->$r8$classId:I

    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$3;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackCancelled()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$3;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast p0, Landroidx/fragment/app/FragmentManager;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "FragmentManager"

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager "

    .line 23
    .line 24
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "cancelBackStackTransition for transition "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    iput-boolean v1, v0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->collapseOps()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 73
    .line 74
    new-instance v2, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-direct {v2, v3, p0}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 81
    .line 82
    if-nez v4, :cond_2

    .line 83
    .line 84
    new-instance v4, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v4, v0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 90
    .line 91
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 99
    .line 100
    .line 101
    iput-boolean v3, p0, Landroidx/fragment/app/FragmentManager;->mHandlingTransitioningOp:Z

    .line 102
    .line 103
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    .line 107
    .line 108
    .line 109
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mHandlingTransitioningOp:Z

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 113
    .line 114
    :cond_3
    return-void

    .line 115
    :pswitch_1
    check-cast p0, Lnet/openid/appauth/JsonUtil$Field;

    .line 116
    .line 117
    invoke-virtual {p0}, Lnet/openid/appauth/JsonUtil$Field;->onBackCancelled()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleOnBackPressed()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose$3;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v4, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 12
    .line 13
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 27
    .line 28
    const v5, 0x800003

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v0, v2

    .line 43
    :goto_0
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object p0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->close()V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    iget-object v0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 56
    .line 57
    sget-object v5, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 58
    .line 59
    if-ne v0, v5, :cond_3

    .line 60
    .line 61
    iget-boolean p0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewOnly:Z

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_2
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageList()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_3
    iget-object v0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->isSearchViewCollapsed$1()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    move v0, v3

    .line 85
    :goto_1
    if-nez v0, :cond_5

    .line 86
    .line 87
    iget-object p0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 88
    .line 89
    if-eqz p0, :cond_d

    .line 90
    .line 91
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->collapseSearchView$1()V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_5
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_c

    .line 101
    .line 102
    iget-object v0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 103
    .line 104
    if-eqz v0, :cond_c

    .line 105
    .line 106
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_c

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 127
    .line 128
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 129
    .line 130
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowUnifiedInbox:Z

    .line 131
    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    iget-object v0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 140
    .line 141
    const-string v1, "unified_folders"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_6

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageHomeActivity;->openUnifiedFolders()V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :cond_6
    invoke-virtual {p0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v3}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_4

    .line 168
    .line 169
    :cond_7
    iget-object v0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->defaultFolderProvider$delegate$1:Lkotlin/Lazy;

    .line 170
    .line 171
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 176
    .line 177
    iget-object v5, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 178
    .line 179
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v5}, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;->getDefaultFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;)J

    .line 183
    .line 184
    .line 185
    move-result-wide v5

    .line 186
    iget-boolean v0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->singleFolderMode:Z

    .line 187
    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    iget-object v0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Ljava/lang/Long;

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_8
    move-object v0, v1

    .line 207
    :goto_2
    if-eqz v0, :cond_a

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 210
    .line 211
    .line 212
    move-result-wide v7

    .line 213
    cmp-long v0, v5, v7

    .line 214
    .line 215
    if-eqz v0, :cond_9

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_9
    invoke-virtual {p0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v3}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_a
    :goto_3
    iget-object p0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 233
    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 240
    .line 241
    sget-object v2, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 242
    .line 243
    if-ne v0, v2, :cond_b

    .line 244
    .line 245
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageHomeActivity;->removeMessageViewContainerFragment()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageViewPlaceHolder()V

    .line 249
    .line 250
    .line 251
    :cond_b
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 252
    .line 253
    invoke-direct {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, p0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v5, v6}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->performSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)V

    .line 263
    .line 264
    .line 265
    iget-object p0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->openFolderTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 266
    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 271
    .line 272
    .line 273
    iput-object v1, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->openFolderTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 274
    .line 275
    iget-object p0, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 276
    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-interface {p0, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->setActive(Z)V

    .line 281
    .line 282
    .line 283
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onFullyActive()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageHomeActivity;->onMessageListDisplayed()V

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_c
    invoke-virtual {p0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v3}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 301
    .line 302
    .line 303
    :cond_d
    :goto_4
    return-void

    .line 304
    :pswitch_0
    check-cast v4, Landroidx/navigation/NavHostController;

    .line 305
    .line 306
    invoke-virtual {v4}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :pswitch_1
    check-cast v4, Landroidx/fragment/app/FragmentManager;

    .line 311
    .line 312
    const/4 p0, 0x3

    .line 313
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    const-string v5, "FragmentManager"

    .line 318
    .line 319
    if-eqz v0, :cond_e

    .line 320
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v6, "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager "

    .line 324
    .line 325
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    :cond_e
    iget-object v0, v4, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Lcom/fsck/k9/activity/MessageCompose$3;

    .line 339
    .line 340
    iget-object v6, v4, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 341
    .line 342
    iput-boolean v3, v4, Landroidx/fragment/app/FragmentManager;->mHandlingTransitioningOp:Z

    .line 343
    .line 344
    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 345
    .line 346
    .line 347
    iput-boolean v2, v4, Landroidx/fragment/app/FragmentManager;->mHandlingTransitioningOp:Z

    .line 348
    .line 349
    iget-object v7, v4, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 350
    .line 351
    if-eqz v7, :cond_17

    .line 352
    .line 353
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    if-nez v7, :cond_10

    .line 358
    .line 359
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 360
    .line 361
    iget-object v8, v4, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 362
    .line 363
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->fragmentsFromRecord(Landroidx/fragment/app/BackStackRecord;)Ljava/util/HashSet;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-direct {v7, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v8

    .line 378
    if-eqz v8, :cond_10

    .line 379
    .line 380
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v8

    .line 384
    check-cast v8, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 385
    .line 386
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    .line 392
    .line 393
    move-result v10

    .line 394
    if-eqz v10, :cond_f

    .line 395
    .line 396
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    check-cast v10, Landroidx/fragment/app/Fragment;

    .line 401
    .line 402
    invoke-interface {v8, v10, v3}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChangeCommitted(Landroidx/fragment/app/Fragment;Z)V

    .line 403
    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_10
    iget-object v6, v4, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 407
    .line 408
    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    :cond_11
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    if-eqz v7, :cond_12

    .line 419
    .line 420
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v7

    .line 424
    check-cast v7, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 425
    .line 426
    iget-object v7, v7, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 427
    .line 428
    if-eqz v7, :cond_11

    .line 429
    .line 430
    iput-boolean v2, v7, Landroidx/fragment/app/Fragment;->mTransitioning:Z

    .line 431
    .line 432
    goto :goto_6

    .line 433
    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    .line 434
    .line 435
    iget-object v7, v4, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 436
    .line 437
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v4, v6, v2, v3}, Landroidx/fragment/app/FragmentManager;->collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    if-eqz v3, :cond_14

    .line 457
    .line 458
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 463
    .line 464
    iget-object v6, v3, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/ArrayList;

    .line 465
    .line 466
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 467
    .line 468
    .line 469
    move-result v7

    .line 470
    if-eqz v7, :cond_13

    .line 471
    .line 472
    const-string v7, "SpecialEffectsController: Completing Back "

    .line 473
    .line 474
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    :cond_13
    invoke-virtual {v3, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController;->processStart(Ljava/util/List;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController;->commitEffects$fragment_release(Ljava/util/List;)V

    .line 481
    .line 482
    .line 483
    goto :goto_7

    .line 484
    :cond_14
    iget-object v2, v4, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 485
    .line 486
    iget-object v2, v2, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    :cond_15
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    if-eqz v3, :cond_16

    .line 497
    .line 498
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 503
    .line 504
    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 505
    .line 506
    if-eqz v3, :cond_15

    .line 507
    .line 508
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 509
    .line 510
    if-nez v6, :cond_15

    .line 511
    .line 512
    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 517
    .line 518
    .line 519
    goto :goto_8

    .line 520
    :cond_16
    iput-object v1, v4, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 521
    .line 522
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 523
    .line 524
    .line 525
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 526
    .line 527
    .line 528
    move-result p0

    .line 529
    if-eqz p0, :cond_1b

    .line 530
    .line 531
    const-string p0, "Op is being set to null"

    .line 532
    .line 533
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .line 535
    .line 536
    new-instance p0, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string v1, "OnBackPressedCallback enabled="

    .line 539
    .line 540
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget-boolean v0, v0, Landroidx/activity/OnBackPressedCallback;->isEnabled:Z

    .line 544
    .line 545
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const-string v0, " for  FragmentManager "

    .line 549
    .line 550
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object p0

    .line 560
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    goto :goto_9

    .line 564
    :cond_17
    iget-boolean v0, v0, Landroidx/activity/OnBackPressedCallback;->isEnabled:Z

    .line 565
    .line 566
    if-eqz v0, :cond_19

    .line 567
    .line 568
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 569
    .line 570
    .line 571
    move-result p0

    .line 572
    if-eqz p0, :cond_18

    .line 573
    .line 574
    const-string p0, "Calling popBackStackImmediate via onBackPressed callback"

    .line 575
    .line 576
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .line 578
    .line 579
    :cond_18
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 580
    .line 581
    .line 582
    goto :goto_9

    .line 583
    :cond_19
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 584
    .line 585
    .line 586
    move-result p0

    .line 587
    if-eqz p0, :cond_1a

    .line 588
    .line 589
    const-string p0, "Calling onBackPressed via onBackPressed callback"

    .line 590
    .line 591
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .line 593
    .line 594
    :cond_1a
    iget-object p0, v4, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 595
    .line 596
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 597
    .line 598
    .line 599
    :cond_1b
    :goto_9
    return-void

    .line 600
    :pswitch_2
    check-cast v4, Lnet/openid/appauth/JsonUtil$Field;

    .line 601
    .line 602
    invoke-virtual {v4}, Lnet/openid/appauth/JsonUtil$Field;->onBackCompleted()V

    .line 603
    .line 604
    .line 605
    return-void

    .line 606
    :pswitch_3
    check-cast v4, Landroidx/compose/ui/window/DialogWrapper$2;

    .line 607
    .line 608
    invoke-virtual {v4, p0}, Landroidx/compose/ui/window/DialogWrapper$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    return-void

    .line 612
    :pswitch_4
    invoke-virtual {p0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 613
    .line 614
    .line 615
    check-cast v4, Lcom/fsck/k9/activity/MessageCompose;

    .line 616
    .line 617
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 618
    .line 619
    invoke-virtual {v4, v2}, Lcom/fsck/k9/activity/MessageCompose;->prepareToFinish(Z)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-nez v0, :cond_1c

    .line 627
    .line 628
    invoke-virtual {p0, v3}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 629
    .line 630
    .line 631
    :cond_1c
    return-void

    .line 632
    nop

    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleOnBackProgressed(Landroidx/activity/BackEventCompat;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$3;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast p0, Landroidx/fragment/app/FragmentManager;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "FragmentManager"

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager "

    .line 23
    .line 24
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 38
    .line 39
    if-eqz v1, :cond_5

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 44
    .line 45
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x1

    .line 54
    invoke-virtual {p0, v1, v3, v4}, Landroidx/fragment/app/FragmentManager;->collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_2

    .line 82
    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v6, "SpecialEffectsController: Processing Progress "

    .line 86
    .line 87
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget v6, p1, Landroidx/activity/BackEventCompat;->progress:F

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v5, v4, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/ArrayList;

    .line 103
    .line 104
    new-instance v6, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_3

    .line 118
    .line 119
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    check-cast v7, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 124
    .line 125
    iget-object v7, v7, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->effects:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Ljava/lang/Iterable;

    .line 136
    .line 137
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    move v7, v3

    .line 146
    :goto_1
    if-ge v7, v6, :cond_1

    .line 147
    .line 148
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, Landroidx/fragment/app/SpecialEffectsController$Effect;

    .line 153
    .line 154
    iget-object v9, v4, Landroidx/fragment/app/DefaultSpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 155
    .line 156
    invoke-virtual {v8, p1, v9}, Landroidx/fragment/app/SpecialEffectsController$Effect;->onProgress(Landroidx/activity/BackEventCompat;Landroid/view/ViewGroup;)V

    .line 157
    .line 158
    .line 159
    add-int/lit8 v7, v7, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_5

    .line 173
    .line 174
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    return-void

    .line 185
    :pswitch_1
    check-cast p0, Lnet/openid/appauth/JsonUtil$Field;

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lnet/openid/appauth/JsonUtil$Field;->onBackProgressed(Landroidx/activity/BackEventCompat;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleOnBackStarted(Landroidx/activity/BackEventCompat;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/fsck/k9/activity/MessageCompose$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$3;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast p0, Landroidx/fragment/app/FragmentManager;

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager "

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "FragmentManager"

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->endAnimatingAwayFragments()V

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroidx/fragment/app/FragmentManager$PrepareBackStackTransitionState;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentManager$PrepareBackStackTransitionState;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    check-cast p0, Lnet/openid/appauth/JsonUtil$Field;

    .line 51
    .line 52
    invoke-virtual {p0}, Lnet/openid/appauth/JsonUtil$Field;->onBackStarted()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
