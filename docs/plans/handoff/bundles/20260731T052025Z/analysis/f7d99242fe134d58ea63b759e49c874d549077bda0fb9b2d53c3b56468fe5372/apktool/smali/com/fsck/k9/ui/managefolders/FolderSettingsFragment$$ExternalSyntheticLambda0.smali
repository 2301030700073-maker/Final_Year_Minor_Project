.class public final synthetic Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lcom/fsck/k9/ui/managefolders/Action$ShowClearFolderConfirmationDialog;

    .line 12
    .line 13
    sget v0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->$r8$clinit:I

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    instance-of p1, p1, Lcom/fsck/k9/ui/managefolders/Action$ShowClearFolderConfirmationDialog;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const p1, 0x7f120294

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const v0, 0x7f120293

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v2, 0x7f120292

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const v3, 0x7f1201fa

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v4, 0x1

    .line 51
    invoke-static {v4, p1, v0, v2, v3}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v4, p0}, Landroidx/fragment/app/Fragment;->setTargetFragment(ILandroidx/fragment/app/Fragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v0, "clear_folder_confirmation"

    .line 63
    .line 64
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 69
    .line 70
    .line 71
    move-object v1, v2

    .line 72
    :goto_0
    return-object v1

    .line 73
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsResult;

    .line 74
    .line 75
    sget v0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->$r8$clinit:I

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    instance-of v0, p1, Lcom/fsck/k9/ui/managefolders/FolderNotFound;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-static {p0}, Lkotlin/math/MathKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavHostController;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 89
    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_1
    instance-of v0, p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsData;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    check-cast p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsData;

    .line 98
    .line 99
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 100
    .line 101
    iget-object v3, p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsData;->dataStore:Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;

    .line 102
    .line 103
    iput-object v3, v0, Landroidx/preference/PreferenceManager;->mPreferenceDataStore:Landroidx/compose/ui/unit/IntRectKt;

    .line 104
    .line 105
    const v0, 0x7f160004

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v2, v0}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 112
    .line 113
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsData;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;->displayName(Lnet/thunderbird/feature/mail/folder/api/Folder;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v2, "folder_settings"

    .line 126
    .line 127
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 142
    .line 143
    .line 144
    iget-boolean p1, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->isLocalOnly:Z

    .line 145
    .line 146
    if-eqz p1, :cond_5

    .line 147
    .line 148
    const-string p1, "folder_settings_sync"

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->requirePreference(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iget-boolean v0, p1, Landroidx/preference/Preference;->mVisible:Z

    .line 155
    .line 156
    const/4 v2, 0x0

    .line 157
    if-eqz v0, :cond_2

    .line 158
    .line 159
    iput-boolean v2, p1, Landroidx/preference/Preference;->mVisible:Z

    .line 160
    .line 161
    iget-object p1, p1, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    .line 162
    .line 163
    if-eqz p1, :cond_2

    .line 164
    .line 165
    iget-object v0, p1, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 166
    .line 167
    iget-object p1, p1, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/fragment/app/Fragment$1;

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .line 174
    .line 175
    :cond_2
    const-string p1, "folder_settings_push"

    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->requirePreference(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iget-boolean v0, p1, Landroidx/preference/Preference;->mVisible:Z

    .line 182
    .line 183
    if-eqz v0, :cond_3

    .line 184
    .line 185
    iput-boolean v2, p1, Landroidx/preference/Preference;->mVisible:Z

    .line 186
    .line 187
    iget-object p1, p1, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    .line 188
    .line 189
    if-eqz p1, :cond_3

    .line 190
    .line 191
    iget-object v0, p1, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 192
    .line 193
    iget-object p1, p1, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/fragment/app/Fragment$1;

    .line 194
    .line 195
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    .line 200
    .line 201
    :cond_3
    const-string p1, "folder_settings_notifications"

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->requirePreference(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    iget-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 208
    .line 209
    if-eqz p1, :cond_5

    .line 210
    .line 211
    iput-boolean v2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 212
    .line 213
    iget-object p0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    .line 214
    .line 215
    if-eqz p0, :cond_5

    .line 216
    .line 217
    iget-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 218
    .line 219
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/fragment/app/Fragment$1;

    .line 220
    .line 221
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_4
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 229
    .line 230
    .line 231
    move-object v1, v2

    .line 232
    :cond_5
    :goto_1
    return-object v1

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
