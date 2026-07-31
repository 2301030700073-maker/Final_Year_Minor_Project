.class public final synthetic Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;ILorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$2:I

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    .line 10
    .line 11
    iput p3, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$3:I

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;IILorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;)V
    .locals 0

    .line 16
    const/4 p5, 0x0

    iput p5, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput p3, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$2:I

    iput p4, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    .line 6
    .line 7
    const-string v3, "description"

    .line 8
    .line 9
    const-string v4, "timestamp"

    .line 10
    .line 11
    const-string v5, "namespace"

    .line 12
    .line 13
    const-string v6, "id"

    .line 14
    .line 15
    const-string v7, "displayTitle"

    .line 16
    .line 17
    const-string v8, "apiTitle"

    .line 18
    .line 19
    const-string v9, "lang"

    .line 20
    .line 21
    const/4 v10, 0x1

    .line 22
    iget-object v12, v0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    iget v13, v0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$3:I

    .line 25
    .line 26
    iget-object v14, v0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    .line 27
    .line 28
    iget v0, v0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;->f$2:I

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    check-cast v12, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 34
    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const-string v15, "SELECT `authority`, `lang`, `apiTitle`, `displayTitle`, `id`, `namespace`, `timestamp`, `source`, `imageName`, `description`, `geoLat`, `geoLon`, `timeSpentSec` FROM (SELECT HistoryEntry.*, PageImage.imageName, PageImage.description, PageImage.geoLat, PageImage.geoLon, PageImage.timeSpentSec FROM HistoryEntry LEFT OUTER JOIN PageImage ON (HistoryEntry.namespace = PageImage.namespace AND HistoryEntry.apiTitle = PageImage.apiTitle AND HistoryEntry.lang = PageImage.lang) WHERE source != ? AND source != ? AND source != ? AND timeSpentSec >= ? AND (? IS NULL OR HistoryEntry.lang = ?) ORDER BY timestamp DESC LIMIT ?)"

    .line 43
    .line 44
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object/from16 p0, v12

    .line 49
    .line 50
    const-wide/16 v11, 0x8

    .line 51
    .line 52
    :try_start_0
    invoke-interface {v1, v11, v12, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 53
    .line 54
    .line 55
    const/4 v10, 0x2

    .line 56
    const-wide/16 v11, 0x7

    .line 57
    .line 58
    invoke-interface {v1, v11, v12, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 59
    .line 60
    .line 61
    const/4 v10, 0x3

    .line 62
    const-wide/16 v11, 0x11

    .line 63
    .line 64
    invoke-interface {v1, v11, v12, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 65
    .line 66
    .line 67
    const/4 v10, 0x4

    .line 68
    int-to-long v11, v0

    .line 69
    invoke-interface {v1, v11, v12, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x5

    .line 73
    if-nez v14, :cond_0

    .line 74
    .line 75
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_9

    .line 81
    .line 82
    :cond_0
    invoke-interface {v1, v0, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    const/4 v0, 0x6

    .line 86
    if-nez v14, :cond_1

    .line 87
    .line 88
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-interface {v1, v0, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    const/4 v0, 0x7

    .line 96
    int-to-long v10, v13

    .line 97
    invoke-interface {v1, v10, v11, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 98
    .line 99
    .line 100
    const-string v0, "authority"

    .line 101
    .line 102
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const-string v10, "source"

    .line 131
    .line 132
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    const-string v11, "imageName"

    .line 137
    .line 138
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    const-string v12, "geoLat"

    .line 147
    .line 148
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    const-string v13, "geoLon"

    .line 153
    .line 154
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    const-string v14, "timeSpentSec"

    .line 159
    .line 160
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    new-instance v15, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    :goto_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 170
    .line 171
    .line 172
    move-result v16

    .line 173
    if-eqz v16, :cond_8

    .line 174
    .line 175
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v18

    .line 179
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v19

    .line 183
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v20

    .line 187
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v21

    .line 191
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 192
    .line 193
    .line 194
    move-result-wide v30

    .line 195
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v22

    .line 199
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 200
    .line 201
    .line 202
    move-result v16

    .line 203
    if-eqz v16, :cond_2

    .line 204
    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    :goto_3
    move/from16 p1, v0

    .line 208
    .line 209
    move-object/from16 v0, p0

    .line 210
    .line 211
    move/from16 p0, p1

    .line 212
    .line 213
    move/from16 p1, v4

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 217
    .line 218
    .line 219
    move-result-wide v16

    .line 220
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object v16

    .line 224
    goto :goto_3

    .line 225
    :goto_4
    iget-object v4, v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__dateTypeConverter:Lorg/wikipedia/login/LoginClient;

    .line 226
    .line 227
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 228
    .line 229
    .line 230
    move-result-object v23

    .line 231
    if-eqz v23, :cond_7

    .line 232
    .line 233
    move/from16 v16, v5

    .line 234
    .line 235
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 236
    .line 237
    .line 238
    move-result-wide v4

    .line 239
    long-to-int v4, v4

    .line 240
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-eqz v5, :cond_3

    .line 245
    .line 246
    const/16 v26, 0x0

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_3
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    move-object/from16 v26, v5

    .line 254
    .line 255
    :goto_5
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_4

    .line 260
    .line 261
    const/16 v27, 0x0

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_4
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    move-object/from16 v27, v5

    .line 269
    .line 270
    :goto_6
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_5

    .line 275
    .line 276
    const/16 v28, 0x0

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_5
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    .line 280
    .line 281
    .line 282
    move-result-wide v24

    .line 283
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    move-object/from16 v28, v5

    .line 288
    .line 289
    :goto_7
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-eqz v5, :cond_6

    .line 294
    .line 295
    const/16 v29, 0x0

    .line 296
    .line 297
    move v5, v3

    .line 298
    move/from16 v24, v4

    .line 299
    .line 300
    goto :goto_8

    .line 301
    :cond_6
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    .line 302
    .line 303
    .line 304
    move-result-wide v24

    .line 305
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    move-object/from16 v29, v5

    .line 310
    .line 311
    move/from16 v24, v4

    .line 312
    .line 313
    move v5, v3

    .line 314
    :goto_8
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 315
    .line 316
    .line 317
    move-result-wide v3

    .line 318
    long-to-int v3, v3

    .line 319
    new-instance v17, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 320
    .line 321
    move/from16 v25, v3

    .line 322
    .line 323
    invoke-direct/range {v17 .. v31}, Lorg/wikipedia/history/db/HistoryEntryWithImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;J)V

    .line 324
    .line 325
    .line 326
    move-object/from16 v3, v17

    .line 327
    .line 328
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-object v3, v0

    .line 332
    move/from16 v0, p0

    .line 333
    .line 334
    move-object/from16 p0, v3

    .line 335
    .line 336
    move/from16 v4, p1

    .line 337
    .line 338
    move v3, v5

    .line 339
    move/from16 v5, v16

    .line 340
    .line 341
    goto/16 :goto_2

    .line 342
    .line 343
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 344
    .line 345
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 350
    .line 351
    .line 352
    return-object v15

    .line 353
    :goto_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 354
    .line 355
    .line 356
    throw v0

    .line 357
    :pswitch_0
    check-cast v12, Ljava/util/ArrayList;

    .line 358
    .line 359
    move-object/from16 v1, p1

    .line 360
    .line 361
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v11

    .line 374
    move v12, v10

    .line 375
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v14

    .line 379
    if-eqz v14, :cond_9

    .line 380
    .line 381
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v14

    .line 385
    check-cast v14, Ljava/lang/String;

    .line 386
    .line 387
    invoke-interface {v1, v12, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 388
    .line 389
    .line 390
    add-int/lit8 v12, v12, 0x1

    .line 391
    .line 392
    goto :goto_a

    .line 393
    :catchall_1
    move-exception v0

    .line 394
    goto/16 :goto_12

    .line 395
    .line 396
    :cond_9
    add-int/2addr v0, v10

    .line 397
    int-to-long v10, v13

    .line 398
    invoke-interface {v1, v10, v11, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 399
    .line 400
    .line 401
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    const-string/jumbo v6, "wiki"

    .line 406
    .line 407
    .line 408
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    move-result v8

    .line 428
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    const-string v10, "thumbUrl"

    .line 437
    .line 438
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    move-result v10

    .line 442
    const-string v11, "status"

    .line 443
    .line 444
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    move-result v11

    .line 448
    const-string v12, "extract"

    .line 449
    .line 450
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    move-result v12

    .line 454
    new-instance v13, Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .line 458
    .line 459
    :goto_b
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 460
    .line 461
    .line 462
    move-result v14

    .line 463
    if-eqz v14, :cond_13

    .line 464
    .line 465
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 466
    .line 467
    .line 468
    move-result-wide v14

    .line 469
    long-to-int v14, v14

    .line 470
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 471
    .line 472
    .line 473
    move-result v15

    .line 474
    if-eqz v15, :cond_a

    .line 475
    .line 476
    const/4 v15, 0x0

    .line 477
    goto :goto_c

    .line 478
    :cond_a
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v15

    .line 482
    :goto_c
    invoke-static {v15}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 483
    .line 484
    .line 485
    move-result-object v18

    .line 486
    if-eqz v18, :cond_12

    .line 487
    .line 488
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v19

    .line 492
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 493
    .line 494
    .line 495
    move-result v15

    .line 496
    if-eqz v15, :cond_b

    .line 497
    .line 498
    move/from16 v17, v14

    .line 499
    .line 500
    const/4 v14, 0x0

    .line 501
    goto :goto_d

    .line 502
    :cond_b
    move/from16 v17, v14

    .line 503
    .line 504
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 505
    .line 506
    .line 507
    move-result-wide v14

    .line 508
    long-to-int v14, v14

    .line 509
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 510
    .line 511
    .line 512
    move-result-object v14

    .line 513
    :goto_d
    invoke-static {v14}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 514
    .line 515
    .line 516
    move-result-object v20

    .line 517
    if-eqz v20, :cond_11

    .line 518
    .line 519
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 520
    .line 521
    .line 522
    move-result v14

    .line 523
    if-eqz v14, :cond_c

    .line 524
    .line 525
    const/4 v14, 0x0

    .line 526
    goto :goto_e

    .line 527
    :cond_c
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 528
    .line 529
    .line 530
    move-result-wide v14

    .line 531
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 532
    .line 533
    .line 534
    move-result-object v14

    .line 535
    :goto_e
    invoke-static {v14}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 536
    .line 537
    .line 538
    move-result-object v21

    .line 539
    if-eqz v21, :cond_10

    .line 540
    .line 541
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v22

    .line 545
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v23

    .line 549
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 550
    .line 551
    .line 552
    move-result v14

    .line 553
    if-eqz v14, :cond_d

    .line 554
    .line 555
    const/16 v24, 0x0

    .line 556
    .line 557
    goto :goto_f

    .line 558
    :cond_d
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v14

    .line 562
    move-object/from16 v24, v14

    .line 563
    .line 564
    :goto_f
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 565
    .line 566
    .line 567
    move-result v14

    .line 568
    if-eqz v14, :cond_e

    .line 569
    .line 570
    const/16 v25, 0x0

    .line 571
    .line 572
    goto :goto_10

    .line 573
    :cond_e
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v14

    .line 577
    move-object/from16 v25, v14

    .line 578
    .line 579
    :goto_10
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 580
    .line 581
    .line 582
    move-result-wide v14

    .line 583
    long-to-int v14, v14

    .line 584
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 585
    .line 586
    .line 587
    move-result v15

    .line 588
    if-eqz v15, :cond_f

    .line 589
    .line 590
    const/16 v27, 0x0

    .line 591
    .line 592
    goto :goto_11

    .line 593
    :cond_f
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v15

    .line 597
    move-object/from16 v27, v15

    .line 598
    .line 599
    :goto_11
    new-instance v16, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 600
    .line 601
    move/from16 v26, v14

    .line 602
    .line 603
    invoke-direct/range {v16 .. v27}, Lorg/wikipedia/readinglist/database/RecommendedPage;-><init>(ILorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 604
    .line 605
    .line 606
    move-object/from16 v14, v16

    .line 607
    .line 608
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    goto/16 :goto_b

    .line 612
    .line 613
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 614
    .line 615
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    throw v0

    .line 619
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 620
    .line 621
    const-string v2, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 622
    .line 623
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    throw v0

    .line 627
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 628
    .line 629
    const-string v2, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 630
    .line 631
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 635
    :cond_13
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 636
    .line 637
    .line 638
    return-object v13

    .line 639
    :goto_12
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 640
    .line 641
    .line 642
    throw v0

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
