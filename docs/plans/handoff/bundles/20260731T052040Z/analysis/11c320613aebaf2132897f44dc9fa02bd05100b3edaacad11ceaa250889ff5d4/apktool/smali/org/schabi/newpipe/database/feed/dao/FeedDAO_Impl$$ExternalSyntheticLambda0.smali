.class public final synthetic Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

.field public final synthetic f$2:Lj$/time/OffsetDateTime;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;->f$2:Lj$/time/OffsetDateTime;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "notification_mode"

    .line 6
    .line 7
    const-string v3, "description"

    .line 8
    .line 9
    const-string/jumbo v4, "subscriber_count"

    .line 10
    .line 11
    .line 12
    const-string v5, "avatar_url"

    .line 13
    .line 14
    const-string v6, "name"

    .line 15
    .line 16
    const-string/jumbo v7, "url"

    .line 17
    .line 18
    .line 19
    const-string v8, "service_id"

    .line 20
    .line 21
    const-string/jumbo v9, "uid"

    .line 22
    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x1

    .line 26
    iget-object v12, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;->f$2:Lj$/time/OffsetDateTime;

    .line 27
    .line 28
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string v2, "\n        DELETE FROM feed\n        WHERE feed.stream_id IN (SELECT uid from (\n              SELECT s.uid,\n              (SELECT MAX(upload_date)\n                    FROM streams s1\n                    INNER JOIN feed f1\n                    ON s1.uid = f1.stream_id\n                    WHERE f1.subscription_id = f.subscription_id) max_upload_date\n              FROM streams s\n              INNER JOIN feed f\n              ON s.uid = f.stream_id\n        \n              WHERE s.upload_date < ?\n              AND   s.upload_date <> max_upload_date))\n        "

    .line 41
    .line 42
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :try_start_0
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 47
    .line 48
    invoke-static {v12}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    invoke-interface {v1, v11, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 74
    .line 75
    return-object v0

    .line 76
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :pswitch_0
    move-object/from16 v1, p1

    .line 81
    .line 82
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const-string v13, "\n        SELECT s.* FROM subscriptions s\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id\n\n        WHERE \n            (lu.last_updated IS NULL OR lu.last_updated < ?)\n            AND s.notification_mode = ?\n        "

    .line 88
    .line 89
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :try_start_1
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 94
    .line 95
    invoke-static {v12}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v12

    .line 112
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 113
    .line 114
    .line 115
    :goto_2
    const/4 v0, 0x2

    .line 116
    const-wide/16 v11, 0x1

    .line 117
    .line 118
    invoke-interface {v1, v0, v11, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    new-instance v9, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    :goto_3
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    if-eqz v11, :cond_7

    .line 163
    .line 164
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 165
    .line 166
    .line 167
    move-result-wide v13

    .line 168
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 169
    .line 170
    .line 171
    move-result-wide v11

    .line 172
    long-to-int v15, v11

    .line 173
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    if-eqz v11, :cond_2

    .line 178
    .line 179
    move-object/from16 v16, v10

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_2
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    move-object/from16 v16, v11

    .line 187
    .line 188
    :goto_4
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    if-eqz v11, :cond_3

    .line 193
    .line 194
    move-object/from16 v17, v10

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    move-object/from16 v17, v11

    .line 202
    .line 203
    :goto_5
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    if-eqz v11, :cond_4

    .line 208
    .line 209
    move-object/from16 v18, v10

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_4
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    move-object/from16 v18, v11

    .line 217
    .line 218
    :goto_6
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    if-eqz v11, :cond_5

    .line 223
    .line 224
    move-object/from16 v19, v10

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_5
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 228
    .line 229
    .line 230
    move-result-wide v11

    .line 231
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    move-object/from16 v19, v11

    .line 236
    .line 237
    :goto_7
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    if-eqz v11, :cond_6

    .line 242
    .line 243
    move-object/from16 v20, v10

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_6
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    move-object/from16 v20, v11

    .line 251
    .line 252
    :goto_8
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 253
    .line 254
    .line 255
    move-result-wide v11

    .line 256
    long-to-int v11, v11

    .line 257
    new-instance v12, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 258
    .line 259
    move/from16 v21, v11

    .line 260
    .line 261
    invoke-direct/range {v12 .. v21}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 269
    .line 270
    .line 271
    return-object v9

    .line 272
    :goto_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 273
    .line 274
    .line 275
    throw v0

    .line 276
    :pswitch_1
    move-object/from16 v1, p1

    .line 277
    .line 278
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    const-string v13, "\n        SELECT s.* FROM subscriptions s\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id \n\n        WHERE lu.last_updated IS NULL OR lu.last_updated < ?\n        "

    .line 284
    .line 285
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    :try_start_2
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 290
    .line 291
    invoke-static {v12}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-nez v0, :cond_8

    .line 296
    .line 297
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 298
    .line 299
    .line 300
    goto :goto_a

    .line 301
    :catchall_2
    move-exception v0

    .line 302
    goto/16 :goto_11

    .line 303
    .line 304
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 305
    .line 306
    .line 307
    move-result-wide v12

    .line 308
    invoke-interface {v1, v11, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 309
    .line 310
    .line 311
    :goto_a
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    new-instance v9, Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .line 347
    .line 348
    :goto_b
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 349
    .line 350
    .line 351
    move-result v11

    .line 352
    if-eqz v11, :cond_e

    .line 353
    .line 354
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 355
    .line 356
    .line 357
    move-result-wide v13

    .line 358
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 359
    .line 360
    .line 361
    move-result-wide v11

    .line 362
    long-to-int v15, v11

    .line 363
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 364
    .line 365
    .line 366
    move-result v11

    .line 367
    if-eqz v11, :cond_9

    .line 368
    .line 369
    move-object/from16 v16, v10

    .line 370
    .line 371
    goto :goto_c

    .line 372
    :cond_9
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    move-object/from16 v16, v11

    .line 377
    .line 378
    :goto_c
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 379
    .line 380
    .line 381
    move-result v11

    .line 382
    if-eqz v11, :cond_a

    .line 383
    .line 384
    move-object/from16 v17, v10

    .line 385
    .line 386
    goto :goto_d

    .line 387
    :cond_a
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v11

    .line 391
    move-object/from16 v17, v11

    .line 392
    .line 393
    :goto_d
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 394
    .line 395
    .line 396
    move-result v11

    .line 397
    if-eqz v11, :cond_b

    .line 398
    .line 399
    move-object/from16 v18, v10

    .line 400
    .line 401
    goto :goto_e

    .line 402
    :cond_b
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v11

    .line 406
    move-object/from16 v18, v11

    .line 407
    .line 408
    :goto_e
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 409
    .line 410
    .line 411
    move-result v11

    .line 412
    if-eqz v11, :cond_c

    .line 413
    .line 414
    move-object/from16 v19, v10

    .line 415
    .line 416
    goto :goto_f

    .line 417
    :cond_c
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 418
    .line 419
    .line 420
    move-result-wide v11

    .line 421
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 422
    .line 423
    .line 424
    move-result-object v11

    .line 425
    move-object/from16 v19, v11

    .line 426
    .line 427
    :goto_f
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 428
    .line 429
    .line 430
    move-result v11

    .line 431
    if-eqz v11, :cond_d

    .line 432
    .line 433
    move-object/from16 v20, v10

    .line 434
    .line 435
    goto :goto_10

    .line 436
    :cond_d
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v11

    .line 440
    move-object/from16 v20, v11

    .line 441
    .line 442
    :goto_10
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 443
    .line 444
    .line 445
    move-result-wide v11

    .line 446
    long-to-int v11, v11

    .line 447
    new-instance v12, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 448
    .line 449
    move/from16 v21, v11

    .line 450
    .line 451
    invoke-direct/range {v12 .. v21}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 455
    .line 456
    .line 457
    goto :goto_b

    .line 458
    :cond_e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 459
    .line 460
    .line 461
    return-object v9

    .line 462
    :goto_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 463
    .line 464
    .line 465
    throw v0

    .line 466
    nop

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
