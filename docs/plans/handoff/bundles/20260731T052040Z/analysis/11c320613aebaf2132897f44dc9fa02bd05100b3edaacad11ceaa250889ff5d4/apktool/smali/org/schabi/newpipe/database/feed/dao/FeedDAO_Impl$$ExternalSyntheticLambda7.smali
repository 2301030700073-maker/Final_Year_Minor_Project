.class public final synthetic Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$1:J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

.field public final synthetic f$5:Lj$/time/OffsetDateTime;


# direct methods
.method public synthetic constructor <init>(JZZLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$1:J

    .line 5
    .line 6
    iput-boolean p3, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$2:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$3:Z

    .line 9
    .line 10
    iput-object p5, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$4:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 11
    .line 12
    iput-object p6, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$5:Lj$/time/OffsetDateTime;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$1:J

    .line 4
    .line 5
    iget-boolean v3, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$2:Z

    .line 6
    .line 7
    iget-boolean v4, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$3:Z

    .line 8
    .line 9
    iget-object v5, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$4:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$5:Lj$/time/OffsetDateTime;

    .line 12
    .line 13
    move-object/from16 v6, p1

    .line 14
    .line 15
    check-cast v6, Landroidx/sqlite/SQLiteConnection;

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v7, "\n        SELECT s.*, sst.progress_time\n        FROM streams s\n\n        LEFT JOIN stream_state sst\n        ON s.uid = sst.stream_id\n        \n        LEFT JOIN stream_history sh\n        ON s.uid = sh.stream_id\n        \n        INNER JOIN feed f\n        ON s.uid = f.stream_id\n\n        LEFT JOIN feed_group_subscription_join fgs\n        ON (\n            ? <> -1\n            AND fgs.subscription_id = f.subscription_id\n        )\n\n        WHERE (\n            ? = -1\n            OR fgs.group_id = ?\n        )\n        AND (\n            ?\n            OR sh.stream_id IS NULL\n            OR sst.stream_id IS NULL\n            OR sst.progress_time < s.duration * 1000 - 60000\n            OR sst.progress_time < s.duration * 1000 * 3 / 4\n            OR s.stream_type = \'LIVE_STREAM\'\n            OR s.stream_type = \'AUDIO_LIVE_STREAM\'\n        )\n        AND (\n            ?\n            OR sh.stream_id IS NULL\n            OR sst.stream_id IS NULL\n            OR (sst.progress_time <= 5000\n            AND sst.progress_time <= s.duration * 1000 / 4)\n            OR (sst.progress_time >= s.duration * 1000 - 60000\n            AND sst.progress_time >= s.duration * 1000 * 3 / 4)\n        )\n        AND (\n            ? IS NULL\n            OR s.upload_date IS NULL\n            OR s.upload_date < ?\n        )\n\n        ORDER BY s.upload_date IS NULL DESC, s.upload_date DESC, s.uploader ASC\n        LIMIT 500\n        "

    .line 21
    .line 22
    invoke-interface {v6, v7}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/4 v7, 0x1

    .line 27
    :try_start_0
    invoke-interface {v6, v7, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 28
    .line 29
    .line 30
    const/4 v8, 0x2

    .line 31
    invoke-interface {v6, v8, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 32
    .line 33
    .line 34
    const/4 v8, 0x3

    .line 35
    invoke-interface {v6, v8, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    int-to-long v2, v3

    .line 40
    invoke-interface {v6, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    int-to-long v2, v4

    .line 45
    invoke-interface {v6, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v5, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 49
    .line 50
    invoke-static {v0}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x6

    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto/16 :goto_b

    .line 63
    .line 64
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    invoke-interface {v6, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-static {v0}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v1, 0x7

    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    invoke-interface {v6, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 87
    .line 88
    .line 89
    :goto_1
    const-string/jumbo v0, "uid"

    .line 90
    .line 91
    .line 92
    invoke-static {v6, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const-string v1, "service_id"

    .line 97
    .line 98
    invoke-static {v6, v1}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const-string/jumbo v2, "url"

    .line 103
    .line 104
    .line 105
    invoke-static {v6, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    const-string/jumbo v3, "title"

    .line 110
    .line 111
    .line 112
    invoke-static {v6, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    const-string/jumbo v4, "stream_type"

    .line 117
    .line 118
    .line 119
    invoke-static {v6, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    const-string v5, "duration"

    .line 124
    .line 125
    invoke-static {v6, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    const-string/jumbo v8, "uploader"

    .line 130
    .line 131
    .line 132
    invoke-static {v6, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    const-string/jumbo v9, "uploader_url"

    .line 137
    .line 138
    .line 139
    invoke-static {v6, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    const-string/jumbo v10, "thumbnail_url"

    .line 144
    .line 145
    .line 146
    invoke-static {v6, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    const-string/jumbo v11, "view_count"

    .line 151
    .line 152
    .line 153
    invoke-static {v6, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    const-string/jumbo v12, "textual_upload_date"

    .line 158
    .line 159
    .line 160
    invoke-static {v6, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    const-string/jumbo v13, "upload_date"

    .line 165
    .line 166
    .line 167
    invoke-static {v6, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    const-string v14, "is_upload_date_approximation"

    .line 172
    .line 173
    invoke-static {v6, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    const-string v15, "progress_time"

    .line 178
    .line 179
    invoke-static {v6, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    new-instance v7, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    :goto_2
    invoke-interface {v6}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 189
    .line 190
    .line 191
    move-result v16

    .line 192
    if-eqz v16, :cond_b

    .line 193
    .line 194
    invoke-interface {v6, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 195
    .line 196
    .line 197
    move-result v16

    .line 198
    const/16 v17, 0x0

    .line 199
    .line 200
    if-eqz v16, :cond_2

    .line 201
    .line 202
    move/from16 p1, v15

    .line 203
    .line 204
    move-object/from16 v15, v17

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_2
    invoke-interface {v6, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 208
    .line 209
    .line 210
    move-result-wide v18

    .line 211
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object v16

    .line 215
    move/from16 p1, v15

    .line 216
    .line 217
    move-object/from16 v15, v16

    .line 218
    .line 219
    :goto_3
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 220
    .line 221
    .line 222
    move-result-wide v19

    .line 223
    move/from16 v16, v14

    .line 224
    .line 225
    move-object/from16 v34, v15

    .line 226
    .line 227
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 228
    .line 229
    .line 230
    move-result-wide v14

    .line 231
    long-to-int v14, v14

    .line 232
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v22

    .line 236
    invoke-interface {v6, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v23

    .line 240
    invoke-interface {v6, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v15

    .line 244
    invoke-static {v15}, Lokio/Path$Companion;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 245
    .line 246
    .line 247
    move-result-object v24

    .line 248
    invoke-interface {v6, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 249
    .line 250
    .line 251
    move-result-wide v25

    .line 252
    invoke-interface {v6, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v27

    .line 256
    invoke-interface {v6, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 257
    .line 258
    .line 259
    move-result v15

    .line 260
    if-eqz v15, :cond_3

    .line 261
    .line 262
    move-object/from16 v28, v17

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_3
    invoke-interface {v6, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v15

    .line 269
    move-object/from16 v28, v15

    .line 270
    .line 271
    :goto_4
    invoke-interface {v6, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 272
    .line 273
    .line 274
    move-result v15

    .line 275
    if-eqz v15, :cond_4

    .line 276
    .line 277
    move-object/from16 v29, v17

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_4
    invoke-interface {v6, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v15

    .line 284
    move-object/from16 v29, v15

    .line 285
    .line 286
    :goto_5
    invoke-interface {v6, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 287
    .line 288
    .line 289
    move-result v15

    .line 290
    if-eqz v15, :cond_5

    .line 291
    .line 292
    move-object/from16 v30, v17

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_5
    invoke-interface {v6, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 296
    .line 297
    .line 298
    move-result-wide v30

    .line 299
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v15

    .line 303
    move-object/from16 v30, v15

    .line 304
    .line 305
    :goto_6
    invoke-interface {v6, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 306
    .line 307
    .line 308
    move-result v15

    .line 309
    if-eqz v15, :cond_6

    .line 310
    .line 311
    move-object/from16 v31, v17

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_6
    invoke-interface {v6, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v15

    .line 318
    move-object/from16 v31, v15

    .line 319
    .line 320
    :goto_7
    invoke-interface {v6, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 321
    .line 322
    .line 323
    move-result v15

    .line 324
    if-eqz v15, :cond_7

    .line 325
    .line 326
    move-object/from16 v15, v17

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_7
    invoke-interface {v6, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 330
    .line 331
    .line 332
    move-result-wide v32

    .line 333
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 334
    .line 335
    .line 336
    move-result-object v15

    .line 337
    :goto_8
    invoke-static {v15}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 338
    .line 339
    .line 340
    move-result-object v32

    .line 341
    move/from16 v15, v16

    .line 342
    .line 343
    invoke-interface {v6, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 344
    .line 345
    .line 346
    move-result v16

    .line 347
    if-eqz v16, :cond_8

    .line 348
    .line 349
    move/from16 v16, v0

    .line 350
    .line 351
    move/from16 v35, v1

    .line 352
    .line 353
    move-object/from16 v0, v17

    .line 354
    .line 355
    goto :goto_9

    .line 356
    :cond_8
    move/from16 v16, v0

    .line 357
    .line 358
    move/from16 v35, v1

    .line 359
    .line 360
    invoke-interface {v6, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 361
    .line 362
    .line 363
    move-result-wide v0

    .line 364
    long-to-int v0, v0

    .line 365
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    :goto_9
    if-eqz v0, :cond_a

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_9

    .line 376
    .line 377
    const/4 v0, 0x1

    .line 378
    goto :goto_a

    .line 379
    :cond_9
    const/4 v0, 0x0

    .line 380
    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 381
    .line 382
    .line 383
    move-result-object v17

    .line 384
    :cond_a
    move-object/from16 v33, v17

    .line 385
    .line 386
    new-instance v18, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 387
    .line 388
    move/from16 v21, v14

    .line 389
    .line 390
    invoke-direct/range {v18 .. v33}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    .line 391
    .line 392
    .line 393
    move-object/from16 v0, v18

    .line 394
    .line 395
    new-instance v1, Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 396
    .line 397
    move-object/from16 v14, v34

    .line 398
    .line 399
    invoke-direct {v1, v0, v14}, Lorg/schabi/newpipe/database/stream/StreamWithState;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;Ljava/lang/Long;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .line 404
    .line 405
    move v14, v15

    .line 406
    move/from16 v0, v16

    .line 407
    .line 408
    move/from16 v1, v35

    .line 409
    .line 410
    move/from16 v15, p1

    .line 411
    .line 412
    goto/16 :goto_2

    .line 413
    .line 414
    :cond_b
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    .line 415
    .line 416
    .line 417
    return-object v7

    .line 418
    :goto_b
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    .line 419
    .line 420
    .line 421
    throw v0
.end method
