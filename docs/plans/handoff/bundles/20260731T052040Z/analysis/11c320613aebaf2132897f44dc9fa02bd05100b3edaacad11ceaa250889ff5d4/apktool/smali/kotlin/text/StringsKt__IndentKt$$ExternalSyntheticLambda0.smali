.class public final synthetic Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 82

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x2

    .line 7
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    iget-object v0, v0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v1, p1

    .line 17
    .line 18
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v2, "\n        SELECT * FROM subscriptions\n\n        WHERE name LIKE \'%\' || ? || \'%\'\n\n        ORDER BY name COLLATE NOCASE ASC\n        "

    .line 24
    .line 25
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :try_start_0
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "uid"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const-string v2, "service_id"

    .line 40
    .line 41
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const-string/jumbo v3, "url"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const-string v5, "name"

    .line 53
    .line 54
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const-string v6, "avatar_url"

    .line 59
    .line 60
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const-string/jumbo v7, "subscriber_count"

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const-string v8, "description"

    .line 72
    .line 73
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    const-string v9, "notification_mode"

    .line 78
    .line 79
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    new-instance v10, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-eqz v11, :cond_5

    .line 93
    .line 94
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v13

    .line 98
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v11

    .line 102
    long-to-int v15, v11

    .line 103
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_0

    .line 108
    .line 109
    const/16 v16, 0x0

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    move-object/from16 v16, v11

    .line 117
    .line 118
    :goto_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-eqz v11, :cond_1

    .line 123
    .line 124
    const/16 v17, 0x0

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    move-object/from16 v17, v11

    .line 132
    .line 133
    :goto_2
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_2

    .line 138
    .line 139
    const/16 v18, 0x0

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_2
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    move-object/from16 v18, v11

    .line 147
    .line 148
    :goto_3
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_3

    .line 153
    .line 154
    const/16 v19, 0x0

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_3
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 158
    .line 159
    .line 160
    move-result-wide v11

    .line 161
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    move-object/from16 v19, v11

    .line 166
    .line 167
    :goto_4
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    if-eqz v11, :cond_4

    .line 172
    .line 173
    const/16 v20, 0x0

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_4
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    move-object/from16 v20, v11

    .line 181
    .line 182
    :goto_5
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 183
    .line 184
    .line 185
    move-result-wide v11

    .line 186
    long-to-int v11, v11

    .line 187
    new-instance v12, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 188
    .line 189
    move/from16 v21, v11

    .line 190
    .line 191
    invoke-direct/range {v12 .. v21}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    goto :goto_6

    .line 200
    :cond_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 201
    .line 202
    .line 203
    return-object v10

    .line 204
    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 205
    .line 206
    .line 207
    throw v0

    .line 208
    :pswitch_0
    move-object/from16 v1, p1

    .line 209
    .line 210
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    const-string v5, "\n        SELECT playlists.uid, name, is_thumbnail_permanent, thumbnail_stream_id, display_index,\n        (SELECT thumbnail_url FROM streams WHERE streams.uid = thumbnail_stream_id) AS thumbnail_url,\n\n        COALESCE(COUNT(playlist_id), 0) AS streamCount,\n        COALESCE(SUM(url = ?), 0) AS timesStreamIsContained FROM playlists\n\n        LEFT JOIN playlist_stream_join\n        ON playlists.uid = playlist_id\n\n        LEFT JOIN streams\n        ON streams.uid = stream_id AND ? = ?\n\n        GROUP BY playlists.uid\n        ORDER BY display_index, name\n        "

    .line 216
    .line 217
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    :try_start_1
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v1, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const/4 v5, 0x3

    .line 228
    invoke-interface {v1, v5, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    new-instance v0, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    if-eqz v8, :cond_d

    .line 241
    .line 242
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 243
    .line 244
    .line 245
    move-result-wide v10

    .line 246
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-eqz v8, :cond_6

    .line 251
    .line 252
    const/16 v18, 0x0

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_6
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    move-object/from16 v18, v8

    .line 260
    .line 261
    :goto_8
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    if-eqz v8, :cond_7

    .line 266
    .line 267
    const/4 v8, 0x0

    .line 268
    goto :goto_9

    .line 269
    :cond_7
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 270
    .line 271
    .line 272
    move-result-wide v8

    .line 273
    long-to-int v8, v8

    .line 274
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    :goto_9
    if-eqz v8, :cond_9

    .line 279
    .line 280
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    if-eqz v8, :cond_8

    .line 285
    .line 286
    move v8, v7

    .line 287
    goto :goto_a

    .line 288
    :cond_8
    move v8, v6

    .line 289
    :goto_a
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    move-object v13, v8

    .line 294
    goto :goto_b

    .line 295
    :catchall_1
    move-exception v0

    .line 296
    goto :goto_f

    .line 297
    :cond_9
    const/4 v13, 0x0

    .line 298
    :goto_b
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    if-eqz v8, :cond_a

    .line 303
    .line 304
    const/4 v14, 0x0

    .line 305
    goto :goto_c

    .line 306
    :cond_a
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 307
    .line 308
    .line 309
    move-result-wide v8

    .line 310
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    move-object v14, v8

    .line 315
    :goto_c
    const/4 v8, 0x4

    .line 316
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    if-eqz v9, :cond_b

    .line 321
    .line 322
    const/4 v15, 0x0

    .line 323
    goto :goto_d

    .line 324
    :cond_b
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v8

    .line 328
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    move-object v15, v8

    .line 333
    :goto_d
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    if-eqz v8, :cond_c

    .line 338
    .line 339
    const/4 v12, 0x0

    .line 340
    goto :goto_e

    .line 341
    :cond_c
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    move-object v12, v8

    .line 346
    :goto_e
    const/4 v8, 0x6

    .line 347
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 348
    .line 349
    .line 350
    move-result-wide v16

    .line 351
    const/4 v8, 0x7

    .line 352
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v19

    .line 356
    new-instance v9, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    .line 357
    .line 358
    invoke-direct/range {v9 .. v20}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;-><init>(JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;JLjava/lang/String;J)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 362
    .line 363
    .line 364
    goto/16 :goto_7

    .line 365
    .line 366
    :cond_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 367
    .line 368
    .line 369
    return-object v0

    .line 370
    :goto_f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 371
    .line 372
    .line 373
    throw v0

    .line 374
    :pswitch_1
    move-object/from16 v1, p1

    .line 375
    .line 376
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 377
    .line 378
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    const-string v2, "DELETE FROM search_history WHERE search = ?"

    .line 382
    .line 383
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    :try_start_2
    invoke-interface {v2, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 391
    .line 392
    .line 393
    invoke-static {v1}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 394
    .line 395
    .line 396
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 397
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 398
    .line 399
    .line 400
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    return-object v0

    .line 405
    :catchall_2
    move-exception v0

    .line 406
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 407
    .line 408
    .line 409
    throw v0

    .line 410
    :pswitch_2
    move-object/from16 v1, p1

    .line 411
    .line 412
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 413
    .line 414
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    const-string v2, "DELETE FROM worktag WHERE work_spec_id=?"

    .line 418
    .line 419
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    :try_start_3
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 427
    .line 428
    .line 429
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 430
    .line 431
    .line 432
    return-object v5

    .line 433
    :catchall_3
    move-exception v0

    .line 434
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 435
    .line 436
    .line 437
    throw v0

    .line 438
    :pswitch_3
    move-object/from16 v1, p1

    .line 439
    .line 440
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    const-string v2, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    .line 446
    .line 447
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    :try_start_4
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 452
    .line 453
    .line 454
    new-instance v0, Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .line 458
    .line 459
    :goto_10
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    if-eqz v2, :cond_e

    .line 464
    .line 465
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 470
    .line 471
    .line 472
    goto :goto_10

    .line 473
    :catchall_4
    move-exception v0

    .line 474
    goto :goto_11

    .line 475
    :cond_e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 476
    .line 477
    .line 478
    return-object v0

    .line 479
    :goto_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 480
    .line 481
    .line 482
    throw v0

    .line 483
    :pswitch_4
    move-object/from16 v1, p1

    .line 484
    .line 485
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    const-string v2, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 491
    .line 492
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    :try_start_5
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 497
    .line 498
    .line 499
    new-instance v0, Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .line 503
    .line 504
    :goto_12
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-eqz v2, :cond_f

    .line 509
    .line 510
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 515
    .line 516
    .line 517
    move-result-wide v3

    .line 518
    long-to-int v3, v3

    .line 519
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    new-instance v4, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 524
    .line 525
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 529
    .line 530
    .line 531
    iput-object v2, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 532
    .line 533
    iput-object v3, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 534
    .line 535
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 536
    .line 537
    .line 538
    goto :goto_12

    .line 539
    :catchall_5
    move-exception v0

    .line 540
    goto :goto_13

    .line 541
    :cond_f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 542
    .line 543
    .line 544
    return-object v0

    .line 545
    :goto_13
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 546
    .line 547
    .line 548
    throw v0

    .line 549
    :pswitch_5
    move-object/from16 v1, p1

    .line 550
    .line 551
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    const-string v2, "DELETE FROM workspec WHERE id=?"

    .line 557
    .line 558
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    :try_start_6
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 566
    .line 567
    .line 568
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 569
    .line 570
    .line 571
    return-object v5

    .line 572
    :catchall_6
    move-exception v0

    .line 573
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 574
    .line 575
    .line 576
    throw v0

    .line 577
    :pswitch_6
    move-object/from16 v1, p1

    .line 578
    .line 579
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 580
    .line 581
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    const-string v2, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    .line 585
    .line 586
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    :try_start_7
    invoke-interface {v2, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 594
    .line 595
    .line 596
    invoke-static {v1}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 597
    .line 598
    .line 599
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 600
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 601
    .line 602
    .line 603
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    return-object v0

    .line 608
    :catchall_7
    move-exception v0

    .line 609
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 610
    .line 611
    .line 612
    throw v0

    .line 613
    :pswitch_7
    move-object/from16 v1, p1

    .line 614
    .line 615
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 616
    .line 617
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    const-string v2, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 621
    .line 622
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    :try_start_8
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 627
    .line 628
    .line 629
    new-instance v0, Ljava/util/ArrayList;

    .line 630
    .line 631
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .line 633
    .line 634
    :goto_14
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 635
    .line 636
    .line 637
    move-result v2

    .line 638
    if-eqz v2, :cond_10

    .line 639
    .line 640
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    sget-object v3, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 645
    .line 646
    invoke-static {v2}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 651
    .line 652
    .line 653
    goto :goto_14

    .line 654
    :catchall_8
    move-exception v0

    .line 655
    goto :goto_15

    .line 656
    :cond_10
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 657
    .line 658
    .line 659
    return-object v0

    .line 660
    :goto_15
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 661
    .line 662
    .line 663
    throw v0

    .line 664
    :pswitch_8
    move-object/from16 v1, p1

    .line 665
    .line 666
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 667
    .line 668
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    const-string v2, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    .line 672
    .line 673
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    :try_start_9
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 678
    .line 679
    .line 680
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 681
    .line 682
    .line 683
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 684
    .line 685
    .line 686
    return-object v5

    .line 687
    :catchall_9
    move-exception v0

    .line 688
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 689
    .line 690
    .line 691
    throw v0

    .line 692
    :pswitch_9
    move-object/from16 v1, p1

    .line 693
    .line 694
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 695
    .line 696
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    .line 698
    .line 699
    const-string v2, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    .line 700
    .line 701
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    :try_start_a
    invoke-interface {v2, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 709
    .line 710
    .line 711
    invoke-static {v1}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 712
    .line 713
    .line 714
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 715
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 716
    .line 717
    .line 718
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    return-object v0

    .line 723
    :catchall_a
    move-exception v0

    .line 724
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 725
    .line 726
    .line 727
    throw v0

    .line 728
    :pswitch_a
    move-object/from16 v1, p1

    .line 729
    .line 730
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 731
    .line 732
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    const-string v2, "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?"

    .line 736
    .line 737
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    :try_start_b
    invoke-interface {v2, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 742
    .line 743
    .line 744
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 745
    .line 746
    .line 747
    invoke-static {v1}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 748
    .line 749
    .line 750
    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 751
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 752
    .line 753
    .line 754
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    return-object v0

    .line 759
    :catchall_b
    move-exception v0

    .line 760
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 761
    .line 762
    .line 763
    throw v0

    .line 764
    :pswitch_b
    move-object/from16 v1, p1

    .line 765
    .line 766
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 767
    .line 768
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 769
    .line 770
    .line 771
    const-string v2, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 772
    .line 773
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    :try_start_c
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 778
    .line 779
    .line 780
    new-instance v0, Ljava/util/ArrayList;

    .line 781
    .line 782
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .line 784
    .line 785
    :goto_16
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    if-eqz v2, :cond_11

    .line 790
    .line 791
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 796
    .line 797
    .line 798
    goto :goto_16

    .line 799
    :catchall_c
    move-exception v0

    .line 800
    goto :goto_17

    .line 801
    :cond_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 802
    .line 803
    .line 804
    return-object v0

    .line 805
    :goto_17
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 806
    .line 807
    .line 808
    throw v0

    .line 809
    :pswitch_c
    move-object/from16 v1, p1

    .line 810
    .line 811
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 812
    .line 813
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    .line 815
    .line 816
    const-string v2, "SELECT state FROM workspec WHERE id=?"

    .line 817
    .line 818
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    :try_start_d
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 823
    .line 824
    .line 825
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 826
    .line 827
    .line 828
    move-result v0

    .line 829
    if-eqz v0, :cond_13

    .line 830
    .line 831
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 832
    .line 833
    .line 834
    move-result v0

    .line 835
    if-eqz v0, :cond_12

    .line 836
    .line 837
    const/4 v0, 0x0

    .line 838
    goto :goto_18

    .line 839
    :cond_12
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 840
    .line 841
    .line 842
    move-result-wide v2

    .line 843
    long-to-int v0, v2

    .line 844
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    :goto_18
    if-nez v0, :cond_14

    .line 849
    .line 850
    :cond_13
    const/4 v4, 0x0

    .line 851
    goto :goto_19

    .line 852
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 853
    .line 854
    .line 855
    move-result v0

    .line 856
    invoke-static {v0}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 857
    .line 858
    .line 859
    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 860
    goto :goto_19

    .line 861
    :catchall_d
    move-exception v0

    .line 862
    goto :goto_1a

    .line 863
    :goto_19
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 864
    .line 865
    .line 866
    return-object v4

    .line 867
    :goto_1a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 868
    .line 869
    .line 870
    throw v0

    .line 871
    :pswitch_d
    move-object/from16 v1, p1

    .line 872
    .line 873
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 874
    .line 875
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 876
    .line 877
    .line 878
    const-string v2, "SELECT * FROM workspec WHERE id=?"

    .line 879
    .line 880
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    :try_start_e
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 885
    .line 886
    .line 887
    const-string v0, "id"

    .line 888
    .line 889
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    const-string/jumbo v2, "state"

    .line 894
    .line 895
    .line 896
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 897
    .line 898
    .line 899
    move-result v2

    .line 900
    const-string/jumbo v3, "worker_class_name"

    .line 901
    .line 902
    .line 903
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 904
    .line 905
    .line 906
    move-result v3

    .line 907
    const-string v5, "input_merger_class_name"

    .line 908
    .line 909
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 910
    .line 911
    .line 912
    move-result v5

    .line 913
    const-string v8, "input"

    .line 914
    .line 915
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 916
    .line 917
    .line 918
    move-result v8

    .line 919
    const-string v9, "output"

    .line 920
    .line 921
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 922
    .line 923
    .line 924
    move-result v9

    .line 925
    const-string v10, "initial_delay"

    .line 926
    .line 927
    invoke-static {v1, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    move-result v10

    .line 931
    const-string v11, "interval_duration"

    .line 932
    .line 933
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 934
    .line 935
    .line 936
    move-result v11

    .line 937
    const-string v12, "flex_duration"

    .line 938
    .line 939
    invoke-static {v1, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 940
    .line 941
    .line 942
    move-result v12

    .line 943
    const-string v13, "run_attempt_count"

    .line 944
    .line 945
    invoke-static {v1, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 946
    .line 947
    .line 948
    move-result v13

    .line 949
    const-string v14, "backoff_policy"

    .line 950
    .line 951
    invoke-static {v1, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 952
    .line 953
    .line 954
    move-result v14

    .line 955
    const-string v15, "backoff_delay_duration"

    .line 956
    .line 957
    invoke-static {v1, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 958
    .line 959
    .line 960
    move-result v15

    .line 961
    const-string v4, "last_enqueue_time"

    .line 962
    .line 963
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 964
    .line 965
    .line 966
    move-result v4

    .line 967
    const-string v6, "minimum_retention_duration"

    .line 968
    .line 969
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 970
    .line 971
    .line 972
    move-result v6

    .line 973
    const-string v7, "schedule_requested_at"

    .line 974
    .line 975
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 976
    .line 977
    .line 978
    move-result v7

    .line 979
    move/from16 p0, v7

    .line 980
    .line 981
    const-string v7, "run_in_foreground"

    .line 982
    .line 983
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 984
    .line 985
    .line 986
    move-result v7

    .line 987
    move/from16 p1, v7

    .line 988
    .line 989
    const-string v7, "out_of_quota_policy"

    .line 990
    .line 991
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 992
    .line 993
    .line 994
    move-result v7

    .line 995
    move/from16 v19, v7

    .line 996
    .line 997
    const-string v7, "period_count"

    .line 998
    .line 999
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    move-result v7

    .line 1003
    move/from16 v20, v7

    .line 1004
    .line 1005
    const-string v7, "generation"

    .line 1006
    .line 1007
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1008
    .line 1009
    .line 1010
    move-result v7

    .line 1011
    move/from16 v21, v7

    .line 1012
    .line 1013
    const-string v7, "next_schedule_time_override"

    .line 1014
    .line 1015
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1016
    .line 1017
    .line 1018
    move-result v7

    .line 1019
    move/from16 v22, v7

    .line 1020
    .line 1021
    const-string v7, "next_schedule_time_override_generation"

    .line 1022
    .line 1023
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1024
    .line 1025
    .line 1026
    move-result v7

    .line 1027
    move/from16 v23, v7

    .line 1028
    .line 1029
    const-string/jumbo v7, "stop_reason"

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1033
    .line 1034
    .line 1035
    move-result v7

    .line 1036
    move/from16 v24, v7

    .line 1037
    .line 1038
    const-string/jumbo v7, "trace_tag"

    .line 1039
    .line 1040
    .line 1041
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1042
    .line 1043
    .line 1044
    move-result v7

    .line 1045
    move/from16 v25, v7

    .line 1046
    .line 1047
    const-string v7, "backoff_on_system_interruptions"

    .line 1048
    .line 1049
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1050
    .line 1051
    .line 1052
    move-result v7

    .line 1053
    move/from16 v26, v7

    .line 1054
    .line 1055
    const-string v7, "required_network_type"

    .line 1056
    .line 1057
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    move-result v7

    .line 1061
    move/from16 v27, v7

    .line 1062
    .line 1063
    const-string v7, "required_network_request"

    .line 1064
    .line 1065
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1066
    .line 1067
    .line 1068
    move-result v7

    .line 1069
    move/from16 v28, v7

    .line 1070
    .line 1071
    const-string v7, "requires_charging"

    .line 1072
    .line 1073
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1074
    .line 1075
    .line 1076
    move-result v7

    .line 1077
    move/from16 v29, v7

    .line 1078
    .line 1079
    const-string v7, "requires_device_idle"

    .line 1080
    .line 1081
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1082
    .line 1083
    .line 1084
    move-result v7

    .line 1085
    move/from16 v30, v7

    .line 1086
    .line 1087
    const-string v7, "requires_battery_not_low"

    .line 1088
    .line 1089
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1090
    .line 1091
    .line 1092
    move-result v7

    .line 1093
    move/from16 v31, v7

    .line 1094
    .line 1095
    const-string v7, "requires_storage_not_low"

    .line 1096
    .line 1097
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1098
    .line 1099
    .line 1100
    move-result v7

    .line 1101
    move/from16 v32, v7

    .line 1102
    .line 1103
    const-string/jumbo v7, "trigger_content_update_delay"

    .line 1104
    .line 1105
    .line 1106
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1107
    .line 1108
    .line 1109
    move-result v7

    .line 1110
    move/from16 v33, v7

    .line 1111
    .line 1112
    const-string/jumbo v7, "trigger_max_content_delay"

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1116
    .line 1117
    .line 1118
    move-result v7

    .line 1119
    move/from16 v34, v7

    .line 1120
    .line 1121
    const-string v7, "content_uri_triggers"

    .line 1122
    .line 1123
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1124
    .line 1125
    .line 1126
    move-result v7

    .line 1127
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1128
    .line 1129
    .line 1130
    move-result v35

    .line 1131
    if-eqz v35, :cond_1e

    .line 1132
    .line 1133
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v37

    .line 1137
    move v0, v6

    .line 1138
    move/from16 v35, v7

    .line 1139
    .line 1140
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1141
    .line 1142
    .line 1143
    move-result-wide v6

    .line 1144
    long-to-int v2, v6

    .line 1145
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v38

    .line 1149
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v39

    .line 1153
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v40

    .line 1157
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    sget-object v3, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1162
    .line 1163
    invoke-static {v2}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v41

    .line 1167
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1168
    .line 1169
    .line 1170
    move-result-object v2

    .line 1171
    invoke-static {v2}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v42

    .line 1175
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1176
    .line 1177
    .line 1178
    move-result-wide v43

    .line 1179
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1180
    .line 1181
    .line 1182
    move-result-wide v45

    .line 1183
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1184
    .line 1185
    .line 1186
    move-result-wide v47

    .line 1187
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1188
    .line 1189
    .line 1190
    move-result-wide v2

    .line 1191
    long-to-int v2, v2

    .line 1192
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1193
    .line 1194
    .line 1195
    move-result-wide v5

    .line 1196
    long-to-int v3, v5

    .line 1197
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v51

    .line 1201
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1202
    .line 1203
    .line 1204
    move-result-wide v52

    .line 1205
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1206
    .line 1207
    .line 1208
    move-result-wide v54

    .line 1209
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1210
    .line 1211
    .line 1212
    move-result-wide v56

    .line 1213
    move/from16 v0, p0

    .line 1214
    .line 1215
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1216
    .line 1217
    .line 1218
    move-result-wide v58

    .line 1219
    move/from16 v0, p1

    .line 1220
    .line 1221
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1222
    .line 1223
    .line 1224
    move-result-wide v3

    .line 1225
    long-to-int v0, v3

    .line 1226
    if-eqz v0, :cond_15

    .line 1227
    .line 1228
    const/16 v60, 0x1

    .line 1229
    .line 1230
    :goto_1b
    move/from16 v0, v19

    .line 1231
    .line 1232
    goto :goto_1c

    .line 1233
    :cond_15
    const/16 v60, 0x0

    .line 1234
    .line 1235
    goto :goto_1b

    .line 1236
    :goto_1c
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1237
    .line 1238
    .line 1239
    move-result-wide v3

    .line 1240
    long-to-int v0, v3

    .line 1241
    invoke-static {v0}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v61

    .line 1245
    move/from16 v0, v20

    .line 1246
    .line 1247
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1248
    .line 1249
    .line 1250
    move-result-wide v3

    .line 1251
    long-to-int v0, v3

    .line 1252
    move/from16 v3, v21

    .line 1253
    .line 1254
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1255
    .line 1256
    .line 1257
    move-result-wide v3

    .line 1258
    long-to-int v3, v3

    .line 1259
    move/from16 v4, v22

    .line 1260
    .line 1261
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1262
    .line 1263
    .line 1264
    move-result-wide v64

    .line 1265
    move/from16 v4, v23

    .line 1266
    .line 1267
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1268
    .line 1269
    .line 1270
    move-result-wide v4

    .line 1271
    long-to-int v4, v4

    .line 1272
    move/from16 v5, v24

    .line 1273
    .line 1274
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1275
    .line 1276
    .line 1277
    move-result-wide v5

    .line 1278
    long-to-int v5, v5

    .line 1279
    move/from16 v6, v25

    .line 1280
    .line 1281
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v7

    .line 1285
    if-eqz v7, :cond_16

    .line 1286
    .line 1287
    const/16 v68, 0x0

    .line 1288
    .line 1289
    :goto_1d
    move/from16 v6, v26

    .line 1290
    .line 1291
    goto :goto_1e

    .line 1292
    :cond_16
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v6

    .line 1296
    move-object/from16 v68, v6

    .line 1297
    .line 1298
    goto :goto_1d

    .line 1299
    :goto_1e
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1300
    .line 1301
    .line 1302
    move-result v7

    .line 1303
    if-eqz v7, :cond_17

    .line 1304
    .line 1305
    const/4 v6, 0x0

    .line 1306
    goto :goto_1f

    .line 1307
    :cond_17
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1308
    .line 1309
    .line 1310
    move-result-wide v6

    .line 1311
    long-to-int v6, v6

    .line 1312
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v6

    .line 1316
    :goto_1f
    if-eqz v6, :cond_19

    .line 1317
    .line 1318
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 1319
    .line 1320
    .line 1321
    move-result v6

    .line 1322
    if-eqz v6, :cond_18

    .line 1323
    .line 1324
    const/4 v6, 0x1

    .line 1325
    goto :goto_20

    .line 1326
    :cond_18
    const/4 v6, 0x0

    .line 1327
    :goto_20
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v6

    .line 1331
    move-object/from16 v69, v6

    .line 1332
    .line 1333
    :goto_21
    move/from16 v6, v27

    .line 1334
    .line 1335
    goto :goto_22

    .line 1336
    :catchall_e
    move-exception v0

    .line 1337
    goto/16 :goto_2c

    .line 1338
    .line 1339
    :cond_19
    const/16 v69, 0x0

    .line 1340
    .line 1341
    goto :goto_21

    .line 1342
    :goto_22
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1343
    .line 1344
    .line 1345
    move-result-wide v6

    .line 1346
    long-to-int v6, v6

    .line 1347
    invoke-static {v6}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v72

    .line 1351
    move/from16 v6, v28

    .line 1352
    .line 1353
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1354
    .line 1355
    .line 1356
    move-result-object v6

    .line 1357
    invoke-static {v6}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v71

    .line 1361
    move/from16 v6, v29

    .line 1362
    .line 1363
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1364
    .line 1365
    .line 1366
    move-result-wide v6

    .line 1367
    long-to-int v6, v6

    .line 1368
    if-eqz v6, :cond_1a

    .line 1369
    .line 1370
    const/16 v73, 0x1

    .line 1371
    .line 1372
    :goto_23
    move/from16 v6, v30

    .line 1373
    .line 1374
    goto :goto_24

    .line 1375
    :cond_1a
    const/16 v73, 0x0

    .line 1376
    .line 1377
    goto :goto_23

    .line 1378
    :goto_24
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1379
    .line 1380
    .line 1381
    move-result-wide v6

    .line 1382
    long-to-int v6, v6

    .line 1383
    if-eqz v6, :cond_1b

    .line 1384
    .line 1385
    const/16 v74, 0x1

    .line 1386
    .line 1387
    :goto_25
    move/from16 v6, v31

    .line 1388
    .line 1389
    goto :goto_26

    .line 1390
    :cond_1b
    const/16 v74, 0x0

    .line 1391
    .line 1392
    goto :goto_25

    .line 1393
    :goto_26
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1394
    .line 1395
    .line 1396
    move-result-wide v6

    .line 1397
    long-to-int v6, v6

    .line 1398
    if-eqz v6, :cond_1c

    .line 1399
    .line 1400
    const/16 v75, 0x1

    .line 1401
    .line 1402
    :goto_27
    move/from16 v6, v32

    .line 1403
    .line 1404
    goto :goto_28

    .line 1405
    :cond_1c
    const/16 v75, 0x0

    .line 1406
    .line 1407
    goto :goto_27

    .line 1408
    :goto_28
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1409
    .line 1410
    .line 1411
    move-result-wide v6

    .line 1412
    long-to-int v6, v6

    .line 1413
    if-eqz v6, :cond_1d

    .line 1414
    .line 1415
    const/16 v76, 0x1

    .line 1416
    .line 1417
    :goto_29
    move/from16 v6, v33

    .line 1418
    .line 1419
    goto :goto_2a

    .line 1420
    :cond_1d
    const/16 v76, 0x0

    .line 1421
    .line 1422
    goto :goto_29

    .line 1423
    :goto_2a
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1424
    .line 1425
    .line 1426
    move-result-wide v77

    .line 1427
    move/from16 v6, v34

    .line 1428
    .line 1429
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1430
    .line 1431
    .line 1432
    move-result-wide v79

    .line 1433
    move/from16 v6, v35

    .line 1434
    .line 1435
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1436
    .line 1437
    .line 1438
    move-result-object v6

    .line 1439
    invoke-static {v6}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v81

    .line 1443
    new-instance v49, Landroidx/work/Constraints;

    .line 1444
    .line 1445
    move-object/from16 v70, v49

    .line 1446
    .line 1447
    invoke-direct/range {v70 .. v81}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1448
    .line 1449
    .line 1450
    move-object/from16 v49, v70

    .line 1451
    .line 1452
    new-instance v36, Landroidx/work/impl/model/WorkSpec;

    .line 1453
    .line 1454
    move/from16 v62, v0

    .line 1455
    .line 1456
    move/from16 v50, v2

    .line 1457
    .line 1458
    move/from16 v63, v3

    .line 1459
    .line 1460
    move/from16 v66, v4

    .line 1461
    .line 1462
    move/from16 v67, v5

    .line 1463
    .line 1464
    invoke-direct/range {v36 .. v69}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 1465
    .line 1466
    .line 1467
    move-object/from16 v4, v36

    .line 1468
    .line 1469
    goto :goto_2b

    .line 1470
    :cond_1e
    const/4 v4, 0x0

    .line 1471
    :goto_2b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1472
    .line 1473
    .line 1474
    return-object v4

    .line 1475
    :goto_2c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1476
    .line 1477
    .line 1478
    throw v0

    .line 1479
    :pswitch_e
    move-object/from16 v1, p1

    .line 1480
    .line 1481
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1482
    .line 1483
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1484
    .line 1485
    .line 1486
    const-string v2, "DELETE from WorkProgress where work_spec_id=?"

    .line 1487
    .line 1488
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v1

    .line 1492
    const/4 v2, 0x1

    .line 1493
    :try_start_f
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 1497
    .line 1498
    .line 1499
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1500
    .line 1501
    .line 1502
    return-object v5

    .line 1503
    :catchall_f
    move-exception v0

    .line 1504
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1505
    .line 1506
    .line 1507
    throw v0

    .line 1508
    :pswitch_f
    move-object/from16 v1, p1

    .line 1509
    .line 1510
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1511
    .line 1512
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1513
    .line 1514
    .line 1515
    const-string v2, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 1516
    .line 1517
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v1

    .line 1521
    const/4 v2, 0x1

    .line 1522
    :try_start_10
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1523
    .line 1524
    .line 1525
    new-instance v0, Ljava/util/ArrayList;

    .line 1526
    .line 1527
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    .line 1529
    .line 1530
    :goto_2d
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1531
    .line 1532
    .line 1533
    move-result v2

    .line 1534
    if-eqz v2, :cond_1f

    .line 1535
    .line 1536
    const/4 v2, 0x0

    .line 1537
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v3

    .line 1541
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 1542
    .line 1543
    .line 1544
    goto :goto_2d

    .line 1545
    :catchall_10
    move-exception v0

    .line 1546
    goto :goto_2e

    .line 1547
    :cond_1f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1548
    .line 1549
    .line 1550
    return-object v0

    .line 1551
    :goto_2e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1552
    .line 1553
    .line 1554
    throw v0

    .line 1555
    :pswitch_10
    move-object/from16 v1, p1

    .line 1556
    .line 1557
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1558
    .line 1559
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1560
    .line 1561
    .line 1562
    const-string v2, "DELETE FROM SystemIdInfo where work_spec_id=?"

    .line 1563
    .line 1564
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v1

    .line 1568
    const/4 v2, 0x1

    .line 1569
    :try_start_11
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1570
    .line 1571
    .line 1572
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 1573
    .line 1574
    .line 1575
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1576
    .line 1577
    .line 1578
    return-object v5

    .line 1579
    :catchall_11
    move-exception v0

    .line 1580
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1581
    .line 1582
    .line 1583
    throw v0

    .line 1584
    :pswitch_11
    move-object/from16 v1, p1

    .line 1585
    .line 1586
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1587
    .line 1588
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1589
    .line 1590
    .line 1591
    const-string v2, "SELECT long_value FROM Preference where `key`=?"

    .line 1592
    .line 1593
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v1

    .line 1597
    const/4 v2, 0x1

    .line 1598
    :try_start_12
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1599
    .line 1600
    .line 1601
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1602
    .line 1603
    .line 1604
    move-result v0

    .line 1605
    if-eqz v0, :cond_20

    .line 1606
    .line 1607
    const/4 v2, 0x0

    .line 1608
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1609
    .line 1610
    .line 1611
    move-result v0

    .line 1612
    if-eqz v0, :cond_21

    .line 1613
    .line 1614
    :cond_20
    const/4 v4, 0x0

    .line 1615
    goto :goto_2f

    .line 1616
    :cond_21
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1617
    .line 1618
    .line 1619
    move-result-wide v2

    .line 1620
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 1624
    goto :goto_2f

    .line 1625
    :catchall_12
    move-exception v0

    .line 1626
    goto :goto_30

    .line 1627
    :goto_2f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1628
    .line 1629
    .line 1630
    return-object v4

    .line 1631
    :goto_30
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1632
    .line 1633
    .line 1634
    throw v0

    .line 1635
    :pswitch_12
    move-object/from16 v1, p1

    .line 1636
    .line 1637
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1638
    .line 1639
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1640
    .line 1641
    .line 1642
    const-string v2, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    .line 1643
    .line 1644
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v1

    .line 1648
    const/4 v2, 0x1

    .line 1649
    :try_start_13
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1650
    .line 1651
    .line 1652
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1653
    .line 1654
    .line 1655
    move-result v0

    .line 1656
    if-eqz v0, :cond_22

    .line 1657
    .line 1658
    const/4 v2, 0x0

    .line 1659
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1660
    .line 1661
    .line 1662
    move-result-wide v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 1663
    long-to-int v0, v3

    .line 1664
    if-eqz v0, :cond_22

    .line 1665
    .line 1666
    const/4 v6, 0x1

    .line 1667
    goto :goto_31

    .line 1668
    :catchall_13
    move-exception v0

    .line 1669
    goto :goto_32

    .line 1670
    :cond_22
    const/4 v6, 0x0

    .line 1671
    :goto_31
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1672
    .line 1673
    .line 1674
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v0

    .line 1678
    return-object v0

    .line 1679
    :goto_32
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1680
    .line 1681
    .line 1682
    throw v0

    .line 1683
    :pswitch_13
    move-object/from16 v1, p1

    .line 1684
    .line 1685
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1686
    .line 1687
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1688
    .line 1689
    .line 1690
    const-string v2, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    .line 1691
    .line 1692
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v1

    .line 1696
    const/4 v2, 0x1

    .line 1697
    :try_start_14
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1698
    .line 1699
    .line 1700
    new-instance v0, Ljava/util/ArrayList;

    .line 1701
    .line 1702
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    .line 1704
    .line 1705
    :goto_33
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1706
    .line 1707
    .line 1708
    move-result v2

    .line 1709
    if-eqz v2, :cond_23

    .line 1710
    .line 1711
    const/4 v2, 0x0

    .line 1712
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v3

    .line 1716
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 1717
    .line 1718
    .line 1719
    goto :goto_33

    .line 1720
    :catchall_14
    move-exception v0

    .line 1721
    goto :goto_34

    .line 1722
    :cond_23
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1723
    .line 1724
    .line 1725
    return-object v0

    .line 1726
    :goto_34
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1727
    .line 1728
    .line 1729
    throw v0

    .line 1730
    :pswitch_14
    move-object/from16 v1, p1

    .line 1731
    .line 1732
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1733
    .line 1734
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1735
    .line 1736
    .line 1737
    const-string v2, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    .line 1738
    .line 1739
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v1

    .line 1743
    const/4 v2, 0x1

    .line 1744
    :try_start_15
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1745
    .line 1746
    .line 1747
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1748
    .line 1749
    .line 1750
    move-result v0

    .line 1751
    if-eqz v0, :cond_24

    .line 1752
    .line 1753
    const/4 v0, 0x0

    .line 1754
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1755
    .line 1756
    .line 1757
    move-result-wide v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 1758
    long-to-int v3, v3

    .line 1759
    if-eqz v3, :cond_25

    .line 1760
    .line 1761
    move v6, v2

    .line 1762
    goto :goto_35

    .line 1763
    :catchall_15
    move-exception v0

    .line 1764
    goto :goto_36

    .line 1765
    :cond_24
    const/4 v0, 0x0

    .line 1766
    :cond_25
    move v6, v0

    .line 1767
    :goto_35
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1768
    .line 1769
    .line 1770
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v0

    .line 1774
    return-object v0

    .line 1775
    :goto_36
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1776
    .line 1777
    .line 1778
    throw v0

    .line 1779
    :pswitch_15
    move-object/from16 v1, p1

    .line 1780
    .line 1781
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1782
    .line 1783
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1784
    .line 1785
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1786
    .line 1787
    invoke-static {v0}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v0

    .line 1791
    invoke-interface {v1, v3, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 1792
    .line 1793
    .line 1794
    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 1795
    .line 1796
    .line 1797
    return-object v5

    .line 1798
    :pswitch_16
    move-object/from16 v1, p1

    .line 1799
    .line 1800
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1801
    .line 1802
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1803
    .line 1804
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1805
    .line 1806
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1807
    .line 1808
    aget-object v3, v4, v3

    .line 1809
    .line 1810
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 1811
    .line 1812
    .line 1813
    return-object v5

    .line 1814
    :pswitch_17
    move-object/from16 v1, p1

    .line 1815
    .line 1816
    check-cast v1, Ljava/lang/String;

    .line 1817
    .line 1818
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1819
    .line 1820
    .line 1821
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1822
    .line 1823
    .line 1824
    move-result v2

    .line 1825
    if-eqz v2, :cond_27

    .line 1826
    .line 1827
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1828
    .line 1829
    .line 1830
    move-result v2

    .line 1831
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1832
    .line 1833
    .line 1834
    move-result v3

    .line 1835
    if-ge v2, v3, :cond_26

    .line 1836
    .line 1837
    goto :goto_37

    .line 1838
    :cond_26
    move-object v0, v1

    .line 1839
    goto :goto_37

    .line 1840
    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v0

    .line 1844
    :goto_37
    return-object v0

    .line 1845
    :pswitch_data_0
    .packed-switch 0x0
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
