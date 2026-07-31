.class public final Landroidx/fragment/app/FragmentManager$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final synthetic onMenuClosed$app$k9mail$feature$widget$unread$UnreadWidgetConfigurationFragment$configureMenuHost$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onMenuClosed$com$fsck$k9$ui$managefolders$FolderSettingsFragment$onViewCreated$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onMenuClosed$com$fsck$k9$ui$managefolders$ManageFoldersFragment$onViewCreated$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onMenuClosed$com$fsck$k9$ui$messagelist$LegacyMessageListFragment$onViewCreated$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onMenuClosed$com$fsck$k9$ui$messagelist$MessageListFragment$onViewCreated$2(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onMenuClosed$com$fsck$k9$ui$messageview$MessageViewFragment$onViewCreated$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onMenuClosed$com$fsck$k9$ui$settings$account$AccountSettingsFragment$onViewCreated$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onMenuClosed$com$fsck$k9$ui$settings$general$GeneralSettingsFragment$onViewCreated$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onPrepareMenu$app$k9mail$feature$widget$unread$UnreadWidgetConfigurationFragment$configureMenuHost$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onPrepareMenu$com$fsck$k9$ui$managefolders$FolderSettingsFragment$onViewCreated$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onPrepareMenu$com$fsck$k9$ui$settings$account$AccountSettingsFragment$onViewCreated$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->rootKey:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "debug_preferences"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const p0, 0x7f0e0002

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/high16 p0, 0x7f0e0000

    .line 41
    .line 42
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 53
    .line 54
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isActive:Z

    .line 55
    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const p0, 0x7f0e000d

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 73
    .line 74
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isActive:Z

    .line 75
    .line 76
    if-nez p0, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const p0, 0x7f0e000e

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void

    .line 86
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 93
    .line 94
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isActive:Z

    .line 95
    .line 96
    if-nez p0, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    const p0, 0x7f0e000c

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 103
    .line 104
    .line 105
    :goto_2
    return-void

    .line 106
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const v0, 0x7f0e0004

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
    .line 117
    .line 118
    check-cast p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 119
    .line 120
    const p2, 0x7f0901e6

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    check-cast p2, Landroidx/appcompat/widget/SearchView;

    .line 135
    .line 136
    const v0, 0x7fffffff

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 140
    .line 141
    .line 142
    const v0, 0x7f1202e6

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 153
    .line 154
    const/4 v2, 0x7

    .line 155
    invoke-direct {v0, v2, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 159
    .line 160
    .line 161
    new-instance p2, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity$onCreateOptionsMenu$2;

    .line 162
    .line 163
    invoke-direct {p2, v1, p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity$onCreateOptionsMenu$2;-><init>(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    const v0, 0x7f0e0005

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 180
    .line 181
    .line 182
    const p2, 0x7f090135

    .line 183
    .line 184
    .line 185
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;

    .line 190
    .line 191
    sget p2, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->$r8$clinit:I

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->getViewModel()Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    iget-object p2, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 198
    .line 199
    if-eqz p2, :cond_4

    .line 200
    .line 201
    iget-wide v2, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->folderId:J

    .line 202
    .line 203
    const-wide/16 v4, 0x0

    .line 204
    .line 205
    cmp-long p0, v2, v4

    .line 206
    .line 207
    if-eqz p0, :cond_4

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_4
    const/4 v1, 0x0

    .line 211
    :goto_3
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    const p0, 0x7f0e0012

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :pswitch_7
    check-cast p0, Landroidx/fragment/app/FragmentManager;

    .line 229
    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->dispatchCreateOptionsMenu()Z

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "expunge"

    .line 6
    .line 7
    const-string v8, "sendPendingMessages"

    .line 8
    .line 9
    const v9, 0x7f0903a7

    .line 10
    .line 11
    .line 12
    const v10, 0x7f09019e

    .line 13
    .line 14
    .line 15
    const v11, 0x7f09026d

    .line 16
    .line 17
    .line 18
    const v12, 0x7f0903a1

    .line 19
    .line 20
    .line 21
    const v13, 0x7f090145

    .line 22
    .line 23
    .line 24
    const v14, 0x7f120568

    .line 25
    .line 26
    .line 27
    const v15, 0x7f09039c

    .line 28
    .line 29
    .line 30
    const-string v3, "account"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x2

    .line 34
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$2;->this$0:Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    packed-switch v1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    check-cast v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const v2, 0x7f0901d6

    .line 51
    .line 52
    .line 53
    if-ne v1, v2, :cond_0

    .line 54
    .line 55
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->exportLogsResultContract:Landroidx/fragment/app/Fragment$10;

    .line 56
    .line 57
    const-string v1, "k9mail-logs.txt"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const v2, 0x7f0901d7

    .line 64
    .line 65
    .line 66
    if-ne v1, v2, :cond_1

    .line 67
    .line 68
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->exportSyncDebugLogsResultContract:Landroidx/fragment/app/Fragment$10;

    .line 69
    .line 70
    invoke-static {}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->formatFileExportUriString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move v6, v7

    .line 79
    :goto_0
    return v6

    .line 80
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const v2, 0x7f09018f

    .line 88
    .line 89
    .line 90
    if-ne v1, v2, :cond_2

    .line 91
    .line 92
    check-cast v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 93
    .line 94
    sget v1, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->$r8$clinit:I

    .line 95
    .line 96
    const v1, 0x7f120039

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccount()Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget-object v3, v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->appNameProvider$delegate:Lkotlin/Lazy;

    .line 112
    .line 113
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 118
    .line 119
    check-cast v3, Lapp/k9mail/provider/K9AppNameProvider;

    .line 120
    .line 121
    invoke-virtual {v3}, Lapp/k9mail/provider/K9AppNameProvider;->getAppName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    new-array v4, v5, [Ljava/lang/Object;

    .line 126
    .line 127
    aput-object v2, v4, v7

    .line 128
    .line 129
    aput-object v3, v4, v6

    .line 130
    .line 131
    const v2, 0x7f120038

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const v3, 0x7f12050a

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    const v4, 0x7f1201fa

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-static {v6, v1, v2, v3, v4}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1, v6, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(ILandroidx/fragment/app/Fragment;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v2, "delete_account_confirmation"

    .line 164
    .line 165
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    move v6, v7

    .line 170
    :goto_1
    return v6

    .line 171
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 175
    .line 176
    iget-boolean v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isActive:Z

    .line 177
    .line 178
    if-nez v1, :cond_3

    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :cond_3
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 183
    .line 184
    if-nez v1, :cond_4

    .line 185
    .line 186
    goto/16 :goto_4

    .line 187
    .line 188
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    const v2, 0x7f090441

    .line 193
    .line 194
    .line 195
    if-ne v1, v2, :cond_6

    .line 196
    .line 197
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->themeManager$delegate:Lkotlin/Lazy;

    .line 198
    .line 199
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 204
    .line 205
    invoke-virtual {v1}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getMessageViewTheme()Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v1, v1, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 210
    .line 211
    sget-object v3, Lnet/thunderbird/core/ui/theme/api/Theme;->DARK:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 212
    .line 213
    if-ne v2, v3, :cond_5

    .line 214
    .line 215
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    iget-object v8, v7, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 222
    .line 223
    iget-object v9, v8, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 224
    .line 225
    const/4 v15, 0x0

    .line 226
    const/16 v16, 0x3b

    .line 227
    .line 228
    const/4 v10, 0x0

    .line 229
    const/4 v11, 0x0

    .line 230
    sget-object v12, Lnet/thunderbird/core/preference/SubTheme;->LIGHT:Lnet/thunderbird/core/preference/SubTheme;

    .line 231
    .line 232
    const/4 v13, 0x0

    .line 233
    const/4 v14, 0x0

    .line 234
    invoke-static/range {v9 .. v16}, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->copy$default(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;I)Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    const/4 v12, 0x0

    .line 239
    const/16 v13, 0xe

    .line 240
    .line 241
    const/4 v10, 0x0

    .line 242
    invoke-static/range {v8 .. v13}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    const/4 v13, 0x0

    .line 247
    const/16 v14, 0x77

    .line 248
    .line 249
    const/4 v8, 0x0

    .line 250
    const/4 v9, 0x0

    .line 251
    invoke-static/range {v7 .. v14}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_5
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    iget-object v8, v7, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 266
    .line 267
    iget-object v9, v8, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 268
    .line 269
    const/4 v15, 0x0

    .line 270
    const/16 v16, 0x3b

    .line 271
    .line 272
    const/4 v10, 0x0

    .line 273
    const/4 v11, 0x0

    .line 274
    sget-object v12, Lnet/thunderbird/core/preference/SubTheme;->DARK:Lnet/thunderbird/core/preference/SubTheme;

    .line 275
    .line 276
    const/4 v13, 0x0

    .line 277
    const/4 v14, 0x0

    .line 278
    invoke-static/range {v9 .. v16}, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->copy$default(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;I)Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    const/4 v12, 0x0

    .line 283
    const/16 v13, 0xe

    .line 284
    .line 285
    const/4 v10, 0x0

    .line 286
    invoke-static/range {v8 .. v13}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    const/4 v13, 0x0

    .line 291
    const/16 v14, 0x77

    .line 292
    .line 293
    const/4 v8, 0x0

    .line 294
    const/4 v9, 0x0

    .line 295
    invoke-static/range {v7 .. v14}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v1, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v0}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_14

    .line 310
    .line 311
    :cond_6
    const v2, 0x7f09018e

    .line 312
    .line 313
    .line 314
    if-ne v1, v2, :cond_7

    .line 315
    .line 316
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onDelete()V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_14

    .line 320
    .line 321
    :cond_7
    const v2, 0x7f09036e

    .line 322
    .line 323
    .line 324
    if-ne v1, v2, :cond_8

    .line 325
    .line 326
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onReply$1()V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_14

    .line 330
    .line 331
    :cond_8
    const v2, 0x7f09036f

    .line 332
    .line 333
    .line 334
    if-ne v1, v2, :cond_9

    .line 335
    .line 336
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onReplyAll$1()V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_14

    .line 340
    .line 341
    :cond_9
    const v2, 0x7f0901ff

    .line 342
    .line 343
    .line 344
    if-ne v1, v2, :cond_a

    .line 345
    .line 346
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onForward$1()V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_14

    .line 350
    .line 351
    :cond_a
    const v2, 0x7f090200

    .line 352
    .line 353
    .line 354
    if-ne v1, v2, :cond_b

    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onForwardAsAttachment$1()V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_14

    .line 360
    .line 361
    :cond_b
    const v2, 0x7f0901c1

    .line 362
    .line 363
    .line 364
    if-ne v1, v2, :cond_c

    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onEditAsNewMessage$1()V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_14

    .line 370
    .line 371
    :cond_c
    const v2, 0x7f0903c5

    .line 372
    .line 373
    .line 374
    if-ne v1, v2, :cond_d

    .line 375
    .line 376
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onSendAlternate()V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_14

    .line 380
    .line 381
    :cond_d
    const v2, 0x7f090443

    .line 382
    .line 383
    .line 384
    if-ne v1, v2, :cond_e

    .line 385
    .line 386
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onToggleRead()V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_14

    .line 390
    .line 391
    :cond_e
    const v2, 0x7f090081

    .line 392
    .line 393
    .line 394
    if-eq v1, v2, :cond_43

    .line 395
    .line 396
    const v2, 0x7f090368

    .line 397
    .line 398
    .line 399
    if-ne v1, v2, :cond_f

    .line 400
    .line 401
    goto/16 :goto_13

    .line 402
    .line 403
    :cond_f
    const v2, 0x7f0903e5

    .line 404
    .line 405
    .line 406
    if-eq v1, v2, :cond_3b

    .line 407
    .line 408
    const v2, 0x7f09036b

    .line 409
    .line 410
    .line 411
    if-ne v1, v2, :cond_10

    .line 412
    .line 413
    goto/16 :goto_11

    .line 414
    .line 415
    :cond_10
    const v2, 0x7f0902c5

    .line 416
    .line 417
    .line 418
    if-eq v1, v2, :cond_3a

    .line 419
    .line 420
    const v2, 0x7f09036a

    .line 421
    .line 422
    .line 423
    if-ne v1, v2, :cond_11

    .line 424
    .line 425
    goto/16 :goto_10

    .line 426
    .line 427
    :cond_11
    const v2, 0x7f09015c

    .line 428
    .line 429
    .line 430
    if-eq v1, v2, :cond_39

    .line 431
    .line 432
    const v2, 0x7f090369

    .line 433
    .line 434
    .line 435
    if-ne v1, v2, :cond_12

    .line 436
    .line 437
    goto/16 :goto_f

    .line 438
    .line 439
    :cond_12
    const v2, 0x7f0902c6

    .line 440
    .line 441
    .line 442
    if-ne v1, v2, :cond_15

    .line 443
    .line 444
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 445
    .line 446
    if-eqz v1, :cond_14

    .line 447
    .line 448
    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageHomeActivity;->performNavigationAfterMessageRemoval()V

    .line 449
    .line 450
    .line 451
    iget-object v9, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 452
    .line 453
    if-eqz v9, :cond_13

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    iget-wide v10, v1, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 460
    .line 461
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 466
    .line 467
    .line 468
    move-result-object v12

    .line 469
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    new-instance v7, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;

    .line 477
    .line 478
    const/4 v13, 0x3

    .line 479
    invoke-direct/range {v7 .. v13}, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V

    .line 480
    .line 481
    .line 482
    const-string v0, "moveToDrafts"

    .line 483
    .line 484
    invoke-virtual {v8, v0, v7}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_14

    .line 488
    .line 489
    :cond_13
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v4

    .line 493
    :cond_14
    const-string v0, "fragmentListener"

    .line 494
    .line 495
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v4

    .line 499
    :cond_15
    const v2, 0x7f09046b

    .line 500
    .line 501
    .line 502
    if-ne v1, v2, :cond_19

    .line 503
    .line 504
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->preferredUnsubscribeUri:Lcom/fsck/k9/helper/UnsubscribeUri;

    .line 505
    .line 506
    instance-of v2, v1, Lcom/fsck/k9/helper/MailtoUnsubscribeUri;

    .line 507
    .line 508
    const-string v4, "android.intent.action.VIEW"

    .line 509
    .line 510
    if-eqz v2, :cond_16

    .line 511
    .line 512
    new-instance v2, Landroid/content/Intent;

    .line 513
    .line 514
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    const-class v7, Lcom/fsck/k9/activity/MessageCompose;

    .line 519
    .line 520
    invoke-direct {v2, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    .line 525
    .line 526
    check-cast v1, Lcom/fsck/k9/helper/MailtoUnsubscribeUri;

    .line 527
    .line 528
    iget-object v1, v1, Lcom/fsck/k9/helper/MailtoUnsubscribeUri;->uri:Landroid/net/Uri;

    .line 529
    .line 530
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    iget-object v1, v1, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    .line 541
    .line 542
    goto :goto_3

    .line 543
    :cond_16
    instance-of v2, v1, Lcom/fsck/k9/helper/HttpsUnsubscribeUri;

    .line 544
    .line 545
    if-eqz v2, :cond_17

    .line 546
    .line 547
    new-instance v2, Landroid/content/Intent;

    .line 548
    .line 549
    check-cast v1, Lcom/fsck/k9/helper/HttpsUnsubscribeUri;

    .line 550
    .line 551
    iget-object v1, v1, Lcom/fsck/k9/helper/HttpsUnsubscribeUri;->uri:Landroid/net/Uri;

    .line 552
    .line 553
    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 554
    .line 555
    .line 556
    :goto_3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_14

    .line 560
    .line 561
    :cond_17
    const-string v0, "Unknown UnsubscribeUri - "

    .line 562
    .line 563
    invoke-static {v1, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    :cond_18
    :goto_4
    move v6, v7

    .line 567
    goto/16 :goto_14

    .line 568
    .line 569
    :cond_19
    const v2, 0x7f0903cd

    .line 570
    .line 571
    .line 572
    if-ne v1, v2, :cond_1a

    .line 573
    .line 574
    sget v1, Lcom/fsck/k9/ui/messagesource/MessageSourceActivity;->$r8$clinit:I

    .line 575
    .line 576
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    new-instance v3, Landroid/content/Intent;

    .line 585
    .line 586
    const-class v4, Lcom/fsck/k9/ui/messagesource/MessageSourceActivity;

    .line 587
    .line 588
    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .line 590
    .line 591
    const-string v1, "reference"

    .line 592
    .line 593
    invoke-virtual {v2}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_14

    .line 604
    .line 605
    :cond_1a
    const v2, 0x7f09034d

    .line 606
    .line 607
    .line 608
    const-string v5, ""

    .line 609
    .line 610
    if-ne v1, v2, :cond_25

    .line 611
    .line 612
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 613
    .line 614
    if-nez v1, :cond_1b

    .line 615
    .line 616
    goto/16 :goto_14

    .line 617
    .line 618
    :cond_1b
    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 619
    .line 620
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    iget-object v7, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->appNameProvider$delegate:Lkotlin/Lazy;

    .line 625
    .line 626
    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v7

    .line 630
    check-cast v7, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 631
    .line 632
    check-cast v7, Lapp/k9mail/provider/K9AppNameProvider;

    .line 633
    .line 634
    invoke-virtual {v7}, Lapp/k9mail/provider/K9AppNameProvider;->getAppName()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v7

    .line 638
    const v8, 0x7f120315

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    invoke-direct {v2, v3, v7, v0}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    iget-object v7, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 652
    .line 653
    const-string v8, "print"

    .line 654
    .line 655
    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v8

    .line 659
    instance-of v9, v8, Landroid/print/PrintManager;

    .line 660
    .line 661
    if-eqz v9, :cond_1c

    .line 662
    .line 663
    check-cast v8, Landroid/print/PrintManager;

    .line 664
    .line 665
    goto :goto_5

    .line 666
    :cond_1c
    move-object v8, v4

    .line 667
    :goto_5
    if-nez v8, :cond_1d

    .line 668
    .line 669
    goto/16 :goto_14

    .line 670
    .line 671
    :cond_1d
    invoke-virtual {v7}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v9

    .line 675
    if-nez v9, :cond_1e

    .line 676
    .line 677
    move-object v9, v0

    .line 678
    :cond_1e
    invoke-virtual {v7}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v10

    .line 682
    if-nez v10, :cond_1f

    .line 683
    .line 684
    goto :goto_6

    .line 685
    :cond_1f
    move-object v0, v10

    .line 686
    :goto_6
    const-string v10, "<"

    .line 687
    .line 688
    const-string v11, "&lt;"

    .line 689
    .line 690
    invoke-static {v0, v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    const-string v10, ">"

    .line 695
    .line 696
    const-string v11, "&gt;"

    .line 697
    .line 698
    invoke-static {v0, v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v7}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 703
    .line 704
    .line 705
    move-result-object v10

    .line 706
    if-eqz v10, :cond_20

    .line 707
    .line 708
    new-instance v14, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 709
    .line 710
    const/4 v11, 0x7

    .line 711
    invoke-direct {v14, v2, v11}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/mailstore/LocalStore$8;I)V

    .line 712
    .line 713
    .line 714
    const/16 v15, 0x1e

    .line 715
    .line 716
    const-string v11, ", "

    .line 717
    .line 718
    const/4 v12, 0x0

    .line 719
    const/4 v13, 0x0

    .line 720
    invoke-static/range {v10 .. v15}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v10

    .line 724
    goto :goto_7

    .line 725
    :cond_20
    move-object v10, v5

    .line 726
    :goto_7
    sget-object v11, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 727
    .line 728
    invoke-virtual {v7, v11}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 729
    .line 730
    .line 731
    move-result-object v12

    .line 732
    if-eqz v12, :cond_21

    .line 733
    .line 734
    new-instance v11, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 735
    .line 736
    const/16 v13, 0x8

    .line 737
    .line 738
    invoke-direct {v11, v2, v13}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/mailstore/LocalStore$8;I)V

    .line 739
    .line 740
    .line 741
    const/16 v17, 0x1e

    .line 742
    .line 743
    const-string v13, ", "

    .line 744
    .line 745
    const/4 v14, 0x0

    .line 746
    const/4 v15, 0x0

    .line 747
    move-object/from16 v16, v11

    .line 748
    .line 749
    invoke-static/range {v12 .. v17}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v11

    .line 753
    goto :goto_8

    .line 754
    :cond_21
    move-object v11, v5

    .line 755
    :goto_8
    invoke-virtual {v7}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 756
    .line 757
    .line 758
    move-result-object v7

    .line 759
    if-eqz v7, :cond_22

    .line 760
    .line 761
    new-instance v12, Ljava/text/SimpleDateFormat;

    .line 762
    .line 763
    const-string v13, "M/d/yyyy, h:mm a"

    .line 764
    .line 765
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 766
    .line 767
    .line 768
    move-result-object v14

    .line 769
    invoke-direct {v12, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v12, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v7

    .line 776
    if-nez v7, :cond_23

    .line 777
    .line 778
    :cond_22
    move-object v7, v5

    .line 779
    :cond_23
    const-string v12, "</p>\n                <p><b>From:</b> "

    .line 780
    .line 781
    const-string v13, "</p>\n                <p><b>Date:</b> "

    .line 782
    .line 783
    const-string v14, "\n            <div style=\"font-size:15px; margin-bottom:16px;\">\n                <p><b>Subject:</b> "

    .line 784
    .line 785
    invoke-static {v14, v0, v12, v10, v13}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    const-string v7, "</p>\n                <p><b>To:</b> "

    .line 793
    .line 794
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    const-string v7, "</p>\n            </div>\n            <hr style=\"border:none; border-top:1px solid #ccc; margin:12px 0;\">\n        "

    .line 801
    .line 802
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    iget-object v1, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->text:Ljava/lang/String;

    .line 814
    .line 815
    if-nez v1, :cond_24

    .line 816
    .line 817
    move-object v1, v5

    .line 818
    :cond_24
    const-string v7, "(?i)<a\\b[^>]*>"

    .line 819
    .line 820
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 821
    .line 822
    .line 823
    move-result-object v7

    .line 824
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 836
    .line 837
    .line 838
    const-string v7, "(?i)</a>"

    .line 839
    .line 840
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 841
    .line 842
    .line 843
    move-result-object v7

    .line 844
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    .line 857
    .line 858
    new-instance v5, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    const-string v7, "\n        <html>\n        <head>\n            <style>\n                @page {\n                    margin: 24px;\n                }\n                .page-wrapper {\n                    padding: 24px;\n                    font-family: Arial, sans-serif;\n                    color: #000;\n                }\n                .page-wrapper > div p {\n                    margin: 4px 0;\n                }\n            </style>\n        </head>\n        <body>\n            <div class=\"page-wrapper\">\n                "

    .line 861
    .line 862
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    const-string v0, "\n                "

    .line 869
    .line 870
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    const-string v0, "\n            </div>\n        </body>\n        </html>\n    "

    .line 877
    .line 878
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    new-instance v1, Lcom/fsck/k9/view/MessageWebView;

    .line 890
    .line 891
    invoke-direct {v1, v3}, Lcom/fsck/k9/view/MessageWebView;-><init>(Landroid/content/Context;)V

    .line 892
    .line 893
    .line 894
    new-instance v3, Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;

    .line 895
    .line 896
    invoke-direct {v3, v2, v9, v1, v8}, Lcom/fsck/k9/ui/messageview/MessagePrinter$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/mailstore/LocalStore$8;Ljava/lang/String;Lcom/fsck/k9/view/MessageWebView;Landroid/print/PrintManager;)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1, v0, v4, v3}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments$1(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_14

    .line 903
    .line 904
    :cond_25
    const v2, 0x7f0901d8

    .line 905
    .line 906
    .line 907
    if-ne v1, v2, :cond_33

    .line 908
    .line 909
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 910
    .line 911
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v1

    .line 915
    check-cast v1, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 916
    .line 917
    const-string v2, "message_view_action_export_eml"

    .line 918
    .line 919
    invoke-virtual {v1, v2}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    invoke-interface {v1}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 924
    .line 925
    .line 926
    move-result v1

    .line 927
    if-eqz v1, :cond_44

    .line 928
    .line 929
    iput-boolean v6, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->pendingEmlExport:Z

    .line 930
    .line 931
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 932
    .line 933
    if-eqz v1, :cond_27

    .line 934
    .line 935
    iget-object v2, v1, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 936
    .line 937
    if-nez v2, :cond_26

    .line 938
    .line 939
    goto :goto_9

    .line 940
    :cond_26
    move-object v5, v2

    .line 941
    :cond_27
    :goto_9
    if-eqz v1, :cond_28

    .line 942
    .line 943
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    if-nez v1, :cond_2a

    .line 948
    .line 949
    :cond_28
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 950
    .line 951
    if-eqz v1, :cond_29

    .line 952
    .line 953
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mInternalDate:Ljava/util/Date;

    .line 954
    .line 955
    goto :goto_a

    .line 956
    :cond_29
    move-object v1, v4

    .line 957
    :cond_2a
    :goto_a
    if-eqz v1, :cond_2b

    .line 958
    .line 959
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 960
    .line 961
    .line 962
    move-result-wide v1

    .line 963
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 964
    .line 965
    .line 966
    move-result-object v4

    .line 967
    :cond_2b
    if-eqz v4, :cond_2c

    .line 968
    .line 969
    sget-object v1, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 970
    .line 971
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 972
    .line 973
    .line 974
    move-result-wide v1

    .line 975
    invoke-static {v1, v2}, Lkotlin/time/InstantKt;->fromEpochMilliseconds(J)Lkotlin/time/Instant;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    sget-object v2, Lkotlinx/datetime/TimeZone;->UTC:Lkotlinx/datetime/FixedOffsetTimeZone;

    .line 980
    .line 981
    invoke-static {v1, v2}, Lorg/minidns/util/Hex;->toLocalDateTime(Lkotlin/time/Instant;Lkotlinx/datetime/TimeZone;)Lkotlinx/datetime/LocalDateTime;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    goto :goto_b

    .line 986
    :cond_2c
    sget-object v1, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 987
    .line 988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 989
    .line 990
    .line 991
    move-result-wide v1

    .line 992
    invoke-static {v1, v2}, Lkotlin/time/InstantKt;->fromEpochMilliseconds(J)Lkotlin/time/Instant;

    .line 993
    .line 994
    .line 995
    move-result-object v1

    .line 996
    sget-object v2, Lkotlinx/datetime/TimeZone;->UTC:Lkotlinx/datetime/FixedOffsetTimeZone;

    .line 997
    .line 998
    invoke-static {}, Lkotlin/text/CharsKt__CharKt;->currentSystemDefault()Lkotlinx/datetime/TimeZone;

    .line 999
    .line 1000
    .line 1001
    move-result-object v2

    .line 1002
    invoke-static {v1, v2}, Lorg/minidns/util/Hex;->toLocalDateTime(Lkotlin/time/Instant;Lkotlinx/datetime/TimeZone;)Lkotlinx/datetime/LocalDateTime;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    :goto_b
    iget-object v2, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fileNameSuggester$delegate:Lkotlin/Lazy;

    .line 1007
    .line 1008
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    check-cast v2, Lnet/thunderbird/feature/mail/message/export/DefaultMessageFileNameSuggester;

    .line 1013
    .line 1014
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1015
    .line 1016
    .line 1017
    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v2

    .line 1025
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1026
    .line 1027
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v2

    .line 1031
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1032
    .line 1033
    .line 1034
    sget-object v3, Lnet/thunderbird/feature/mail/message/export/DefaultMessageFileNameSuggester;->nonAlphanumericRegex:Lkotlin/text/Regex;

    .line 1035
    .line 1036
    const-string v4, "-"

    .line 1037
    .line 1038
    invoke-virtual {v3, v2, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v2

    .line 1042
    sget-object v3, Lnet/thunderbird/feature/mail/message/export/DefaultMessageFileNameSuggester;->consecutiveDashesRegex:Lkotlin/text/Regex;

    .line 1043
    .line 1044
    invoke-virtual {v3, v2, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v2

    .line 1048
    new-array v3, v6, [C

    .line 1049
    .line 1050
    const/16 v4, 0x2d

    .line 1051
    .line 1052
    aput-char v4, v3, v7

    .line 1053
    .line 1054
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1055
    .line 1056
    .line 1057
    move-result v4

    .line 1058
    sub-int/2addr v4, v6

    .line 1059
    move v5, v7

    .line 1060
    :goto_c
    if-gt v7, v4, :cond_31

    .line 1061
    .line 1062
    if-nez v5, :cond_2d

    .line 1063
    .line 1064
    move v8, v7

    .line 1065
    goto :goto_d

    .line 1066
    :cond_2d
    move v8, v4

    .line 1067
    :goto_d
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 1068
    .line 1069
    .line 1070
    move-result v8

    .line 1071
    invoke-static {v3, v8}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([CC)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v8

    .line 1075
    if-nez v5, :cond_2f

    .line 1076
    .line 1077
    if-nez v8, :cond_2e

    .line 1078
    .line 1079
    move v5, v6

    .line 1080
    goto :goto_c

    .line 1081
    :cond_2e
    add-int/lit8 v7, v7, 0x1

    .line 1082
    .line 1083
    goto :goto_c

    .line 1084
    :cond_2f
    if-nez v8, :cond_30

    .line 1085
    .line 1086
    goto :goto_e

    .line 1087
    :cond_30
    add-int/lit8 v4, v4, -0x1

    .line 1088
    .line 1089
    goto :goto_c

    .line 1090
    :cond_31
    :goto_e
    add-int/2addr v4, v6

    .line 1091
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v2

    .line 1099
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1100
    .line 1101
    .line 1102
    move-result v3

    .line 1103
    if-nez v3, :cond_32

    .line 1104
    .line 1105
    const-string v2, "message"

    .line 1106
    .line 1107
    :cond_32
    sget-object v3, Lnet/thunderbird/feature/mail/message/export/DefaultMessageFileNameSuggester;->fileNameDateFormat:Lkotlinx/datetime/format/LocalDateTimeFormat;

    .line 1108
    .line 1109
    invoke-virtual {v3, v1}, Lkotlinx/datetime/format/AbstractDateTimeFormat;->format(Lkotlinx/datetime/LocalDateTime;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    const-string v3, "_"

    .line 1114
    .line 1115
    const-string v4, ".eml"

    .line 1116
    .line 1117
    invoke-static {v1, v3, v2, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v1

    .line 1121
    :try_start_0
    iget-object v2, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->createDocumentLauncher:Landroidx/fragment/app/Fragment$10;

    .line 1122
    .line 1123
    new-instance v3, Lapp/k9mail/core/android/common/activity/CreateDocumentResultContract$Input;

    .line 1124
    .line 1125
    const-string v4, "message/rfc822"

    .line 1126
    .line 1127
    invoke-direct {v3, v1, v4}, Lapp/k9mail/core/android/common/activity/CreateDocumentResultContract$Input;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    .line 1132
    .line 1133
    goto/16 :goto_14

    .line 1134
    .line 1135
    :catch_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    const v1, 0x7f1202c4

    .line 1140
    .line 1141
    .line 1142
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0

    .line 1146
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1147
    .line 1148
    .line 1149
    goto/16 :goto_14

    .line 1150
    .line 1151
    :cond_33
    const v2, 0x7f0903ab

    .line 1152
    .line 1153
    .line 1154
    const-string v5, "messageTopView"

    .line 1155
    .line 1156
    if-ne v1, v2, :cond_35

    .line 1157
    .line 1158
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 1159
    .line 1160
    if-eqz v1, :cond_34

    .line 1161
    .line 1162
    invoke-virtual {v1, v6}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setRenderPlainFormat(Z)V

    .line 1163
    .line 1164
    .line 1165
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 1166
    .line 1167
    if-eqz v1, :cond_44

    .line 1168
    .line 1169
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 1170
    .line 1171
    .line 1172
    goto/16 :goto_14

    .line 1173
    .line 1174
    :cond_34
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    throw v4

    .line 1178
    :cond_35
    const v2, 0x7f0903aa

    .line 1179
    .line 1180
    .line 1181
    if-ne v1, v2, :cond_37

    .line 1182
    .line 1183
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 1184
    .line 1185
    if-eqz v1, :cond_36

    .line 1186
    .line 1187
    invoke-virtual {v1, v7}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setRenderPlainFormat(Z)V

    .line 1188
    .line 1189
    .line 1190
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 1191
    .line 1192
    if-eqz v1, :cond_44

    .line 1193
    .line 1194
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 1195
    .line 1196
    .line 1197
    goto/16 :goto_14

    .line 1198
    .line 1199
    :cond_36
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    throw v4

    .line 1203
    :cond_37
    const v2, 0x7f090479

    .line 1204
    .line 1205
    .line 1206
    if-ne v1, v2, :cond_18

    .line 1207
    .line 1208
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v1

    .line 1212
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1213
    .line 1214
    if-eqz v0, :cond_38

    .line 1215
    .line 1216
    invoke-static {v1, v0}, Landroidx/room/util/SchemaInfoUtilKt;->actionCompose(Landroid/content/Context;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 1217
    .line 1218
    .line 1219
    goto/16 :goto_14

    .line 1220
    .line 1221
    :cond_38
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    throw v4

    .line 1225
    :cond_39
    :goto_f
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onCopy()V

    .line 1226
    .line 1227
    .line 1228
    goto/16 :goto_14

    .line 1229
    .line 1230
    :cond_3a
    :goto_10
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onMove()V

    .line 1231
    .line 1232
    .line 1233
    goto/16 :goto_14

    .line 1234
    .line 1235
    :cond_3b
    :goto_11
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1236
    .line 1237
    if-eqz v1, :cond_42

    .line 1238
    .line 1239
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v1

    .line 1243
    if-eqz v1, :cond_44

    .line 1244
    .line 1245
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v2

    .line 1249
    iget-object v5, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1250
    .line 1251
    if-eqz v5, :cond_41

    .line 1252
    .line 1253
    invoke-virtual {v2, v5}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v2

    .line 1257
    invoke-interface {v2}, Lcom/fsck/k9/backend/api/Backend;->getSupportsMove()Z

    .line 1258
    .line 1259
    .line 1260
    move-result v2

    .line 1261
    if-nez v2, :cond_3c

    .line 1262
    .line 1263
    goto :goto_14

    .line 1264
    :cond_3c
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v2

    .line 1268
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v5

    .line 1272
    invoke-virtual {v2, v5}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lapp/k9mail/legacy/message/controller/MessageReference;)Z

    .line 1273
    .line 1274
    .line 1275
    move-result v2

    .line 1276
    if-nez v2, :cond_3d

    .line 1277
    .line 1278
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    const v1, 0x7f12047f

    .line 1283
    .line 1284
    .line 1285
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v0

    .line 1289
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1290
    .line 1291
    .line 1292
    goto :goto_14

    .line 1293
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1294
    .line 1295
    .line 1296
    move-result-wide v7

    .line 1297
    iget-object v2, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1298
    .line 1299
    if-eqz v2, :cond_40

    .line 1300
    .line 1301
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    if-nez v2, :cond_3e

    .line 1306
    .line 1307
    goto :goto_12

    .line 1308
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1309
    .line 1310
    .line 1311
    move-result-wide v2

    .line 1312
    cmp-long v2, v7, v2

    .line 1313
    .line 1314
    if-nez v2, :cond_3f

    .line 1315
    .line 1316
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getGeneralSettingsManager$4()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v2

    .line 1320
    check-cast v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1321
    .line 1322
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v2

    .line 1326
    iget-object v2, v2, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 1327
    .line 1328
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 1329
    .line 1330
    if-eqz v2, :cond_3f

    .line 1331
    .line 1332
    iput-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->destinationFolderId:Ljava/lang/Long;

    .line 1333
    .line 1334
    const v1, 0x7f09019f

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showDialog$3(I)V

    .line 1338
    .line 1339
    .line 1340
    goto :goto_14

    .line 1341
    :cond_3f
    :goto_12
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1342
    .line 1343
    .line 1344
    move-result-wide v1

    .line 1345
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->refileMessage(J)V

    .line 1346
    .line 1347
    .line 1348
    goto :goto_14

    .line 1349
    :cond_40
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1350
    .line 1351
    .line 1352
    throw v4

    .line 1353
    :cond_41
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1354
    .line 1355
    .line 1356
    throw v4

    .line 1357
    :cond_42
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    throw v4

    .line 1361
    :cond_43
    :goto_13
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onArchive()V

    .line 1362
    .line 1363
    .line 1364
    :cond_44
    :goto_14
    return v6

    .line 1365
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1366
    .line 1367
    .line 1368
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 1369
    .line 1370
    iget-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isActive:Z

    .line 1371
    .line 1372
    if-nez v1, :cond_45

    .line 1373
    .line 1374
    goto/16 :goto_15

    .line 1375
    .line 1376
    :cond_45
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 1377
    .line 1378
    .line 1379
    move-result v1

    .line 1380
    if-ne v1, v15, :cond_48

    .line 1381
    .line 1382
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->hasConnectivity:Ljava/lang/Boolean;

    .line 1383
    .line 1384
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1385
    .line 1386
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1387
    .line 1388
    .line 1389
    move-result v1

    .line 1390
    if-eqz v1, :cond_47

    .line 1391
    .line 1392
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 1393
    .line 1394
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1395
    .line 1396
    .line 1397
    iget-wide v9, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 1398
    .line 1399
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v1

    .line 1403
    invoke-virtual {v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getRemoteSearchArguments()Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v11

    .line 1407
    iput-boolean v6, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isRemoteSearch:Z

    .line 1408
    .line 1409
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1410
    .line 1411
    if-nez v1, :cond_46

    .line 1412
    .line 1413
    goto/16 :goto_16

    .line 1414
    .line 1415
    :cond_46
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v7

    .line 1419
    iget-object v8, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 1420
    .line 1421
    iget-object v12, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 1422
    .line 1423
    invoke-virtual/range {v7 .. v12}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->searchRemoteMessages(Lnet/thunderbird/feature/account/AccountId;JLjava/lang/String;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/concurrent/Future;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v1

    .line 1427
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    .line 1428
    .line 1429
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v0

    .line 1433
    if-eqz v0, :cond_57

    .line 1434
    .line 1435
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1436
    .line 1437
    .line 1438
    goto/16 :goto_16

    .line 1439
    .line 1440
    :cond_47
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v1

    .line 1444
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v0

    .line 1448
    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v0

    .line 1452
    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1457
    .line 1458
    .line 1459
    goto/16 :goto_16

    .line 1460
    .line 1461
    :cond_48
    if-ne v1, v13, :cond_49

    .line 1462
    .line 1463
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->onCompose()V

    .line 1464
    .line 1465
    .line 1466
    goto/16 :goto_16

    .line 1467
    .line 1468
    :cond_49
    if-ne v1, v12, :cond_4b

    .line 1469
    .line 1470
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v1

    .line 1474
    invoke-interface {v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMessages()Lkotlinx/collections/immutable/ImmutableList;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v1

    .line 1478
    check-cast v1, Lkotlin/collections/AbstractCollection;

    .line 1479
    .line 1480
    invoke-virtual {v1}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    .line 1481
    .line 1482
    .line 1483
    move-result v1

    .line 1484
    if-eqz v1, :cond_4a

    .line 1485
    .line 1486
    goto/16 :goto_16

    .line 1487
    .line 1488
    :cond_4a
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v0

    .line 1492
    sget-object v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SelectAll;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SelectAll;

    .line 1493
    .line 1494
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->event(Ljava/lang/Object;)V

    .line 1495
    .line 1496
    .line 1497
    goto/16 :goto_16

    .line 1498
    .line 1499
    :cond_4b
    if-ne v1, v11, :cond_4d

    .line 1500
    .line 1501
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 1502
    .line 1503
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v1

    .line 1507
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1508
    .line 1509
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1510
    .line 1511
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v1

    .line 1515
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 1516
    .line 1517
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmMarkAllRead:Z

    .line 1518
    .line 1519
    if-eqz v1, :cond_4c

    .line 1520
    .line 1521
    invoke-virtual {v0, v10}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showDialog$2(I)V

    .line 1522
    .line 1523
    .line 1524
    goto/16 :goto_16

    .line 1525
    .line 1526
    :cond_4c
    iget-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 1527
    .line 1528
    if-eqz v1, :cond_57

    .line 1529
    .line 1530
    iget-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 1531
    .line 1532
    if-eqz v1, :cond_57

    .line 1533
    .line 1534
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isOutbox()Z

    .line 1535
    .line 1536
    .line 1537
    move-result v1

    .line 1538
    if-nez v1, :cond_57

    .line 1539
    .line 1540
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1541
    .line 1542
    if-eqz v1, :cond_57

    .line 1543
    .line 1544
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 1545
    .line 1546
    if-eqz v1, :cond_57

    .line 1547
    .line 1548
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v2

    .line 1552
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 1553
    .line 1554
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1555
    .line 1556
    .line 1557
    iget-wide v3, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 1558
    .line 1559
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {v2, v1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v0

    .line 1566
    iget-object v1, v2, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 1567
    .line 1568
    invoke-static {v3, v4}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;->create(J)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v2

    .line 1572
    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v1, v0}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 1576
    .line 1577
    .line 1578
    goto/16 :goto_16

    .line 1579
    .line 1580
    :cond_4d
    if-ne v1, v9, :cond_4e

    .line 1581
    .line 1582
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1583
    .line 1584
    if-eqz v1, :cond_57

    .line 1585
    .line 1586
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 1587
    .line 1588
    if-eqz v1, :cond_57

    .line 1589
    .line 1590
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v0

    .line 1594
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1595
    .line 1596
    .line 1597
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v1

    .line 1601
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 1602
    .line 1603
    new-instance v2, Lcom/fsck/k9/controller/MessagingController$3;

    .line 1604
    .line 1605
    invoke-direct {v2, v0, v1, v5}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v0, v8, v2}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1609
    .line 1610
    .line 1611
    goto/16 :goto_16

    .line 1612
    .line 1613
    :cond_4e
    const v3, 0x7f0901c8

    .line 1614
    .line 1615
    .line 1616
    if-ne v1, v3, :cond_4f

    .line 1617
    .line 1618
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isShowingSpamFolder$1()Z

    .line 1619
    .line 1620
    .line 1621
    move-result v1

    .line 1622
    if-eqz v1, :cond_57

    .line 1623
    .line 1624
    const v1, 0x7f09019c

    .line 1625
    .line 1626
    .line 1627
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showDialog$2(I)V

    .line 1628
    .line 1629
    .line 1630
    goto/16 :goto_16

    .line 1631
    .line 1632
    :cond_4f
    const v3, 0x7f0901c9

    .line 1633
    .line 1634
    .line 1635
    if-ne v1, v3, :cond_50

    .line 1636
    .line 1637
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isShowingTrashFolder$1()Z

    .line 1638
    .line 1639
    .line 1640
    move-result v1

    .line 1641
    if-eqz v1, :cond_57

    .line 1642
    .line 1643
    const v1, 0x7f09019d

    .line 1644
    .line 1645
    .line 1646
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showDialog$2(I)V

    .line 1647
    .line 1648
    .line 1649
    goto/16 :goto_16

    .line 1650
    .line 1651
    :cond_50
    const v3, 0x7f0901d9

    .line 1652
    .line 1653
    .line 1654
    if-ne v1, v3, :cond_51

    .line 1655
    .line 1656
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 1657
    .line 1658
    if-eqz v1, :cond_57

    .line 1659
    .line 1660
    iget-object v3, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1661
    .line 1662
    if-eqz v3, :cond_57

    .line 1663
    .line 1664
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 1665
    .line 1666
    if-eqz v3, :cond_57

    .line 1667
    .line 1668
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v0

    .line 1672
    iget-wide v10, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 1673
    .line 1674
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1675
    .line 1676
    .line 1677
    invoke-virtual {v0, v3}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v9

    .line 1681
    iget-object v8, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 1682
    .line 1683
    new-instance v7, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;

    .line 1684
    .line 1685
    const/4 v12, 0x2

    .line 1686
    invoke-direct/range {v7 .. v12}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JI)V

    .line 1687
    .line 1688
    .line 1689
    invoke-virtual {v8, v2, v7}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1690
    .line 1691
    .line 1692
    goto/16 :goto_16

    .line 1693
    .line 1694
    :cond_51
    const v2, 0x7f090398

    .line 1695
    .line 1696
    .line 1697
    if-ne v1, v2, :cond_52

    .line 1698
    .line 1699
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v1

    .line 1703
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v1

    .line 1707
    const-string v2, "query"

    .line 1708
    .line 1709
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v1

    .line 1713
    new-instance v3, Landroid/content/Intent;

    .line 1714
    .line 1715
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v4

    .line 1719
    const-class v5, Lcom/fsck/k9/activity/MessageSearchActivity;

    .line 1720
    .line 1721
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1722
    .line 1723
    .line 1724
    const-string v4, "android.intent.action.SEARCH"

    .line 1725
    .line 1726
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1727
    .line 1728
    .line 1729
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1730
    .line 1731
    .line 1732
    const/high16 v1, 0x20000000

    .line 1733
    .line 1734
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1735
    .line 1736
    .line 1737
    const/high16 v1, 0x4000000

    .line 1738
    .line 1739
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1743
    .line 1744
    .line 1745
    goto :goto_16

    .line 1746
    :cond_52
    const v2, 0x7f090187

    .line 1747
    .line 1748
    .line 1749
    if-ne v1, v2, :cond_53

    .line 1750
    .line 1751
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v0

    .line 1755
    const v2, 0x7f120268

    .line 1756
    .line 1757
    .line 1758
    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v0

    .line 1762
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1763
    .line 1764
    .line 1765
    goto :goto_16

    .line 1766
    :cond_53
    const v2, 0x7f120268

    .line 1767
    .line 1768
    .line 1769
    const v3, 0x7f090188

    .line 1770
    .line 1771
    .line 1772
    if-ne v1, v3, :cond_54

    .line 1773
    .line 1774
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v0

    .line 1778
    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v0

    .line 1782
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1783
    .line 1784
    .line 1785
    goto :goto_16

    .line 1786
    :cond_54
    const v2, 0x7f090186

    .line 1787
    .line 1788
    .line 1789
    if-ne v1, v2, :cond_55

    .line 1790
    .line 1791
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v0

    .line 1795
    const v1, 0x7f12025f

    .line 1796
    .line 1797
    .line 1798
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v0

    .line 1802
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1803
    .line 1804
    .line 1805
    goto :goto_16

    .line 1806
    :cond_55
    const v2, 0x7f090185

    .line 1807
    .line 1808
    .line 1809
    if-ne v1, v2, :cond_56

    .line 1810
    .line 1811
    sget v1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 1812
    .line 1813
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v0

    .line 1817
    sget-object v1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$SecretDebugSettingsFeatureFlag;->INSTANCE:Lapp/k9mail/feature/launcher/FeatureLauncherTarget$SecretDebugSettingsFeatureFlag;

    .line 1818
    .line 1819
    invoke-static {v0, v1}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 1820
    .line 1821
    .line 1822
    goto :goto_16

    .line 1823
    :cond_56
    :goto_15
    move v6, v7

    .line 1824
    :cond_57
    :goto_16
    return v6

    .line 1825
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1826
    .line 1827
    .line 1828
    check-cast v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 1829
    .line 1830
    iget-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isActive:Z

    .line 1831
    .line 1832
    if-nez v1, :cond_58

    .line 1833
    .line 1834
    goto/16 :goto_17

    .line 1835
    .line 1836
    :cond_58
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 1837
    .line 1838
    .line 1839
    move-result v1

    .line 1840
    if-ne v1, v15, :cond_5a

    .line 1841
    .line 1842
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->hasConnectivity:Ljava/lang/Boolean;

    .line 1843
    .line 1844
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1845
    .line 1846
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1847
    .line 1848
    .line 1849
    move-result v1

    .line 1850
    if-eqz v1, :cond_59

    .line 1851
    .line 1852
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onRemoteSearchRequested()V

    .line 1853
    .line 1854
    .line 1855
    goto/16 :goto_18

    .line 1856
    .line 1857
    :cond_59
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v1

    .line 1861
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v0

    .line 1865
    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v0

    .line 1869
    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v0

    .line 1873
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1874
    .line 1875
    .line 1876
    goto/16 :goto_18

    .line 1877
    .line 1878
    :cond_5a
    if-ne v1, v13, :cond_5b

    .line 1879
    .line 1880
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onCompose()V

    .line 1881
    .line 1882
    .line 1883
    goto/16 :goto_18

    .line 1884
    .line 1885
    :cond_5b
    const v3, 0x7f0903af

    .line 1886
    .line 1887
    .line 1888
    if-ne v1, v3, :cond_5c

    .line 1889
    .line 1890
    sget-object v1, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

    .line 1891
    .line 1892
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->changeSort(Lnet/thunderbird/core/android/account/SortType;)V

    .line 1893
    .line 1894
    .line 1895
    goto/16 :goto_18

    .line 1896
    .line 1897
    :cond_5c
    const v3, 0x7f0903ad

    .line 1898
    .line 1899
    .line 1900
    if-ne v1, v3, :cond_5d

    .line 1901
    .line 1902
    sget-object v1, Lnet/thunderbird/core/android/account/SortType;->SORT_ARRIVAL:Lnet/thunderbird/core/android/account/SortType;

    .line 1903
    .line 1904
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->changeSort(Lnet/thunderbird/core/android/account/SortType;)V

    .line 1905
    .line 1906
    .line 1907
    goto/16 :goto_18

    .line 1908
    .line 1909
    :cond_5d
    const v3, 0x7f0903b2

    .line 1910
    .line 1911
    .line 1912
    if-ne v1, v3, :cond_5e

    .line 1913
    .line 1914
    sget-object v1, Lnet/thunderbird/core/android/account/SortType;->SORT_SUBJECT:Lnet/thunderbird/core/android/account/SortType;

    .line 1915
    .line 1916
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->changeSort(Lnet/thunderbird/core/android/account/SortType;)V

    .line 1917
    .line 1918
    .line 1919
    goto/16 :goto_18

    .line 1920
    .line 1921
    :cond_5e
    const v3, 0x7f0903b1

    .line 1922
    .line 1923
    .line 1924
    if-ne v1, v3, :cond_5f

    .line 1925
    .line 1926
    sget-object v1, Lnet/thunderbird/core/android/account/SortType;->SORT_SENDER:Lnet/thunderbird/core/android/account/SortType;

    .line 1927
    .line 1928
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->changeSort(Lnet/thunderbird/core/android/account/SortType;)V

    .line 1929
    .line 1930
    .line 1931
    goto/16 :goto_18

    .line 1932
    .line 1933
    :cond_5f
    const v3, 0x7f0903b0

    .line 1934
    .line 1935
    .line 1936
    if-ne v1, v3, :cond_60

    .line 1937
    .line 1938
    sget-object v1, Lnet/thunderbird/core/android/account/SortType;->SORT_FLAGGED:Lnet/thunderbird/core/android/account/SortType;

    .line 1939
    .line 1940
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->changeSort(Lnet/thunderbird/core/android/account/SortType;)V

    .line 1941
    .line 1942
    .line 1943
    goto/16 :goto_18

    .line 1944
    .line 1945
    :cond_60
    const v3, 0x7f0903b3

    .line 1946
    .line 1947
    .line 1948
    if-ne v1, v3, :cond_61

    .line 1949
    .line 1950
    sget-object v1, Lnet/thunderbird/core/android/account/SortType;->SORT_UNREAD:Lnet/thunderbird/core/android/account/SortType;

    .line 1951
    .line 1952
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->changeSort(Lnet/thunderbird/core/android/account/SortType;)V

    .line 1953
    .line 1954
    .line 1955
    goto/16 :goto_18

    .line 1956
    .line 1957
    :cond_61
    const v3, 0x7f0903ae

    .line 1958
    .line 1959
    .line 1960
    if-ne v1, v3, :cond_62

    .line 1961
    .line 1962
    sget-object v1, Lnet/thunderbird/core/android/account/SortType;->SORT_ATTACHMENT:Lnet/thunderbird/core/android/account/SortType;

    .line 1963
    .line 1964
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->changeSort(Lnet/thunderbird/core/android/account/SortType;)V

    .line 1965
    .line 1966
    .line 1967
    goto/16 :goto_18

    .line 1968
    .line 1969
    :cond_62
    if-ne v1, v12, :cond_63

    .line 1970
    .line 1971
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->selectAll$1()V

    .line 1972
    .line 1973
    .line 1974
    goto/16 :goto_18

    .line 1975
    .line 1976
    :cond_63
    if-ne v1, v11, :cond_65

    .line 1977
    .line 1978
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getGeneralSettingsManager$2()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v1

    .line 1982
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1983
    .line 1984
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v1

    .line 1988
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 1989
    .line 1990
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmMarkAllRead:Z

    .line 1991
    .line 1992
    if-eqz v1, :cond_64

    .line 1993
    .line 1994
    invoke-virtual {v0, v10}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showDialog$1(I)V

    .line 1995
    .line 1996
    .line 1997
    goto/16 :goto_18

    .line 1998
    .line 1999
    :cond_64
    iget-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 2000
    .line 2001
    if-eqz v1, :cond_6f

    .line 2002
    .line 2003
    iget-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 2004
    .line 2005
    if-eqz v1, :cond_6f

    .line 2006
    .line 2007
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 2008
    .line 2009
    .line 2010
    move-result v1

    .line 2011
    if-nez v1, :cond_6f

    .line 2012
    .line 2013
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 2014
    .line 2015
    if-eqz v1, :cond_6f

    .line 2016
    .line 2017
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 2018
    .line 2019
    if-eqz v1, :cond_6f

    .line 2020
    .line 2021
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v2

    .line 2025
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 2026
    .line 2027
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2028
    .line 2029
    .line 2030
    iget-wide v3, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 2031
    .line 2032
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2033
    .line 2034
    .line 2035
    invoke-virtual {v2, v1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2036
    .line 2037
    .line 2038
    move-result-object v0

    .line 2039
    iget-object v1, v2, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 2040
    .line 2041
    invoke-static {v3, v4}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;->create(J)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;

    .line 2042
    .line 2043
    .line 2044
    move-result-object v2

    .line 2045
    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 2046
    .line 2047
    .line 2048
    invoke-virtual {v1, v0}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 2049
    .line 2050
    .line 2051
    goto/16 :goto_18

    .line 2052
    .line 2053
    :cond_65
    if-ne v1, v9, :cond_66

    .line 2054
    .line 2055
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 2056
    .line 2057
    if-eqz v1, :cond_6f

    .line 2058
    .line 2059
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 2060
    .line 2061
    if-eqz v1, :cond_6f

    .line 2062
    .line 2063
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v0

    .line 2067
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2068
    .line 2069
    .line 2070
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v1

    .line 2074
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 2075
    .line 2076
    new-instance v2, Lcom/fsck/k9/controller/MessagingController$3;

    .line 2077
    .line 2078
    invoke-direct {v2, v0, v1, v5}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 2079
    .line 2080
    .line 2081
    invoke-virtual {v0, v8, v2}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2082
    .line 2083
    .line 2084
    goto/16 :goto_18

    .line 2085
    .line 2086
    :cond_66
    const v3, 0x7f0901c8

    .line 2087
    .line 2088
    .line 2089
    if-ne v1, v3, :cond_67

    .line 2090
    .line 2091
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isShowingSpamFolder()Z

    .line 2092
    .line 2093
    .line 2094
    move-result v1

    .line 2095
    if-eqz v1, :cond_6f

    .line 2096
    .line 2097
    const v1, 0x7f09019c

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showDialog$1(I)V

    .line 2101
    .line 2102
    .line 2103
    goto/16 :goto_18

    .line 2104
    .line 2105
    :cond_67
    const v3, 0x7f0901c9

    .line 2106
    .line 2107
    .line 2108
    if-ne v1, v3, :cond_68

    .line 2109
    .line 2110
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isShowingTrashFolder()Z

    .line 2111
    .line 2112
    .line 2113
    move-result v1

    .line 2114
    if-eqz v1, :cond_6f

    .line 2115
    .line 2116
    const v1, 0x7f09019d

    .line 2117
    .line 2118
    .line 2119
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showDialog$1(I)V

    .line 2120
    .line 2121
    .line 2122
    goto/16 :goto_18

    .line 2123
    .line 2124
    :cond_68
    const v3, 0x7f0901d9

    .line 2125
    .line 2126
    .line 2127
    if-ne v1, v3, :cond_69

    .line 2128
    .line 2129
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 2130
    .line 2131
    if-eqz v1, :cond_6f

    .line 2132
    .line 2133
    iget-object v3, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 2134
    .line 2135
    if-eqz v3, :cond_6f

    .line 2136
    .line 2137
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 2138
    .line 2139
    if-eqz v3, :cond_6f

    .line 2140
    .line 2141
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v0

    .line 2145
    iget-wide v10, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 2146
    .line 2147
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2148
    .line 2149
    .line 2150
    invoke-virtual {v0, v3}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v9

    .line 2154
    iget-object v8, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 2155
    .line 2156
    new-instance v7, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;

    .line 2157
    .line 2158
    const/4 v12, 0x2

    .line 2159
    invoke-direct/range {v7 .. v12}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JI)V

    .line 2160
    .line 2161
    .line 2162
    invoke-virtual {v8, v2, v7}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2163
    .line 2164
    .line 2165
    goto/16 :goto_18

    .line 2166
    .line 2167
    :cond_69
    const v2, 0x7f090398

    .line 2168
    .line 2169
    .line 2170
    if-ne v1, v2, :cond_6a

    .line 2171
    .line 2172
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v1

    .line 2176
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v1

    .line 2180
    const-string v2, "query"

    .line 2181
    .line 2182
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 2183
    .line 2184
    .line 2185
    move-result-object v1

    .line 2186
    new-instance v3, Landroid/content/Intent;

    .line 2187
    .line 2188
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v4

    .line 2192
    const-class v5, Lcom/fsck/k9/activity/MessageSearchActivity;

    .line 2193
    .line 2194
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2195
    .line 2196
    .line 2197
    const-string v4, "android.intent.action.SEARCH"

    .line 2198
    .line 2199
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2200
    .line 2201
    .line 2202
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2203
    .line 2204
    .line 2205
    const/high16 v1, 0x20000000

    .line 2206
    .line 2207
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2208
    .line 2209
    .line 2210
    const/high16 v1, 0x4000000

    .line 2211
    .line 2212
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2213
    .line 2214
    .line 2215
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2216
    .line 2217
    .line 2218
    goto :goto_18

    .line 2219
    :cond_6a
    const v2, 0x7f090187

    .line 2220
    .line 2221
    .line 2222
    if-ne v1, v2, :cond_6b

    .line 2223
    .line 2224
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v0

    .line 2228
    const v2, 0x7f120268

    .line 2229
    .line 2230
    .line 2231
    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v0

    .line 2235
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2236
    .line 2237
    .line 2238
    goto :goto_18

    .line 2239
    :cond_6b
    const v2, 0x7f120268

    .line 2240
    .line 2241
    .line 2242
    const v3, 0x7f090188

    .line 2243
    .line 2244
    .line 2245
    if-ne v1, v3, :cond_6c

    .line 2246
    .line 2247
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2248
    .line 2249
    .line 2250
    move-result-object v0

    .line 2251
    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 2252
    .line 2253
    .line 2254
    move-result-object v0

    .line 2255
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2256
    .line 2257
    .line 2258
    goto :goto_18

    .line 2259
    :cond_6c
    const v2, 0x7f090186

    .line 2260
    .line 2261
    .line 2262
    if-ne v1, v2, :cond_6d

    .line 2263
    .line 2264
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2265
    .line 2266
    .line 2267
    move-result-object v0

    .line 2268
    const v1, 0x7f12025f

    .line 2269
    .line 2270
    .line 2271
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v0

    .line 2275
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2276
    .line 2277
    .line 2278
    goto :goto_18

    .line 2279
    :cond_6d
    const v2, 0x7f090185

    .line 2280
    .line 2281
    .line 2282
    if-ne v1, v2, :cond_6e

    .line 2283
    .line 2284
    sget v1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 2285
    .line 2286
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v0

    .line 2290
    sget-object v1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$SecretDebugSettingsFeatureFlag;->INSTANCE:Lapp/k9mail/feature/launcher/FeatureLauncherTarget$SecretDebugSettingsFeatureFlag;

    .line 2291
    .line 2292
    invoke-static {v0, v1}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 2293
    .line 2294
    .line 2295
    goto :goto_18

    .line 2296
    :cond_6e
    :goto_17
    move v6, v7

    .line 2297
    :cond_6f
    :goto_18
    return v6

    .line 2298
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2299
    .line 2300
    .line 2301
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2302
    .line 2303
    .line 2304
    move-result v1

    .line 2305
    const v2, 0x7f09025e

    .line 2306
    .line 2307
    .line 2308
    if-ne v1, v2, :cond_71

    .line 2309
    .line 2310
    check-cast v0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 2311
    .line 2312
    iget-object v1, v0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->messagingController$delegate:Lkotlin/Lazy;

    .line 2313
    .line 2314
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2315
    .line 2316
    .line 2317
    move-result-object v1

    .line 2318
    check-cast v1, Lcom/fsck/k9/controller/MessagingController;

    .line 2319
    .line 2320
    iget-object v0, v0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2321
    .line 2322
    if-eqz v0, :cond_70

    .line 2323
    .line 2324
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2325
    .line 2326
    .line 2327
    new-instance v2, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;

    .line 2328
    .line 2329
    invoke-direct {v2, v1, v0, v7}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 2330
    .line 2331
    .line 2332
    const-string v0, "refreshFolderList"

    .line 2333
    .line 2334
    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2335
    .line 2336
    .line 2337
    goto :goto_19

    .line 2338
    :cond_70
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2339
    .line 2340
    .line 2341
    throw v4

    .line 2342
    :cond_71
    move v6, v7

    .line 2343
    :goto_19
    return v6

    .line 2344
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2345
    .line 2346
    .line 2347
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2348
    .line 2349
    .line 2350
    move-result v1

    .line 2351
    const v2, 0x7f090135

    .line 2352
    .line 2353
    .line 2354
    if-ne v1, v2, :cond_72

    .line 2355
    .line 2356
    check-cast v0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;

    .line 2357
    .line 2358
    sget v1, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->$r8$clinit:I

    .line 2359
    .line 2360
    invoke-virtual {v0}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->getViewModel()Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v0

    .line 2364
    sget-object v1, Lcom/fsck/k9/ui/managefolders/Action$ShowClearFolderConfirmationDialog;->INSTANCE:Lcom/fsck/k9/ui/managefolders/Action$ShowClearFolderConfirmationDialog;

    .line 2365
    .line 2366
    iget-object v0, v0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 2367
    .line 2368
    invoke-virtual {v0, v1}, Lcom/fsck/k9/helper/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 2369
    .line 2370
    .line 2371
    goto :goto_1a

    .line 2372
    :cond_72
    move v6, v7

    .line 2373
    :goto_1a
    return v6

    .line 2374
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2375
    .line 2376
    .line 2377
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2378
    .line 2379
    .line 2380
    move-result v1

    .line 2381
    const v2, 0x7f0901ad

    .line 2382
    .line 2383
    .line 2384
    if-ne v1, v2, :cond_77

    .line 2385
    .line 2386
    check-cast v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;

    .line 2387
    .line 2388
    iget-object v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedAccountUuid:Ljava/lang/String;

    .line 2389
    .line 2390
    if-nez v1, :cond_73

    .line 2391
    .line 2392
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2393
    .line 2394
    .line 2395
    move-result-object v0

    .line 2396
    const v1, 0x7f120655

    .line 2397
    .line 2398
    .line 2399
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 2400
    .line 2401
    .line 2402
    move-result-object v0

    .line 2403
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2404
    .line 2405
    .line 2406
    goto/16 :goto_1b

    .line 2407
    .line 2408
    :cond_73
    iget-object v2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolderEnabled:Landroidx/preference/CheckBoxPreference;

    .line 2409
    .line 2410
    if-eqz v2, :cond_76

    .line 2411
    .line 2412
    iget-boolean v2, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 2413
    .line 2414
    if-eqz v2, :cond_74

    .line 2415
    .line 2416
    iget-object v2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderId:Ljava/lang/Long;

    .line 2417
    .line 2418
    if-nez v2, :cond_74

    .line 2419
    .line 2420
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2421
    .line 2422
    .line 2423
    move-result-object v0

    .line 2424
    const v1, 0x7f12065c

    .line 2425
    .line 2426
    .line 2427
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 2428
    .line 2429
    .line 2430
    move-result-object v0

    .line 2431
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2432
    .line 2433
    .line 2434
    goto/16 :goto_1b

    .line 2435
    .line 2436
    :cond_74
    iget v2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->appWidgetId:I

    .line 2437
    .line 2438
    iget-object v3, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderId:Ljava/lang/Long;

    .line 2439
    .line 2440
    iget-object v5, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->repository$delegate:Lkotlin/Lazy;

    .line 2441
    .line 2442
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2443
    .line 2444
    .line 2445
    move-result-object v5

    .line 2446
    check-cast v5, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;

    .line 2447
    .line 2448
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2449
    .line 2450
    .line 2451
    iget-object v5, v5, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;->context:Landroid/content/Context;

    .line 2452
    .line 2453
    const-string/jumbo v8, "unread_widget_configuration.xml"

    .line 2454
    .line 2455
    .line 2456
    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 2457
    .line 2458
    .line 2459
    move-result-object v5

    .line 2460
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2461
    .line 2462
    .line 2463
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2464
    .line 2465
    .line 2466
    move-result-object v5

    .line 2467
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2468
    .line 2469
    const-string v8, "unread_widget."

    .line 2470
    .line 2471
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2472
    .line 2473
    .line 2474
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2475
    .line 2476
    .line 2477
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2478
    .line 2479
    .line 2480
    move-result-object v7

    .line 2481
    invoke-interface {v5, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2482
    .line 2483
    .line 2484
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2485
    .line 2486
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2487
    .line 2488
    .line 2489
    const-string v7, ".folder_id"

    .line 2490
    .line 2491
    invoke-static {v1, v2, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v1

    .line 2495
    if-eqz v3, :cond_75

    .line 2496
    .line 2497
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 2498
    .line 2499
    .line 2500
    move-result-wide v2

    .line 2501
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v4

    .line 2505
    :cond_75
    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2506
    .line 2507
    .line 2508
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2509
    .line 2510
    .line 2511
    iget-object v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadWidgetUpdater$delegate:Lkotlin/Lazy;

    .line 2512
    .line 2513
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2514
    .line 2515
    .line 2516
    move-result-object v1

    .line 2517
    check-cast v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;

    .line 2518
    .line 2519
    iget v2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->appWidgetId:I

    .line 2520
    .line 2521
    iget-object v1, v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;->context:Landroid/content/Context;

    .line 2522
    .line 2523
    filled-new-array {v2}, [I

    .line 2524
    .line 2525
    .line 2526
    move-result-object v2

    .line 2527
    new-instance v3, Landroid/content/Intent;

    .line 2528
    .line 2529
    const-class v4, Lcom/fsck/k9/provider/UnreadWidgetProvider;

    .line 2530
    .line 2531
    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2532
    .line 2533
    .line 2534
    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 2535
    .line 2536
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2537
    .line 2538
    .line 2539
    const-string v4, "appWidgetIds"

    .line 2540
    .line 2541
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2542
    .line 2543
    .line 2544
    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2545
    .line 2546
    .line 2547
    new-instance v1, Landroid/content/Intent;

    .line 2548
    .line 2549
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2550
    .line 2551
    .line 2552
    const-string v2, "appWidgetId"

    .line 2553
    .line 2554
    iget v3, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->appWidgetId:I

    .line 2555
    .line 2556
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2557
    .line 2558
    .line 2559
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2560
    .line 2561
    .line 2562
    move-result-object v0

    .line 2563
    const/4 v2, -0x1

    .line 2564
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2565
    .line 2566
    .line 2567
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2568
    .line 2569
    .line 2570
    goto :goto_1b

    .line 2571
    :cond_76
    const-string v0, "unreadFolderEnabled"

    .line 2572
    .line 2573
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2574
    .line 2575
    .line 2576
    throw v4

    .line 2577
    :cond_77
    move v6, v7

    .line 2578
    :goto_1b
    return v6

    .line 2579
    :pswitch_7
    check-cast v0, Landroidx/fragment/app/FragmentManager;

    .line 2580
    .line 2581
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchOptionsItemSelected()Z

    .line 2582
    .line 2583
    .line 2584
    move-result v0

    .line 2585
    return v0

    .line 2586
    nop

    .line 2587
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    .line 6
    .line 7
    sget-object v9, Lnet/thunderbird/core/android/account/Expunge;->EXPUNGE_MANUALLY:Lnet/thunderbird/core/android/account/Expunge;

    .line 8
    .line 9
    const v10, 0x7f0901c9

    .line 10
    .line 11
    .line 12
    const v11, 0x7f0901c8

    .line 13
    .line 14
    .line 15
    const v12, 0x7f09026d

    .line 16
    .line 17
    .line 18
    const v13, 0x7f0903a1

    .line 19
    .line 20
    .line 21
    const v14, 0x7f090145

    .line 22
    .line 23
    .line 24
    const v15, 0x7f0903a7

    .line 25
    .line 26
    .line 27
    const v4, 0x7f120574

    .line 28
    .line 29
    .line 30
    const v5, 0x7fffffff

    .line 31
    .line 32
    .line 33
    const v6, 0x7f090391

    .line 34
    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v3, 0x1

    .line 39
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$2;->this$0:Ljava/lang/Object;

    .line 40
    .line 41
    packed-switch v2, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    check-cast v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->rootKey:Ljava/lang/String;

    .line 50
    .line 51
    const-string v3, "debug_preferences"

    .line 52
    .line 53
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->currentUiState:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    const v2, 0x7f0901d6

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;->isExportLogsMenuEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 75
    .line 76
    .line 77
    :cond_0
    :pswitch_0
    return-void

    .line 78
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 82
    .line 83
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isActive:Z

    .line 84
    .line 85
    if-nez v2, :cond_1

    .line 86
    .line 87
    goto/16 :goto_a

    .line 88
    .line 89
    :cond_1
    const v2, 0x7f09018e

    .line 90
    .line 91
    .line 92
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getGeneralSettingsManager$4()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget-object v4, v4, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 107
    .line 108
    iget-object v4, v4, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 109
    .line 110
    iget-boolean v4, v4, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewDeleteActionVisible:Z

    .line 111
    .line 112
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    .line 114
    .line 115
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isDeleteMenuItemDisabled:Z

    .line 116
    .line 117
    xor-int/2addr v4, v3

    .line 118
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isOutbox$1()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    xor-int/lit8 v4, v2, 0x1

    .line 126
    .line 127
    const v5, 0x7f090443

    .line 128
    .line 129
    .line 130
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    .line 136
    .line 137
    if-nez v2, :cond_4

    .line 138
    .line 139
    iget-object v2, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 140
    .line 141
    if-eqz v2, :cond_2

    .line 142
    .line 143
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 144
    .line 145
    iget-object v2, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 146
    .line 147
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-ne v2, v3, :cond_2

    .line 152
    .line 153
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const v4, 0x7f12040d

    .line 158
    .line 159
    .line 160
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const v4, 0x7f12040c

    .line 169
    .line 170
    .line 171
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 172
    .line 173
    .line 174
    :goto_0
    iget-object v2, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 175
    .line 176
    if-eqz v2, :cond_3

    .line 177
    .line 178
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 179
    .line 180
    iget-object v2, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 181
    .line 182
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-ne v2, v3, :cond_3

    .line 187
    .line 188
    const v2, 0x7f0800fb

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_3
    const v2, 0x7f0800fa

    .line 193
    .line 194
    .line 195
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 208
    .line 209
    .line 210
    :cond_4
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isOutbox$1()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    const v4, 0x7f090367

    .line 215
    .line 216
    .line 217
    const v5, 0x7f0903e5

    .line 218
    .line 219
    .line 220
    const v6, 0x7f090081

    .line 221
    .line 222
    .line 223
    const v9, 0x7f0902c5

    .line 224
    .line 225
    .line 226
    const-string v10, "account"

    .line 227
    .line 228
    if-nez v2, :cond_c

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iget-object v11, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 235
    .line 236
    if-eqz v11, :cond_b

    .line 237
    .line 238
    invoke-virtual {v2, v11}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-interface {v2}, Lcom/fsck/k9/backend/api/Backend;->getSupportsMove()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_c

    .line 247
    .line 248
    iget-object v2, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 249
    .line 250
    if-eqz v2, :cond_a

    .line 251
    .line 252
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getArchiveFolderId()Ljava/lang/Long;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    if-eqz v2, :cond_5

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 259
    .line 260
    .line 261
    move-result-wide v11

    .line 262
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    iget-wide v13, v2, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 267
    .line 268
    cmp-long v2, v13, v11

    .line 269
    .line 270
    if-eqz v2, :cond_5

    .line 271
    .line 272
    move v2, v3

    .line 273
    goto :goto_2

    .line 274
    :cond_5
    move v2, v8

    .line 275
    :goto_2
    iget-object v11, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 276
    .line 277
    if-eqz v11, :cond_9

    .line 278
    .line 279
    invoke-virtual {v11}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    if-eqz v11, :cond_6

    .line 284
    .line 285
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 286
    .line 287
    .line 288
    move-result-wide v11

    .line 289
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    iget-wide v13, v13, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 294
    .line 295
    cmp-long v11, v13, v11

    .line 296
    .line 297
    if-eqz v11, :cond_6

    .line 298
    .line 299
    move v11, v3

    .line 300
    goto :goto_3

    .line 301
    :cond_6
    move v11, v8

    .line 302
    :goto_3
    invoke-interface {v1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getGeneralSettingsManager$4()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 307
    .line 308
    .line 309
    move-result-object v12

    .line 310
    check-cast v12, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 311
    .line 312
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    iget-object v12, v12, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 317
    .line 318
    iget-object v12, v12, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 319
    .line 320
    iget-boolean v12, v12, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewMoveActionVisible:Z

    .line 321
    .line 322
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 323
    .line 324
    .line 325
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    if-eqz v2, :cond_7

    .line 330
    .line 331
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getGeneralSettingsManager$4()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    check-cast v9, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 336
    .line 337
    invoke-virtual {v9}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    iget-object v9, v9, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 342
    .line 343
    iget-object v9, v9, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 344
    .line 345
    iget-boolean v9, v9, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewArchiveActionVisible:Z

    .line 346
    .line 347
    if-eqz v9, :cond_7

    .line 348
    .line 349
    move v9, v3

    .line 350
    goto :goto_4

    .line 351
    :cond_7
    move v9, v8

    .line 352
    :goto_4
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 353
    .line 354
    .line 355
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    if-eqz v11, :cond_8

    .line 360
    .line 361
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getGeneralSettingsManager$4()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    check-cast v6, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 366
    .line 367
    invoke-virtual {v6}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    iget-object v6, v6, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 372
    .line 373
    iget-object v6, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 374
    .line 375
    iget-boolean v6, v6, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewSpamActionVisible:Z

    .line 376
    .line 377
    if-eqz v6, :cond_8

    .line 378
    .line 379
    move v6, v3

    .line 380
    goto :goto_5

    .line 381
    :cond_8
    move v6, v8

    .line 382
    :goto_5
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 383
    .line 384
    .line 385
    const v5, 0x7f09036a

    .line 386
    .line 387
    .line 388
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 393
    .line 394
    .line 395
    const v5, 0x7f090368

    .line 396
    .line 397
    .line 398
    const v6, 0x7f09036b

    .line 399
    .line 400
    .line 401
    invoke-static {v1, v5, v2, v6, v11}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 402
    .line 403
    .line 404
    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 409
    .line 410
    .line 411
    goto :goto_6

    .line 412
    :cond_9
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    throw v7

    .line 416
    :cond_a
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v7

    .line 420
    :cond_b
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw v7

    .line 424
    :cond_c
    invoke-static {v1, v9, v8, v6, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 425
    .line 426
    .line 427
    invoke-static {v1, v5, v8, v4, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 428
    .line 429
    .line 430
    :goto_6
    const v2, 0x7f0903ab

    .line 431
    .line 432
    .line 433
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 438
    .line 439
    const-string v5, "messageTopView"

    .line 440
    .line 441
    if-eqz v4, :cond_14

    .line 442
    .line 443
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getRenderPlainFormat()Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    xor-int/2addr v4, v3

    .line 448
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    .line 450
    .line 451
    const v2, 0x7f0903aa

    .line 452
    .line 453
    .line 454
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 459
    .line 460
    if-eqz v4, :cond_13

    .line 461
    .line 462
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getRenderPlainFormat()Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isOutbox$1()Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    const v4, 0x7f090369

    .line 474
    .line 475
    .line 476
    const v5, 0x7f09015c

    .line 477
    .line 478
    .line 479
    if-nez v2, :cond_e

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    iget-object v6, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 486
    .line 487
    if-eqz v6, :cond_d

    .line 488
    .line 489
    invoke-virtual {v2, v6}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-interface {v2}, Lcom/fsck/k9/backend/api/Backend;->getSupportsCopy()Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-eqz v2, :cond_e

    .line 498
    .line 499
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getGeneralSettingsManager$4()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    check-cast v5, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 508
    .line 509
    invoke-virtual {v5}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    iget-object v5, v5, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 514
    .line 515
    iget-object v5, v5, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 516
    .line 517
    iget-boolean v5, v5, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewCopyActionVisible:Z

    .line 518
    .line 519
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 520
    .line 521
    .line 522
    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 527
    .line 528
    .line 529
    goto :goto_7

    .line 530
    :cond_d
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    throw v7

    .line 534
    :cond_e
    invoke-static {v1, v5, v8, v4, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 535
    .line 536
    .line 537
    :goto_7
    const v2, 0x7f0902c6

    .line 538
    .line 539
    .line 540
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isOutbox$1()Z

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 549
    .line 550
    .line 551
    const v2, 0x7f09046b

    .line 552
    .line 553
    .line 554
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->preferredUnsubscribeUri:Lcom/fsck/k9/helper/UnsubscribeUri;

    .line 559
    .line 560
    if-eqz v4, :cond_f

    .line 561
    .line 562
    move v4, v3

    .line 563
    goto :goto_8

    .line 564
    :cond_f
    move v4, v8

    .line 565
    :goto_8
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 566
    .line 567
    .line 568
    const v2, 0x7f0903cd

    .line 569
    .line 570
    .line 571
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 576
    .line 577
    .line 578
    const v2, 0x7f0901d8

    .line 579
    .line 580
    .line 581
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 586
    .line 587
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    check-cast v4, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 592
    .line 593
    const-string v5, "message_view_action_export_eml"

    .line 594
    .line 595
    invoke-virtual {v4, v5}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    invoke-interface {v4}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 604
    .line 605
    .line 606
    const v2, 0x7f09034d

    .line 607
    .line 608
    .line 609
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    if-eqz v2, :cond_10

    .line 614
    .line 615
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 616
    .line 617
    .line 618
    :cond_10
    const v2, 0x7f090479

    .line 619
    .line 620
    .line 621
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 626
    .line 627
    .line 628
    const v2, 0x7f090441

    .line 629
    .line 630
    .line 631
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getGeneralSettingsManager$4()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    check-cast v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 640
    .line 641
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    iget-object v2, v2, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 646
    .line 647
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 648
    .line 649
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->fixedMessageViewTheme:Z

    .line 650
    .line 651
    if-eqz v2, :cond_11

    .line 652
    .line 653
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 654
    .line 655
    .line 656
    goto :goto_a

    .line 657
    :cond_11
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->themeManager$delegate:Lkotlin/Lazy;

    .line 658
    .line 659
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    check-cast v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 664
    .line 665
    invoke-virtual {v0}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getMessageViewTheme()Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    sget-object v2, Lnet/thunderbird/core/ui/theme/api/Theme;->DARK:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 670
    .line 671
    if-ne v0, v2, :cond_12

    .line 672
    .line 673
    const v0, 0x7f120470

    .line 674
    .line 675
    .line 676
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 677
    .line 678
    .line 679
    goto :goto_9

    .line 680
    :cond_12
    const v0, 0x7f12046f

    .line 681
    .line 682
    .line 683
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 684
    .line 685
    .line 686
    :goto_9
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 687
    .line 688
    .line 689
    :goto_a
    return-void

    .line 690
    :cond_13
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    throw v7

    .line 694
    :cond_14
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    throw v7

    .line 698
    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 699
    .line 700
    .line 701
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 702
    .line 703
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isActive:Z

    .line 704
    .line 705
    if-nez v2, :cond_15

    .line 706
    .line 707
    goto/16 :goto_19

    .line 708
    .line 709
    :cond_15
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 714
    .line 715
    .line 716
    move-result-object v6

    .line 717
    iget-boolean v6, v6, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 718
    .line 719
    xor-int/2addr v6, v3

    .line 720
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 721
    .line 722
    .line 723
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    .line 724
    .line 725
    .line 726
    move-result v6

    .line 727
    if-nez v6, :cond_16

    .line 728
    .line 729
    goto :goto_b

    .line 730
    :cond_16
    iget-object v6, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 731
    .line 732
    if-eqz v6, :cond_17

    .line 733
    .line 734
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 735
    .line 736
    .line 737
    goto :goto_b

    .line 738
    :cond_17
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    check-cast v2, Landroidx/appcompat/widget/SearchView;

    .line 746
    .line 747
    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v4

    .line 758
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 759
    .line 760
    .line 761
    new-instance v4, Lokhttp3/ConnectionPool;

    .line 762
    .line 763
    const/16 v5, 0x8

    .line 764
    .line 765
    invoke-direct {v4, v5, v0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 769
    .line 770
    .line 771
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->initialSearchViewQuery:Ljava/lang/String;

    .line 772
    .line 773
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SearchView;->setQuery$1(Ljava/lang/CharSequence;)V

    .line 774
    .line 775
    .line 776
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->initialSearchViewIconified:Z

    .line 777
    .line 778
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 779
    .line 780
    .line 781
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 782
    .line 783
    :goto_b
    invoke-interface {v1, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isShowFloatingActionButton:Z

    .line 788
    .line 789
    xor-int/2addr v4, v3

    .line 790
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 791
    .line 792
    .line 793
    const v2, 0x7f0903a3

    .line 794
    .line 795
    .line 796
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 801
    .line 802
    .line 803
    new-instance v4, Lcom/google/android/material/button/MaterialButton;

    .line 804
    .line 805
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 806
    .line 807
    .line 808
    move-result-object v5

    .line 809
    const v6, 0x7f0403e1

    .line 810
    .line 811
    .line 812
    invoke-direct {v4, v5, v7, v6}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 813
    .line 814
    .line 815
    const v5, 0x7f040133

    .line 816
    .line 817
    .line 818
    invoke-static {v4, v5}, Landroidx/work/Data$Companion;->getColor(Landroid/view/View;I)I

    .line 819
    .line 820
    .line 821
    move-result v5

    .line 822
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 823
    .line 824
    .line 825
    move-result-object v5

    .line 826
    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 830
    .line 831
    .line 832
    move-result-object v5

    .line 833
    const v6, 0x7f080117

    .line 834
    .line 835
    .line 836
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 837
    .line 838
    .line 839
    move-result-object v5

    .line 840
    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 841
    .line 842
    .line 843
    new-instance v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;

    .line 844
    .line 845
    invoke-direct {v5, v0, v8}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    .line 850
    .line 851
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 852
    .line 853
    .line 854
    invoke-interface {v1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 859
    .line 860
    .line 861
    invoke-interface {v1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 862
    .line 863
    .line 864
    move-result-object v2

    .line 865
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 866
    .line 867
    if-eqz v4, :cond_18

    .line 868
    .line 869
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 870
    .line 871
    if-eqz v4, :cond_18

    .line 872
    .line 873
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isOutbox()Z

    .line 874
    .line 875
    .line 876
    move-result v4

    .line 877
    if-nez v4, :cond_18

    .line 878
    .line 879
    move v4, v3

    .line 880
    goto :goto_c

    .line 881
    :cond_18
    move v4, v8

    .line 882
    :goto_c
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 883
    .line 884
    .line 885
    invoke-interface {v1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isShowingSpamFolder$1()Z

    .line 890
    .line 891
    .line 892
    move-result v4

    .line 893
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 894
    .line 895
    .line 896
    invoke-interface {v1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isShowingTrashFolder$1()Z

    .line 901
    .line 902
    .line 903
    move-result v4

    .line 904
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 905
    .line 906
    .line 907
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 908
    .line 909
    if-eqz v2, :cond_22

    .line 910
    .line 911
    invoke-interface {v1, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 912
    .line 913
    .line 914
    move-result-object v2

    .line 915
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isOutbox()Z

    .line 916
    .line 917
    .line 918
    move-result v4

    .line 919
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 920
    .line 921
    .line 922
    const v2, 0x7f0901d9

    .line 923
    .line 924
    .line 925
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 926
    .line 927
    .line 928
    move-result-object v2

    .line 929
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 930
    .line 931
    .line 932
    move-result-object v4

    .line 933
    iget-boolean v4, v4, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 934
    .line 935
    if-nez v4, :cond_1e

    .line 936
    .line 937
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isOutbox()Z

    .line 938
    .line 939
    .line 940
    move-result v4

    .line 941
    if-eqz v4, :cond_19

    .line 942
    .line 943
    goto :goto_f

    .line 944
    :cond_19
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 945
    .line 946
    if-eqz v4, :cond_1a

    .line 947
    .line 948
    iget-object v4, v4, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 949
    .line 950
    goto :goto_d

    .line 951
    :cond_1a
    move-object v4, v7

    .line 952
    :goto_d
    if-eqz v4, :cond_1c

    .line 953
    .line 954
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 955
    .line 956
    .line 957
    move-result-object v5

    .line 958
    invoke-virtual {v5, v4}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->isMoveCapable(Lnet/thunderbird/feature/account/AccountId;)Z

    .line 959
    .line 960
    .line 961
    move-result v4

    .line 962
    if-nez v4, :cond_1b

    .line 963
    .line 964
    goto :goto_e

    .line 965
    :cond_1b
    move v4, v3

    .line 966
    goto :goto_10

    .line 967
    :cond_1c
    :goto_e
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 968
    .line 969
    if-eqz v4, :cond_1d

    .line 970
    .line 971
    iget-object v7, v4, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    .line 972
    .line 973
    :cond_1d
    invoke-virtual {v0, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSpecialFolder$1(Ljava/lang/Long;)Z

    .line 974
    .line 975
    .line 976
    move-result v4

    .line 977
    goto :goto_10

    .line 978
    :cond_1e
    :goto_f
    move v4, v8

    .line 979
    :goto_10
    if-eqz v4, :cond_21

    .line 980
    .line 981
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 982
    .line 983
    if-nez v4, :cond_1f

    .line 984
    .line 985
    goto :goto_12

    .line 986
    :cond_1f
    iget-object v5, v4, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    .line 987
    .line 988
    if-ne v5, v9, :cond_21

    .line 989
    .line 990
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 991
    .line 992
    .line 993
    move-result-object v5

    .line 994
    iget-object v4, v4, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 995
    .line 996
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 997
    .line 998
    .line 999
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v5, v4}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrNull(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v4

    .line 1006
    if-nez v4, :cond_20

    .line 1007
    .line 1008
    move v4, v8

    .line 1009
    goto :goto_11

    .line 1010
    :cond_20
    iget-object v5, v5, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 1011
    .line 1012
    invoke-virtual {v5, v4}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v4

    .line 1016
    invoke-interface {v4}, Lcom/fsck/k9/backend/api/Backend;->getSupportsExpunge()Z

    .line 1017
    .line 1018
    .line 1019
    move-result v4

    .line 1020
    :goto_11
    if-eqz v4, :cond_21

    .line 1021
    .line 1022
    move v4, v3

    .line 1023
    goto :goto_13

    .line 1024
    :cond_21
    :goto_12
    move v4, v8

    .line 1025
    :goto_13
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1026
    .line 1027
    .line 1028
    :goto_14
    const v2, 0x7f09039c

    .line 1029
    .line 1030
    .line 1031
    goto :goto_15

    .line 1032
    :cond_22
    const v2, 0x7f0901d9

    .line 1033
    .line 1034
    .line 1035
    invoke-static {v1, v15, v8, v2, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_14

    .line 1039
    :goto_15
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v2

    .line 1043
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isRemoteSearch:Z

    .line 1044
    .line 1045
    if-nez v4, :cond_24

    .line 1046
    .line 1047
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v4

    .line 1051
    iget-boolean v4, v4, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 1052
    .line 1053
    if-eqz v4, :cond_24

    .line 1054
    .line 1055
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isRemoteSearch:Z

    .line 1056
    .line 1057
    if-nez v4, :cond_24

    .line 1058
    .line 1059
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 1060
    .line 1061
    if-eqz v4, :cond_24

    .line 1062
    .line 1063
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1064
    .line 1065
    if-eqz v4, :cond_24

    .line 1066
    .line 1067
    iget-object v4, v4, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 1068
    .line 1069
    if-eqz v4, :cond_24

    .line 1070
    .line 1071
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v5

    .line 1075
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v5, v4}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrNull(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v4

    .line 1082
    if-nez v4, :cond_23

    .line 1083
    .line 1084
    move v4, v8

    .line 1085
    goto :goto_16

    .line 1086
    :cond_23
    iget-object v5, v5, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 1087
    .line 1088
    invoke-virtual {v5, v4}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v4

    .line 1092
    invoke-interface {v4}, Lcom/fsck/k9/backend/api/Backend;->isPushCapable()Z

    .line 1093
    .line 1094
    .line 1095
    move-result v4

    .line 1096
    :goto_16
    if-ne v4, v3, :cond_24

    .line 1097
    .line 1098
    move v4, v3

    .line 1099
    goto :goto_17

    .line 1100
    :cond_24
    move v4, v8

    .line 1101
    :goto_17
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1102
    .line 1103
    .line 1104
    const v2, 0x7f090398

    .line 1105
    .line 1106
    .line 1107
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v2

    .line 1111
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v4

    .line 1115
    iget-boolean v4, v4, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 1116
    .line 1117
    if-eqz v4, :cond_25

    .line 1118
    .line 1119
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 1124
    .line 1125
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 1126
    .line 1127
    .line 1128
    move-result v0

    .line 1129
    if-nez v0, :cond_25

    .line 1130
    .line 1131
    goto :goto_18

    .line 1132
    :cond_25
    move v3, v8

    .line 1133
    :goto_18
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1134
    .line 1135
    .line 1136
    const v0, 0x7f090187

    .line 1137
    .line 1138
    .line 1139
    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1144
    .line 1145
    .line 1146
    const v0, 0x7f090186

    .line 1147
    .line 1148
    .line 1149
    const v2, 0x7f090188

    .line 1150
    .line 1151
    .line 1152
    invoke-static {v1, v2, v8, v0, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 1153
    .line 1154
    .line 1155
    const v0, 0x7f090185

    .line 1156
    .line 1157
    .line 1158
    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1163
    .line 1164
    .line 1165
    :goto_19
    return-void

    .line 1166
    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1167
    .line 1168
    .line 1169
    check-cast v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 1170
    .line 1171
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isActive:Z

    .line 1172
    .line 1173
    if-nez v2, :cond_26

    .line 1174
    .line 1175
    goto/16 :goto_23

    .line 1176
    .line 1177
    :cond_26
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v2

    .line 1181
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v6

    .line 1185
    iget-boolean v6, v6, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 1186
    .line 1187
    xor-int/2addr v6, v3

    .line 1188
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1189
    .line 1190
    .line 1191
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    .line 1192
    .line 1193
    .line 1194
    move-result v6

    .line 1195
    if-nez v6, :cond_27

    .line 1196
    .line 1197
    goto :goto_1a

    .line 1198
    :cond_27
    iget-object v6, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 1199
    .line 1200
    if-eqz v6, :cond_28

    .line 1201
    .line 1202
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1203
    .line 1204
    .line 1205
    goto :goto_1a

    .line 1206
    :cond_28
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v2

    .line 1210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1211
    .line 1212
    .line 1213
    check-cast v2, Landroidx/appcompat/widget/SearchView;

    .line 1214
    .line 1215
    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v5

    .line 1222
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v4

    .line 1226
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1227
    .line 1228
    .line 1229
    new-instance v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

    .line 1230
    .line 1231
    invoke-direct {v4, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 1235
    .line 1236
    .line 1237
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->initialSearchViewQuery:Ljava/lang/String;

    .line 1238
    .line 1239
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SearchView;->setQuery$1(Ljava/lang/CharSequence;)V

    .line 1240
    .line 1241
    .line 1242
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->initialSearchViewIconified:Z

    .line 1243
    .line 1244
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 1245
    .line 1246
    .line 1247
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 1248
    .line 1249
    :goto_1a
    invoke-interface {v1, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v2

    .line 1253
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isShowFloatingActionButton:Z

    .line 1254
    .line 1255
    xor-int/2addr v4, v3

    .line 1256
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1257
    .line 1258
    .line 1259
    const v2, 0x7f0903ac

    .line 1260
    .line 1261
    .line 1262
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v2

    .line 1266
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1267
    .line 1268
    .line 1269
    invoke-interface {v1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v2

    .line 1273
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1274
    .line 1275
    .line 1276
    invoke-interface {v1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v2

    .line 1280
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 1281
    .line 1282
    if-eqz v4, :cond_29

    .line 1283
    .line 1284
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 1285
    .line 1286
    if-eqz v4, :cond_29

    .line 1287
    .line 1288
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 1289
    .line 1290
    .line 1291
    move-result v4

    .line 1292
    if-nez v4, :cond_29

    .line 1293
    .line 1294
    move v4, v3

    .line 1295
    goto :goto_1b

    .line 1296
    :cond_29
    move v4, v8

    .line 1297
    :goto_1b
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1298
    .line 1299
    .line 1300
    invoke-interface {v1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v2

    .line 1304
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isShowingSpamFolder()Z

    .line 1305
    .line 1306
    .line 1307
    move-result v4

    .line 1308
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1309
    .line 1310
    .line 1311
    invoke-interface {v1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v2

    .line 1315
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isShowingTrashFolder()Z

    .line 1316
    .line 1317
    .line 1318
    move-result v4

    .line 1319
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1320
    .line 1321
    .line 1322
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 1323
    .line 1324
    if-eqz v2, :cond_2d

    .line 1325
    .line 1326
    invoke-interface {v1, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v2

    .line 1330
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 1331
    .line 1332
    .line 1333
    move-result v4

    .line 1334
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1335
    .line 1336
    .line 1337
    const v2, 0x7f0901d9

    .line 1338
    .line 1339
    .line 1340
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteFolder()Z

    .line 1345
    .line 1346
    .line 1347
    move-result v4

    .line 1348
    if-eqz v4, :cond_2c

    .line 1349
    .line 1350
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1351
    .line 1352
    if-nez v4, :cond_2a

    .line 1353
    .line 1354
    goto :goto_1d

    .line 1355
    :cond_2a
    iget-object v5, v4, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    .line 1356
    .line 1357
    if-ne v5, v9, :cond_2c

    .line 1358
    .line 1359
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v5

    .line 1363
    iget-object v4, v4, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 1364
    .line 1365
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v5, v4}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrNull(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v4

    .line 1375
    if-nez v4, :cond_2b

    .line 1376
    .line 1377
    move v4, v8

    .line 1378
    goto :goto_1c

    .line 1379
    :cond_2b
    iget-object v5, v5, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 1380
    .line 1381
    invoke-virtual {v5, v4}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v4

    .line 1385
    invoke-interface {v4}, Lcom/fsck/k9/backend/api/Backend;->getSupportsExpunge()Z

    .line 1386
    .line 1387
    .line 1388
    move-result v4

    .line 1389
    :goto_1c
    if-eqz v4, :cond_2c

    .line 1390
    .line 1391
    move v4, v3

    .line 1392
    goto :goto_1e

    .line 1393
    :cond_2c
    :goto_1d
    move v4, v8

    .line 1394
    :goto_1e
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1395
    .line 1396
    .line 1397
    :goto_1f
    const v2, 0x7f09039c

    .line 1398
    .line 1399
    .line 1400
    goto :goto_20

    .line 1401
    :cond_2d
    const v2, 0x7f0901d9

    .line 1402
    .line 1403
    .line 1404
    invoke-static {v1, v15, v8, v2, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 1405
    .line 1406
    .line 1407
    goto :goto_1f

    .line 1408
    :goto_20
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v2

    .line 1412
    iget-boolean v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteSearch:Z

    .line 1413
    .line 1414
    if-nez v4, :cond_2e

    .line 1415
    .line 1416
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteSearchAllowed()Z

    .line 1417
    .line 1418
    .line 1419
    move-result v4

    .line 1420
    if-eqz v4, :cond_2e

    .line 1421
    .line 1422
    move v4, v3

    .line 1423
    goto :goto_21

    .line 1424
    :cond_2e
    move v4, v8

    .line 1425
    :goto_21
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1426
    .line 1427
    .line 1428
    const v2, 0x7f090398

    .line 1429
    .line 1430
    .line 1431
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v2

    .line 1435
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v4

    .line 1439
    iget-boolean v4, v4, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 1440
    .line 1441
    if-eqz v4, :cond_2f

    .line 1442
    .line 1443
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v0

    .line 1447
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 1448
    .line 1449
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 1450
    .line 1451
    .line 1452
    move-result v0

    .line 1453
    if-nez v0, :cond_2f

    .line 1454
    .line 1455
    goto :goto_22

    .line 1456
    :cond_2f
    move v3, v8

    .line 1457
    :goto_22
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1458
    .line 1459
    .line 1460
    const v0, 0x7f090187

    .line 1461
    .line 1462
    .line 1463
    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v0

    .line 1467
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1468
    .line 1469
    .line 1470
    const v0, 0x7f090186

    .line 1471
    .line 1472
    .line 1473
    const v2, 0x7f090188

    .line 1474
    .line 1475
    .line 1476
    invoke-static {v1, v2, v8, v0, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 1477
    .line 1478
    .line 1479
    const v0, 0x7f090185

    .line 1480
    .line 1481
    .line 1482
    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v0

    .line 1486
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1487
    .line 1488
    .line 1489
    :goto_23
    return-void

    .line 1490
    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1491
    .line 1492
    .line 1493
    const v0, 0x7f0901e6

    .line 1494
    .line 1495
    .line 1496
    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    .line 1501
    .line 1502
    .line 1503
    move-result v1

    .line 1504
    xor-int/2addr v1, v3

    .line 1505
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1506
    .line 1507
    .line 1508
    :pswitch_5
    return-void

    .line 1509
    :pswitch_6
    check-cast v0, Landroidx/fragment/app/FragmentManager;

    .line 1510
    .line 1511
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchPrepareOptionsMenu()Z

    .line 1512
    .line 1513
    .line 1514
    return-void

    .line 1515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
