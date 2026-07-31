.class public final Lcom/fsck/k9/K9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# static fields
.field public static final INSTANCE:Lcom/fsck/k9/K9;

.field public static databaseVersionCache:Landroid/content/SharedPreferences;

.field public static databasesUpToDate:Z

.field public static final featureFlagProvider$delegate:Lkotlin/Lazy;

.field public static final fontSizes:Lcom/fsck/k9/FontSizes;

.field public static fundingActivityCounterInMillis:J

.field public static fundingReminderReferenceTimestamp:J

.field public static fundingReminderShownTimestamp:J

.field public static final generalSettingsManager$delegate:Lkotlin/Lazy;

.field public static isTelemetryEnabled:Z

.field public static pgpInlineDialogCounter:I

.field public static pgpSignOnlyDialogCounter:I

.field public static final sortAscending:Ljava/util/LinkedHashMap;

.field public static sortType:Lnet/thunderbird/core/android/account/SortType;

.field public static final telemetryManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/K9;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fsck/k9/K9;->INSTANCE:Lcom/fsck/k9/K9;

    .line 7
    .line 8
    new-instance v1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 15
    .line 16
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/fsck/k9/K9;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance v1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 23
    .line 24
    const/16 v3, 0xd

    .line 25
    .line 26
    invoke-direct {v1, v0, v3}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/fsck/k9/K9;->telemetryManager$delegate:Lkotlin/Lazy;

    .line 34
    .line 35
    new-instance v1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 36
    .line 37
    const/16 v3, 0xe

    .line 38
    .line 39
    invoke-direct {v1, v0, v3}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/fsck/k9/K9;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance v0, Lcom/fsck/k9/FontSizes;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/fsck/k9/FontSizes;-><init>()V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 54
    .line 55
    sget-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider;->Companion:Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    sget-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_SORT_TYPE:Lnet/thunderbird/core/android/account/SortType;

    .line 61
    .line 62
    sput-object v0, Lcom/fsck/k9/K9;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 63
    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/fsck/k9/K9;->sortAscending:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    return-void
.end method

.method public static final declared-synchronized getSortType()Lnet/thunderbird/core/android/account/SortType;
    .locals 2

    .line 1
    const-class v0, Lcom/fsck/k9/K9;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/fsck/k9/K9;->sortType:Lnet/thunderbird/core/android/account/SortType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method public static final declared-synchronized isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z
    .locals 3

    .line 1
    const-class v0, Lcom/fsck/k9/K9;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/fsck/k9/K9;->sortAscending:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/SortType;->isDefaultAscending:Z

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast p0, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    .line 41
    return p0

    .line 42
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0
.end method

.method public static final loadPrefs(Lnet/thunderbird/core/preference/storage/InMemoryStorage;)V
    .locals 15

    .line 1
    const-string v1, "Valid values: "

    .line 2
    .line 3
    const-string v2, "to enum of type "

    .line 4
    .line 5
    const-string v3, "Unable to convert stored key [sortTypeEnum] value ["

    .line 6
    .line 7
    const-string v4, "sortTypeEnum"

    .line 8
    .line 9
    sget-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider;->Companion:Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v5, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_SORT_TYPE:Lnet/thunderbird/core/android/account/SortType;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-eqz v7, :cond_0

    .line 22
    .line 23
    :try_start_1
    invoke-static {v7}, Lnet/thunderbird/core/android/account/SortType;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/SortType;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    move-object v5, v0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v9, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, "] "

    .line 48
    .line 49
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-class v3, Lnet/thunderbird/core/android/account/SortType;

    .line 60
    .line 61
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, "."

    .line 78
    .line 79
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/16 v2, 0xa

    .line 90
    .line 91
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lnet/thunderbird/core/android/account/SortType;->values()[Lnet/thunderbird/core/android/account/SortType;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    const/4 v13, 0x0

    .line 99
    const/16 v14, 0x3f

    .line 100
    .line 101
    const/4 v10, 0x0

    .line 102
    const/4 v11, 0x0

    .line 103
    const/4 v12, 0x0

    .line 104
    invoke-static/range {v9 .. v14}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :goto_0
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v4, v2, v6

    .line 131
    .line 132
    const-string v3, "Couldn\'t read setting \'%s\'. Using default value instead."

    .line 133
    .line 134
    invoke-virtual {v1, v0, v3, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_0
    :goto_1
    sput-object v5, Lcom/fsck/k9/K9;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 138
    .line 139
    const-string v0, "sortAscending"

    .line 140
    .line 141
    invoke-virtual {p0, v0, v6}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    sget-object v1, Lcom/fsck/k9/K9;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 146
    .line 147
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sget-object v2, Lcom/fsck/k9/K9;->sortAscending:Ljava/util/LinkedHashMap;

    .line 152
    .line 153
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    sget-object v0, Lcom/fsck/k9/K9;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 157
    .line 158
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 163
    .line 164
    const-string v1, "disable_font_size_config"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    new-instance v1, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    invoke-direct {v1, v6, p0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v1}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->onDisabledOrUnavailable(Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 176
    .line 177
    .line 178
    const-string v0, "pgpInlineDialogCounter"

    .line 179
    .line 180
    invoke-virtual {p0, v0, v6}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    sput v0, Lcom/fsck/k9/K9;->pgpInlineDialogCounter:I

    .line 185
    .line 186
    const-string v0, "pgpSignOnlyDialogCounter"

    .line 187
    .line 188
    invoke-virtual {p0, v0, v6}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    sput v0, Lcom/fsck/k9/K9;->pgpSignOnlyDialogCounter:I

    .line 193
    .line 194
    sget-object v0, Lcom/fsck/k9/K9;->telemetryManager$delegate:Lkotlin/Lazy;

    .line 195
    .line 196
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lapp/k9mail/feature/telemetry/noop/NoOpTelemetryManager;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    const-string v0, "fundingReminderReferenceTimestamp"

    .line 206
    .line 207
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getLong(Ljava/lang/String;)J

    .line 208
    .line 209
    .line 210
    move-result-wide v0

    .line 211
    sput-wide v0, Lcom/fsck/k9/K9;->fundingReminderReferenceTimestamp:J

    .line 212
    .line 213
    const-string v0, "fundingReminderShownTimestamp"

    .line 214
    .line 215
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getLong(Ljava/lang/String;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v0

    .line 219
    sput-wide v0, Lcom/fsck/k9/K9;->fundingReminderShownTimestamp:J

    .line 220
    .line 221
    const-string v0, "fundingActivityCounterInMillis"

    .line 222
    .line 223
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getLong(Ljava/lang/String;)J

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    sput-wide v0, Lcom/fsck/k9/K9;->fundingActivityCounterInMillis:J

    .line 228
    .line 229
    return-void
.end method

.method public static save$core(Lcom/fsck/k9/preferences/K9StorageEditor;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/fsck/k9/K9;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sortTypeEnum"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/fsck/k9/K9;->sortAscending:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    sget-object v1, Lcom/fsck/k9/K9;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    const-string v1, "sortAscending"

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const-string v0, "pgpInlineDialogCounter"

    .line 36
    .line 37
    sget v1, Lcom/fsck/k9/K9;->pgpInlineDialogCounter:I

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string v0, "pgpSignOnlyDialogCounter"

    .line 43
    .line 44
    sget v1, Lcom/fsck/k9/K9;->pgpSignOnlyDialogCounter:I

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/fsck/k9/K9;->telemetryManager$delegate:Lkotlin/Lazy;

    .line 50
    .line 51
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lapp/k9mail/feature/telemetry/noop/NoOpTelemetryManager;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string v0, "fundingReminderReferenceTimestamp"

    .line 61
    .line 62
    sget-wide v1, Lcom/fsck/k9/K9;->fundingReminderReferenceTimestamp:J

    .line 63
    .line 64
    invoke-virtual {p0, v1, v2, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putLong(JLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "fundingReminderShownTimestamp"

    .line 68
    .line 69
    sget-wide v1, Lcom/fsck/k9/K9;->fundingReminderShownTimestamp:J

    .line 70
    .line 71
    invoke-virtual {p0, v1, v2, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putLong(JLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "fundingActivityCounterInMillis"

    .line 75
    .line 76
    sget-wide v1, Lcom/fsck/k9/K9;->fundingActivityCounterInMillis:J

    .line 77
    .line 78
    invoke-virtual {p0, v1, v2, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putLong(JLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    const-string v1, "fontSizeMessageListSubject"

    .line 87
    .line 88
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 89
    .line 90
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    const-string v1, "fontSizeMessageListSender"

    .line 94
    .line 95
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 96
    .line 97
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    const-string v1, "fontSizeMessageListDate"

    .line 101
    .line 102
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 103
    .line 104
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    const-string v1, "fontSizeMessageListPreview"

    .line 108
    .line 109
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 110
    .line 111
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    const-string v1, "fontSizeMessageViewAccountName"

    .line 115
    .line 116
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewAccountName:I

    .line 117
    .line 118
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    const-string v1, "fontSizeMessageViewSender"

    .line 122
    .line 123
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 124
    .line 125
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    const-string v1, "fontSizeMessageViewTo"

    .line 129
    .line 130
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewRecipients:I

    .line 131
    .line 132
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    const-string v1, "fontSizeMessageViewSubject"

    .line 136
    .line 137
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 138
    .line 139
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    const-string v1, "fontSizeMessageViewDate"

    .line 143
    .line 144
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 145
    .line 146
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    const-string v1, "fontSizeMessageViewContentPercent"

    .line 150
    .line 151
    iget v2, v0, Lcom/fsck/k9/FontSizes;->messageViewContentAsPercent:I

    .line 152
    .line 153
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    const-string v1, "fontSizeMessageComposeInput"

    .line 157
    .line 158
    iget v0, v0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    .line 159
    .line 160
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public static final saveSettingsAsync()V
    .locals 6

    .line 1
    sget-object v0, Lcom/fsck/k9/K9;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 12
    .line 13
    new-instance v3, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 14
    .line 15
    const/16 v4, 0xd

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-direct {v3, v0, v5, v4}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-static {v1, v2, v5, v3, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static final declared-synchronized setDatabasesUpToDate(Z)V
    .locals 3

    .line 1
    const-class v0, Lcom/fsck/k9/K9;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/fsck/k9/K9;->databasesUpToDate:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/fsck/k9/K9;->databaseVersionCache:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "last_account_database_version"

    .line 19
    .line 20
    const-class v2, Lcom/fsck/k9/storage/K9SchemaDefinitionFactory;

    .line 21
    .line 22
    invoke-static {v2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/fsck/k9/storage/K9SchemaDefinitionFactory;

    .line 27
    .line 28
    const/16 v2, 0x5b

    .line 29
    .line 30
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0
.end method

.method public static final declared-synchronized setSortAscending(Lnet/thunderbird/core/android/account/SortType;Z)V
    .locals 2

    .line 1
    const-class v0, Lcom/fsck/k9/K9;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/fsck/k9/K9;->sortAscending:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p0
.end method

.method public static final declared-synchronized setSortType(Lnet/thunderbird/core/android/account/SortType;)V
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/K9;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sput-object p0, Lcom/fsck/k9/K9;->sortType:Lnet/thunderbird/core/android/account/SortType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p0
.end method


# virtual methods
.method public final declared-synchronized areDatabasesUpToDate()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/fsck/k9/K9;->databasesUpToDate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final bridge getKoin()Lorg/koin/core/Koin;
    .locals 0

    .line 1
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
