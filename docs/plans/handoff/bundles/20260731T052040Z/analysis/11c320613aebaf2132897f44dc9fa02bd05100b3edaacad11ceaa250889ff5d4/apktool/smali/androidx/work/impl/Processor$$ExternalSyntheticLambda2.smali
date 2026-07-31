.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final run$androidx$work$impl$Processor$$ExternalSyntheticLambda2()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/work/impl/Processor;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/work/impl/model/WorkGenerationalId;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, v0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/work/impl/ExecutionListener;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-interface {v2, p0, v3}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const/4 v6, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lus/shandian/giga/service/DownloadManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/content/Intent;

    .line 18
    .line 19
    sget v7, Lus/shandian/giga/service/DownloadManagerService;->$r8$clinit:I

    .line 20
    .line 21
    const-string v7, "DownloadManagerService.extra.urls"

    .line 22
    .line 23
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const-string v8, "DownloadManagerService.extra.storagePath"

    .line 28
    .line 29
    const-class v9, Landroid/net/Uri;

    .line 30
    .line 31
    invoke-static {v0, v8, v9}, Landroidx/room/Room;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    check-cast v8, Landroid/net/Uri;

    .line 36
    .line 37
    const-string v9, "DownloadManagerService.extra.storageParentPath"

    .line 38
    .line 39
    const-class v10, Landroid/net/Uri;

    .line 40
    .line 41
    invoke-static {v0, v9, v10}, Landroidx/room/Room;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    check-cast v9, Landroid/net/Uri;

    .line 46
    .line 47
    const-string v10, "DownloadManagerService.extra.threads"

    .line 48
    .line 49
    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    const-string v11, "DownloadManagerService.extra.kind"

    .line 54
    .line 55
    const/16 v12, 0x3f

    .line 56
    .line 57
    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    const-string v12, "DownloadManagerService.extra.postprocessingName"

    .line 62
    .line 63
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    const-string v13, "DownloadManagerService.extra.postprocessingArgs"

    .line 68
    .line 69
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    const-string v14, "DownloadManagerService.extra.nearLength"

    .line 74
    .line 75
    invoke-virtual {v0, v14, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    const-string v14, "DownloadManagerService.extra.storageTag"

    .line 80
    .line 81
    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    const-string v15, "DownloadManagerService.extra.streamInfo"

    .line 86
    .line 87
    invoke-virtual {v0, v15}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    check-cast v15, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 92
    .line 93
    const-string v2, "DownloadManagerService.extra.recoveryInfo"

    .line 94
    .line 95
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    const/16 v5, 0x22

    .line 98
    .line 99
    if-lt v6, v5, :cond_0

    .line 100
    .line 101
    invoke-static {v0}, Lorg/schabi/newpipe/util/ZipHelper;->getParcelableArrayListExtra(Landroid/content/Intent;)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_0
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :try_start_0
    new-instance v2, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 114
    .line 115
    invoke-direct {v2, v1, v9, v8, v14}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    .line 117
    .line 118
    if-nez v12, :cond_1

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    invoke-static {v12, v13, v15}, Lus/shandian/giga/postprocessing/Postprocessing;->getAlgorithm(Ljava/lang/String;[Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lus/shandian/giga/postprocessing/Postprocessing;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    :goto_1
    new-instance v6, Lus/shandian/giga/get/DownloadMission;

    .line 127
    .line 128
    invoke-direct {v6, v7, v2, v11, v5}, Lus/shandian/giga/get/DownloadMission;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/streams/io/StoredFileHelper;CLus/shandian/giga/postprocessing/Postprocessing;)V

    .line 129
    .line 130
    .line 131
    iput v10, v6, Lus/shandian/giga/get/DownloadMission;->threadCount:I

    .line 132
    .line 133
    invoke-virtual {v15}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iput-object v2, v6, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 138
    .line 139
    iput-wide v3, v6, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    new-array v3, v2, [Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, [Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 149
    .line 150
    iput-object v0, v6, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 151
    .line 152
    if-eqz v5, :cond_2

    .line 153
    .line 154
    invoke-static {v1}, Lus/shandian/giga/service/DownloadManager;->pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v5, v0}, Lus/shandian/giga/postprocessing/Postprocessing;->setTemporalDir(Ljava/io/File;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    const/4 v0, 0x1

    .line 162
    invoke-virtual {v1, v0}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v1, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 166
    .line 167
    monitor-enter v1

    .line 168
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 169
    .line 170
    .line 171
    move-result-wide v2

    .line 172
    iput-wide v2, v6, Lus/shandian/giga/get/Mission;->timestamp:J

    .line 173
    .line 174
    iget-object v0, v1, Lus/shandian/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 175
    .line 176
    iput-object v0, v6, Lus/shandian/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    .line 177
    .line 178
    iget v0, v1, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    .line 179
    .line 180
    iput v0, v6, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    .line 181
    .line 182
    :goto_2
    new-instance v0, Ljava/io/File;

    .line 183
    .line 184
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    .line 185
    .line 186
    iget-wide v3, v6, Lus/shandian/giga/get/Mission;->timestamp:J

    .line 187
    .line 188
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iput-object v0, v6, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_c

    .line 202
    .line 203
    iget-object v0, v6, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 206
    .line 207
    .line 208
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    if-nez v0, :cond_c

    .line 210
    .line 211
    :try_start_2
    iget-object v0, v6, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 214
    .line 215
    .line 216
    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    if-eqz v0, :cond_b

    .line 218
    .line 219
    const/4 v0, 0x1

    .line 220
    :try_start_3
    iput-boolean v0, v1, Lus/shandian/giga/service/DownloadManager;->mSelfMissionsControl:Z

    .line 221
    .line 222
    iget-object v0, v1, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    iget-object v0, v6, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    .line 228
    .line 229
    invoke-static {v0, v6}, Lus/shandian/giga/util/Utility;->writeToFile(Ljava/io/File;Lus/shandian/giga/get/DownloadMission;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, v6, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 233
    .line 234
    if-nez v0, :cond_4

    .line 235
    .line 236
    const/16 v0, 0x3e9

    .line 237
    .line 238
    iput v0, v6, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 239
    .line 240
    iget-object v0, v6, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 241
    .line 242
    if-eqz v0, :cond_3

    .line 243
    .line 244
    new-instance v0, Ljava/io/IOException;

    .line 245
    .line 246
    const-string v2, "DownloadMission.storage == NULL"

    .line 247
    .line 248
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iput-object v0, v6, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :catchall_0
    move-exception v0

    .line 255
    goto :goto_9

    .line 256
    :cond_3
    :goto_3
    monitor-exit v1

    .line 257
    goto :goto_a

    .line 258
    :cond_4
    iget-boolean v0, v1, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    .line 259
    .line 260
    if-eqz v0, :cond_6

    .line 261
    .line 262
    invoke-virtual {v1}, Lus/shandian/giga/service/DownloadManager;->getRunningMissionsCount()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    const/4 v2, 0x1

    .line 267
    if-ge v0, v2, :cond_5

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_5
    const/4 v0, 0x0

    .line 271
    goto :goto_5

    .line 272
    :cond_6
    const/4 v2, 0x1

    .line 273
    :goto_4
    move v0, v2

    .line 274
    :goto_5
    iget v3, v1, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:I

    .line 275
    .line 276
    if-ne v3, v2, :cond_7

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_7
    iget-boolean v2, v1, Lus/shandian/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    .line 280
    .line 281
    if-eqz v2, :cond_9

    .line 282
    .line 283
    const/4 v2, 0x3

    .line 284
    if-eq v3, v2, :cond_8

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_8
    :goto_6
    const/4 v5, 0x0

    .line 288
    goto :goto_8

    .line 289
    :cond_9
    :goto_7
    const/4 v5, 0x1

    .line 290
    :goto_8
    if-eqz v5, :cond_a

    .line 291
    .line 292
    if-eqz v0, :cond_a

    .line 293
    .line 294
    invoke-virtual {v6}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 295
    .line 296
    .line 297
    :cond_a
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    goto :goto_a

    .line 299
    :cond_b
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 300
    .line 301
    const-string v2, "Cant create download metadata file"

    .line 302
    .line 303
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    .line 309
    .line 310
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    throw v2

    .line 314
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 315
    .line 316
    .line 317
    move-result-wide v2

    .line 318
    iput-wide v2, v6, Lus/shandian/giga/get/Mission;->timestamp:J

    .line 319
    .line 320
    goto/16 :goto_2

    .line 321
    .line 322
    :goto_9
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 323
    throw v0

    .line 324
    :catch_1
    move-exception v0

    .line 325
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Throwable;)V

    .line 326
    .line 327
    .line 328
    :goto_a
    return-void

    .line 329
    :pswitch_0
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;

    .line 332
    .line 333
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 336
    .line 337
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->run(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :pswitch_1
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 344
    .line 345
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 346
    .line 347
    move-object v5, v0

    .line 348
    check-cast v5, Landroidx/preference/PreferenceFragmentCompat;

    .line 349
    .line 350
    iget-object v0, v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->key:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v5, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    if-nez v6, :cond_d

    .line 357
    .line 358
    const-string v0, "PrefSearchResHighlter"

    .line 359
    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v3, "Preference \'"

    .line 363
    .line 364
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v1, v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->key:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v1, "\' not found on \'"

    .line 373
    .line 374
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v1, "\'"

    .line 381
    .line 382
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    goto :goto_b

    .line 393
    :cond_d
    iget-object v3, v5, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 394
    .line 395
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    instance-of v1, v0, Landroidx/preference/PreferenceGroupAdapter;

    .line 400
    .line 401
    if-eqz v1, :cond_e

    .line 402
    .line 403
    check-cast v0, Landroidx/preference/PreferenceGroupAdapter;

    .line 404
    .line 405
    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    const/4 v0, -0x1

    .line 410
    if-eq v4, v0, :cond_e

    .line 411
    .line 412
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 413
    .line 414
    .line 415
    new-instance v2, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;

    .line 416
    .line 417
    const/4 v7, 0x1

    .line 418
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Comparable;I)V

    .line 419
    .line 420
    .line 421
    const-wide/16 v0, 0xc8

    .line 422
    .line 423
    invoke-virtual {v3, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    .line 425
    .line 426
    goto :goto_b

    .line 427
    :cond_e
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->highlightFallback(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)V

    .line 428
    .line 429
    .line 430
    :goto_b
    return-void

    .line 431
    :pswitch_2
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 434
    .line 435
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v0, Landroid/view/View;

    .line 438
    .line 439
    iget-object v2, v1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 440
    .line 441
    iget v2, v2, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 442
    .line 443
    const/16 v5, 0x7c

    .line 444
    .line 445
    if-ne v2, v5, :cond_11

    .line 446
    .line 447
    iget-boolean v2, v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    .line 448
    .line 449
    if-nez v2, :cond_11

    .line 450
    .line 451
    iget-object v2, v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 452
    .line 453
    iget-object v5, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 454
    .line 455
    if-eq v0, v5, :cond_10

    .line 456
    .line 457
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 458
    .line 459
    if-ne v0, v2, :cond_f

    .line 460
    .line 461
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isFullscreen()Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_f

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :cond_f
    const-wide/16 v2, 0x12c

    .line 469
    .line 470
    const-wide/16 v4, 0x7d0

    .line 471
    .line 472
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 473
    .line 474
    .line 475
    goto :goto_d

    .line 476
    :cond_10
    :goto_c
    invoke-virtual {v1, v3, v4, v3, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 477
    .line 478
    .line 479
    :cond_11
    :goto_d
    return-void

    .line 480
    :pswitch_3
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v1, Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    .line 483
    .line 484
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v0, Ljava/lang/Integer;

    .line 487
    .line 488
    iget-object v1, v1, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    if-eqz v0, :cond_12

    .line 499
    .line 500
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 501
    .line 502
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 503
    .line 504
    .line 505
    :cond_12
    return-void

    .line 506
    :pswitch_4
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v1, Lorg/acra/util/ProcessFinisher;

    .line 509
    .line 510
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v0, Ljava/lang/String;

    .line 513
    .line 514
    iget-object v1, v1, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v1, Landroid/content/Context;

    .line 517
    .line 518
    const/4 v2, 0x1

    .line 519
    :try_start_6
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 524
    .line 525
    .line 526
    goto :goto_e

    .line 527
    :catch_2
    move-exception v0

    .line 528
    sget-object v1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 529
    .line 530
    const-string v1, "ACRA"

    .line 531
    .line 532
    const-string v2, "Could not send crash Toast"

    .line 533
    .line 534
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .line 536
    .line 537
    :goto_e
    return-void

    .line 538
    :pswitch_5
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 541
    .line 542
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v0, Lkotlinx/coroutines/android/HandlerContext;

    .line 545
    .line 546
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    :pswitch_6
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 553
    .line 554
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 557
    .line 558
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->$r8$lambda$enVmfmqUpTHSQjsZD1ltWqpVSP8(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V

    .line 559
    .line 560
    .line 561
    return-void

    .line 562
    :pswitch_7
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 565
    .line 566
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast v0, Ljava/lang/Exception;

    .line 569
    .line 570
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$96568J0Fdcvbx0u8UpfuRBlXxqw(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    .line 571
    .line 572
    .line 573
    return-void

    .line 574
    :pswitch_8
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 577
    .line 578
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast v0, Ljava/lang/String;

    .line 581
    .line 582
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$uAcre0T14-a6ckV-agz8TtOcE1I(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    return-void

    .line 586
    :pswitch_9
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 587
    .line 588
    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 589
    .line 590
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v0, Lcom/google/android/exoplayer2/video/VideoSize;

    .line 593
    .line 594
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$g8ihfYJz7jb1_c7xUDI6fuNzzqU(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 595
    .line 596
    .line 597
    return-void

    .line 598
    :pswitch_a
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 599
    .line 600
    check-cast v1, Lcom/google/common/util/concurrent/SettableFuture;

    .line 601
    .line 602
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 603
    .line 604
    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 605
    .line 606
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->$r8$lambda$W5UV1y7TepY8MzEaG5ASrYb5Nnw(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 607
    .line 608
    .line 609
    return-void

    .line 610
    :pswitch_b
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    .line 613
    .line 614
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;

    .line 617
    .line 618
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->$r8$lambda$aMGOFakPrbdTmIiN7axpV6-fUa4(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    :pswitch_c
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 623
    .line 624
    check-cast v1, Landroid/media/AudioTrack;

    .line 625
    .line 626
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 629
    .line 630
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->$r8$lambda$Hgr4l8_uAAUx9oJtugixlqv_1qY(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    .line 631
    .line 632
    .line 633
    return-void

    .line 634
    :pswitch_d
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 637
    .line 638
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 639
    .line 640
    check-cast v0, Ljava/lang/String;

    .line 641
    .line 642
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->$r8$lambda$C_IXs2xVSpNSapn-OxnXBNpAoQo(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    return-void

    .line 646
    :pswitch_e
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v1, Landroidx/work/impl/WorkManagerImpl;

    .line 649
    .line 650
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v0, Ljava/util/UUID;

    .line 653
    .line 654
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    invoke-static {v1, v0}, Landroidx/work/impl/utils/EnqueueUtilsKt;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    return-void

    .line 665
    :pswitch_f
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 668
    .line 669
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 670
    .line 671
    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    .line 672
    .line 673
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 678
    .line 679
    .line 680
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 681
    .line 682
    new-instance v2, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 683
    .line 684
    const/16 v3, 0xc

    .line 685
    .line 686
    invoke-direct {v2, v3}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 687
    .line 688
    .line 689
    const/4 v3, 0x0

    .line 690
    const/4 v4, 0x1

    .line 691
    invoke-static {v1, v4, v3, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    check-cast v1, Ljava/util/List;

    .line 696
    .line 697
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 702
    .line 703
    .line 704
    move-result v2

    .line 705
    if-eqz v2, :cond_13

    .line 706
    .line 707
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    check-cast v2, Ljava/lang/String;

    .line 712
    .line 713
    invoke-static {v0, v2}, Landroidx/work/impl/utils/EnqueueUtilsKt;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    goto :goto_f

    .line 717
    :cond_13
    return-void

    .line 718
    :pswitch_10
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast v1, Ljava/util/List;

    .line 721
    .line 722
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v0, Lorg/commonmark/node/Node;

    .line 725
    .line 726
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 731
    .line 732
    .line 733
    move-result v2

    .line 734
    if-eqz v2, :cond_14

    .line 735
    .line 736
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    check-cast v2, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    .line 741
    .line 742
    iget-object v3, v0, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 743
    .line 744
    invoke-virtual {v2, v3}, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->onConstraintChanged(Ljava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    goto :goto_10

    .line 748
    :cond_14
    return-void

    .line 749
    :pswitch_11
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 750
    .line 751
    check-cast v1, Lokhttp3/Dispatcher;

    .line 752
    .line 753
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 754
    .line 755
    check-cast v0, Landroidx/work/impl/StartStopToken;

    .line 756
    .line 757
    iget-object v1, v1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 758
    .line 759
    check-cast v1, Lcom/grack/nanojson/JsonBuilder;

    .line 760
    .line 761
    const/4 v2, 0x3

    .line 762
    invoke-virtual {v1, v0, v2}, Lcom/grack/nanojson/JsonBuilder;->stopWork(Landroidx/work/impl/StartStopToken;I)V

    .line 763
    .line 764
    .line 765
    return-void

    .line 766
    :pswitch_12
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 767
    .line 768
    check-cast v1, Ljava/lang/Runnable;

    .line 769
    .line 770
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 771
    .line 772
    move-object v2, v0

    .line 773
    check-cast v2, Landroidx/room/TransactionExecutor;

    .line 774
    .line 775
    :try_start_7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 776
    .line 777
    .line 778
    invoke-virtual {v2}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 779
    .line 780
    .line 781
    return-void

    .line 782
    :catchall_1
    move-exception v0

    .line 783
    invoke-virtual {v2}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 784
    .line 785
    .line 786
    throw v0

    .line 787
    :pswitch_13
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 788
    .line 789
    check-cast v1, Landroidx/core/content/res/CamUtils;

    .line 790
    .line 791
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 792
    .line 793
    check-cast v0, Landroid/graphics/Typeface;

    .line 794
    .line 795
    invoke-virtual {v1, v0}, Landroidx/core/content/res/CamUtils;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 796
    .line 797
    .line 798
    return-void

    .line 799
    :pswitch_14
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v1, Landroidx/compose/ui/platform/WrappedComposition;

    .line 802
    .line 803
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 804
    .line 805
    check-cast v0, Landroidx/lifecycle/Lifecycle;

    .line 806
    .line 807
    iget-boolean v2, v1, Landroidx/compose/ui/platform/WrappedComposition;->disposed:Z

    .line 808
    .line 809
    if-nez v2, :cond_15

    .line 810
    .line 811
    iput-object v0, v1, Landroidx/compose/ui/platform/WrappedComposition;->addedToLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 812
    .line 813
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 814
    .line 815
    .line 816
    :cond_15
    return-void

    .line 817
    :pswitch_15
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 818
    .line 819
    check-cast v1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 820
    .line 821
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 822
    .line 823
    check-cast v0, Landroid/util/LongSparseArray;

    .line 824
    .line 825
    invoke-static {v1, v0}, Landroidx/core/view/DisplayCompat;->doTranslation(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V

    .line 826
    .line 827
    .line 828
    return-void

    .line 829
    :pswitch_16
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 830
    .line 831
    check-cast v1, Landroidx/room/TransactionExecutor;

    .line 832
    .line 833
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 834
    .line 835
    check-cast v0, Ljava/lang/Runnable;

    .line 836
    .line 837
    :try_start_8
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 838
    .line 839
    .line 840
    invoke-virtual {v1}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 841
    .line 842
    .line 843
    return-void

    .line 844
    :catchall_2
    move-exception v0

    .line 845
    invoke-virtual {v1}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 846
    .line 847
    .line 848
    throw v0

    .line 849
    :pswitch_17
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 850
    .line 851
    check-cast v1, Landroidx/activity/ComponentActivity;

    .line 852
    .line 853
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 854
    .line 855
    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    .line 856
    .line 857
    iget-object v2, v1, Landroidx/core/app/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 858
    .line 859
    new-instance v3, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda12;

    .line 860
    .line 861
    invoke-direct {v3, v0, v1}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda12;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v2, v3}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 865
    .line 866
    .line 867
    return-void

    .line 868
    :pswitch_18
    invoke-direct {v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->run$androidx$work$impl$Processor$$ExternalSyntheticLambda2()V

    .line 869
    .line 870
    .line 871
    return-void

    .line 872
    nop

    .line 873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
