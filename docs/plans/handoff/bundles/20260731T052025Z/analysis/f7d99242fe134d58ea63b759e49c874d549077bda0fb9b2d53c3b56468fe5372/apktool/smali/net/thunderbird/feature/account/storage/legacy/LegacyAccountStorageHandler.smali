.class public final Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final profileDtoStorageHandler:Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;

.field public final serverSettingsDtoSerializer:Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;Lnet/thunderbird/core/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->serverSettingsDtoSerializer:Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->profileDtoStorageHandler:Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final delete(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 3
    .line 4
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Lokhttp3/ConnectionPool;-><init>(Lnet/thunderbird/feature/account/AccountId;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->profileDtoStorageHandler:Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;

    .line 12
    .line 13
    invoke-virtual {v2, p1, p2, p3}, Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;->delete(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "accountUuids"

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    invoke-virtual {p2, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v3, v2

    .line 28
    :goto_0
    const-string v2, ","

    .line 29
    .line 30
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static {v4}, Lkotlin/text/StringsKt;->requireNonNegativeLimit(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 61
    .line 62
    const/16 v6, 0xa

    .line 63
    .line 64
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    move v6, v4

    .line 68
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-interface {v3, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_2

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-interface {v3, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-object v2, v5

    .line 109
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_4

    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_4

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-nez v5, :cond_3

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    .line 148
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    goto :goto_3

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    move-object p1, v0

    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :cond_4
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 158
    .line 159
    :goto_3
    new-array v3, v4, [Ljava/lang/String;

    .line 160
    .line 161
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, [Ljava/lang/String;

    .line 166
    .line 167
    new-instance v5, Ljava/util/ArrayList;

    .line 168
    .line 169
    array-length v3, v2

    .line 170
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .line 172
    .line 173
    array-length v3, v2

    .line 174
    :goto_4
    if-ge v4, v3, :cond_6

    .line 175
    .line 176
    aget-object v6, v2, v4

    .line 177
    .line 178
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-nez v7, :cond_5

    .line 183
    .line 184
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    array-length v2, v2

    .line 195
    if-ge v1, v2, :cond_7

    .line 196
    .line 197
    const-string v6, ","

    .line 198
    .line 199
    const/4 v9, 0x0

    .line 200
    const/16 v10, 0x3e

    .line 201
    .line 202
    const/4 v7, 0x0

    .line 203
    const/4 v8, 0x0

    .line 204
    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v2, "accountUuids"

    .line 209
    .line 210
    invoke-virtual {p3, v2, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_7
    const-string v1, "oAuthState"

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string v1, "incomingServerSettings"

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v1, "outgoingServerSettings"

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string v1, "description"

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v1, "email"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string v1, "alwaysBcc"

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-string v1, "automaticCheckIntervalMinutes"

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v1, "idleRefreshMinutes"

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const-string v1, "lastAutomaticCheckTime"

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string v1, "notifyNewMail"

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-string v1, "notifySelfNewMail"

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string v1, "ignoreChatMessages"

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v1, "messagesNotificationChannelVersion"

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string v1, "deletePolicy"

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string v1, "draftsFolderName"

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v1, "sentFolderName"

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    const-string v1, "trashFolderName"

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v1, "archiveFolderName"

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    const-string v1, "spamFolderName"

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-string v1, "archiveFolderSelection"

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    const-string v1, "draftsFolderSelection"

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    const-string v1, "sentFolderSelection"

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const-string v1, "spamFolderSelection"

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    const-string v1, "trashFolderSelection"

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    const-string v1, "autoExpandFolderName"

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    const-string v1, "accountNumber"

    .line 439
    .line 440
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string/jumbo v1, "vibrate"

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    const-string/jumbo v1, "vibratePattern"

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string/jumbo v1, "vibrateTimes"

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const-string v1, "ring"

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    const-string v1, "ringtone"

    .line 487
    .line 488
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    const-string v1, "folderDisplayMode"

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    const-string v1, "folderSyncMode"

    .line 505
    .line 506
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    const-string v1, "folderPushMode"

    .line 514
    .line 515
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    const-string v1, "signatureBeforeQuotedText"

    .line 523
    .line 524
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    const-string v1, "expungePolicy"

    .line 532
    .line 533
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    const-string v1, "syncRemoteDeletions"

    .line 541
    .line 542
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    const-string v1, "maxPushFolders"

    .line 550
    .line 551
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    const-string v1, "notificationLight"

    .line 559
    .line 560
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    const-string v1, "subscribedFoldersOnly"

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    const-string v1, "maximumPolledMessageAge"

    .line 577
    .line 578
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    const-string v1, "maximumAutoDownloadMessageSize"

    .line 586
    .line 587
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    const-string v1, "messageFormatAuto"

    .line 595
    .line 596
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    const-string v1, "quoteStyle"

    .line 604
    .line 605
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    const-string v1, "quotePrefix"

    .line 613
    .line 614
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    const-string v1, "sortTypeEnum"

    .line 622
    .line 623
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    const-string v1, "sortAscending"

    .line 631
    .line 632
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    const-string v1, "showPicturesEnum"

    .line 640
    .line 641
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    const-string v1, "replyAfterQuote"

    .line 649
    .line 650
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    const-string v1, "stripSignature"

    .line 658
    .line 659
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    const-string v1, "cryptoApp"

    .line 667
    .line 668
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    const-string v1, "cryptoAutoSignature"

    .line 676
    .line 677
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    const-string v1, "cryptoAutoEncrypt"

    .line 685
    .line 686
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    const-string v1, "cryptoApp"

    .line 694
    .line 695
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    const-string v1, "cryptoKey"

    .line 703
    .line 704
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    const-string v1, "cryptoSupportSignOnly"

    .line 712
    .line 713
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    const-string v1, "openPgpProvider"

    .line 721
    .line 722
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    const-string v1, "openPgpHideSignOnly"

    .line 730
    .line 731
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    const-string v1, "openPgpEncryptSubject"

    .line 739
    .line 740
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    const-string v1, "openPgpEncryptAllDrafts"

    .line 748
    .line 749
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    const-string v1, "autocryptMutualMode"

    .line 757
    .line 758
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    const-string v1, "enabled"

    .line 766
    .line 767
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    const-string v1, "markMessageAsReadOnView"

    .line 775
    .line 776
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    const-string v1, "markMessageAsReadOnDelete"

    .line 784
    .line 785
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    const-string v1, "alwaysShowCcBcc"

    .line 793
    .line 794
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    const-string v1, "remoteSearchFullText"

    .line 802
    .line 803
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    const-string v1, "remoteSearchNumResults"

    .line 811
    .line 812
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    const-string/jumbo v1, "uploadSentMessages"

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    const-string v1, "defaultQuotedTextShown"

    .line 830
    .line 831
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    const-string v1, "displayCount"

    .line 839
    .line 840
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    const-string v1, "inboxFolderName"

    .line 848
    .line 849
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    const-string v1, "messageFormat"

    .line 857
    .line 858
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    const-string v1, "messageReadReceipt"

    .line 866
    .line 867
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    const-string v1, "notifyMailCheck"

    .line 875
    .line 876
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    const-string v1, "inboxFolderId"

    .line 884
    .line 885
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    const-string v1, "outboxFolderId"

    .line 893
    .line 894
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    const-string v1, "draftsFolderId"

    .line 902
    .line 903
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    const-string v1, "sentFolderId"

    .line 911
    .line 912
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    const-string v1, "trashFolderId"

    .line 920
    .line 921
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    const-string v1, "archiveFolderId"

    .line 929
    .line 930
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v1

    .line 934
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    const-string v1, "spamFolderId"

    .line 938
    .line 939
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    const-string v1, "autoExpandFolderId"

    .line 947
    .line 948
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    const-string v1, "lastSyncTime"

    .line 956
    .line 957
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    const-string v1, "lastFolderListRefreshTime"

    .line 965
    .line 966
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v1

    .line 970
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    const-string v1, "isFinishedSetup"

    .line 974
    .line 975
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    const-string/jumbo v1, "useCompression"

    .line 983
    .line 984
    .line 985
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    const-string v1, "sendClientInfo"

    .line 993
    .line 994
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v1

    .line 998
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    const-string v1, "migrateToOAuth"

    .line 1002
    .line 1003
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v1

    .line 1007
    invoke-virtual {p3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    const-string v1, "folderPathDelimiter"

    .line 1011
    .line 1012
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    invoke-virtual {p3, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {p0, p1, p2, p3}, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->deleteIdentities(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    .line 1021
    .line 1022
    monitor-exit p0

    .line 1023
    return-void

    .line 1024
    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    throw p1
.end method

.method public final declared-synchronized deleteIdentities(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 3
    .line 4
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lokhttp3/ConnectionPool;-><init>(Lnet/thunderbird/feature/account/AccountId;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    move v1, p1

    .line 11
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "email."

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p2, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "name."

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p3, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v3, "email."

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p3, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "signatureUse."

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p3, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v3, "signature."

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {p3, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v3, "description."

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {p3, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v3, "replyTo."

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {p3, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .line 181
    .line 182
    const/4 v2, 0x1

    .line 183
    goto :goto_0

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    goto :goto_1

    .line 186
    :cond_1
    move v2, p1

    .line 187
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 188
    .line 189
    if-nez v2, :cond_0

    .line 190
    .line 191
    monitor-exit p0

    .line 192
    return-void

    .line 193
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    throw p1
.end method

.method public final declared-synchronized load(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;)V
    .locals 58

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v4, "Valid values: "

    .line 8
    .line 9
    const-string v5, "to enum of type "

    .line 10
    .line 11
    const-string v6, "Unable to convert stored key ["

    .line 12
    .line 13
    const-string v7, "Valid values: "

    .line 14
    .line 15
    const-string v8, "to enum of type "

    .line 16
    .line 17
    const-string v9, "Unable to convert stored key ["

    .line 18
    .line 19
    const-string v10, "Valid values: "

    .line 20
    .line 21
    const-string v11, "to enum of type "

    .line 22
    .line 23
    const-string v12, "Unable to convert stored key ["

    .line 24
    .line 25
    const-string v13, "Valid values: "

    .line 26
    .line 27
    const-string v14, "to enum of type "

    .line 28
    .line 29
    const-string v15, "Unable to convert stored key ["

    .line 30
    .line 31
    move-object/from16 v16, v4

    .line 32
    .line 33
    const-string v4, "Valid values: "

    .line 34
    .line 35
    move-object/from16 v17, v5

    .line 36
    .line 37
    const-string v5, "to enum of type "

    .line 38
    .line 39
    move-object/from16 v18, v6

    .line 40
    .line 41
    const-string v6, "Unable to convert stored key ["

    .line 42
    .line 43
    move-object/from16 v19, v7

    .line 44
    .line 45
    const-string v7, "Valid values: "

    .line 46
    .line 47
    move-object/from16 v20, v8

    .line 48
    .line 49
    const-string v8, "to enum of type "

    .line 50
    .line 51
    move-object/from16 v21, v9

    .line 52
    .line 53
    const-string v9, "Unable to convert stored key ["

    .line 54
    .line 55
    move-object/from16 v22, v10

    .line 56
    .line 57
    const-string v10, "Valid values: "

    .line 58
    .line 59
    move-object/from16 v23, v11

    .line 60
    .line 61
    const-string v11, "to enum of type "

    .line 62
    .line 63
    move-object/from16 v24, v12

    .line 64
    .line 65
    const-string v12, "Unable to convert stored key ["

    .line 66
    .line 67
    move-object/from16 v25, v13

    .line 68
    .line 69
    const-string v13, "Valid values: "

    .line 70
    .line 71
    move-object/from16 v26, v14

    .line 72
    .line 73
    const-string v14, "to enum of type "

    .line 74
    .line 75
    move-object/from16 v27, v15

    .line 76
    .line 77
    const-string v15, "Unable to convert stored key ["

    .line 78
    .line 79
    move-object/from16 v28, v4

    .line 80
    .line 81
    const-string v4, "Valid values: "

    .line 82
    .line 83
    move-object/from16 v29, v5

    .line 84
    .line 85
    const-string v5, "to enum of type "

    .line 86
    .line 87
    move-object/from16 v30, v6

    .line 88
    .line 89
    const-string v6, "Unable to convert stored key ["

    .line 90
    .line 91
    move-object/from16 v31, v7

    .line 92
    .line 93
    const-string v7, "Valid values: "

    .line 94
    .line 95
    move-object/from16 v32, v8

    .line 96
    .line 97
    const-string v8, "to enum of type "

    .line 98
    .line 99
    move-object/from16 v33, v9

    .line 100
    .line 101
    const-string v9, "Unable to convert stored key ["

    .line 102
    .line 103
    move-object/from16 v34, v10

    .line 104
    .line 105
    const-string v10, "Valid values: "

    .line 106
    .line 107
    move-object/from16 v35, v11

    .line 108
    .line 109
    const-string v11, "to enum of type "

    .line 110
    .line 111
    move-object/from16 v36, v12

    .line 112
    .line 113
    const-string v12, "Unable to convert stored key ["

    .line 114
    .line 115
    move-object/from16 v37, v13

    .line 116
    .line 117
    const-string v13, "Valid values: "

    .line 118
    .line 119
    move-object/from16 v38, v14

    .line 120
    .line 121
    const-string v14, "to enum of type "

    .line 122
    .line 123
    move-object/from16 v39, v15

    .line 124
    .line 125
    const-string v15, "Unable to convert stored key ["

    .line 126
    .line 127
    move-object/from16 v40, v4

    .line 128
    .line 129
    const-string v4, "Valid values: "

    .line 130
    .line 131
    move-object/from16 v41, v5

    .line 132
    .line 133
    const-string v5, "to enum of type "

    .line 134
    .line 135
    move-object/from16 v42, v6

    .line 136
    .line 137
    const-string v6, "Unable to convert stored key ["

    .line 138
    .line 139
    move-object/from16 v43, v7

    .line 140
    .line 141
    const-string v7, "Valid values: "

    .line 142
    .line 143
    move-object/from16 v44, v8

    .line 144
    .line 145
    const-string v8, "to enum of type "

    .line 146
    .line 147
    move-object/from16 v45, v9

    .line 148
    .line 149
    const-string v9, "Unable to convert stored key ["

    .line 150
    .line 151
    monitor-enter p0

    .line 152
    move-object/from16 v46, v10

    .line 153
    .line 154
    :try_start_0
    new-instance v10, Lokhttp3/ConnectionPool;

    .line 155
    .line 156
    iget-object v0, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 157
    .line 158
    invoke-direct {v10, v0}, Lokhttp3/ConnectionPool;-><init>(Lnet/thunderbird/feature/account/AccountId;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->profileDtoStorageHandler:Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;

    .line 162
    .line 163
    invoke-virtual {v0, v2, v3}, Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;->load(Ljava/lang/Object;Lnet/thunderbird/core/preference/storage/InMemoryStorage;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->serverSettingsDtoSerializer:Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 167
    .line 168
    move-object/from16 v47, v11

    .line 169
    .line 170
    const-string v11, "incomingServerSettings"

    .line 171
    .line 172
    invoke-virtual {v10, v11}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    move-object/from16 v48, v12

    .line 177
    .line 178
    const-string v12, ""

    .line 179
    .line 180
    invoke-virtual {v3, v11, v12}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    invoke-virtual {v0, v11}, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;->deserialize(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalIncomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 189
    .line 190
    iget-object v0, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->serverSettingsDtoSerializer:Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 191
    .line 192
    const-string v11, "outgoingServerSettings"

    .line 193
    .line 194
    invoke-virtual {v10, v11}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    const-string v12, ""

    .line 199
    .line 200
    invoke-virtual {v3, v11, v12}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-virtual {v0, v11}, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;->deserialize(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput-object v0, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalOutgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 209
    .line 210
    const-string v0, "oAuthState"

    .line 211
    .line 212
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOAuthState(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v0, "alwaysBcc"

    .line 224
    .line 225
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    .line 235
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAlwaysBcc()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    .line 241
    goto/16 :goto_1a

    .line 242
    .line 243
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAlwaysBcc(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string v0, "automaticCheckIntervalMinutes"

    .line 247
    .line 248
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const/16 v11, 0xf

    .line 253
    .line 254
    invoke-virtual {v3, v0, v11}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutomaticCheckIntervalMinutes(I)V

    .line 259
    .line 260
    .line 261
    const-string v0, "idleRefreshMinutes"

    .line 262
    .line 263
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const/16 v11, 0x18

    .line 268
    .line 269
    invoke-virtual {v3, v0, v11}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIdleRefreshMinutes(I)V

    .line 274
    .line 275
    .line 276
    const-string v0, "displayCount"

    .line 277
    .line 278
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const/16 v11, 0x19

    .line 283
    .line 284
    invoke-virtual {v3, v0, v11}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDisplayCount(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayCount()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-gez v0, :cond_1

    .line 296
    .line 297
    invoke-virtual {v2, v11}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDisplayCount(I)V

    .line 298
    .line 299
    .line 300
    :cond_1
    const-string v0, "notifyNewMail"

    .line 301
    .line 302
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    const/4 v12, 0x0

    .line 307
    invoke-virtual {v3, v0, v12}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyNewMail(Z)V

    .line 312
    .line 313
    .line 314
    const-string v0, "folderNotifyNewMailMode"

    .line 315
    .line 316
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    sget-object v12, Lnet/thunderbird/core/android/account/FolderMode;->ALL:Lnet/thunderbird/core/android/account/FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .line 322
    move-object/from16 v49, v13

    .line 323
    .line 324
    :try_start_1
    invoke-virtual {v3, v11}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    if-eqz v13, :cond_2

    .line 329
    .line 330
    :try_start_2
    invoke-static {v13}, Lnet/thunderbird/core/android/account/FolderMode;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/FolderMode;

    .line 331
    .line 332
    .line 333
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    if-eqz v0, :cond_2

    .line 335
    .line 336
    move-object v12, v0

    .line 337
    :cond_2
    move-object/from16 v50, v14

    .line 338
    .line 339
    move-object/from16 v51, v15

    .line 340
    .line 341
    goto :goto_2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    move-object/from16 v50, v14

    .line 344
    .line 345
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 348
    .line 349
    .line 350
    move-object/from16 v51, v15

    .line 351
    .line 352
    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v9, "] value ["

    .line 361
    .line 362
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v9, "] "

    .line 369
    .line 370
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-class v9, Lnet/thunderbird/core/android/account/FolderMode;

    .line 381
    .line 382
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    invoke-virtual {v9}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    new-instance v13, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v8, "."

    .line 399
    .line 400
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const/16 v8, 0xa

    .line 411
    .line 412
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-static {}, Lnet/thunderbird/core/android/account/FolderMode;->values()[Lnet/thunderbird/core/android/account/FolderMode;

    .line 416
    .line 417
    .line 418
    move-result-object v52

    .line 419
    const/16 v56, 0x0

    .line 420
    .line 421
    const/16 v57, 0x3f

    .line 422
    .line 423
    const/16 v53, 0x0

    .line 424
    .line 425
    const/16 v54, 0x0

    .line 426
    .line 427
    const/16 v55, 0x0

    .line 428
    .line 429
    invoke-static/range {v52 .. v57}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v8

    .line 433
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 445
    .line 446
    invoke-direct {v8, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    .line 448
    .line 449
    throw v8
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 450
    :catch_1
    move-exception v0

    .line 451
    goto :goto_3

    .line 452
    :catch_2
    move-exception v0

    .line 453
    :goto_1
    move-object/from16 v51, v15

    .line 454
    .line 455
    goto :goto_3

    .line 456
    :goto_2
    const/4 v9, 0x1

    .line 457
    goto :goto_4

    .line 458
    :catch_3
    move-exception v0

    .line 459
    move-object/from16 v50, v14

    .line 460
    .line 461
    goto :goto_1

    .line 462
    :goto_3
    :try_start_5
    iget-object v7, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 463
    .line 464
    new-instance v8, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 465
    .line 466
    const/16 v9, 0x1c

    .line 467
    .line 468
    invoke-direct {v8, v9, v11, v12}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    const/4 v9, 0x1

    .line 472
    invoke-static {v7, v0, v8, v9}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 473
    .line 474
    .line 475
    :goto_4
    invoke-virtual {v2, v12}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderNotifyNewMailMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 476
    .line 477
    .line 478
    const-string v0, "notifySelfNewMail"

    .line 479
    .line 480
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v3, v0, v9}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifySelfNewMail(Z)V

    .line 489
    .line 490
    .line 491
    const-string v0, "notifyContactsMailOnly"

    .line 492
    .line 493
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    const/4 v7, 0x0

    .line 498
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyContactsMailOnly(Z)V

    .line 503
    .line 504
    .line 505
    const-string v0, "ignoreChatMessages"

    .line 506
    .line 507
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIgnoreChatMessages(Z)V

    .line 516
    .line 517
    .line 518
    const-string v0, "notifyMailCheck"

    .line 519
    .line 520
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifySync(Z)V

    .line 529
    .line 530
    .line 531
    const-string v0, "messagesNotificationChannelVersion"

    .line 532
    .line 533
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessagesNotificationChannelVersion(I)V

    .line 542
    .line 543
    .line 544
    sget-object v0, Lnet/thunderbird/core/android/account/DeletePolicy;->Companion:Lcom/bumptech/glide/GlideBuilder$1;

    .line 545
    .line 546
    const-string v8, "deletePolicy"

    .line 547
    .line 548
    invoke-virtual {v10, v8}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    invoke-virtual {v3, v8, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 553
    .line 554
    .line 555
    move-result v8

    .line 556
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    invoke-static {v8}, Lcom/bumptech/glide/GlideBuilder$1;->fromInt(I)Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDeletePolicy(Lnet/thunderbird/core/android/account/DeletePolicy;)V

    .line 564
    .line 565
    .line 566
    const-string v0, "inboxFolderName"

    .line 567
    .line 568
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLegacyInboxFolder(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    const-string v0, "draftsFolderName"

    .line 580
    .line 581
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedDraftsFolder(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    const-string v0, "sentFolderName"

    .line 593
    .line 594
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedSentFolder(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    const-string v0, "trashFolderName"

    .line 606
    .line 607
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedTrashFolder(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    const-string v0, "archiveFolderName"

    .line 619
    .line 620
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedArchiveFolder(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    const-string v0, "spamFolderName"

    .line 632
    .line 633
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedSpamFolder(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    const-string v0, "inboxFolderId"

    .line 645
    .line 646
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    const/4 v7, 0x0

    .line 655
    if-eqz v0, :cond_3

    .line 656
    .line 657
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    goto :goto_5

    .line 662
    :cond_3
    move-object v0, v7

    .line 663
    :goto_5
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setInboxFolderId(Ljava/lang/Long;)V

    .line 664
    .line 665
    .line 666
    const-string v0, "draftsFolderId"

    .line 667
    .line 668
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    if-eqz v0, :cond_4

    .line 677
    .line 678
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    move-object v8, v0

    .line 683
    goto :goto_6

    .line 684
    :cond_4
    move-object v8, v7

    .line 685
    :goto_6
    const-string v0, "draftsFolderSelection"

    .line 686
    .line 687
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v9

    .line 691
    sget-object v11, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->AUTOMATIC:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 692
    .line 693
    :try_start_6
    invoke-virtual {v3, v9}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v12
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 697
    if-eqz v12, :cond_5

    .line 698
    .line 699
    :try_start_7
    invoke-static {v12}, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 700
    .line 701
    .line 702
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 703
    if-eqz v0, :cond_5

    .line 704
    .line 705
    move-object v11, v0

    .line 706
    goto :goto_7

    .line 707
    :catch_4
    move-exception v0

    .line 708
    :try_start_8
    new-instance v13, Ljava/lang/StringBuilder;

    .line 709
    .line 710
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .line 712
    .line 713
    new-instance v14, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    const-string v6, "] value ["

    .line 722
    .line 723
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    const-string v6, "] "

    .line 730
    .line 731
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v6

    .line 738
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    const-class v6, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 742
    .line 743
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 744
    .line 745
    .line 746
    move-result-object v6

    .line 747
    invoke-virtual {v6}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v6

    .line 751
    new-instance v12, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    const-string v5, "."

    .line 760
    .line 761
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v5

    .line 768
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    const/16 v5, 0xa

    .line 772
    .line 773
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-static {}, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->values()[Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 777
    .line 778
    .line 779
    move-result-object v52

    .line 780
    const/16 v56, 0x0

    .line 781
    .line 782
    const/16 v57, 0x3f

    .line 783
    .line 784
    const/16 v53, 0x0

    .line 785
    .line 786
    const/16 v54, 0x0

    .line 787
    .line 788
    const/16 v55, 0x0

    .line 789
    .line 790
    invoke-static/range {v52 .. v57}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v4

    .line 805
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 806
    .line 807
    invoke-direct {v5, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 808
    .line 809
    .line 810
    throw v5
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 811
    :catch_5
    move-exception v0

    .line 812
    :try_start_9
    iget-object v4, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 813
    .line 814
    new-instance v5, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 815
    .line 816
    const/16 v6, 0x1c

    .line 817
    .line 818
    invoke-direct {v5, v6, v9, v11}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 819
    .line 820
    .line 821
    const/4 v9, 0x1

    .line 822
    invoke-static {v4, v0, v5, v9}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 823
    .line 824
    .line 825
    :cond_5
    :goto_7
    invoke-virtual {v2, v8, v11}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDraftsFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 826
    .line 827
    .line 828
    const-string v0, "sentFolderId"

    .line 829
    .line 830
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    if-eqz v0, :cond_6

    .line 839
    .line 840
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    move-object v4, v0

    .line 845
    goto :goto_8

    .line 846
    :cond_6
    move-object v4, v7

    .line 847
    :goto_8
    const-string v0, "sentFolderSelection"

    .line 848
    .line 849
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v5

    .line 853
    sget-object v6, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->AUTOMATIC:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 854
    .line 855
    :try_start_a
    invoke-virtual {v3, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v8
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 859
    if-eqz v8, :cond_7

    .line 860
    .line 861
    :try_start_b
    invoke-static {v8}, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 862
    .line 863
    .line 864
    move-result-object v0
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 865
    if-eqz v0, :cond_7

    .line 866
    .line 867
    move-object v6, v0

    .line 868
    goto/16 :goto_9

    .line 869
    .line 870
    :catch_6
    move-exception v0

    .line 871
    :try_start_c
    new-instance v9, Ljava/lang/StringBuilder;

    .line 872
    .line 873
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 874
    .line 875
    .line 876
    new-instance v11, Ljava/lang/StringBuilder;

    .line 877
    .line 878
    move-object/from16 v12, v51

    .line 879
    .line 880
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    const-string v12, "] value ["

    .line 887
    .line 888
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    const-string v8, "] "

    .line 895
    .line 896
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v8

    .line 903
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    const-class v8, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 907
    .line 908
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 909
    .line 910
    .line 911
    move-result-object v8

    .line 912
    invoke-virtual {v8}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v8

    .line 916
    new-instance v11, Ljava/lang/StringBuilder;

    .line 917
    .line 918
    move-object/from16 v12, v50

    .line 919
    .line 920
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    const-string v8, "."

    .line 927
    .line 928
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v8

    .line 935
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    const/16 v8, 0xa

    .line 939
    .line 940
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-static {}, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->values()[Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 944
    .line 945
    .line 946
    move-result-object v50

    .line 947
    const/16 v54, 0x0

    .line 948
    .line 949
    const/16 v55, 0x3f

    .line 950
    .line 951
    const/16 v51, 0x0

    .line 952
    .line 953
    const/16 v52, 0x0

    .line 954
    .line 955
    const/16 v53, 0x0

    .line 956
    .line 957
    invoke-static/range {v50 .. v55}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v8

    .line 961
    move-object/from16 v11, v49

    .line 962
    .line 963
    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v8

    .line 967
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v8

    .line 974
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 975
    .line 976
    invoke-direct {v9, v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 977
    .line 978
    .line 979
    throw v9
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 980
    :catch_7
    move-exception v0

    .line 981
    :try_start_d
    iget-object v8, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 982
    .line 983
    new-instance v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 984
    .line 985
    const/16 v11, 0x1c

    .line 986
    .line 987
    invoke-direct {v9, v11, v5, v6}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 988
    .line 989
    .line 990
    const/4 v5, 0x1

    .line 991
    invoke-static {v8, v0, v9, v5}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 992
    .line 993
    .line 994
    :cond_7
    :goto_9
    invoke-virtual {v2, v4, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSentFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 995
    .line 996
    .line 997
    const-string v0, "trashFolderId"

    .line 998
    .line 999
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    if-eqz v0, :cond_8

    .line 1008
    .line 1009
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    move-object v4, v0

    .line 1014
    goto :goto_a

    .line 1015
    :cond_8
    move-object v4, v7

    .line 1016
    :goto_a
    const-string v0, "trashFolderSelection"

    .line 1017
    .line 1018
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v5

    .line 1022
    sget-object v6, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->AUTOMATIC:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1023
    .line 1024
    :try_start_e
    invoke-virtual {v3, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v8
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1028
    if-eqz v8, :cond_9

    .line 1029
    .line 1030
    :try_start_f
    invoke-static {v8}, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1034
    if-eqz v0, :cond_9

    .line 1035
    .line 1036
    move-object v6, v0

    .line 1037
    goto/16 :goto_b

    .line 1038
    .line 1039
    :catch_8
    move-exception v0

    .line 1040
    :try_start_10
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    .line 1044
    .line 1045
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    move-object/from16 v12, v48

    .line 1048
    .line 1049
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    const-string v12, "] value ["

    .line 1056
    .line 1057
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    const-string v8, "] "

    .line 1064
    .line 1065
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v8

    .line 1072
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    const-class v8, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1076
    .line 1077
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v8

    .line 1081
    invoke-virtual {v8}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v8

    .line 1085
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    move-object/from16 v12, v47

    .line 1088
    .line 1089
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    const-string v8, "."

    .line 1096
    .line 1097
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v8

    .line 1104
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    const/16 v8, 0xa

    .line 1108
    .line 1109
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    invoke-static {}, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->values()[Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v50

    .line 1116
    const/16 v54, 0x0

    .line 1117
    .line 1118
    const/16 v55, 0x3f

    .line 1119
    .line 1120
    const/16 v51, 0x0

    .line 1121
    .line 1122
    const/16 v52, 0x0

    .line 1123
    .line 1124
    const/16 v53, 0x0

    .line 1125
    .line 1126
    invoke-static/range {v50 .. v55}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v8

    .line 1130
    move-object/from16 v11, v46

    .line 1131
    .line 1132
    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v8

    .line 1136
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v8

    .line 1143
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 1144
    .line 1145
    invoke-direct {v9, v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1146
    .line 1147
    .line 1148
    throw v9
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1149
    :catch_9
    move-exception v0

    .line 1150
    :try_start_11
    iget-object v8, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 1151
    .line 1152
    new-instance v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 1153
    .line 1154
    const/16 v11, 0x1c

    .line 1155
    .line 1156
    invoke-direct {v9, v11, v5, v6}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1157
    .line 1158
    .line 1159
    const/4 v5, 0x1

    .line 1160
    invoke-static {v8, v0, v9, v5}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 1161
    .line 1162
    .line 1163
    :cond_9
    :goto_b
    invoke-virtual {v2, v4, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setTrashFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 1164
    .line 1165
    .line 1166
    const-string v0, "archiveFolderId"

    .line 1167
    .line 1168
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    if-eqz v0, :cond_a

    .line 1177
    .line 1178
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    move-object v4, v0

    .line 1183
    goto :goto_c

    .line 1184
    :cond_a
    move-object v4, v7

    .line 1185
    :goto_c
    const-string v0, "archiveFolderSelection"

    .line 1186
    .line 1187
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v5

    .line 1191
    sget-object v6, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->AUTOMATIC:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1192
    .line 1193
    :try_start_12
    invoke-virtual {v3, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v8
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1197
    if-eqz v8, :cond_b

    .line 1198
    .line 1199
    :try_start_13
    invoke-static {v8}, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1203
    if-eqz v0, :cond_b

    .line 1204
    .line 1205
    move-object v6, v0

    .line 1206
    goto/16 :goto_d

    .line 1207
    .line 1208
    :catch_a
    move-exception v0

    .line 1209
    :try_start_14
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    .line 1213
    .line 1214
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1215
    .line 1216
    move-object/from16 v12, v45

    .line 1217
    .line 1218
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    const-string v12, "] value ["

    .line 1225
    .line 1226
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    .line 1232
    const-string v8, "] "

    .line 1233
    .line 1234
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v8

    .line 1241
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    .line 1243
    .line 1244
    const-class v8, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1245
    .line 1246
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v8

    .line 1250
    invoke-virtual {v8}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v8

    .line 1254
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    move-object/from16 v12, v44

    .line 1257
    .line 1258
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    .line 1263
    .line 1264
    const-string v8, "."

    .line 1265
    .line 1266
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v8

    .line 1273
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    const/16 v8, 0xa

    .line 1277
    .line 1278
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    invoke-static {}, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->values()[Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v50

    .line 1285
    const/16 v54, 0x0

    .line 1286
    .line 1287
    const/16 v55, 0x3f

    .line 1288
    .line 1289
    const/16 v51, 0x0

    .line 1290
    .line 1291
    const/16 v52, 0x0

    .line 1292
    .line 1293
    const/16 v53, 0x0

    .line 1294
    .line 1295
    invoke-static/range {v50 .. v55}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v8

    .line 1299
    move-object/from16 v11, v43

    .line 1300
    .line 1301
    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v8

    .line 1305
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v8

    .line 1312
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 1313
    .line 1314
    invoke-direct {v9, v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1315
    .line 1316
    .line 1317
    throw v9
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1318
    :catch_b
    move-exception v0

    .line 1319
    :try_start_15
    iget-object v8, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 1320
    .line 1321
    new-instance v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 1322
    .line 1323
    const/16 v11, 0x1c

    .line 1324
    .line 1325
    invoke-direct {v9, v11, v5, v6}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1326
    .line 1327
    .line 1328
    const/4 v5, 0x1

    .line 1329
    invoke-static {v8, v0, v9, v5}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 1330
    .line 1331
    .line 1332
    :cond_b
    :goto_d
    invoke-virtual {v2, v4, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setArchiveFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 1333
    .line 1334
    .line 1335
    const-string v0, "spamFolderId"

    .line 1336
    .line 1337
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    if-eqz v0, :cond_c

    .line 1346
    .line 1347
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0

    .line 1351
    move-object v4, v0

    .line 1352
    goto :goto_e

    .line 1353
    :cond_c
    move-object v4, v7

    .line 1354
    :goto_e
    const-string v0, "spamFolderSelection"

    .line 1355
    .line 1356
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v5

    .line 1360
    sget-object v6, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->AUTOMATIC:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1361
    .line 1362
    :try_start_16
    invoke-virtual {v3, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v8
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1366
    if-eqz v8, :cond_d

    .line 1367
    .line 1368
    :try_start_17
    invoke-static {v8}, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1372
    if-eqz v0, :cond_d

    .line 1373
    .line 1374
    move-object v6, v0

    .line 1375
    goto/16 :goto_f

    .line 1376
    .line 1377
    :catch_c
    move-exception v0

    .line 1378
    :try_start_18
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .line 1382
    .line 1383
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1384
    .line 1385
    move-object/from16 v12, v42

    .line 1386
    .line 1387
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    .line 1392
    .line 1393
    const-string v12, "] value ["

    .line 1394
    .line 1395
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    const-string v8, "] "

    .line 1402
    .line 1403
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v8

    .line 1410
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    .line 1412
    .line 1413
    const-class v8, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1414
    .line 1415
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v8

    .line 1419
    invoke-virtual {v8}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v8

    .line 1423
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1424
    .line 1425
    move-object/from16 v12, v41

    .line 1426
    .line 1427
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    .line 1432
    .line 1433
    const-string v8, "."

    .line 1434
    .line 1435
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v8

    .line 1442
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    .line 1445
    const/16 v8, 0xa

    .line 1446
    .line 1447
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    .line 1450
    invoke-static {}, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->values()[Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v41

    .line 1454
    const/16 v45, 0x0

    .line 1455
    .line 1456
    const/16 v46, 0x3f

    .line 1457
    .line 1458
    const/16 v42, 0x0

    .line 1459
    .line 1460
    const/16 v43, 0x0

    .line 1461
    .line 1462
    const/16 v44, 0x0

    .line 1463
    .line 1464
    invoke-static/range {v41 .. v46}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v8

    .line 1468
    move-object/from16 v11, v40

    .line 1469
    .line 1470
    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v8

    .line 1474
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v8

    .line 1481
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 1482
    .line 1483
    invoke-direct {v9, v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1484
    .line 1485
    .line 1486
    throw v9
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1487
    :catch_d
    move-exception v0

    .line 1488
    :try_start_19
    iget-object v8, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 1489
    .line 1490
    new-instance v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 1491
    .line 1492
    const/16 v11, 0x1c

    .line 1493
    .line 1494
    invoke-direct {v9, v11, v5, v6}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1495
    .line 1496
    .line 1497
    const/4 v5, 0x1

    .line 1498
    invoke-static {v8, v0, v9, v5}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 1499
    .line 1500
    .line 1501
    :cond_d
    :goto_f
    invoke-virtual {v2, v4, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSpamFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 1502
    .line 1503
    .line 1504
    const-string v0, "autoExpandFolderId"

    .line 1505
    .line 1506
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v0

    .line 1510
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v0

    .line 1514
    if-eqz v0, :cond_e

    .line 1515
    .line 1516
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v7

    .line 1520
    :cond_e
    invoke-virtual {v2, v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutoExpandFolderId(Ljava/lang/Long;)V

    .line 1521
    .line 1522
    .line 1523
    const-string v0, "expungePolicy"

    .line 1524
    .line 1525
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v4

    .line 1529
    sget-object v5, Lnet/thunderbird/core/android/account/Expunge;->EXPUNGE_IMMEDIATELY:Lnet/thunderbird/core/android/account/Expunge;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 1530
    .line 1531
    :try_start_1a
    invoke-virtual {v3, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v6
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1535
    if-eqz v6, :cond_f

    .line 1536
    .line 1537
    :try_start_1b
    invoke-static {v6}, Lnet/thunderbird/core/android/account/Expunge;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/Expunge;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1541
    if-eqz v0, :cond_f

    .line 1542
    .line 1543
    move-object v5, v0

    .line 1544
    goto :goto_10

    .line 1545
    :catch_e
    move-exception v0

    .line 1546
    :try_start_1c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1549
    .line 1550
    .line 1551
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1552
    .line 1553
    move-object/from16 v9, v39

    .line 1554
    .line 1555
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1556
    .line 1557
    .line 1558
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    .line 1560
    .line 1561
    const-string v9, "] value ["

    .line 1562
    .line 1563
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    .line 1568
    .line 1569
    const-string v6, "] "

    .line 1570
    .line 1571
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v6

    .line 1578
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    .line 1580
    .line 1581
    const-class v6, Lnet/thunderbird/core/android/account/Expunge;

    .line 1582
    .line 1583
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v6

    .line 1587
    invoke-virtual {v6}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v6

    .line 1591
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1592
    .line 1593
    move-object/from16 v9, v38

    .line 1594
    .line 1595
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    .line 1601
    const-string v6, "."

    .line 1602
    .line 1603
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v6

    .line 1610
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    .line 1612
    .line 1613
    const/16 v8, 0xa

    .line 1614
    .line 1615
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1616
    .line 1617
    .line 1618
    invoke-static {}, Lnet/thunderbird/core/android/account/Expunge;->values()[Lnet/thunderbird/core/android/account/Expunge;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v38

    .line 1622
    const/16 v42, 0x0

    .line 1623
    .line 1624
    const/16 v43, 0x3f

    .line 1625
    .line 1626
    const/16 v39, 0x0

    .line 1627
    .line 1628
    const/16 v40, 0x0

    .line 1629
    .line 1630
    const/16 v41, 0x0

    .line 1631
    .line 1632
    invoke-static/range {v38 .. v43}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v6

    .line 1636
    move-object/from16 v8, v37

    .line 1637
    .line 1638
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v6

    .line 1642
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    .line 1644
    .line 1645
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v6

    .line 1649
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 1650
    .line 1651
    invoke-direct {v7, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1652
    .line 1653
    .line 1654
    throw v7
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1655
    :catch_f
    move-exception v0

    .line 1656
    goto :goto_11

    .line 1657
    :cond_f
    :goto_10
    const/4 v9, 0x1

    .line 1658
    goto :goto_12

    .line 1659
    :goto_11
    :try_start_1d
    iget-object v6, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 1660
    .line 1661
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 1662
    .line 1663
    const/16 v11, 0x1c

    .line 1664
    .line 1665
    invoke-direct {v7, v11, v4, v5}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1666
    .line 1667
    .line 1668
    const/4 v9, 0x1

    .line 1669
    invoke-static {v6, v0, v7, v9}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 1670
    .line 1671
    .line 1672
    :goto_12
    invoke-virtual {v2, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setExpungePolicy(Lnet/thunderbird/core/android/account/Expunge;)V

    .line 1673
    .line 1674
    .line 1675
    const-string v0, "syncRemoteDeletions"

    .line 1676
    .line 1677
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v0

    .line 1681
    invoke-virtual {v3, v0, v9}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 1682
    .line 1683
    .line 1684
    move-result v0

    .line 1685
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSyncRemoteDeletions(Z)V

    .line 1686
    .line 1687
    .line 1688
    const-string v0, "maxPushFolders"

    .line 1689
    .line 1690
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v0

    .line 1694
    const/16 v8, 0xa

    .line 1695
    .line 1696
    invoke-virtual {v3, v0, v8}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 1697
    .line 1698
    .line 1699
    move-result v0

    .line 1700
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaxPushFolders(I)V

    .line 1701
    .line 1702
    .line 1703
    const-string v0, "subscribedFoldersOnly"

    .line 1704
    .line 1705
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v0

    .line 1709
    const/4 v7, 0x0

    .line 1710
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 1711
    .line 1712
    .line 1713
    move-result v0

    .line 1714
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSubscribedFoldersOnly(Z)V

    .line 1715
    .line 1716
    .line 1717
    const-string v0, "maximumPolledMessageAge"

    .line 1718
    .line 1719
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v0

    .line 1723
    const/4 v4, -0x1

    .line 1724
    invoke-virtual {v3, v0, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 1725
    .line 1726
    .line 1727
    move-result v0

    .line 1728
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaximumPolledMessageAge(I)V

    .line 1729
    .line 1730
    .line 1731
    const-string v0, "maximumAutoDownloadMessageSize"

    .line 1732
    .line 1733
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v0

    .line 1737
    const/high16 v5, 0x20000

    .line 1738
    .line 1739
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 1740
    .line 1741
    .line 1742
    move-result v0

    .line 1743
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaximumAutoDownloadMessageSize(I)V

    .line 1744
    .line 1745
    .line 1746
    const-string v0, "messageFormat"

    .line 1747
    .line 1748
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v5

    .line 1752
    sget-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider;->Companion:Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;

    .line 1753
    .line 1754
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1755
    .line 1756
    .line 1757
    invoke-static {}, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->getDEFAULT_MESSAGE_FORMAT()Lnet/thunderbird/core/android/account/MessageFormat;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 1761
    :try_start_1e
    invoke-virtual {v3, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v7
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_11
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 1765
    if-eqz v7, :cond_10

    .line 1766
    .line 1767
    :try_start_1f
    invoke-static {v7}, Lnet/thunderbird/core/android/account/MessageFormat;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/MessageFormat;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_10
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 1771
    if-eqz v0, :cond_10

    .line 1772
    .line 1773
    move-object v6, v0

    .line 1774
    goto/16 :goto_13

    .line 1775
    .line 1776
    :catch_10
    move-exception v0

    .line 1777
    :try_start_20
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1778
    .line 1779
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1780
    .line 1781
    .line 1782
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1783
    .line 1784
    move-object/from16 v11, v36

    .line 1785
    .line 1786
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1787
    .line 1788
    .line 1789
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    .line 1791
    .line 1792
    const-string v11, "] value ["

    .line 1793
    .line 1794
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    .line 1796
    .line 1797
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    .line 1799
    .line 1800
    const-string v7, "] "

    .line 1801
    .line 1802
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    .line 1804
    .line 1805
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v7

    .line 1809
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    .line 1811
    .line 1812
    const-class v7, Lnet/thunderbird/core/android/account/MessageFormat;

    .line 1813
    .line 1814
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v7

    .line 1818
    invoke-virtual {v7}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v7

    .line 1822
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1823
    .line 1824
    move-object/from16 v11, v35

    .line 1825
    .line 1826
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    .line 1831
    .line 1832
    const-string v7, "."

    .line 1833
    .line 1834
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    .line 1836
    .line 1837
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1838
    .line 1839
    .line 1840
    move-result-object v7

    .line 1841
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    .line 1843
    .line 1844
    const/16 v7, 0xa

    .line 1845
    .line 1846
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1847
    .line 1848
    .line 1849
    invoke-static {}, Lnet/thunderbird/core/android/account/MessageFormat;->values()[Lnet/thunderbird/core/android/account/MessageFormat;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v35

    .line 1853
    const/16 v39, 0x0

    .line 1854
    .line 1855
    const/16 v40, 0x3f

    .line 1856
    .line 1857
    const/16 v36, 0x0

    .line 1858
    .line 1859
    const/16 v37, 0x0

    .line 1860
    .line 1861
    const/16 v38, 0x0

    .line 1862
    .line 1863
    invoke-static/range {v35 .. v40}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v7

    .line 1867
    move-object/from16 v9, v34

    .line 1868
    .line 1869
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v7

    .line 1873
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v7

    .line 1880
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 1881
    .line 1882
    invoke-direct {v8, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1883
    .line 1884
    .line 1885
    throw v8
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_11
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 1886
    :catch_11
    move-exception v0

    .line 1887
    :try_start_21
    iget-object v7, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 1888
    .line 1889
    new-instance v8, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 1890
    .line 1891
    const/16 v11, 0x1c

    .line 1892
    .line 1893
    invoke-direct {v8, v11, v5, v6}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1894
    .line 1895
    .line 1896
    const/4 v5, 0x1

    .line 1897
    invoke-static {v7, v0, v8, v5}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 1898
    .line 1899
    .line 1900
    :cond_10
    :goto_13
    invoke-virtual {v2, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageFormat(Lnet/thunderbird/core/android/account/MessageFormat;)V

    .line 1901
    .line 1902
    .line 1903
    const-string v0, "messageFormatAuto"

    .line 1904
    .line 1905
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v0

    .line 1909
    const/4 v7, 0x0

    .line 1910
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 1911
    .line 1912
    .line 1913
    move-result v0

    .line 1914
    if-eqz v0, :cond_11

    .line 1915
    .line 1916
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessageFormat()Lnet/thunderbird/core/android/account/MessageFormat;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v0

    .line 1920
    sget-object v5, Lnet/thunderbird/core/android/account/MessageFormat;->TEXT:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 1921
    .line 1922
    if-ne v0, v5, :cond_11

    .line 1923
    .line 1924
    sget-object v0, Lnet/thunderbird/core/android/account/MessageFormat;->AUTO:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 1925
    .line 1926
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageFormat(Lnet/thunderbird/core/android/account/MessageFormat;)V

    .line 1927
    .line 1928
    .line 1929
    :cond_11
    const-string v0, "messageReadReceipt"

    .line 1930
    .line 1931
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v0

    .line 1935
    const/4 v7, 0x0

    .line 1936
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 1937
    .line 1938
    .line 1939
    move-result v0

    .line 1940
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageReadReceipt(Z)V

    .line 1941
    .line 1942
    .line 1943
    const-string v0, "quoteStyle"

    .line 1944
    .line 1945
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v5

    .line 1949
    sget-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider;->Companion:Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;

    .line 1950
    .line 1951
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1952
    .line 1953
    .line 1954
    invoke-static {}, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->getDEFAULT_QUOTE_STYLE()Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 1958
    :try_start_22
    invoke-virtual {v3, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v7
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_13
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 1962
    if-eqz v7, :cond_12

    .line 1963
    .line 1964
    :try_start_23
    invoke-static {v7}, Lnet/thunderbird/core/android/account/QuoteStyle;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v0
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_12
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 1968
    if-eqz v0, :cond_12

    .line 1969
    .line 1970
    move-object v6, v0

    .line 1971
    goto/16 :goto_14

    .line 1972
    .line 1973
    :catch_12
    move-exception v0

    .line 1974
    :try_start_24
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1975
    .line 1976
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1977
    .line 1978
    .line 1979
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1980
    .line 1981
    move-object/from16 v11, v33

    .line 1982
    .line 1983
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1984
    .line 1985
    .line 1986
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    .line 1988
    .line 1989
    const-string v11, "] value ["

    .line 1990
    .line 1991
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    .line 1993
    .line 1994
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    .line 1996
    .line 1997
    const-string v7, "] "

    .line 1998
    .line 1999
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    .line 2001
    .line 2002
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v7

    .line 2006
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    .line 2008
    .line 2009
    const-class v7, Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 2010
    .line 2011
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2012
    .line 2013
    .line 2014
    move-result-object v7

    .line 2015
    invoke-virtual {v7}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v7

    .line 2019
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2020
    .line 2021
    move-object/from16 v11, v32

    .line 2022
    .line 2023
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2024
    .line 2025
    .line 2026
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    .line 2028
    .line 2029
    const-string v7, "."

    .line 2030
    .line 2031
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    .line 2033
    .line 2034
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v7

    .line 2038
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    .line 2040
    .line 2041
    const/16 v7, 0xa

    .line 2042
    .line 2043
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2044
    .line 2045
    .line 2046
    invoke-static {}, Lnet/thunderbird/core/android/account/QuoteStyle;->values()[Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v32

    .line 2050
    const/16 v36, 0x0

    .line 2051
    .line 2052
    const/16 v37, 0x3f

    .line 2053
    .line 2054
    const/16 v33, 0x0

    .line 2055
    .line 2056
    const/16 v34, 0x0

    .line 2057
    .line 2058
    const/16 v35, 0x0

    .line 2059
    .line 2060
    invoke-static/range {v32 .. v37}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v7

    .line 2064
    move-object/from16 v9, v31

    .line 2065
    .line 2066
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v7

    .line 2070
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v7

    .line 2077
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 2078
    .line 2079
    invoke-direct {v8, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2080
    .line 2081
    .line 2082
    throw v8
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_13
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 2083
    :catch_13
    move-exception v0

    .line 2084
    :try_start_25
    iget-object v7, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2085
    .line 2086
    new-instance v8, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 2087
    .line 2088
    const/16 v11, 0x1c

    .line 2089
    .line 2090
    invoke-direct {v8, v11, v5, v6}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2091
    .line 2092
    .line 2093
    const/4 v5, 0x1

    .line 2094
    invoke-static {v7, v0, v8, v5}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 2095
    .line 2096
    .line 2097
    :cond_12
    :goto_14
    invoke-virtual {v2, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setQuoteStyle(Lnet/thunderbird/core/android/account/QuoteStyle;)V

    .line 2098
    .line 2099
    .line 2100
    const-string v0, "quotePrefix"

    .line 2101
    .line 2102
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v0

    .line 2106
    const-string v5, ">"

    .line 2107
    .line 2108
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v0

    .line 2112
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setQuotePrefix(Ljava/lang/String;)V

    .line 2113
    .line 2114
    .line 2115
    const-string v0, "defaultQuotedTextShown"

    .line 2116
    .line 2117
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2118
    .line 2119
    .line 2120
    move-result-object v0

    .line 2121
    const/4 v5, 0x1

    .line 2122
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 2123
    .line 2124
    .line 2125
    move-result v0

    .line 2126
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDefaultQuotedTextShown(Z)V

    .line 2127
    .line 2128
    .line 2129
    const-string v0, "replyAfterQuote"

    .line 2130
    .line 2131
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v0

    .line 2135
    const/4 v7, 0x0

    .line 2136
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 2137
    .line 2138
    .line 2139
    move-result v0

    .line 2140
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setReplyAfterQuote(Z)V

    .line 2141
    .line 2142
    .line 2143
    const-string v0, "stripSignature"

    .line 2144
    .line 2145
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2146
    .line 2147
    .line 2148
    move-result-object v0

    .line 2149
    const/4 v5, 0x1

    .line 2150
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 2151
    .line 2152
    .line 2153
    move-result v0

    .line 2154
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setStripSignature(Z)V

    .line 2155
    .line 2156
    .line 2157
    const-string/jumbo v0, "useCompression"

    .line 2158
    .line 2159
    .line 2160
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2161
    .line 2162
    .line 2163
    move-result-object v0

    .line 2164
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 2165
    .line 2166
    .line 2167
    move-result v0

    .line 2168
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setUseCompression(Z)V

    .line 2169
    .line 2170
    .line 2171
    const-string v0, "sendClientInfo"

    .line 2172
    .line 2173
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2174
    .line 2175
    .line 2176
    move-result-object v0

    .line 2177
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 2178
    .line 2179
    .line 2180
    move-result v0

    .line 2181
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSendClientInfoEnabled(Z)V

    .line 2182
    .line 2183
    .line 2184
    const-string v0, "autoExpandFolderName"

    .line 2185
    .line 2186
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v0

    .line 2190
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 2191
    .line 2192
    .line 2193
    move-result-object v0

    .line 2194
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedAutoExpandFolder(Ljava/lang/String;)V

    .line 2195
    .line 2196
    .line 2197
    const-string v0, "accountNumber"

    .line 2198
    .line 2199
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v0

    .line 2203
    invoke-virtual {v3, v0, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 2204
    .line 2205
    .line 2206
    move-result v0

    .line 2207
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAccountNumber(I)V

    .line 2208
    .line 2209
    .line 2210
    const-string v0, "sortTypeEnum"

    .line 2211
    .line 2212
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v4

    .line 2216
    sget-object v5, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 2217
    .line 2218
    :try_start_26
    invoke-virtual {v3, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v6
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_26} :catch_15
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 2222
    if-eqz v6, :cond_13

    .line 2223
    .line 2224
    :try_start_27
    invoke-static {v6}, Lnet/thunderbird/core/android/account/SortType;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/SortType;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v0
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_27} :catch_14
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 2228
    if-eqz v0, :cond_13

    .line 2229
    .line 2230
    move-object v5, v0

    .line 2231
    goto/16 :goto_15

    .line 2232
    .line 2233
    :catch_14
    move-exception v0

    .line 2234
    :try_start_28
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2235
    .line 2236
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2237
    .line 2238
    .line 2239
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2240
    .line 2241
    move-object/from16 v9, v30

    .line 2242
    .line 2243
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2244
    .line 2245
    .line 2246
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    .line 2248
    .line 2249
    const-string v9, "] value ["

    .line 2250
    .line 2251
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    .line 2253
    .line 2254
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    .line 2256
    .line 2257
    const-string v6, "] "

    .line 2258
    .line 2259
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2260
    .line 2261
    .line 2262
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2263
    .line 2264
    .line 2265
    move-result-object v6

    .line 2266
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2267
    .line 2268
    .line 2269
    const-class v6, Lnet/thunderbird/core/android/account/SortType;

    .line 2270
    .line 2271
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v6

    .line 2275
    invoke-virtual {v6}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v6

    .line 2279
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2280
    .line 2281
    move-object/from16 v9, v29

    .line 2282
    .line 2283
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2284
    .line 2285
    .line 2286
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    .line 2288
    .line 2289
    const-string v6, "."

    .line 2290
    .line 2291
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    .line 2293
    .line 2294
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2295
    .line 2296
    .line 2297
    move-result-object v6

    .line 2298
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2299
    .line 2300
    .line 2301
    const/16 v8, 0xa

    .line 2302
    .line 2303
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2304
    .line 2305
    .line 2306
    invoke-static {}, Lnet/thunderbird/core/android/account/SortType;->values()[Lnet/thunderbird/core/android/account/SortType;

    .line 2307
    .line 2308
    .line 2309
    move-result-object v29

    .line 2310
    const/16 v33, 0x0

    .line 2311
    .line 2312
    const/16 v34, 0x3f

    .line 2313
    .line 2314
    const/16 v30, 0x0

    .line 2315
    .line 2316
    const/16 v31, 0x0

    .line 2317
    .line 2318
    const/16 v32, 0x0

    .line 2319
    .line 2320
    invoke-static/range {v29 .. v34}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v6

    .line 2324
    move-object/from16 v8, v28

    .line 2325
    .line 2326
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2327
    .line 2328
    .line 2329
    move-result-object v6

    .line 2330
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    .line 2332
    .line 2333
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v6

    .line 2337
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 2338
    .line 2339
    invoke-direct {v7, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2340
    .line 2341
    .line 2342
    throw v7
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_28} :catch_15
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 2343
    :catch_15
    move-exception v0

    .line 2344
    :try_start_29
    iget-object v6, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2345
    .line 2346
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 2347
    .line 2348
    const/16 v11, 0x1c

    .line 2349
    .line 2350
    invoke-direct {v7, v11, v4, v5}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2351
    .line 2352
    .line 2353
    const/4 v9, 0x1

    .line 2354
    invoke-static {v6, v0, v7, v9}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 2355
    .line 2356
    .line 2357
    :cond_13
    :goto_15
    invoke-virtual {v2, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSortType(Lnet/thunderbird/core/android/account/SortType;)V

    .line 2358
    .line 2359
    .line 2360
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSortType()Lnet/thunderbird/core/android/account/SortType;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v0

    .line 2364
    const-string v4, "sortAscending"

    .line 2365
    .line 2366
    invoke-virtual {v10, v4}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2367
    .line 2368
    .line 2369
    move-result-object v4

    .line 2370
    const/4 v7, 0x0

    .line 2371
    invoke-virtual {v3, v4, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 2372
    .line 2373
    .line 2374
    move-result v4

    .line 2375
    invoke-virtual {v2, v0, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSortAscending(Lnet/thunderbird/core/android/account/SortType;Z)V

    .line 2376
    .line 2377
    .line 2378
    const-string v0, "showPicturesEnum"

    .line 2379
    .line 2380
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2381
    .line 2382
    .line 2383
    move-result-object v4

    .line 2384
    sget-object v5, Lnet/thunderbird/core/android/account/ShowPictures;->NEVER:Lnet/thunderbird/core/android/account/ShowPictures;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 2385
    .line 2386
    :try_start_2a
    invoke-virtual {v3, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 2387
    .line 2388
    .line 2389
    move-result-object v6
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2a} :catch_17
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 2390
    if-eqz v6, :cond_14

    .line 2391
    .line 2392
    :try_start_2b
    invoke-static {v6}, Lnet/thunderbird/core/android/account/ShowPictures;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/ShowPictures;

    .line 2393
    .line 2394
    .line 2395
    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2b} :catch_16
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 2396
    if-eqz v0, :cond_14

    .line 2397
    .line 2398
    move-object v5, v0

    .line 2399
    goto/16 :goto_16

    .line 2400
    .line 2401
    :catch_16
    move-exception v0

    .line 2402
    :try_start_2c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2403
    .line 2404
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2405
    .line 2406
    .line 2407
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2408
    .line 2409
    move-object/from16 v9, v27

    .line 2410
    .line 2411
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2412
    .line 2413
    .line 2414
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    .line 2416
    .line 2417
    const-string v9, "] value ["

    .line 2418
    .line 2419
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    .line 2421
    .line 2422
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    .line 2424
    .line 2425
    const-string v6, "] "

    .line 2426
    .line 2427
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    .line 2429
    .line 2430
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2431
    .line 2432
    .line 2433
    move-result-object v6

    .line 2434
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    .line 2436
    .line 2437
    const-class v6, Lnet/thunderbird/core/android/account/ShowPictures;

    .line 2438
    .line 2439
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2440
    .line 2441
    .line 2442
    move-result-object v6

    .line 2443
    invoke-virtual {v6}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v6

    .line 2447
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2448
    .line 2449
    move-object/from16 v9, v26

    .line 2450
    .line 2451
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2452
    .line 2453
    .line 2454
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    .line 2456
    .line 2457
    const-string v6, "."

    .line 2458
    .line 2459
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2460
    .line 2461
    .line 2462
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2463
    .line 2464
    .line 2465
    move-result-object v6

    .line 2466
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2467
    .line 2468
    .line 2469
    const/16 v8, 0xa

    .line 2470
    .line 2471
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2472
    .line 2473
    .line 2474
    invoke-static {}, Lnet/thunderbird/core/android/account/ShowPictures;->values()[Lnet/thunderbird/core/android/account/ShowPictures;

    .line 2475
    .line 2476
    .line 2477
    move-result-object v26

    .line 2478
    const/16 v30, 0x0

    .line 2479
    .line 2480
    const/16 v31, 0x3f

    .line 2481
    .line 2482
    const/16 v27, 0x0

    .line 2483
    .line 2484
    const/16 v28, 0x0

    .line 2485
    .line 2486
    const/16 v29, 0x0

    .line 2487
    .line 2488
    invoke-static/range {v26 .. v31}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 2489
    .line 2490
    .line 2491
    move-result-object v6

    .line 2492
    move-object/from16 v8, v25

    .line 2493
    .line 2494
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2495
    .line 2496
    .line 2497
    move-result-object v6

    .line 2498
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    .line 2500
    .line 2501
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v6

    .line 2505
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 2506
    .line 2507
    invoke-direct {v7, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2508
    .line 2509
    .line 2510
    throw v7
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_2c} :catch_17
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 2511
    :catch_17
    move-exception v0

    .line 2512
    :try_start_2d
    iget-object v6, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2513
    .line 2514
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 2515
    .line 2516
    const/16 v11, 0x1c

    .line 2517
    .line 2518
    invoke-direct {v7, v11, v4, v5}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2519
    .line 2520
    .line 2521
    const/4 v9, 0x1

    .line 2522
    invoke-static {v6, v0, v7, v9}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 2523
    .line 2524
    .line 2525
    :cond_14
    :goto_16
    invoke-virtual {v2, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setShowPictures(Lnet/thunderbird/core/android/account/ShowPictures;)V

    .line 2526
    .line 2527
    .line 2528
    new-instance v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 2529
    .line 2530
    const/4 v4, 0x3

    .line 2531
    invoke-direct {v0, v3, v10, v1, v4}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2532
    .line 2533
    .line 2534
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->updateNotificationSettings(Lkotlin/jvm/functions/Function1;)V

    .line 2535
    .line 2536
    .line 2537
    const-string v0, "folderDisplayMode"

    .line 2538
    .line 2539
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2540
    .line 2541
    .line 2542
    move-result-object v4

    .line 2543
    sget-object v5, Lnet/thunderbird/core/android/account/FolderMode;->NOT_SECOND_CLASS:Lnet/thunderbird/core/android/account/FolderMode;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 2544
    .line 2545
    :try_start_2e
    invoke-virtual {v3, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 2546
    .line 2547
    .line 2548
    move-result-object v6
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_2e} :catch_19
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 2549
    if-eqz v6, :cond_15

    .line 2550
    .line 2551
    :try_start_2f
    invoke-static {v6}, Lnet/thunderbird/core/android/account/FolderMode;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/FolderMode;

    .line 2552
    .line 2553
    .line 2554
    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_2f} :catch_18
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    .line 2555
    if-eqz v0, :cond_15

    .line 2556
    .line 2557
    move-object v5, v0

    .line 2558
    goto/16 :goto_17

    .line 2559
    .line 2560
    :catch_18
    move-exception v0

    .line 2561
    :try_start_30
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2562
    .line 2563
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2564
    .line 2565
    .line 2566
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2567
    .line 2568
    move-object/from16 v9, v24

    .line 2569
    .line 2570
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2571
    .line 2572
    .line 2573
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    .line 2575
    .line 2576
    const-string v9, "] value ["

    .line 2577
    .line 2578
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    .line 2580
    .line 2581
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    .line 2583
    .line 2584
    const-string v6, "] "

    .line 2585
    .line 2586
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    .line 2588
    .line 2589
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2590
    .line 2591
    .line 2592
    move-result-object v6

    .line 2593
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    .line 2595
    .line 2596
    const-class v6, Lnet/thunderbird/core/android/account/FolderMode;

    .line 2597
    .line 2598
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2599
    .line 2600
    .line 2601
    move-result-object v6

    .line 2602
    invoke-virtual {v6}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 2603
    .line 2604
    .line 2605
    move-result-object v6

    .line 2606
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2607
    .line 2608
    move-object/from16 v9, v23

    .line 2609
    .line 2610
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2611
    .line 2612
    .line 2613
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    .line 2615
    .line 2616
    const-string v6, "."

    .line 2617
    .line 2618
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2619
    .line 2620
    .line 2621
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2622
    .line 2623
    .line 2624
    move-result-object v6

    .line 2625
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    .line 2627
    .line 2628
    const/16 v8, 0xa

    .line 2629
    .line 2630
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2631
    .line 2632
    .line 2633
    invoke-static {}, Lnet/thunderbird/core/android/account/FolderMode;->values()[Lnet/thunderbird/core/android/account/FolderMode;

    .line 2634
    .line 2635
    .line 2636
    move-result-object v23

    .line 2637
    const/16 v27, 0x0

    .line 2638
    .line 2639
    const/16 v28, 0x3f

    .line 2640
    .line 2641
    const/16 v24, 0x0

    .line 2642
    .line 2643
    const/16 v25, 0x0

    .line 2644
    .line 2645
    const/16 v26, 0x0

    .line 2646
    .line 2647
    invoke-static/range {v23 .. v28}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v6

    .line 2651
    move-object/from16 v8, v22

    .line 2652
    .line 2653
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2654
    .line 2655
    .line 2656
    move-result-object v6

    .line 2657
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2658
    .line 2659
    .line 2660
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2661
    .line 2662
    .line 2663
    move-result-object v6

    .line 2664
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 2665
    .line 2666
    invoke-direct {v7, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2667
    .line 2668
    .line 2669
    throw v7
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_30} :catch_19
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 2670
    :catch_19
    move-exception v0

    .line 2671
    :try_start_31
    iget-object v6, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2672
    .line 2673
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 2674
    .line 2675
    const/16 v11, 0x1c

    .line 2676
    .line 2677
    invoke-direct {v7, v11, v4, v5}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2678
    .line 2679
    .line 2680
    const/4 v9, 0x1

    .line 2681
    invoke-static {v6, v0, v7, v9}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 2682
    .line 2683
    .line 2684
    :cond_15
    :goto_17
    invoke-virtual {v2, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderDisplayMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 2685
    .line 2686
    .line 2687
    const-string v0, "folderSyncMode"

    .line 2688
    .line 2689
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2690
    .line 2691
    .line 2692
    move-result-object v4

    .line 2693
    sget-object v5, Lnet/thunderbird/core/android/account/FolderMode;->FIRST_CLASS:Lnet/thunderbird/core/android/account/FolderMode;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    .line 2694
    .line 2695
    :try_start_32
    invoke-virtual {v3, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 2696
    .line 2697
    .line 2698
    move-result-object v6
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_32} :catch_1b
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    .line 2699
    if-eqz v6, :cond_16

    .line 2700
    .line 2701
    :try_start_33
    invoke-static {v6}, Lnet/thunderbird/core/android/account/FolderMode;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/FolderMode;

    .line 2702
    .line 2703
    .line 2704
    move-result-object v0
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_33} :catch_1a
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 2705
    if-eqz v0, :cond_16

    .line 2706
    .line 2707
    move-object v5, v0

    .line 2708
    goto/16 :goto_18

    .line 2709
    .line 2710
    :catch_1a
    move-exception v0

    .line 2711
    :try_start_34
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2712
    .line 2713
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2714
    .line 2715
    .line 2716
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2717
    .line 2718
    move-object/from16 v9, v21

    .line 2719
    .line 2720
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2721
    .line 2722
    .line 2723
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2724
    .line 2725
    .line 2726
    const-string v9, "] value ["

    .line 2727
    .line 2728
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    .line 2730
    .line 2731
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    .line 2733
    .line 2734
    const-string v6, "] "

    .line 2735
    .line 2736
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2737
    .line 2738
    .line 2739
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2740
    .line 2741
    .line 2742
    move-result-object v6

    .line 2743
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2744
    .line 2745
    .line 2746
    const-class v6, Lnet/thunderbird/core/android/account/FolderMode;

    .line 2747
    .line 2748
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2749
    .line 2750
    .line 2751
    move-result-object v6

    .line 2752
    invoke-virtual {v6}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v6

    .line 2756
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2757
    .line 2758
    move-object/from16 v9, v20

    .line 2759
    .line 2760
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2761
    .line 2762
    .line 2763
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2764
    .line 2765
    .line 2766
    const-string v6, "."

    .line 2767
    .line 2768
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2769
    .line 2770
    .line 2771
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2772
    .line 2773
    .line 2774
    move-result-object v6

    .line 2775
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    .line 2777
    .line 2778
    const/16 v8, 0xa

    .line 2779
    .line 2780
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2781
    .line 2782
    .line 2783
    invoke-static {}, Lnet/thunderbird/core/android/account/FolderMode;->values()[Lnet/thunderbird/core/android/account/FolderMode;

    .line 2784
    .line 2785
    .line 2786
    move-result-object v20

    .line 2787
    const/16 v24, 0x0

    .line 2788
    .line 2789
    const/16 v25, 0x3f

    .line 2790
    .line 2791
    const/16 v21, 0x0

    .line 2792
    .line 2793
    const/16 v22, 0x0

    .line 2794
    .line 2795
    const/16 v23, 0x0

    .line 2796
    .line 2797
    invoke-static/range {v20 .. v25}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 2798
    .line 2799
    .line 2800
    move-result-object v6

    .line 2801
    move-object/from16 v8, v19

    .line 2802
    .line 2803
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2804
    .line 2805
    .line 2806
    move-result-object v6

    .line 2807
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2808
    .line 2809
    .line 2810
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2811
    .line 2812
    .line 2813
    move-result-object v6

    .line 2814
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 2815
    .line 2816
    invoke-direct {v7, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2817
    .line 2818
    .line 2819
    throw v7
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_34} :catch_1b
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 2820
    :catch_1b
    move-exception v0

    .line 2821
    :try_start_35
    iget-object v6, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2822
    .line 2823
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 2824
    .line 2825
    const/16 v11, 0x1c

    .line 2826
    .line 2827
    invoke-direct {v7, v11, v4, v5}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2828
    .line 2829
    .line 2830
    const/4 v9, 0x1

    .line 2831
    invoke-static {v6, v0, v7, v9}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 2832
    .line 2833
    .line 2834
    :cond_16
    :goto_18
    invoke-virtual {v2, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderSyncMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 2835
    .line 2836
    .line 2837
    const-string v0, "folderPushMode"

    .line 2838
    .line 2839
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2840
    .line 2841
    .line 2842
    move-result-object v4

    .line 2843
    sget-object v5, Lnet/thunderbird/core/android/account/FolderMode;->NONE:Lnet/thunderbird/core/android/account/FolderMode;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 2844
    .line 2845
    :try_start_36
    invoke-virtual {v3, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 2846
    .line 2847
    .line 2848
    move-result-object v6
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_36} :catch_1d
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    .line 2849
    if-eqz v6, :cond_17

    .line 2850
    .line 2851
    :try_start_37
    invoke-static {v6}, Lnet/thunderbird/core/android/account/FolderMode;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/FolderMode;

    .line 2852
    .line 2853
    .line 2854
    move-result-object v0
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_37} :catch_1c
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    .line 2855
    if-eqz v0, :cond_17

    .line 2856
    .line 2857
    move-object v5, v0

    .line 2858
    goto/16 :goto_19

    .line 2859
    .line 2860
    :catch_1c
    move-exception v0

    .line 2861
    :try_start_38
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2862
    .line 2863
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2864
    .line 2865
    .line 2866
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2867
    .line 2868
    move-object/from16 v9, v18

    .line 2869
    .line 2870
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2871
    .line 2872
    .line 2873
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    .line 2875
    .line 2876
    const-string v9, "] value ["

    .line 2877
    .line 2878
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2879
    .line 2880
    .line 2881
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    .line 2883
    .line 2884
    const-string v6, "] "

    .line 2885
    .line 2886
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    .line 2888
    .line 2889
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2890
    .line 2891
    .line 2892
    move-result-object v6

    .line 2893
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    .line 2895
    .line 2896
    const-class v6, Lnet/thunderbird/core/android/account/FolderMode;

    .line 2897
    .line 2898
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2899
    .line 2900
    .line 2901
    move-result-object v6

    .line 2902
    invoke-virtual {v6}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 2903
    .line 2904
    .line 2905
    move-result-object v6

    .line 2906
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2907
    .line 2908
    move-object/from16 v9, v17

    .line 2909
    .line 2910
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2911
    .line 2912
    .line 2913
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2914
    .line 2915
    .line 2916
    const-string v6, "."

    .line 2917
    .line 2918
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    .line 2920
    .line 2921
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2922
    .line 2923
    .line 2924
    move-result-object v6

    .line 2925
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    .line 2927
    .line 2928
    const/16 v8, 0xa

    .line 2929
    .line 2930
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2931
    .line 2932
    .line 2933
    invoke-static {}, Lnet/thunderbird/core/android/account/FolderMode;->values()[Lnet/thunderbird/core/android/account/FolderMode;

    .line 2934
    .line 2935
    .line 2936
    move-result-object v17

    .line 2937
    const/16 v21, 0x0

    .line 2938
    .line 2939
    const/16 v22, 0x3f

    .line 2940
    .line 2941
    const/16 v18, 0x0

    .line 2942
    .line 2943
    const/16 v19, 0x0

    .line 2944
    .line 2945
    const/16 v20, 0x0

    .line 2946
    .line 2947
    invoke-static/range {v17 .. v22}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 2948
    .line 2949
    .line 2950
    move-result-object v6

    .line 2951
    move-object/from16 v8, v16

    .line 2952
    .line 2953
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2954
    .line 2955
    .line 2956
    move-result-object v6

    .line 2957
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    .line 2959
    .line 2960
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2961
    .line 2962
    .line 2963
    move-result-object v6

    .line 2964
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 2965
    .line 2966
    invoke-direct {v7, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2967
    .line 2968
    .line 2969
    throw v7
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_38} :catch_1d
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    .line 2970
    :catch_1d
    move-exception v0

    .line 2971
    :try_start_39
    iget-object v6, v1, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2972
    .line 2973
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 2974
    .line 2975
    const/16 v11, 0x1c

    .line 2976
    .line 2977
    invoke-direct {v7, v11, v4, v5}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2978
    .line 2979
    .line 2980
    const/4 v9, 0x1

    .line 2981
    invoke-static {v6, v0, v7, v9}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 2982
    .line 2983
    .line 2984
    :cond_17
    :goto_19
    invoke-virtual {v2, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderPushMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 2985
    .line 2986
    .line 2987
    const-string v0, "signatureBeforeQuotedText"

    .line 2988
    .line 2989
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 2990
    .line 2991
    .line 2992
    move-result-object v0

    .line 2993
    const/4 v7, 0x0

    .line 2994
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 2995
    .line 2996
    .line 2997
    move-result v0

    .line 2998
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSignatureBeforeQuotedText(Z)V

    .line 2999
    .line 3000
    .line 3001
    iget-object v0, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 3002
    .line 3003
    invoke-virtual {v1, v0, v3}, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->loadIdentities(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/core/preference/storage/InMemoryStorage;)Ljava/util/ArrayList;

    .line 3004
    .line 3005
    .line 3006
    move-result-object v0

    .line 3007
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->replaceIdentities(Ljava/util/ArrayList;)V

    .line 3008
    .line 3009
    .line 3010
    const-string v0, "openPgpProvider"

    .line 3011
    .line 3012
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3013
    .line 3014
    .line 3015
    move-result-object v0

    .line 3016
    const-string v4, ""

    .line 3017
    .line 3018
    invoke-virtual {v3, v0, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3019
    .line 3020
    .line 3021
    move-result-object v0

    .line 3022
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 3023
    .line 3024
    .line 3025
    const-string v0, "cryptoKey"

    .line 3026
    .line 3027
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3028
    .line 3029
    .line 3030
    move-result-object v0

    .line 3031
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getLong(Ljava/lang/String;)J

    .line 3032
    .line 3033
    .line 3034
    move-result-wide v4

    .line 3035
    invoke-virtual {v2, v4, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpKey(J)V

    .line 3036
    .line 3037
    .line 3038
    const-string v0, "openPgpHideSignOnly"

    .line 3039
    .line 3040
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3041
    .line 3042
    .line 3043
    move-result-object v0

    .line 3044
    const/4 v5, 0x1

    .line 3045
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3046
    .line 3047
    .line 3048
    move-result v0

    .line 3049
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpHideSignOnly(Z)V

    .line 3050
    .line 3051
    .line 3052
    const-string v0, "openPgpEncryptSubject"

    .line 3053
    .line 3054
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3055
    .line 3056
    .line 3057
    move-result-object v0

    .line 3058
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3059
    .line 3060
    .line 3061
    move-result v0

    .line 3062
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpEncryptSubject(Z)V

    .line 3063
    .line 3064
    .line 3065
    const-string v0, "openPgpEncryptAllDrafts"

    .line 3066
    .line 3067
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3068
    .line 3069
    .line 3070
    move-result-object v0

    .line 3071
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3072
    .line 3073
    .line 3074
    move-result v0

    .line 3075
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpEncryptAllDrafts(Z)V

    .line 3076
    .line 3077
    .line 3078
    const-string v0, "autocryptMutualMode"

    .line 3079
    .line 3080
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3081
    .line 3082
    .line 3083
    move-result-object v0

    .line 3084
    const/4 v7, 0x0

    .line 3085
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3086
    .line 3087
    .line 3088
    move-result v0

    .line 3089
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutocryptPreferEncryptMutual(Z)V

    .line 3090
    .line 3091
    .line 3092
    const-string v0, "remoteSearchFullText"

    .line 3093
    .line 3094
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3095
    .line 3096
    .line 3097
    move-result-object v0

    .line 3098
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3099
    .line 3100
    .line 3101
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setRemoteSearchFullText()V

    .line 3102
    .line 3103
    .line 3104
    const-string v0, "remoteSearchNumResults"

    .line 3105
    .line 3106
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3107
    .line 3108
    .line 3109
    move-result-object v0

    .line 3110
    const/16 v4, 0x19

    .line 3111
    .line 3112
    invoke-virtual {v3, v0, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 3113
    .line 3114
    .line 3115
    move-result v0

    .line 3116
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setRemoteSearchNumResults(I)V

    .line 3117
    .line 3118
    .line 3119
    const-string/jumbo v0, "uploadSentMessages"

    .line 3120
    .line 3121
    .line 3122
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3123
    .line 3124
    .line 3125
    move-result-object v0

    .line 3126
    const/4 v5, 0x1

    .line 3127
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3128
    .line 3129
    .line 3130
    move-result v0

    .line 3131
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setUploadSentMessages(Z)V

    .line 3132
    .line 3133
    .line 3134
    const-string v0, "markMessageAsReadOnView"

    .line 3135
    .line 3136
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3137
    .line 3138
    .line 3139
    move-result-object v0

    .line 3140
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3141
    .line 3142
    .line 3143
    move-result v0

    .line 3144
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMarkMessageAsReadOnView(Z)V

    .line 3145
    .line 3146
    .line 3147
    const-string v0, "markMessageAsReadOnDelete"

    .line 3148
    .line 3149
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3150
    .line 3151
    .line 3152
    move-result-object v0

    .line 3153
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3154
    .line 3155
    .line 3156
    move-result v0

    .line 3157
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMarkMessageAsReadOnDelete(Z)V

    .line 3158
    .line 3159
    .line 3160
    const-string v0, "alwaysShowCcBcc"

    .line 3161
    .line 3162
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3163
    .line 3164
    .line 3165
    move-result-object v0

    .line 3166
    const/4 v7, 0x0

    .line 3167
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3168
    .line 3169
    .line 3170
    move-result v0

    .line 3171
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAlwaysShowCcBcc(Z)V

    .line 3172
    .line 3173
    .line 3174
    const-string v0, "lastSyncTime"

    .line 3175
    .line 3176
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3177
    .line 3178
    .line 3179
    move-result-object v0

    .line 3180
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getLong(Ljava/lang/String;)J

    .line 3181
    .line 3182
    .line 3183
    move-result-wide v4

    .line 3184
    invoke-virtual {v2, v4, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLastSyncTime(J)V

    .line 3185
    .line 3186
    .line 3187
    const-string v0, "lastFolderListRefreshTime"

    .line 3188
    .line 3189
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3190
    .line 3191
    .line 3192
    move-result-object v0

    .line 3193
    invoke-virtual {v3, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getLong(Ljava/lang/String;)J

    .line 3194
    .line 3195
    .line 3196
    move-result-wide v4

    .line 3197
    invoke-virtual {v2, v4, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLastFolderListRefreshTime(J)V

    .line 3198
    .line 3199
    .line 3200
    const-string v0, "migrateToOAuth"

    .line 3201
    .line 3202
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3203
    .line 3204
    .line 3205
    move-result-object v0

    .line 3206
    const/4 v7, 0x0

    .line 3207
    invoke-virtual {v3, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3208
    .line 3209
    .line 3210
    move-result v0

    .line 3211
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setShouldMigrateToOAuth(Z)V

    .line 3212
    .line 3213
    .line 3214
    const-string v0, "folderPathDelimiter"

    .line 3215
    .line 3216
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3217
    .line 3218
    .line 3219
    move-result-object v0

    .line 3220
    const-string v4, "/"

    .line 3221
    .line 3222
    invoke-virtual {v3, v0, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3223
    .line 3224
    .line 3225
    move-result-object v0

    .line 3226
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderPathDelimiter(Ljava/lang/String;)V

    .line 3227
    .line 3228
    .line 3229
    const-string v0, "isFinishedSetup"

    .line 3230
    .line 3231
    invoke-virtual {v10, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 3232
    .line 3233
    .line 3234
    move-result-object v0

    .line 3235
    const/4 v5, 0x1

    .line 3236
    invoke-virtual {v3, v0, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 3237
    .line 3238
    .line 3239
    move-result v0

    .line 3240
    if-eqz v0, :cond_18

    .line 3241
    .line 3242
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->markSetupFinished()V

    .line 3243
    .line 3244
    .line 3245
    :cond_18
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->resetChangeMarkers()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    .line 3246
    .line 3247
    .line 3248
    monitor-exit p0

    .line 3249
    return-void

    .line 3250
    :goto_1a
    :try_start_3a
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    .line 3251
    throw v0
.end method

.method public final declared-synchronized loadIdentities(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/core/preference/storage/InMemoryStorage;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lokhttp3/ConnectionPool;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lokhttp3/ConnectionPool;-><init>(Lnet/thunderbird/feature/account/AccountId;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    move v2, p1

    .line 14
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "name."

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v3}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p2, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v4, "email."

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {p2, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "signatureUse."

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v3}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p2, v3, p1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v4, "signature."

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v1, v3}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p2, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v4, "description."

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v1, v3}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p2, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v4, "replyTo."

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v1, v3}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {p2, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    if-eqz v7, :cond_1

    .line 165
    .line 166
    new-instance v4, Lnet/thunderbird/core/android/account/Identity;

    .line 167
    .line 168
    invoke-direct/range {v4 .. v10}, Lnet/thunderbird/core/android/account/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    const/4 v3, 0x1

    .line 175
    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    move-object p1, v0

    .line 178
    goto :goto_1

    .line 179
    :cond_1
    move v3, p1

    .line 180
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    if-nez v3, :cond_0

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_2

    .line 189
    .line 190
    const-string v2, "name"

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {p2, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    const-string v2, "email"

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {p2, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    const-string v2, "signatureUse"

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {p2, v2, p1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    const-string p1, "signature"

    .line 221
    .line 222
    invoke-virtual {v1, p1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p2, p1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    new-instance v3, Lnet/thunderbird/core/android/account/Identity;

    .line 231
    .line 232
    const/16 v9, 0x20

    .line 233
    .line 234
    move-object v6, v4

    .line 235
    invoke-direct/range {v3 .. v9}, Lnet/thunderbird/core/android/account/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .line 240
    .line 241
    :cond_2
    monitor-exit p0

    .line 242
    return-object v0

    .line 243
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    throw p1
.end method

.method public final save(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 6
    .line 7
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lokhttp3/ConnectionPool;-><init>(Lnet/thunderbird/feature/account/AccountId;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->profileDtoStorageHandler:Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;

    .line 13
    .line 14
    invoke-virtual {v1, p1, p2, p3}, Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;->save(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "accountUuids"

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v2, v1

    .line 29
    :goto_0
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    const-string v1, "accountUuids"

    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    invoke-virtual {p2, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v2, v1

    .line 50
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_2

    .line 55
    .line 56
    const-string v1, ","

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto/16 :goto_a

    .line 61
    .line 62
    :cond_2
    const-string v1, ""

    .line 63
    .line 64
    :goto_2
    iget-object v4, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "accountUuids"

    .line 85
    .line 86
    invoke-virtual {p3, v2, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    const-string v1, "incomingServerSettings"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p0, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->serverSettingsDtoSerializer:Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 96
    .line 97
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v2, v2, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;->adapter:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v1, "outgoingServerSettings"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v2, p0, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->serverSettingsDtoSerializer:Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 117
    .line 118
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOutgoingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iget-object v2, v2, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;->adapter:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v1, "oAuthState"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOAuthState()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v1, "alwaysBcc"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAlwaysBcc()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v1, "automaticCheckIntervalMinutes"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutomaticCheckIntervalMinutes()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    const-string v1, "idleRefreshMinutes"

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdleRefreshMinutes()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    const-string v1, "displayCount"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayCount()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    const-string v1, "notifyNewMail"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifyNewMail()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    .line 208
    .line 209
    const-string v1, "folderNotifyNewMailMode"

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderNotifyNewMailMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v1, "notifySelfNewMail"

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySelfNewMail()Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    .line 238
    .line 239
    const-string v1, "notifyContactsMailOnly"

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifyContactsMailOnly()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    const-string v1, "ignoreChatMessages"

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isIgnoreChatMessages()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    .line 264
    .line 265
    const-string v1, "notifyMailCheck"

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySync()Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    .line 277
    .line 278
    const-string v1, "messagesNotificationChannelVersion"

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessagesNotificationChannelVersion()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    const-string v1, "deletePolicy"

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDeletePolicy()Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    iget v2, v2, Lnet/thunderbird/core/android/account/DeletePolicy;->setting:I

    .line 302
    .line 303
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    const-string v1, "inboxFolderName"

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLegacyInboxFolder()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string v1, "draftsFolderName"

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedDraftsFolder()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string v1, "sentFolderName"

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedSentFolder()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const-string v1, "trashFolderName"

    .line 346
    .line 347
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedTrashFolder()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v1, "archiveFolderName"

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedArchiveFolder()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    const-string v1, "spamFolderName"

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedSpamFolder()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-string v1, "inboxFolderId"

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getInboxFolderId()Ljava/lang/Long;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    const/4 v4, 0x0

    .line 395
    if-eqz v2, :cond_4

    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 398
    .line 399
    .line 400
    move-result-wide v5

    .line 401
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    goto :goto_3

    .line 406
    :cond_4
    move-object v2, v4

    .line 407
    :goto_3
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string v1, "draftsFolderId"

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    if-eqz v2, :cond_5

    .line 421
    .line 422
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 423
    .line 424
    .line 425
    move-result-wide v5

    .line 426
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    goto :goto_4

    .line 431
    :cond_5
    move-object v2, v4

    .line 432
    :goto_4
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    const-string v1, "sentFolderId"

    .line 436
    .line 437
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderId()Ljava/lang/Long;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    if-eqz v2, :cond_6

    .line 446
    .line 447
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 448
    .line 449
    .line 450
    move-result-wide v5

    .line 451
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    goto :goto_5

    .line 456
    :cond_6
    move-object v2, v4

    .line 457
    :goto_5
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    const-string v1, "trashFolderId"

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    if-eqz v2, :cond_7

    .line 471
    .line 472
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 473
    .line 474
    .line 475
    move-result-wide v5

    .line 476
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    goto :goto_6

    .line 481
    :cond_7
    move-object v2, v4

    .line 482
    :goto_6
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    const-string v1, "archiveFolderId"

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getArchiveFolderId()Ljava/lang/Long;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    if-eqz v2, :cond_8

    .line 496
    .line 497
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 498
    .line 499
    .line 500
    move-result-wide v5

    .line 501
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    goto :goto_7

    .line 506
    :cond_8
    move-object v2, v4

    .line 507
    :goto_7
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    const-string v1, "spamFolderId"

    .line 511
    .line 512
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    if-eqz v2, :cond_9

    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 523
    .line 524
    .line 525
    move-result-wide v5

    .line 526
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    goto :goto_8

    .line 531
    :cond_9
    move-object v2, v4

    .line 532
    :goto_8
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    const-string v1, "archiveFolderSelection"

    .line 536
    .line 537
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getArchiveFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    const-string v1, "draftsFolderSelection"

    .line 553
    .line 554
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    const-string v1, "sentFolderSelection"

    .line 570
    .line 571
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    const-string v1, "spamFolderSelection"

    .line 587
    .line 588
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    const-string v1, "trashFolderSelection"

    .line 604
    .line 605
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    const-string v1, "autoExpandFolderName"

    .line 621
    .line 622
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedAutoExpandFolder()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    const-string v1, "autoExpandFolderId"

    .line 634
    .line 635
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutoExpandFolderId()Ljava/lang/Long;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    if-eqz v2, :cond_a

    .line 644
    .line 645
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 646
    .line 647
    .line 648
    move-result-wide v4

    .line 649
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    :cond_a
    invoke-virtual {p3, v1, v4}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    const-string v1, "accountNumber"

    .line 657
    .line 658
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 663
    .line 664
    .line 665
    move-result v2

    .line 666
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 667
    .line 668
    .line 669
    const-string v1, "sortTypeEnum"

    .line 670
    .line 671
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSortType()Lnet/thunderbird/core/android/account/SortType;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    const-string v1, "sortAscending"

    .line 687
    .line 688
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSortType()Lnet/thunderbird/core/android/account/SortType;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    invoke-virtual {p1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 701
    .line 702
    .line 703
    const-string v1, "showPicturesEnum"

    .line 704
    .line 705
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getShowPictures()Lnet/thunderbird/core/android/account/ShowPictures;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v2

    .line 717
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    const-string v1, "folderDisplayMode"

    .line 721
    .line 722
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderDisplayMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    const-string v1, "folderSyncMode"

    .line 738
    .line 739
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderSyncMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    const-string v1, "folderPushMode"

    .line 755
    .line 756
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderPushMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    const-string v1, "signatureBeforeQuotedText"

    .line 772
    .line 773
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSignatureBeforeQuotedText()Z

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 782
    .line 783
    .line 784
    const-string v1, "expungePolicy"

    .line 785
    .line 786
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getExpungePolicy()Lnet/thunderbird/core/android/account/Expunge;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    const-string v1, "syncRemoteDeletions"

    .line 802
    .line 803
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSyncRemoteDeletions()Z

    .line 808
    .line 809
    .line 810
    move-result v2

    .line 811
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 812
    .line 813
    .line 814
    const-string v1, "maxPushFolders"

    .line 815
    .line 816
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMaxPushFolders()I

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 825
    .line 826
    .line 827
    const-string v1, "subscribedFoldersOnly"

    .line 828
    .line 829
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSubscribedFoldersOnly()Z

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 838
    .line 839
    .line 840
    const-string v1, "maximumPolledMessageAge"

    .line 841
    .line 842
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMaximumPolledMessageAge()I

    .line 847
    .line 848
    .line 849
    move-result v2

    .line 850
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 851
    .line 852
    .line 853
    const-string v1, "maximumAutoDownloadMessageSize"

    .line 854
    .line 855
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMaximumAutoDownloadMessageSize()I

    .line 860
    .line 861
    .line 862
    move-result v2

    .line 863
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 864
    .line 865
    .line 866
    sget-object v1, Lnet/thunderbird/core/android/account/MessageFormat;->AUTO:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 867
    .line 868
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessageFormat()Lnet/thunderbird/core/android/account/MessageFormat;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    if-ne v1, v2, :cond_b

    .line 873
    .line 874
    const-string v1, "messageFormat"

    .line 875
    .line 876
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    const-string v2, "TEXT"

    .line 881
    .line 882
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    const/4 v1, 0x1

    .line 886
    goto :goto_9

    .line 887
    :cond_b
    const-string v1, "messageFormat"

    .line 888
    .line 889
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessageFormat()Lnet/thunderbird/core/android/account/MessageFormat;

    .line 894
    .line 895
    .line 896
    move-result-object v2

    .line 897
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v2

    .line 901
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    move v1, v3

    .line 905
    :goto_9
    const-string v2, "messageFormatAuto"

    .line 906
    .line 907
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v2

    .line 911
    invoke-virtual {p3, v2, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 912
    .line 913
    .line 914
    const-string v1, "messageReadReceipt"

    .line 915
    .line 916
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMessageReadReceipt()Z

    .line 921
    .line 922
    .line 923
    move-result v2

    .line 924
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 925
    .line 926
    .line 927
    const-string v1, "quoteStyle"

    .line 928
    .line 929
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getQuoteStyle()Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v2

    .line 941
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    const-string v1, "quotePrefix"

    .line 945
    .line 946
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getQuotePrefix()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v2

    .line 954
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    const-string v1, "defaultQuotedTextShown"

    .line 958
    .line 959
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v1

    .line 963
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isDefaultQuotedTextShown()Z

    .line 964
    .line 965
    .line 966
    move-result v2

    .line 967
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 968
    .line 969
    .line 970
    const-string v1, "replyAfterQuote"

    .line 971
    .line 972
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v1

    .line 976
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isReplyAfterQuote()Z

    .line 977
    .line 978
    .line 979
    move-result v2

    .line 980
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 981
    .line 982
    .line 983
    const-string v1, "stripSignature"

    .line 984
    .line 985
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isStripSignature()Z

    .line 990
    .line 991
    .line 992
    move-result v2

    .line 993
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 994
    .line 995
    .line 996
    const-string v1, "cryptoKey"

    .line 997
    .line 998
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v1

    .line 1002
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpKey()J

    .line 1003
    .line 1004
    .line 1005
    move-result-wide v4

    .line 1006
    invoke-virtual {p3, v4, v5, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putLong(JLjava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    const-string v1, "openPgpHideSignOnly"

    .line 1010
    .line 1011
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpHideSignOnly()Z

    .line 1016
    .line 1017
    .line 1018
    move-result v2

    .line 1019
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1020
    .line 1021
    .line 1022
    const-string v1, "openPgpEncryptSubject"

    .line 1023
    .line 1024
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v1

    .line 1028
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpEncryptSubject()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v2

    .line 1032
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1033
    .line 1034
    .line 1035
    const-string v1, "openPgpEncryptAllDrafts"

    .line 1036
    .line 1037
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v1

    .line 1041
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpEncryptAllDrafts()Z

    .line 1042
    .line 1043
    .line 1044
    move-result v2

    .line 1045
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1046
    .line 1047
    .line 1048
    const-string v1, "openPgpProvider"

    .line 1049
    .line 1050
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v2

    .line 1058
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    const-string v1, "autocryptMutualMode"

    .line 1062
    .line 1063
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutocryptPreferEncryptMutual()Z

    .line 1068
    .line 1069
    .line 1070
    move-result v2

    .line 1071
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1072
    .line 1073
    .line 1074
    const-string v1, "remoteSearchFullText"

    .line 1075
    .line 1076
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isRemoteSearchFullText()Z

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {p3, v1, v3}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1084
    .line 1085
    .line 1086
    const-string v1, "remoteSearchNumResults"

    .line 1087
    .line 1088
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getRemoteSearchNumResults()I

    .line 1093
    .line 1094
    .line 1095
    move-result v2

    .line 1096
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 1097
    .line 1098
    .line 1099
    const-string/jumbo v1, "uploadSentMessages"

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v1

    .line 1106
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isUploadSentMessages()Z

    .line 1107
    .line 1108
    .line 1109
    move-result v2

    .line 1110
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1111
    .line 1112
    .line 1113
    const-string v1, "markMessageAsReadOnView"

    .line 1114
    .line 1115
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMarkMessageAsReadOnView()Z

    .line 1120
    .line 1121
    .line 1122
    move-result v2

    .line 1123
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1124
    .line 1125
    .line 1126
    const-string v1, "markMessageAsReadOnDelete"

    .line 1127
    .line 1128
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v1

    .line 1132
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMarkMessageAsReadOnDelete()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v2

    .line 1136
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1137
    .line 1138
    .line 1139
    const-string v1, "alwaysShowCcBcc"

    .line 1140
    .line 1141
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v1

    .line 1145
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAlwaysShowCcBcc()Z

    .line 1146
    .line 1147
    .line 1148
    move-result v2

    .line 1149
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1150
    .line 1151
    .line 1152
    const-string/jumbo v1, "vibrate"

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v1

    .line 1159
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v2

    .line 1163
    iget-object v2, v2, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 1164
    .line 1165
    iget-boolean v2, v2, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 1166
    .line 1167
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1168
    .line 1169
    .line 1170
    const-string/jumbo v1, "vibratePattern"

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v1

    .line 1177
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v2

    .line 1181
    iget-object v2, v2, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 1182
    .line 1183
    iget-object v2, v2, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 1184
    .line 1185
    invoke-virtual {v2}, Lnet/thunderbird/feature/notification/VibratePattern;->serialize()I

    .line 1186
    .line 1187
    .line 1188
    move-result v2

    .line 1189
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 1190
    .line 1191
    .line 1192
    const-string/jumbo v1, "vibrateTimes"

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v1

    .line 1199
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v2

    .line 1203
    iget-object v2, v2, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 1204
    .line 1205
    iget v2, v2, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 1206
    .line 1207
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 1208
    .line 1209
    .line 1210
    const-string v1, "ring"

    .line 1211
    .line 1212
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v2

    .line 1220
    iget-boolean v2, v2, Lnet/thunderbird/feature/notification/NotificationSettings;->isRingEnabled:Z

    .line 1221
    .line 1222
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1223
    .line 1224
    .line 1225
    const-string v1, "ringtone"

    .line 1226
    .line 1227
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v2

    .line 1235
    iget-object v2, v2, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 1236
    .line 1237
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    const-string v1, "notificationLight"

    .line 1241
    .line 1242
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v1

    .line 1246
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v2

    .line 1250
    iget-object v2, v2, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 1251
    .line 1252
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v2

    .line 1256
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    .line 1258
    .line 1259
    const-string v1, "lastSyncTime"

    .line 1260
    .line 1261
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v1

    .line 1265
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLastSyncTime()J

    .line 1266
    .line 1267
    .line 1268
    move-result-wide v2

    .line 1269
    invoke-virtual {p3, v2, v3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putLong(JLjava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    const-string v1, "lastFolderListRefreshTime"

    .line 1273
    .line 1274
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v1

    .line 1278
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLastFolderListRefreshTime()J

    .line 1279
    .line 1280
    .line 1281
    move-result-wide v2

    .line 1282
    invoke-virtual {p3, v2, v3, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putLong(JLjava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    const-string v1, "isFinishedSetup"

    .line 1286
    .line 1287
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v1

    .line 1291
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isFinishedSetup()Z

    .line 1292
    .line 1293
    .line 1294
    move-result v2

    .line 1295
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1296
    .line 1297
    .line 1298
    const-string/jumbo v1, "useCompression"

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v1

    .line 1305
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->useCompression()Z

    .line 1306
    .line 1307
    .line 1308
    move-result v2

    .line 1309
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1310
    .line 1311
    .line 1312
    const-string v1, "sendClientInfo"

    .line 1313
    .line 1314
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v1

    .line 1318
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSendClientInfoEnabled()Z

    .line 1319
    .line 1320
    .line 1321
    move-result v2

    .line 1322
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1323
    .line 1324
    .line 1325
    const-string v1, "migrateToOAuth"

    .line 1326
    .line 1327
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v1

    .line 1331
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->shouldMigrateToOAuth()Z

    .line 1332
    .line 1333
    .line 1334
    move-result v2

    .line 1335
    invoke-virtual {p3, v1, v2}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 1336
    .line 1337
    .line 1338
    const-string v1, "folderPathDelimiter"

    .line 1339
    .line 1340
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v0

    .line 1344
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->folderPathDelimiter()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v1

    .line 1348
    invoke-virtual {p3, v0, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {p0, p1, p2, p3}, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->saveIdentities(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    .line 1353
    .line 1354
    monitor-exit p0

    .line 1355
    return-void

    .line 1356
    :goto_a
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1357
    throw p1
.end method

.method public final declared-synchronized saveIdentities(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->deleteIdentities(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V

    .line 3
    .line 4
    .line 5
    new-instance p2, Lokhttp3/ConnectionPool;

    .line 6
    .line 7
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 8
    .line 9
    invoke-direct {p2, v0}, Lokhttp3/ConnectionPool;-><init>(Lnet/thunderbird/feature/account/AccountId;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentities()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lnet/thunderbird/core/android/account/Identity;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "name."

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p2, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, v1, Lnet/thunderbird/core/android/account/Identity;->name:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p3, v2, v3}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "email."

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p2, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v3, v1, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p3, v2, v3}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "signatureUse."

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p2, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget-boolean v3, v1, Lnet/thunderbird/core/android/account/Identity;->signatureUse:Z

    .line 109
    .line 110
    invoke-virtual {p3, v2, v3}, Lcom/fsck/k9/preferences/K9StorageEditor;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v3, "signature."

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p2, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget-object v3, v1, Lnet/thunderbird/core/android/account/Identity;->signature:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p3, v2, v3}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v3, "description."

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {p2, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iget-object v3, v1, Lnet/thunderbird/core/android/account/Identity;->description:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p3, v2, v3}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v3, "replyTo."

    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {p2, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget-object v1, v1, Lnet/thunderbird/core/android/account/Identity;->replyTo:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {p3, v2, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .line 190
    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :catchall_0
    move-exception p1

    .line 196
    goto :goto_1

    .line 197
    :cond_0
    monitor-exit p0

    .line 198
    return-void

    .line 199
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    throw p1
.end method
