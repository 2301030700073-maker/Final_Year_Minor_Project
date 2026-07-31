.class public final synthetic Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(IJJ)V
    .locals 0

    .line 12
    iput p1, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-wide p2, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p4, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;->f$2:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(JJLorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;)V
    .locals 0

    .line 1
    const/4 p5, 0x6

    .line 2
    iput p5, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;->f$1:J

    .line 8
    .line 9
    iput-wide p3, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;->f$2:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x1

    .line 9
    iget-wide v7, v0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;->f$2:J

    .line 10
    .line 11
    iget-wide v9, v0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;->f$1:J

    .line 12
    .line 13
    move-object/from16 v0, p1

    .line 14
    .line 15
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v1, "SELECT displayTitle FROM ReadingListPage WHERE atime > 0 AND atime BETWEEN ? AND ? ORDER BY RANDOM() LIMIT ?"

    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :try_start_0
    invoke-interface {v1, v9, v10, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v5, 0x3

    .line 36
    .line 37
    invoke-interface {v1, v5, v6, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :goto_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string v1, "SELECT COUNT(*) FROM ReadingListPage WHERE atime > 0 AND atime BETWEEN ? AND ?"

    .line 81
    .line 82
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :try_start_1
    invoke-interface {v1, v9, v10, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    long-to-int v0, v2

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    goto :goto_4

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    goto :goto_5

    .line 117
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .line 118
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 119
    .line 120
    .line 121
    return-object v3

    .line 122
    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    const-string v1, "SELECT `authority`, `lang`, `apiTitle`, `displayTitle`, `id`, `namespace`, `timestamp`, `source`, `imageName`, `description`, `geoLat`, `geoLon`, `timeSpentSec` FROM (SELECT HistoryEntry.*, PageImage.imageName, PageImage.description, PageImage.geoLat, PageImage.geoLon, PageImage.timeSpentSec FROM HistoryEntry  LEFT OUTER JOIN PageImage ON (HistoryEntry.namespace = PageImage.namespace AND HistoryEntry.apiTitle = PageImage.apiTitle AND HistoryEntry.lang = PageImage.lang)  WHERE PageImage.geoLat IS NOT 0.0 AND PageImage.geoLon IS NOT 0.0 AND timestamp BETWEEN ? AND ? ORDER BY timestamp DESC LIMIT ?)"

    .line 130
    .line 131
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :try_start_2
    invoke-interface {v1, v9, v10, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 139
    .line 140
    .line 141
    const-wide/16 v4, 0x100

    .line 142
    .line 143
    invoke-interface {v1, v4, v5, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 144
    .line 145
    .line 146
    const-string v0, "authority"

    .line 147
    .line 148
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const-string v2, "lang"

    .line 153
    .line 154
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    const-string v4, "apiTitle"

    .line 159
    .line 160
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    const-string v5, "displayTitle"

    .line 165
    .line 166
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    const-string v6, "id"

    .line 171
    .line 172
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    const-string v7, "namespace"

    .line 177
    .line 178
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    const-string v8, "timestamp"

    .line 183
    .line 184
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    const-string v9, "source"

    .line 189
    .line 190
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    const-string v10, "imageName"

    .line 195
    .line 196
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    const-string v11, "description"

    .line 201
    .line 202
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    const-string v12, "geoLat"

    .line 207
    .line 208
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    const-string v13, "geoLon"

    .line 213
    .line 214
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    const-string v14, "timeSpentSec"

    .line 219
    .line 220
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    new-instance v15, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    :goto_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 230
    .line 231
    .line 232
    move-result v16

    .line 233
    if-eqz v16, :cond_a

    .line 234
    .line 235
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v18

    .line 239
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v19

    .line 243
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v20

    .line 247
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v21

    .line 251
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 252
    .line 253
    .line 254
    move-result-wide v30

    .line 255
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v22

    .line 259
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 260
    .line 261
    .line 262
    move-result v16

    .line 263
    if-eqz v16, :cond_4

    .line 264
    .line 265
    const/16 v16, 0x0

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_4
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 269
    .line 270
    .line 271
    move-result-wide v16

    .line 272
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 273
    .line 274
    .line 275
    move-result-object v16

    .line 276
    :goto_7
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 277
    .line 278
    .line 279
    move-result-object v23

    .line 280
    if-eqz v23, :cond_9

    .line 281
    .line 282
    move/from16 p0, v4

    .line 283
    .line 284
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 285
    .line 286
    .line 287
    move-result-wide v3

    .line 288
    long-to-int v3, v3

    .line 289
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    if-eqz v4, :cond_5

    .line 294
    .line 295
    const/16 v26, 0x0

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_5
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    move-object/from16 v26, v4

    .line 303
    .line 304
    :goto_8
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_6

    .line 309
    .line 310
    const/16 v27, 0x0

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_6
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    move-object/from16 v27, v4

    .line 318
    .line 319
    :goto_9
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    if-eqz v4, :cond_7

    .line 324
    .line 325
    const/16 v28, 0x0

    .line 326
    .line 327
    goto :goto_a

    .line 328
    :cond_7
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    .line 329
    .line 330
    .line 331
    move-result-wide v24

    .line 332
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    move-object/from16 v28, v4

    .line 337
    .line 338
    :goto_a
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-eqz v4, :cond_8

    .line 343
    .line 344
    const/16 v29, 0x0

    .line 345
    .line 346
    :goto_b
    move/from16 p1, v2

    .line 347
    .line 348
    move/from16 v24, v3

    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_8
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    .line 352
    .line 353
    .line 354
    move-result-wide v24

    .line 355
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    move-object/from16 v29, v4

    .line 360
    .line 361
    goto :goto_b

    .line 362
    :goto_c
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 363
    .line 364
    .line 365
    move-result-wide v2

    .line 366
    long-to-int v2, v2

    .line 367
    new-instance v17, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 368
    .line 369
    move/from16 v25, v2

    .line 370
    .line 371
    invoke-direct/range {v17 .. v31}, Lorg/wikipedia/history/db/HistoryEntryWithImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;J)V

    .line 372
    .line 373
    .line 374
    move-object/from16 v2, v17

    .line 375
    .line 376
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move/from16 v4, p0

    .line 380
    .line 381
    move/from16 v2, p1

    .line 382
    .line 383
    goto/16 :goto_6

    .line 384
    .line 385
    :catchall_2
    move-exception v0

    .line 386
    goto :goto_d

    .line 387
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 388
    .line 389
    const-string v2, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    .line 390
    .line 391
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 395
    :cond_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 396
    .line 397
    .line 398
    return-object v15

    .line 399
    :goto_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    const-string v1, "SELECT SUM(timeSpentSec) FROM (  SELECT DISTINCT HistoryEntry.lang, HistoryEntry.apiTitle, PageImage.timeSpentSec FROM HistoryEntry  LEFT OUTER JOIN PageImage ON (HistoryEntry.namespace = PageImage.namespace AND HistoryEntry.apiTitle = PageImage.apiTitle AND HistoryEntry.lang = PageImage.lang)  WHERE timestamp BETWEEN ? AND ?)"

    .line 407
    .line 408
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    :try_start_3
    invoke-interface {v1, v9, v10, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 413
    .line 414
    .line 415
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-eqz v0, :cond_b

    .line 423
    .line 424
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 425
    .line 426
    .line 427
    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 428
    goto :goto_e

    .line 429
    :catchall_3
    move-exception v0

    .line 430
    goto :goto_f

    .line 431
    :cond_b
    const-wide/16 v2, 0x0

    .line 432
    .line 433
    :goto_e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 434
    .line 435
    .line 436
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    return-object v0

    .line 441
    :goto_f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 442
    .line 443
    .line 444
    throw v0

    .line 445
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    const-string v1, "SELECT COUNT(*) FROM (SELECT DISTINCT HistoryEntry.lang, HistoryEntry.apiTitle FROM HistoryEntry WHERE timestamp BETWEEN ? AND ?)"

    .line 449
    .line 450
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    :try_start_4
    invoke-interface {v1, v9, v10, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 455
    .line 456
    .line 457
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 458
    .line 459
    .line 460
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-eqz v0, :cond_c

    .line 465
    .line 466
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 467
    .line 468
    .line 469
    move-result-wide v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 470
    long-to-int v4, v2

    .line 471
    goto :goto_10

    .line 472
    :catchall_4
    move-exception v0

    .line 473
    goto :goto_11

    .line 474
    :cond_c
    :goto_10
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 475
    .line 476
    .line 477
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    return-object v0

    .line 482
    :goto_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 483
    .line 484
    .line 485
    throw v0

    .line 486
    :pswitch_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    const-string v1, "SELECT CAST(strftime(\'%m\', timestamp / 1000, \'unixepoch\', \'localtime\') AS INTEGER) AS month FROM HistoryEntry WHERE timestamp BETWEEN ? AND ? GROUP BY month ORDER BY COUNT(id) DESC LIMIT 1"

    .line 490
    .line 491
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    :try_start_5
    invoke-interface {v1, v9, v10, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 496
    .line 497
    .line 498
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 499
    .line 500
    .line 501
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_e

    .line 506
    .line 507
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    if-eqz v0, :cond_d

    .line 512
    .line 513
    goto :goto_12

    .line 514
    :cond_d
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 515
    .line 516
    .line 517
    move-result-wide v2

    .line 518
    long-to-int v0, v2

    .line 519
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 520
    .line 521
    .line 522
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 523
    goto :goto_13

    .line 524
    :catchall_5
    move-exception v0

    .line 525
    goto :goto_14

    .line 526
    :cond_e
    :goto_12
    const/4 v3, 0x0

    .line 527
    :goto_13
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 528
    .line 529
    .line 530
    return-object v3

    .line 531
    :goto_14
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 532
    .line 533
    .line 534
    throw v0

    .line 535
    :pswitch_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    const-string v1, "SELECT CAST(strftime(\'%H\', timestamp / 1000, \'unixepoch\', \'localtime\') AS INTEGER) AS hour FROM HistoryEntry WHERE timestamp BETWEEN ? AND ? GROUP BY hour ORDER BY COUNT(id) DESC LIMIT 1"

    .line 539
    .line 540
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    :try_start_6
    invoke-interface {v1, v9, v10, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 545
    .line 546
    .line 547
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 548
    .line 549
    .line 550
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_10

    .line 555
    .line 556
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    if-eqz v0, :cond_f

    .line 561
    .line 562
    goto :goto_15

    .line 563
    :cond_f
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 564
    .line 565
    .line 566
    move-result-wide v2

    .line 567
    long-to-int v0, v2

    .line 568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 569
    .line 570
    .line 571
    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 572
    goto :goto_16

    .line 573
    :catchall_6
    move-exception v0

    .line 574
    goto :goto_17

    .line 575
    :cond_10
    :goto_15
    const/4 v3, 0x0

    .line 576
    :goto_16
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 577
    .line 578
    .line 579
    return-object v3

    .line 580
    :goto_17
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 581
    .line 582
    .line 583
    throw v0

    .line 584
    :pswitch_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    const-string v1, "SELECT CAST(strftime(\'%w\', timestamp / 1000, \'unixepoch\', \'localtime\') AS INTEGER) AS dayOfWeek FROM HistoryEntry WHERE timestamp BETWEEN ? AND ? GROUP BY dayOfWeek ORDER BY COUNT(id) DESC LIMIT 1"

    .line 588
    .line 589
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    :try_start_7
    invoke-interface {v1, v9, v10, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 594
    .line 595
    .line 596
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 597
    .line 598
    .line 599
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_12

    .line 604
    .line 605
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    if-eqz v0, :cond_11

    .line 610
    .line 611
    goto :goto_18

    .line 612
    :cond_11
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 613
    .line 614
    .line 615
    move-result-wide v2

    .line 616
    long-to-int v0, v2

    .line 617
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 618
    .line 619
    .line 620
    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 621
    goto :goto_19

    .line 622
    :catchall_7
    move-exception v0

    .line 623
    goto :goto_1a

    .line 624
    :cond_12
    :goto_18
    const/4 v3, 0x0

    .line 625
    :goto_19
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 626
    .line 627
    .line 628
    return-object v3

    .line 629
    :goto_1a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 630
    .line 631
    .line 632
    throw v0

    .line 633
    :pswitch_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    const-string v1, "SELECT displayTitle FROM HistoryEntry WHERE timestamp BETWEEN ? AND ? GROUP BY displayTitle HAVING COUNT(displayTitle) > 1 ORDER BY COUNT(displayTitle) DESC LIMIT ?"

    .line 637
    .line 638
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    :try_start_8
    invoke-interface {v1, v9, v10, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 643
    .line 644
    .line 645
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 646
    .line 647
    .line 648
    const-wide/16 v5, 0x5

    .line 649
    .line 650
    invoke-interface {v1, v5, v6, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 651
    .line 652
    .line 653
    new-instance v0, Ljava/util/ArrayList;

    .line 654
    .line 655
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .line 657
    .line 658
    :goto_1b
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    if-eqz v2, :cond_13

    .line 663
    .line 664
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 669
    .line 670
    .line 671
    goto :goto_1b

    .line 672
    :catchall_8
    move-exception v0

    .line 673
    goto :goto_1c

    .line 674
    :cond_13
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 675
    .line 676
    .line 677
    return-object v0

    .line 678
    :goto_1c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 679
    .line 680
    .line 681
    throw v0

    .line 682
    nop

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
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
