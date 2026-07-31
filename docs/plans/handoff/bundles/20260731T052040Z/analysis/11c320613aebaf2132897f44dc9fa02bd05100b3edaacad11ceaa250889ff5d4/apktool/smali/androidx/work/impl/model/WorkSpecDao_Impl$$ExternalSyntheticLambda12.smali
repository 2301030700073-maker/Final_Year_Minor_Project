.class public final synthetic Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$1:J

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 11
    iput p4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x2

    .line 9
    iget-object v6, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v7, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$1:J

    .line 12
    .line 13
    move-object/from16 v0, p1

    .line 14
    .line 15
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v1, "SELECT `uid`, `service_id`, `url`, `name`, `avatar_url`, `subscriber_count`, `description`, `notification_mode` FROM (\n        SELECT * FROM subscriptions s\n\n        LEFT JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id\n\n        WHERE (fgs.subscription_id IS NULL OR fgs.group_id = ?)\n        AND s.name LIKE \'%\' || ? || \'%\'\n\n        ORDER BY name COLLATE NOCASE ASC\n        )"

    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :try_start_0
    invoke-interface {v1, v4, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_5

    .line 45
    .line 46
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide v8

    .line 50
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    long-to-int v10, v6

    .line 55
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    move-object v11, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    move-object v11, v6

    .line 68
    :goto_1
    const/4 v6, 0x3

    .line 69
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_1

    .line 74
    .line 75
    move-object v12, v3

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    move-object v12, v6

    .line 82
    :goto_2
    const/4 v6, 0x4

    .line 83
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_2

    .line 88
    .line 89
    move-object v13, v3

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    move-object v13, v6

    .line 96
    :goto_3
    const/4 v6, 0x5

    .line 97
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    move-object v14, v3

    .line 104
    goto :goto_4

    .line 105
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v6

    .line 109
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    move-object v14, v6

    .line 114
    :goto_4
    const/4 v6, 0x6

    .line 115
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_4

    .line 120
    .line 121
    move-object v15, v3

    .line 122
    goto :goto_5

    .line 123
    :cond_4
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    move-object v15, v6

    .line 128
    :goto_5
    const/4 v6, 0x7

    .line 129
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 130
    .line 131
    .line 132
    move-result-wide v6

    .line 133
    long-to-int v6, v6

    .line 134
    new-instance v7, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 135
    .line 136
    move/from16 v16, v6

    .line 137
    .line 138
    invoke-direct/range {v7 .. v16}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    goto :goto_6

    .line 147
    :cond_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 148
    .line 149
    .line 150
    return-object v0

    .line 151
    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    const-string v1, "SELECT uid FROM remote_playlists WHERE url = ? AND service_id = ?"

    .line 159
    .line 160
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-nez v6, :cond_6

    .line 165
    .line 166
    :try_start_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_7

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    goto :goto_9

    .line 172
    :cond_6
    invoke-interface {v1, v4, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :goto_7
    invoke-interface {v1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_8

    .line 183
    .line 184
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_7
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 192
    .line 193
    .line 194
    move-result-wide v2

    .line 195
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 196
    .line 197
    .line 198
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 200
    .line 201
    .line 202
    return-object v3

    .line 203
    :goto_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    const-string v1, "SELECT * FROM remote_playlists WHERE url = ? AND service_id = ?"

    .line 211
    .line 212
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-nez v6, :cond_9

    .line 217
    .line 218
    :try_start_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_a

    .line 222
    :catchall_2
    move-exception v0

    .line 223
    goto/16 :goto_11

    .line 224
    .line 225
    :cond_9
    invoke-interface {v1, v4, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :goto_a
    invoke-interface {v1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 229
    .line 230
    .line 231
    const-string/jumbo v0, "uid"

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    const-string v2, "service_id"

    .line 239
    .line 240
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    const-string v4, "name"

    .line 245
    .line 246
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    const-string/jumbo v5, "url"

    .line 251
    .line 252
    .line 253
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    const-string/jumbo v6, "thumbnail_url"

    .line 258
    .line 259
    .line 260
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    const-string/jumbo v7, "uploader"

    .line 265
    .line 266
    .line 267
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    const-string v8, "display_index"

    .line 272
    .line 273
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    const-string/jumbo v9, "stream_count"

    .line 278
    .line 279
    .line 280
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    new-instance v10, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .line 288
    .line 289
    :goto_b
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    if-eqz v11, :cond_f

    .line 294
    .line 295
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 296
    .line 297
    .line 298
    move-result-wide v13

    .line 299
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 300
    .line 301
    .line 302
    move-result-wide v11

    .line 303
    long-to-int v15, v11

    .line 304
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-eqz v11, :cond_a

    .line 309
    .line 310
    move-object/from16 v16, v3

    .line 311
    .line 312
    goto :goto_c

    .line 313
    :cond_a
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    move-object/from16 v16, v11

    .line 318
    .line 319
    :goto_c
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    if-eqz v11, :cond_b

    .line 324
    .line 325
    move-object/from16 v17, v3

    .line 326
    .line 327
    goto :goto_d

    .line 328
    :cond_b
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    move-object/from16 v17, v11

    .line 333
    .line 334
    :goto_d
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 335
    .line 336
    .line 337
    move-result v11

    .line 338
    if-eqz v11, :cond_c

    .line 339
    .line 340
    move-object/from16 v18, v3

    .line 341
    .line 342
    goto :goto_e

    .line 343
    :cond_c
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v11

    .line 347
    move-object/from16 v18, v11

    .line 348
    .line 349
    :goto_e
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    if-eqz v11, :cond_d

    .line 354
    .line 355
    move-object/from16 v19, v3

    .line 356
    .line 357
    goto :goto_f

    .line 358
    :cond_d
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v11

    .line 362
    move-object/from16 v19, v11

    .line 363
    .line 364
    :goto_f
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 365
    .line 366
    .line 367
    move-result-wide v20

    .line 368
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    if-eqz v11, :cond_e

    .line 373
    .line 374
    move-object/from16 v22, v3

    .line 375
    .line 376
    goto :goto_10

    .line 377
    :cond_e
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 378
    .line 379
    .line 380
    move-result-wide v11

    .line 381
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 382
    .line 383
    .line 384
    move-result-object v11

    .line 385
    move-object/from16 v22, v11

    .line 386
    .line 387
    :goto_10
    new-instance v12, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 388
    .line 389
    invoke-direct/range {v12 .. v22}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 393
    .line 394
    .line 395
    goto :goto_b

    .line 396
    :cond_f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 397
    .line 398
    .line 399
    return-object v10

    .line 400
    :goto_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 401
    .line 402
    .line 403
    throw v0

    .line 404
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    const-string v1, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    .line 408
    .line 409
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    :try_start_3
    invoke-interface {v1, v4, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 414
    .line 415
    .line 416
    invoke-interface {v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 420
    .line 421
    .line 422
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 423
    .line 424
    .line 425
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 426
    .line 427
    return-object v0

    .line 428
    :catchall_3
    move-exception v0

    .line 429
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 430
    .line 431
    .line 432
    throw v0

    .line 433
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    const-string v1, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    .line 437
    .line 438
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    :try_start_4
    invoke-interface {v1, v4, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 443
    .line 444
    .line 445
    invoke-interface {v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 449
    .line 450
    .line 451
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 452
    .line 453
    .line 454
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 455
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 456
    .line 457
    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    return-object v0

    .line 463
    :catchall_4
    move-exception v0

    .line 464
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 465
    .line 466
    .line 467
    throw v0

    .line 468
    nop

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
