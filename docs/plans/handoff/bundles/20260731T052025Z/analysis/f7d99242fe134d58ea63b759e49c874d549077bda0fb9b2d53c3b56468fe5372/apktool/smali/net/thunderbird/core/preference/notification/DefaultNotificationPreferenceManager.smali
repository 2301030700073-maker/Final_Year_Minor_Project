.class public final Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;


# instance fields
.field public final configState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final mutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

.field public final storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V
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
    iput-object p1, p0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    iput-object p2, p0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 22
    .line 23
    iput-object p3, p0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 24
    .line 25
    iput-object v0, p0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 26
    .line 27
    iput-object v1, p0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 28
    .line 29
    check-cast p4, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;

    .line 30
    .line 31
    invoke-virtual {p4, p0}, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;->subscribe(Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 35
    .line 36
    invoke-direct {p1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->getConfigFromStorage(Lnet/thunderbird/core/preference/storage/InMemoryStorage;)Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final getConfig()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getConfigFromStorage(Lnet/thunderbird/core/preference/storage/InMemoryStorage;)Lnet/thunderbird/core/preference/notification/NotificationPreference;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/core/preference/notification/NotificationPreferenceKt;->NOTIFICATION_PREFERENCE_DEFAULT_QUICK_DELETE_BEHAVIOUR:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 4
    .line 5
    const-string v2, "notificationQuickDelete"

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const-string v4, "Valid values: "

    .line 13
    .line 14
    const-string v5, "."

    .line 15
    .line 16
    const-string v6, "to enum of type "

    .line 17
    .line 18
    const-string v7, "] "

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-static {v2}, Lnet/thunderbird/core/preference/NotificationQuickDelete;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move-object v14, v2

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v8, "Unable to convert stored key [notificationQuickDelete] value ["

    .line 34
    .line 35
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-class v2, Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {}, Lnet/thunderbird/core/preference/NotificationQuickDelete;->values()[Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    const/4 v9, 0x0

    .line 78
    const/16 v10, 0x3f

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static/range {v5 .. v10}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v1, v2, v4, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    return-object v3

    .line 95
    :cond_0
    move-object v14, v1

    .line 96
    :goto_0
    iget-object v1, v0, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->values:Ljava/util/HashMap;

    .line 97
    .line 98
    const-string v2, "isSummaryDeleteActionEnabled"

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v8, 0x0

    .line 105
    const/4 v9, 0x1

    .line 106
    if-eqz v1, :cond_1

    .line 107
    .line 108
    invoke-virtual {v0, v2, v9}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    :goto_1
    move v12, v1

    .line 113
    goto :goto_4

    .line 114
    :cond_1
    sget-object v1, Lnet/thunderbird/core/preference/NotificationQuickDelete;->ALWAYS:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 115
    .line 116
    if-ne v14, v1, :cond_2

    .line 117
    .line 118
    move v1, v9

    .line 119
    :goto_2
    move-object/from16 v10, p0

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_2
    move v1, v8

    .line 123
    goto :goto_2

    .line 124
    :goto_3
    iget-object v10, v10, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 125
    .line 126
    invoke-virtual {v10, v2, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10}, Lcom/fsck/k9/preferences/K9StorageEditor;->commit()Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :goto_4
    const-string v1, "quietTimeEnabled"

    .line 134
    .line 135
    invoke-virtual {v0, v1, v8}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    const-string v2, "quietTimeStarts"

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-nez v2, :cond_3

    .line 146
    .line 147
    const-string v2, "21:00"

    .line 148
    .line 149
    :cond_3
    const-string v10, "quietTimeEnds"

    .line 150
    .line 151
    invoke-virtual {v0, v10}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    if-nez v10, :cond_4

    .line 156
    .line 157
    const-string v10, "7:00"

    .line 158
    .line 159
    :cond_4
    const-string v11, "notificationDuringQuietTimeEnabled"

    .line 160
    .line 161
    invoke-virtual {v0, v11, v9}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    sget-object v13, Lnet/thunderbird/core/common/notification/NotificationActionTokens;->DEFAULT_ORDER:Ljava/util/List;

    .line 166
    .line 167
    sget-object v15, Lnet/thunderbird/core/preference/notification/NotificationPreferenceKt;->NOTIFICATION_PREFERENCE_DEFAULT_MESSAGE_ACTIONS_ORDER:Ljava/util/List;

    .line 168
    .line 169
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    const/16 v19, 0x0

    .line 173
    .line 174
    const/16 v20, 0x3e

    .line 175
    .line 176
    const-string v16, ","

    .line 177
    .line 178
    const/16 v17, 0x0

    .line 179
    .line 180
    const/16 v18, 0x0

    .line 181
    .line 182
    invoke-static/range {v15 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    const-string v15, "messageActionsOrder"

    .line 187
    .line 188
    invoke-virtual {v0, v15}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    if-nez v15, :cond_5

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_5
    move-object v13, v15

    .line 196
    :goto_5
    new-array v15, v9, [C

    .line 197
    .line 198
    const/16 v16, 0x2c

    .line 199
    .line 200
    aput-char v16, v15, v8

    .line 201
    .line 202
    invoke-static {v13, v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    new-instance v13, Ljava/util/ArrayList;

    .line 207
    .line 208
    const/16 v15, 0xa

    .line 209
    .line 210
    invoke-static {v8, v15}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v15

    .line 225
    if-eqz v15, :cond_6

    .line 226
    .line 227
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v15

    .line 231
    check-cast v15, Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v15}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 234
    .line 235
    .line 236
    move-result-object v15

    .line 237
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v15

    .line 241
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    :cond_7
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v15

    .line 258
    if-eqz v15, :cond_8

    .line 259
    .line 260
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    move-object/from16 v16, v15

    .line 265
    .line 266
    check-cast v16, Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    .line 269
    .line 270
    .line 271
    move-result v16

    .line 272
    if-lez v16, :cond_7

    .line 273
    .line 274
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_8
    const-string v13, "messageActionsCutoff"

    .line 279
    .line 280
    const/4 v15, 0x3

    .line 281
    invoke-virtual {v0, v13, v15}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 282
    .line 283
    .line 284
    move-result v13

    .line 285
    const-string v15, "showContactPictureInNotification"

    .line 286
    .line 287
    invoke-virtual {v0, v15, v9}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    sget-object v15, Lnet/thunderbird/core/preference/notification/NotificationPreferenceKt;->NOTIFICATION_PREFERENCE_DEFAULT_LOCK_SCREEN_NOTIFICATION_VISIBILITY:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 292
    .line 293
    move-object/from16 v16, v3

    .line 294
    .line 295
    const-string v3, "lockScreenNotificationVisibility"

    .line 296
    .line 297
    invoke-virtual {v0, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    if-eqz v3, :cond_9

    .line 302
    .line 303
    :try_start_1
    invoke-static {v3}, Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 304
    .line 305
    .line 306
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    if-eqz v0, :cond_9

    .line 308
    .line 309
    move-object v15, v0

    .line 310
    goto :goto_8

    .line 311
    :catch_1
    move-exception v0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v2, "Unable to convert stored key [lockScreenNotificationVisibility] value ["

    .line 315
    .line 316
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const-class v2, Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 330
    .line 331
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-static {}, Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;->values()[Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    const/4 v9, 0x0

    .line 359
    const/16 v10, 0x3f

    .line 360
    .line 361
    const/4 v6, 0x0

    .line 362
    const/4 v7, 0x0

    .line 363
    const/4 v8, 0x0

    .line 364
    invoke-static/range {v5 .. v10}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-static {v1, v2, v3, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 373
    .line 374
    .line 375
    return-object v16

    .line 376
    :cond_9
    :goto_8
    new-instance v5, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 377
    .line 378
    move-object v6, v10

    .line 379
    move-object v10, v8

    .line 380
    move-object v8, v6

    .line 381
    move v6, v13

    .line 382
    move v13, v9

    .line 383
    move v9, v11

    .line 384
    move v11, v6

    .line 385
    move v6, v1

    .line 386
    move-object v7, v2

    .line 387
    invoke-direct/range {v5 .. v15}, Lnet/thunderbird/core/preference/notification/NotificationPreference;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/util/List;IZZLnet/thunderbird/core/preference/NotificationQuickDelete;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)V

    .line 388
    .line 389
    .line 390
    return-object v5
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
    sget-object v0, Lnet/thunderbird/core/preference/PreferenceScope;->NOTIFICATION:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

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
    check-cast v1, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 20
    .line 21
    iget-object v1, p0, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->getConfigFromStorage(Lnet/thunderbird/core/preference/storage/InMemoryStorage;)Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    :cond_1
    return-void
.end method
