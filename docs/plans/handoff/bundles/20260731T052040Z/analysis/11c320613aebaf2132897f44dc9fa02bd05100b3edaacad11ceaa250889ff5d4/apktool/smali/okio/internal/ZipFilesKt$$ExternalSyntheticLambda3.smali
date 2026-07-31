.class public final synthetic Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;
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
    iput p1, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 7
    iput p2, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const-string v1, "CREATE UNIQUE INDEX `index_remote_playlists_service_id_url` ON `remote_playlists` (`service_id`, `url`)"

    .line 6
    .line 7
    const-string/jumbo v2, "uid"

    .line 8
    .line 9
    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v0, p1

    .line 16
    .line 17
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v1, "DELETE FROM stream_history"

    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :pswitch_0
    move-object/from16 v0, p1

    .line 49
    .line 50
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const-string v1, "SELECT * FROM streams INNER JOIN stream_history ON uid = stream_id ORDER BY access_date DESC"

    .line 56
    .line 57
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :try_start_1
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const-string v2, "service_id"

    .line 66
    .line 67
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const-string/jumbo v6, "url"

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const-string/jumbo v7, "title"

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    const-string/jumbo v8, "stream_type"

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    const-string v9, "duration"

    .line 93
    .line 94
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    const-string/jumbo v10, "uploader"

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    const-string/jumbo v11, "uploader_url"

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    const-string/jumbo v12, "thumbnail_url"

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    const-string/jumbo v13, "view_count"

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    const-string/jumbo v14, "textual_upload_date"

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    const-string/jumbo v15, "upload_date"

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v15

    .line 140
    const-string v3, "is_upload_date_approximation"

    .line 141
    .line 142
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    const-string/jumbo v5, "stream_id"

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    const-string v4, "access_date"

    .line 154
    .line 155
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    move/from16 p1, v3

    .line 160
    .line 161
    const-string v3, "repeat_count"

    .line 162
    .line 163
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    move/from16 v16, v15

    .line 168
    .line 169
    new-instance v15, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 175
    .line 176
    .line 177
    move-result v17

    .line 178
    if-eqz v17, :cond_a

    .line 179
    .line 180
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 181
    .line 182
    .line 183
    move-result-wide v20

    .line 184
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 185
    .line 186
    .line 187
    move-result v17

    .line 188
    if-eqz v17, :cond_0

    .line 189
    .line 190
    const/16 v17, 0x0

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_0
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 194
    .line 195
    .line 196
    move-result-wide v17

    .line 197
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v17

    .line 201
    :goto_1
    invoke-static/range {v17 .. v17}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 202
    .line 203
    .line 204
    move-result-object v22

    .line 205
    if-eqz v22, :cond_9

    .line 206
    .line 207
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 208
    .line 209
    .line 210
    move-result-wide v23

    .line 211
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 212
    .line 213
    .line 214
    move-result-wide v26

    .line 215
    move/from16 v41, v3

    .line 216
    .line 217
    move/from16 v17, v4

    .line 218
    .line 219
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 220
    .line 221
    .line 222
    move-result-wide v3

    .line 223
    long-to-int v3, v3

    .line 224
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v29

    .line 228
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v30

    .line 232
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {v4}, Lokio/Path$Companion;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 237
    .line 238
    .line 239
    move-result-object v31

    .line 240
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 241
    .line 242
    .line 243
    move-result-wide v32

    .line 244
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v34

    .line 248
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_1

    .line 253
    .line 254
    const/16 v35, 0x0

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_1
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    move-object/from16 v35, v4

    .line 262
    .line 263
    :goto_2
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_2

    .line 268
    .line 269
    const/16 v36, 0x0

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_2
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    move-object/from16 v36, v4

    .line 277
    .line 278
    :goto_3
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_3

    .line 283
    .line 284
    const/16 v37, 0x0

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_3
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 288
    .line 289
    .line 290
    move-result-wide v18

    .line 291
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    move-object/from16 v37, v4

    .line 296
    .line 297
    :goto_4
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_4

    .line 302
    .line 303
    const/16 v38, 0x0

    .line 304
    .line 305
    :goto_5
    move/from16 v4, v16

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_4
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    move-object/from16 v38, v4

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :goto_6
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 316
    .line 317
    .line 318
    move-result v16

    .line 319
    if-eqz v16, :cond_5

    .line 320
    .line 321
    const/16 v16, 0x0

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_5
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v18

    .line 328
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 329
    .line 330
    .line 331
    move-result-object v16

    .line 332
    :goto_7
    invoke-static/range {v16 .. v16}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 333
    .line 334
    .line 335
    move-result-object v39

    .line 336
    move/from16 v16, v0

    .line 337
    .line 338
    move/from16 v0, p1

    .line 339
    .line 340
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 341
    .line 342
    .line 343
    move-result v18

    .line 344
    if-eqz v18, :cond_6

    .line 345
    .line 346
    move/from16 p1, v2

    .line 347
    .line 348
    move/from16 v28, v3

    .line 349
    .line 350
    const/4 v2, 0x0

    .line 351
    goto :goto_8

    .line 352
    :cond_6
    move/from16 p1, v2

    .line 353
    .line 354
    move/from16 v28, v3

    .line 355
    .line 356
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 357
    .line 358
    .line 359
    move-result-wide v2

    .line 360
    long-to-int v2, v2

    .line 361
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    :goto_8
    if-eqz v2, :cond_8

    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-eqz v2, :cond_7

    .line 372
    .line 373
    const/4 v2, 0x1

    .line 374
    goto :goto_9

    .line 375
    :cond_7
    const/4 v2, 0x0

    .line 376
    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    move-object/from16 v40, v2

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :catchall_1
    move-exception v0

    .line 384
    goto :goto_b

    .line 385
    :cond_8
    const/16 v40, 0x0

    .line 386
    .line 387
    :goto_a
    new-instance v19, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 388
    .line 389
    move-object/from16 v25, v19

    .line 390
    .line 391
    invoke-direct/range {v25 .. v40}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    .line 392
    .line 393
    .line 394
    move-object/from16 v19, v25

    .line 395
    .line 396
    new-instance v18, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    .line 397
    .line 398
    invoke-direct/range {v18 .. v24}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JLj$/time/OffsetDateTime;J)V

    .line 399
    .line 400
    .line 401
    move-object/from16 v2, v18

    .line 402
    .line 403
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move/from16 v2, p1

    .line 407
    .line 408
    move/from16 p1, v0

    .line 409
    .line 410
    move/from16 v0, v16

    .line 411
    .line 412
    move/from16 v3, v41

    .line 413
    .line 414
    move/from16 v16, v4

    .line 415
    .line 416
    move/from16 v4, v17

    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 421
    .line 422
    const-string v2, "Expected NON-NULL \'java.time.OffsetDateTime\', but it was NULL."

    .line 423
    .line 424
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 428
    :cond_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 429
    .line 430
    .line 431
    return-object v15

    .line 432
    :goto_b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 433
    .line 434
    .line 435
    throw v0

    .line 436
    :pswitch_1
    move-object/from16 v0, p1

    .line 437
    .line 438
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    const-string v1, "SELECT search FROM search_history GROUP BY search ORDER BY MAX(creation_date) DESC LIMIT ?"

    .line 444
    .line 445
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    const-wide/16 v2, 0x19

    .line 450
    .line 451
    const/4 v0, 0x1

    .line 452
    :try_start_2
    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 453
    .line 454
    .line 455
    new-instance v0, Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .line 459
    .line 460
    :goto_c
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eqz v2, :cond_b

    .line 465
    .line 466
    const/4 v2, 0x0

    .line 467
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 472
    .line 473
    .line 474
    goto :goto_c

    .line 475
    :catchall_2
    move-exception v0

    .line 476
    goto :goto_d

    .line 477
    :cond_b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 478
    .line 479
    .line 480
    return-object v0

    .line 481
    :goto_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 482
    .line 483
    .line 484
    throw v0

    .line 485
    :pswitch_2
    move-object/from16 v0, p1

    .line 486
    .line 487
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    const-string v1, "DELETE FROM search_history"

    .line 493
    .line 494
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    :try_start_3
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 499
    .line 500
    .line 501
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 502
    .line 503
    .line 504
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 505
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 506
    .line 507
    .line 508
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    return-object v0

    .line 513
    :catchall_3
    move-exception v0

    .line 514
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 515
    .line 516
    .line 517
    throw v0

    .line 518
    :pswitch_3
    move-object/from16 v0, p1

    .line 519
    .line 520
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    const-string v1, "SELECT IFNULL(MAX(sort_order) + 1, 0) FROM feed_group"

    .line 526
    .line 527
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    :try_start_4
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    if-eqz v0, :cond_c

    .line 536
    .line 537
    const/4 v2, 0x0

    .line 538
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 539
    .line 540
    .line 541
    move-result-wide v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 542
    goto :goto_e

    .line 543
    :catchall_4
    move-exception v0

    .line 544
    goto :goto_f

    .line 545
    :cond_c
    const-wide/16 v2, 0x0

    .line 546
    .line 547
    :goto_e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 548
    .line 549
    .line 550
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    return-object v0

    .line 555
    :goto_f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 556
    .line 557
    .line 558
    throw v0

    .line 559
    :pswitch_4
    move-object/from16 v0, p1

    .line 560
    .line 561
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    const-string v1, "SELECT * FROM feed_group ORDER BY sort_order ASC"

    .line 567
    .line 568
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    :try_start_5
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    const-string v2, "name"

    .line 577
    .line 578
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    const-string v3, "icon_id"

    .line 583
    .line 584
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    const-string/jumbo v4, "sort_order"

    .line 589
    .line 590
    .line 591
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 592
    .line 593
    .line 594
    move-result v4

    .line 595
    new-instance v5, Ljava/util/ArrayList;

    .line 596
    .line 597
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .line 599
    .line 600
    :goto_10
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 601
    .line 602
    .line 603
    move-result v6

    .line 604
    if-eqz v6, :cond_d

    .line 605
    .line 606
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 607
    .line 608
    .line 609
    move-result-wide v8

    .line 610
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v10

    .line 614
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 615
    .line 616
    .line 617
    move-result-wide v6

    .line 618
    long-to-int v6, v6

    .line 619
    invoke-static {v6}, Lokio/Path$Companion;->feedGroupIconOf(I)Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 620
    .line 621
    .line 622
    move-result-object v11

    .line 623
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 624
    .line 625
    .line 626
    move-result-wide v12

    .line 627
    new-instance v7, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 628
    .line 629
    invoke-direct/range {v7 .. v13}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;J)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 633
    .line 634
    .line 635
    goto :goto_10

    .line 636
    :catchall_5
    move-exception v0

    .line 637
    goto :goto_11

    .line 638
    :cond_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 639
    .line 640
    .line 641
    return-object v5

    .line 642
    :goto_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 643
    .line 644
    .line 645
    throw v0

    .line 646
    :pswitch_5
    move-object/from16 v0, p1

    .line 647
    .line 648
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 649
    .line 650
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    .line 652
    .line 653
    const-string v1, "SELECT COUNT(*) FROM feed_last_updated WHERE last_updated IS NULL"

    .line 654
    .line 655
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    :try_start_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-eqz v0, :cond_f

    .line 664
    .line 665
    const/4 v2, 0x0

    .line 666
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-eqz v0, :cond_e

    .line 671
    .line 672
    goto :goto_12

    .line 673
    :cond_e
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 674
    .line 675
    .line 676
    move-result-wide v2

    .line 677
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 678
    .line 679
    .line 680
    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 681
    goto :goto_13

    .line 682
    :catchall_6
    move-exception v0

    .line 683
    goto :goto_14

    .line 684
    :cond_f
    :goto_12
    const/4 v3, 0x0

    .line 685
    :goto_13
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 686
    .line 687
    .line 688
    return-object v3

    .line 689
    :goto_14
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 690
    .line 691
    .line 692
    throw v0

    .line 693
    :pswitch_6
    move-object/from16 v2, p1

    .line 694
    .line 695
    check-cast v2, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 696
    .line 697
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    :try_start_7
    invoke-virtual {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->beginTransaction()V

    .line 701
    .line 702
    .line 703
    const-string v0, "CREATE TABLE `playlists_tmp` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `is_thumbnail_permanent` INTEGER NOT NULL, `thumbnail_stream_id` INTEGER NOT NULL, `display_index` INTEGER NOT NULL)"

    .line 704
    .line 705
    invoke-virtual {v2, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    const-string v0, "INSERT INTO `playlists_tmp` (`uid`, `name`, `is_thumbnail_permanent`, `thumbnail_stream_id`, `display_index`) SELECT `uid`, `name`, `is_thumbnail_permanent`, `thumbnail_stream_id`, -1 FROM `playlists`"

    .line 709
    .line 710
    invoke-virtual {v2, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    const-string v0, "DROP TABLE `playlists`"

    .line 714
    .line 715
    invoke-virtual {v2, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    const-string v0, "ALTER TABLE `playlists_tmp` RENAME TO `playlists`"

    .line 719
    .line 720
    invoke-virtual {v2, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    const-string v0, "CREATE TABLE `remote_playlists_tmp` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `name` TEXT, `url` TEXT, `thumbnail_url` TEXT, `uploader` TEXT, `display_index` INTEGER NOT NULL,`stream_count` INTEGER)"

    .line 724
    .line 725
    invoke-virtual {v2, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    const-string v0, "INSERT INTO `remote_playlists_tmp` (`uid`, `service_id`, `name`, `url`, `thumbnail_url`, `uploader`, `display_index`, `stream_count`)SELECT `uid`, `service_id`, `name`, `url`, `thumbnail_url`, `uploader`, -1, `stream_count` FROM `remote_playlists`"

    .line 729
    .line 730
    invoke-virtual {v2, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    const-string v0, "DROP TABLE `remote_playlists`"

    .line 734
    .line 735
    invoke-virtual {v2, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    const-string v0, "ALTER TABLE `remote_playlists_tmp` RENAME TO `remote_playlists`"

    .line 739
    .line 740
    invoke-virtual {v2, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v2, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 747
    .line 748
    .line 749
    invoke-virtual {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->endTransaction()V

    .line 750
    .line 751
    .line 752
    return-object v6

    .line 753
    :catchall_7
    move-exception v0

    .line 754
    invoke-virtual {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->endTransaction()V

    .line 755
    .line 756
    .line 757
    throw v0

    .line 758
    :pswitch_7
    move-object/from16 v0, p1

    .line 759
    .line 760
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    .line 764
    .line 765
    const-string v1, "DELETE FROM search_history WHERE id NOT IN (SELECT id FROM (SELECT MIN(id) as id FROM search_history GROUP BY trim(search), service_id ) tmp)"

    .line 766
    .line 767
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    const-string v1, "UPDATE search_history SET search = trim(search)"

    .line 771
    .line 772
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    return-object v6

    .line 776
    :pswitch_8
    move-object/from16 v0, p1

    .line 777
    .line 778
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 779
    .line 780
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 781
    .line 782
    .line 783
    const-string v1, "ALTER TABLE `playlists` ADD COLUMN `thumbnail_stream_id` INTEGER NOT NULL DEFAULT -1"

    .line 784
    .line 785
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    const-string v1, "UPDATE playlists SET thumbnail_stream_id = ( SELECT CASE WHEN COUNT(*) != 0 then stream_uid ELSE -1 END FROM ( SELECT p.uid AS playlist_uid, s.uid AS stream_uid FROM playlists p LEFT JOIN playlist_stream_join ps ON p.uid = ps.playlist_id LEFT JOIN streams s ON s.uid = ps.stream_id WHERE s.thumbnail_url = p.thumbnail_url) AS temporary_table WHERE playlist_uid = playlists.uid)"

    .line 789
    .line 790
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    const-string v1, "CREATE TABLE IF NOT EXISTS `playlists_new`(uid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, is_thumbnail_permanent INTEGER NOT NULL, thumbnail_stream_id INTEGER NOT NULL)"

    .line 794
    .line 795
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    const-string v1, "INSERT INTO playlists_new SELECT uid, name, is_thumbnail_permanent, thumbnail_stream_id  FROM playlists"

    .line 799
    .line 800
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    const-string v1, "DROP TABLE playlists"

    .line 804
    .line 805
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    const-string v1, "ALTER TABLE playlists_new RENAME TO playlists"

    .line 809
    .line 810
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    const-string v1, "CREATE INDEX IF NOT EXISTS `index_playlists_name` ON `playlists` (`name`)"

    .line 814
    .line 815
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    return-object v6

    .line 819
    :pswitch_9
    move-object/from16 v0, p1

    .line 820
    .line 821
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    .line 825
    .line 826
    const-string v1, "ALTER TABLE `playlists` ADD COLUMN `is_thumbnail_permanent` INTEGER NOT NULL DEFAULT 0"

    .line 827
    .line 828
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    return-object v6

    .line 832
    :pswitch_a
    move-object/from16 v0, p1

    .line 833
    .line 834
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 835
    .line 836
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    const-string v1, "ALTER TABLE `subscriptions` ADD COLUMN `notification_mode` INTEGER NOT NULL DEFAULT 0"

    .line 840
    .line 841
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    return-object v6

    .line 845
    :pswitch_b
    move-object/from16 v0, p1

    .line 846
    .line 847
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 848
    .line 849
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    const-string v1, "ALTER TABLE streams ADD COLUMN uploader_url TEXT"

    .line 853
    .line 854
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    return-object v6

    .line 858
    :pswitch_c
    move-object/from16 v0, p1

    .line 859
    .line 860
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 861
    .line 862
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    .line 864
    .line 865
    const-string v1, "CREATE TABLE IF NOT EXISTS streams_new (uid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, service_id INTEGER NOT NULL, url TEXT NOT NULL, title TEXT NOT NULL, stream_type TEXT NOT NULL, duration INTEGER NOT NULL, uploader TEXT NOT NULL, thumbnail_url TEXT, view_count INTEGER, textual_upload_date TEXT, upload_date INTEGER, is_upload_date_approximation INTEGER)"

    .line 866
    .line 867
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    const-string v1, "INSERT INTO streams_new (uid, service_id, url, title, stream_type, duration, uploader, thumbnail_url, view_count, textual_upload_date, upload_date, is_upload_date_approximation) SELECT uid, service_id, url, ifnull(title, \'\'), ifnull(stream_type, \'VIDEO_STREAM\'), ifnull(duration, 0), ifnull(uploader, \'\'), ifnull(thumbnail_url, \'\'), NULL, NULL, NULL, NULL FROM streams WHERE url IS NOT NULL"

    .line 871
    .line 872
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    const-string v1, "DROP TABLE streams"

    .line 876
    .line 877
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    const-string v1, "ALTER TABLE streams_new RENAME TO streams"

    .line 881
    .line 882
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    const-string v1, "CREATE UNIQUE INDEX index_streams_service_id_url ON streams (service_id, url)"

    .line 886
    .line 887
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    const-string v1, "CREATE TABLE IF NOT EXISTS feed (stream_id INTEGER NOT NULL, subscription_id INTEGER NOT NULL, PRIMARY KEY(stream_id, subscription_id), FOREIGN KEY(stream_id) REFERENCES streams(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(subscription_id) REFERENCES subscriptions(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 891
    .line 892
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    const-string v1, "CREATE INDEX index_feed_subscription_id ON feed (subscription_id)"

    .line 896
    .line 897
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    const-string v1, "CREATE TABLE IF NOT EXISTS feed_group (uid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, icon_id INTEGER NOT NULL, sort_order INTEGER NOT NULL)"

    .line 901
    .line 902
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    const-string v1, "CREATE INDEX index_feed_group_sort_order ON feed_group (sort_order)"

    .line 906
    .line 907
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    const-string v1, "CREATE TABLE IF NOT EXISTS feed_group_subscription_join (group_id INTEGER NOT NULL, subscription_id INTEGER NOT NULL, PRIMARY KEY(group_id, subscription_id), FOREIGN KEY(group_id) REFERENCES feed_group(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(subscription_id) REFERENCES subscriptions(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 911
    .line 912
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    const-string v1, "CREATE INDEX index_feed_group_subscription_join_subscription_id ON feed_group_subscription_join (subscription_id)"

    .line 916
    .line 917
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    const-string v1, "CREATE TABLE IF NOT EXISTS feed_last_updated (subscription_id INTEGER NOT NULL, last_updated INTEGER, PRIMARY KEY(subscription_id), FOREIGN KEY(subscription_id) REFERENCES subscriptions(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 921
    .line 922
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    return-object v6

    .line 926
    :pswitch_d
    move-object/from16 v0, p1

    .line 927
    .line 928
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 929
    .line 930
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 931
    .line 932
    .line 933
    const-string v2, "CREATE  INDEX `index_search_history_search` ON `search_history` (`search`)"

    .line 934
    .line 935
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    const-string v2, "CREATE TABLE IF NOT EXISTS `streams` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `url` TEXT, `title` TEXT, `stream_type` TEXT, `duration` INTEGER, `uploader` TEXT, `thumbnail_url` TEXT)"

    .line 939
    .line 940
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    const-string v2, "CREATE UNIQUE INDEX `index_streams_service_id_url` ON `streams` (`service_id`, `url`)"

    .line 944
    .line 945
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    const-string v2, "CREATE TABLE IF NOT EXISTS `stream_history` (`stream_id` INTEGER NOT NULL, `access_date` INTEGER NOT NULL, `repeat_count` INTEGER NOT NULL, PRIMARY KEY(`stream_id`, `access_date`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 949
    .line 950
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    const-string v2, "CREATE  INDEX `index_stream_history_stream_id` ON `stream_history` (`stream_id`)"

    .line 954
    .line 955
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    const-string v2, "CREATE TABLE IF NOT EXISTS `stream_state` (`stream_id` INTEGER NOT NULL, `progress_time` INTEGER NOT NULL, PRIMARY KEY(`stream_id`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 959
    .line 960
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    const-string v2, "CREATE TABLE IF NOT EXISTS `playlists` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `thumbnail_url` TEXT)"

    .line 964
    .line 965
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    const-string v2, "CREATE  INDEX `index_playlists_name` ON `playlists` (`name`)"

    .line 969
    .line 970
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    const-string v2, "CREATE TABLE IF NOT EXISTS `playlist_stream_join` (`playlist_id` INTEGER NOT NULL, `stream_id` INTEGER NOT NULL, `join_index` INTEGER NOT NULL, PRIMARY KEY(`playlist_id`, `join_index`), FOREIGN KEY(`playlist_id`) REFERENCES `playlists`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 974
    .line 975
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    const-string v2, "CREATE UNIQUE INDEX `index_playlist_stream_join_playlist_id_join_index` ON `playlist_stream_join` (`playlist_id`, `join_index`)"

    .line 979
    .line 980
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    const-string v2, "CREATE  INDEX `index_playlist_stream_join_stream_id` ON `playlist_stream_join` (`stream_id`)"

    .line 984
    .line 985
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    const-string v2, "CREATE TABLE IF NOT EXISTS `remote_playlists` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `name` TEXT, `url` TEXT, `thumbnail_url` TEXT, `uploader` TEXT, `stream_count` INTEGER)"

    .line 989
    .line 990
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    const-string v2, "CREATE  INDEX `index_remote_playlists_name` ON `remote_playlists` (`name`)"

    .line 994
    .line 995
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    const-string v1, "INSERT OR IGNORE INTO streams (service_id, url, title, stream_type, duration, uploader, thumbnail_url) SELECT service_id, url, title, \'VIDEO_STREAM\', duration, uploader, thumbnail_url FROM watch_history ORDER BY creation_date DESC"

    .line 1002
    .line 1003
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    const-string v1, "INSERT INTO stream_history (stream_id, access_date, repeat_count)SELECT uid, creation_date, 1 FROM watch_history INNER JOIN streams ON watch_history.service_id == streams.service_id AND watch_history.url == streams.url ORDER BY creation_date DESC"

    .line 1007
    .line 1008
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    const-string v1, "DROP TABLE IF EXISTS watch_history"

    .line 1012
    .line 1013
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    return-object v6

    .line 1017
    :pswitch_e
    move-object/from16 v0, p1

    .line 1018
    .line 1019
    check-cast v0, Lkotlin/jvm/internal/ClassReference;

    .line 1020
    .line 1021
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1022
    .line 1023
    .line 1024
    invoke-static {v0}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    return-object v0

    .line 1029
    :pswitch_f
    move-object/from16 v0, p1

    .line 1030
    .line 1031
    check-cast v0, Lorg/jetbrains/compose/resources/vector/xmldom/Element;

    .line 1032
    .line 1033
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1034
    .line 1035
    .line 1036
    check-cast v0, Lokhttp3/ConnectionPool;

    .line 1037
    .line 1038
    iget-object v0, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 1039
    .line 1040
    check-cast v0, Lorg/w3c/dom/Node;

    .line 1041
    .line 1042
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    .line 1048
    .line 1049
    const-string v1, "item"

    .line 1050
    .line 1051
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    return-object v0

    .line 1060
    :pswitch_10
    move-object/from16 v0, p1

    .line 1061
    .line 1062
    check-cast v0, Lorg/jetbrains/compose/resources/ResourceItem;

    .line 1063
    .line 1064
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1065
    .line 1066
    .line 1067
    iget-object v0, v0, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 1068
    .line 1069
    return-object v0

    .line 1070
    :pswitch_11
    move-object/from16 v0, p1

    .line 1071
    .line 1072
    check-cast v0, [B

    .line 1073
    .line 1074
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1075
    .line 1076
    .line 1077
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1078
    .line 1079
    const-string v1, "Android platform doesn\'t support SVG format."

    .line 1080
    .line 1081
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    throw v0

    .line 1085
    :pswitch_12
    move-object/from16 v0, p1

    .line 1086
    .line 1087
    check-cast v0, Lorg/acra/config/RetryPolicy$FailedSender;

    .line 1088
    .line 1089
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1090
    .line 1091
    .line 1092
    iget-object v0, v0, Lorg/acra/config/RetryPolicy$FailedSender;->exception:Lorg/acra/sender/ReportSenderException;

    .line 1093
    .line 1094
    invoke-static {v0}, Lkotlin/ResultKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    return-object v0

    .line 1099
    :pswitch_13
    move-object/from16 v0, p1

    .line 1100
    .line 1101
    check-cast v0, Lorg/acra/config/RetryPolicy$FailedSender;

    .line 1102
    .line 1103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1104
    .line 1105
    .line 1106
    iget-object v0, v0, Lorg/acra/config/RetryPolicy$FailedSender;->sender:Lorg/acra/sender/ReportSender;

    .line 1107
    .line 1108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    return-object v0

    .line 1117
    :pswitch_14
    move-object/from16 v0, p1

    .line 1118
    .line 1119
    check-cast v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 1120
    .line 1121
    invoke-static {v0}, Lorg/acra/collector/ConfigurationCollector;->$r8$lambda$UyQhmKZO_J1j8Osa3TDSsyrZXd4(Lorg/acra/collector/ConfigurationCollector$Prefix;)Landroid/util/SparseArray;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    return-object v0

    .line 1126
    :pswitch_15
    move-object/from16 v0, p1

    .line 1127
    .line 1128
    check-cast v0, Lokio/internal/ZipEntry;

    .line 1129
    .line 1130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1131
    .line 1132
    .line 1133
    sget-object v1, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    .line 1134
    .line 1135
    iget-object v0, v0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 1136
    .line 1137
    invoke-static {v0}, Lokio/ByteString$Companion;->access$keepPath(Lokio/Path;)Z

    .line 1138
    .line 1139
    .line 1140
    move-result v0

    .line 1141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    return-object v0

    .line 1146
    :pswitch_16
    move-object/from16 v0, p1

    .line 1147
    .line 1148
    check-cast v0, Lnet/newpipe/app/model/Library;

    .line 1149
    .line 1150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1151
    .line 1152
    .line 1153
    iget-object v0, v0, Lnet/newpipe/app/model/Library;->id:Ljava/lang/String;

    .line 1154
    .line 1155
    return-object v0

    .line 1156
    :pswitch_17
    move-object/from16 v0, p1

    .line 1157
    .line 1158
    check-cast v0, Ljava/lang/String;

    .line 1159
    .line 1160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1161
    .line 1162
    .line 1163
    return-object v6

    .line 1164
    :pswitch_18
    move-object/from16 v0, p1

    .line 1165
    .line 1166
    check-cast v0, Lnet/newpipe/app/model/Link;

    .line 1167
    .line 1168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    .line 1170
    .line 1171
    iget-object v0, v0, Lnet/newpipe/app/model/Link;->url:Ljava/lang/String;

    .line 1172
    .line 1173
    return-object v0

    .line 1174
    :pswitch_19
    move-object/from16 v0, p1

    .line 1175
    .line 1176
    check-cast v0, Ljava/lang/String;

    .line 1177
    .line 1178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1179
    .line 1180
    .line 1181
    return-object v6

    .line 1182
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1183
    .line 1184
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1185
    .line 1186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1187
    .line 1188
    .line 1189
    const-class v1, Lnet/newpipe/app/platform/AndroidBuildInfo;

    .line 1190
    .line 1191
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v1

    .line 1195
    new-instance v2, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;

    .line 1196
    .line 1197
    const/4 v3, 0x4

    .line 1198
    const/4 v4, 0x0

    .line 1199
    invoke-direct {v2, v3, v4}, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;-><init>(IB)V

    .line 1200
    .line 1201
    .line 1202
    invoke-static {v0, v1, v2}, Landroidx/room/Room;->buildSingle$default(Lorg/koin/core/module/Module;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v1

    .line 1206
    const-class v2, Lnet/newpipe/app/platform/BuildInfo;

    .line 1207
    .line 1208
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v2

    .line 1212
    invoke-static {v1, v2}, Landroidx/room/Room;->bind(Lorg/koin/core/definition/KoinDefinition;Lkotlin/jvm/internal/ClassReference;)V

    .line 1213
    .line 1214
    .line 1215
    const-class v1, Lnet/newpipe/app/platform/AndroidResourceHandler;

    .line 1216
    .line 1217
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v1

    .line 1221
    new-instance v2, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;

    .line 1222
    .line 1223
    const/4 v3, 0x5

    .line 1224
    invoke-direct {v2, v3, v4}, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;-><init>(IB)V

    .line 1225
    .line 1226
    .line 1227
    invoke-static {v0, v1, v2}, Landroidx/room/Room;->buildSingle$default(Lorg/koin/core/module/Module;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    const-class v2, Lnet/newpipe/app/platform/ResourceHandler;

    .line 1232
    .line 1233
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v2

    .line 1237
    invoke-static {v1, v2}, Landroidx/room/Room;->bind(Lorg/koin/core/definition/KoinDefinition;Lkotlin/jvm/internal/ClassReference;)V

    .line 1238
    .line 1239
    .line 1240
    const-class v1, Lnet/newpipe/app/platform/AndroidShareHandler;

    .line 1241
    .line 1242
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v1

    .line 1246
    new-instance v2, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;

    .line 1247
    .line 1248
    const/4 v3, 0x6

    .line 1249
    invoke-direct {v2, v3, v4}, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;-><init>(IB)V

    .line 1250
    .line 1251
    .line 1252
    invoke-static {v0, v1, v2}, Landroidx/room/Room;->buildSingle$default(Lorg/koin/core/module/Module;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v0

    .line 1256
    const-class v1, Lnet/newpipe/app/platform/ShareHandler;

    .line 1257
    .line 1258
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v1

    .line 1262
    invoke-static {v0, v1}, Landroidx/room/Room;->bind(Lorg/koin/core/definition/KoinDefinition;Lkotlin/jvm/internal/ClassReference;)V

    .line 1263
    .line 1264
    .line 1265
    return-object v6

    .line 1266
    :pswitch_1b
    const/4 v4, 0x0

    .line 1267
    move-object/from16 v0, p1

    .line 1268
    .line 1269
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1270
    .line 1271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1272
    .line 1273
    .line 1274
    const-class v1, Lnet/newpipe/app/navigation/Navigator;

    .line 1275
    .line 1276
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v1

    .line 1280
    new-instance v2, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;

    .line 1281
    .line 1282
    invoke-direct {v2, v4, v4}, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;-><init>(IB)V

    .line 1283
    .line 1284
    .line 1285
    invoke-static {v0, v1, v2}, Landroidx/room/Room;->buildSingle$default(Lorg/koin/core/module/Module;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;

    .line 1286
    .line 1287
    .line 1288
    new-instance v10, Lorg/koin/core/qualifier/TypeQualifier;

    .line 1289
    .line 1290
    const-class v1, Lnet/newpipe/app/navigation/Destination$About;

    .line 1291
    .line 1292
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v1

    .line 1296
    invoke-direct {v10, v1}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 1297
    .line 1298
    .line 1299
    new-instance v11, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1;

    .line 1300
    .line 1301
    invoke-direct {v11, v4}, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1;-><init>(I)V

    .line 1302
    .line 1303
    .line 1304
    new-instance v7, Lorg/koin/core/definition/BeanDefinition;

    .line 1305
    .line 1306
    const-class v1, Lkotlin/jvm/functions/Function1;

    .line 1307
    .line 1308
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v9

    .line 1312
    sget-object v17, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1313
    .line 1314
    sget-object v21, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 1315
    .line 1316
    move-object/from16 v8, v17

    .line 1317
    .line 1318
    move-object/from16 v12, v21

    .line 1319
    .line 1320
    invoke-direct/range {v7 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/TypeQualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1321
    .line 1322
    .line 1323
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1324
    .line 1325
    invoke-direct {v2, v7}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1329
    .line 1330
    .line 1331
    new-instance v2, Lorg/koin/core/qualifier/TypeQualifier;

    .line 1332
    .line 1333
    const-class v3, Lnet/newpipe/app/navigation/Destination$Settings;

    .line 1334
    .line 1335
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    invoke-direct {v2, v3}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 1340
    .line 1341
    .line 1342
    new-instance v3, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1;

    .line 1343
    .line 1344
    const/4 v4, 0x1

    .line 1345
    invoke-direct {v3, v4}, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1;-><init>(I)V

    .line 1346
    .line 1347
    .line 1348
    new-instance v16, Lorg/koin/core/definition/BeanDefinition;

    .line 1349
    .line 1350
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v18

    .line 1354
    move-object/from16 v19, v2

    .line 1355
    .line 1356
    move-object/from16 v20, v3

    .line 1357
    .line 1358
    invoke-direct/range {v16 .. v21}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/TypeQualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1359
    .line 1360
    .line 1361
    move-object/from16 v1, v16

    .line 1362
    .line 1363
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1364
    .line 1365
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1369
    .line 1370
    .line 1371
    return-object v6

    .line 1372
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1373
    .line 1374
    check-cast v0, Lokio/internal/ZipEntry;

    .line 1375
    .line 1376
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1377
    .line 1378
    .line 1379
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1380
    .line 1381
    return-object v0

    .line 1382
    nop

    .line 1383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
