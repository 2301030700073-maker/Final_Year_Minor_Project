.class public final Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;
.super Lcom/takisoft/preferencex/PreferenceFragmentCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public appWidgetId:I

.field public final chooseAccountLauncher:Landroidx/fragment/app/Fragment$10;

.field public final chooseFolderLauncher:Landroidx/fragment/app/Fragment$10;

.field public final preferences$delegate:Lkotlin/Lazy;

.field public final repository$delegate:Lkotlin/Lazy;

.field public selectedAccountUuid:Ljava/lang/String;

.field public selectedFolderDisplayName:Ljava/lang/String;

.field public selectedFolderId:Ljava/lang/Long;

.field public unreadAccount:Landroidx/preference/Preference;

.field public unreadFolder:Landroidx/preference/Preference;

.field public unreadFolderEnabled:Landroidx/preference/CheckBoxPreference;

.field public final unreadWidgetUpdater$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;I)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->preferences$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v0, p0, v3}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->repository$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$special$$inlined$inject$default$1;

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    invoke-direct {v0, p0, v4}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadWidgetUpdater$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 43
    .line 44
    const/16 v2, 0xa

    .line 45
    .line 46
    invoke-direct {v0, v2}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3;

    .line 50
    .line 51
    invoke-direct {v2, p0, v1}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->chooseAccountLauncher:Landroidx/fragment/app/Fragment$10;

    .line 59
    .line 60
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;

    .line 61
    .line 62
    sget-object v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;->CHOOSE:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3;

    .line 68
    .line 69
    invoke-direct {v1, p0, v3}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda3;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->chooseFolderLauncher:Landroidx/fragment/app/Fragment$10;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final handleChooseAccount(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedAccountUuid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedAccountUuid:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderId:Ljava/lang/Long;

    .line 14
    .line 15
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderDisplayName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolder:Landroidx/preference/Preference;

    .line 18
    .line 19
    const-string v1, "unreadFolder"

    .line 20
    .line 21
    if-eqz v0, :cond_b

    .line 22
    .line 23
    const v2, 0x7f12065d

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedAccountUuid:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "unified_folders"

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const-string v3, "unreadAccount"

    .line 42
    .line 43
    const-string v4, "unreadFolderEnabled"

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedAccountUuid:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadAccount:Landroidx/preference/Preference;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    const v2, 0x7f120662

    .line 60
    .line 61
    .line 62
    iget-object v3, v0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    :goto_0
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolderEnabled:Landroidx/preference/CheckBoxPreference;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolderEnabled:Landroidx/preference/CheckBoxPreference;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolder:Landroidx/preference/Preference;

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderId:Ljava/lang/Long;

    .line 99
    .line 100
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderDisplayName:Ljava/lang/String;

    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_6
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->preferences$delegate:Lkotlin/Lazy;

    .line 116
    .line 117
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 122
    .line 123
    iget-object v2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedAccountUuid:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    iget-object v2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadAccount:Landroidx/preference/Preference;

    .line 135
    .line 136
    if-eqz v2, :cond_9

    .line 137
    .line 138
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolderEnabled:Landroidx/preference/CheckBoxPreference;

    .line 146
    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    const/4 v2, 0x1

    .line 150
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 151
    .line 152
    .line 153
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolder:Landroidx/preference/Preference;

    .line 154
    .line 155
    if-eqz p0, :cond_7

    .line 156
    .line 157
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 174
    .line 175
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedAccountUuid:Ljava/lang/String;

    .line 176
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v1, "Account "

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p0, " not found"

    .line 188
    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1
.end method

.method public final onCreatePreferencesFix(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const v0, 0x7f160011

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    const-string v0, "app_widget_id"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->appWidgetId:I

    .line 18
    .line 19
    const-string p1, "unread_account"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadAccount:Landroidx/preference/Preference;

    .line 29
    .line 30
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, p0, v1}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 37
    .line 38
    const-string p1, "unread_folder_enabled"

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 48
    .line 49
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolderEnabled:Landroidx/preference/CheckBoxPreference;

    .line 50
    .line 51
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-direct {v0, p0, v1}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;I)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p1, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 58
    .line 59
    const-string p1, "unread_folder"

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolder:Landroidx/preference/Preference;

    .line 69
    .line 70
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const/4 v1, 0x2

    .line 73
    invoke-direct {v0, p0, v1}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;I)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 77
    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    const-string p1, "com.fsck.k9.widget.unread.selectedAccountUuid"

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->handleChooseAccount(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string p1, "com.fsck.k9.widget.unread.selectedFolderId"

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v1, 0x0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    move-object p1, v1

    .line 110
    :goto_0
    const-string v0, "com.fsck.k9.widget.unread.selectedFolderDisplayName"

    .line 111
    .line 112
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    if-eqz p2, :cond_2

    .line 119
    .line 120
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderId:Ljava/lang/Long;

    .line 121
    .line 122
    iput-object p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderDisplayName:Ljava/lang/String;

    .line 123
    .line 124
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->unreadFolder:Landroidx/preference/Preference;

    .line 125
    .line 126
    if-eqz p0, :cond_1

    .line 127
    .line 128
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_1
    const-string p0, "unreadFolder"

    .line 133
    .line 134
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v1

    .line 138
    :cond_2
    return-void

    .line 139
    :cond_3
    const-string p0, "Missing argument \'app_widget_id\'"

    .line 140
    .line 141
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.fsck.k9.widget.unread.selectedAccountUuid"

    .line 5
    .line 6
    iget-object v1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedAccountUuid:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderId:Ljava/lang/Long;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-string v2, "com.fsck.k9.widget.unread.selectedFolderId"

    .line 20
    .line 21
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string v0, "com.fsck.k9.widget.unread.selectedFolderDisplayName"

    .line 25
    .line 26
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationFragment;->selectedFolderDisplayName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Landroidx/fragment/app/FragmentManager$2;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-direct {p2, v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, p2, p0}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/fragment/app/FragmentManager$2;Landroidx/lifecycle/LifecycleOwner;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
