.class public final Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;
.implements Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;


# instance fields
.field public final configState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final internalConfigState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final messageListPreferences:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

.field public final mutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

.field public final storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    iput-object p2, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 22
    .line 23
    iput-object p3, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 24
    .line 25
    iput-object p4, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->messageListPreferences:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 26
    .line 27
    iput-object v0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 28
    .line 29
    iput-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    .line 31
    check-cast p5, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;

    .line 32
    .line 33
    invoke-virtual {p5, p0}, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;->subscribe(Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->loadConfig()Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->internalConfigState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    .line 46
    iget-object p2, p4, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->preferences:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 47
    .line 48
    new-instance p3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 49
    .line 50
    const/4 p4, 0x3

    .line 51
    const/16 p5, 0xb

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-direct {p3, p4, v0, p5}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 58
    .line 59
    const/4 p5, 0x0

    .line 60
    invoke-direct {p4, p1, p2, p3, p5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedLazily;

    .line 64
    .line 65
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p4, v1, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 74
    .line 75
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 76
    .line 77
    invoke-direct {p1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final getConfig()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    .line 3
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 10
    .line 11
    return-object p0
.end method

.method public final loadConfig()Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;
    .locals 15

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "messageViewFixedWidthFont"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "autofitWidth"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {v0, v1, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsKt;->DISPLAY_SETTINGS_DEFAULT_ANIMATION_PREFERENCE:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 30
    .line 31
    const-string v4, "animations"

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v7, 0x0

    .line 38
    const-string v8, "Valid values: "

    .line 39
    .line 40
    const-string v9, "."

    .line 41
    .line 42
    const-string v10, "to enum of type "

    .line 43
    .line 44
    const-string v11, "] "

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    :try_start_0
    invoke-static {v4}, Lnet/thunderbird/core/preference/AnimationPreference;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/AnimationPreference;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    move-object v4, v0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    move-object p0, v0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "Unable to convert stored key [animations] value ["

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-class v1, Lnet/thunderbird/core/preference/AnimationPreference;

    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {}, Lnet/thunderbird/core/preference/AnimationPreference;->values()[Lnet/thunderbird/core/preference/AnimationPreference;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    const/4 v13, 0x0

    .line 105
    const/16 v14, 0x3f

    .line 106
    .line 107
    const/4 v10, 0x0

    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v12, 0x0

    .line 110
    invoke-static/range {v9 .. v14}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v0, v1, v2, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    return-object v7

    .line 122
    :cond_0
    move-object v4, v1

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sget-object v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsKt;->DISPLAY_SETTINGS_DEFAULT_BODY_CONTENT_TYPE:Lnet/thunderbird/core/preference/BodyContentType;

    .line 128
    .line 129
    const-string v12, "messageViewBodyContentType"

    .line 130
    .line 131
    invoke-virtual {v0, v12}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    if-eqz v12, :cond_1

    .line 136
    .line 137
    :try_start_1
    invoke-static {v12}, Lnet/thunderbird/core/preference/BodyContentType;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/BodyContentType;

    .line 138
    .line 139
    .line 140
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    if-eqz v0, :cond_1

    .line 142
    .line 143
    move-object v7, v0

    .line 144
    goto :goto_1

    .line 145
    :catch_1
    move-exception v0

    .line 146
    move-object p0, v0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v1, "Unable to convert stored key [messageViewBodyContentType] value ["

    .line 150
    .line 151
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-class v1, Lnet/thunderbird/core/preference/BodyContentType;

    .line 165
    .line 166
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {}, Lnet/thunderbird/core/preference/BodyContentType;->values()[Lnet/thunderbird/core/preference/BodyContentType;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    const/4 v13, 0x0

    .line 194
    const/16 v14, 0x3f

    .line 195
    .line 196
    const/4 v10, 0x0

    .line 197
    const/4 v11, 0x0

    .line 198
    const/4 v12, 0x0

    .line 199
    invoke-static/range {v9 .. v14}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v0, v1, v2, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    return-object v7

    .line 211
    :cond_1
    move-object v7, v1

    .line 212
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v1, "drawerExpandAllFolder"

    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-string v1, "messageViewArchiveActionVisible"

    .line 227
    .line 228
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-string v1, "messageViewDeleteActionVisible"

    .line 237
    .line 238
    invoke-virtual {v0, v1, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v1, "messageViewMoveActionVisible"

    .line 247
    .line 248
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const-string v1, "messageViewCopyActionVisible"

    .line 257
    .line 258
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    const-string v0, "messageViewSpamActionVisible"

    .line 267
    .line 268
    invoke-virtual {p0, v0, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    new-instance v3, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 273
    .line 274
    const/16 v14, 0x20

    .line 275
    .line 276
    invoke-direct/range {v3 .. v14}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;-><init>(Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZZZZZZI)V

    .line 277
    .line 278
    .line 279
    return-object v3
.end method

.method public final receive(Lnet/thunderbird/core/preference/PreferenceScope;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/thunderbird/core/preference/PreferenceScope;->ALL:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lnet/thunderbird/core/preference/PreferenceScope;->DISPLAY_VISUAL:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->internalConfigState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    .line 14
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 20
    .line 21
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->loadConfig()Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final save(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 13
    .line 14
    const-string v2, "DefaultDisplayVisualSettingsPreferenceManager"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x2

    .line 18
    invoke-static {v1, v2, v3, v0, v4}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v0, p1, v5}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2, v3, v0, v4}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 31
    .line 32
    const/16 v1, 0x18

    .line 33
    .line 34
    invoke-direct {v0, p0, p1, v3, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .line 39
    iget-object v2, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 40
    .line 41
    invoke-static {v1, v2, v3, v0, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->internalConfigState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    .line 46
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v2, v1

    .line 51
    check-cast v2, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    return-void
.end method
