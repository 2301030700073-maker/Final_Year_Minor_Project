.class public final synthetic Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p4, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->f$1:J

    iput-object p5, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(JLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->f$1:J

    .line 8
    .line 9
    iput-object p3, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const-string/jumbo v3, "url"

    .line 6
    .line 7
    .line 8
    const-string v4, "service_id"

    .line 9
    .line 10
    const-string/jumbo v5, "uid"

    .line 11
    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    const/4 v8, 0x1

    .line 15
    iget-object v9, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    .line 16
    .line 17
    iget-wide v10, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->f$1:J

    .line 18
    .line 19
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    check-cast v9, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v12, "SELECT * FROM streams WHERE url = ? AND service_id = ?"

    .line 36
    .line 37
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :try_start_0
    invoke-interface {v1, v8, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v6, v10, v11}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const-string/jumbo v5, "title"

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const-string/jumbo v6, "stream_type"

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const-string v10, "duration"

    .line 74
    .line 75
    invoke-static {v1, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    const-string/jumbo v11, "uploader"

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    const-string/jumbo v12, "uploader_url"

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    const-string/jumbo v13, "thumbnail_url"

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    const-string/jumbo v14, "view_count"

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    const-string/jumbo v15, "textual_upload_date"

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    const-string/jumbo v7, "upload_date"

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    const-string v2, "is_upload_date_approximation"

    .line 122
    .line 123
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    new-instance v8, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 133
    .line 134
    .line 135
    move-result v18

    .line 136
    if-eqz v18, :cond_8

    .line 137
    .line 138
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 139
    .line 140
    .line 141
    move-result-wide v20

    .line 142
    move/from16 p0, v7

    .line 143
    .line 144
    move-object/from16 p1, v8

    .line 145
    .line 146
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 147
    .line 148
    .line 149
    move-result-wide v7

    .line 150
    long-to-int v7, v7

    .line 151
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v23

    .line 155
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v24

    .line 159
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    move/from16 v18, v0

    .line 164
    .line 165
    iget-object v0, v9, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 166
    .line 167
    invoke-static {v8}, Lokio/Path$Companion;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 168
    .line 169
    .line 170
    move-result-object v25

    .line 171
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v26

    .line 175
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v28

    .line 179
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    .line 185
    const/16 v29, 0x0

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_0
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    move-object/from16 v29, v0

    .line 193
    .line 194
    :goto_1
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_1

    .line 199
    .line 200
    const/16 v30, 0x0

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_1
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    move-object/from16 v30, v0

    .line 208
    .line 209
    :goto_2
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_2

    .line 214
    .line 215
    const/16 v31, 0x0

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_2
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 219
    .line 220
    .line 221
    move-result-wide v31

    .line 222
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    move-object/from16 v31, v0

    .line 227
    .line 228
    :goto_3
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_3

    .line 233
    .line 234
    const/16 v32, 0x0

    .line 235
    .line 236
    :goto_4
    move/from16 v0, p0

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_3
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    move-object/from16 v32, v0

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :goto_5
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-eqz v8, :cond_4

    .line 251
    .line 252
    const/4 v8, 0x0

    .line 253
    goto :goto_6

    .line 254
    :cond_4
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 255
    .line 256
    .line 257
    move-result-wide v33

    .line 258
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    :goto_6
    invoke-static {v8}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 263
    .line 264
    .line 265
    move-result-object v33

    .line 266
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    if-eqz v8, :cond_5

    .line 271
    .line 272
    move v8, v3

    .line 273
    move/from16 p0, v4

    .line 274
    .line 275
    const/4 v3, 0x0

    .line 276
    goto :goto_7

    .line 277
    :cond_5
    move v8, v3

    .line 278
    move/from16 p0, v4

    .line 279
    .line 280
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 281
    .line 282
    .line 283
    move-result-wide v3

    .line 284
    long-to-int v3, v3

    .line 285
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    :goto_7
    if-eqz v3, :cond_7

    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_6

    .line 296
    .line 297
    const/4 v3, 0x1

    .line 298
    goto :goto_8

    .line 299
    :cond_6
    const/4 v3, 0x0

    .line 300
    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    move-object/from16 v34, v3

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :catchall_0
    move-exception v0

    .line 308
    goto :goto_a

    .line 309
    :cond_7
    const/16 v34, 0x0

    .line 310
    .line 311
    :goto_9
    new-instance v19, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 312
    .line 313
    move/from16 v22, v7

    .line 314
    .line 315
    invoke-direct/range {v19 .. v34}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    .line 316
    .line 317
    .line 318
    move-object/from16 v3, v19

    .line 319
    .line 320
    move-object/from16 v4, p1

    .line 321
    .line 322
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .line 324
    .line 325
    move v7, v0

    .line 326
    move v3, v8

    .line 327
    move/from16 v0, v18

    .line 328
    .line 329
    move-object v8, v4

    .line 330
    move/from16 v4, p0

    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :cond_8
    move-object v4, v8

    .line 335
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 336
    .line 337
    .line 338
    return-object v4

    .line 339
    :goto_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 340
    .line 341
    .line 342
    throw v0

    .line 343
    :pswitch_0
    check-cast v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 344
    .line 345
    check-cast v9, Ljava/util/List;

    .line 346
    .line 347
    move-object/from16 v1, p1

    .line 348
    .line 349
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    iget-object v1, v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 358
    .line 359
    new-instance v2, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 360
    .line 361
    const/4 v3, 0x4

    .line 362
    invoke-direct {v2, v10, v11, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 363
    .line 364
    .line 365
    const/4 v3, 0x0

    .line 366
    const/4 v4, 0x1

    .line 367
    invoke-static {v1, v3, v4, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    check-cast v2, Ljava/lang/Number;

    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 374
    .line 375
    .line 376
    new-instance v2, Ljava/util/ArrayList;

    .line 377
    .line 378
    const/16 v3, 0xa

    .line 379
    .line 380
    invoke-static {v9, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-eqz v5, :cond_9

    .line 396
    .line 397
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    check-cast v5, Ljava/lang/Number;

    .line 402
    .line 403
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 404
    .line 405
    .line 406
    move-result-wide v5

    .line 407
    new-instance v7, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;

    .line 408
    .line 409
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 410
    .line 411
    .line 412
    iput-wide v10, v7, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->feedGroupId:J

    .line 413
    .line 414
    iput-wide v5, v7, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->subscriptionId:J

    .line 415
    .line 416
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    goto :goto_b

    .line 420
    :cond_9
    new-instance v4, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 421
    .line 422
    invoke-direct {v4, v0, v2, v3}, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 423
    .line 424
    .line 425
    const/4 v2, 0x1

    .line 426
    const/4 v3, 0x0

    .line 427
    invoke-static {v1, v3, v2, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    check-cast v0, Ljava/util/List;

    .line 432
    .line 433
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 434
    .line 435
    return-object v0

    .line 436
    :pswitch_1
    move v2, v8

    .line 437
    check-cast v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 438
    .line 439
    check-cast v9, Lj$/time/OffsetDateTime;

    .line 440
    .line 441
    move-object/from16 v1, p1

    .line 442
    .line 443
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    const-string v7, "\n        SELECT s.* FROM subscriptions s\n\n        INNER JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id AND fgs.group_id = ?\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id\n\n        WHERE lu.last_updated IS NULL OR lu.last_updated < ?\n        "

    .line 449
    .line 450
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    :try_start_1
    invoke-interface {v1, v2, v10, v11}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 455
    .line 456
    .line 457
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 458
    .line 459
    invoke-static {v9}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    if-nez v0, :cond_a

    .line 464
    .line 465
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 466
    .line 467
    .line 468
    goto :goto_c

    .line 469
    :catchall_1
    move-exception v0

    .line 470
    goto/16 :goto_13

    .line 471
    .line 472
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 473
    .line 474
    .line 475
    move-result-wide v7

    .line 476
    invoke-interface {v1, v6, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 477
    .line 478
    .line 479
    :goto_c
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    const-string v4, "name"

    .line 492
    .line 493
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    const-string v5, "avatar_url"

    .line 498
    .line 499
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    const-string/jumbo v6, "subscriber_count"

    .line 504
    .line 505
    .line 506
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    move-result v6

    .line 510
    const-string v7, "description"

    .line 511
    .line 512
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    move-result v7

    .line 516
    const-string v8, "notification_mode"

    .line 517
    .line 518
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    move-result v8

    .line 522
    new-instance v9, Ljava/util/ArrayList;

    .line 523
    .line 524
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .line 526
    .line 527
    :goto_d
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 528
    .line 529
    .line 530
    move-result v10

    .line 531
    if-eqz v10, :cond_10

    .line 532
    .line 533
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 534
    .line 535
    .line 536
    move-result-wide v17

    .line 537
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 538
    .line 539
    .line 540
    move-result-wide v10

    .line 541
    long-to-int v10, v10

    .line 542
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 543
    .line 544
    .line 545
    move-result v11

    .line 546
    if-eqz v11, :cond_b

    .line 547
    .line 548
    const/16 v20, 0x0

    .line 549
    .line 550
    goto :goto_e

    .line 551
    :cond_b
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v11

    .line 555
    move-object/from16 v20, v11

    .line 556
    .line 557
    :goto_e
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 558
    .line 559
    .line 560
    move-result v11

    .line 561
    if-eqz v11, :cond_c

    .line 562
    .line 563
    const/16 v21, 0x0

    .line 564
    .line 565
    goto :goto_f

    .line 566
    :cond_c
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v11

    .line 570
    move-object/from16 v21, v11

    .line 571
    .line 572
    :goto_f
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 573
    .line 574
    .line 575
    move-result v11

    .line 576
    if-eqz v11, :cond_d

    .line 577
    .line 578
    const/16 v22, 0x0

    .line 579
    .line 580
    goto :goto_10

    .line 581
    :cond_d
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v11

    .line 585
    move-object/from16 v22, v11

    .line 586
    .line 587
    :goto_10
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 588
    .line 589
    .line 590
    move-result v11

    .line 591
    if-eqz v11, :cond_e

    .line 592
    .line 593
    const/16 v23, 0x0

    .line 594
    .line 595
    goto :goto_11

    .line 596
    :cond_e
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 597
    .line 598
    .line 599
    move-result-wide v11

    .line 600
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 601
    .line 602
    .line 603
    move-result-object v11

    .line 604
    move-object/from16 v23, v11

    .line 605
    .line 606
    :goto_11
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 607
    .line 608
    .line 609
    move-result v11

    .line 610
    if-eqz v11, :cond_f

    .line 611
    .line 612
    const/16 v24, 0x0

    .line 613
    .line 614
    goto :goto_12

    .line 615
    :cond_f
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v11

    .line 619
    move-object/from16 v24, v11

    .line 620
    .line 621
    :goto_12
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 622
    .line 623
    .line 624
    move-result-wide v11

    .line 625
    long-to-int v11, v11

    .line 626
    new-instance v16, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 627
    .line 628
    move/from16 v19, v10

    .line 629
    .line 630
    move/from16 v25, v11

    .line 631
    .line 632
    invoke-direct/range {v16 .. v25}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 633
    .line 634
    .line 635
    move-object/from16 v10, v16

    .line 636
    .line 637
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 638
    .line 639
    .line 640
    goto :goto_d

    .line 641
    :cond_10
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 642
    .line 643
    .line 644
    return-object v9

    .line 645
    :goto_13
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 646
    .line 647
    .line 648
    throw v0

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
