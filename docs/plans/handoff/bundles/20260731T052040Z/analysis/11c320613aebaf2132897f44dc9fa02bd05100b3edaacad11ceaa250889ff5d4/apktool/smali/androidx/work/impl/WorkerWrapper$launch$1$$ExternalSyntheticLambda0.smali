.class public final synthetic Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 14
    .line 15
    check-cast v3, Ljava/util/List;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lorg/schabi/newpipe/database/LocalItem;

    .line 41
    .line 42
    instance-of v5, v3, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    check-cast v3, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 47
    .line 48
    iget-wide v5, v3, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    instance-of v5, v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    .line 52
    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    check-cast v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    .line 56
    .line 57
    iget-wide v5, v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    instance-of v5, v3, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 61
    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    check-cast v3, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 65
    .line 66
    iget-wide v5, v3, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamId:J

    .line 67
    .line 68
    :goto_1
    iget-object v3, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 71
    .line 72
    invoke-virtual {v3, v5, v6}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->getState(J)Lio/reactivex/rxjava3/core/Flowable;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    return-object v0

    .line 107
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 108
    .line 109
    check-cast v3, Ljava/lang/String;

    .line 110
    .line 111
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 122
    .line 123
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    const/16 v1, 0x16

    .line 126
    .line 127
    invoke-direct {v0, v3, v1}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    invoke-static {p0, v4, v2, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Ljava/lang/Number;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 146
    .line 147
    check-cast v3, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 148
    .line 149
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 150
    .line 151
    move-object v10, v0

    .line 152
    check-cast v10, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 153
    .line 154
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    int-to-long v7, v0

    .line 159
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    iget-object v0, v10, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 170
    .line 171
    const-string/jumbo v3, "streams"

    .line 172
    .line 173
    .line 174
    filled-new-array {v3}, [Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    new-instance v5, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;

    .line 179
    .line 180
    const/4 v6, 0x2

    .line 181
    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;-><init>(IJLjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v4, v3, v5}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_5

    .line 199
    .line 200
    new-array p0, v2, [Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 201
    .line 202
    aput-object v1, p0, v4

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_5
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 208
    .line 209
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 214
    .line 215
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    .line 216
    .line 217
    .line 218
    move-result-wide v5

    .line 219
    invoke-virtual {p0, v5, v6}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->getState(J)Lio/reactivex/rxjava3/core/Flowable;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    check-cast p0, Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_6

    .line 234
    .line 235
    new-array p0, v2, [Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 236
    .line 237
    aput-object v1, p0, v4

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_6
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    check-cast p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 245
    .line 246
    new-array v0, v2, [Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 247
    .line 248
    aput-object p0, v0, v4

    .line 249
    .line 250
    move-object p0, v0

    .line 251
    :goto_2
    return-object p0

    .line 252
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 253
    .line 254
    check-cast v3, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 255
    .line 256
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 259
    .line 260
    new-instance v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 261
    .line 262
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    .line 266
    .line 267
    .line 268
    move-result-wide v0

    .line 269
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0

    .line 274
    :pswitch_3
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 275
    .line 276
    check-cast v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    .line 277
    .line 278
    sget-object v0, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 279
    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->subscriptionDAO()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {v3}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;->getSubscriptionId()J

    .line 296
    .line 297
    .line 298
    move-result-wide v0

    .line 299
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 300
    .line 301
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 302
    .line 303
    const/16 v5, 0x12

    .line 304
    .line 305
    invoke-direct {v3, v0, v1, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 306
    .line 307
    .line 308
    invoke-static {p0, v2, v4, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    check-cast p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 313
    .line 314
    return-object p0

    .line 315
    :pswitch_4
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 316
    .line 317
    check-cast v3, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 318
    .line 319
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 320
    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 325
    .line 326
    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;

    .line 327
    .line 328
    const/4 v5, 0x2

    .line 329
    invoke-direct {v1, p0, v3, v5}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;I)V

    .line 330
    .line 331
    .line 332
    invoke-static {v0, v4, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    check-cast p0, Ljava/lang/Number;

    .line 337
    .line 338
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 339
    .line 340
    .line 341
    move-result p0

    .line 342
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    return-object p0

    .line 347
    :pswitch_5
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 348
    .line 349
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 350
    .line 351
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 352
    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 357
    .line 358
    new-instance v1, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 359
    .line 360
    const/16 v5, 0xb

    .line 361
    .line 362
    invoke-direct {v1, p0, v3, v5}, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 363
    .line 364
    .line 365
    invoke-static {v0, v4, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 369
    .line 370
    return-object p0

    .line 371
    :pswitch_6
    check-cast p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;

    .line 372
    .line 373
    check-cast v3, Landroid/net/Uri;

    .line 374
    .line 375
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->$r8$lambda$3OB_jRe3ORvzHRoZN3QhaM1u9uE(Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    return-object p0

    .line 380
    :pswitch_7
    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution;

    .line 381
    .line 382
    check-cast v3, Landroidx/work/impl/WorkerWrapper;

    .line 383
    .line 384
    instance-of v0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    .line 385
    .line 386
    sget-object v5, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 387
    .line 388
    const-string v6, "Worker result FAILURE for "

    .line 389
    .line 390
    if-eqz v0, :cond_f

    .line 391
    .line 392
    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    .line 393
    .line 394
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;->result:Landroidx/work/ListenableWorker$Result;

    .line 395
    .line 396
    iget-object v0, v3, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 397
    .line 398
    iget-object v1, v3, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    iget-object v8, v3, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 405
    .line 406
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/impl/model/WorkProgressDao_Impl;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    iget-object v8, v8, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 414
    .line 415
    new-instance v9, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 416
    .line 417
    const/16 v10, 0x9

    .line 418
    .line 419
    invoke-direct {v9, v1, v10}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 420
    .line 421
    .line 422
    invoke-static {v8, v4, v2, v9}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    if-nez v7, :cond_7

    .line 426
    .line 427
    goto :goto_3

    .line 428
    :cond_7
    sget-object v8, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 429
    .line 430
    if-ne v7, v8, :cond_e

    .line 431
    .line 432
    iget-object v7, v3, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 433
    .line 434
    iget-object v8, v3, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 435
    .line 436
    instance-of v9, p0, Landroidx/work/ListenableWorker$Result$Success;

    .line 437
    .line 438
    if-eqz v9, :cond_b

    .line 439
    .line 440
    sget-object v6, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 441
    .line 442
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    new-instance v10, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string v11, "Worker result SUCCESS for "

    .line 449
    .line 450
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v8

    .line 460
    invoke-virtual {v9, v6, v8}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v7}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 464
    .line 465
    .line 466
    move-result v6

    .line 467
    if-eqz v6, :cond_9

    .line 468
    .line 469
    invoke-virtual {v3}, Landroidx/work/impl/WorkerWrapper;->resetPeriodic()V

    .line 470
    .line 471
    .line 472
    :cond_8
    :goto_3
    move v2, v4

    .line 473
    goto/16 :goto_5

    .line 474
    .line 475
    :cond_9
    sget-object v6, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 476
    .line 477
    invoke-virtual {v0, v6, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    check-cast p0, Landroidx/work/ListenableWorker$Result$Success;

    .line 481
    .line 482
    iget-object p0, p0, Landroidx/work/ListenableWorker$Result$Success;->mOutputData:Landroidx/work/Data;

    .line 483
    .line 484
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    iget-object v6, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 488
    .line 489
    new-instance v7, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 490
    .line 491
    const/4 v8, 0x7

    .line 492
    invoke-direct {v7, p0, v1, v8}, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 493
    .line 494
    .line 495
    invoke-static {v6, v4, v2, v7}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    iget-object p0, v3, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/SystemClock;

    .line 499
    .line 500
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 504
    .line 505
    .line 506
    move-result-wide v6

    .line 507
    iget-object p0, v3, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao_Impl;

    .line 508
    .line 509
    invoke-virtual {p0, v1}, Landroidx/work/impl/model/DependencyDao_Impl;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-eqz v3, :cond_8

    .line 522
    .line 523
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    check-cast v3, Ljava/lang/String;

    .line 528
    .line 529
    invoke-virtual {v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    sget-object v9, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    .line 534
    .line 535
    if-ne v8, v9, :cond_a

    .line 536
    .line 537
    iget-object v8, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 538
    .line 539
    new-instance v9, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 540
    .line 541
    const/4 v10, 0x5

    .line 542
    invoke-direct {v9, v3, v10}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 543
    .line 544
    .line 545
    invoke-static {v8, v2, v4, v9}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v8

    .line 549
    check-cast v8, Ljava/lang/Boolean;

    .line 550
    .line 551
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 552
    .line 553
    .line 554
    move-result v8

    .line 555
    if-eqz v8, :cond_a

    .line 556
    .line 557
    sget-object v8, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 558
    .line 559
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 560
    .line 561
    .line 562
    move-result-object v9

    .line 563
    const-string v10, "Setting status to enqueued for "

    .line 564
    .line 565
    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v10

    .line 569
    invoke-virtual {v9, v8, v10}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v5, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v3, v6, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueueTime(Ljava/lang/String;J)V

    .line 576
    .line 577
    .line 578
    goto :goto_4

    .line 579
    :cond_b
    instance-of v0, p0, Landroidx/work/ListenableWorker$Result$Retry;

    .line 580
    .line 581
    if-eqz v0, :cond_c

    .line 582
    .line 583
    sget-object p0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 584
    .line 585
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    const-string v4, "Worker result RETRY for "

    .line 592
    .line 593
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    invoke-virtual {v0, p0, v1}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    const/16 p0, -0x100

    .line 607
    .line 608
    invoke-virtual {v3, p0}, Landroidx/work/impl/WorkerWrapper;->reschedule(I)V

    .line 609
    .line 610
    .line 611
    goto :goto_5

    .line 612
    :cond_c
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 613
    .line 614
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v7}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-eqz v0, :cond_d

    .line 638
    .line 639
    invoke-virtual {v3}, Landroidx/work/impl/WorkerWrapper;->resetPeriodic()V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_3

    .line 643
    .line 644
    :cond_d
    invoke-virtual {v3, p0}, Landroidx/work/impl/WorkerWrapper;->setFailed(Landroidx/work/ListenableWorker$Result;)V

    .line 645
    .line 646
    .line 647
    goto/16 :goto_3

    .line 648
    .line 649
    :cond_e
    invoke-virtual {v7}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 650
    .line 651
    .line 652
    move-result p0

    .line 653
    if-nez p0, :cond_8

    .line 654
    .line 655
    const/16 p0, -0x200

    .line 656
    .line 657
    invoke-virtual {v3, p0}, Landroidx/work/impl/WorkerWrapper;->reschedule(I)V

    .line 658
    .line 659
    .line 660
    :goto_5
    move v4, v2

    .line 661
    goto/16 :goto_6

    .line 662
    .line 663
    :cond_f
    instance-of v0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 664
    .line 665
    if-eqz v0, :cond_11

    .line 666
    .line 667
    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 668
    .line 669
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;->result:Landroidx/work/ListenableWorker$Result;

    .line 670
    .line 671
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 675
    .line 676
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    .line 681
    .line 682
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    iget-object v5, v3, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 686
    .line 687
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    iget-object v0, v3, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 698
    .line 699
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    if-eqz v0, :cond_10

    .line 704
    .line 705
    invoke-virtual {v3}, Landroidx/work/impl/WorkerWrapper;->resetPeriodic()V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_6

    .line 709
    .line 710
    :cond_10
    invoke-virtual {v3, p0}, Landroidx/work/impl/WorkerWrapper;->setFailed(Landroidx/work/ListenableWorker$Result;)V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_6

    .line 714
    .line 715
    :cond_11
    instance-of v0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 716
    .line 717
    if-eqz v0, :cond_14

    .line 718
    .line 719
    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 720
    .line 721
    iget p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;->reason:I

    .line 722
    .line 723
    iget-object v0, v3, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 724
    .line 725
    iget-object v1, v3, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 726
    .line 727
    iget-object v6, v3, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 728
    .line 729
    iget-object v7, v6, Landroidx/work/impl/model/WorkSpec;->backOffOnSystemInterruptions:Ljava/lang/Boolean;

    .line 730
    .line 731
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 732
    .line 733
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v7

    .line 737
    if-eqz v7, :cond_12

    .line 738
    .line 739
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 740
    .line 741
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    const-string v5, "Worker "

    .line 748
    .line 749
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    iget-object v5, v6, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 753
    .line 754
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v5, " was interrupted. Backing off."

    .line 758
    .line 759
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v4

    .line 766
    invoke-virtual {v1, v0, v4}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3, p0}, Landroidx/work/impl/WorkerWrapper;->reschedule(I)V

    .line 770
    .line 771
    .line 772
    goto :goto_5

    .line 773
    :cond_12
    invoke-virtual {v0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    const-string v6, " is "

    .line 778
    .line 779
    const-string v7, "Status for "

    .line 780
    .line 781
    if-eqz v3, :cond_13

    .line 782
    .line 783
    invoke-virtual {v3}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 784
    .line 785
    .line 786
    move-result v8

    .line 787
    if-nez v8, :cond_13

    .line 788
    .line 789
    sget-object v4, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 790
    .line 791
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 792
    .line 793
    .line 794
    move-result-object v8

    .line 795
    new-instance v9, Ljava/lang/StringBuilder;

    .line 796
    .line 797
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    const-string v3, "; not doing any work and rescheduling for later execution"

    .line 810
    .line 811
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v3

    .line 818
    invoke-virtual {v8, v4, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v5, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setStopReason(Ljava/lang/String;I)V

    .line 825
    .line 826
    .line 827
    const-wide/16 v3, -0x1

    .line 828
    .line 829
    invoke-virtual {v0, v1, v3, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(Ljava/lang/String;J)V

    .line 830
    .line 831
    .line 832
    goto/16 :goto_5

    .line 833
    .line 834
    :cond_13
    sget-object p0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 835
    .line 836
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    const-string v1, " ; not doing any work"

    .line 855
    .line 856
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    invoke-virtual {v0, p0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    goto/16 :goto_3

    .line 867
    .line 868
    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    goto :goto_7

    .line 873
    :cond_14
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 874
    .line 875
    .line 876
    :goto_7
    return-object v1

    .line 877
    :pswitch_data_0
    .packed-switch 0x0
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
