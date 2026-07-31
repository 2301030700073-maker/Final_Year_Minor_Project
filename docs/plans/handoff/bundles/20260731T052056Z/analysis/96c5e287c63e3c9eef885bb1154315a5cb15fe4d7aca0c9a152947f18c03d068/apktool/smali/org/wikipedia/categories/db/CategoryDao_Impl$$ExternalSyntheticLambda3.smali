.class public final synthetic Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 12
    iput p3, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    iput p1, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    iput p2, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IILorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;)V
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    iput p3, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;->f$2:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x1

    .line 10
    iget v7, v0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;->f$2:I

    .line 11
    .line 12
    iget v0, v0, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v2, "SELECT `authority`, `lang`, `apiTitle`, `displayTitle`, `id`, `namespace`, `timestamp`, `source`, `imageName`, `description`, `geoLat`, `geoLon`, `timeSpentSec` FROM (SELECT HistoryEntry.*, PageImage.imageName, PageImage.description, PageImage.geoLat, PageImage.geoLon, PageImage.timeSpentSec FROM HistoryEntry LEFT OUTER JOIN PageImage ON (HistoryEntry.namespace = PageImage.namespace AND HistoryEntry.apiTitle = PageImage.apiTitle AND HistoryEntry.lang = PageImage.lang) INNER JOIN (SELECT lang, apiTitle, MAX(timestamp) as max_timestamp FROM HistoryEntry GROUP BY lang, apiTitle) LatestEntries ON HistoryEntry.apiTitle = LatestEntries.apiTitle AND HistoryEntry.timestamp = LatestEntries.max_timestamp ORDER BY timestamp DESC LIMIT ? OFFSET ?)"

    .line 25
    .line 26
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    int-to-long v2, v0

    .line 31
    :try_start_0
    invoke-interface {v1, v2, v3, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 32
    .line 33
    .line 34
    int-to-long v2, v7

    .line 35
    invoke-interface {v1, v2, v3, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 36
    .line 37
    .line 38
    const-string v0, "authority"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const-string v2, "lang"

    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const-string v3, "apiTitle"

    .line 51
    .line 52
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const-string v4, "displayTitle"

    .line 57
    .line 58
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const-string v5, "id"

    .line 63
    .line 64
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const-string v6, "namespace"

    .line 69
    .line 70
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    const-string v7, "timestamp"

    .line 75
    .line 76
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    const-string v8, "source"

    .line 81
    .line 82
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    const-string v9, "imageName"

    .line 87
    .line 88
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    const-string v10, "description"

    .line 93
    .line 94
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    const-string v11, "geoLat"

    .line 99
    .line 100
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    const-string v12, "geoLon"

    .line 105
    .line 106
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    const-string v13, "timeSpentSec"

    .line 111
    .line 112
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    new-instance v14, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    if-eqz v15, :cond_6

    .line 126
    .line 127
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v17

    .line 131
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v18

    .line 135
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v19

    .line 139
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v20

    .line 143
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v29

    .line 147
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v21

    .line 151
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    const/16 v16, 0x0

    .line 156
    .line 157
    if-eqz v15, :cond_0

    .line 158
    .line 159
    move-object/from16 v15, v16

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_0
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v22

    .line 166
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    :goto_1
    invoke-static {v15}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 171
    .line 172
    .line 173
    move-result-object v22

    .line 174
    if-eqz v22, :cond_5

    .line 175
    .line 176
    move/from16 p0, v2

    .line 177
    .line 178
    move/from16 p1, v3

    .line 179
    .line 180
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 181
    .line 182
    .line 183
    move-result-wide v2

    .line 184
    long-to-int v2, v2

    .line 185
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_1

    .line 190
    .line 191
    move-object/from16 v25, v16

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_1
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    move-object/from16 v25, v3

    .line 199
    .line 200
    :goto_2
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_2

    .line 205
    .line 206
    move-object/from16 v26, v16

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_2
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    move-object/from16 v26, v3

    .line 214
    .line 215
    :goto_3
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_3

    .line 220
    .line 221
    move-object/from16 v27, v16

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_3
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    .line 225
    .line 226
    .line 227
    move-result-wide v23

    .line 228
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    move-object/from16 v27, v3

    .line 233
    .line 234
    :goto_4
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-eqz v3, :cond_4

    .line 239
    .line 240
    :goto_5
    move/from16 v23, v2

    .line 241
    .line 242
    move-object/from16 v28, v16

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_4
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    .line 246
    .line 247
    .line 248
    move-result-wide v15

    .line 249
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 250
    .line 251
    .line 252
    move-result-object v16

    .line 253
    goto :goto_5

    .line 254
    :goto_6
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 255
    .line 256
    .line 257
    move-result-wide v2

    .line 258
    long-to-int v2, v2

    .line 259
    new-instance v16, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 260
    .line 261
    move/from16 v24, v2

    .line 262
    .line 263
    invoke-direct/range {v16 .. v30}, Lorg/wikipedia/history/db/HistoryEntryWithImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;J)V

    .line 264
    .line 265
    .line 266
    move-object/from16 v2, v16

    .line 267
    .line 268
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move/from16 v2, p0

    .line 272
    .line 273
    move/from16 v3, p1

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :catchall_0
    move-exception v0

    .line 278
    goto :goto_7

    .line 279
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 280
    .line 281
    const-string v2, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    .line 282
    .line 283
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :cond_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 288
    .line 289
    .line 290
    return-object v14

    .line 291
    :goto_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :pswitch_0
    move-object/from16 v1, p1

    .line 296
    .line 297
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    const-string v8, "SELECT year, month, title, lang, SUM (count) AS count FROM Category WHERE year BETWEEN ? AND ? GROUP BY title, lang ORDER BY count DESC"

    .line 303
    .line 304
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    int-to-long v8, v0

    .line 309
    :try_start_1
    invoke-interface {v1, v8, v9, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 310
    .line 311
    .line 312
    int-to-long v7, v7

    .line 313
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    :goto_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    if-eqz v7, :cond_7

    .line 326
    .line 327
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 328
    .line 329
    .line 330
    move-result-wide v7

    .line 331
    long-to-int v10, v7

    .line 332
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 333
    .line 334
    .line 335
    move-result-wide v7

    .line 336
    long-to-int v11, v7

    .line 337
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v14

    .line 345
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v7

    .line 349
    long-to-int v12, v7

    .line 350
    new-instance v9, Lorg/wikipedia/categories/db/Category;

    .line 351
    .line 352
    invoke-direct/range {v9 .. v14}, Lorg/wikipedia/categories/db/Category;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 356
    .line 357
    .line 358
    goto :goto_8

    .line 359
    :catchall_1
    move-exception v0

    .line 360
    goto :goto_9

    .line 361
    :cond_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 362
    .line 363
    .line 364
    return-object v0

    .line 365
    :goto_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :pswitch_1
    move-object/from16 v1, p1

    .line 370
    .line 371
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    const-string v8, "SELECT year, month, title, lang, SUM (count) AS count FROM Category WHERE year = ? AND month = ? GROUP BY title, lang ORDER BY count DESC"

    .line 377
    .line 378
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    int-to-long v8, v0

    .line 383
    :try_start_2
    invoke-interface {v1, v8, v9, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 384
    .line 385
    .line 386
    int-to-long v7, v7

    .line 387
    invoke-interface {v1, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 388
    .line 389
    .line 390
    new-instance v0, Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .line 394
    .line 395
    :goto_a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    if-eqz v7, :cond_8

    .line 400
    .line 401
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 402
    .line 403
    .line 404
    move-result-wide v7

    .line 405
    long-to-int v10, v7

    .line 406
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 407
    .line 408
    .line 409
    move-result-wide v7

    .line 410
    long-to-int v11, v7

    .line 411
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v13

    .line 415
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v14

    .line 419
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 420
    .line 421
    .line 422
    move-result-wide v7

    .line 423
    long-to-int v12, v7

    .line 424
    new-instance v9, Lorg/wikipedia/categories/db/Category;

    .line 425
    .line 426
    invoke-direct/range {v9 .. v14}, Lorg/wikipedia/categories/db/Category;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 430
    .line 431
    .line 432
    goto :goto_a

    .line 433
    :catchall_2
    move-exception v0

    .line 434
    goto :goto_b

    .line 435
    :cond_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 436
    .line 437
    .line 438
    return-object v0

    .line 439
    :goto_b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 440
    .line 441
    .line 442
    throw v0

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
