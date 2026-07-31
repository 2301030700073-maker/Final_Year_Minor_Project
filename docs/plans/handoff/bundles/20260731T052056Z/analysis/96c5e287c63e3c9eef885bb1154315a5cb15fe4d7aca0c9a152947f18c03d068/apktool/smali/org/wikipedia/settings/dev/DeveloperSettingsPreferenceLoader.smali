.class public final Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;
.super Lorg/wikipedia/settings/BasePreferenceLoader;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final setMediaWikiBaseUriChangeListener:Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

.field public final setMediaWikiMultiLangSupportChangeListener:Lretrofit2/Utils$$ExternalSyntheticBUOutline0;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/wikipedia/settings/BasePreferenceLoader;-><init>(ILjava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-direct {p1, v0, p0}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->setMediaWikiBaseUriChangeListener:Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 12
    .line 13
    new-instance p1, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-direct {p1, v0, p0}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->setMediaWikiMultiLangSupportChangeListener:Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 20
    .line 21
    return-void
.end method

.method public static filterPreferenceGroupItems(Landroidx/preference/Preference;Ljava/lang/String;)Z
    .locals 6

    .line 1
    instance-of v0, p0, Landroidx/preference/PreferenceGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    check-cast p0, Landroidx/preference/PreferenceGroup;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    move v3, v1

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v3, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v5, p1}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->filterPreferenceGroupItems(Landroidx/preference/Preference;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-lez v4, :cond_2

    .line 38
    .line 39
    move v1, v2

    .line 40
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 41
    .line 42
    .line 43
    iget-boolean p0, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 44
    .line 45
    return p0

    .line 46
    :cond_3
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-static {v0, p1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ne v0, v2, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-static {v0, p1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-ne p1, v2, :cond_5

    .line 80
    .line 81
    :goto_1
    move v1, v2

    .line 82
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 83
    .line 84
    .line 85
    return v1
.end method


# virtual methods
.method public final filterPreferences(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/preference/PreferenceScreen;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Landroidx/preference/PreferenceFragmentCompat;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Landroidx/preference/PreferenceScreen;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v2, p1}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->filterPreferenceGroupItems(Landroidx/preference/Preference;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void

    .line 46
    :cond_1
    iget-object p1, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 49
    .line 50
    monitor-enter p1

    .line 51
    :try_start_0
    iget-object v0, p1, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    add-int/lit8 v2, v2, -0x1

    .line 58
    .line 59
    :goto_1
    if-ltz v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroidx/preference/Preference;

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreferenceInt(Landroidx/preference/Preference;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, -0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object p1, p1, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget-object v0, p1, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    iget-object p1, p1, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/lifecycle/LiveData$1;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->loadPreferences()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p0
.end method

.method public final loadPreferences()V
    .locals 9

    .line 1
    const v0, 0x7f150001

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->loadPreferences(I)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f120629

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->setMediaWikiBaseUriChangeListener:Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 17
    .line 18
    const v0, 0x7f12062a

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->setMediaWikiMultiLangSupportChangeListener:Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 26
    .line 27
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 28
    .line 29
    const v0, 0x7f1206e2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 37
    .line 38
    const/4 v2, 0x7

    .line 39
    invoke-direct {v1, v2}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 43
    .line 44
    const v0, 0x7f1205c8

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    invoke-direct {v1, p0, v3}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 58
    .line 59
    const v0, 0x7f1205ca

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 67
    .line 68
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 69
    .line 70
    .line 71
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 72
    .line 73
    const v0, 0x7f1205e1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 81
    .line 82
    const/16 v2, 0x8

    .line 83
    .line 84
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 85
    .line 86
    .line 87
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 88
    .line 89
    const v0, 0x7f1205e2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 97
    .line 98
    const/16 v3, 0x9

    .line 99
    .line 100
    invoke-direct {v1, p0, v3}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 101
    .line 102
    .line 103
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 104
    .line 105
    const v0, 0x7f1205c9

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 113
    .line 114
    const/16 v3, 0xa

    .line 115
    .line 116
    invoke-direct {v1, p0, v3}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 117
    .line 118
    .line 119
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 120
    .line 121
    const v0, 0x7f12062c

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 129
    .line 130
    const/16 v4, 0xb

    .line 131
    .line 132
    invoke-direct {v1, p0, v4}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 133
    .line 134
    .line 135
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 136
    .line 137
    const v0, 0x7f12062d

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 145
    .line 146
    const/16 v4, 0xc

    .line 147
    .line 148
    invoke-direct {v1, p0, v4}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 149
    .line 150
    .line 151
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 152
    .line 153
    const v0, 0x7f1205d0

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iget-object v4, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v4, Landroidx/preference/PreferenceFragmentCompat;

    .line 163
    .line 164
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    sget-object v5, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 169
    .line 170
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAnnouncementShownDialogs()Ljava/util/Set;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    const/4 v6, 0x1

    .line 183
    new-array v7, v6, [Ljava/lang/Object;

    .line 184
    .line 185
    const/4 v8, 0x0

    .line 186
    aput-object v5, v7, v8

    .line 187
    .line 188
    const v5, 0x7f1206de

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 203
    .line 204
    const/16 v4, 0xd

    .line 205
    .line 206
    invoke-direct {v1, p0, v4}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 207
    .line 208
    .line 209
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 210
    .line 211
    const v0, 0x7f120690

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 219
    .line 220
    const/16 v5, 0xe

    .line 221
    .line 222
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 223
    .line 224
    .line 225
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 226
    .line 227
    const v0, 0x7f1206f2

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 235
    .line 236
    invoke-direct {v1, p0, v8}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 237
    .line 238
    .line 239
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 240
    .line 241
    const v0, 0x7f1206f3

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 249
    .line 250
    const/16 v5, 0xf

    .line 251
    .line 252
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 253
    .line 254
    .line 255
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 256
    .line 257
    const v0, 0x7f1205bc

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 265
    .line 266
    const/16 v5, 0x10

    .line 267
    .line 268
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 269
    .line 270
    .line 271
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 272
    .line 273
    const v0, 0x7f1205bd

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 281
    .line 282
    const/16 v5, 0x11

    .line 283
    .line 284
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 285
    .line 286
    .line 287
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 288
    .line 289
    const v0, 0x7f12062b

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    new-instance v1, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 297
    .line 298
    invoke-direct {v1, v2}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 299
    .line 300
    .line 301
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 302
    .line 303
    const v0, 0x7f1206ea

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 311
    .line 312
    const/16 v2, 0x12

    .line 313
    .line 314
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 315
    .line 316
    .line 317
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 318
    .line 319
    const v0, 0x7f120639

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 327
    .line 328
    const/16 v2, 0x13

    .line 329
    .line 330
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 331
    .line 332
    .line 333
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 334
    .line 335
    const v0, 0x7f120642

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 343
    .line 344
    invoke-direct {v1, p0, v6}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 345
    .line 346
    .line 347
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 348
    .line 349
    const v0, 0x7f12066c

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    check-cast v0, Landroidx/preference/ListPreference;

    .line 357
    .line 358
    invoke-static {}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->getEntries()Lkotlin/enums/EnumEntries;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .line 370
    .line 371
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-eqz v5, :cond_0

    .line 380
    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    check-cast v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 386
    .line 387
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    goto :goto_0

    .line 395
    :cond_0
    new-array v1, v8, [Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    check-cast v1, [Ljava/lang/String;

    .line 402
    .line 403
    check-cast v1, [Ljava/lang/CharSequence;

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    iput-object v1, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 409
    .line 410
    new-instance v1, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 411
    .line 412
    invoke-direct {v1, v4, v0, p0}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 416
    .line 417
    const v0, 0x7f1205e8

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 425
    .line 426
    const/4 v2, 0x2

    .line 427
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 428
    .line 429
    .line 430
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 431
    .line 432
    const v0, 0x7f1205e9

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 440
    .line 441
    const/4 v2, 0x4

    .line 442
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 443
    .line 444
    .line 445
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 446
    .line 447
    const v0, 0x7f1206a4

    .line 448
    .line 449
    .line 450
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    check-cast v0, Landroidx/preference/ListPreference;

    .line 455
    .line 456
    invoke-static {}, Lorg/wikipedia/yearinreview/YearInReviewSurveyState;->getEntries()Lkotlin/enums/EnumEntries;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    new-instance v4, Ljava/util/ArrayList;

    .line 461
    .line 462
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 467
    .line 468
    .line 469
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    if-eqz v5, :cond_1

    .line 478
    .line 479
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    check-cast v5, Lorg/wikipedia/yearinreview/YearInReviewSurveyState;

    .line 484
    .line 485
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    goto :goto_1

    .line 493
    :cond_1
    new-array v1, v8, [Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    check-cast v1, [Ljava/lang/String;

    .line 500
    .line 501
    check-cast v1, [Ljava/lang/CharSequence;

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    iput-object v1, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 507
    .line 508
    new-instance v1, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 509
    .line 510
    invoke-direct {v1, v2}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 511
    .line 512
    .line 513
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 514
    .line 515
    const v0, 0x7f1205f7

    .line 516
    .line 517
    .line 518
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    check-cast v0, Landroidx/preference/ListPreference;

    .line 523
    .line 524
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 525
    .line 526
    const/4 v2, 0x5

    .line 527
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 528
    .line 529
    .line 530
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 531
    .line 532
    const v0, 0x7f120653

    .line 533
    .line 534
    .line 535
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    const-string v1, "beta"

    .line 540
    .line 541
    const-string v4, "org.wikipedia"

    .line 542
    .line 543
    invoke-static {v4, v1, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-eqz v1, :cond_2

    .line 548
    .line 549
    goto :goto_2

    .line 550
    :cond_2
    const-string v1, "alpha"

    .line 551
    .line 552
    invoke-static {v4, v1, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    if-eqz v1, :cond_3

    .line 557
    .line 558
    goto :goto_2

    .line 559
    :cond_3
    const-string v1, "dev"

    .line 560
    .line 561
    invoke-static {v4, v1, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    if-eqz v1, :cond_4

    .line 566
    .line 567
    goto :goto_2

    .line 568
    :cond_4
    move v6, v8

    .line 569
    :goto_2
    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 570
    .line 571
    .line 572
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;

    .line 573
    .line 574
    const/4 v4, 0x6

    .line 575
    invoke-direct {v1, p0, v4}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 576
    .line 577
    .line 578
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 579
    .line 580
    const v0, 0x7f12060d

    .line 581
    .line 582
    .line 583
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 584
    .line 585
    .line 586
    move-result-object p0

    .line 587
    check-cast p0, Landroidx/preference/ListPreference;

    .line 588
    .line 589
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 590
    .line 591
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getHomePreferenceSelection()Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-static {}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->getEntries()Lkotlin/enums/EnumEntries;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    new-instance v1, Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .line 614
    .line 615
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    if-eqz v3, :cond_5

    .line 624
    .line 625
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    check-cast v3, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 630
    .line 631
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    goto :goto_3

    .line 639
    :cond_5
    new-array v0, v8, [Ljava/lang/String;

    .line 640
    .line 641
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    check-cast v0, [Ljava/lang/String;

    .line 646
    .line 647
    check-cast v0, [Ljava/lang/CharSequence;

    .line 648
    .line 649
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 650
    .line 651
    .line 652
    iput-object v0, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 653
    .line 654
    new-instance v0, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 655
    .line 656
    invoke-direct {v0, v2}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 657
    .line 658
    .line 659
    iput-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 660
    .line 661
    return-void
.end method
