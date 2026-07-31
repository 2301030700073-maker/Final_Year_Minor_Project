.class public final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    const-string v4, "org.schabi.newpipe"

    .line 8
    .line 9
    const/16 v5, 0xa

    .line 10
    .line 11
    iget-object v0, v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v1, p1

    .line 17
    .line 18
    check-cast v1, Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v6, Landroid/net/Uri$Builder;

    .line 52
    .line 53
    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const-string v7, "history"

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iget-wide v7, v5, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    .line 70
    .line 71
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object v5, v5, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 91
    .line 92
    invoke-virtual {v5}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v5}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    sget-object v6, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    .line 101
    .line 102
    invoke-virtual {v5}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {v5}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;->imageUriOrNullIfDisabled(Ljava/lang/String;)Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 114
    .line 115
    new-instance v7, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v12, 0x0

    .line 119
    const/4 v14, 0x0

    .line 120
    const/4 v15, 0x0

    .line 121
    invoke-direct/range {v7 .. v15}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v5, v7, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    return-object v2

    .line 132
    :pswitch_0
    move-object/from16 v1, p1

    .line 133
    .line 134
    check-cast v1, Ljava/util/List;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    new-instance v3, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_1

    .line 157
    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    instance-of v5, v4, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 168
    .line 169
    invoke-interface {v4}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getUid()J

    .line 170
    .line 171
    .line 172
    move-result-wide v6

    .line 173
    invoke-static {v6, v7, v5}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->buildLocalPlaylistItemMediaId(JZ)Landroid/net/Uri$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-interface {v4}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getOrderingName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    sget-object v5, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    .line 193
    .line 194
    invoke-interface {v4}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getThumbnailUrl()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-static {v4}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;->imageUriOrNullIfDisabled(Ljava/lang/String;)Landroid/net/Uri;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    new-instance v13, Landroid/os/Bundle;

    .line 206
    .line 207
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 208
    .line 209
    .line 210
    iget-object v4, v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 211
    .line 212
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    const v5, 0x7f1304e9

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    const-string v5, "android.media.browse.CONTENT_STYLE_GROUP_TITLE_HINT"

    .line 224
    .line 225
    invoke-virtual {v13, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance v4, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 229
    .line 230
    new-instance v6, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 231
    .line 232
    const/4 v9, 0x0

    .line 233
    const/4 v10, 0x0

    .line 234
    const/4 v11, 0x0

    .line 235
    const/4 v14, 0x0

    .line 236
    invoke-direct/range {v6 .. v14}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {v4, v6, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_1
    return-object v3

    .line 247
    :pswitch_1
    move-object/from16 v1, p1

    .line 248
    .line 249
    check-cast v1, Lorg/schabi/newpipe/extractor/search/SearchInfo;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    new-instance v5, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    if-eqz v6, :cond_b

    .line 275
    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    check-cast v6, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    new-instance v7, Landroid/net/Uri$Builder;

    .line 286
    .line 287
    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    const-string v8, "item"

    .line 298
    .line 299
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/InfoItem;->getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    const/4 v10, 0x0

    .line 315
    if-eqz v9, :cond_5

    .line 316
    .line 317
    if-eq v9, v2, :cond_4

    .line 318
    .line 319
    if-ne v9, v3, :cond_3

    .line 320
    .line 321
    const-string v8, "channel"

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_3
    const-string v0, "Unexpected value: "

    .line 325
    .line 326
    invoke-static {v8, v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    move-object v5, v10

    .line 330
    goto/16 :goto_8

    .line 331
    .line 332
    :cond_4
    const-string v8, "playlist"

    .line 333
    .line 334
    goto :goto_3

    .line 335
    :cond_5
    const-string v8, "stream"

    .line 336
    .line 337
    :goto_3
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    const-string v8, "url"

    .line 354
    .line 355
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v12

    .line 374
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v13

    .line 381
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/InfoItem;->getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    if-nez v7, :cond_6

    .line 386
    .line 387
    const/4 v7, -0x1

    .line 388
    goto :goto_4

    .line 389
    :cond_6
    sget-object v8, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 390
    .line 391
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    aget v7, v8, v7

    .line 396
    .line 397
    :goto_4
    if-eq v7, v2, :cond_9

    .line 398
    .line 399
    if-eq v7, v3, :cond_8

    .line 400
    .line 401
    const/4 v8, 0x3

    .line 402
    if-eq v7, v8, :cond_7

    .line 403
    .line 404
    goto :goto_7

    .line 405
    :cond_7
    move-object v7, v6

    .line 406
    check-cast v7, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 407
    .line 408
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getDescription()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    :goto_5
    move-object v14, v7

    .line 413
    goto :goto_6

    .line 414
    :cond_8
    move-object v7, v6

    .line 415
    check-cast v7, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    .line 416
    .line 417
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->getUploaderName()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v7

    .line 421
    goto :goto_5

    .line 422
    :cond_9
    move-object v7, v6

    .line 423
    check-cast v7, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 424
    .line 425
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    goto :goto_5

    .line 430
    :goto_6
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    invoke-static {v6}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    if-eqz v6, :cond_a

    .line 442
    .line 443
    sget-object v7, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;

    .line 444
    .line 445
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    invoke-static {v6}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;->imageUriOrNullIfDisabled(Ljava/lang/String;)Landroid/net/Uri;

    .line 449
    .line 450
    .line 451
    move-result-object v10

    .line 452
    :cond_a
    move-object/from16 v17, v10

    .line 453
    .line 454
    new-instance v10, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 455
    .line 456
    new-instance v11, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 457
    .line 458
    const/4 v15, 0x0

    .line 459
    const/16 v16, 0x0

    .line 460
    .line 461
    const/16 v18, 0x0

    .line 462
    .line 463
    const/16 v19, 0x0

    .line 464
    .line 465
    invoke-direct/range {v11 .. v19}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 466
    .line 467
    .line 468
    invoke-direct {v10, v11, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 469
    .line 470
    .line 471
    :goto_7
    if-eqz v10, :cond_2

    .line 472
    .line 473
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    goto/16 :goto_2

    .line 477
    .line 478
    :cond_b
    :goto_8
    return-object v5

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
