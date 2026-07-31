.class public final Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultMediaMetadataProvider"
.end annotation


# instance fields
.field private final mediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private final metadataExtrasPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;->mediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p2, ""

    .line 10
    .line 11
    :goto_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;->metadataExtrasPrefix:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getMetadata(Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$100()Landroid/support/v4/media/MediaMetadataCompat;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v0, "android.media.metadata.ADVERTISEMENT"

    .line 30
    .line 31
    const-wide/16 v3, 0x1

    .line 32
    .line 33
    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->isCurrentMediaItemDynamic()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-wide/16 v3, -0x1

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    cmp-long v0, v5, v7

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    :goto_0
    move-wide v5, v3

    .line 64
    :goto_1
    const-string v0, "android.media.metadata.DURATION"

    .line 65
    .line 66
    invoke-virtual {v2, v0, v5, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;->mediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 70
    .line 71
    iget-object v5, v0, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 72
    .line 73
    iget-object v0, v5, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroid/support/v4/media/session/IMediaSession;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const/4 v7, 0x0

    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroid/support/v4/media/session/IMediaSession;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaSession;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 87
    .line 88
    .line 89
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto/16 :goto_5

    .line 91
    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v6, "MediaControllerCompat"

    .line 94
    .line 95
    const-string v8, "Dead object in getPlaybackState."

    .line 96
    .line 97
    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v0, v5, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getCustomActions(Landroid/media/session/PlaybackState;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-eqz v5, :cond_7

    .line 113
    .line 114
    new-instance v6, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_6

    .line 132
    .line 133
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    if-eqz v8, :cond_5

    .line 138
    .line 139
    check-cast v8, Landroid/media/session/PlaybackState$CustomAction;

    .line 140
    .line 141
    invoke-static {v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getExtras(Landroid/media/session/PlaybackState$CustomAction;)Landroid/os/Bundle;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 146
    .line 147
    .line 148
    new-instance v10, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 149
    .line 150
    invoke-static {v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getAction(Landroid/media/session/PlaybackState$CustomAction;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-static {v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getName(Landroid/media/session/PlaybackState$CustomAction;)Ljava/lang/CharSequence;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    invoke-static {v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getIcon(Landroid/media/session/PlaybackState$CustomAction;)I

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    invoke-direct {v10, v11, v12, v13, v9}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    .line 163
    .line 164
    .line 165
    iput-object v8, v10, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mCustomActionFwk:Landroid/media/session/PlaybackState$CustomAction;

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    move-object v10, v7

    .line 169
    :goto_3
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_6
    move-object/from16 v24, v6

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_7
    move-object/from16 v24, v7

    .line 177
    .line 178
    :goto_4
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api22Impl;->getExtras(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;

    .line 179
    .line 180
    .line 181
    move-result-object v27

    .line 182
    invoke-static/range {v27 .. v27}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 183
    .line 184
    .line 185
    new-instance v11, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 186
    .line 187
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getState(Landroid/media/session/PlaybackState;)I

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getPosition(Landroid/media/session/PlaybackState;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v13

    .line 195
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getBufferedPosition(Landroid/media/session/PlaybackState;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v15

    .line 199
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getPlaybackSpeed(Landroid/media/session/PlaybackState;)F

    .line 200
    .line 201
    .line 202
    move-result v17

    .line 203
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getActions(Landroid/media/session/PlaybackState;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v18

    .line 207
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getErrorMessage(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;

    .line 208
    .line 209
    .line 210
    move-result-object v21

    .line 211
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getLastPositionUpdateTime(Landroid/media/session/PlaybackState;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v22

    .line 215
    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;->getActiveQueueItemId(Landroid/media/session/PlaybackState;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v25

    .line 219
    const/16 v20, 0x0

    .line 220
    .line 221
    invoke-direct/range {v11 .. v27}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/ArrayList;JLandroid/os/Bundle;)V

    .line 222
    .line 223
    .line 224
    iput-object v0, v11, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateFwk:Landroid/media/session/PlaybackState;

    .line 225
    .line 226
    move-object v0, v11

    .line 227
    goto :goto_5

    .line 228
    :cond_8
    move-object v0, v7

    .line 229
    :goto_5
    iget-wide v5, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    .line 230
    .line 231
    cmp-long v0, v5, v3

    .line 232
    .line 233
    iget-object v3, v2, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    .line 234
    .line 235
    if-eqz v0, :cond_1d

    .line 236
    .line 237
    iget-object v0, v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;->mediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueue()Ljava/util/ArrayList;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const/4 v4, 0x0

    .line 244
    :goto_6
    if-eqz v0, :cond_1d

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-ge v4, v8, :cond_1d

    .line 251
    .line 252
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    check-cast v8, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 257
    .line 258
    iget-wide v9, v8, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mId:J

    .line 259
    .line 260
    cmp-long v9, v9, v5

    .line 261
    .line 262
    if-nez v9, :cond_1c

    .line 263
    .line 264
    iget-object v0, v8, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 265
    .line 266
    iget-object v4, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    .line 267
    .line 268
    if-eqz v4, :cond_15

    .line 269
    .line 270
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    :cond_9
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eqz v6, :cond_15

    .line 283
    .line 284
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    check-cast v6, Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    instance-of v9, v8, Ljava/lang/String;

    .line 295
    .line 296
    if-eqz v9, :cond_a

    .line 297
    .line 298
    new-instance v9, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    iget-object v10, v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;->metadataExtrasPrefix:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v9, v10, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    check-cast v8, Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v2, v6, v8}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_a
    instance-of v9, v8, Ljava/lang/CharSequence;

    .line 316
    .line 317
    const-string v10, "The "

    .line 318
    .line 319
    if-eqz v9, :cond_d

    .line 320
    .line 321
    new-instance v9, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    iget-object v11, v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;->metadataExtrasPrefix:Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {v9, v11, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    check-cast v8, Ljava/lang/CharSequence;

    .line 333
    .line 334
    sget-object v9, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    .line 335
    .line 336
    invoke-virtual {v9, v6}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    if-eqz v11, :cond_c

    .line 341
    .line 342
    invoke-virtual {v9, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    check-cast v9, Ljava/lang/Integer;

    .line 347
    .line 348
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    const/4 v11, 0x1

    .line 353
    if-ne v9, v11, :cond_b

    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_b
    const-string v0, " key cannot be used to put a CharSequence"

    .line 357
    .line 358
    invoke-static {v10, v6, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-object v7

    .line 366
    :cond_c
    :goto_8
    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_d
    instance-of v9, v8, Ljava/lang/Long;

    .line 371
    .line 372
    if-eqz v9, :cond_e

    .line 373
    .line 374
    new-instance v9, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    iget-object v10, v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;->metadataExtrasPrefix:Ljava/lang/String;

    .line 380
    .line 381
    invoke-static {v9, v10, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    check-cast v8, Ljava/lang/Long;

    .line 386
    .line 387
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 388
    .line 389
    .line 390
    move-result-wide v8

    .line 391
    invoke-virtual {v2, v6, v8, v9}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)V

    .line 392
    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_e
    instance-of v9, v8, Ljava/lang/Integer;

    .line 396
    .line 397
    if-eqz v9, :cond_f

    .line 398
    .line 399
    new-instance v9, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    iget-object v10, v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;->metadataExtrasPrefix:Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v9, v10, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    check-cast v8, Ljava/lang/Integer;

    .line 411
    .line 412
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    int-to-long v8, v8

    .line 417
    invoke-virtual {v2, v6, v8, v9}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_7

    .line 421
    .line 422
    :cond_f
    instance-of v9, v8, Landroid/graphics/Bitmap;

    .line 423
    .line 424
    if-eqz v9, :cond_10

    .line 425
    .line 426
    new-instance v9, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    iget-object v10, v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;->metadataExtrasPrefix:Ljava/lang/String;

    .line 432
    .line 433
    invoke-static {v9, v10, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    check-cast v8, Landroid/graphics/Bitmap;

    .line 438
    .line 439
    invoke-virtual {v2, v6, v8}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_7

    .line 443
    .line 444
    :cond_10
    instance-of v9, v8, Landroid/support/v4/media/RatingCompat;

    .line 445
    .line 446
    if-eqz v9, :cond_9

    .line 447
    .line 448
    new-instance v9, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    iget-object v11, v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;->metadataExtrasPrefix:Ljava/lang/String;

    .line 454
    .line 455
    invoke-static {v9, v11, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    check-cast v8, Landroid/support/v4/media/RatingCompat;

    .line 460
    .line 461
    sget-object v9, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    .line 462
    .line 463
    invoke-virtual {v9, v6}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v11

    .line 467
    if-eqz v11, :cond_12

    .line 468
    .line 469
    invoke-virtual {v9, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v9

    .line 473
    check-cast v9, Ljava/lang/Integer;

    .line 474
    .line 475
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    const/4 v11, 0x3

    .line 480
    if-ne v9, v11, :cond_11

    .line 481
    .line 482
    goto :goto_9

    .line 483
    :cond_11
    const-string v0, " key cannot be used to put a Rating"

    .line 484
    .line 485
    invoke-static {v10, v6, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    return-object v7

    .line 493
    :cond_12
    :goto_9
    iget-object v9, v8, Landroid/support/v4/media/RatingCompat;->mRatingObj:Landroid/media/Rating;

    .line 494
    .line 495
    if-nez v9, :cond_14

    .line 496
    .line 497
    invoke-virtual {v8}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    iget v10, v8, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    .line 502
    .line 503
    if-eqz v9, :cond_13

    .line 504
    .line 505
    packed-switch v10, :pswitch_data_0

    .line 506
    .line 507
    .line 508
    move-object v8, v7

    .line 509
    goto :goto_b

    .line 510
    :pswitch_0
    invoke-virtual {v8}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    .line 511
    .line 512
    .line 513
    move-result v9

    .line 514
    invoke-static {v9}, Landroid/support/v4/media/RatingCompat$Api19Impl;->newPercentageRating(F)Landroid/media/Rating;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    iput-object v9, v8, Landroid/support/v4/media/RatingCompat;->mRatingObj:Landroid/media/Rating;

    .line 519
    .line 520
    goto :goto_a

    .line 521
    :pswitch_1
    invoke-virtual {v8}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    .line 522
    .line 523
    .line 524
    move-result v9

    .line 525
    invoke-static {v10, v9}, Landroid/support/v4/media/RatingCompat$Api19Impl;->newStarRating(IF)Landroid/media/Rating;

    .line 526
    .line 527
    .line 528
    move-result-object v9

    .line 529
    iput-object v9, v8, Landroid/support/v4/media/RatingCompat;->mRatingObj:Landroid/media/Rating;

    .line 530
    .line 531
    goto :goto_a

    .line 532
    :pswitch_2
    invoke-virtual {v8}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    .line 533
    .line 534
    .line 535
    move-result v9

    .line 536
    invoke-static {v9}, Landroid/support/v4/media/RatingCompat$Api19Impl;->newThumbRating(Z)Landroid/media/Rating;

    .line 537
    .line 538
    .line 539
    move-result-object v9

    .line 540
    iput-object v9, v8, Landroid/support/v4/media/RatingCompat;->mRatingObj:Landroid/media/Rating;

    .line 541
    .line 542
    goto :goto_a

    .line 543
    :pswitch_3
    invoke-virtual {v8}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    .line 544
    .line 545
    .line 546
    move-result v9

    .line 547
    invoke-static {v9}, Landroid/support/v4/media/RatingCompat$Api19Impl;->newHeartRating(Z)Landroid/media/Rating;

    .line 548
    .line 549
    .line 550
    move-result-object v9

    .line 551
    iput-object v9, v8, Landroid/support/v4/media/RatingCompat;->mRatingObj:Landroid/media/Rating;

    .line 552
    .line 553
    goto :goto_a

    .line 554
    :cond_13
    invoke-static {v10}, Landroid/support/v4/media/RatingCompat$Api19Impl;->newUnratedRating(I)Landroid/media/Rating;

    .line 555
    .line 556
    .line 557
    move-result-object v9

    .line 558
    iput-object v9, v8, Landroid/support/v4/media/RatingCompat;->mRatingObj:Landroid/media/Rating;

    .line 559
    .line 560
    :cond_14
    :goto_a
    iget-object v8, v8, Landroid/support/v4/media/RatingCompat;->mRatingObj:Landroid/media/Rating;

    .line 561
    .line 562
    :goto_b
    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_7

    .line 566
    .line 567
    :cond_15
    iget-object v1, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 568
    .line 569
    if-eqz v1, :cond_16

    .line 570
    .line 571
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    const-string v4, "android.media.metadata.TITLE"

    .line 576
    .line 577
    invoke-virtual {v2, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    .line 581
    .line 582
    invoke-virtual {v2, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    :cond_16
    iget-object v1, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    .line 586
    .line 587
    if-eqz v1, :cond_17

    .line 588
    .line 589
    const-string v4, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 590
    .line 591
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-virtual {v2, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    :cond_17
    iget-object v1, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    .line 599
    .line 600
    if-eqz v1, :cond_18

    .line 601
    .line 602
    const-string v4, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 603
    .line 604
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    invoke-virtual {v2, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    :cond_18
    iget-object v1, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 612
    .line 613
    if-eqz v1, :cond_19

    .line 614
    .line 615
    const-string v4, "android.media.metadata.DISPLAY_ICON"

    .line 616
    .line 617
    invoke-virtual {v2, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 618
    .line 619
    .line 620
    :cond_19
    iget-object v1, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    .line 621
    .line 622
    if-eqz v1, :cond_1a

    .line 623
    .line 624
    const-string v4, "android.media.metadata.DISPLAY_ICON_URI"

    .line 625
    .line 626
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-virtual {v2, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    :cond_1a
    iget-object v1, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    .line 634
    .line 635
    if-eqz v1, :cond_1b

    .line 636
    .line 637
    const-string v4, "android.media.metadata.MEDIA_ID"

    .line 638
    .line 639
    invoke-virtual {v2, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    :cond_1b
    iget-object v0, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    .line 643
    .line 644
    if-eqz v0, :cond_1d

    .line 645
    .line 646
    const-string v1, "android.media.metadata.MEDIA_URI"

    .line 647
    .line 648
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    goto :goto_c

    .line 656
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    .line 657
    .line 658
    goto/16 :goto_6

    .line 659
    .line 660
    :cond_1d
    :goto_c
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 661
    .line 662
    invoke-direct {v0, v3}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    .line 663
    .line 664
    .line 665
    return-object v0

    .line 666
    nop

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic sameAs(Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/tools/r8/RecordTag;->$default$sameAs(Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/MediaMetadataCompat;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
