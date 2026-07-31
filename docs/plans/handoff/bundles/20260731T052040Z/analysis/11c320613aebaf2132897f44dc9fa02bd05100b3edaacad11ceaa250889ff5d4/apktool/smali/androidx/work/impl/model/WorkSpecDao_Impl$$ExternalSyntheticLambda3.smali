.class public final synthetic Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    .line 13
    iput p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    iput p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 12
    iput p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)V
    .locals 0

    .line 1
    const/4 p3, 0x5

    .line 2
    iput p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const-string v3, "notification_mode"

    .line 8
    .line 9
    const-string v4, "description"

    .line 10
    .line 11
    const-string/jumbo v5, "subscriber_count"

    .line 12
    .line 13
    .line 14
    const-string v6, "avatar_url"

    .line 15
    .line 16
    const-string v7, "name"

    .line 17
    .line 18
    const-string/jumbo v8, "url"

    .line 19
    .line 20
    .line 21
    const-string v9, "service_id"

    .line 22
    .line 23
    const-string/jumbo v10, "uid"

    .line 24
    .line 25
    .line 26
    const-string v11, "SELECT * FROM subscriptions WHERE url LIKE ? AND service_id = ?"

    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    const/4 v14, 0x2

    .line 30
    const/4 v15, 0x1

    .line 31
    iget-object v13, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 32
    .line 33
    iget v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    .line 34
    .line 35
    packed-switch v1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    check-cast v13, Ljava/util/Collection;

    .line 39
    .line 40
    move-object/from16 v1, p1

    .line 41
    .line 42
    check-cast v1, Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v1, v0, v13}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :pswitch_0
    check-cast v13, Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v1, p1

    .line 56
    .line 57
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :try_start_0
    invoke-interface {v1, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    int-to-long v11, v0

    .line 70
    invoke-interface {v1, v14, v11, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_5

    .line 110
    .line 111
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v17

    .line 115
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v9

    .line 119
    long-to-int v0, v9

    .line 120
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_0

    .line 125
    .line 126
    const/16 v20, 0x0

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    move-object/from16 v20, v2

    .line 134
    .line 135
    :goto_0
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_1

    .line 140
    .line 141
    const/16 v21, 0x0

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    move-object/from16 v21, v2

    .line 149
    .line 150
    :goto_1
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_2

    .line 155
    .line 156
    const/16 v22, 0x0

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_2
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    move-object/from16 v22, v2

    .line 164
    .line 165
    :goto_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_3

    .line 170
    .line 171
    const/16 v23, 0x0

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 175
    .line 176
    .line 177
    move-result-wide v5

    .line 178
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    move-object/from16 v23, v2

    .line 183
    .line 184
    :goto_3
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_4

    .line 189
    .line 190
    const/16 v24, 0x0

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_4
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    move-object/from16 v24, v13

    .line 198
    .line 199
    :goto_4
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 200
    .line 201
    .line 202
    move-result-wide v2

    .line 203
    long-to-int v2, v2

    .line 204
    new-instance v16, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 205
    .line 206
    move/from16 v19, v0

    .line 207
    .line 208
    move/from16 v25, v2

    .line 209
    .line 210
    invoke-direct/range {v16 .. v25}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .line 212
    .line 213
    move-object/from16 v13, v16

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    goto :goto_6

    .line 218
    :cond_5
    const/4 v13, 0x0

    .line 219
    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 220
    .line 221
    .line 222
    return-object v13

    .line 223
    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :pswitch_1
    check-cast v13, Ljava/lang/String;

    .line 228
    .line 229
    move-object/from16 v1, p1

    .line 230
    .line 231
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    const-string v2, "SELECT uid FROM subscriptions WHERE url LIKE ? AND service_id = ?"

    .line 237
    .line 238
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    :try_start_1
    invoke-interface {v1, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    int-to-long v2, v0

    .line 246
    invoke-interface {v1, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_6

    .line 254
    .line 255
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_7

    .line 260
    .line 261
    :cond_6
    const/4 v13, 0x0

    .line 262
    goto :goto_7

    .line 263
    :cond_7
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 264
    .line 265
    .line 266
    move-result-wide v2

    .line 267
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 268
    .line 269
    .line 270
    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    goto :goto_7

    .line 272
    :catchall_1
    move-exception v0

    .line 273
    goto :goto_8

    .line 274
    :goto_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 275
    .line 276
    .line 277
    return-object v13

    .line 278
    :goto_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 279
    .line 280
    .line 281
    throw v0

    .line 282
    :pswitch_2
    check-cast v13, Ljava/lang/String;

    .line 283
    .line 284
    move-object/from16 v1, p1

    .line 285
    .line 286
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    const-string v2, "DELETE FROM subscriptions WHERE url LIKE ? AND service_id = ?"

    .line 292
    .line 293
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    :try_start_2
    invoke-interface {v2, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    int-to-long v3, v0

    .line 301
    invoke-interface {v2, v14, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 305
    .line 306
    .line 307
    invoke-static {v1}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 308
    .line 309
    .line 310
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 311
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 312
    .line 313
    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    return-object v0

    .line 319
    :catchall_2
    move-exception v0

    .line 320
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 321
    .line 322
    .line 323
    throw v0

    .line 324
    :pswitch_3
    check-cast v13, Ljava/lang/String;

    .line 325
    .line 326
    move-object/from16 v1, p1

    .line 327
    .line 328
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 329
    .line 330
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    :try_start_3
    invoke-interface {v1, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    int-to-long v11, v0

    .line 341
    invoke-interface {v1, v14, v11, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 342
    .line 343
    .line 344
    invoke-static {v1, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    new-instance v9, Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .line 380
    .line 381
    :goto_9
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 382
    .line 383
    .line 384
    move-result v10

    .line 385
    if-eqz v10, :cond_d

    .line 386
    .line 387
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 388
    .line 389
    .line 390
    move-result-wide v17

    .line 391
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 392
    .line 393
    .line 394
    move-result-wide v10

    .line 395
    long-to-int v10, v10

    .line 396
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 397
    .line 398
    .line 399
    move-result v11

    .line 400
    if-eqz v11, :cond_8

    .line 401
    .line 402
    const/16 v20, 0x0

    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_8
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v11

    .line 409
    move-object/from16 v20, v11

    .line 410
    .line 411
    :goto_a
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 412
    .line 413
    .line 414
    move-result v11

    .line 415
    if-eqz v11, :cond_9

    .line 416
    .line 417
    const/16 v21, 0x0

    .line 418
    .line 419
    goto :goto_b

    .line 420
    :cond_9
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v11

    .line 424
    move-object/from16 v21, v11

    .line 425
    .line 426
    :goto_b
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 427
    .line 428
    .line 429
    move-result v11

    .line 430
    if-eqz v11, :cond_a

    .line 431
    .line 432
    const/16 v22, 0x0

    .line 433
    .line 434
    goto :goto_c

    .line 435
    :cond_a
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v11

    .line 439
    move-object/from16 v22, v11

    .line 440
    .line 441
    :goto_c
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 442
    .line 443
    .line 444
    move-result v11

    .line 445
    if-eqz v11, :cond_b

    .line 446
    .line 447
    const/16 v23, 0x0

    .line 448
    .line 449
    goto :goto_d

    .line 450
    :cond_b
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 451
    .line 452
    .line 453
    move-result-wide v11

    .line 454
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 455
    .line 456
    .line 457
    move-result-object v11

    .line 458
    move-object/from16 v23, v11

    .line 459
    .line 460
    :goto_d
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 461
    .line 462
    .line 463
    move-result v11

    .line 464
    if-eqz v11, :cond_c

    .line 465
    .line 466
    const/16 v24, 0x0

    .line 467
    .line 468
    goto :goto_e

    .line 469
    :cond_c
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v11

    .line 473
    move-object/from16 v24, v11

    .line 474
    .line 475
    :goto_e
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 476
    .line 477
    .line 478
    move-result-wide v11

    .line 479
    long-to-int v11, v11

    .line 480
    new-instance v16, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 481
    .line 482
    move/from16 v19, v10

    .line 483
    .line 484
    move/from16 v25, v11

    .line 485
    .line 486
    invoke-direct/range {v16 .. v25}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 487
    .line 488
    .line 489
    move-object/from16 v10, v16

    .line 490
    .line 491
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 492
    .line 493
    .line 494
    goto :goto_9

    .line 495
    :catchall_3
    move-exception v0

    .line 496
    goto :goto_f

    .line 497
    :cond_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 498
    .line 499
    .line 500
    return-object v9

    .line 501
    :goto_f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 502
    .line 503
    .line 504
    throw v0

    .line 505
    :pswitch_4
    check-cast v13, Ljava/lang/String;

    .line 506
    .line 507
    move-object/from16 v1, p1

    .line 508
    .line 509
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 510
    .line 511
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    const-string v2, "\n        SELECT uid, stream_type, textual_upload_date, upload_date, is_upload_date_approximation, duration \n        FROM streams WHERE url = ? AND service_id = ?\n        "

    .line 515
    .line 516
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    :try_start_4
    invoke-interface {v1, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 521
    .line 522
    .line 523
    int-to-long v2, v0

    .line 524
    invoke-interface {v1, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 525
    .line 526
    .line 527
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    if-eqz v0, :cond_13

    .line 532
    .line 533
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 534
    .line 535
    .line 536
    move-result-wide v2

    .line 537
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-static {v0}, Lokio/Path$Companion;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    if-eqz v4, :cond_e

    .line 550
    .line 551
    const/4 v4, 0x0

    .line 552
    goto :goto_10

    .line 553
    :cond_e
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    :goto_10
    const/4 v5, 0x3

    .line 558
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 559
    .line 560
    .line 561
    move-result v6

    .line 562
    if-eqz v6, :cond_f

    .line 563
    .line 564
    const/4 v5, 0x0

    .line 565
    goto :goto_11

    .line 566
    :cond_f
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 567
    .line 568
    .line 569
    move-result-wide v5

    .line 570
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    :goto_11
    invoke-static {v5}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    const/4 v6, 0x4

    .line 579
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 580
    .line 581
    .line 582
    move-result v7

    .line 583
    if-eqz v7, :cond_10

    .line 584
    .line 585
    const/4 v6, 0x0

    .line 586
    goto :goto_12

    .line 587
    :cond_10
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 588
    .line 589
    .line 590
    move-result-wide v6

    .line 591
    long-to-int v6, v6

    .line 592
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    :goto_12
    if-eqz v6, :cond_12

    .line 597
    .line 598
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    if-eqz v6, :cond_11

    .line 603
    .line 604
    move v12, v15

    .line 605
    :cond_11
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 606
    .line 607
    .line 608
    move-result-object v13

    .line 609
    goto :goto_13

    .line 610
    :catchall_4
    move-exception v0

    .line 611
    goto :goto_15

    .line 612
    :cond_12
    const/4 v13, 0x0

    .line 613
    :goto_13
    const/4 v6, 0x5

    .line 614
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 615
    .line 616
    .line 617
    move-result-wide v6

    .line 618
    new-instance v8, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

    .line 619
    .line 620
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 624
    .line 625
    .line 626
    iput-wide v2, v8, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uid:J

    .line 627
    .line 628
    iput-object v0, v8, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 629
    .line 630
    iput-object v4, v8, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->textualUploadDate:Ljava/lang/String;

    .line 631
    .line 632
    iput-object v5, v8, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->uploadDate:Lj$/time/OffsetDateTime;

    .line 633
    .line 634
    iput-object v13, v8, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation:Ljava/lang/Boolean;

    .line 635
    .line 636
    iput-wide v6, v8, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->duration:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 637
    .line 638
    move-object v13, v8

    .line 639
    goto :goto_14

    .line 640
    :cond_13
    const/4 v13, 0x0

    .line 641
    :goto_14
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 642
    .line 643
    .line 644
    return-object v13

    .line 645
    :goto_15
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 646
    .line 647
    .line 648
    throw v0

    .line 649
    :pswitch_5
    check-cast v13, Ljava/lang/String;

    .line 650
    .line 651
    move-object/from16 v1, p1

    .line 652
    .line 653
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 654
    .line 655
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    const-string v2, "SELECT COUNT(*) != 0 FROM streams WHERE url = ? AND service_id = ?"

    .line 659
    .line 660
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    :try_start_5
    invoke-interface {v1, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 665
    .line 666
    .line 667
    int-to-long v2, v0

    .line 668
    invoke-interface {v1, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 669
    .line 670
    .line 671
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    if-eqz v0, :cond_14

    .line 676
    .line 677
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 678
    .line 679
    .line 680
    move-result-wide v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 681
    long-to-int v0, v2

    .line 682
    if-eqz v0, :cond_14

    .line 683
    .line 684
    move v12, v15

    .line 685
    goto :goto_16

    .line 686
    :catchall_5
    move-exception v0

    .line 687
    goto :goto_17

    .line 688
    :cond_14
    :goto_16
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 689
    .line 690
    .line 691
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    return-object v0

    .line 696
    :goto_17
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 697
    .line 698
    .line 699
    throw v0

    .line 700
    :pswitch_6
    check-cast v13, Ljava/lang/String;

    .line 701
    .line 702
    move-object/from16 v1, p1

    .line 703
    .line 704
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 705
    .line 706
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 707
    .line 708
    .line 709
    const-string v2, "\n        SELECT search FROM search_history WHERE search LIKE ? ||\n        \'%\' GROUP BY search ORDER BY MAX(creation_date) DESC LIMIT ?\n        "

    .line 710
    .line 711
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    :try_start_6
    invoke-interface {v1, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 716
    .line 717
    .line 718
    int-to-long v2, v0

    .line 719
    invoke-interface {v1, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 720
    .line 721
    .line 722
    new-instance v0, Ljava/util/ArrayList;

    .line 723
    .line 724
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .line 726
    .line 727
    :goto_18
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    if-eqz v2, :cond_15

    .line 732
    .line 733
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 738
    .line 739
    .line 740
    goto :goto_18

    .line 741
    :catchall_6
    move-exception v0

    .line 742
    goto :goto_19

    .line 743
    :cond_15
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 744
    .line 745
    .line 746
    return-object v0

    .line 747
    :goto_19
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 748
    .line 749
    .line 750
    throw v0

    .line 751
    :pswitch_7
    check-cast v13, Ljava/lang/String;

    .line 752
    .line 753
    move-object/from16 v1, p1

    .line 754
    .line 755
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 756
    .line 757
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    const-string v3, "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)"

    .line 761
    .line 762
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    :try_start_7
    invoke-interface {v1, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 767
    .line 768
    .line 769
    int-to-long v3, v0

    .line 770
    invoke-interface {v1, v14, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 771
    .line 772
    .line 773
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 774
    .line 775
    .line 776
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 777
    .line 778
    .line 779
    return-object v2

    .line 780
    :catchall_7
    move-exception v0

    .line 781
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 782
    .line 783
    .line 784
    throw v0

    .line 785
    :pswitch_8
    check-cast v13, Ljava/lang/String;

    .line 786
    .line 787
    move-object/from16 v1, p1

    .line 788
    .line 789
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 790
    .line 791
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    const-string v2, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    .line 795
    .line 796
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    :try_start_8
    invoke-interface {v1, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 801
    .line 802
    .line 803
    int-to-long v2, v0

    .line 804
    invoke-interface {v1, v14, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 805
    .line 806
    .line 807
    const-string/jumbo v0, "work_spec_id"

    .line 808
    .line 809
    .line 810
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    const-string v2, "generation"

    .line 815
    .line 816
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    const-string/jumbo v3, "system_id"

    .line 821
    .line 822
    .line 823
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 824
    .line 825
    .line 826
    move-result v3

    .line 827
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 828
    .line 829
    .line 830
    move-result v4

    .line 831
    if-eqz v4, :cond_16

    .line 832
    .line 833
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 838
    .line 839
    .line 840
    move-result-wide v4

    .line 841
    long-to-int v2, v4

    .line 842
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 843
    .line 844
    .line 845
    move-result-wide v3

    .line 846
    long-to-int v3, v3

    .line 847
    new-instance v13, Landroidx/work/impl/model/SystemIdInfo;

    .line 848
    .line 849
    invoke-direct {v13, v0, v2, v3}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 850
    .line 851
    .line 852
    goto :goto_1a

    .line 853
    :catchall_8
    move-exception v0

    .line 854
    goto :goto_1b

    .line 855
    :cond_16
    const/4 v13, 0x0

    .line 856
    :goto_1a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 857
    .line 858
    .line 859
    return-object v13

    .line 860
    :goto_1b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 861
    .line 862
    .line 863
    throw v0

    .line 864
    :pswitch_9
    check-cast v13, Ljava/lang/String;

    .line 865
    .line 866
    move-object/from16 v1, p1

    .line 867
    .line 868
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 869
    .line 870
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 871
    .line 872
    .line 873
    const-string v3, "UPDATE workspec SET stop_reason=? WHERE id=?"

    .line 874
    .line 875
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    int-to-long v3, v0

    .line 880
    :try_start_9
    invoke-interface {v1, v15, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 881
    .line 882
    .line 883
    invoke-interface {v1, v14, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 887
    .line 888
    .line 889
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 890
    .line 891
    .line 892
    return-object v2

    .line 893
    :catchall_9
    move-exception v0

    .line 894
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 895
    .line 896
    .line 897
    throw v0

    .line 898
    nop

    .line 899
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
