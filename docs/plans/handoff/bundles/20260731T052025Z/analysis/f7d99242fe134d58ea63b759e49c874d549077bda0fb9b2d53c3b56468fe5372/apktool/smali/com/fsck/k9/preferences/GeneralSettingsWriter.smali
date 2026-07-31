.class public final Lcom/fsck/k9/preferences/GeneralSettingsWriter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final changePublisher:Lnet/thunderbird/core/preference/PreferenceChangePublisher;

.field public final generalSettingsManager:Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

.field public final preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Preferences;Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;Lnet/thunderbird/core/preference/PreferenceChangePublisher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/preferences/GeneralSettingsWriter;->preferences:Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/preferences/GeneralSettingsWriter;->generalSettingsManager:Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/preferences/GeneralSettingsWriter;->changePublisher:Lnet/thunderbird/core/preference/PreferenceChangePublisher;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final write(Ljava/util/HashMap;)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/fsck/k9/preferences/GeneralSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->convert(Ljava/util/Map;Ljava/util/Map;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/fsck/k9/preferences/GeneralSettingsWriter;->preferences:Lcom/fsck/k9/Preferences;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/fsck/k9/preferences/GeneralSettingsWriter;->preferences:Lcom/fsck/k9/Preferences;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-direct {v0, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object v4, p0, Lcom/fsck/k9/preferences/GeneralSettingsWriter;->generalSettingsManager:Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget-object v4, v4, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 104
    .line 105
    iget-boolean v4, v4, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 106
    .line 107
    iget-object v5, p0, Lcom/fsck/k9/preferences/GeneralSettingsWriter;->generalSettingsManager:Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iget-object v5, v5, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 114
    .line 115
    iget-boolean v5, v5, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 116
    .line 117
    invoke-static {v1, v3, v2, v4, v5}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->commit()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    const/4 v1, 0x0

    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    const-string p1, "Committed general settings to the preference storage."

    .line 129
    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {p1, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/fsck/k9/preferences/GeneralSettingsWriter;->generalSettingsManager:Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 136
    .line 137
    monitor-enter p1

    .line 138
    :try_start_0
    iget-object v1, p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->preferences:Lcom/fsck/k9/Preferences;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1}, Lcom/fsck/k9/K9;->loadPrefs(Lnet/thunderbird/core/preference/storage/InMemoryStorage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    monitor-exit p1

    .line 148
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Ljava/lang/Iterable;

    .line 153
    .line 154
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_4

    .line 163
    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    sget-object v1, Lnet/thunderbird/core/preference/PreferenceScopeRegistry;->map:Lkotlin/collections/builders/MapBuilder;

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lnet/thunderbird/core/preference/PreferenceScope;

    .line 180
    .line 181
    if-nez v0, :cond_3

    .line 182
    .line 183
    sget-object v0, Lnet/thunderbird/core/preference/PreferenceScope;->ALL:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 184
    .line 185
    :cond_3
    iget-object v1, p0, Lcom/fsck/k9/preferences/GeneralSettingsWriter;->changePublisher:Lnet/thunderbird/core/preference/PreferenceChangePublisher;

    .line 186
    .line 187
    check-cast v1, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;

    .line 188
    .line 189
    invoke-virtual {v1, v0}, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;->publish(Lnet/thunderbird/core/preference/PreferenceScope;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    const/4 p0, 0x1

    .line 194
    return p0

    .line 195
    :catchall_0
    move-exception p0

    .line 196
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    throw p0

    .line 198
    :cond_5
    const-string p0, "Failed to commit general settings to the preference storage"

    .line 199
    .line 200
    new-array p1, v1, [Ljava/lang/Object;

    .line 201
    .line 202
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    return v1
.end method
