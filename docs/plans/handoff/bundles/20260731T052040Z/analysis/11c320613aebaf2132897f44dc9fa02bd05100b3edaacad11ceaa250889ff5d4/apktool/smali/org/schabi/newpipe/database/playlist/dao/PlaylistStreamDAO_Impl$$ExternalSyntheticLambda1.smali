.class public final synthetic Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;


# direct methods
.method public synthetic constructor <init>(JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;->f$1:J

    .line 4
    .line 5
    iput-object p3, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

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
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    const/16 v3, 0xe

    .line 8
    .line 9
    const/16 v4, 0xd

    .line 10
    .line 11
    const/4 v10, 0x7

    .line 12
    const/4 v11, 0x6

    .line 13
    const/4 v12, 0x5

    .line 14
    const/4 v13, 0x4

    .line 15
    const/4 v14, 0x3

    .line 16
    const/4 v15, 0x2

    .line 17
    const/16 v16, 0x0

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    iget-object v7, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 22
    .line 23
    iget-wide v8, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;->f$1:J

    .line 24
    .line 25
    move-object/from16 v0, p1

    .line 26
    .line 27
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 28
    .line 29
    packed-switch v1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v1, "SELECT `uid`, `service_id`, `url`, `title`, `stream_type`, `duration`, `uploader`, `uploader_url`, `thumbnail_url`, `view_count`, `textual_upload_date`, `upload_date`, `is_upload_date_approximation`, `stream_id`, `join_index`, `progress_time` FROM (\n        SELECT *, MIN(join_index) FROM streams\n\n        INNER JOIN (SELECT stream_id, join_index FROM playlist_stream_join WHERE playlist_id = ?)\n        ON uid = stream_id\n\n        LEFT JOIN (SELECT stream_id AS stream_id_alias, progress_time FROM stream_state )\n        ON uid = stream_id_alias\n\n        GROUP BY uid\n        ORDER BY MIN(join_index) ASC\n        )"

    .line 36
    .line 37
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :try_start_0
    invoke-interface {v1, v5, v8, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_8

    .line 54
    .line 55
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 56
    .line 57
    .line 58
    move-result-wide v26

    .line 59
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    long-to-int v8, v8

    .line 64
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v24

    .line 68
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 69
    .line 70
    .line 71
    move-result-wide v29

    .line 72
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    long-to-int v2, v2

    .line 77
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v32

    .line 81
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v33

    .line 85
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget-object v9, v7, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 90
    .line 91
    invoke-static {v3}, Lokio/Path$Companion;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 92
    .line 93
    .line 94
    move-result-object v34

    .line 95
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 96
    .line 97
    .line 98
    move-result-wide v35

    .line 99
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v37

    .line 103
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_0

    .line 108
    .line 109
    move-object/from16 v38, v16

    .line 110
    .line 111
    :goto_1
    const/16 v3, 0x8

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_0
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    move-object/from16 v38, v3

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :goto_2
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-eqz v9, :cond_1

    .line 126
    .line 127
    move-object/from16 v39, v16

    .line 128
    .line 129
    :goto_3
    const/16 v3, 0x9

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    move-object/from16 v39, v9

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :goto_4
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_2

    .line 144
    .line 145
    move-object/from16 v40, v16

    .line 146
    .line 147
    :goto_5
    const/16 v3, 0xa

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_2
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 151
    .line 152
    .line 153
    move-result-wide v22

    .line 154
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    move-object/from16 v40, v3

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :goto_6
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_3

    .line 166
    .line 167
    move-object/from16 v41, v16

    .line 168
    .line 169
    :goto_7
    const/16 v3, 0xb

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_3
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    move-object/from16 v41, v9

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :goto_8
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-eqz v9, :cond_4

    .line 184
    .line 185
    move-object/from16 v3, v16

    .line 186
    .line 187
    goto :goto_9

    .line 188
    :cond_4
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v22

    .line 192
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    :goto_9
    invoke-static {v3}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 197
    .line 198
    .line 199
    move-result-object v42

    .line 200
    const/16 v3, 0xc

    .line 201
    .line 202
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-eqz v9, :cond_5

    .line 207
    .line 208
    move-object/from16 v3, v16

    .line 209
    .line 210
    goto :goto_a

    .line 211
    :cond_5
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 212
    .line 213
    .line 214
    move-result-wide v10

    .line 215
    long-to-int v3, v10

    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    :goto_a
    if-eqz v3, :cond_7

    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_6

    .line 227
    .line 228
    move v3, v5

    .line 229
    goto :goto_b

    .line 230
    :cond_6
    move v3, v6

    .line 231
    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    move-object/from16 v43, v3

    .line 236
    .line 237
    goto :goto_c

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    goto :goto_d

    .line 240
    :cond_7
    move-object/from16 v43, v16

    .line 241
    .line 242
    :goto_c
    new-instance v23, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 243
    .line 244
    move/from16 v31, v2

    .line 245
    .line 246
    move-object/from16 v28, v23

    .line 247
    .line 248
    invoke-direct/range {v28 .. v43}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    .line 249
    .line 250
    .line 251
    move-object/from16 v23, v28

    .line 252
    .line 253
    new-instance v22, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 254
    .line 255
    move/from16 v28, v8

    .line 256
    .line 257
    invoke-direct/range {v22 .. v28}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JJI)V

    .line 258
    .line 259
    .line 260
    move-object/from16 v2, v22

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .line 264
    .line 265
    const/16 v2, 0xf

    .line 266
    .line 267
    const/16 v3, 0xe

    .line 268
    .line 269
    const/4 v10, 0x7

    .line 270
    const/4 v11, 0x6

    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 274
    .line 275
    .line 276
    return-object v0

    .line 277
    :goto_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    const-string v1, "SELECT `uid`, `service_id`, `url`, `title`, `stream_type`, `duration`, `uploader`, `uploader_url`, `thumbnail_url`, `view_count`, `textual_upload_date`, `upload_date`, `is_upload_date_approximation`, `stream_id`, `join_index`, `progress_time` FROM (\n        SELECT * FROM streams\n\n        INNER JOIN (SELECT stream_id, join_index FROM playlist_stream_join WHERE playlist_id = ?)\n        ON uid = stream_id\n\n        LEFT JOIN (SELECT stream_id AS stream_id_alias, progress_time FROM stream_state )\n        ON uid = stream_id_alias\n\n        ORDER BY join_index ASC\n        )"

    .line 285
    .line 286
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    :try_start_1
    invoke-interface {v1, v5, v8, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 291
    .line 292
    .line 293
    new-instance v0, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    :goto_e
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_11

    .line 303
    .line 304
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 305
    .line 306
    .line 307
    move-result-wide v26

    .line 308
    const/16 v2, 0xe

    .line 309
    .line 310
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 311
    .line 312
    .line 313
    move-result-wide v8

    .line 314
    long-to-int v3, v8

    .line 315
    const/16 v8, 0xf

    .line 316
    .line 317
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v24

    .line 321
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 322
    .line 323
    .line 324
    move-result-wide v29

    .line 325
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 326
    .line 327
    .line 328
    move-result-wide v9

    .line 329
    long-to-int v9, v9

    .line 330
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v32

    .line 334
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v33

    .line 338
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    iget-object v11, v7, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 343
    .line 344
    invoke-static {v10}, Lokio/Path$Companion;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 345
    .line 346
    .line 347
    move-result-object v34

    .line 348
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 349
    .line 350
    .line 351
    move-result-wide v35

    .line 352
    const/4 v10, 0x6

    .line 353
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v37

    .line 357
    const/4 v11, 0x7

    .line 358
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 359
    .line 360
    .line 361
    move-result v22

    .line 362
    if-eqz v22, :cond_9

    .line 363
    .line 364
    move-object/from16 v38, v16

    .line 365
    .line 366
    :goto_f
    const/16 v2, 0x8

    .line 367
    .line 368
    goto :goto_10

    .line 369
    :cond_9
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v22

    .line 373
    move-object/from16 v38, v22

    .line 374
    .line 375
    goto :goto_f

    .line 376
    :goto_10
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 377
    .line 378
    .line 379
    move-result v21

    .line 380
    if-eqz v21, :cond_a

    .line 381
    .line 382
    move-object/from16 v39, v16

    .line 383
    .line 384
    :goto_11
    const/16 v2, 0x9

    .line 385
    .line 386
    goto :goto_12

    .line 387
    :cond_a
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v21

    .line 391
    move-object/from16 v39, v21

    .line 392
    .line 393
    goto :goto_11

    .line 394
    :goto_12
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 395
    .line 396
    .line 397
    move-result v20

    .line 398
    if-eqz v20, :cond_b

    .line 399
    .line 400
    move-object/from16 v40, v16

    .line 401
    .line 402
    :goto_13
    const/16 v2, 0xa

    .line 403
    .line 404
    goto :goto_14

    .line 405
    :cond_b
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 406
    .line 407
    .line 408
    move-result-wide v22

    .line 409
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 410
    .line 411
    .line 412
    move-result-object v20

    .line 413
    move-object/from16 v40, v20

    .line 414
    .line 415
    goto :goto_13

    .line 416
    :goto_14
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 417
    .line 418
    .line 419
    move-result v19

    .line 420
    if-eqz v19, :cond_c

    .line 421
    .line 422
    move-object/from16 v41, v16

    .line 423
    .line 424
    :goto_15
    const/16 v2, 0xb

    .line 425
    .line 426
    goto :goto_16

    .line 427
    :cond_c
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v19

    .line 431
    move-object/from16 v41, v19

    .line 432
    .line 433
    goto :goto_15

    .line 434
    :goto_16
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 435
    .line 436
    .line 437
    move-result v18

    .line 438
    if-eqz v18, :cond_d

    .line 439
    .line 440
    move-object/from16 v18, v16

    .line 441
    .line 442
    goto :goto_17

    .line 443
    :cond_d
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 444
    .line 445
    .line 446
    move-result-wide v22

    .line 447
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 448
    .line 449
    .line 450
    move-result-object v18

    .line 451
    :goto_17
    invoke-static/range {v18 .. v18}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 452
    .line 453
    .line 454
    move-result-object v42

    .line 455
    const/16 v2, 0xc

    .line 456
    .line 457
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 458
    .line 459
    .line 460
    move-result v17

    .line 461
    if-eqz v17, :cond_e

    .line 462
    .line 463
    move-object/from16 v4, v16

    .line 464
    .line 465
    goto :goto_18

    .line 466
    :cond_e
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 467
    .line 468
    .line 469
    move-result-wide v4

    .line 470
    long-to-int v4, v4

    .line 471
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    :goto_18
    if-eqz v4, :cond_10

    .line 476
    .line 477
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    if-eqz v4, :cond_f

    .line 482
    .line 483
    const/4 v4, 0x1

    .line 484
    goto :goto_19

    .line 485
    :cond_f
    move v4, v6

    .line 486
    :goto_19
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    move-object/from16 v43, v4

    .line 491
    .line 492
    goto :goto_1a

    .line 493
    :catchall_1
    move-exception v0

    .line 494
    goto :goto_1b

    .line 495
    :cond_10
    move-object/from16 v43, v16

    .line 496
    .line 497
    :goto_1a
    new-instance v23, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 498
    .line 499
    move/from16 v31, v9

    .line 500
    .line 501
    move-object/from16 v28, v23

    .line 502
    .line 503
    invoke-direct/range {v28 .. v43}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    .line 504
    .line 505
    .line 506
    move-object/from16 v23, v28

    .line 507
    .line 508
    new-instance v22, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 509
    .line 510
    move/from16 v28, v3

    .line 511
    .line 512
    invoke-direct/range {v22 .. v28}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JJI)V

    .line 513
    .line 514
    .line 515
    move-object/from16 v3, v22

    .line 516
    .line 517
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 518
    .line 519
    .line 520
    const/16 v4, 0xd

    .line 521
    .line 522
    const/4 v5, 0x1

    .line 523
    goto/16 :goto_e

    .line 524
    .line 525
    :cond_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 526
    .line 527
    .line 528
    return-object v0

    .line 529
    :goto_1b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 530
    .line 531
    .line 532
    throw v0

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
