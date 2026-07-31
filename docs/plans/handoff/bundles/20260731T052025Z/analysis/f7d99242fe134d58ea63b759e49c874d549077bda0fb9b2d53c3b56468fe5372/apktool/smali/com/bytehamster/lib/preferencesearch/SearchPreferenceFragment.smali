.class public Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public adapter:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;

.field public history:Ljava/util/ArrayList;

.field public historyClickListener:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

.field public prefs:Landroid/content/SharedPreferences;

.field public results:Ljava/util/List;

.field public searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

.field public searchTermPreset:Ljava/lang/String;

.field public searcher:Lcom/bytehamster/lib/preferencesearch/PreferenceParser;

.field public final textWatcher:Landroidx/appcompat/widget/SearchView$10;

.field public viewHolder:Lcom/eygraber/uri/Uri$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchTermPreset:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Landroidx/appcompat/widget/SearchView$10;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final addHistoryEntry(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytehamster/lib/preferencesearch/HistoryItem;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytehamster/lib/preferencesearch/HistoryItem;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x5

    .line 21
    if-lt p1, v1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->saveHistory()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Landroid/widget/EditText;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->updateSearchResults(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final hideKeyboard$2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "input_method"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final historyEntryKey(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyId:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "_history_"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const-string p0, "history_"

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final historySizeKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyId:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyId:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "_history_size"

    .line 17
    .line 18
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p0, "history_size"

    .line 24
    .line 25
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "preferenceSearch"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->prefs:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    new-instance v0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v4, v0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->allEntries:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v2, v0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->context:Landroid/content/Context;

    .line 36
    .line 37
    iput-object v0, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searcher:Lcom/bytehamster/lib/preferencesearch/PreferenceParser;

    .line 38
    .line 39
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 40
    .line 41
    new-instance v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 42
    .line 43
    invoke-direct {v2}, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "items"

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iput-object v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->filesToIndex:Ljava/util/ArrayList;

    .line 53
    .line 54
    const-string v4, "individual_prefs"

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iput-object v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->preferencesToIndex:Ljava/util/ArrayList;

    .line 61
    .line 62
    const-string v4, "history_enabled"

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iput-boolean v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyEnabled:Z

    .line 69
    .line 70
    const-string v4, "reveal_anim_setting"

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

    .line 77
    .line 78
    iput-object v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->revealAnimationSetting:Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

    .line 79
    .line 80
    const-string v4, "fuzzy"

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    iput-boolean v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->fuzzySearchEnabled:Z

    .line 87
    .line 88
    const-string v4, "breadcrumbs_enabled"

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    iput-boolean v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->breadcrumbsEnabled:Z

    .line 95
    .line 96
    const-string v4, "search_bar_enabled"

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    iput-boolean v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->searchBarEnabled:Z

    .line 103
    .line 104
    const-string v4, "text_hint"

    .line 105
    .line 106
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iput-object v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textHint:Ljava/lang/String;

    .line 111
    .line 112
    const-string v4, "text_clear_history"

    .line 113
    .line 114
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    iput-object v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textClearHistory:Ljava/lang/String;

    .line 119
    .line 120
    const-string v4, "text_no_results"

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    iput-object v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textNoResults:Ljava/lang/String;

    .line 127
    .line 128
    const-string v4, "text_clear_input"

    .line 129
    .line 130
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    iput-object v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textClearInput:Ljava/lang/String;

    .line 135
    .line 136
    const-string v4, "text_more"

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iput-object v4, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textMore:Ljava/lang/String;

    .line 143
    .line 144
    const-string v4, "history_id"

    .line 145
    .line 146
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyId:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v2, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 153
    .line 154
    iget-object v0, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->filesToIndex:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_e

    .line 165
    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;

    .line 171
    .line 172
    iget-object v4, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searcher:Lcom/bytehamster/lib/preferencesearch/PreferenceParser;

    .line 173
    .line 174
    iget-object v5, v4, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->allEntries:Ljava/util/ArrayList;

    .line 175
    .line 176
    sget-object v6, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->CONTAINERS:Ljava/util/List;

    .line 177
    .line 178
    new-instance v7, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    iget-object v8, v4, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->context:Landroid/content/Context;

    .line 184
    .line 185
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    iget v9, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->resId:I

    .line 190
    .line 191
    iget-object v10, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->breadcrumb:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    iget-object v9, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 198
    .line 199
    iget-object v9, v9, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->bannedKeys:Ljava/util/ArrayList;

    .line 200
    .line 201
    :try_start_0
    const-string v11, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 202
    .line 203
    const/4 v12, 0x1

    .line 204
    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 205
    .line 206
    .line 207
    const-string v11, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    .line 208
    .line 209
    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 210
    .line 211
    .line 212
    new-instance v11, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    new-instance v13, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    if-nez v14, :cond_0

    .line 227
    .line 228
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    goto/16 :goto_9

    .line 234
    .line 235
    :cond_0
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-eq v10, v12, :cond_d

    .line 240
    .line 241
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 242
    .line 243
    .line 244
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v14, 0x2

    .line 246
    const-string v15, "PreferenceScreen"

    .line 247
    .line 248
    if-ne v10, v14, :cond_b

    .line 249
    .line 250
    :try_start_1
    invoke-virtual {v4, v8}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->parseSearchResult(Landroid/content/res/XmlResourceParser;)Lcom/bytehamster/lib/preferencesearch/PreferenceItem;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    iget v14, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->resId:I

    .line 255
    .line 256
    iput v14, v10, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->resId:I

    .line 257
    .line 258
    sget-object v14, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->BLACKLIST:Ljava/util/List;

    .line 259
    .line 260
    move/from16 p1, v12

    .line 261
    .line 262
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    const-string v14, ""

    .line 271
    .line 272
    if-nez v12, :cond_1

    .line 273
    .line 274
    :try_start_2
    iget-object v12, v10, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->title:Ljava/lang/String;

    .line 275
    .line 276
    if-nez v12, :cond_2

    .line 277
    .line 278
    iget-object v12, v10, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->summary:Ljava/lang/String;

    .line 279
    .line 280
    if-eqz v12, :cond_1

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_1
    move-object/from16 v16, v0

    .line 284
    .line 285
    goto/16 :goto_6

    .line 286
    .line 287
    :cond_2
    :goto_2
    const-string v12, "true"

    .line 288
    .line 289
    const-string v3, "http://schemas.android.com/apk/com.bytehamster.lib.preferencesearch"

    .line 290
    .line 291
    move-object/from16 v16, v0

    .line 292
    .line 293
    const-string v0, "ignore"

    .line 294
    .line 295
    invoke-static {v8, v3, v0}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->getAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-nez v0, :cond_8

    .line 304
    .line 305
    iget-object v0, v10, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->key:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-nez v0, :cond_8

    .line 312
    .line 313
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    move-object v3, v14

    .line 318
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v12

    .line 322
    if-eqz v12, :cond_5

    .line 323
    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v12

    .line 328
    check-cast v12, Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 331
    .line 332
    .line 333
    move-result v17

    .line 334
    if-nez v17, :cond_4

    .line 335
    .line 336
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v17

    .line 340
    if-eqz v17, :cond_3

    .line 341
    .line 342
    move-object/from16 v17, v0

    .line 343
    .line 344
    move-object v3, v12

    .line 345
    goto :goto_4

    .line 346
    :cond_3
    move-object/from16 v17, v0

    .line 347
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v3, " > "

    .line 357
    .line 358
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    move-object v3, v0

    .line 369
    goto :goto_4

    .line 370
    :cond_4
    move-object/from16 v17, v0

    .line 371
    .line 372
    :goto_4
    move-object/from16 v0, v17

    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_5
    iput-object v3, v10, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->breadcrumbs:Ljava/lang/String;

    .line 376
    .line 377
    new-instance v0, Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v12

    .line 390
    if-eqz v12, :cond_7

    .line 391
    .line 392
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v12

    .line 396
    check-cast v12, Ljava/lang/String;

    .line 397
    .line 398
    if-eqz v12, :cond_6

    .line 399
    .line 400
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_7
    iput-object v0, v10, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->keyBreadcrumbs:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    :cond_8
    :goto_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-eqz v0, :cond_a

    .line 418
    .line 419
    iget-object v0, v10, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->title:Ljava/lang/String;

    .line 420
    .line 421
    if-nez v0, :cond_9

    .line 422
    .line 423
    goto :goto_7

    .line 424
    :cond_9
    move-object v14, v0

    .line 425
    :goto_7
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    :cond_a
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-eqz v0, :cond_c

    .line 437
    .line 438
    const-string v0, "key"

    .line 439
    .line 440
    invoke-static {v8, v0}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->getAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    goto :goto_8

    .line 448
    :cond_b
    move-object/from16 v16, v0

    .line 449
    .line 450
    move/from16 p1, v12

    .line 451
    .line 452
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    const/4 v3, 0x3

    .line 457
    if-ne v0, v3, :cond_c

    .line 458
    .line 459
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-eqz v0, :cond_c

    .line 468
    .line 469
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    add-int/lit8 v0, v0, -0x1

    .line 474
    .line 475
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_c

    .line 487
    .line 488
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    add-int/lit8 v0, v0, -0x1

    .line 493
    .line 494
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    :cond_c
    :goto_8
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 498
    .line 499
    .line 500
    move/from16 v12, p1

    .line 501
    .line 502
    move-object/from16 v0, v16

    .line 503
    .line 504
    const/4 v3, 0x0

    .line 505
    goto/16 :goto_1

    .line 506
    .line 507
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 508
    .line 509
    .line 510
    :cond_d
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 511
    .line 512
    .line 513
    const/4 v3, 0x0

    .line 514
    goto/16 :goto_0

    .line 515
    .line 516
    :cond_e
    iget-object v0, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searcher:Lcom/bytehamster/lib/preferencesearch/PreferenceParser;

    .line 517
    .line 518
    iget-object v2, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 519
    .line 520
    iget-object v2, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->preferencesToIndex:Ljava/util/ArrayList;

    .line 521
    .line 522
    iget-object v0, v0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->allEntries:Ljava/util/ArrayList;

    .line 523
    .line 524
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 525
    .line 526
    .line 527
    new-instance v0, Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .line 531
    .line 532
    iput-object v0, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 533
    .line 534
    iget-object v0, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 535
    .line 536
    iget-boolean v0, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyEnabled:Z

    .line 537
    .line 538
    if-nez v0, :cond_f

    .line 539
    .line 540
    goto :goto_b

    .line 541
    :cond_f
    iget-object v0, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->prefs:Landroid/content/SharedPreferences;

    .line 542
    .line 543
    invoke-virtual {v1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->historySizeKey()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    const/4 v3, 0x0

    .line 548
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    :goto_a
    if-ge v3, v0, :cond_10

    .line 553
    .line 554
    iget-object v2, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->prefs:Landroid/content/SharedPreferences;

    .line 555
    .line 556
    invoke-virtual {v1, v3}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->historyEntryKey(I)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    const/4 v5, 0x0

    .line 561
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    iget-object v4, v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 566
    .line 567
    new-instance v5, Lcom/bytehamster/lib/preferencesearch/HistoryItem;

    .line 568
    .line 569
    invoke-direct {v5, v2}, Lcom/bytehamster/lib/preferencesearch/HistoryItem;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    add-int/lit8 v3, v3, 0x1

    .line 576
    .line 577
    goto :goto_a

    .line 578
    :cond_10
    :goto_b
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    const v0, 0x7f0c0563

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    new-instance p1, Lcom/eygraber/uri/Uri$Builder;

    .line 10
    .line 11
    const/4 p2, 0x6

    .line 12
    invoke-direct {p1, p2, v1}, Lcom/eygraber/uri/Uri$Builder;-><init>(IZ)V

    .line 13
    .line 14
    .line 15
    const p2, 0x7f090391

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/widget/EditText;

    .line 23
    .line 24
    iput-object p2, p1, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 25
    .line 26
    const p2, 0x7f090133

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/widget/ImageView;

    .line 34
    .line 35
    iput-object p2, p1, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 36
    .line 37
    const v0, 0x7f09025b

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    iput-object v0, p1, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 47
    .line 48
    const v0, 0x7f0902c3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .line 57
    iput-object v0, p1, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 58
    .line 59
    const v0, 0x7f0902fc

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p1, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 69
    .line 70
    const v0, 0x7f090395

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 78
    .line 79
    iput-object v0, p1, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 82
    .line 83
    new-instance p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda1;

    .line 84
    .line 85
    invoke-direct {p1, p0, v1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 92
    .line 93
    iget-boolean p1, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyEnabled:Z

    .line 94
    .line 95
    if-eqz p1, :cond_0

    .line 96
    .line 97
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p1, Landroid/widget/ImageView;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    :cond_0
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textHint:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz p1, :cond_1

    .line 111
    .line 112
    iget-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 113
    .line 114
    iget-object p2, p2, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p2, Landroid/widget/EditText;

    .line 117
    .line 118
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textNoResults:Ljava/lang/String;

    .line 124
    .line 125
    if-eqz p1, :cond_2

    .line 126
    .line 127
    iget-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 128
    .line 129
    iget-object p2, p2, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p2, Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textClearInput:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz p1, :cond_3

    .line 141
    .line 142
    iget-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 143
    .line 144
    iget-object p2, p2, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p2, Landroid/widget/ImageView;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textMore:Ljava/lang/String;

    .line 154
    .line 155
    if-eqz p1, :cond_4

    .line 156
    .line 157
    iget-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 158
    .line 159
    iget-object p2, p2, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p2, Landroid/widget/ImageView;

    .line 162
    .line 163
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p1, Landroid/widget/ImageView;

    .line 171
    .line 172
    new-instance p2, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda1;

    .line 173
    .line 174
    const/4 v0, 0x1

    .line 175
    invoke-direct {p2, p0, v0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    .line 187
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 188
    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 197
    .line 198
    .line 199
    new-instance p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;

    .line 200
    .line 201
    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 202
    .line 203
    .line 204
    new-instance p2, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    iput-object p2, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->dataset:Ljava/util/ArrayList;

    .line 210
    .line 211
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->adapter:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;

    .line 212
    .line 213
    iget-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 214
    .line 215
    iput-object p2, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 216
    .line 217
    iput-object p0, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->onItemClickListener:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 218
    .line 219
    iget-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 220
    .line 221
    iget-object p2, p2, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    .line 225
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 229
    .line 230
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast p1, Landroid/widget/EditText;

    .line 233
    .line 234
    iget-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 235
    .line 236
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 240
    .line 241
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast p1, Landroid/widget/EditText;

    .line 244
    .line 245
    new-instance p2, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda3;

    .line 246
    .line 247
    invoke-direct {p2, p0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 254
    .line 255
    iget-boolean p1, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->searchBarEnabled:Z

    .line 256
    .line 257
    if-nez p1, :cond_5

    .line 258
    .line 259
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 260
    .line 261
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 264
    .line 265
    const/16 p2, 0x8

    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    :cond_5
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchTermPreset:Ljava/lang/String;

    .line 271
    .line 272
    if-eqz p1, :cond_6

    .line 273
    .line 274
    iget-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 275
    .line 276
    iget-object p2, p2, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast p2, Landroid/widget/EditText;

    .line 279
    .line 280
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    :cond_6
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 284
    .line 285
    iget-object v4, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->revealAnimationSetting:Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

    .line 286
    .line 287
    if-eqz v4, :cond_8

    .line 288
    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    iget v6, v4, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;->colorAccent:I

    .line 294
    .line 295
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    instance-of p1, p0, Landroid/graphics/drawable/ColorDrawable;

    .line 300
    .line 301
    if-eqz p1, :cond_7

    .line 302
    .line 303
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 304
    .line 305
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    :cond_7
    move v7, v1

    .line 310
    new-instance v2, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;

    .line 311
    .line 312
    invoke-direct/range {v2 .. v7}, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;-><init>(Landroid/view/View;Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;Landroid/content/Context;II)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 316
    .line 317
    .line 318
    :cond_8
    new-instance p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$$ExternalSyntheticLambda2;

    .line 319
    .line 320
    invoke-direct {p0, v0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$$ExternalSyntheticLambda2;-><init>(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 324
    .line 325
    .line 326
    return-object v3
.end method

.method public final onResume()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->updateSearchResults(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->searchBarEnabled:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroid/widget/EditText;

    .line 32
    .line 33
    new-instance v1, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v2, 0x5

    .line 36
    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final saveHistory()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->prefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->historySizeKey()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v1, v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->historyEntryKey(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/bytehamster/lib/preferencesearch/HistoryItem;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/bytehamster/lib/preferencesearch/HistoryItem;->term:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final setEmptyViewShown(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, v0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p1, v0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final updateSearchResults(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->adapter:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->dataset:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->setEmptyViewShown(Z)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searcher:Lcom/bytehamster/lib/preferencesearch/PreferenceParser;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 65
    .line 66
    iget-boolean v2, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->fuzzySearchEnabled:Z

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    new-instance p1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v0, v0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser;->allEntries:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_4

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;

    .line 105
    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    invoke-virtual {v4, p1}, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->getScore(Ljava/lang/String;)F

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    float-to-double v5, v5

    .line 113
    const-wide v7, 0x3fd3333333333333L    # 0.3

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    cmpl-double v5, v5, v7

    .line 119
    .line 120
    if-lez v5, :cond_3

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    if-nez v2, :cond_2

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v4}, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->getInfo()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_2

    .line 149
    .line 150
    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_4
    new-instance v0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 155
    .line 156
    invoke-direct {v0, v1, p1}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;-><init>(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    const/16 v0, 0xa

    .line 167
    .line 168
    if-le p1, v0, :cond_5

    .line 169
    .line 170
    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    goto :goto_2

    .line 175
    :cond_5
    move-object p1, v3

    .line 176
    :goto_2
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->results:Ljava/util/List;

    .line 177
    .line 178
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->adapter:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;

    .line 179
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    .line 181
    .line 182
    iget-object v1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->results:Ljava/util/List;

    .line 183
    .line 184
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    new-instance v1, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    .line 194
    .line 195
    iput-object v1, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->dataset:Ljava/util/ArrayList;

    .line 196
    .line 197
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->results:Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->setEmptyViewShown(Z)V

    .line 209
    .line 210
    .line 211
    return-void
.end method
