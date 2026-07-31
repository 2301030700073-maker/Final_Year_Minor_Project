.class public final Lcom/fsck/k9/preferences/AccountSettingsWriter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final clock:Lkotlin/time/Clock;

.field public final context:Landroid/content/Context;

.field public final folderSettingsWriter:Lcom/fsck/k9/preferences/FolderSettingsWriter;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final identitySettingsWriter:Lcom/fsck/k9/preferences/FolderSettingsWriter;

.field public final localFoldersCreator:Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

.field public final preferences:Lcom/fsck/k9/Preferences;

.field public final serverSettingsWriter:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Preferences;Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;Lkotlin/time/Clock;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->preferences:Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->localFoldersCreator:Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->clock:Lkotlin/time/Clock;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->context:Landroid/content/Context;

    .line 13
    .line 14
    new-instance p1, Lcom/fsck/k9/preferences/FolderSettingsWriter;

    .line 15
    .line 16
    invoke-direct {p1, p4}, Lcom/fsck/k9/preferences/FolderSettingsWriter;-><init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->identitySettingsWriter:Lcom/fsck/k9/preferences/FolderSettingsWriter;

    .line 20
    .line 21
    new-instance p1, Lcom/fsck/k9/preferences/FolderSettingsWriter;

    .line 22
    .line 23
    invoke-direct {p1, p4}, Lcom/fsck/k9/preferences/FolderSettingsWriter;-><init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->folderSettingsWriter:Lcom/fsck/k9/preferences/FolderSettingsWriter;

    .line 27
    .line 28
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    .line 29
    .line 30
    const/4 p2, 0x7

    .line 31
    invoke-direct {p1, p2, p5, p4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->serverSettingsWriter:Lcom/google/zxing/BinaryBitmap;

    .line 35
    .line 36
    return-void
.end method

.method public static isAccountNameUsed(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 23
    .line 24
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method


# virtual methods
.method public final write(Lcom/fsck/k9/preferences/ValidatedSettings$Account;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;

    .line 13
    .line 14
    iget v4, v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;-><init>(Lcom/fsck/k9/preferences/AccountSettingsWriter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    if-ne v4, v6, :cond_1

    .line 40
    .line 41
    iget-object v1, v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;->L$7:Lcom/fsck/k9/preferences/AccountDescription;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;->L$4:Lcom/fsck/k9/preferences/AccountDescription;

    .line 44
    .line 45
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_9

    .line 49
    .line 50
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v5

    .line 56
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, v0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->preferences:Lcom/fsck/k9/Preferences;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v7, v1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->name:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object v8, v1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->uuid:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v9, Lcom/fsck/k9/preferences/AccountDescription;

    .line 73
    .line 74
    invoke-direct {v9, v7, v8}, Lcom/fsck/k9/preferences/AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v8}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    if-eqz v10, :cond_3

    .line 82
    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-static {v7, v10}, Lcom/fsck/k9/preferences/AccountSettingsWriter;->isAccountNameUsed(Ljava/lang/String;Ljava/util/List;)Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-nez v11, :cond_4

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-gt v6, v11, :cond_11

    .line 110
    .line 111
    move v12, v6

    .line 112
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v14, " ("

    .line 121
    .line 122
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v14, ")"

    .line 129
    .line 130
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    invoke-static {v13, v10}, Lcom/fsck/k9/preferences/AccountSettingsWriter;->isAccountNameUsed(Ljava/lang/String;Ljava/util/List;)Z

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    if-nez v14, :cond_10

    .line 142
    .line 143
    move-object v7, v13

    .line 144
    :goto_2
    new-instance v10, Lcom/fsck/k9/preferences/AccountDescription;

    .line 145
    .line 146
    invoke-direct {v10, v7, v8}, Lcom/fsck/k9/preferences/AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v11, ".description"

    .line 150
    .line 151
    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    iget-object v12, v0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 156
    .line 157
    check-cast v12, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 158
    .line 159
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    iget-object v13, v13, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 164
    .line 165
    iget-boolean v13, v13, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 166
    .line 167
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    iget-object v14, v14, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 172
    .line 173
    iget-boolean v14, v14, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 174
    .line 175
    invoke-static {v4, v11, v7, v13, v14}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 176
    .line 177
    .line 178
    iget-object v7, v1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->settings:Ljava/util/Map;

    .line 179
    .line 180
    sget-object v11, Lcom/fsck/k9/preferences/AccountSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 181
    .line 182
    invoke-static {v7, v11}, Landroidx/sqlite/SQLite;->convert(Ljava/util/Map;Ljava/util/Map;)Ljava/util/HashMap;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    const-string v13, "."

    .line 199
    .line 200
    if-eqz v11, :cond_5

    .line 201
    .line 202
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    check-cast v11, Ljava/util/Map$Entry;

    .line 207
    .line 208
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    check-cast v14, Ljava/lang/String;

    .line 213
    .line 214
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    check-cast v11, Ljava/lang/String;

    .line 219
    .line 220
    invoke-static {v8, v13, v14}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    iget-object v14, v14, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 229
    .line 230
    iget-boolean v14, v14, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 231
    .line 232
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    iget-object v15, v15, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 237
    .line 238
    iget-boolean v15, v15, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 239
    .line 240
    invoke-static {v4, v13, v11, v14, v15}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_5
    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->generateAccountNumber()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    const-string v11, ".accountNumber"

    .line 253
    .line 254
    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 259
    .line 260
    .line 261
    move-result-object v14

    .line 262
    iget-object v14, v14, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 263
    .line 264
    iget-boolean v14, v14, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 265
    .line 266
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 267
    .line 268
    .line 269
    move-result-object v15

    .line 270
    iget-object v15, v15, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 271
    .line 272
    iget-boolean v15, v15, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 273
    .line 274
    invoke-static {v4, v11, v7, v14, v15}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 275
    .line 276
    .line 277
    iget-object v7, v0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->clock:Lkotlin/time/Clock;

    .line 278
    .line 279
    invoke-interface {v7}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    iget-wide v14, v7, Lkotlin/time/Instant;->epochSeconds:J

    .line 284
    .line 285
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    const-string v11, ".messagesNotificationChannelVersion"

    .line 290
    .line 291
    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 296
    .line 297
    .line 298
    move-result-object v14

    .line 299
    iget-object v14, v14, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 300
    .line 301
    iget-boolean v14, v14, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 302
    .line 303
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 304
    .line 305
    .line 306
    move-result-object v15

    .line 307
    iget-object v15, v15, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 308
    .line 309
    iget-boolean v15, v15, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 310
    .line 311
    invoke-static {v4, v11, v7, v14, v15}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 312
    .line 313
    .line 314
    const-string v7, ".incomingServerSettings"

    .line 315
    .line 316
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    iget-object v11, v1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->incoming:Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 321
    .line 322
    iget-object v14, v0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->serverSettingsWriter:Lcom/google/zxing/BinaryBitmap;

    .line 323
    .line 324
    invoke-virtual {v14, v4, v7, v11}, Lcom/google/zxing/BinaryBitmap;->writeServerSettings(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Lcom/fsck/k9/preferences/ValidatedSettings$Server;)V

    .line 325
    .line 326
    .line 327
    const-string v7, ".outgoingServerSettings"

    .line 328
    .line 329
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    iget-object v11, v1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->outgoing:Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 334
    .line 335
    invoke-virtual {v14, v4, v7, v11}, Lcom/google/zxing/BinaryBitmap;->writeServerSettings(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Lcom/fsck/k9/preferences/ValidatedSettings$Server;)V

    .line 336
    .line 337
    .line 338
    iget-object v7, v1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->identities:Ljava/util/List;

    .line 339
    .line 340
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    const/4 v14, 0x0

    .line 345
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v15

    .line 349
    if-eqz v15, :cond_7

    .line 350
    .line 351
    add-int/lit8 v15, v14, 0x1

    .line 352
    .line 353
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v16

    .line 357
    move-object/from16 p2, v5

    .line 358
    .line 359
    move-object/from16 v5, v16

    .line 360
    .line 361
    check-cast v5, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;

    .line 362
    .line 363
    const/16 v16, 0x0

    .line 364
    .line 365
    iget-object v11, v0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->identitySettingsWriter:Lcom/fsck/k9/preferences/FolderSettingsWriter;

    .line 366
    .line 367
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    move-object/from16 v18, v7

    .line 382
    .line 383
    const-string v7, ".name."

    .line 384
    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    iget-object v7, v5, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;->name:Ljava/lang/String;

    .line 396
    .line 397
    iget-object v11, v11, Lcom/fsck/k9/preferences/FolderSettingsWriter;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 398
    .line 399
    check-cast v11, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 400
    .line 401
    move-object/from16 v19, v11

    .line 402
    .line 403
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 404
    .line 405
    .line 406
    move-result-object v11

    .line 407
    iget-object v11, v11, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 408
    .line 409
    iget-boolean v11, v11, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 410
    .line 411
    move-object/from16 v20, v12

    .line 412
    .line 413
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 414
    .line 415
    .line 416
    move-result-object v12

    .line 417
    iget-object v12, v12, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 418
    .line 419
    iget-boolean v12, v12, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 420
    .line 421
    invoke-static {v4, v6, v7, v11, v12}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 422
    .line 423
    .line 424
    new-instance v6, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v7, ".email."

    .line 433
    .line 434
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    iget-object v7, v5, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;->email:Ljava/lang/String;

    .line 445
    .line 446
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 447
    .line 448
    .line 449
    move-result-object v11

    .line 450
    iget-object v11, v11, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 451
    .line 452
    iget-boolean v11, v11, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 453
    .line 454
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 455
    .line 456
    .line 457
    move-result-object v12

    .line 458
    iget-object v12, v12, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 459
    .line 460
    iget-boolean v12, v12, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 461
    .line 462
    invoke-static {v4, v6, v7, v11, v12}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 463
    .line 464
    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v7, ".description."

    .line 474
    .line 475
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    iget-object v7, v5, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;->description:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 488
    .line 489
    .line 490
    move-result-object v11

    .line 491
    iget-object v11, v11, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 492
    .line 493
    iget-boolean v11, v11, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 494
    .line 495
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 496
    .line 497
    .line 498
    move-result-object v12

    .line 499
    iget-object v12, v12, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 500
    .line 501
    iget-boolean v12, v12, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 502
    .line 503
    invoke-static {v4, v6, v7, v11, v12}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 504
    .line 505
    .line 506
    iget-object v5, v5, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;->settings:Ljava/util/Map;

    .line 507
    .line 508
    sget-object v6, Lcom/fsck/k9/preferences/IdentitySettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 509
    .line 510
    invoke-static {v5, v6}, Landroidx/sqlite/SQLite;->convert(Ljava/util/Map;Ljava/util/Map;)Ljava/util/HashMap;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    if-eqz v6, :cond_6

    .line 527
    .line 528
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    check-cast v6, Ljava/util/Map$Entry;

    .line 533
    .line 534
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    check-cast v7, Ljava/lang/String;

    .line 539
    .line 540
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v6

    .line 544
    check-cast v6, Ljava/lang/String;

    .line 545
    .line 546
    new-instance v11, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v7

    .line 570
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 571
    .line 572
    .line 573
    move-result-object v11

    .line 574
    iget-object v11, v11, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 575
    .line 576
    iget-boolean v11, v11, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 577
    .line 578
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 579
    .line 580
    .line 581
    move-result-object v12

    .line 582
    iget-object v12, v12, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 583
    .line 584
    iget-boolean v12, v12, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 585
    .line 586
    invoke-static {v4, v7, v6, v11, v12}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 587
    .line 588
    .line 589
    goto :goto_5

    .line 590
    :cond_6
    move-object/from16 v5, p2

    .line 591
    .line 592
    move v14, v15

    .line 593
    move-object/from16 v7, v18

    .line 594
    .line 595
    move-object/from16 v12, v20

    .line 596
    .line 597
    const/4 v6, 0x1

    .line 598
    goto/16 :goto_4

    .line 599
    .line 600
    :cond_7
    move-object/from16 p2, v5

    .line 601
    .line 602
    move-object/from16 v20, v12

    .line 603
    .line 604
    const/16 v16, 0x0

    .line 605
    .line 606
    iget-object v1, v1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->folders:Ljava/util/List;

    .line 607
    .line 608
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 613
    .line 614
    .line 615
    move-result v5

    .line 616
    if-eqz v5, :cond_9

    .line 617
    .line 618
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    check-cast v5, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;

    .line 623
    .line 624
    iget-object v6, v0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->folderSettingsWriter:Lcom/fsck/k9/preferences/FolderSettingsWriter;

    .line 625
    .line 626
    iget-object v6, v6, Lcom/fsck/k9/preferences/FolderSettingsWriter;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 627
    .line 628
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    iget-object v7, v5, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->settings:Ljava/util/Map;

    .line 632
    .line 633
    sget-object v11, Lcom/fsck/k9/preferences/FolderSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 634
    .line 635
    invoke-static {v7, v11}, Landroidx/sqlite/SQLite;->convert(Ljava/util/Map;Ljava/util/Map;)Ljava/util/HashMap;

    .line 636
    .line 637
    .line 638
    move-result-object v7

    .line 639
    iget-object v5, v5, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->name:Ljava/lang/String;

    .line 640
    .line 641
    invoke-static {v8, v13, v5, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 646
    .line 647
    .line 648
    move-result-object v7

    .line 649
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 650
    .line 651
    .line 652
    move-result-object v7

    .line 653
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 654
    .line 655
    .line 656
    move-result v11

    .line 657
    if-eqz v11, :cond_8

    .line 658
    .line 659
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v11

    .line 663
    check-cast v11, Ljava/util/Map$Entry;

    .line 664
    .line 665
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v12

    .line 669
    check-cast v12, Ljava/lang/String;

    .line 670
    .line 671
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v11

    .line 675
    check-cast v11, Ljava/lang/String;

    .line 676
    .line 677
    invoke-static {v5, v12}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v12

    .line 681
    move-object v14, v6

    .line 682
    check-cast v14, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 683
    .line 684
    invoke-virtual {v14}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 685
    .line 686
    .line 687
    move-result-object v15

    .line 688
    iget-object v15, v15, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 689
    .line 690
    iget-boolean v15, v15, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 691
    .line 692
    invoke-virtual {v14}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 693
    .line 694
    .line 695
    move-result-object v14

    .line 696
    iget-object v14, v14, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 697
    .line 698
    iget-boolean v14, v14, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 699
    .line 700
    invoke-static {v4, v12, v11, v15, v14}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 701
    .line 702
    .line 703
    goto :goto_6

    .line 704
    :cond_9
    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    const-string v5, "accountUuids"

    .line 709
    .line 710
    invoke-virtual {v1, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    if-nez v1, :cond_a

    .line 715
    .line 716
    const-string v1, ""

    .line 717
    .line 718
    :cond_a
    const/4 v6, 0x1

    .line 719
    new-array v7, v6, [C

    .line 720
    .line 721
    const/16 v6, 0x2c

    .line 722
    .line 723
    aput-char v6, v7, v16

    .line 724
    .line 725
    invoke-static {v1, v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 730
    .line 731
    .line 732
    move-result v6

    .line 733
    if-nez v6, :cond_c

    .line 734
    .line 735
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 736
    .line 737
    .line 738
    move-result v6

    .line 739
    invoke-interface {v1, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 740
    .line 741
    .line 742
    move-result-object v6

    .line 743
    :goto_7
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 744
    .line 745
    .line 746
    move-result v7

    .line 747
    if-eqz v7, :cond_c

    .line 748
    .line 749
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v7

    .line 753
    check-cast v7, Ljava/lang/String;

    .line 754
    .line 755
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 756
    .line 757
    .line 758
    move-result v7

    .line 759
    if-nez v7, :cond_b

    .line 760
    .line 761
    goto :goto_7

    .line 762
    :cond_b
    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    .line 763
    .line 764
    .line 765
    move-result v6

    .line 766
    const/16 v17, 0x1

    .line 767
    .line 768
    add-int/lit8 v6, v6, 0x1

    .line 769
    .line 770
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    goto :goto_8

    .line 775
    :cond_c
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 776
    .line 777
    :goto_8
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 778
    .line 779
    .line 780
    move-result-object v11

    .line 781
    const/4 v15, 0x0

    .line 782
    const/16 v16, 0x3e

    .line 783
    .line 784
    const-string v12, ","

    .line 785
    .line 786
    const/4 v13, 0x0

    .line 787
    const/4 v14, 0x0

    .line 788
    invoke-static/range {v11 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v1

    .line 792
    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 793
    .line 794
    .line 795
    move-result-object v6

    .line 796
    iget-object v6, v6, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 797
    .line 798
    iget-boolean v6, v6, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 799
    .line 800
    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 801
    .line 802
    .line 803
    move-result-object v7

    .line 804
    iget-object v7, v7, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 805
    .line 806
    iget-boolean v7, v7, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 807
    .line 808
    invoke-static {v4, v5, v1, v6, v7}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/K9StorageEditor;->commit()Z

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    if-eqz v1, :cond_f

    .line 816
    .line 817
    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v2, v8}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    if-eqz v1, :cond_e

    .line 825
    .line 826
    iput-object v9, v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;->L$4:Lcom/fsck/k9/preferences/AccountDescription;

    .line 827
    .line 828
    iput-object v10, v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;->L$7:Lcom/fsck/k9/preferences/AccountDescription;

    .line 829
    .line 830
    const/4 v6, 0x1

    .line 831
    iput v6, v3, Lcom/fsck/k9/preferences/AccountSettingsWriter$write$1;->label:I

    .line 832
    .line 833
    iget-object v2, v0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->localFoldersCreator:Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 834
    .line 835
    invoke-virtual {v2, v1, v3}, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;->createSpecialLocalFolders(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 840
    .line 841
    if-ne v1, v2, :cond_d

    .line 842
    .line 843
    return-object v2

    .line 844
    :cond_d
    move-object v3, v9

    .line 845
    move-object v1, v10

    .line 846
    :goto_9
    iget-object v0, v0, Lcom/fsck/k9/preferences/AccountSettingsWriter;->context:Landroid/content/Context;

    .line 847
    .line 848
    invoke-static {v0}, Lcom/fsck/k9/Core;->setServicesEnabled(Landroid/content/Context;)V

    .line 849
    .line 850
    .line 851
    new-instance v0, Lkotlin/Pair;

    .line 852
    .line 853
    invoke-direct {v0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 854
    .line 855
    .line 856
    return-object v0

    .line 857
    :cond_e
    const-string v0, "Failed to load account: "

    .line 858
    .line 859
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    invoke-static {v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 864
    .line 865
    .line 866
    return-object p2

    .line 867
    :cond_f
    const-string v0, "Failed to commit account settings"

    .line 868
    .line 869
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    return-object p2

    .line 873
    :cond_10
    move-object/from16 p2, v5

    .line 874
    .line 875
    if-eq v12, v11, :cond_12

    .line 876
    .line 877
    add-int/lit8 v12, v12, 0x1

    .line 878
    .line 879
    move-object/from16 v5, p2

    .line 880
    .line 881
    goto/16 :goto_1

    .line 882
    .line 883
    :cond_11
    move-object/from16 p2, v5

    .line 884
    .line 885
    :cond_12
    const-string v0, "Unexpected exit"

    .line 886
    .line 887
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    return-object p2
.end method
