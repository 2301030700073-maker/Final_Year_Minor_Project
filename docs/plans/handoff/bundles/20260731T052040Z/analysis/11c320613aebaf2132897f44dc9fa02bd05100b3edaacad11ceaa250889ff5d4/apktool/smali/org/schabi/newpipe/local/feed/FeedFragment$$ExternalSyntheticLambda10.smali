.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 4
    .line 5
    const-string v1, "name"

    .line 6
    .line 7
    const-string/jumbo v2, "url"

    .line 8
    .line 9
    .line 10
    const-string v3, "service_id"

    .line 11
    .line 12
    const-string/jumbo v4, "uid"

    .line 13
    .line 14
    .line 15
    const v5, 0x101030e

    .line 16
    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x1

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    move-object/from16 v0, p1

    .line 26
    .line 27
    check-cast v0, Lorg/schabi/newpipe/extractor/Image;

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, -0x1

    .line 34
    if-ne v1, v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v2, :cond_0

    .line 41
    .line 42
    move v8, v9

    .line 43
    :cond_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :pswitch_0
    move-object/from16 v0, p1

    .line 49
    .line 50
    check-cast v0, Lkotlin/Pair;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    and-int/2addr v0, v6

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    move v8, v9

    .line 75
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :pswitch_1
    move-object/from16 v0, p1

    .line 81
    .line 82
    check-cast v0, Lkotlinx/serialization/json/JsonBuilder;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iput-boolean v9, v0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    .line 88
    .line 89
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 90
    .line 91
    return-object v0

    .line 92
    :pswitch_2
    move-object/from16 v0, p1

    .line 93
    .line 94
    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 100
    .line 101
    return-object v0

    .line 102
    :pswitch_3
    move-object/from16 v0, p1

    .line 103
    .line 104
    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object v0, v0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 110
    .line 111
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->linkHandler:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    new-instance v1, Lkotlin/Result$Failure;

    .line 124
    .line 125
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    move-object v0, v1

    .line 129
    :goto_0
    nop

    .line 130
    instance-of v1, v0, Lkotlin/Result$Failure;

    .line 131
    .line 132
    if-eqz v1, :cond_2

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    move-object v7, v0

    .line 136
    :goto_1
    check-cast v7, Ljava/lang/String;

    .line 137
    .line 138
    return-object v7

    .line 139
    :pswitch_4
    move-object/from16 v0, p1

    .line 140
    .line 141
    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object v0, v0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 147
    .line 148
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0

    .line 153
    :pswitch_5
    move-object/from16 v0, p1

    .line 154
    .line 155
    check-cast v0, Landroid/content/Context;

    .line 156
    .line 157
    sget-object v1, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 163
    .line 164
    const v2, 0x7f040185

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v2}, Lokio/Options$Companion;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v0, v5}, Lokio/Options$Companion;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    .line 176
    .line 177
    aput-object v2, v3, v8

    .line 178
    .line 179
    aput-object v0, v3, v9

    .line 180
    .line 181
    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 182
    .line 183
    .line 184
    return-object v1

    .line 185
    :pswitch_6
    move-object/from16 v0, p1

    .line 186
    .line 187
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    const-string v5, "SELECT * FROM subscriptions ORDER BY name COLLATE NOCASE ASC"

    .line 193
    .line 194
    invoke-interface {v0, v5}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    :try_start_1
    invoke-static {v5, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-static {v5, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-static {v5, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-static {v5, v1}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    const-string v4, "avatar_url"

    .line 215
    .line 216
    invoke-static {v5, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    const-string/jumbo v6, "subscriber_count"

    .line 221
    .line 222
    .line 223
    invoke-static {v5, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    const-string v8, "description"

    .line 228
    .line 229
    invoke-static {v5, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    const-string v9, "notification_mode"

    .line 234
    .line 235
    invoke-static {v5, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    new-instance v10, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .line 243
    .line 244
    :goto_2
    invoke-interface {v5}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 245
    .line 246
    .line 247
    move-result v11

    .line 248
    if-eqz v11, :cond_8

    .line 249
    .line 250
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 251
    .line 252
    .line 253
    move-result-wide v13

    .line 254
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 255
    .line 256
    .line 257
    move-result-wide v11

    .line 258
    long-to-int v15, v11

    .line 259
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    if-eqz v11, :cond_3

    .line 264
    .line 265
    move-object/from16 v16, v7

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_3
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    move-object/from16 v16, v11

    .line 273
    .line 274
    :goto_3
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    if-eqz v11, :cond_4

    .line 279
    .line 280
    move-object/from16 v17, v7

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_4
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    move-object/from16 v17, v11

    .line 288
    .line 289
    :goto_4
    invoke-interface {v5, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    if-eqz v11, :cond_5

    .line 294
    .line 295
    move-object/from16 v18, v7

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_5
    invoke-interface {v5, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v11

    .line 302
    move-object/from16 v18, v11

    .line 303
    .line 304
    :goto_5
    invoke-interface {v5, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-eqz v11, :cond_6

    .line 309
    .line 310
    move-object/from16 v19, v7

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_6
    invoke-interface {v5, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 314
    .line 315
    .line 316
    move-result-wide v11

    .line 317
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    move-object/from16 v19, v11

    .line 322
    .line 323
    :goto_6
    invoke-interface {v5, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 324
    .line 325
    .line 326
    move-result v11

    .line 327
    if-eqz v11, :cond_7

    .line 328
    .line 329
    move-object/from16 v20, v7

    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_7
    invoke-interface {v5, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    move-object/from16 v20, v11

    .line 337
    .line 338
    :goto_7
    invoke-interface {v5, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 339
    .line 340
    .line 341
    move-result-wide v11

    .line 342
    long-to-int v11, v11

    .line 343
    new-instance v12, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 344
    .line 345
    move/from16 v21, v11

    .line 346
    .line 347
    invoke-direct/range {v12 .. v21}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 351
    .line 352
    .line 353
    goto :goto_2

    .line 354
    :catchall_1
    move-exception v0

    .line 355
    goto :goto_8

    .line 356
    :cond_8
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 357
    .line 358
    .line 359
    return-object v10

    .line 360
    :goto_8
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 361
    .line 362
    .line 363
    throw v0

    .line 364
    :pswitch_7
    move-object/from16 v0, p1

    .line 365
    .line 366
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    const-string v1, "DELETE FROM stream_state"

    .line 372
    .line 373
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    :try_start_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 378
    .line 379
    .line 380
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 381
    .line 382
    .line 383
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 384
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 385
    .line 386
    .line 387
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    return-object v0

    .line 392
    :catchall_2
    move-exception v0

    .line 393
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 394
    .line 395
    .line 396
    throw v0

    .line 397
    :pswitch_8
    move-object/from16 v0, p1

    .line 398
    .line 399
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    const-string v1, "\n        DELETE FROM streams WHERE\n\n        NOT EXISTS (SELECT 1 FROM stream_history sh\n        WHERE sh.stream_id = streams.uid)\n\n        AND NOT EXISTS (SELECT 1 FROM playlist_stream_join ps\n        WHERE ps.stream_id = streams.uid)\n\n        AND NOT EXISTS (SELECT 1 FROM feed f\n        WHERE f.stream_id = streams.uid)\n        "

    .line 405
    .line 406
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    :try_start_3
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 411
    .line 412
    .line 413
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 414
    .line 415
    .line 416
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 417
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 418
    .line 419
    .line 420
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    return-object v0

    .line 425
    :catchall_3
    move-exception v0

    .line 426
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 427
    .line 428
    .line 429
    throw v0

    .line 430
    :pswitch_9
    move-object/from16 v0, p1

    .line 431
    .line 432
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    const-string v1, "\n        SELECT uid, name, is_thumbnail_permanent, thumbnail_stream_id, display_index,\n        (SELECT thumbnail_url FROM streams WHERE streams.uid = thumbnail_stream_id) AS thumbnail_url,\n\n        COALESCE(COUNT(playlist_id), 0) AS streamCount FROM playlists\n\n        LEFT JOIN playlist_stream_join\n        ON playlists.uid = playlist_id\n\n        GROUP BY uid\n        ORDER BY display_index\n        "

    .line 438
    .line 439
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .line 447
    .line 448
    :goto_9
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-eqz v2, :cond_10

    .line 453
    .line 454
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 455
    .line 456
    .line 457
    move-result-wide v11

    .line 458
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    if-eqz v2, :cond_9

    .line 463
    .line 464
    move-object v13, v7

    .line 465
    goto :goto_a

    .line 466
    :cond_9
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    move-object v13, v2

    .line 471
    :goto_a
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    if-eqz v2, :cond_a

    .line 476
    .line 477
    move-object v2, v7

    .line 478
    goto :goto_b

    .line 479
    :cond_a
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 480
    .line 481
    .line 482
    move-result-wide v2

    .line 483
    long-to-int v2, v2

    .line 484
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    :goto_b
    if-eqz v2, :cond_c

    .line 489
    .line 490
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_b

    .line 495
    .line 496
    move v2, v9

    .line 497
    goto :goto_c

    .line 498
    :cond_b
    move v2, v8

    .line 499
    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    move-object/from16 v16, v2

    .line 504
    .line 505
    goto :goto_d

    .line 506
    :catchall_4
    move-exception v0

    .line 507
    goto :goto_11

    .line 508
    :cond_c
    move-object/from16 v16, v7

    .line 509
    .line 510
    :goto_d
    const/4 v2, 0x3

    .line 511
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    if-eqz v3, :cond_d

    .line 516
    .line 517
    move-object/from16 v17, v7

    .line 518
    .line 519
    goto :goto_e

    .line 520
    :cond_d
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 521
    .line 522
    .line 523
    move-result-wide v2

    .line 524
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    move-object/from16 v17, v2

    .line 529
    .line 530
    :goto_e
    const/4 v2, 0x4

    .line 531
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    if-eqz v3, :cond_e

    .line 536
    .line 537
    move-object v15, v7

    .line 538
    goto :goto_f

    .line 539
    :cond_e
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 540
    .line 541
    .line 542
    move-result-wide v2

    .line 543
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    move-object v15, v2

    .line 548
    :goto_f
    const/4 v2, 0x5

    .line 549
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    if-eqz v3, :cond_f

    .line 554
    .line 555
    move-object v14, v7

    .line 556
    goto :goto_10

    .line 557
    :cond_f
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    move-object v14, v2

    .line 562
    :goto_10
    const/4 v2, 0x6

    .line 563
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 564
    .line 565
    .line 566
    move-result-wide v18

    .line 567
    new-instance v10, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 568
    .line 569
    invoke-direct/range {v10 .. v19}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;J)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 573
    .line 574
    .line 575
    goto :goto_9

    .line 576
    :cond_10
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 577
    .line 578
    .line 579
    return-object v0

    .line 580
    :goto_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 581
    .line 582
    .line 583
    throw v0

    .line 584
    :pswitch_a
    move-object/from16 v0, p1

    .line 585
    .line 586
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 587
    .line 588
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    const-string v5, "SELECT * FROM remote_playlists ORDER BY display_index"

    .line 592
    .line 593
    invoke-interface {v0, v5}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 594
    .line 595
    .line 596
    move-result-object v5

    .line 597
    :try_start_5
    invoke-static {v5, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    invoke-static {v5, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    invoke-static {v5, v1}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    invoke-static {v5, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    const-string/jumbo v4, "thumbnail_url"

    .line 614
    .line 615
    .line 616
    invoke-static {v5, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 617
    .line 618
    .line 619
    move-result v4

    .line 620
    const-string/jumbo v6, "uploader"

    .line 621
    .line 622
    .line 623
    invoke-static {v5, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    move-result v6

    .line 627
    const-string v8, "display_index"

    .line 628
    .line 629
    invoke-static {v5, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result v8

    .line 633
    const-string/jumbo v9, "stream_count"

    .line 634
    .line 635
    .line 636
    invoke-static {v5, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 637
    .line 638
    .line 639
    move-result v9

    .line 640
    new-instance v10, Ljava/util/ArrayList;

    .line 641
    .line 642
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .line 644
    .line 645
    :goto_12
    invoke-interface {v5}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 646
    .line 647
    .line 648
    move-result v11

    .line 649
    if-eqz v11, :cond_16

    .line 650
    .line 651
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 652
    .line 653
    .line 654
    move-result-wide v13

    .line 655
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 656
    .line 657
    .line 658
    move-result-wide v11

    .line 659
    long-to-int v15, v11

    .line 660
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 661
    .line 662
    .line 663
    move-result v11

    .line 664
    if-eqz v11, :cond_11

    .line 665
    .line 666
    move-object/from16 v16, v7

    .line 667
    .line 668
    goto :goto_13

    .line 669
    :cond_11
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v11

    .line 673
    move-object/from16 v16, v11

    .line 674
    .line 675
    :goto_13
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 676
    .line 677
    .line 678
    move-result v11

    .line 679
    if-eqz v11, :cond_12

    .line 680
    .line 681
    move-object/from16 v17, v7

    .line 682
    .line 683
    goto :goto_14

    .line 684
    :cond_12
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v11

    .line 688
    move-object/from16 v17, v11

    .line 689
    .line 690
    :goto_14
    invoke-interface {v5, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 691
    .line 692
    .line 693
    move-result v11

    .line 694
    if-eqz v11, :cond_13

    .line 695
    .line 696
    move-object/from16 v18, v7

    .line 697
    .line 698
    goto :goto_15

    .line 699
    :cond_13
    invoke-interface {v5, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v11

    .line 703
    move-object/from16 v18, v11

    .line 704
    .line 705
    :goto_15
    invoke-interface {v5, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 706
    .line 707
    .line 708
    move-result v11

    .line 709
    if-eqz v11, :cond_14

    .line 710
    .line 711
    move-object/from16 v19, v7

    .line 712
    .line 713
    goto :goto_16

    .line 714
    :cond_14
    invoke-interface {v5, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v11

    .line 718
    move-object/from16 v19, v11

    .line 719
    .line 720
    :goto_16
    invoke-interface {v5, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 721
    .line 722
    .line 723
    move-result-wide v20

    .line 724
    invoke-interface {v5, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 725
    .line 726
    .line 727
    move-result v11

    .line 728
    if-eqz v11, :cond_15

    .line 729
    .line 730
    move-object/from16 v22, v7

    .line 731
    .line 732
    goto :goto_17

    .line 733
    :cond_15
    invoke-interface {v5, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 734
    .line 735
    .line 736
    move-result-wide v11

    .line 737
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 738
    .line 739
    .line 740
    move-result-object v11

    .line 741
    move-object/from16 v22, v11

    .line 742
    .line 743
    :goto_17
    new-instance v12, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 744
    .line 745
    invoke-direct/range {v12 .. v22}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 749
    .line 750
    .line 751
    goto :goto_12

    .line 752
    :catchall_5
    move-exception v0

    .line 753
    goto :goto_18

    .line 754
    :cond_16
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 755
    .line 756
    .line 757
    return-object v10

    .line 758
    :goto_18
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 759
    .line 760
    .line 761
    throw v0

    .line 762
    :pswitch_b
    move-object/from16 v0, p1

    .line 763
    .line 764
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 765
    .line 766
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    .line 768
    .line 769
    const-string v1, "SELECT COUNT(*) FROM playlists"

    .line 770
    .line 771
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    :try_start_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    if-eqz v0, :cond_18

    .line 780
    .line 781
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    if-eqz v0, :cond_17

    .line 786
    .line 787
    goto :goto_19

    .line 788
    :cond_17
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 789
    .line 790
    .line 791
    move-result-wide v2

    .line 792
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 793
    .line 794
    .line 795
    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 796
    goto :goto_19

    .line 797
    :catchall_6
    move-exception v0

    .line 798
    goto :goto_1a

    .line 799
    :cond_18
    :goto_19
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 800
    .line 801
    .line 802
    return-object v7

    .line 803
    :goto_1a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 804
    .line 805
    .line 806
    throw v0

    .line 807
    :pswitch_c
    move-object/from16 v0, p1

    .line 808
    .line 809
    check-cast v0, Landroid/content/Context;

    .line 810
    .line 811
    sget-object v1, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 812
    .line 813
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    .line 815
    .line 816
    invoke-static {v0, v5}, Lokio/Options$Companion;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    return-object v0

    .line 821
    :pswitch_data_0
    .packed-switch 0x0
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
