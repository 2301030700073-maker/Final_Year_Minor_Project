.class public final Landroidx/work/impl/model/WorkSpecDao_Impl$2;
.super Landroidx/sqlite/SQLite;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->$r8$classId:I

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
    iput p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->$r8$classId:I

    .line 6
    .line 7
    const/16 v2, 0xe

    .line 8
    .line 9
    const/16 v4, 0xa

    .line 10
    .line 11
    const/16 v5, 0xb

    .line 12
    .line 13
    const/16 v8, 0x9

    .line 14
    .line 15
    const/16 v9, 0x8

    .line 16
    .line 17
    const/4 v10, 0x7

    .line 18
    const/4 v11, 0x6

    .line 19
    const/4 v12, 0x4

    .line 20
    const/4 v13, 0x5

    .line 21
    const/4 v14, 0x3

    .line 22
    const/4 v15, 0x2

    .line 23
    const/4 v3, 0x1

    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    check-cast v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-wide v4, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 38
    .line 39
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 40
    .line 41
    .line 42
    iget v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 43
    .line 44
    int-to-long v2, v2

    .line 45
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    invoke-interface {v0, v14}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    invoke-interface {v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-interface {v0, v12, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    .line 82
    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    invoke-interface {v0, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    invoke-interface {v0, v11, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 94
    .line 95
    .line 96
    :goto_3
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    .line 97
    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    invoke-interface {v0, v10}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    invoke-interface {v0, v10, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_4
    iget v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    .line 108
    .line 109
    int-to-long v2, v2

    .line 110
    invoke-interface {v0, v9, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 111
    .line 112
    .line 113
    iget-wide v1, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 114
    .line 115
    invoke-interface {v0, v8, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_0
    move-object/from16 v1, p2

    .line 120
    .line 121
    check-cast v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-wide v1, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 130
    .line 131
    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_1
    move-object/from16 v1, p2

    .line 136
    .line 137
    check-cast v1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-wide v4, v1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    .line 146
    .line 147
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 148
    .line 149
    .line 150
    iget-wide v1, v1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 151
    .line 152
    invoke-interface {v0, v15, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v0, v14, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_2
    move-object/from16 v1, p2

    .line 160
    .line 161
    check-cast v1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    .line 170
    .line 171
    .line 172
    move-result-wide v6

    .line 173
    invoke-interface {v0, v3, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    int-to-long v6, v3

    .line 181
    invoke-interface {v0, v15, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-interface {v0, v14, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-interface {v0, v12, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-interface {v0, v13, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 213
    .line 214
    .line 215
    move-result-wide v6

    .line 216
    invoke-interface {v0, v11, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-interface {v0, v10, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploaderUrl()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-nez v3, :cond_5

    .line 231
    .line 232
    invoke-interface {v0, v9}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_5
    invoke-interface {v0, v9, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :goto_5
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    if-nez v3, :cond_6

    .line 244
    .line 245
    invoke-interface {v0, v8}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_6
    invoke-interface {v0, v8, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :goto_6
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getViewCount()Ljava/lang/Long;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    if-nez v3, :cond_7

    .line 257
    .line 258
    invoke-interface {v0, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 259
    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 263
    .line 264
    .line 265
    move-result-wide v6

    .line 266
    invoke-interface {v0, v4, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 267
    .line 268
    .line 269
    :goto_7
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTextualUploadDate()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    if-nez v3, :cond_8

    .line 274
    .line 275
    invoke-interface {v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 276
    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_8
    invoke-interface {v0, v5, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :goto_8
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploadDate()Lj$/time/OffsetDateTime;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v3}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    if-nez v3, :cond_9

    .line 291
    .line 292
    const/16 v4, 0xc

    .line 293
    .line 294
    invoke-interface {v0, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_9
    const/16 v4, 0xc

    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 301
    .line 302
    .line 303
    move-result-wide v5

    .line 304
    invoke-interface {v0, v4, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 305
    .line 306
    .line 307
    :goto_9
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation()Ljava/lang/Boolean;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    if-eqz v3, :cond_a

    .line 312
    .line 313
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    goto :goto_a

    .line 322
    :cond_a
    const/4 v3, 0x0

    .line 323
    :goto_a
    if-nez v3, :cond_b

    .line 324
    .line 325
    const/16 v4, 0xd

    .line 326
    .line 327
    invoke-interface {v0, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 328
    .line 329
    .line 330
    goto :goto_b

    .line 331
    :cond_b
    const/16 v4, 0xd

    .line 332
    .line 333
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    int-to-long v5, v3

    .line 338
    invoke-interface {v0, v4, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 339
    .line 340
    .line 341
    :goto_b
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    .line 342
    .line 343
    .line 344
    move-result-wide v3

    .line 345
    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :pswitch_3
    move-object/from16 v1, p2

    .line 350
    .line 351
    check-cast v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    iget-wide v4, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    .line 360
    .line 361
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 362
    .line 363
    .line 364
    iget v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    .line 365
    .line 366
    int-to-long v2, v2

    .line 367
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 368
    .line 369
    .line 370
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    .line 371
    .line 372
    if-nez v2, :cond_c

    .line 373
    .line 374
    invoke-interface {v0, v14}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 375
    .line 376
    .line 377
    goto :goto_c

    .line 378
    :cond_c
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 379
    .line 380
    .line 381
    :goto_c
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    .line 382
    .line 383
    if-nez v2, :cond_d

    .line 384
    .line 385
    invoke-interface {v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 386
    .line 387
    .line 388
    goto :goto_d

    .line 389
    :cond_d
    invoke-interface {v0, v12, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 390
    .line 391
    .line 392
    :goto_d
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    .line 393
    .line 394
    if-nez v2, :cond_e

    .line 395
    .line 396
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 397
    .line 398
    .line 399
    goto :goto_e

    .line 400
    :cond_e
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 401
    .line 402
    .line 403
    :goto_e
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    .line 404
    .line 405
    if-nez v2, :cond_f

    .line 406
    .line 407
    invoke-interface {v0, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 408
    .line 409
    .line 410
    goto :goto_f

    .line 411
    :cond_f
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 412
    .line 413
    .line 414
    :goto_f
    iget-wide v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    .line 415
    .line 416
    invoke-interface {v0, v10, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 417
    .line 418
    .line 419
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    .line 420
    .line 421
    if-nez v2, :cond_10

    .line 422
    .line 423
    invoke-interface {v0, v9}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 424
    .line 425
    .line 426
    goto :goto_10

    .line 427
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 428
    .line 429
    .line 430
    move-result-wide v2

    .line 431
    invoke-interface {v0, v9, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 432
    .line 433
    .line 434
    :goto_10
    iget-wide v1, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    .line 435
    .line 436
    invoke-interface {v0, v8, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :pswitch_4
    move-object/from16 v1, p2

    .line 441
    .line 442
    check-cast v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    iget-wide v4, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    .line 451
    .line 452
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 453
    .line 454
    .line 455
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    .line 456
    .line 457
    if-nez v2, :cond_11

    .line 458
    .line 459
    invoke-interface {v0, v15}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 460
    .line 461
    .line 462
    goto :goto_11

    .line 463
    :cond_11
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :goto_11
    iget-boolean v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    .line 467
    .line 468
    int-to-long v2, v2

    .line 469
    invoke-interface {v0, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 470
    .line 471
    .line 472
    iget-wide v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 473
    .line 474
    invoke-interface {v0, v12, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 475
    .line 476
    .line 477
    iget-wide v1, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    .line 478
    .line 479
    invoke-interface {v0, v13, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 480
    .line 481
    .line 482
    invoke-interface {v0, v11, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 483
    .line 484
    .line 485
    return-void

    .line 486
    :pswitch_5
    move-object/from16 v1, p2

    .line 487
    .line 488
    check-cast v1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    iget-wide v4, v1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    .line 497
    .line 498
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 499
    .line 500
    .line 501
    iget-object v1, v1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    .line 502
    .line 503
    invoke-static {v1}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    if-nez v1, :cond_12

    .line 508
    .line 509
    invoke-interface {v0, v15}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 510
    .line 511
    .line 512
    goto :goto_12

    .line 513
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 514
    .line 515
    .line 516
    move-result-wide v1

    .line 517
    invoke-interface {v0, v15, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 518
    .line 519
    .line 520
    :goto_12
    return-void

    .line 521
    :pswitch_6
    move-object/from16 v1, p2

    .line 522
    .line 523
    check-cast v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    iget-wide v4, v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->id:J

    .line 532
    .line 533
    iget-object v2, v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->creationDate:Lj$/time/OffsetDateTime;

    .line 534
    .line 535
    invoke-static {v2}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    if-nez v2, :cond_13

    .line 540
    .line 541
    invoke-interface {v0, v3}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 542
    .line 543
    .line 544
    goto :goto_13

    .line 545
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 546
    .line 547
    .line 548
    move-result-wide v6

    .line 549
    invoke-interface {v0, v3, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 550
    .line 551
    .line 552
    :goto_13
    iget v2, v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    .line 553
    .line 554
    int-to-long v2, v2

    .line 555
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 556
    .line 557
    .line 558
    iget-object v1, v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    .line 559
    .line 560
    if-nez v1, :cond_14

    .line 561
    .line 562
    invoke-interface {v0, v14}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 563
    .line 564
    .line 565
    goto :goto_14

    .line 566
    :cond_14
    invoke-interface {v0, v14, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 567
    .line 568
    .line 569
    :goto_14
    invoke-interface {v0, v12, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 570
    .line 571
    .line 572
    invoke-interface {v0, v13, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 573
    .line 574
    .line 575
    return-void

    .line 576
    :pswitch_7
    move-object/from16 v1, p2

    .line 577
    .line 578
    check-cast v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    iget-wide v4, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    .line 587
    .line 588
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 589
    .line 590
    .line 591
    iget-object v2, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    .line 592
    .line 593
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 594
    .line 595
    .line 596
    iget-object v2, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 597
    .line 598
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getId()I

    .line 602
    .line 603
    .line 604
    move-result v2

    .line 605
    int-to-long v2, v2

    .line 606
    invoke-interface {v0, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 607
    .line 608
    .line 609
    iget-wide v1, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    .line 610
    .line 611
    invoke-interface {v0, v12, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 612
    .line 613
    .line 614
    invoke-interface {v0, v13, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 615
    .line 616
    .line 617
    return-void

    .line 618
    :pswitch_8
    move-object/from16 v1, p2

    .line 619
    .line 620
    check-cast v1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;

    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 626
    .line 627
    .line 628
    iget-wide v4, v1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->subscriptionId:J

    .line 629
    .line 630
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 631
    .line 632
    .line 633
    iget-object v1, v1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->lastUpdated:Lj$/time/OffsetDateTime;

    .line 634
    .line 635
    invoke-static {v1}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    if-nez v1, :cond_15

    .line 640
    .line 641
    invoke-interface {v0, v15}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 642
    .line 643
    .line 644
    goto :goto_15

    .line 645
    :cond_15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 646
    .line 647
    .line 648
    move-result-wide v1

    .line 649
    invoke-interface {v0, v15, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 650
    .line 651
    .line 652
    :goto_15
    invoke-interface {v0, v14, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 653
    .line 654
    .line 655
    return-void

    .line 656
    :pswitch_9
    move-object/from16 v1, p2

    .line 657
    .line 658
    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    .line 665
    .line 666
    iget-object v6, v1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 667
    .line 668
    invoke-interface {v0, v3, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iget-object v7, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 672
    .line 673
    invoke-static {v7}, Landroidx/sqlite/SQLite;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 674
    .line 675
    .line 676
    move-result v7

    .line 677
    move-object/from16 p2, v6

    .line 678
    .line 679
    int-to-long v5, v7

    .line 680
    invoke-interface {v0, v15, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 681
    .line 682
    .line 683
    iget-object v5, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 684
    .line 685
    invoke-interface {v0, v14, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 686
    .line 687
    .line 688
    iget-object v5, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 689
    .line 690
    invoke-interface {v0, v12, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 691
    .line 692
    .line 693
    sget-object v5, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 694
    .line 695
    iget-object v5, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 696
    .line 697
    invoke-static {v5}, Lokhttp3/Cookie$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    invoke-interface {v0, v13, v5}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 702
    .line 703
    .line 704
    iget-object v5, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 705
    .line 706
    invoke-static {v5}, Lokhttp3/Cookie$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 707
    .line 708
    .line 709
    move-result-object v5

    .line 710
    invoke-interface {v0, v11, v5}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 711
    .line 712
    .line 713
    iget-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 714
    .line 715
    invoke-interface {v0, v10, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 716
    .line 717
    .line 718
    iget-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 719
    .line 720
    invoke-interface {v0, v9, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 721
    .line 722
    .line 723
    iget-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 724
    .line 725
    invoke-interface {v0, v8, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 726
    .line 727
    .line 728
    iget v5, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 729
    .line 730
    int-to-long v5, v5

    .line 731
    invoke-interface {v0, v4, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 732
    .line 733
    .line 734
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 735
    .line 736
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 740
    .line 741
    .line 742
    move-result v4

    .line 743
    const/4 v5, 0x0

    .line 744
    if-eqz v4, :cond_17

    .line 745
    .line 746
    if-ne v4, v3, :cond_16

    .line 747
    .line 748
    move v4, v3

    .line 749
    goto :goto_16

    .line 750
    :cond_16
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_1b

    .line 754
    .line 755
    :cond_17
    move v4, v5

    .line 756
    :goto_16
    int-to-long v6, v4

    .line 757
    const/16 v4, 0xb

    .line 758
    .line 759
    invoke-interface {v0, v4, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 760
    .line 761
    .line 762
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 763
    .line 764
    const/16 v4, 0xc

    .line 765
    .line 766
    invoke-interface {v0, v4, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 767
    .line 768
    .line 769
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 770
    .line 771
    const/16 v4, 0xd

    .line 772
    .line 773
    invoke-interface {v0, v4, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 774
    .line 775
    .line 776
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 777
    .line 778
    invoke-interface {v0, v2, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 779
    .line 780
    .line 781
    const/16 v2, 0xf

    .line 782
    .line 783
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 784
    .line 785
    invoke-interface {v0, v2, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 786
    .line 787
    .line 788
    iget-boolean v2, v1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 789
    .line 790
    const/16 v4, 0x10

    .line 791
    .line 792
    int-to-long v6, v2

    .line 793
    invoke-interface {v0, v4, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 794
    .line 795
    .line 796
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 797
    .line 798
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 802
    .line 803
    .line 804
    move-result v2

    .line 805
    if-eqz v2, :cond_19

    .line 806
    .line 807
    if-ne v2, v3, :cond_18

    .line 808
    .line 809
    goto :goto_17

    .line 810
    :cond_18
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 811
    .line 812
    .line 813
    goto/16 :goto_1b

    .line 814
    .line 815
    :cond_19
    move v3, v5

    .line 816
    :goto_17
    const/16 v2, 0x11

    .line 817
    .line 818
    int-to-long v3, v3

    .line 819
    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 820
    .line 821
    .line 822
    iget v2, v1, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 823
    .line 824
    int-to-long v2, v2

    .line 825
    const/16 v4, 0x12

    .line 826
    .line 827
    invoke-interface {v0, v4, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 828
    .line 829
    .line 830
    iget v2, v1, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 831
    .line 832
    int-to-long v2, v2

    .line 833
    const/16 v4, 0x13

    .line 834
    .line 835
    invoke-interface {v0, v4, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 836
    .line 837
    .line 838
    const/16 v2, 0x14

    .line 839
    .line 840
    iget-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    .line 841
    .line 842
    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 843
    .line 844
    .line 845
    iget v2, v1, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 846
    .line 847
    int-to-long v2, v2

    .line 848
    const/16 v4, 0x15

    .line 849
    .line 850
    invoke-interface {v0, v4, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 851
    .line 852
    .line 853
    iget v2, v1, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    .line 854
    .line 855
    int-to-long v2, v2

    .line 856
    const/16 v4, 0x16

    .line 857
    .line 858
    invoke-interface {v0, v4, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 859
    .line 860
    .line 861
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 862
    .line 863
    const/16 v3, 0x17

    .line 864
    .line 865
    if-nez v2, :cond_1a

    .line 866
    .line 867
    invoke-interface {v0, v3}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 868
    .line 869
    .line 870
    goto :goto_18

    .line 871
    :cond_1a
    invoke-interface {v0, v3, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 872
    .line 873
    .line 874
    :goto_18
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->backOffOnSystemInterruptions:Ljava/lang/Boolean;

    .line 875
    .line 876
    if-eqz v2, :cond_1b

    .line 877
    .line 878
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 879
    .line 880
    .line 881
    move-result v2

    .line 882
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    goto :goto_19

    .line 887
    :cond_1b
    const/4 v3, 0x0

    .line 888
    :goto_19
    const/16 v2, 0x18

    .line 889
    .line 890
    if-nez v3, :cond_1c

    .line 891
    .line 892
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 893
    .line 894
    .line 895
    goto :goto_1a

    .line 896
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 897
    .line 898
    .line 899
    move-result v3

    .line 900
    int-to-long v3, v3

    .line 901
    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 902
    .line 903
    .line 904
    :goto_1a
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 905
    .line 906
    iget-object v2, v1, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 907
    .line 908
    invoke-static {v2}, Landroidx/sqlite/SQLite;->networkTypeToInt(Landroidx/work/NetworkType;)I

    .line 909
    .line 910
    .line 911
    move-result v2

    .line 912
    const/16 v3, 0x19

    .line 913
    .line 914
    int-to-long v4, v2

    .line 915
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 916
    .line 917
    .line 918
    iget-object v2, v1, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 919
    .line 920
    invoke-static {v2}, Landroidx/sqlite/SQLite;->fromNetworkRequest$work_runtime_release(Landroidx/work/impl/utils/NetworkRequestCompat;)[B

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    const/16 v3, 0x1a

    .line 925
    .line 926
    invoke-interface {v0, v3, v2}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 927
    .line 928
    .line 929
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresCharging:Z

    .line 930
    .line 931
    const/16 v3, 0x1b

    .line 932
    .line 933
    int-to-long v4, v2

    .line 934
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 935
    .line 936
    .line 937
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 938
    .line 939
    const/16 v3, 0x1c

    .line 940
    .line 941
    int-to-long v4, v2

    .line 942
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 943
    .line 944
    .line 945
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 946
    .line 947
    const/16 v3, 0x1d

    .line 948
    .line 949
    int-to-long v4, v2

    .line 950
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 951
    .line 952
    .line 953
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 954
    .line 955
    const/16 v3, 0x1e

    .line 956
    .line 957
    int-to-long v4, v2

    .line 958
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 959
    .line 960
    .line 961
    const/16 v2, 0x1f

    .line 962
    .line 963
    iget-wide v3, v1, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 964
    .line 965
    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 966
    .line 967
    .line 968
    const/16 v2, 0x20

    .line 969
    .line 970
    iget-wide v3, v1, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 971
    .line 972
    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 973
    .line 974
    .line 975
    iget-object v1, v1, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    .line 976
    .line 977
    invoke-static {v1}, Landroidx/sqlite/SQLite;->setOfTriggersToByteArray(Ljava/util/Set;)[B

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    const/16 v2, 0x21

    .line 982
    .line 983
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 984
    .line 985
    .line 986
    const/16 v1, 0x22

    .line 987
    .line 988
    move-object/from16 v2, p2

    .line 989
    .line 990
    invoke-interface {v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 991
    .line 992
    .line 993
    :goto_1b
    return-void

    .line 994
    nop

    .line 995
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final createQuery()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "UPDATE OR ABORT `subscriptions` SET `uid` = ?,`service_id` = ?,`url` = ?,`name` = ?,`avatar_url` = ?,`subscriber_count` = ?,`description` = ?,`notification_mode` = ? WHERE `uid` = ?"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "DELETE FROM `subscriptions` WHERE `uid` = ?"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "UPDATE OR ABORT `stream_state` SET `stream_id` = ?,`progress_time` = ? WHERE `stream_id` = ?"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "UPDATE OR ABORT `streams` SET `uid` = ?,`service_id` = ?,`url` = ?,`title` = ?,`stream_type` = ?,`duration` = ?,`uploader` = ?,`uploader_url` = ?,`thumbnail_url` = ?,`view_count` = ?,`textual_upload_date` = ?,`upload_date` = ?,`is_upload_date_approximation` = ? WHERE `uid` = ?"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "UPDATE OR ABORT `remote_playlists` SET `uid` = ?,`service_id` = ?,`name` = ?,`url` = ?,`thumbnail_url` = ?,`uploader` = ?,`display_index` = ?,`stream_count` = ? WHERE `uid` = ?"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "UPDATE OR ABORT `playlists` SET `uid` = ?,`name` = ?,`is_thumbnail_permanent` = ?,`thumbnail_stream_id` = ?,`display_index` = ? WHERE `uid` = ?"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "DELETE FROM `stream_history` WHERE `stream_id` = ? AND `access_date` = ?"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "UPDATE OR ABORT `search_history` SET `creation_date` = ?,`service_id` = ?,`search` = ?,`id` = ? WHERE `id` = ?"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    const-string p0, "UPDATE OR IGNORE `feed_group` SET `uid` = ?,`name` = ?,`icon_id` = ?,`sort_order` = ? WHERE `uid` = ?"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    const-string p0, "UPDATE OR IGNORE `feed_last_updated` SET `subscription_id` = ?,`last_updated` = ? WHERE `subscription_id` = ?"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    const-string p0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
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
