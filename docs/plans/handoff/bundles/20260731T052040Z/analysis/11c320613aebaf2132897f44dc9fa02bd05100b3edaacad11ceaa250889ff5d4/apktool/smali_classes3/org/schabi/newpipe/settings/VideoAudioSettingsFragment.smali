.class public Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public listener:Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreatePreferences()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->updateSeekOptions()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->updateResolutionOptions()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->listener:Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->listener:Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->listener:Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final updateResolutionOptions()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const v2, 0x7f130495

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const v2, 0x7f030024

    .line 24
    .line 25
    .line 26
    const v4, 0x7f030010

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2, v4, v1}, Lorg/schabi/newpipe/util/ListHelper;->getSortedResolutionList(Landroid/content/res/Resources;IIZ)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const v5, 0x7f030025

    .line 34
    .line 35
    .line 36
    const v6, 0x7f030011

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v5, v6, v1}, Lorg/schabi/newpipe/util/ListHelper;->getSortedResolutionList(Landroid/content/res/Resources;IIZ)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const v7, 0x7f030019

    .line 44
    .line 45
    .line 46
    const v8, 0x7f03000f

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v7, v8, v1}, Lorg/schabi/newpipe/util/ListHelper;->getSortedResolutionList(Landroid/content/res/Resources;IIZ)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const v9, 0x7f030018

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v9, v4, v1}, Lorg/schabi/newpipe/util/ListHelper;->getSortedResolutionList(Landroid/content/res/Resources;IIZ)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const v9, 0x7f1300e2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v9}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    check-cast v9, Landroidx/preference/ListPreference;

    .line 68
    .line 69
    const v10, 0x7f1300de

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v10}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    check-cast v10, Landroidx/preference/ListPreference;

    .line 77
    .line 78
    const v11, 0x7f130246

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v11}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Landroidx/preference/ListPreference;

    .line 86
    .line 87
    new-array v11, v3, [Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    check-cast v11, [Ljava/lang/CharSequence;

    .line 94
    .line 95
    invoke-virtual {v9, v11}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    new-array v11, v3, [Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    check-cast v11, [Ljava/lang/CharSequence;

    .line 105
    .line 106
    iput-object v11, v9, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 107
    .line 108
    new-array v11, v3, [Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, [Ljava/lang/CharSequence;

    .line 115
    .line 116
    invoke-virtual {v10, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    new-array v2, v3, [Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, [Ljava/lang/CharSequence;

    .line 126
    .line 127
    iput-object v2, v10, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 128
    .line 129
    new-array v2, v3, [Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, [Ljava/lang/CharSequence;

    .line 136
    .line 137
    invoke-virtual {p0, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    new-array v2, v3, [Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, [Ljava/lang/CharSequence;

    .line 147
    .line 148
    iput-object v2, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 149
    .line 150
    if-nez v1, :cond_2

    .line 151
    .line 152
    iget-object v1, v9, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    .line 168
    invoke-virtual {v9}, Landroidx/preference/ListPreference;->setValueIndex()V

    .line 169
    .line 170
    .line 171
    :cond_0
    iget-object v1, v10, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_1

    .line 186
    .line 187
    invoke-virtual {v10}, Landroidx/preference/ListPreference;->setValueIndex()V

    .line 188
    .line 189
    .line 190
    :cond_1
    iget-object v1, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_2

    .line 205
    .line 206
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->setValueIndex()V

    .line 207
    .line 208
    .line 209
    :cond_2
    return-void
.end method

.method public final updateSeekOptions()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f030029

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const v5, 0x7f130526

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    array-length v5, v1

    .line 41
    move v7, v6

    .line 42
    :goto_0
    const/4 v8, 0x1

    .line 43
    const/4 v9, 0x5

    .line 44
    if-ge v7, v5, :cond_1

    .line 45
    .line 46
    aget-object v10, v1, v7

    .line 47
    .line 48
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    div-int/lit16 v11, v11, 0x3e8

    .line 53
    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    rem-int/lit8 v12, v11, 0xa

    .line 57
    .line 58
    if-ne v12, v9, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    const v9, 0x7f11000f

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v0, v9, v11}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    new-array v8, v8, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v10, v8, v6

    .line 78
    .line 79
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    :catch_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const v0, 0x7f130445

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroidx/preference/ListPreference;

    .line 97
    .line 98
    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, [Ljava/lang/CharSequence;

    .line 105
    .line 106
    iput-object v1, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 107
    .line 108
    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 109
    .line 110
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, [Ljava/lang/CharSequence;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v4, :cond_2

    .line 126
    .line 127
    div-int/lit16 v1, v1, 0x3e8

    .line 128
    .line 129
    rem-int/lit8 v2, v1, 0xa

    .line 130
    .line 131
    if-ne v2, v9, :cond_2

    .line 132
    .line 133
    add-int/2addr v1, v9

    .line 134
    mul-int/lit16 v2, v1, 0x3e8

    .line 135
    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    new-array v2, v8, [Ljava/lang/Object;

    .line 152
    .line 153
    aput-object v1, v2, v6

    .line 154
    .line 155
    const v1, 0x7f13034c

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {v0, p0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 167
    .line 168
    .line 169
    :cond_2
    return-void
.end method
