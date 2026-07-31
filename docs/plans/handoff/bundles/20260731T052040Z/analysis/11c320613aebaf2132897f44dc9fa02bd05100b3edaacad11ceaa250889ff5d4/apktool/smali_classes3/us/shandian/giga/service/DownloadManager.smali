.class public final Lus/shandian/giga/service/DownloadManager;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

.field public final mHandler:Landroid/os/Handler;

.field public mLastNetworkStatus:I

.field public mMainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

.field public mMainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

.field public final mMissionsFinished:Ljava/util/ArrayList;

.field public final mMissionsPending:Ljava/util/ArrayList;

.field public final mPendingMissionsDir:Ljava/io/File;

.field public mPrefMaxRetry:I

.field public mPrefMeteredDownloads:Z

.field public mPrefQueueLimit:Z

.field public mSelfMissionsControl:Z


# direct methods
.method public constructor <init>(Lus/shandian/giga/service/DownloadManagerService;Landroid/os/Handler;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:I

    .line 13
    .line 14
    new-instance v2, Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    .line 20
    .line 21
    iput-object p2, p0, Lus/shandian/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iput-object p4, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 24
    .line 25
    iput-object p3, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v9, 0x0

    .line 32
    const-string v10, "timestamp DESC"

    .line 33
    .line 34
    const-string v4, "finished_missions"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    const/4 p4, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    if-nez p3, :cond_0

    .line 51
    .line 52
    new-instance p2, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v4, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_3

    .line 69
    .line 70
    const-string p3, ""

    .line 71
    .line 72
    const-string v0, "kind"

    .line 73
    .line 74
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    :cond_1
    const-string v0, "?"

    .line 91
    .line 92
    :cond_2
    const-string v5, "path"

    .line 93
    .line 94
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    new-instance v6, Lus/shandian/giga/get/FinishedMission;

    .line 103
    .line 104
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v7, "url"

    .line 108
    .line 109
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iput-object v7, v6, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 118
    .line 119
    const-string v7, "bytes_downloaded"

    .line 120
    .line 121
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    iput-wide v7, v6, Lus/shandian/giga/get/Mission;->length:J

    .line 130
    .line 131
    const-string v7, "timestamp"

    .line 132
    .line 133
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v7

    .line 141
    iput-wide v7, v6, Lus/shandian/giga/get/Mission;->timestamp:J

    .line 142
    .line 143
    invoke-virtual {v0, p4}, Ljava/lang/String;->charAt(I)C

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput-char v0, v6, Lus/shandian/giga/get/Mission;->kind:C

    .line 148
    .line 149
    :try_start_0
    new-instance v0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 150
    .line 151
    iget-object v7, v2, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->context:Lus/shandian/giga/service/DownloadManagerService;

    .line 152
    .line 153
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-direct {v0, v7, v3, v8, p3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, v6, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v8, "failed to load the storage path of: "

    .line 167
    .line 168
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const-string v8, "FinishedMissionStore"

    .line 179
    .line 180
    invoke-static {v8, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .line 182
    .line 183
    new-instance v0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 184
    .line 185
    invoke-direct {v0, v3, v5, p3, p3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iput-object v0, v6, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 189
    .line 190
    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_3
    move-object p2, v4

    .line 196
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result p3

    .line 200
    sub-int/2addr p3, v1

    .line 201
    :goto_3
    if-ltz p3, :cond_5

    .line 202
    .line 203
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lus/shandian/giga/get/FinishedMission;

    .line 208
    .line 209
    iget-object v4, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 210
    .line 211
    invoke-virtual {v4}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-nez v4, :cond_4

    .line 216
    .line 217
    invoke-virtual {v2, v0}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    :cond_4
    add-int/lit8 p3, p3, -0x1

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_5
    iput-object p2, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 227
    .line 228
    const-string p2, "pending_downloads"

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 231
    .line 232
    .line 233
    move-result-object p3

    .line 234
    invoke-static {p3}, Lus/shandian/giga/service/DownloadManager;->testDir(Ljava/io/File;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_6

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_6
    new-instance p3, Ljava/io/File;

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-direct {p3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-static {p3}, Lus/shandian/giga/service/DownloadManager;->testDir(Ljava/io/File;)Z

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    if-eqz p2, :cond_17

    .line 255
    .line 256
    :goto_4
    iput-object p3, p0, Lus/shandian/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    .line 257
    .line 258
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    const-string p3, "DownloadManager"

    .line 263
    .line 264
    if-nez p2, :cond_7

    .line 265
    .line 266
    const-string p0, "listFiles() returned null"

    .line 267
    .line 268
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    goto/16 :goto_c

    .line 272
    .line 273
    :cond_7
    array-length v0, p2

    .line 274
    if-ge v0, v1, :cond_8

    .line 275
    .line 276
    goto/16 :goto_c

    .line 277
    .line 278
    :cond_8
    invoke-static {p1}, Lus/shandian/giga/service/DownloadManager;->pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v4, "using \'"

    .line 285
    .line 286
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v4, "\' as temporal directory"

    .line 293
    .line 294
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    array-length v4, p2

    .line 305
    move v5, p4

    .line 306
    :goto_5
    if-ge v5, v4, :cond_15

    .line 307
    .line 308
    aget-object v6, p2, v5

    .line 309
    .line 310
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-nez v0, :cond_9

    .line 315
    .line 316
    goto/16 :goto_b

    .line 317
    .line 318
    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const-string v7, ".tmp"

    .line 323
    .line 324
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_a

    .line 329
    .line 330
    goto/16 :goto_b

    .line 331
    .line 332
    :cond_a
    :try_start_1
    new-instance v7, Ljava/io/ObjectInputStream;

    .line 333
    .line 334
    new-instance v0, Ljava/io/FileInputStream;

    .line 335
    .line 336
    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 337
    .line 338
    .line 339
    invoke-direct {v7, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    .line 341
    .line 342
    :try_start_2
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    :try_start_3
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :catch_1
    move-exception v0

    .line 351
    goto :goto_7

    .line 352
    :catchall_0
    move-exception v0

    .line 353
    move-object v8, v0

    .line 354
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 355
    .line 356
    .line 357
    goto :goto_6

    .line 358
    :catchall_1
    move-exception v0

    .line 359
    :try_start_5
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 360
    .line 361
    .line 362
    :goto_6
    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 363
    :goto_7
    const-string v7, "Utility"

    .line 364
    .line 365
    const-string v8, "Failed to deserialize the object"

    .line 366
    .line 367
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    .line 369
    .line 370
    move-object v0, v3

    .line 371
    :goto_8
    move-object v7, v0

    .line 372
    check-cast v7, Lus/shandian/giga/get/DownloadMission;

    .line 373
    .line 374
    if-nez v7, :cond_b

    .line 375
    .line 376
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 377
    .line 378
    .line 379
    goto/16 :goto_b

    .line 380
    .line 381
    :cond_b
    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_c

    .line 386
    .line 387
    invoke-virtual {p0, v7}, Lus/shandian/giga/service/DownloadManager;->setFinished(Lus/shandian/giga/get/DownloadMission;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 391
    .line 392
    .line 393
    goto/16 :goto_b

    .line 394
    .line 395
    :cond_c
    iget-object v0, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 396
    .line 397
    const/16 v8, 0x3f3

    .line 398
    .line 399
    if-eqz v0, :cond_d

    .line 400
    .line 401
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-nez v0, :cond_e

    .line 406
    .line 407
    :cond_d
    iget v0, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 408
    .line 409
    if-eq v0, v8, :cond_e

    .line 410
    .line 411
    iget-object v0, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 412
    .line 413
    if-nez v0, :cond_e

    .line 414
    .line 415
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 416
    .line 417
    .line 418
    goto/16 :goto_b

    .line 419
    .line 420
    :cond_e
    new-array v0, p4, [Ljava/lang/Thread;

    .line 421
    .line 422
    iput-object v0, v7, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 423
    .line 424
    :try_start_6
    iget-object v0, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 425
    .line 426
    invoke-static {v0, p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->deserialize(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Lus/shandian/giga/service/DownloadManagerService;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    iput-object v0, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 431
    .line 432
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-nez v0, :cond_f

    .line 437
    .line 438
    iget-object v0, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 439
    .line 440
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    .line 441
    .line 442
    .line 443
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 444
    if-eqz v0, :cond_f

    .line 445
    .line 446
    move v0, v1

    .line 447
    goto :goto_9

    .line 448
    :catch_2
    move-exception v0

    .line 449
    iget-object v9, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 450
    .line 451
    invoke-virtual {v9}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    const-string v10, "Failed to load the file source of "

    .line 456
    .line 457
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v9

    .line 461
    invoke-static {p3, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .line 463
    .line 464
    :cond_f
    move v0, p4

    .line 465
    :goto_9
    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    .line 466
    .line 467
    .line 468
    move-result v9

    .line 469
    if-eqz v9, :cond_11

    .line 470
    .line 471
    iget-object v8, v7, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    .line 472
    .line 473
    iget-boolean v8, v8, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    .line 474
    .line 475
    if-eqz v8, :cond_10

    .line 476
    .line 477
    if-eqz v0, :cond_10

    .line 478
    .line 479
    iget-object v0, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 480
    .line 481
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 482
    .line 483
    .line 484
    iget-object v0, v0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 485
    .line 486
    if-nez v0, :cond_10

    .line 487
    .line 488
    iget-object v0, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 489
    .line 490
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->delete()Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-nez v0, :cond_10

    .line 495
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    const-string v8, "Unable to delete incomplete download file: "

    .line 499
    .line 500
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    :cond_10
    iput p4, v7, Lus/shandian/giga/get/DownloadMission;->psState:I

    .line 518
    .line 519
    const/16 v0, 0x3f0

    .line 520
    .line 521
    iput v0, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 522
    .line 523
    goto :goto_a

    .line 524
    :cond_11
    if-nez v0, :cond_12

    .line 525
    .line 526
    invoke-virtual {p0, v7}, Lus/shandian/giga/service/DownloadManager;->tryRecover(Lus/shandian/giga/get/DownloadMission;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->isInitialized()Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-eqz v0, :cond_12

    .line 534
    .line 535
    iget v0, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 536
    .line 537
    const/4 v9, -0x1

    .line 538
    if-ne v0, v9, :cond_12

    .line 539
    .line 540
    invoke-virtual {v7, v8, v1, v1}, Lus/shandian/giga/get/DownloadMission;->resetState(IZZ)V

    .line 541
    .line 542
    .line 543
    :cond_12
    :goto_a
    iget-object v0, v7, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    .line 544
    .line 545
    if-eqz v0, :cond_14

    .line 546
    .line 547
    iget-object v8, v0, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    .line 548
    .line 549
    if-eqz v8, :cond_13

    .line 550
    .line 551
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 552
    .line 553
    .line 554
    move-result v8

    .line 555
    if-eqz v8, :cond_13

    .line 556
    .line 557
    :try_start_7
    iget-object v0, v0, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 560
    .line 561
    .line 562
    :catch_3
    :cond_13
    iget-object v0, v7, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    .line 563
    .line 564
    invoke-virtual {v0, v2}, Lus/shandian/giga/postprocessing/Postprocessing;->setTemporalDir(Ljava/io/File;)V

    .line 565
    .line 566
    .line 567
    :cond_14
    iput-object v6, v7, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    .line 568
    .line 569
    iget v0, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    .line 570
    .line 571
    iput v0, v7, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    .line 572
    .line 573
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 574
    .line 575
    iput-object v0, v7, Lus/shandian/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    .line 576
    .line 577
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 583
    .line 584
    goto/16 :goto_5

    .line 585
    .line 586
    :cond_15
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 589
    .line 590
    .line 591
    move-result p1

    .line 592
    if-le p1, v1, :cond_16

    .line 593
    .line 594
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 595
    .line 596
    new-instance p1, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;

    .line 597
    .line 598
    invoke-direct {p1, p4}, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 599
    .line 600
    .line 601
    invoke-static {p1}, Lj$/util/Comparator$-CC;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 606
    .line 607
    .line 608
    :cond_16
    :goto_c
    return-void

    .line 609
    :cond_17
    const-string p0, "path to pending downloads are not accessible"

    .line 610
    .line 611
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    throw v3
.end method

.method public static isDirectoryAvailable(Ljava/io/File;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    const-string v1, "muxing_tmp"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    const-string p0, "Not temporal directories are available"

    .line 50
    .line 51
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public static testDir(Ljava/io/File;)Z
    .locals 5

    .line 1
    const-string v0, "DownloadManager"

    .line 2
    .line 3
    const-string v1, "testDir() cannot create the directory in path: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    :goto_0
    if-nez v3, :cond_2

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :catch_0
    move-exception v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 49
    .line 50
    const-string v3, ".tmp"

    .line 51
    .line 52
    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    return v2

    .line 62
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 63
    .line 64
    .line 65
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return p0

    .line 67
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v4, "testDir() failed: "

    .line 70
    .line 71
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    return v2
.end method


# virtual methods
.method public final deleteMission(Lus/shandian/giga/get/Mission;Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    instance-of v0, p1, Lus/shandian/giga/get/DownloadMission;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    instance-of v0, p1, Lus/shandian/giga/get/FinishedMission;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lus/shandian/giga/get/Mission;->delete()Z

    .line 31
    .line 32
    .line 33
    :cond_2
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public final forgetMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getAnyMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Lus/shandian/giga/get/Mission;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    instance-of v0, p1, Lus/shandian/giga/get/DownloadMission;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    instance-of v0, p1, Lus/shandian/giga/get/FinishedMission;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 37
    iput-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 38
    .line 39
    invoke-virtual {p1}, Lus/shandian/giga/get/Mission;->delete()Z

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1
.end method

.method public final getAnyMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Lus/shandian/giga/get/Mission;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    .line 20
    .line 21
    iget-object v3, v1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->equals(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v2

    .line 31
    :goto_0
    if-eqz v1, :cond_2

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getFinishedMissionIndex(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-ltz p1, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lus/shandian/giga/get/Mission;

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-object p1

    .line 53
    :cond_3
    monitor-exit p0

    .line 54
    return-object v2

    .line 55
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p1
.end method

.method public final getFinishedMissionIndex(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, -0x1

    .line 9
    if-ge v0, v2, :cond_3

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lus/shandian/giga/get/FinishedMission;

    .line 16
    .line 17
    iget-object v2, v2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->equals(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->length()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    const-wide/16 v6, 0x0

    .line 36
    .line 37
    cmp-long p1, v4, v6

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    return v0

    .line 43
    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lus/shandian/giga/get/Mission;

    .line 48
    .line 49
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return v3

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return v3
.end method

.method public final getRunningMissionsCount()I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    .line 20
    .line 21
    iget-boolean v3, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    monitor-exit p0

    .line 43
    return v1

    .line 44
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0
.end method

.method public final pauseAllMissions(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    .line 19
    .line 20
    iget-boolean v2, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    iput-object v2, v1, Lus/shandian/giga/get/DownloadMission;->init:Lus/shandian/giga/get/DownloadInitializer;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    new-array v2, v2, [Ljava/lang/Thread;

    .line 44
    .line 45
    iput-object v2, v1, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->pause()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p1
.end method

.method public final runMissions()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v3, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    .line 23
    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    if-eq v0, v3, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    move v0, v1

    .line 31
    goto :goto_2

    .line 32
    :cond_3
    :goto_1
    move v0, v2

    .line 33
    :goto_2
    if-nez v0, :cond_4

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return v1

    .line 37
    :cond_4
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    .line 38
    .line 39
    if-eqz v0, :cond_6

    .line 40
    .line 41
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_6

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lus/shandian/giga/get/DownloadMission;

    .line 58
    .line 59
    invoke-virtual {v3}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_5

    .line 64
    .line 65
    iget-boolean v3, v3, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 66
    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return v2

    .line 71
    :cond_6
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_c

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lus/shandian/giga/get/DownloadMission;

    .line 88
    .line 89
    iget-boolean v4, v3, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 90
    .line 91
    if-nez v4, :cond_7

    .line 92
    .line 93
    iget-boolean v4, v3, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    .line 94
    .line 95
    if-eqz v4, :cond_7

    .line 96
    .line 97
    invoke-virtual {v3}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_8

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_8
    iget-boolean v4, v3, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 105
    .line 106
    if-nez v4, :cond_9

    .line 107
    .line 108
    invoke-virtual {v3}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 109
    .line 110
    .line 111
    :cond_9
    iget v3, v3, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 112
    .line 113
    const/4 v4, -0x1

    .line 114
    if-eq v3, v4, :cond_a

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_a
    iget-boolean v1, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    .line 118
    .line 119
    if-eqz v1, :cond_b

    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return v2

    .line 123
    :cond_b
    move v1, v2

    .line 124
    goto :goto_3

    .line 125
    :cond_c
    monitor-exit p0

    .line 126
    return v1

    .line 127
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    throw v0
.end method

.method public final setFinished(Lus/shandian/giga/get/DownloadMission;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v1, Lus/shandian/giga/get/FinishedMission;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v2, v1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 17
    .line 18
    iget-wide v2, p1, Lus/shandian/giga/get/Mission;->length:J

    .line 19
    .line 20
    iput-wide v2, v1, Lus/shandian/giga/get/Mission;->length:J

    .line 21
    .line 22
    iget-wide v2, p1, Lus/shandian/giga/get/Mission;->timestamp:J

    .line 23
    .line 24
    iput-wide v2, v1, Lus/shandian/giga/get/Mission;->timestamp:J

    .line 25
    .line 26
    iget-char v2, p1, Lus/shandian/giga/get/Mission;->kind:C

    .line 27
    .line 28
    iput-char v2, v1, Lus/shandian/giga/get/Mission;->kind:C

    .line 29
    .line 30
    iget-object v2, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 31
    .line 32
    iput-object v2, v1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->addFinishedMission(Lus/shandian/giga/get/DownloadMission;)V

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method

.method public final tryRecover(Lus/shandian/giga/get/DownloadMission;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "audio"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "video"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p0, "Unknown download category, not [audio video]: "

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "DownloadManager"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    :goto_0
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->create()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 59
    .line 60
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->invalidate()V

    .line 61
    .line 62
    .line 63
    if-nez p0, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 73
    .line 74
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, v0, v1, v2}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    iput-object p0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 86
    .line 87
    :cond_4
    :goto_1
    return-void
.end method
