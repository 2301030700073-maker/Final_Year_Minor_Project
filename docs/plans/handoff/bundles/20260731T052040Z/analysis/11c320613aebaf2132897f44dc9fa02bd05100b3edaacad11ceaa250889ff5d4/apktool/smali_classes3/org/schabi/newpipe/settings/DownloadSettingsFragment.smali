.class public Lorg/schabi/newpipe/settings/DownloadSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public ctx:Landroid/content/Context;

.field public downloadPathAudioPreference:Ljava/lang/String;

.field public downloadPathVideoPreference:Ljava/lang/String;

.field public prefPathAudio:Landroidx/preference/Preference;

.field public prefPathVideo:Landroidx/preference/Preference;

.field public prefStorageAsk:Landroidx/preference/Preference;

.field public final requestDownloadAudioPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public final requestDownloadVideoPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public storageUseSafPreference:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/DownloadSettingsFragment;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadVideoPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 21
    .line 22
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/DownloadSettingsFragment;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadAudioPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public final onCreatePreferences()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f13011c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    .line 12
    .line 13
    const v0, 0x7f130116

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    .line 21
    .line 22
    const v0, 0x7f1304ca

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->storageUseSafPreference:Ljava/lang/String;

    .line 30
    .line 31
    const v0, 0x7f130124

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathVideo:Landroidx/preference/Preference;

    .line 45
    .line 46
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathAudio:Landroidx/preference/Preference;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    .line 59
    .line 60
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->storageUseSafPreference:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    .line 67
    .line 68
    iget-object v2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v2}, Lokio/Options$Companion;->useStorageAccessFramework(Landroid/content/Context;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 75
    .line 76
    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    const/16 v3, 0x1d

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    if-lt v2, v3, :cond_0

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 85
    .line 86
    .line 87
    const v2, 0x7f130129

    .line 88
    .line 89
    .line 90
    iget-object v3, v1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    .line 100
    .line 101
    const v2, 0x7f130126

    .line 102
    .line 103
    .line 104
    iget-object v3, v1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 117
    .line 118
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    xor-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathVideo:Landroidx/preference/Preference;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathAudio:Landroidx/preference/Preference;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 137
    .line 138
    const/4 v2, 0x0

    .line 139
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_2

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 155
    .line 156
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_2

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_3

    .line 167
    .line 168
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    .line 169
    .line 170
    .line 171
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    .line 172
    .line 173
    new-instance v1, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 179
    .line 180
    return-void
.end method

.method public final onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 10
    .line 11
    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->storageUseSafPreference:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p1}, Lokio/Options$Companion;->useStorageAccessFramework(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 21
    .line 22
    const v0, 0x7f13011c

    .line 23
    .line 24
    .line 25
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lokio/Options$Companion;->saveDefaultDirectory(Landroid/content/Context;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 31
    .line 32
    const v0, 0x7f130116

    .line 33
    .line 34
    .line 35
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, v0, v1}, Lokio/Options$Companion;->saveDefaultDirectory(Landroid/content/Context;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget-object v3, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getPicker(Landroid/content/Context;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 84
    .line 85
    iget-object p0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadVideoPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 86
    .line 87
    invoke-static {p0, p1, v3, v0}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    return v2

    .line 91
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getPicker(Landroid/content/Context;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 106
    .line 107
    iget-object p0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadAudioPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 108
    .line 109
    invoke-static {p0, p1, v3, v0}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    return v2

    .line 113
    :cond_3
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    return p0
.end method

.method public final requestDownloadPathResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "No write permissions on "

    .line 4
    .line 5
    const-string v2, "Acquiring tree success from "

    .line 6
    .line 7
    iget v3, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    if-eq v3, v4, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object p1, v3

    .line 24
    :goto_0
    const v4, 0x7f1301f3

    .line 25
    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    const p1, 0x7f13022b

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v4, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->showMessageDialog(II)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iget-object v6, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    const-string v7, ""

    .line 43
    .line 44
    invoke-interface {v6, p2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v5, p1}, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_5

    .line 52
    .line 53
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    const/4 v7, 0x3

    .line 58
    invoke-virtual {v5, v6, p1, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 62
    .line 63
    invoke-direct {v6, v5, p1, v3}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-object v2, v6, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/TreeDocumentFile;

    .line 86
    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    iget-object v2, v6, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    .line 90
    .line 91
    invoke-static {v2}, Lj$/nio/file/Files;->isWritable(Lj$/nio/file/Path;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v2}, Landroidx/documentfile/provider/TreeDocumentFile;->canWrite()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :goto_1
    if-eqz v2, :cond_4

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    new-instance p2, Ljava/io/IOException;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    move-exception p2

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v2, "Error acquiring tree from "

    .line 129
    .line 130
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .line 146
    .line 147
    const p1, 0x7f130362

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v4, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->showMessageDialog(II)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_5
    invoke-static {p1}, Lkotlin/ranges/RangesKt;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_6

    .line 163
    .line 164
    const p1, 0x7f13011e

    .line 165
    .line 166
    .line 167
    const p2, 0x7f13011d

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->showMessageDialog(II)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_6
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :goto_2
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 179
    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public final showMessageDialog(II)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x7f130397

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 22
    .line 23
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final showPathInSummary(Ljava/lang/String;ILandroidx/preference/Preference;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "file"

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final updatePreferencesSummary()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0x7f13011a

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathVideo:Landroidx/preference/Preference;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->showPathInSummary(Ljava/lang/String;ILandroidx/preference/Preference;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    .line 12
    .line 13
    const v1, 0x7f130117

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathAudio:Landroidx/preference/Preference;

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1, v2}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->showPathInSummary(Ljava/lang/String;ILandroidx/preference/Preference;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
