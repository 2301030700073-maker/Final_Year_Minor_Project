.class public final synthetic Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 14

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    check-cast v1, Lus/shandian/giga/service/DownloadManagerService;

    .line 10
    .line 11
    iget-object p0, v1, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroidx/collection/SparseArrayCompat;

    .line 12
    .line 13
    iget-object v0, v1, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_a

    .line 19
    .line 20
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lus/shandian/giga/get/DownloadMission;

    .line 23
    .line 24
    iget v2, p1, Landroid/os/Message;->what:I

    .line 25
    .line 26
    const/4 v8, -0x1

    .line 27
    const/4 v9, 0x3

    .line 28
    const/4 v10, 0x0

    .line 29
    if-eqz v2, :cond_f

    .line 30
    .line 31
    if-eq v2, v7, :cond_d

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/16 v4, 0x10

    .line 35
    .line 36
    const v5, 0x7f130385

    .line 37
    .line 38
    .line 39
    if-eq v2, v3, :cond_8

    .line 40
    .line 41
    if-eq v2, v9, :cond_1

    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_1
    iget-boolean v2, v1, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    .line 46
    .line 47
    if-eqz v2, :cond_7

    .line 48
    .line 49
    iget-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-static {p0}, Landroidx/collection/ArraySetKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 57
    .line 58
    move v3, v10

    .line 59
    :goto_0
    if-ge v3, v2, :cond_4

    .line 60
    .line 61
    iget-object v6, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 62
    .line 63
    aget-object v6, v6, v3

    .line 64
    .line 65
    if-ne v6, v0, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v3, v8

    .line 72
    :goto_1
    if-ltz v3, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    iget v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 76
    .line 77
    add-int/lit8 v3, v2, 0x1

    .line 78
    .line 79
    iput v3, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 80
    .line 81
    invoke-virtual {p0, v2, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v3, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 85
    .line 86
    if-nez v3, :cond_6

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const v6, 0x108008a

    .line 93
    .line 94
    .line 95
    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iput-object v3, v1, Lus/shandian/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    .line 102
    .line 103
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-direct {v3, v1, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 111
    .line 112
    .line 113
    iget-object v4, v1, Lus/shandian/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 119
    .line 120
    iput v6, v4, Landroid/app/Notification;->icon:I

    .line 121
    .line 122
    iget-object v4, v1, Lus/shandian/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    .line 123
    .line 124
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 125
    .line 126
    iput-object v3, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 127
    .line 128
    :cond_6
    iget-object v3, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 129
    .line 130
    const v4, 0x7f130112

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object v3, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 141
    .line 142
    iget-object v4, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 143
    .line 144
    invoke-virtual {v4}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 152
    .line 153
    new-instance v4, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 154
    .line 155
    invoke-direct {v4, v7}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 156
    .line 157
    .line 158
    iget-object v5, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 159
    .line 160
    invoke-virtual {v5}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iput-object v5, v4, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)V

    .line 171
    .line 172
    .line 173
    iget-object v3, v1, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 174
    .line 175
    iget-object v4, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 176
    .line 177
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v3, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    :goto_2
    invoke-virtual {v1, v10}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 185
    .line 186
    .line 187
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 188
    .line 189
    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->runMissions()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    invoke-virtual {v1, v2}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_6

    .line 197
    .line 198
    :cond_8
    iget-object v2, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 199
    .line 200
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    new-instance v3, Landroid/content/Intent;

    .line 205
    .line 206
    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 207
    .line 208
    invoke-direct {v3, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 215
    .line 216
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    iget-boolean v2, v1, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    .line 221
    .line 222
    if-eqz v2, :cond_c

    .line 223
    .line 224
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 225
    .line 226
    if-nez v2, :cond_9

    .line 227
    .line 228
    goto/16 :goto_4

    .line 229
    .line 230
    :cond_9
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 231
    .line 232
    if-nez v2, :cond_a

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 241
    .line 242
    .line 243
    iput-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    const v3, 0x1080082

    .line 250
    .line 251
    .line 252
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iput-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    .line 257
    .line 258
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    .line 259
    .line 260
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-direct {v2, v1, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 268
    .line 269
    .line 270
    iget-object v4, v1, Lus/shandian/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    .line 271
    .line 272
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 273
    .line 274
    .line 275
    iget-object v4, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 276
    .line 277
    iput v3, v4, Landroid/app/Notification;->icon:I

    .line 278
    .line 279
    new-instance v3, Landroid/content/Intent;

    .line 280
    .line 281
    const-class v5, Lus/shandian/giga/service/DownloadManagerService;

    .line 282
    .line 283
    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .line 285
    .line 286
    const-string v6, "org.schabi.newpipe.reset_download_finished"

    .line 287
    .line 288
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    const/high16 v12, 0xc000000

    .line 297
    .line 298
    invoke-static {v1, v6, v3, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    iput-object v3, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 303
    .line 304
    new-instance v3, Landroid/content/Intent;

    .line 305
    .line 306
    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .line 308
    .line 309
    const-string v4, "org.schabi.newpipe.open_downloads_finished"

    .line 310
    .line 311
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    invoke-static {v1, v4, v3, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 324
    .line 325
    iput-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 326
    .line 327
    :cond_a
    iget v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 328
    .line 329
    add-int/2addr v2, v7

    .line 330
    iput v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 331
    .line 332
    iget-object v3, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 333
    .line 334
    if-ne v2, v7, :cond_b

    .line 335
    .line 336
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 340
    .line 341
    const/4 v3, 0x0

    .line 342
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 343
    .line 344
    .line 345
    iget-object v12, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 346
    .line 347
    iget v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 348
    .line 349
    int-to-long v4, v2

    .line 350
    invoke-static {v1, v4, v5}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    const v2, 0x7f110002

    .line 355
    .line 356
    .line 357
    const/4 v3, 0x0

    .line 358
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v12, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    .line 363
    .line 364
    .line 365
    iget-object v12, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 366
    .line 367
    new-instance v13, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 368
    .line 369
    invoke-direct {v13, v7}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 370
    .line 371
    .line 372
    iget v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 373
    .line 374
    int-to-long v4, v2

    .line 375
    invoke-static {v1, v4, v5}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    const v2, 0x7f110002

    .line 380
    .line 381
    .line 382
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    iput-object v2, v13, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/Object;

    .line 391
    .line 392
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    iput-object v2, v13, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 397
    .line 398
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)V

    .line 399
    .line 400
    .line 401
    goto :goto_3

    .line 402
    :cond_b
    const/16 v2, 0xa

    .line 403
    .line 404
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 413
    .line 414
    new-instance v3, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 415
    .line 416
    invoke-direct {v3, v7}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 417
    .line 418
    .line 419
    iget-object v4, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 426
    .line 427
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)V

    .line 428
    .line 429
    .line 430
    iget-object v11, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 431
    .line 432
    iget v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 433
    .line 434
    int-to-long v4, v2

    .line 435
    invoke-static {v1, v4, v5}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    const v2, 0x7f110002

    .line 440
    .line 441
    .line 442
    const/4 v3, 0x0

    .line 443
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v11, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 448
    .line 449
    .line 450
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 451
    .line 452
    iget-object v3, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    .line 455
    .line 456
    .line 457
    :goto_3
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 458
    .line 459
    iget-object v3, v1, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 460
    .line 461
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    const/16 v4, 0x3e9

    .line 466
    .line 467
    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 468
    .line 469
    .line 470
    :cond_c
    :goto_4
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 471
    .line 472
    invoke-virtual {v2, v0}, Lus/shandian/giga/service/DownloadManager;->setFinished(Lus/shandian/giga/get/DownloadMission;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v10}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 476
    .line 477
    .line 478
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 479
    .line 480
    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->runMissions()Z

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    invoke-virtual {v1, v2}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    .line 485
    .line 486
    .line 487
    goto :goto_6

    .line 488
    :cond_d
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 489
    .line 490
    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->getRunningMissionsCount()I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-lez v2, :cond_e

    .line 495
    .line 496
    move v2, v7

    .line 497
    goto :goto_5

    .line 498
    :cond_e
    move v2, v10

    .line 499
    :goto_5
    invoke-virtual {v1, v2}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    .line 500
    .line 501
    .line 502
    goto :goto_6

    .line 503
    :cond_f
    invoke-virtual {v1, v7}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    .line 504
    .line 505
    .line 506
    :goto_6
    iget v2, p1, Landroid/os/Message;->what:I

    .line 507
    .line 508
    if-eq v2, v9, :cond_13

    .line 509
    .line 510
    iget-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    .line 511
    .line 512
    if-eqz v2, :cond_10

    .line 513
    .line 514
    invoke-static {p0}, Landroidx/collection/ArraySetKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 515
    .line 516
    .line 517
    :cond_10
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 518
    .line 519
    :goto_7
    if-ge v10, v2, :cond_12

    .line 520
    .line 521
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 522
    .line 523
    aget-object v3, v3, v10

    .line 524
    .line 525
    if-ne v3, v0, :cond_11

    .line 526
    .line 527
    move v8, v10

    .line 528
    goto :goto_8

    .line 529
    :cond_11
    add-int/lit8 v10, v10, 0x1

    .line 530
    .line 531
    goto :goto_7

    .line 532
    :cond_12
    :goto_8
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 533
    .line 534
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 535
    .line 536
    invoke-static {v2, v8, v0}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    if-ltz v0, :cond_13

    .line 541
    .line 542
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 543
    .line 544
    aget-object v3, v2, v0

    .line 545
    .line 546
    sget-object v4, Landroidx/collection/ArraySetKt;->DELETED$1:Ljava/lang/Object;

    .line 547
    .line 548
    if-eq v3, v4, :cond_13

    .line 549
    .line 550
    aput-object v4, v2, v0

    .line 551
    .line 552
    iput-boolean v7, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    .line 553
    .line 554
    :cond_13
    iget-object p0, v1, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 557
    .line 558
    .line 559
    move-result-object p0

    .line 560
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    if-eqz v0, :cond_14

    .line 565
    .line 566
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    check-cast v0, Landroid/os/Handler$Callback;

    .line 571
    .line 572
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 573
    .line 574
    .line 575
    goto :goto_9

    .line 576
    :cond_14
    :goto_a
    return v7

    .line 577
    :pswitch_0
    check-cast p0, Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 578
    .line 579
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->$r8$lambda$hwqn2ZMkGwWGxPzI0ba91qAvjnc(Lcom/google/android/exoplayer2/util/ListenerSet;Landroid/os/Message;)Z

    .line 580
    .line 581
    .line 582
    move-result p0

    .line 583
    return p0

    .line 584
    nop

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
