.class public final Landroidx/work/impl/model/WorkTagDao_Impl$1;
.super Lkotlin/text/CharsKt;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

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
    iput p2, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

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
    iget v1, v1, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x9

    .line 9
    .line 10
    const/16 v4, 0xa

    .line 11
    .line 12
    const/16 v5, 0xb

    .line 13
    .line 14
    const/16 v8, 0x8

    .line 15
    .line 16
    const/4 v9, 0x6

    .line 17
    const/4 v10, 0x7

    .line 18
    const/4 v11, 0x5

    .line 19
    const/4 v12, 0x4

    .line 20
    const/4 v13, 0x3

    .line 21
    const/4 v14, 0x2

    .line 22
    const/4 v15, 0x1

    .line 23
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    move-object/from16 v1, p2

    .line 27
    .line 28
    check-cast v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-wide v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 37
    .line 38
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 39
    .line 40
    .line 41
    iget v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 42
    .line 43
    int-to-long v2, v2

    .line 44
    invoke-interface {v0, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    invoke-interface {v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-interface {v0, v12, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    invoke-interface {v0, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    .line 81
    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    invoke-interface {v0, v9}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    invoke-interface {v0, v9, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 93
    .line 94
    .line 95
    :goto_3
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    .line 96
    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    invoke-interface {v0, v10}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_4
    invoke-interface {v0, v10, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_4
    iget v1, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    .line 107
    .line 108
    int-to-long v1, v1

    .line 109
    invoke-interface {v0, v8, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_0
    move-object/from16 v1, p2

    .line 114
    .line 115
    check-cast v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    iget-wide v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 124
    .line 125
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    .line 127
    .line 128
    iget v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 129
    .line 130
    int-to-long v2, v2

    .line 131
    invoke-interface {v0, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 132
    .line 133
    .line 134
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 135
    .line 136
    if-nez v2, :cond_5

    .line 137
    .line 138
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_5
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_5
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 146
    .line 147
    if-nez v2, :cond_6

    .line 148
    .line 149
    invoke-interface {v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_6
    invoke-interface {v0, v12, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_6
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 157
    .line 158
    if-nez v2, :cond_7

    .line 159
    .line 160
    invoke-interface {v0, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_7
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_7
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    .line 168
    .line 169
    if-nez v2, :cond_8

    .line 170
    .line 171
    invoke-interface {v0, v9}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 176
    .line 177
    .line 178
    move-result-wide v2

    .line 179
    invoke-interface {v0, v9, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 180
    .line 181
    .line 182
    :goto_8
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    .line 183
    .line 184
    if-nez v2, :cond_9

    .line 185
    .line 186
    invoke-interface {v0, v10}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_9

    .line 190
    :cond_9
    invoke-interface {v0, v10, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :goto_9
    iget v1, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    .line 194
    .line 195
    int-to-long v1, v1

    .line 196
    invoke-interface {v0, v8, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :pswitch_1
    move-object/from16 v1, p2

    .line 201
    .line 202
    check-cast v1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    iget-wide v2, v1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->streamUid:J

    .line 211
    .line 212
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 213
    .line 214
    .line 215
    iget-wide v1, v1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 216
    .line 217
    invoke-interface {v0, v14, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_2
    move-object/from16 v1, p2

    .line 222
    .line 223
    check-cast v1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    .line 232
    .line 233
    .line 234
    move-result-wide v6

    .line 235
    invoke-interface {v0, v15, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    int-to-long v6, v6

    .line 243
    invoke-interface {v0, v14, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-interface {v0, v13, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-interface {v0, v12, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-interface {v0, v11, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 275
    .line 276
    .line 277
    move-result-wide v6

    .line 278
    invoke-interface {v0, v9, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-interface {v0, v10, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploaderUrl()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    if-nez v6, :cond_a

    .line 293
    .line 294
    invoke-interface {v0, v8}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_a

    .line 298
    :cond_a
    invoke-interface {v0, v8, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :goto_a
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    if-nez v6, :cond_b

    .line 306
    .line 307
    invoke-interface {v0, v3}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 308
    .line 309
    .line 310
    goto :goto_b

    .line 311
    :cond_b
    invoke-interface {v0, v3, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :goto_b
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getViewCount()Ljava/lang/Long;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    if-nez v3, :cond_c

    .line 319
    .line 320
    invoke-interface {v0, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_c

    .line 324
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 325
    .line 326
    .line 327
    move-result-wide v6

    .line 328
    invoke-interface {v0, v4, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 329
    .line 330
    .line 331
    :goto_c
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTextualUploadDate()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    if-nez v3, :cond_d

    .line 336
    .line 337
    invoke-interface {v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 338
    .line 339
    .line 340
    goto :goto_d

    .line 341
    :cond_d
    invoke-interface {v0, v5, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :goto_d
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploadDate()Lj$/time/OffsetDateTime;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-static {v3}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    if-nez v3, :cond_e

    .line 353
    .line 354
    const/16 v4, 0xc

    .line 355
    .line 356
    invoke-interface {v0, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 357
    .line 358
    .line 359
    goto :goto_e

    .line 360
    :cond_e
    const/16 v4, 0xc

    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 363
    .line 364
    .line 365
    move-result-wide v5

    .line 366
    invoke-interface {v0, v4, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 367
    .line 368
    .line 369
    :goto_e
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation()Ljava/lang/Boolean;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    if-eqz v1, :cond_f

    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    :cond_f
    if-nez v2, :cond_10

    .line 384
    .line 385
    const/16 v1, 0xd

    .line 386
    .line 387
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 388
    .line 389
    .line 390
    goto :goto_f

    .line 391
    :cond_10
    const/16 v1, 0xd

    .line 392
    .line 393
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    int-to-long v2, v2

    .line 398
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 399
    .line 400
    .line 401
    :goto_f
    return-void

    .line 402
    :pswitch_3
    move-object/from16 v1, p2

    .line 403
    .line 404
    check-cast v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    iget-wide v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    .line 413
    .line 414
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 415
    .line 416
    .line 417
    iget-wide v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    .line 418
    .line 419
    invoke-interface {v0, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 420
    .line 421
    .line 422
    iget v1, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    .line 423
    .line 424
    int-to-long v1, v1

    .line 425
    invoke-interface {v0, v13, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :pswitch_4
    move-object/from16 v1, p2

    .line 430
    .line 431
    check-cast v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    iget-wide v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    .line 440
    .line 441
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 442
    .line 443
    .line 444
    iget v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    .line 445
    .line 446
    int-to-long v2, v2

    .line 447
    invoke-interface {v0, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 448
    .line 449
    .line 450
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    .line 451
    .line 452
    if-nez v2, :cond_11

    .line 453
    .line 454
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 455
    .line 456
    .line 457
    goto :goto_10

    .line 458
    :cond_11
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 459
    .line 460
    .line 461
    :goto_10
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    .line 462
    .line 463
    if-nez v2, :cond_12

    .line 464
    .line 465
    invoke-interface {v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 466
    .line 467
    .line 468
    goto :goto_11

    .line 469
    :cond_12
    invoke-interface {v0, v12, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 470
    .line 471
    .line 472
    :goto_11
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    .line 473
    .line 474
    if-nez v2, :cond_13

    .line 475
    .line 476
    invoke-interface {v0, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 477
    .line 478
    .line 479
    goto :goto_12

    .line 480
    :cond_13
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 481
    .line 482
    .line 483
    :goto_12
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    .line 484
    .line 485
    if-nez v2, :cond_14

    .line 486
    .line 487
    invoke-interface {v0, v9}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 488
    .line 489
    .line 490
    goto :goto_13

    .line 491
    :cond_14
    invoke-interface {v0, v9, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 492
    .line 493
    .line 494
    :goto_13
    iget-wide v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    .line 495
    .line 496
    invoke-interface {v0, v10, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 497
    .line 498
    .line 499
    iget-object v1, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    .line 500
    .line 501
    if-nez v1, :cond_15

    .line 502
    .line 503
    invoke-interface {v0, v8}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 504
    .line 505
    .line 506
    goto :goto_14

    .line 507
    :cond_15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 508
    .line 509
    .line 510
    move-result-wide v1

    .line 511
    invoke-interface {v0, v8, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 512
    .line 513
    .line 514
    :goto_14
    return-void

    .line 515
    :pswitch_5
    move-object/from16 v1, p2

    .line 516
    .line 517
    check-cast v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    iget-wide v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    .line 526
    .line 527
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 528
    .line 529
    .line 530
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    .line 531
    .line 532
    if-nez v2, :cond_16

    .line 533
    .line 534
    invoke-interface {v0, v14}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 535
    .line 536
    .line 537
    goto :goto_15

    .line 538
    :cond_16
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 539
    .line 540
    .line 541
    :goto_15
    iget-boolean v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    .line 542
    .line 543
    int-to-long v2, v2

    .line 544
    invoke-interface {v0, v13, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 545
    .line 546
    .line 547
    iget-wide v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 548
    .line 549
    invoke-interface {v0, v12, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 550
    .line 551
    .line 552
    iget-wide v1, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    .line 553
    .line 554
    invoke-interface {v0, v11, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 555
    .line 556
    .line 557
    return-void

    .line 558
    :pswitch_6
    move-object/from16 v1, p2

    .line 559
    .line 560
    check-cast v1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    iget-wide v2, v1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->streamUid:J

    .line 569
    .line 570
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 571
    .line 572
    .line 573
    iget-object v2, v1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    .line 574
    .line 575
    invoke-static {v2}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    if-nez v2, :cond_17

    .line 580
    .line 581
    invoke-interface {v0, v14}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 582
    .line 583
    .line 584
    goto :goto_16

    .line 585
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 586
    .line 587
    .line 588
    move-result-wide v2

    .line 589
    invoke-interface {v0, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 590
    .line 591
    .line 592
    :goto_16
    iget-wide v1, v1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    .line 593
    .line 594
    invoke-interface {v0, v13, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 595
    .line 596
    .line 597
    return-void

    .line 598
    :pswitch_7
    move-object/from16 v1, p2

    .line 599
    .line 600
    check-cast v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    iget-object v2, v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->creationDate:Lj$/time/OffsetDateTime;

    .line 609
    .line 610
    invoke-static {v2}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    if-nez v2, :cond_18

    .line 615
    .line 616
    invoke-interface {v0, v15}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 617
    .line 618
    .line 619
    goto :goto_17

    .line 620
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 621
    .line 622
    .line 623
    move-result-wide v2

    .line 624
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 625
    .line 626
    .line 627
    :goto_17
    iget v2, v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->serviceId:I

    .line 628
    .line 629
    int-to-long v2, v2

    .line 630
    invoke-interface {v0, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 631
    .line 632
    .line 633
    iget-object v2, v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->search:Ljava/lang/String;

    .line 634
    .line 635
    if-nez v2, :cond_19

    .line 636
    .line 637
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 638
    .line 639
    .line 640
    goto :goto_18

    .line 641
    :cond_19
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 642
    .line 643
    .line 644
    :goto_18
    iget-wide v1, v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->id:J

    .line 645
    .line 646
    invoke-interface {v0, v12, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 647
    .line 648
    .line 649
    return-void

    .line 650
    :pswitch_8
    move-object/from16 v1, p2

    .line 651
    .line 652
    check-cast v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 653
    .line 654
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    iget-wide v2, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    .line 661
    .line 662
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 663
    .line 664
    .line 665
    iget-object v2, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    .line 666
    .line 667
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 668
    .line 669
    .line 670
    iget-object v2, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 671
    .line 672
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v2}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getId()I

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    int-to-long v2, v2

    .line 680
    invoke-interface {v0, v13, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 681
    .line 682
    .line 683
    iget-wide v1, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    .line 684
    .line 685
    invoke-interface {v0, v12, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 686
    .line 687
    .line 688
    return-void

    .line 689
    :pswitch_9
    move-object/from16 v1, p2

    .line 690
    .line 691
    check-cast v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;

    .line 692
    .line 693
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    .line 698
    .line 699
    iget-wide v2, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->feedGroupId:J

    .line 700
    .line 701
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 702
    .line 703
    .line 704
    iget-wide v1, v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->subscriptionId:J

    .line 705
    .line 706
    invoke-interface {v0, v14, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 707
    .line 708
    .line 709
    return-void

    .line 710
    :pswitch_a
    move-object/from16 v1, p2

    .line 711
    .line 712
    check-cast v1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;

    .line 713
    .line 714
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    .line 719
    .line 720
    iget-wide v2, v1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->subscriptionId:J

    .line 721
    .line 722
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 723
    .line 724
    .line 725
    iget-object v1, v1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->lastUpdated:Lj$/time/OffsetDateTime;

    .line 726
    .line 727
    invoke-static {v1}, Lokio/Path$Companion;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    if-nez v1, :cond_1a

    .line 732
    .line 733
    invoke-interface {v0, v14}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 734
    .line 735
    .line 736
    goto :goto_19

    .line 737
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 738
    .line 739
    .line 740
    move-result-wide v1

    .line 741
    invoke-interface {v0, v14, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 742
    .line 743
    .line 744
    :goto_19
    return-void

    .line 745
    :pswitch_b
    move-object/from16 v1, p2

    .line 746
    .line 747
    check-cast v1, Lorg/schabi/newpipe/database/feed/model/FeedEntity;

    .line 748
    .line 749
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    iget-wide v2, v1, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->streamId:J

    .line 756
    .line 757
    invoke-interface {v0, v15, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 758
    .line 759
    .line 760
    iget-wide v1, v1, Lorg/schabi/newpipe/database/feed/model/FeedEntity;->subscriptionId:J

    .line 761
    .line 762
    invoke-interface {v0, v14, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 763
    .line 764
    .line 765
    return-void

    .line 766
    :pswitch_c
    move-object/from16 v1, p2

    .line 767
    .line 768
    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    .line 769
    .line 770
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    .line 775
    .line 776
    iget-object v6, v1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 777
    .line 778
    invoke-interface {v0, v15, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 779
    .line 780
    .line 781
    iget-object v6, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 782
    .line 783
    invoke-static {v6}, Landroidx/sqlite/SQLite;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 784
    .line 785
    .line 786
    move-result v6

    .line 787
    int-to-long v6, v6

    .line 788
    invoke-interface {v0, v14, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 789
    .line 790
    .line 791
    iget-object v6, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 792
    .line 793
    invoke-interface {v0, v13, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 794
    .line 795
    .line 796
    iget-object v6, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 797
    .line 798
    invoke-interface {v0, v12, v6}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 799
    .line 800
    .line 801
    sget-object v6, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 802
    .line 803
    iget-object v6, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 804
    .line 805
    invoke-static {v6}, Lokhttp3/Cookie$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 806
    .line 807
    .line 808
    move-result-object v6

    .line 809
    invoke-interface {v0, v11, v6}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 810
    .line 811
    .line 812
    iget-object v6, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 813
    .line 814
    invoke-static {v6}, Lokhttp3/Cookie$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 815
    .line 816
    .line 817
    move-result-object v6

    .line 818
    invoke-interface {v0, v9, v6}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 819
    .line 820
    .line 821
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 822
    .line 823
    invoke-interface {v0, v10, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 824
    .line 825
    .line 826
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 827
    .line 828
    invoke-interface {v0, v8, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 829
    .line 830
    .line 831
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 832
    .line 833
    invoke-interface {v0, v3, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 834
    .line 835
    .line 836
    iget v3, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 837
    .line 838
    int-to-long v6, v3

    .line 839
    invoke-interface {v0, v4, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 840
    .line 841
    .line 842
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 843
    .line 844
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 848
    .line 849
    .line 850
    move-result v3

    .line 851
    const/4 v4, 0x0

    .line 852
    if-eqz v3, :cond_1c

    .line 853
    .line 854
    if-ne v3, v15, :cond_1b

    .line 855
    .line 856
    move v3, v15

    .line 857
    goto :goto_1a

    .line 858
    :cond_1b
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 859
    .line 860
    .line 861
    goto/16 :goto_1e

    .line 862
    .line 863
    :cond_1c
    move v3, v4

    .line 864
    :goto_1a
    int-to-long v6, v3

    .line 865
    invoke-interface {v0, v5, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 866
    .line 867
    .line 868
    iget-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 869
    .line 870
    const/16 v3, 0xc

    .line 871
    .line 872
    invoke-interface {v0, v3, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 873
    .line 874
    .line 875
    iget-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 876
    .line 877
    const/16 v3, 0xd

    .line 878
    .line 879
    invoke-interface {v0, v3, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 880
    .line 881
    .line 882
    const/16 v3, 0xe

    .line 883
    .line 884
    iget-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 885
    .line 886
    invoke-interface {v0, v3, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 887
    .line 888
    .line 889
    const/16 v3, 0xf

    .line 890
    .line 891
    iget-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 892
    .line 893
    invoke-interface {v0, v3, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 894
    .line 895
    .line 896
    iget-boolean v3, v1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 897
    .line 898
    const/16 v5, 0x10

    .line 899
    .line 900
    int-to-long v6, v3

    .line 901
    invoke-interface {v0, v5, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 902
    .line 903
    .line 904
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 905
    .line 906
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    if-eqz v3, :cond_1e

    .line 914
    .line 915
    if-ne v3, v15, :cond_1d

    .line 916
    .line 917
    goto :goto_1b

    .line 918
    :cond_1d
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 919
    .line 920
    .line 921
    goto/16 :goto_1e

    .line 922
    .line 923
    :cond_1e
    move v15, v4

    .line 924
    :goto_1b
    const/16 v3, 0x11

    .line 925
    .line 926
    int-to-long v4, v15

    .line 927
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 928
    .line 929
    .line 930
    iget v3, v1, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 931
    .line 932
    int-to-long v3, v3

    .line 933
    const/16 v5, 0x12

    .line 934
    .line 935
    invoke-interface {v0, v5, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 936
    .line 937
    .line 938
    iget v3, v1, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 939
    .line 940
    int-to-long v3, v3

    .line 941
    const/16 v5, 0x13

    .line 942
    .line 943
    invoke-interface {v0, v5, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 944
    .line 945
    .line 946
    const/16 v3, 0x14

    .line 947
    .line 948
    iget-wide v4, v1, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    .line 949
    .line 950
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 951
    .line 952
    .line 953
    iget v3, v1, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 954
    .line 955
    int-to-long v3, v3

    .line 956
    const/16 v5, 0x15

    .line 957
    .line 958
    invoke-interface {v0, v5, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 959
    .line 960
    .line 961
    iget v3, v1, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    .line 962
    .line 963
    int-to-long v3, v3

    .line 964
    const/16 v5, 0x16

    .line 965
    .line 966
    invoke-interface {v0, v5, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 967
    .line 968
    .line 969
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 970
    .line 971
    const/16 v4, 0x17

    .line 972
    .line 973
    if-nez v3, :cond_1f

    .line 974
    .line 975
    invoke-interface {v0, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 976
    .line 977
    .line 978
    goto :goto_1c

    .line 979
    :cond_1f
    invoke-interface {v0, v4, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 980
    .line 981
    .line 982
    :goto_1c
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->backOffOnSystemInterruptions:Ljava/lang/Boolean;

    .line 983
    .line 984
    if-eqz v3, :cond_20

    .line 985
    .line 986
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 987
    .line 988
    .line 989
    move-result v2

    .line 990
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    :cond_20
    const/16 v3, 0x18

    .line 995
    .line 996
    if-nez v2, :cond_21

    .line 997
    .line 998
    invoke-interface {v0, v3}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 999
    .line 1000
    .line 1001
    goto :goto_1d

    .line 1002
    :cond_21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1003
    .line 1004
    .line 1005
    move-result v2

    .line 1006
    int-to-long v4, v2

    .line 1007
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1008
    .line 1009
    .line 1010
    :goto_1d
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 1011
    .line 1012
    iget-object v2, v1, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 1013
    .line 1014
    invoke-static {v2}, Landroidx/sqlite/SQLite;->networkTypeToInt(Landroidx/work/NetworkType;)I

    .line 1015
    .line 1016
    .line 1017
    move-result v2

    .line 1018
    const/16 v3, 0x19

    .line 1019
    .line 1020
    int-to-long v4, v2

    .line 1021
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1022
    .line 1023
    .line 1024
    iget-object v2, v1, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1025
    .line 1026
    invoke-static {v2}, Landroidx/sqlite/SQLite;->fromNetworkRequest$work_runtime_release(Landroidx/work/impl/utils/NetworkRequestCompat;)[B

    .line 1027
    .line 1028
    .line 1029
    move-result-object v2

    .line 1030
    const/16 v3, 0x1a

    .line 1031
    .line 1032
    invoke-interface {v0, v3, v2}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1033
    .line 1034
    .line 1035
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresCharging:Z

    .line 1036
    .line 1037
    const/16 v3, 0x1b

    .line 1038
    .line 1039
    int-to-long v4, v2

    .line 1040
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1041
    .line 1042
    .line 1043
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 1044
    .line 1045
    const/16 v3, 0x1c

    .line 1046
    .line 1047
    int-to-long v4, v2

    .line 1048
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1049
    .line 1050
    .line 1051
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 1052
    .line 1053
    const/16 v3, 0x1d

    .line 1054
    .line 1055
    int-to-long v4, v2

    .line 1056
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1057
    .line 1058
    .line 1059
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 1060
    .line 1061
    const/16 v3, 0x1e

    .line 1062
    .line 1063
    int-to-long v4, v2

    .line 1064
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1065
    .line 1066
    .line 1067
    const/16 v2, 0x1f

    .line 1068
    .line 1069
    iget-wide v3, v1, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 1070
    .line 1071
    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1072
    .line 1073
    .line 1074
    const/16 v2, 0x20

    .line 1075
    .line 1076
    iget-wide v3, v1, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 1077
    .line 1078
    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1079
    .line 1080
    .line 1081
    iget-object v1, v1, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    .line 1082
    .line 1083
    invoke-static {v1}, Landroidx/sqlite/SQLite;->setOfTriggersToByteArray(Ljava/util/Set;)[B

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    const/16 v2, 0x21

    .line 1088
    .line 1089
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1090
    .line 1091
    .line 1092
    :goto_1e
    return-void

    .line 1093
    :pswitch_d
    move-object/from16 v1, p2

    .line 1094
    .line 1095
    check-cast v1, Landroidx/work/impl/model/WorkName;

    .line 1096
    .line 1097
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1101
    .line 1102
    .line 1103
    iget-object v2, v1, Landroidx/work/impl/model/WorkName;->name:Ljava/lang/String;

    .line 1104
    .line 1105
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    iget-object v1, v1, Landroidx/work/impl/model/WorkName;->workSpecId:Ljava/lang/String;

    .line 1109
    .line 1110
    invoke-interface {v0, v14, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    return-void

    .line 1114
    :pswitch_e
    move-object/from16 v1, p2

    .line 1115
    .line 1116
    check-cast v1, Landroidx/work/impl/model/SystemIdInfo;

    .line 1117
    .line 1118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1122
    .line 1123
    .line 1124
    iget-object v2, v1, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    .line 1125
    .line 1126
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    iget v2, v1, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    .line 1130
    .line 1131
    int-to-long v2, v2

    .line 1132
    invoke-interface {v0, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1133
    .line 1134
    .line 1135
    iget v1, v1, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    .line 1136
    .line 1137
    int-to-long v1, v1

    .line 1138
    invoke-interface {v0, v13, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1139
    .line 1140
    .line 1141
    return-void

    .line 1142
    :pswitch_f
    move-object/from16 v1, p2

    .line 1143
    .line 1144
    check-cast v1, Landroidx/work/impl/model/Preference;

    .line 1145
    .line 1146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1150
    .line 1151
    .line 1152
    iget-object v2, v1, Landroidx/work/impl/model/Preference;->key:Ljava/lang/String;

    .line 1153
    .line 1154
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    iget-object v1, v1, Landroidx/work/impl/model/Preference;->value:Ljava/lang/Long;

    .line 1158
    .line 1159
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1160
    .line 1161
    .line 1162
    move-result-wide v1

    .line 1163
    invoke-interface {v0, v14, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1164
    .line 1165
    .line 1166
    return-void

    .line 1167
    :pswitch_10
    move-object/from16 v1, p2

    .line 1168
    .line 1169
    check-cast v1, Landroidx/work/impl/model/Dependency;

    .line 1170
    .line 1171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    .line 1176
    .line 1177
    iget-object v2, v1, Landroidx/work/impl/model/Dependency;->workSpecId:Ljava/lang/String;

    .line 1178
    .line 1179
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    iget-object v1, v1, Landroidx/work/impl/model/Dependency;->prerequisiteId:Ljava/lang/String;

    .line 1183
    .line 1184
    invoke-interface {v0, v14, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    return-void

    .line 1188
    :pswitch_11
    move-object/from16 v1, p2

    .line 1189
    .line 1190
    check-cast v1, Landroidx/work/impl/model/WorkTag;

    .line 1191
    .line 1192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1196
    .line 1197
    .line 1198
    iget-object v2, v1, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    .line 1199
    .line 1200
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v1, v1, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    .line 1204
    .line 1205
    invoke-interface {v0, v14, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    return-void

    .line 1209
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final createQuery()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "INSERT OR IGNORE INTO `subscriptions` (`uid`,`service_id`,`url`,`name`,`avatar_url`,`subscriber_count`,`description`,`notification_mode`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "INSERT OR ABORT INTO `subscriptions` (`uid`,`service_id`,`url`,`name`,`avatar_url`,`subscriber_count`,`description`,`notification_mode`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "INSERT OR IGNORE INTO `stream_state` (`stream_id`,`progress_time`) VALUES (?,?)"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "INSERT OR IGNORE INTO `streams` (`uid`,`service_id`,`url`,`title`,`stream_type`,`duration`,`uploader`,`uploader_url`,`thumbnail_url`,`view_count`,`textual_upload_date`,`upload_date`,`is_upload_date_approximation`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "INSERT OR ABORT INTO `playlist_stream_join` (`playlist_id`,`stream_id`,`join_index`) VALUES (?,?,?)"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "INSERT OR ABORT INTO `remote_playlists` (`uid`,`service_id`,`name`,`url`,`thumbnail_url`,`uploader`,`display_index`,`stream_count`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "INSERT OR ABORT INTO `playlists` (`uid`,`name`,`is_thumbnail_permanent`,`thumbnail_stream_id`,`display_index`) VALUES (nullif(?, 0),?,?,?,?)"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "INSERT OR ABORT INTO `stream_history` (`stream_id`,`access_date`,`repeat_count`) VALUES (?,?,?)"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    const-string p0, "INSERT OR ABORT INTO `search_history` (`creation_date`,`service_id`,`search`,`id`) VALUES (?,?,?,nullif(?, 0))"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    const-string p0, "INSERT OR ABORT INTO `feed_group` (`uid`,`name`,`icon_id`,`sort_order`) VALUES (nullif(?, 0),?,?,?)"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    const-string p0, "INSERT OR IGNORE INTO `feed_group_subscription_join` (`group_id`,`subscription_id`) VALUES (?,?)"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    const-string p0, "INSERT OR IGNORE INTO `feed_last_updated` (`subscription_id`,`last_updated`) VALUES (?,?)"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    const-string p0, "INSERT OR IGNORE INTO `feed` (`stream_id`,`subscription_id`) VALUES (?,?)"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    const-string p0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    const-string p0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    const-string p0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    const-string p0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    const-string p0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
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
