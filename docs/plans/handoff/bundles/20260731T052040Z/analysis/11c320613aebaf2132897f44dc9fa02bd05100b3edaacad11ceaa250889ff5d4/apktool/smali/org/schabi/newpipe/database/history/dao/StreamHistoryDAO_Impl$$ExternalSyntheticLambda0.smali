.class public final synthetic Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

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
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "Expected NON-NULL \'java.time.OffsetDateTime\', but it was NULL."

    .line 6
    .line 7
    iget-object v0, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v6, "SELECT * FROM streams INNER JOIN stream_history ON uid = stream_id ORDER BY uid ASC"

    .line 20
    .line 21
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :try_start_0
    const-string/jumbo v6, "uid"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const-string v7, "service_id"

    .line 33
    .line 34
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const-string/jumbo v8, "url"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    const-string/jumbo v9, "title"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const-string/jumbo v10, "stream_type"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    const-string v11, "duration"

    .line 60
    .line 61
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    const-string/jumbo v12, "uploader"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    const-string/jumbo v13, "uploader_url"

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    const-string/jumbo v14, "thumbnail_url"

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    const-string/jumbo v15, "view_count"

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    const-string/jumbo v5, "textual_upload_date"

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    const-string/jumbo v4, "upload_date"

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const-string v3, "is_upload_date_approximation"

    .line 108
    .line 109
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    move-object/from16 v18, v2

    .line 114
    .line 115
    const-string/jumbo v2, "stream_id"

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    move/from16 p0, v3

    .line 123
    .line 124
    const-string v3, "access_date"

    .line 125
    .line 126
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    move/from16 p1, v4

    .line 131
    .line 132
    const-string v4, "repeat_count"

    .line 133
    .line 134
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    move/from16 v19, v5

    .line 139
    .line 140
    new-instance v5, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 146
    .line 147
    .line 148
    move-result v20

    .line 149
    if-eqz v20, :cond_a

    .line 150
    .line 151
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 152
    .line 153
    .line 154
    move-result-wide v23

    .line 155
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 156
    .line 157
    .line 158
    move-result v20

    .line 159
    if-eqz v20, :cond_0

    .line 160
    .line 161
    const/16 v20, 0x0

    .line 162
    .line 163
    :goto_1
    move/from16 v28, v2

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v20

    .line 170
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v20

    .line 174
    goto :goto_1

    .line 175
    :goto_2
    iget-object v2, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 176
    .line 177
    invoke-static/range {v20 .. v20}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 178
    .line 179
    .line 180
    move-result-object v25

    .line 181
    if-eqz v25, :cond_9

    .line 182
    .line 183
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 184
    .line 185
    .line 186
    move-result-wide v26

    .line 187
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 188
    .line 189
    .line 190
    move-result-wide v30

    .line 191
    move/from16 v20, v3

    .line 192
    .line 193
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 194
    .line 195
    .line 196
    move-result-wide v2

    .line 197
    long-to-int v2, v2

    .line 198
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v33

    .line 202
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v34

    .line 206
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-static {v3}, Lokio/Path$Companion;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 211
    .line 212
    .line 213
    move-result-object v35

    .line 214
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 215
    .line 216
    .line 217
    move-result-wide v36

    .line 218
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v38

    .line 222
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_1

    .line 227
    .line 228
    const/16 v39, 0x0

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_1
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    move-object/from16 v39, v3

    .line 236
    .line 237
    :goto_3
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_2

    .line 242
    .line 243
    const/16 v40, 0x0

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_2
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    move-object/from16 v40, v3

    .line 251
    .line 252
    :goto_4
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-eqz v3, :cond_3

    .line 257
    .line 258
    const/16 v41, 0x0

    .line 259
    .line 260
    :goto_5
    move/from16 v3, v19

    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_3
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 264
    .line 265
    .line 266
    move-result-wide v21

    .line 267
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    move-object/from16 v41, v3

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :goto_6
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 275
    .line 276
    .line 277
    move-result v19

    .line 278
    if-eqz v19, :cond_4

    .line 279
    .line 280
    const/16 v42, 0x0

    .line 281
    .line 282
    :goto_7
    move/from16 v32, v2

    .line 283
    .line 284
    move/from16 v2, p1

    .line 285
    .line 286
    goto :goto_8

    .line 287
    :cond_4
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v19

    .line 291
    move-object/from16 v42, v19

    .line 292
    .line 293
    goto :goto_7

    .line 294
    :goto_8
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 295
    .line 296
    .line 297
    move-result v19

    .line 298
    if-eqz v19, :cond_5

    .line 299
    .line 300
    const/16 v19, 0x0

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_5
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 304
    .line 305
    .line 306
    move-result-wide v21

    .line 307
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 308
    .line 309
    .line 310
    move-result-object v19

    .line 311
    :goto_9
    invoke-static/range {v19 .. v19}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 312
    .line 313
    .line 314
    move-result-object v43

    .line 315
    move/from16 p1, v2

    .line 316
    .line 317
    move/from16 v2, p0

    .line 318
    .line 319
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 320
    .line 321
    .line 322
    move-result v19

    .line 323
    if-eqz v19, :cond_6

    .line 324
    .line 325
    move/from16 v19, v3

    .line 326
    .line 327
    move/from16 p0, v4

    .line 328
    .line 329
    const/4 v3, 0x0

    .line 330
    goto :goto_a

    .line 331
    :cond_6
    move/from16 v19, v3

    .line 332
    .line 333
    move/from16 p0, v4

    .line 334
    .line 335
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 336
    .line 337
    .line 338
    move-result-wide v3

    .line 339
    long-to-int v3, v3

    .line 340
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    :goto_a
    if-eqz v3, :cond_8

    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    if-eqz v3, :cond_7

    .line 351
    .line 352
    const/4 v3, 0x1

    .line 353
    goto :goto_b

    .line 354
    :cond_7
    const/4 v3, 0x0

    .line 355
    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    move-object/from16 v44, v3

    .line 360
    .line 361
    goto :goto_c

    .line 362
    :catchall_0
    move-exception v0

    .line 363
    goto :goto_d

    .line 364
    :cond_8
    const/16 v44, 0x0

    .line 365
    .line 366
    :goto_c
    new-instance v29, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 367
    .line 368
    invoke-direct/range {v29 .. v44}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    .line 369
    .line 370
    .line 371
    new-instance v21, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    .line 372
    .line 373
    move-object/from16 v22, v29

    .line 374
    .line 375
    invoke-direct/range {v21 .. v27}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JLj$/time/OffsetDateTime;J)V

    .line 376
    .line 377
    .line 378
    move-object/from16 v3, v21

    .line 379
    .line 380
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move/from16 v4, p0

    .line 384
    .line 385
    move/from16 p0, v2

    .line 386
    .line 387
    move/from16 v3, v20

    .line 388
    .line 389
    move/from16 v2, v28

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 394
    .line 395
    move-object/from16 v2, v18

    .line 396
    .line 397
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :cond_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 402
    .line 403
    .line 404
    return-object v5

    .line 405
    :goto_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 406
    .line 407
    .line 408
    throw v0

    .line 409
    :pswitch_0
    move-object/from16 v1, p1

    .line 410
    .line 411
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    const-string v3, "SELECT `uid`, `service_id`, `url`, `title`, `stream_type`, `duration`, `uploader`, `uploader_url`, `thumbnail_url`, `view_count`, `textual_upload_date`, `upload_date`, `is_upload_date_approximation`, `stream_id`, `latestAccess`, `watchCount`, `progress_time` FROM (\n        SELECT * FROM streams\n\n        INNER JOIN (\n            SELECT stream_id, MAX(access_date) AS latestAccess, SUM(repeat_count) AS watchCount\n            FROM stream_history\n            GROUP BY stream_id\n        )\n        ON uid = stream_id\n\n        LEFT JOIN (SELECT stream_id AS stream_id_alias, progress_time FROM stream_state )\n        ON uid = stream_id_alias\n        )"

    .line 417
    .line 418
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .line 426
    .line 427
    :goto_e
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    if-eqz v4, :cond_15

    .line 432
    .line 433
    const/16 v4, 0xd

    .line 434
    .line 435
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 436
    .line 437
    .line 438
    move-result-wide v9

    .line 439
    const/16 v4, 0xe

    .line 440
    .line 441
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    if-eqz v5, :cond_b

    .line 446
    .line 447
    const/4 v4, 0x0

    .line 448
    goto :goto_f

    .line 449
    :cond_b
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 450
    .line 451
    .line 452
    move-result-wide v4

    .line 453
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    :goto_f
    iget-object v5, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 458
    .line 459
    invoke-static {v4}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 460
    .line 461
    .line 462
    move-result-object v11

    .line 463
    if-eqz v11, :cond_14

    .line 464
    .line 465
    const/16 v4, 0xf

    .line 466
    .line 467
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 468
    .line 469
    .line 470
    move-result-wide v12

    .line 471
    const/16 v4, 0x10

    .line 472
    .line 473
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 474
    .line 475
    .line 476
    move-result-wide v7

    .line 477
    const/4 v4, 0x0

    .line 478
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 479
    .line 480
    .line 481
    move-result-wide v18

    .line 482
    const/4 v14, 0x1

    .line 483
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 484
    .line 485
    .line 486
    move-result-wide v5

    .line 487
    long-to-int v5, v5

    .line 488
    const/4 v6, 0x2

    .line 489
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v21

    .line 493
    const/4 v6, 0x3

    .line 494
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v22

    .line 498
    const/4 v6, 0x4

    .line 499
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    invoke-static {v6}, Lokio/Path$Companion;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 504
    .line 505
    .line 506
    move-result-object v23

    .line 507
    const/4 v6, 0x5

    .line 508
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 509
    .line 510
    .line 511
    move-result-wide v24

    .line 512
    const/4 v6, 0x6

    .line 513
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v26

    .line 517
    const/4 v6, 0x7

    .line 518
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 519
    .line 520
    .line 521
    move-result v15

    .line 522
    if-eqz v15, :cond_c

    .line 523
    .line 524
    const/16 v27, 0x0

    .line 525
    .line 526
    goto :goto_10

    .line 527
    :cond_c
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    move-object/from16 v27, v6

    .line 532
    .line 533
    :goto_10
    const/16 v6, 0x8

    .line 534
    .line 535
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 536
    .line 537
    .line 538
    move-result v15

    .line 539
    if-eqz v15, :cond_d

    .line 540
    .line 541
    const/16 v28, 0x0

    .line 542
    .line 543
    goto :goto_11

    .line 544
    :cond_d
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    move-object/from16 v28, v6

    .line 549
    .line 550
    :goto_11
    const/16 v6, 0x9

    .line 551
    .line 552
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 553
    .line 554
    .line 555
    move-result v15

    .line 556
    if-eqz v15, :cond_e

    .line 557
    .line 558
    const/16 v29, 0x0

    .line 559
    .line 560
    goto :goto_12

    .line 561
    :cond_e
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 562
    .line 563
    .line 564
    move-result-wide v16

    .line 565
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 566
    .line 567
    .line 568
    move-result-object v6

    .line 569
    move-object/from16 v29, v6

    .line 570
    .line 571
    :goto_12
    const/16 v6, 0xa

    .line 572
    .line 573
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 574
    .line 575
    .line 576
    move-result v15

    .line 577
    if-eqz v15, :cond_f

    .line 578
    .line 579
    const/16 v30, 0x0

    .line 580
    .line 581
    goto :goto_13

    .line 582
    :cond_f
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    move-object/from16 v30, v6

    .line 587
    .line 588
    :goto_13
    const/16 v6, 0xb

    .line 589
    .line 590
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 591
    .line 592
    .line 593
    move-result v15

    .line 594
    if-eqz v15, :cond_10

    .line 595
    .line 596
    const/4 v6, 0x0

    .line 597
    goto :goto_14

    .line 598
    :cond_10
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 599
    .line 600
    .line 601
    move-result-wide v16

    .line 602
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 603
    .line 604
    .line 605
    move-result-object v6

    .line 606
    :goto_14
    invoke-static {v6}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 607
    .line 608
    .line 609
    move-result-object v31

    .line 610
    const/16 v6, 0xc

    .line 611
    .line 612
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 613
    .line 614
    .line 615
    move-result v15

    .line 616
    if-eqz v15, :cond_11

    .line 617
    .line 618
    move/from16 v20, v5

    .line 619
    .line 620
    const/4 v4, 0x0

    .line 621
    goto :goto_15

    .line 622
    :cond_11
    move/from16 v20, v5

    .line 623
    .line 624
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 625
    .line 626
    .line 627
    move-result-wide v4

    .line 628
    long-to-int v4, v4

    .line 629
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    :goto_15
    if-eqz v4, :cond_13

    .line 634
    .line 635
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    if-eqz v4, :cond_12

    .line 640
    .line 641
    move v4, v14

    .line 642
    goto :goto_16

    .line 643
    :cond_12
    const/4 v4, 0x0

    .line 644
    :goto_16
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    move-object/from16 v32, v4

    .line 649
    .line 650
    goto :goto_17

    .line 651
    :catchall_1
    move-exception v0

    .line 652
    goto :goto_18

    .line 653
    :cond_13
    const/16 v32, 0x0

    .line 654
    .line 655
    :goto_17
    new-instance v17, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 656
    .line 657
    invoke-direct/range {v17 .. v32}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    .line 658
    .line 659
    .line 660
    new-instance v5, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 661
    .line 662
    move-object/from16 v6, v17

    .line 663
    .line 664
    invoke-direct/range {v5 .. v13}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JJLj$/time/OffsetDateTime;J)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    goto/16 :goto_e

    .line 671
    .line 672
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 673
    .line 674
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 678
    :cond_15
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 679
    .line 680
    .line 681
    return-object v3

    .line 682
    :goto_18
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 683
    .line 684
    .line 685
    throw v0

    .line 686
    nop

    .line 687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
