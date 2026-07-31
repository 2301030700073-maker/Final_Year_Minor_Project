.class public final synthetic Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 10
    iput p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->$r8$classId:I

    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(JLorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V
    .locals 0

    .line 1
    const/4 p3, 0x7

    .line 2
    iput p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->f$1:J

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 86

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "display_index"

    .line 6
    .line 7
    const-string/jumbo v3, "stream_id"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v4, "url"

    .line 11
    .line 12
    .line 13
    const-string v5, "service_id"

    .line 14
    .line 15
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    const-string v7, "name"

    .line 18
    .line 19
    const-string/jumbo v8, "uid"

    .line 20
    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v11, 0x1

    .line 24
    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->f$1:J

    .line 25
    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v1, "SELECT `uid`, `service_id`, `url`, `name`, `avatar_url`, `subscriber_count`, `description`, `notification_mode` FROM (\n        SELECT * FROM subscriptions s\n\n        LEFT JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id\n\n        WHERE (fgs.subscription_id IS NULL OR fgs.group_id = ?)\n\n        ORDER BY name COLLATE NOCASE ASC\n        )"

    .line 37
    .line 38
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :try_start_0
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_5

    .line 55
    .line 56
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v13

    .line 60
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    long-to-int v15, v2

    .line 65
    const/4 v2, 0x2

    .line 66
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object/from16 v16, v2

    .line 80
    .line 81
    :goto_1
    const/4 v2, 0x3

    .line 82
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    const/16 v17, 0x0

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    move-object/from16 v17, v2

    .line 96
    .line 97
    :goto_2
    const/4 v2, 0x4

    .line 98
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_2

    .line 103
    .line 104
    const/16 v18, 0x0

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_2
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    move-object/from16 v18, v2

    .line 112
    .line 113
    :goto_3
    const/4 v2, 0x5

    .line 114
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    const/16 v19, 0x0

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    move-object/from16 v19, v2

    .line 132
    .line 133
    :goto_4
    const/4 v2, 0x6

    .line 134
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    const/16 v20, 0x0

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_4
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    move-object/from16 v20, v2

    .line 148
    .line 149
    :goto_5
    const/4 v2, 0x7

    .line 150
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    long-to-int v2, v2

    .line 155
    new-instance v12, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 156
    .line 157
    move/from16 v21, v2

    .line 158
    .line 159
    invoke-direct/range {v12 .. v21}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    goto :goto_6

    .line 168
    :cond_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 169
    .line 170
    .line 171
    return-object v0

    .line 172
    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :pswitch_0
    move-object/from16 v0, p1

    .line 177
    .line 178
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    const-string v1, "SELECT * FROM subscriptions WHERE uid = ?"

    .line 184
    .line 185
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :try_start_1
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 190
    .line 191
    .line 192
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    const-string v5, "avatar_url"

    .line 209
    .line 210
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    const-string/jumbo v6, "subscriber_count"

    .line 215
    .line 216
    .line 217
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    const-string v7, "description"

    .line 222
    .line 223
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    const-string v8, "notification_mode"

    .line 228
    .line 229
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    if-eqz v9, :cond_b

    .line 238
    .line 239
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 240
    .line 241
    .line 242
    move-result-wide v12

    .line 243
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 244
    .line 245
    .line 246
    move-result-wide v14

    .line 247
    long-to-int v14, v14

    .line 248
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_6

    .line 253
    .line 254
    const/4 v15, 0x0

    .line 255
    goto :goto_7

    .line 256
    :cond_6
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    move-object v15, v0

    .line 261
    :goto_7
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_7

    .line 266
    .line 267
    const/16 v16, 0x0

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_7
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    move-object/from16 v16, v0

    .line 275
    .line 276
    :goto_8
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_8

    .line 281
    .line 282
    const/16 v17, 0x0

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_8
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    move-object/from16 v17, v0

    .line 290
    .line 291
    :goto_9
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_9

    .line 296
    .line 297
    const/16 v18, 0x0

    .line 298
    .line 299
    goto :goto_a

    .line 300
    :cond_9
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 301
    .line 302
    .line 303
    move-result-wide v2

    .line 304
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    move-object/from16 v18, v0

    .line 309
    .line 310
    :goto_a
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_a

    .line 315
    .line 316
    const/16 v19, 0x0

    .line 317
    .line 318
    goto :goto_b

    .line 319
    :cond_a
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    move-object/from16 v19, v10

    .line 324
    .line 325
    :goto_b
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 326
    .line 327
    .line 328
    move-result-wide v2

    .line 329
    long-to-int v0, v2

    .line 330
    new-instance v11, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 331
    .line 332
    move/from16 v20, v0

    .line 333
    .line 334
    invoke-direct/range {v11 .. v20}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    .line 336
    .line 337
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 338
    .line 339
    .line 340
    return-object v11

    .line 341
    :catchall_1
    move-exception v0

    .line 342
    goto :goto_c

    .line 343
    :cond_b
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 344
    .line 345
    const-string v2, "The query result was empty, but expected a single row to return a NON-NULL object of type \'org.schabi.newpipe.database.subscription.SubscriptionEntity\'."

    .line 346
    .line 347
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 351
    :goto_c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 352
    .line 353
    .line 354
    throw v0

    .line 355
    :pswitch_1
    move-object/from16 v0, p1

    .line 356
    .line 357
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    const-string v1, "DELETE FROM stream_state WHERE stream_id = ?"

    .line 363
    .line 364
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    :try_start_3
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 369
    .line 370
    .line 371
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 372
    .line 373
    .line 374
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 375
    .line 376
    .line 377
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 378
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 379
    .line 380
    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    return-object v0

    .line 386
    :catchall_2
    move-exception v0

    .line 387
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 388
    .line 389
    .line 390
    throw v0

    .line 391
    :pswitch_2
    move-object/from16 v0, p1

    .line 392
    .line 393
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    const-string v1, "SELECT * FROM stream_state WHERE stream_id = ?"

    .line 399
    .line 400
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    :try_start_4
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 405
    .line 406
    .line 407
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    const-string v2, "progress_time"

    .line 412
    .line 413
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    new-instance v3, Ljava/util/ArrayList;

    .line 418
    .line 419
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .line 421
    .line 422
    :goto_d
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    if-eqz v4, :cond_c

    .line 427
    .line 428
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 429
    .line 430
    .line 431
    move-result-wide v4

    .line 432
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 433
    .line 434
    .line 435
    move-result-wide v6

    .line 436
    new-instance v8, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 437
    .line 438
    invoke-direct {v8, v4, v5, v6, v7}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;-><init>(JJ)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 442
    .line 443
    .line 444
    goto :goto_d

    .line 445
    :catchall_3
    move-exception v0

    .line 446
    goto :goto_e

    .line 447
    :cond_c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 448
    .line 449
    .line 450
    return-object v3

    .line 451
    :goto_e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 452
    .line 453
    .line 454
    throw v0

    .line 455
    :pswitch_3
    move-object/from16 v0, p1

    .line 456
    .line 457
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    const-string v1, "SELECT COALESCE(MAX(join_index), -1) FROM playlist_stream_join WHERE playlist_id = ?"

    .line 463
    .line 464
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    :try_start_5
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 469
    .line 470
    .line 471
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    if-eqz v0, :cond_e

    .line 476
    .line 477
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-eqz v0, :cond_d

    .line 482
    .line 483
    goto :goto_f

    .line 484
    :cond_d
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 485
    .line 486
    .line 487
    move-result-wide v2

    .line 488
    long-to-int v0, v2

    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 490
    .line 491
    .line 492
    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 493
    goto :goto_10

    .line 494
    :catchall_4
    move-exception v0

    .line 495
    goto :goto_11

    .line 496
    :cond_e
    :goto_f
    const/4 v10, 0x0

    .line 497
    :goto_10
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 498
    .line 499
    .line 500
    return-object v10

    .line 501
    :goto_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 502
    .line 503
    .line 504
    throw v0

    .line 505
    :pswitch_4
    move-object/from16 v0, p1

    .line 506
    .line 507
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 508
    .line 509
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    const-string v1, "DELETE FROM playlist_stream_join WHERE playlist_id = ?"

    .line 513
    .line 514
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    :try_start_6
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 519
    .line 520
    .line 521
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 522
    .line 523
    .line 524
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 525
    .line 526
    .line 527
    return-object v6

    .line 528
    :catchall_5
    move-exception v0

    .line 529
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 530
    .line 531
    .line 532
    throw v0

    .line 533
    :pswitch_5
    move-object/from16 v0, p1

    .line 534
    .line 535
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    const-string v1, "\n        SELECT CASE WHEN COUNT(*) != 0 then stream_id ELSE -1 END\n        FROM streams\n\n        LEFT JOIN playlist_stream_join\n        ON uid = stream_id\n\n        WHERE playlist_id = ? LIMIT 1\n        "

    .line 541
    .line 542
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    :try_start_7
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 547
    .line 548
    .line 549
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    if-eqz v0, :cond_10

    .line 554
    .line 555
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_f

    .line 560
    .line 561
    goto :goto_12

    .line 562
    :cond_f
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 563
    .line 564
    .line 565
    move-result-wide v2

    .line 566
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 567
    .line 568
    .line 569
    move-result-object v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 570
    goto :goto_13

    .line 571
    :catchall_6
    move-exception v0

    .line 572
    goto :goto_14

    .line 573
    :cond_10
    :goto_12
    const/4 v10, 0x0

    .line 574
    :goto_13
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 575
    .line 576
    .line 577
    return-object v10

    .line 578
    :goto_14
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 579
    .line 580
    .line 581
    throw v0

    .line 582
    :pswitch_6
    move-object/from16 v0, p1

    .line 583
    .line 584
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 585
    .line 586
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    const-string v1, "DELETE FROM remote_playlists WHERE uid = ?"

    .line 590
    .line 591
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    :try_start_8
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 596
    .line 597
    .line 598
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 599
    .line 600
    .line 601
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 602
    .line 603
    .line 604
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 605
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 606
    .line 607
    .line 608
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    return-object v0

    .line 613
    :catchall_7
    move-exception v0

    .line 614
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 615
    .line 616
    .line 617
    throw v0

    .line 618
    :pswitch_7
    move-object/from16 v0, p1

    .line 619
    .line 620
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    const-string v1, "SELECT * FROM remote_playlists WHERE uid = ?"

    .line 626
    .line 627
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    :try_start_9
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 632
    .line 633
    .line 634
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 643
    .line 644
    .line 645
    move-result v5

    .line 646
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    const-string/jumbo v6, "thumbnail_url"

    .line 651
    .line 652
    .line 653
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 654
    .line 655
    .line 656
    move-result v6

    .line 657
    const-string/jumbo v7, "uploader"

    .line 658
    .line 659
    .line 660
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 661
    .line 662
    .line 663
    move-result v7

    .line 664
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    const-string/jumbo v8, "stream_count"

    .line 669
    .line 670
    .line 671
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 672
    .line 673
    .line 674
    move-result v8

    .line 675
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 676
    .line 677
    .line 678
    move-result v9

    .line 679
    if-eqz v9, :cond_16

    .line 680
    .line 681
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 682
    .line 683
    .line 684
    move-result-wide v12

    .line 685
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 686
    .line 687
    .line 688
    move-result-wide v14

    .line 689
    long-to-int v14, v14

    .line 690
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    if-eqz v0, :cond_11

    .line 695
    .line 696
    const/4 v15, 0x0

    .line 697
    goto :goto_15

    .line 698
    :cond_11
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    move-object v15, v0

    .line 703
    :goto_15
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    if-eqz v0, :cond_12

    .line 708
    .line 709
    const/16 v16, 0x0

    .line 710
    .line 711
    goto :goto_16

    .line 712
    :cond_12
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    move-object/from16 v16, v0

    .line 717
    .line 718
    :goto_16
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-eqz v0, :cond_13

    .line 723
    .line 724
    const/16 v17, 0x0

    .line 725
    .line 726
    goto :goto_17

    .line 727
    :cond_13
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    move-object/from16 v17, v0

    .line 732
    .line 733
    :goto_17
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    if-eqz v0, :cond_14

    .line 738
    .line 739
    const/16 v18, 0x0

    .line 740
    .line 741
    goto :goto_18

    .line 742
    :cond_14
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    move-object/from16 v18, v0

    .line 747
    .line 748
    :goto_18
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 749
    .line 750
    .line 751
    move-result-wide v19

    .line 752
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    if-eqz v0, :cond_15

    .line 757
    .line 758
    const/16 v21, 0x0

    .line 759
    .line 760
    goto :goto_19

    .line 761
    :cond_15
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 762
    .line 763
    .line 764
    move-result-wide v2

    .line 765
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 766
    .line 767
    .line 768
    move-result-object v10

    .line 769
    move-object/from16 v21, v10

    .line 770
    .line 771
    :goto_19
    new-instance v11, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 772
    .line 773
    invoke-direct/range {v11 .. v21}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 774
    .line 775
    .line 776
    move-object v10, v11

    .line 777
    goto :goto_1a

    .line 778
    :catchall_8
    move-exception v0

    .line 779
    goto :goto_1b

    .line 780
    :cond_16
    const/4 v10, 0x0

    .line 781
    :goto_1a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 782
    .line 783
    .line 784
    return-object v10

    .line 785
    :goto_1b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 786
    .line 787
    .line 788
    throw v0

    .line 789
    :pswitch_8
    move-object/from16 v0, p1

    .line 790
    .line 791
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 792
    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 794
    .line 795
    .line 796
    const-string v1, "DELETE FROM playlists WHERE uid = ?"

    .line 797
    .line 798
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    :try_start_a
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 803
    .line 804
    .line 805
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 806
    .line 807
    .line 808
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 809
    .line 810
    .line 811
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 812
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 813
    .line 814
    .line 815
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    return-object v0

    .line 820
    :catchall_9
    move-exception v0

    .line 821
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 822
    .line 823
    .line 824
    throw v0

    .line 825
    :pswitch_9
    move-object/from16 v0, p1

    .line 826
    .line 827
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 828
    .line 829
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    const-string v1, "SELECT * FROM playlists WHERE uid = ?"

    .line 833
    .line 834
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    :try_start_b
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 839
    .line 840
    .line 841
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 842
    .line 843
    .line 844
    move-result v0

    .line 845
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 846
    .line 847
    .line 848
    move-result v3

    .line 849
    const-string v4, "is_thumbnail_permanent"

    .line 850
    .line 851
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 852
    .line 853
    .line 854
    move-result v4

    .line 855
    const-string/jumbo v5, "thumbnail_stream_id"

    .line 856
    .line 857
    .line 858
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 859
    .line 860
    .line 861
    move-result v5

    .line 862
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 863
    .line 864
    .line 865
    move-result v2

    .line 866
    new-instance v6, Ljava/util/ArrayList;

    .line 867
    .line 868
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .line 870
    .line 871
    :goto_1c
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 872
    .line 873
    .line 874
    move-result v7

    .line 875
    if-eqz v7, :cond_19

    .line 876
    .line 877
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 878
    .line 879
    .line 880
    move-result-wide v13

    .line 881
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 882
    .line 883
    .line 884
    move-result v7

    .line 885
    if-eqz v7, :cond_17

    .line 886
    .line 887
    const/4 v15, 0x0

    .line 888
    goto :goto_1d

    .line 889
    :cond_17
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v7

    .line 893
    move-object v15, v7

    .line 894
    :goto_1d
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 895
    .line 896
    .line 897
    move-result-wide v7

    .line 898
    long-to-int v7, v7

    .line 899
    if-eqz v7, :cond_18

    .line 900
    .line 901
    move/from16 v16, v11

    .line 902
    .line 903
    goto :goto_1e

    .line 904
    :cond_18
    move/from16 v16, v9

    .line 905
    .line 906
    :goto_1e
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 907
    .line 908
    .line 909
    move-result-wide v17

    .line 910
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 911
    .line 912
    .line 913
    move-result-wide v19

    .line 914
    new-instance v12, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 915
    .line 916
    invoke-direct/range {v12 .. v20}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;-><init>(JLjava/lang/String;ZJJ)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 920
    .line 921
    .line 922
    goto :goto_1c

    .line 923
    :catchall_a
    move-exception v0

    .line 924
    goto :goto_1f

    .line 925
    :cond_19
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 926
    .line 927
    .line 928
    return-object v6

    .line 929
    :goto_1f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 930
    .line 931
    .line 932
    throw v0

    .line 933
    :pswitch_a
    move-object/from16 v0, p1

    .line 934
    .line 935
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 936
    .line 937
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 938
    .line 939
    .line 940
    const-string v1, "DELETE FROM stream_history WHERE stream_id = ?"

    .line 941
    .line 942
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 943
    .line 944
    .line 945
    move-result-object v1

    .line 946
    :try_start_c
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 947
    .line 948
    .line 949
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 950
    .line 951
    .line 952
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 953
    .line 954
    .line 955
    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 956
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 957
    .line 958
    .line 959
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    return-object v0

    .line 964
    :catchall_b
    move-exception v0

    .line 965
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 966
    .line 967
    .line 968
    throw v0

    .line 969
    :pswitch_b
    move-object/from16 v0, p1

    .line 970
    .line 971
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 972
    .line 973
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    .line 975
    .line 976
    const-string v1, "SELECT * FROM stream_history WHERE stream_id = ? ORDER BY access_date DESC LIMIT 1"

    .line 977
    .line 978
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    :try_start_d
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 983
    .line 984
    .line 985
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 986
    .line 987
    .line 988
    move-result v0

    .line 989
    const-string v2, "access_date"

    .line 990
    .line 991
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 992
    .line 993
    .line 994
    move-result v2

    .line 995
    const-string v3, "repeat_count"

    .line 996
    .line 997
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 998
    .line 999
    .line 1000
    move-result v3

    .line 1001
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1002
    .line 1003
    .line 1004
    move-result v4

    .line 1005
    if-eqz v4, :cond_1c

    .line 1006
    .line 1007
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1008
    .line 1009
    .line 1010
    move-result-wide v12

    .line 1011
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    if-eqz v0, :cond_1a

    .line 1016
    .line 1017
    const/4 v10, 0x0

    .line 1018
    goto :goto_20

    .line 1019
    :cond_1a
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1020
    .line 1021
    .line 1022
    move-result-wide v4

    .line 1023
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v10

    .line 1027
    :goto_20
    invoke-static {v10}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v14

    .line 1031
    if-eqz v14, :cond_1b

    .line 1032
    .line 1033
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1034
    .line 1035
    .line 1036
    move-result-wide v15

    .line 1037
    new-instance v11, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    .line 1038
    .line 1039
    invoke-direct/range {v11 .. v16}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;-><init>(JLj$/time/OffsetDateTime;J)V

    .line 1040
    .line 1041
    .line 1042
    move-object v10, v11

    .line 1043
    goto :goto_21

    .line 1044
    :catchall_c
    move-exception v0

    .line 1045
    goto :goto_22

    .line 1046
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1047
    .line 1048
    const-string v2, "Expected NON-NULL \'java.time.OffsetDateTime\', but it was NULL."

    .line 1049
    .line 1050
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 1054
    :cond_1c
    const/4 v10, 0x0

    .line 1055
    :goto_21
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1056
    .line 1057
    .line 1058
    return-object v10

    .line 1059
    :goto_22
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1060
    .line 1061
    .line 1062
    throw v0

    .line 1063
    :pswitch_c
    move-object/from16 v0, p1

    .line 1064
    .line 1065
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1066
    .line 1067
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1068
    .line 1069
    .line 1070
    const-string v1, "DELETE FROM feed_group WHERE uid = ?"

    .line 1071
    .line 1072
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    :try_start_e
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1077
    .line 1078
    .line 1079
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1080
    .line 1081
    .line 1082
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 1083
    .line 1084
    .line 1085
    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    .line 1086
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1087
    .line 1088
    .line 1089
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v0

    .line 1093
    return-object v0

    .line 1094
    :catchall_d
    move-exception v0

    .line 1095
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1096
    .line 1097
    .line 1098
    throw v0

    .line 1099
    :pswitch_d
    move-object/from16 v0, p1

    .line 1100
    .line 1101
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1102
    .line 1103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1104
    .line 1105
    .line 1106
    const-string v1, "SELECT subscription_id FROM feed_group_subscription_join WHERE group_id = ?"

    .line 1107
    .line 1108
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v1

    .line 1112
    :try_start_f
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1113
    .line 1114
    .line 1115
    new-instance v0, Ljava/util/ArrayList;

    .line 1116
    .line 1117
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    .line 1119
    .line 1120
    :goto_23
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v2

    .line 1124
    if-eqz v2, :cond_1d

    .line 1125
    .line 1126
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1127
    .line 1128
    .line 1129
    move-result-wide v2

    .line 1130
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v2

    .line 1134
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 1135
    .line 1136
    .line 1137
    goto :goto_23

    .line 1138
    :catchall_e
    move-exception v0

    .line 1139
    goto :goto_24

    .line 1140
    :cond_1d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1141
    .line 1142
    .line 1143
    return-object v0

    .line 1144
    :goto_24
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1145
    .line 1146
    .line 1147
    throw v0

    .line 1148
    :pswitch_e
    move-object/from16 v0, p1

    .line 1149
    .line 1150
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1151
    .line 1152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1153
    .line 1154
    .line 1155
    const-string v1, "DELETE FROM feed_group_subscription_join WHERE group_id = ?"

    .line 1156
    .line 1157
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    :try_start_10
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1162
    .line 1163
    .line 1164
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1165
    .line 1166
    .line 1167
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 1168
    .line 1169
    .line 1170
    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    .line 1171
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1172
    .line 1173
    .line 1174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    return-object v0

    .line 1179
    :catchall_f
    move-exception v0

    .line 1180
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1181
    .line 1182
    .line 1183
    throw v0

    .line 1184
    :pswitch_f
    move-object/from16 v0, p1

    .line 1185
    .line 1186
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1187
    .line 1188
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1189
    .line 1190
    .line 1191
    const-string v1, "\n        DELETE FROM feed\n        \n        WHERE feed.subscription_id = ?\n\n        AND feed.stream_id IN (\n            SELECT s.uid FROM streams s\n\n            INNER JOIN feed f\n            ON s.uid = f.stream_id\n\n            WHERE s.stream_type = \"LIVE_STREAM\" OR s.stream_type = \"AUDIO_LIVE_STREAM\"\n        )\n        "

    .line 1192
    .line 1193
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v1

    .line 1197
    :try_start_11
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1198
    .line 1199
    .line 1200
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    .line 1201
    .line 1202
    .line 1203
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1204
    .line 1205
    .line 1206
    return-object v6

    .line 1207
    :catchall_10
    move-exception v0

    .line 1208
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1209
    .line 1210
    .line 1211
    throw v0

    .line 1212
    :pswitch_10
    move-object/from16 v0, p1

    .line 1213
    .line 1214
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1215
    .line 1216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1217
    .line 1218
    .line 1219
    const-string v1, "\n        SELECT COUNT(*) FROM subscriptions s\n        \n        INNER JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id AND fgs.group_id = ?\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id \n\n        WHERE lu.last_updated IS NULL\n        "

    .line 1220
    .line 1221
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    :try_start_12
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1226
    .line 1227
    .line 1228
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v0

    .line 1232
    if-eqz v0, :cond_1f

    .line 1233
    .line 1234
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v0

    .line 1238
    if-eqz v0, :cond_1e

    .line 1239
    .line 1240
    goto :goto_25

    .line 1241
    :cond_1e
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1242
    .line 1243
    .line 1244
    move-result-wide v2

    .line 1245
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    .line 1249
    goto :goto_26

    .line 1250
    :catchall_11
    move-exception v0

    .line 1251
    goto :goto_27

    .line 1252
    :cond_1f
    :goto_25
    const/4 v10, 0x0

    .line 1253
    :goto_26
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1254
    .line 1255
    .line 1256
    return-object v10

    .line 1257
    :goto_27
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1258
    .line 1259
    .line 1260
    throw v0

    .line 1261
    :pswitch_11
    move-object/from16 v0, p1

    .line 1262
    .line 1263
    check-cast v0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    .line 1264
    .line 1265
    iget-object v1, v0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->onFrame:Lkotlin/jvm/functions/Function1;

    .line 1266
    .line 1267
    if-nez v1, :cond_20

    .line 1268
    .line 1269
    goto :goto_29

    .line 1270
    :cond_20
    iget-object v2, v0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 1271
    .line 1272
    if-eqz v2, :cond_21

    .line 1273
    .line 1274
    :try_start_13
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v0

    .line 1278
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    .line 1282
    goto :goto_28

    .line 1283
    :catchall_12
    move-exception v0

    .line 1284
    new-instance v1, Lkotlin/Result$Failure;

    .line 1285
    .line 1286
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 1287
    .line 1288
    .line 1289
    move-object v0, v1

    .line 1290
    :goto_28
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 1291
    .line 1292
    .line 1293
    :cond_21
    :goto_29
    return-object v6

    .line 1294
    :pswitch_12
    move-object/from16 v0, p1

    .line 1295
    .line 1296
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1297
    .line 1298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1299
    .line 1300
    .line 1301
    const-string v1, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    .line 1302
    .line 1303
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v1

    .line 1307
    :try_start_14
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1308
    .line 1309
    .line 1310
    const-string v0, "id"

    .line 1311
    .line 1312
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1313
    .line 1314
    .line 1315
    move-result v0

    .line 1316
    const-string/jumbo v2, "state"

    .line 1317
    .line 1318
    .line 1319
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1320
    .line 1321
    .line 1322
    move-result v2

    .line 1323
    const-string/jumbo v3, "worker_class_name"

    .line 1324
    .line 1325
    .line 1326
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1327
    .line 1328
    .line 1329
    move-result v3

    .line 1330
    const-string v4, "input_merger_class_name"

    .line 1331
    .line 1332
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1333
    .line 1334
    .line 1335
    move-result v4

    .line 1336
    const-string v5, "input"

    .line 1337
    .line 1338
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1339
    .line 1340
    .line 1341
    move-result v5

    .line 1342
    const-string v6, "output"

    .line 1343
    .line 1344
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1345
    .line 1346
    .line 1347
    move-result v6

    .line 1348
    const-string v7, "initial_delay"

    .line 1349
    .line 1350
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1351
    .line 1352
    .line 1353
    move-result v7

    .line 1354
    const-string v8, "interval_duration"

    .line 1355
    .line 1356
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1357
    .line 1358
    .line 1359
    move-result v8

    .line 1360
    const-string v12, "flex_duration"

    .line 1361
    .line 1362
    invoke-static {v1, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1363
    .line 1364
    .line 1365
    move-result v12

    .line 1366
    const-string v13, "run_attempt_count"

    .line 1367
    .line 1368
    invoke-static {v1, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1369
    .line 1370
    .line 1371
    move-result v13

    .line 1372
    const-string v14, "backoff_policy"

    .line 1373
    .line 1374
    invoke-static {v1, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1375
    .line 1376
    .line 1377
    move-result v14

    .line 1378
    const-string v15, "backoff_delay_duration"

    .line 1379
    .line 1380
    invoke-static {v1, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1381
    .line 1382
    .line 1383
    move-result v15

    .line 1384
    const-string v9, "last_enqueue_time"

    .line 1385
    .line 1386
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1387
    .line 1388
    .line 1389
    move-result v9

    .line 1390
    const-string v10, "minimum_retention_duration"

    .line 1391
    .line 1392
    invoke-static {v1, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1393
    .line 1394
    .line 1395
    move-result v10

    .line 1396
    const-string v11, "schedule_requested_at"

    .line 1397
    .line 1398
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1399
    .line 1400
    .line 1401
    move-result v11

    .line 1402
    move/from16 p0, v11

    .line 1403
    .line 1404
    const-string v11, "run_in_foreground"

    .line 1405
    .line 1406
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1407
    .line 1408
    .line 1409
    move-result v11

    .line 1410
    move/from16 p1, v11

    .line 1411
    .line 1412
    const-string v11, "out_of_quota_policy"

    .line 1413
    .line 1414
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1415
    .line 1416
    .line 1417
    move-result v11

    .line 1418
    move/from16 v19, v11

    .line 1419
    .line 1420
    const-string v11, "period_count"

    .line 1421
    .line 1422
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1423
    .line 1424
    .line 1425
    move-result v11

    .line 1426
    move/from16 v20, v11

    .line 1427
    .line 1428
    const-string v11, "generation"

    .line 1429
    .line 1430
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1431
    .line 1432
    .line 1433
    move-result v11

    .line 1434
    move/from16 v21, v11

    .line 1435
    .line 1436
    const-string v11, "next_schedule_time_override"

    .line 1437
    .line 1438
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1439
    .line 1440
    .line 1441
    move-result v11

    .line 1442
    move/from16 v22, v11

    .line 1443
    .line 1444
    const-string v11, "next_schedule_time_override_generation"

    .line 1445
    .line 1446
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1447
    .line 1448
    .line 1449
    move-result v11

    .line 1450
    move/from16 v23, v11

    .line 1451
    .line 1452
    const-string/jumbo v11, "stop_reason"

    .line 1453
    .line 1454
    .line 1455
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1456
    .line 1457
    .line 1458
    move-result v11

    .line 1459
    move/from16 v24, v11

    .line 1460
    .line 1461
    const-string/jumbo v11, "trace_tag"

    .line 1462
    .line 1463
    .line 1464
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1465
    .line 1466
    .line 1467
    move-result v11

    .line 1468
    move/from16 v25, v11

    .line 1469
    .line 1470
    const-string v11, "backoff_on_system_interruptions"

    .line 1471
    .line 1472
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1473
    .line 1474
    .line 1475
    move-result v11

    .line 1476
    move/from16 v26, v11

    .line 1477
    .line 1478
    const-string v11, "required_network_type"

    .line 1479
    .line 1480
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1481
    .line 1482
    .line 1483
    move-result v11

    .line 1484
    move/from16 v27, v11

    .line 1485
    .line 1486
    const-string v11, "required_network_request"

    .line 1487
    .line 1488
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1489
    .line 1490
    .line 1491
    move-result v11

    .line 1492
    move/from16 v28, v11

    .line 1493
    .line 1494
    const-string v11, "requires_charging"

    .line 1495
    .line 1496
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1497
    .line 1498
    .line 1499
    move-result v11

    .line 1500
    move/from16 v29, v11

    .line 1501
    .line 1502
    const-string v11, "requires_device_idle"

    .line 1503
    .line 1504
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1505
    .line 1506
    .line 1507
    move-result v11

    .line 1508
    move/from16 v30, v11

    .line 1509
    .line 1510
    const-string v11, "requires_battery_not_low"

    .line 1511
    .line 1512
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1513
    .line 1514
    .line 1515
    move-result v11

    .line 1516
    move/from16 v31, v11

    .line 1517
    .line 1518
    const-string v11, "requires_storage_not_low"

    .line 1519
    .line 1520
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1521
    .line 1522
    .line 1523
    move-result v11

    .line 1524
    move/from16 v32, v11

    .line 1525
    .line 1526
    const-string/jumbo v11, "trigger_content_update_delay"

    .line 1527
    .line 1528
    .line 1529
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1530
    .line 1531
    .line 1532
    move-result v11

    .line 1533
    move/from16 v33, v11

    .line 1534
    .line 1535
    const-string/jumbo v11, "trigger_max_content_delay"

    .line 1536
    .line 1537
    .line 1538
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1539
    .line 1540
    .line 1541
    move-result v11

    .line 1542
    move/from16 v34, v11

    .line 1543
    .line 1544
    const-string v11, "content_uri_triggers"

    .line 1545
    .line 1546
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1547
    .line 1548
    .line 1549
    move-result v11

    .line 1550
    move/from16 v35, v11

    .line 1551
    .line 1552
    new-instance v11, Ljava/util/ArrayList;

    .line 1553
    .line 1554
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    .line 1556
    .line 1557
    :goto_2a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1558
    .line 1559
    .line 1560
    move-result v36

    .line 1561
    if-eqz v36, :cond_2b

    .line 1562
    .line 1563
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v38

    .line 1567
    move/from16 v36, v10

    .line 1568
    .line 1569
    move-object/from16 v71, v11

    .line 1570
    .line 1571
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1572
    .line 1573
    .line 1574
    move-result-wide v10

    .line 1575
    long-to-int v10, v10

    .line 1576
    invoke-static {v10}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v39

    .line 1580
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v40

    .line 1584
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v41

    .line 1588
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1589
    .line 1590
    .line 1591
    move-result-object v10

    .line 1592
    sget-object v11, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1593
    .line 1594
    invoke-static {v10}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v42

    .line 1598
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1599
    .line 1600
    .line 1601
    move-result-object v10

    .line 1602
    invoke-static {v10}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v43

    .line 1606
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1607
    .line 1608
    .line 1609
    move-result-wide v44

    .line 1610
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1611
    .line 1612
    .line 1613
    move-result-wide v46

    .line 1614
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1615
    .line 1616
    .line 1617
    move-result-wide v48

    .line 1618
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1619
    .line 1620
    .line 1621
    move-result-wide v10

    .line 1622
    long-to-int v10, v10

    .line 1623
    move v11, v2

    .line 1624
    move/from16 v72, v3

    .line 1625
    .line 1626
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1627
    .line 1628
    .line 1629
    move-result-wide v2

    .line 1630
    long-to-int v2, v2

    .line 1631
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v52

    .line 1635
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1636
    .line 1637
    .line 1638
    move-result-wide v53

    .line 1639
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1640
    .line 1641
    .line 1642
    move-result-wide v55

    .line 1643
    move/from16 v2, v36

    .line 1644
    .line 1645
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1646
    .line 1647
    .line 1648
    move-result-wide v57

    .line 1649
    move/from16 v3, p0

    .line 1650
    .line 1651
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1652
    .line 1653
    .line 1654
    move-result-wide v59

    .line 1655
    move/from16 p0, v0

    .line 1656
    .line 1657
    move/from16 v36, v2

    .line 1658
    .line 1659
    move/from16 v0, p1

    .line 1660
    .line 1661
    move/from16 p1, v3

    .line 1662
    .line 1663
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1664
    .line 1665
    .line 1666
    move-result-wide v2

    .line 1667
    long-to-int v2, v2

    .line 1668
    if-eqz v2, :cond_22

    .line 1669
    .line 1670
    const/16 v61, 0x1

    .line 1671
    .line 1672
    :goto_2b
    move/from16 v2, v19

    .line 1673
    .line 1674
    move/from16 v19, v4

    .line 1675
    .line 1676
    goto :goto_2c

    .line 1677
    :cond_22
    const/16 v61, 0x0

    .line 1678
    .line 1679
    goto :goto_2b

    .line 1680
    :goto_2c
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1681
    .line 1682
    .line 1683
    move-result-wide v3

    .line 1684
    long-to-int v3, v3

    .line 1685
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v62

    .line 1689
    move/from16 v3, v20

    .line 1690
    .line 1691
    move/from16 v20, v5

    .line 1692
    .line 1693
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1694
    .line 1695
    .line 1696
    move-result-wide v4

    .line 1697
    long-to-int v4, v4

    .line 1698
    move/from16 v73, v3

    .line 1699
    .line 1700
    move/from16 v5, v21

    .line 1701
    .line 1702
    move/from16 v21, v2

    .line 1703
    .line 1704
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1705
    .line 1706
    .line 1707
    move-result-wide v2

    .line 1708
    long-to-int v2, v2

    .line 1709
    move/from16 v3, v22

    .line 1710
    .line 1711
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1712
    .line 1713
    .line 1714
    move-result-wide v65

    .line 1715
    move/from16 v22, v0

    .line 1716
    .line 1717
    move/from16 v64, v2

    .line 1718
    .line 1719
    move/from16 v0, v23

    .line 1720
    .line 1721
    move/from16 v23, v3

    .line 1722
    .line 1723
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1724
    .line 1725
    .line 1726
    move-result-wide v2

    .line 1727
    long-to-int v2, v2

    .line 1728
    move/from16 v63, v4

    .line 1729
    .line 1730
    move/from16 v3, v24

    .line 1731
    .line 1732
    move/from16 v24, v5

    .line 1733
    .line 1734
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1735
    .line 1736
    .line 1737
    move-result-wide v4

    .line 1738
    long-to-int v4, v4

    .line 1739
    move/from16 v5, v25

    .line 1740
    .line 1741
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1742
    .line 1743
    .line 1744
    move-result v25

    .line 1745
    if-eqz v25, :cond_23

    .line 1746
    .line 1747
    const/16 v69, 0x0

    .line 1748
    .line 1749
    :goto_2d
    move/from16 v25, v0

    .line 1750
    .line 1751
    move/from16 v0, v26

    .line 1752
    .line 1753
    goto :goto_2e

    .line 1754
    :cond_23
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v25

    .line 1758
    move-object/from16 v69, v25

    .line 1759
    .line 1760
    goto :goto_2d

    .line 1761
    :goto_2e
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1762
    .line 1763
    .line 1764
    move-result v26

    .line 1765
    if-eqz v26, :cond_24

    .line 1766
    .line 1767
    move/from16 v67, v2

    .line 1768
    .line 1769
    move/from16 v26, v3

    .line 1770
    .line 1771
    const/4 v2, 0x0

    .line 1772
    goto :goto_2f

    .line 1773
    :cond_24
    move/from16 v67, v2

    .line 1774
    .line 1775
    move/from16 v26, v3

    .line 1776
    .line 1777
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1778
    .line 1779
    .line 1780
    move-result-wide v2

    .line 1781
    long-to-int v2, v2

    .line 1782
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v2

    .line 1786
    :goto_2f
    if-eqz v2, :cond_26

    .line 1787
    .line 1788
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1789
    .line 1790
    .line 1791
    move-result v2

    .line 1792
    if-eqz v2, :cond_25

    .line 1793
    .line 1794
    const/4 v2, 0x1

    .line 1795
    goto :goto_30

    .line 1796
    :cond_25
    const/4 v2, 0x0

    .line 1797
    :goto_30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v2

    .line 1801
    move-object/from16 v70, v2

    .line 1802
    .line 1803
    :goto_31
    move/from16 v68, v4

    .line 1804
    .line 1805
    move/from16 v2, v27

    .line 1806
    .line 1807
    goto :goto_32

    .line 1808
    :catchall_13
    move-exception v0

    .line 1809
    goto/16 :goto_3b

    .line 1810
    .line 1811
    :cond_26
    const/16 v70, 0x0

    .line 1812
    .line 1813
    goto :goto_31

    .line 1814
    :goto_32
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1815
    .line 1816
    .line 1817
    move-result-wide v3

    .line 1818
    long-to-int v3, v3

    .line 1819
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v76

    .line 1823
    move/from16 v3, v28

    .line 1824
    .line 1825
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1826
    .line 1827
    .line 1828
    move-result-object v4

    .line 1829
    invoke-static {v4}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v75

    .line 1833
    move/from16 v27, v2

    .line 1834
    .line 1835
    move/from16 v28, v3

    .line 1836
    .line 1837
    move/from16 v4, v29

    .line 1838
    .line 1839
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1840
    .line 1841
    .line 1842
    move-result-wide v2

    .line 1843
    long-to-int v2, v2

    .line 1844
    if-eqz v2, :cond_27

    .line 1845
    .line 1846
    const/16 v77, 0x1

    .line 1847
    .line 1848
    :goto_33
    move/from16 v29, v4

    .line 1849
    .line 1850
    move/from16 v2, v30

    .line 1851
    .line 1852
    goto :goto_34

    .line 1853
    :cond_27
    const/16 v77, 0x0

    .line 1854
    .line 1855
    goto :goto_33

    .line 1856
    :goto_34
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1857
    .line 1858
    .line 1859
    move-result-wide v3

    .line 1860
    long-to-int v3, v3

    .line 1861
    if-eqz v3, :cond_28

    .line 1862
    .line 1863
    const/16 v78, 0x1

    .line 1864
    .line 1865
    :goto_35
    move/from16 v30, v5

    .line 1866
    .line 1867
    move/from16 v3, v31

    .line 1868
    .line 1869
    goto :goto_36

    .line 1870
    :cond_28
    const/16 v78, 0x0

    .line 1871
    .line 1872
    goto :goto_35

    .line 1873
    :goto_36
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1874
    .line 1875
    .line 1876
    move-result-wide v4

    .line 1877
    long-to-int v4, v4

    .line 1878
    if-eqz v4, :cond_29

    .line 1879
    .line 1880
    const/16 v79, 0x1

    .line 1881
    .line 1882
    :goto_37
    move v5, v2

    .line 1883
    move/from16 v31, v3

    .line 1884
    .line 1885
    move/from16 v4, v32

    .line 1886
    .line 1887
    goto :goto_38

    .line 1888
    :cond_29
    const/16 v79, 0x0

    .line 1889
    .line 1890
    goto :goto_37

    .line 1891
    :goto_38
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1892
    .line 1893
    .line 1894
    move-result-wide v2

    .line 1895
    long-to-int v2, v2

    .line 1896
    if-eqz v2, :cond_2a

    .line 1897
    .line 1898
    const/16 v80, 0x1

    .line 1899
    .line 1900
    :goto_39
    move/from16 v2, v33

    .line 1901
    .line 1902
    goto :goto_3a

    .line 1903
    :cond_2a
    const/16 v80, 0x0

    .line 1904
    .line 1905
    goto :goto_39

    .line 1906
    :goto_3a
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1907
    .line 1908
    .line 1909
    move-result-wide v81

    .line 1910
    move/from16 v3, v34

    .line 1911
    .line 1912
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1913
    .line 1914
    .line 1915
    move-result-wide v83

    .line 1916
    move/from16 v32, v0

    .line 1917
    .line 1918
    move/from16 v0, v35

    .line 1919
    .line 1920
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1921
    .line 1922
    .line 1923
    move-result-object v33

    .line 1924
    invoke-static/range {v33 .. v33}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v85

    .line 1928
    new-instance v50, Landroidx/work/Constraints;

    .line 1929
    .line 1930
    move-object/from16 v74, v50

    .line 1931
    .line 1932
    invoke-direct/range {v74 .. v85}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1933
    .line 1934
    .line 1935
    move-object/from16 v50, v74

    .line 1936
    .line 1937
    new-instance v37, Landroidx/work/impl/model/WorkSpec;

    .line 1938
    .line 1939
    move/from16 v51, v10

    .line 1940
    .line 1941
    invoke-direct/range {v37 .. v70}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 1942
    .line 1943
    .line 1944
    move-object/from16 v10, v37

    .line 1945
    .line 1946
    move/from16 v35, v0

    .line 1947
    .line 1948
    move-object/from16 v0, v71

    .line 1949
    .line 1950
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_13

    .line 1951
    .line 1952
    .line 1953
    move/from16 v10, v32

    .line 1954
    .line 1955
    move/from16 v32, v4

    .line 1956
    .line 1957
    move/from16 v4, v19

    .line 1958
    .line 1959
    move/from16 v19, v21

    .line 1960
    .line 1961
    move/from16 v21, v24

    .line 1962
    .line 1963
    move/from16 v24, v26

    .line 1964
    .line 1965
    move/from16 v26, v10

    .line 1966
    .line 1967
    move/from16 v33, v2

    .line 1968
    .line 1969
    move/from16 v34, v3

    .line 1970
    .line 1971
    move v2, v11

    .line 1972
    move/from16 v10, v36

    .line 1973
    .line 1974
    move/from16 v3, v72

    .line 1975
    .line 1976
    move-object v11, v0

    .line 1977
    move/from16 v0, p0

    .line 1978
    .line 1979
    move/from16 p0, p1

    .line 1980
    .line 1981
    move/from16 p1, v22

    .line 1982
    .line 1983
    move/from16 v22, v23

    .line 1984
    .line 1985
    move/from16 v23, v25

    .line 1986
    .line 1987
    move/from16 v25, v30

    .line 1988
    .line 1989
    move/from16 v30, v5

    .line 1990
    .line 1991
    move/from16 v5, v20

    .line 1992
    .line 1993
    move/from16 v20, v73

    .line 1994
    .line 1995
    goto/16 :goto_2a

    .line 1996
    .line 1997
    :cond_2b
    move-object v0, v11

    .line 1998
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1999
    .line 2000
    .line 2001
    return-object v0

    .line 2002
    :goto_3b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2003
    .line 2004
    .line 2005
    throw v0

    .line 2006
    nop

    .line 2007
    :pswitch_data_0
    .packed-switch 0x0
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
