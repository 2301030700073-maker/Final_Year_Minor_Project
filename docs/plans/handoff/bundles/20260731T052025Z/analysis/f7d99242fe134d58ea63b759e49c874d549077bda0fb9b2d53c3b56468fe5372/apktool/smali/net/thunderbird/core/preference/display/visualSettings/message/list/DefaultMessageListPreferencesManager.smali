.class public final Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;


# instance fields
.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final preferences:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final storage:Lnet/thunderbird/core/preference/storage/InMemoryStorage;

.field public final storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->storage:Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 9
    .line 10
    check-cast p4, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;

    .line 11
    .line 12
    invoke-virtual {p4, p0}, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;->subscribe(Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->loadPreferences()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->preferences:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getConfig()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->preferences:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 8
    .line 9
    return-object p0
.end method

.method public final loadPreferences()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->storage:Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 4
    .line 5
    const-string v1, "colorizeMissingContactPictures"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v8

    .line 12
    const-string v1, "changeRegisteredNameColor"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    const-string v1, "isUseBackgroundAsUnreadIndicator"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v1, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    const-string v1, "showCorrespondentNames"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const-string v1, "showContactName"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const-string v1, "showContactPicture"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const-string v1, "messageListPreviewLines"

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    sget-object v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettingsKt;->MESSAGE_LIST_SETTINGS_DEFAULT_UI_DENSITY:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 51
    .line 52
    const-string v2, "messageListDensity"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v3, 0x0

    .line 59
    const-string v11, "Valid values: "

    .line 60
    .line 61
    const-string v12, "."

    .line 62
    .line 63
    const-string v13, "to enum of type "

    .line 64
    .line 65
    const-string v14, "] "

    .line 66
    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    :try_start_0
    invoke-static {v2}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 70
    .line 71
    .line 72
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    move-object v1, v2

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v4, "Unable to convert stored key [messageListDensity] value ["

    .line 81
    .line 82
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-class v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 96
    .line 97
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;->values()[Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const/4 v8, 0x0

    .line 125
    const/16 v9, 0x3f

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    const/4 v6, 0x0

    .line 129
    const/4 v7, 0x0

    .line 130
    invoke-static/range {v4 .. v9}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v11, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v1, v2, v4, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    return-object v3

    .line 142
    :cond_0
    :goto_0
    const-string v2, "registeredNameColor"

    .line 143
    .line 144
    const v15, -0xef6c0b

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2, v15}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    sget-object v15, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettingsKt;->MESSAGE_LIST_SETTINGS_DEFAULT_DATE_TIME_FORMAT:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 152
    .line 153
    move-object/from16 p0, v3

    .line 154
    .line 155
    const-string v3, "messageListDateTimeFormat"

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    if-eqz v3, :cond_1

    .line 162
    .line 163
    :try_start_1
    invoke-static {v3}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 164
    .line 165
    .line 166
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    if-eqz v0, :cond_1

    .line 168
    .line 169
    move-object v13, v0

    .line 170
    goto :goto_1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v2, "Unable to convert stored key [messageListDateTimeFormat] value ["

    .line 175
    .line 176
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const-class v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 190
    .line 191
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;->values()[Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    const/4 v7, 0x0

    .line 219
    const/16 v8, 0x3f

    .line 220
    .line 221
    const/4 v4, 0x0

    .line 222
    const/4 v5, 0x0

    .line 223
    const/4 v6, 0x0

    .line 224
    invoke-static/range {v3 .. v8}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-static {v1, v2, v3, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    return-object p0

    .line 236
    :cond_1
    move-object v13, v15

    .line 237
    :goto_1
    new-instance v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 238
    .line 239
    move-object v11, v1

    .line 240
    move v12, v2

    .line 241
    invoke-direct/range {v3 .. v13}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;-><init>(ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;)V

    .line 242
    .line 243
    .line 244
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
    sget-object v0, Lnet/thunderbird/core/preference/PreferenceScope;->DISPLAY_VISUAL_MESSAGE_LIST:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->preferences:Lkotlinx/coroutines/flow/StateFlowImpl;

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
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 20
    .line 21
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->loadPreferences()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

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
    .locals 7

    .line 1
    check-cast p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 13
    .line 14
    const-string v2, "DefaultMessageListPreferencesManager"

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
    const-string v0, "changeRegisteredNameColor"

    .line 22
    .line 23
    iget-boolean v5, p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isChangeContactNameColor:Z

    .line 24
    .line 25
    iget-object v6, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 26
    .line 27
    invoke-virtual {v6, v0, v5}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const-string v0, "colorizeMissingContactPictures"

    .line 31
    .line 32
    iget-boolean v5, p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isColorizeMissingContactPictures:Z

    .line 33
    .line 34
    invoke-virtual {v6, v0, v5}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "showContactPicture"

    .line 38
    .line 39
    iget-boolean v5, p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactPicture:Z

    .line 40
    .line 41
    invoke-virtual {v6, v0, v5}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "isUseBackgroundAsUnreadIndicator"

    .line 45
    .line 46
    iget-boolean v5, p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isUseBackgroundAsUnreadIndicator:Z

    .line 47
    .line 48
    invoke-virtual {v6, v0, v5}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    const-string v0, "showContactName"

    .line 52
    .line 53
    iget-boolean v5, p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactName:Z

    .line 54
    .line 55
    invoke-virtual {v6, v0, v5}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "showCorrespondentNames"

    .line 59
    .line 60
    iget-boolean v5, p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowCorrespondentNames:Z

    .line 61
    .line 62
    invoke-virtual {v6, v0, v5}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string v0, "messageListPreviewLines"

    .line 66
    .line 67
    iget v5, p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->previewLines:I

    .line 68
    .line 69
    invoke-virtual {v6, v0, v5}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    const-string v0, "registeredNameColor"

    .line 73
    .line 74
    iget v5, p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->contactNameColor:I

    .line 75
    .line 76
    invoke-virtual {v6, v0, v5}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->uiDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v5, "messageListDensity"

    .line 86
    .line 87
    invoke-virtual {v6, v5, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v5, "messageListDateTimeFormat"

    .line 97
    .line 98
    invoke-virtual {v6, v5, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Lcom/fsck/k9/preferences/K9StorageEditor;->commit()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    new-instance v5, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda31;

    .line 106
    .line 107
    const/4 v6, 0x6

    .line 108
    invoke-direct {v5, v0, v6}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda31;-><init>(ZI)V

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v2, v3, v5, v4}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 112
    .line 113
    .line 114
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->preferences:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 115
    .line 116
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    move-object v2, v1

    .line 121
    check-cast v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 122
    .line 123
    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    .line 129
    return-void
.end method
