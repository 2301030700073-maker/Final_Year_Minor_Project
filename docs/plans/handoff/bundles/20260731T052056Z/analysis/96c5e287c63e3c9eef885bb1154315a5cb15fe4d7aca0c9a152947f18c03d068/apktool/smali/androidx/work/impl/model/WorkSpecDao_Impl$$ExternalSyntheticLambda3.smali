.class public final synthetic Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 13
    iput p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    iput p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 12
    iput p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V
    .locals 0

    .line 1
    const/4 p3, 0x6

    .line 2
    iput p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

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
    const-string v3, "status"

    .line 8
    .line 9
    const-string v4, "id"

    .line 10
    .line 11
    const/4 v7, 0x2

    .line 12
    const/4 v8, 0x1

    .line 13
    iget v9, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$1:I

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v2, "SELECT * FROM ReadingListPage WHERE lang = ? GROUP BY apiTitle ORDER BY atime DESC LIMIT ?"

    .line 28
    .line 29
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :try_start_0
    invoke-interface {v1, v8, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    int-to-long v9, v9

    .line 37
    invoke-interface {v1, v9, v10, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v0, "wiki"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-string v2, "namespace"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const-string v7, "displayTitle"

    .line 54
    .line 55
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const-string v9, "apiTitle"

    .line 60
    .line 61
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    const-string v10, "description"

    .line 66
    .line 67
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    const-string v11, "thumbUrl"

    .line 72
    .line 73
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    const-string v12, "listId"

    .line 78
    .line 79
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    const-string v13, "mtime"

    .line 88
    .line 89
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    const-string v14, "atime"

    .line 94
    .line 95
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    const-string v15, "offline"

    .line 100
    .line 101
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    const-string v6, "sizeBytes"

    .line 110
    .line 111
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    const-string v5, "lang"

    .line 116
    .line 117
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    const-string v8, "revId"

    .line 122
    .line 123
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    move/from16 p0, v8

    .line 128
    .line 129
    const-string v8, "remoteId"

    .line 130
    .line 131
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    move/from16 p1, v8

    .line 136
    .line 137
    new-instance v8, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 143
    .line 144
    .line 145
    move-result v18

    .line 146
    if-eqz v18, :cond_7

    .line 147
    .line 148
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 149
    .line 150
    .line 151
    move-result v18

    .line 152
    if-eqz v18, :cond_0

    .line 153
    .line 154
    const/16 v18, 0x0

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_0
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v18

    .line 161
    :goto_1
    invoke-static/range {v18 .. v18}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 162
    .line 163
    .line 164
    move-result-object v20

    .line 165
    if-eqz v20, :cond_6

    .line 166
    .line 167
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 168
    .line 169
    .line 170
    move-result v18

    .line 171
    if-eqz v18, :cond_1

    .line 172
    .line 173
    move/from16 v44, v5

    .line 174
    .line 175
    move/from16 v18, v6

    .line 176
    .line 177
    const/4 v5, 0x0

    .line 178
    goto :goto_2

    .line 179
    :cond_1
    move/from16 v44, v5

    .line 180
    .line 181
    move/from16 v18, v6

    .line 182
    .line 183
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 184
    .line 185
    .line 186
    move-result-wide v5

    .line 187
    long-to-int v5, v5

    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    :goto_2
    invoke-static {v5}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 193
    .line 194
    .line 195
    move-result-object v21

    .line 196
    if-eqz v21, :cond_5

    .line 197
    .line 198
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v22

    .line 202
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v23

    .line 206
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-eqz v5, :cond_2

    .line 211
    .line 212
    const/16 v24, 0x0

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_2
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    move-object/from16 v24, v5

    .line 220
    .line 221
    :goto_3
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-eqz v5, :cond_3

    .line 226
    .line 227
    const/16 v25, 0x0

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_3
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    move-object/from16 v25, v5

    .line 235
    .line 236
    :goto_4
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 237
    .line 238
    .line 239
    move-result-wide v26

    .line 240
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 241
    .line 242
    .line 243
    move-result-wide v28

    .line 244
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 245
    .line 246
    .line 247
    move-result-wide v30

    .line 248
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 249
    .line 250
    .line 251
    move-result-wide v32

    .line 252
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 253
    .line 254
    .line 255
    move-result-wide v5

    .line 256
    long-to-int v5, v5

    .line 257
    if-eqz v5, :cond_4

    .line 258
    .line 259
    const/16 v34, 0x1

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_4
    const/16 v34, 0x0

    .line 263
    .line 264
    :goto_5
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 265
    .line 266
    .line 267
    move-result-wide v35

    .line 268
    move/from16 v5, v18

    .line 269
    .line 270
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 271
    .line 272
    .line 273
    move-result-wide v37

    .line 274
    move/from16 v6, v44

    .line 275
    .line 276
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v39

    .line 280
    move/from16 v18, v0

    .line 281
    .line 282
    move/from16 v0, p0

    .line 283
    .line 284
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 285
    .line 286
    .line 287
    move-result-wide v40

    .line 288
    move/from16 p0, v0

    .line 289
    .line 290
    move/from16 v0, p1

    .line 291
    .line 292
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 293
    .line 294
    .line 295
    move-result-wide v42

    .line 296
    new-instance v19, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 297
    .line 298
    invoke-direct/range {v19 .. v43}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 299
    .line 300
    .line 301
    move/from16 p1, v0

    .line 302
    .line 303
    move-object/from16 v0, v19

    .line 304
    .line 305
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move v0, v6

    .line 309
    move v6, v5

    .line 310
    move v5, v0

    .line 311
    move/from16 v0, v18

    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :catchall_0
    move-exception v0

    .line 316
    goto :goto_6

    .line 317
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 318
    .line 319
    const-string v2, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 320
    .line 321
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v0

    .line 325
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 326
    .line 327
    const-string v2, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 328
    .line 329
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 334
    .line 335
    .line 336
    return-object v8

    .line 337
    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 338
    .line 339
    .line 340
    throw v0

    .line 341
    :pswitch_0
    move-object/from16 v1, p1

    .line 342
    .line 343
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    const-string v2, "SELECT * FROM DailyGameHistory WHERE gameName = ? AND language = ? AND status = 1 ORDER BY year DESC, month DESC, day DESC"

    .line 349
    .line 350
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    int-to-long v5, v9

    .line 355
    const/4 v2, 0x1

    .line 356
    :try_start_1
    invoke-interface {v1, v5, v6, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    const-string v2, "gameName"

    .line 367
    .line 368
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    const-string v4, "language"

    .line 373
    .line 374
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    const-string/jumbo v5, "year"

    .line 379
    .line 380
    .line 381
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    const-string v6, "month"

    .line 386
    .line 387
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    const-string v7, "day"

    .line 392
    .line 393
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    const-string v8, "score"

    .line 398
    .line 399
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    const-string v9, "playType"

    .line 404
    .line 405
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    const-string v10, "gameData"

    .line 410
    .line 411
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v10

    .line 415
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    const-string v11, "currentQuestionIndex"

    .line 420
    .line 421
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    move-result v11

    .line 425
    new-instance v12, Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .line 429
    .line 430
    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 431
    .line 432
    .line 433
    move-result v13

    .line 434
    if-eqz v13, :cond_9

    .line 435
    .line 436
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 437
    .line 438
    .line 439
    move-result-wide v13

    .line 440
    long-to-int v13, v13

    .line 441
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 442
    .line 443
    .line 444
    move-result-wide v14

    .line 445
    long-to-int v14, v14

    .line 446
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v19

    .line 450
    move/from16 v17, v13

    .line 451
    .line 452
    move/from16 v18, v14

    .line 453
    .line 454
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 455
    .line 456
    .line 457
    move-result-wide v13

    .line 458
    long-to-int v13, v13

    .line 459
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 460
    .line 461
    .line 462
    move-result-wide v14

    .line 463
    long-to-int v14, v14

    .line 464
    move/from16 p0, v4

    .line 465
    .line 466
    move/from16 p1, v5

    .line 467
    .line 468
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 469
    .line 470
    .line 471
    move-result-wide v4

    .line 472
    long-to-int v4, v4

    .line 473
    move/from16 v22, v4

    .line 474
    .line 475
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 476
    .line 477
    .line 478
    move-result-wide v4

    .line 479
    long-to-int v4, v4

    .line 480
    move/from16 v23, v4

    .line 481
    .line 482
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 483
    .line 484
    .line 485
    move-result-wide v4

    .line 486
    long-to-int v4, v4

    .line 487
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    if-eqz v5, :cond_8

    .line 492
    .line 493
    const/16 v25, 0x0

    .line 494
    .line 495
    :goto_8
    move/from16 v24, v4

    .line 496
    .line 497
    goto :goto_9

    .line 498
    :cond_8
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    move-object/from16 v25, v5

    .line 503
    .line 504
    goto :goto_8

    .line 505
    :goto_9
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 506
    .line 507
    .line 508
    move-result-wide v4

    .line 509
    long-to-int v4, v4

    .line 510
    move v5, v2

    .line 511
    move v15, v3

    .line 512
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 513
    .line 514
    .line 515
    move-result-wide v2

    .line 516
    long-to-int v2, v2

    .line 517
    new-instance v16, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 518
    .line 519
    move/from16 v27, v2

    .line 520
    .line 521
    move/from16 v26, v4

    .line 522
    .line 523
    move/from16 v20, v13

    .line 524
    .line 525
    move/from16 v21, v14

    .line 526
    .line 527
    invoke-direct/range {v16 .. v27}, Lorg/wikipedia/games/db/DailyGameHistory;-><init>(IILjava/lang/String;IIIIILjava/lang/String;II)V

    .line 528
    .line 529
    .line 530
    move-object/from16 v2, v16

    .line 531
    .line 532
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 533
    .line 534
    .line 535
    move/from16 v4, p0

    .line 536
    .line 537
    move v2, v5

    .line 538
    move v3, v15

    .line 539
    move/from16 v5, p1

    .line 540
    .line 541
    goto :goto_7

    .line 542
    :catchall_1
    move-exception v0

    .line 543
    goto :goto_a

    .line 544
    :cond_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 545
    .line 546
    .line 547
    return-object v12

    .line 548
    :goto_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 549
    .line 550
    .line 551
    throw v0

    .line 552
    :pswitch_1
    move-object/from16 v1, p1

    .line 553
    .line 554
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    const-string v2, "SELECT AVG(score) FROM DailyGameHistory WHERE gameName = ? AND language = ? AND status = 1"

    .line 560
    .line 561
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    int-to-long v2, v9

    .line 566
    const/4 v4, 0x1

    .line 567
    :try_start_2
    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 568
    .line 569
    .line 570
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-eqz v0, :cond_b

    .line 578
    .line 579
    const/4 v0, 0x0

    .line 580
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    if-eqz v2, :cond_a

    .line 585
    .line 586
    goto :goto_b

    .line 587
    :cond_a
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    .line 588
    .line 589
    .line 590
    move-result-wide v2

    .line 591
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 592
    .line 593
    .line 594
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 595
    goto :goto_c

    .line 596
    :catchall_2
    move-exception v0

    .line 597
    goto :goto_d

    .line 598
    :cond_b
    :goto_b
    const/4 v6, 0x0

    .line 599
    :goto_c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 600
    .line 601
    .line 602
    return-object v6

    .line 603
    :goto_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 604
    .line 605
    .line 606
    throw v0

    .line 607
    :pswitch_2
    move-object/from16 v1, p1

    .line 608
    .line 609
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 610
    .line 611
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    const-string v2, "SELECT COUNT(*) FROM DailyGameHistory WHERE gameName = ? AND language = ? AND status = 1"

    .line 615
    .line 616
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    int-to-long v2, v9

    .line 621
    const/4 v4, 0x1

    .line 622
    :try_start_3
    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 623
    .line 624
    .line 625
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 629
    .line 630
    .line 631
    move-result v0

    .line 632
    if-eqz v0, :cond_c

    .line 633
    .line 634
    const/4 v0, 0x0

    .line 635
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 636
    .line 637
    .line 638
    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 639
    long-to-int v5, v2

    .line 640
    goto :goto_e

    .line 641
    :catchall_3
    move-exception v0

    .line 642
    goto :goto_f

    .line 643
    :cond_c
    const/4 v0, 0x0

    .line 644
    move v5, v0

    .line 645
    :goto_e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 646
    .line 647
    .line 648
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    return-object v0

    .line 653
    :goto_f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 654
    .line 655
    .line 656
    throw v0

    .line 657
    :pswitch_3
    move-object/from16 v1, p1

    .line 658
    .line 659
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 660
    .line 661
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    .line 663
    .line 664
    const-string v3, "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)"

    .line 665
    .line 666
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    const/4 v4, 0x1

    .line 671
    :try_start_4
    invoke-interface {v1, v4, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 672
    .line 673
    .line 674
    int-to-long v3, v9

    .line 675
    invoke-interface {v1, v3, v4, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 676
    .line 677
    .line 678
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 679
    .line 680
    .line 681
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 682
    .line 683
    .line 684
    return-object v2

    .line 685
    :catchall_4
    move-exception v0

    .line 686
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 687
    .line 688
    .line 689
    throw v0

    .line 690
    :pswitch_4
    move-object/from16 v1, p1

    .line 691
    .line 692
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 693
    .line 694
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 695
    .line 696
    .line 697
    const-string v2, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    .line 698
    .line 699
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    const/4 v4, 0x1

    .line 704
    :try_start_5
    invoke-interface {v1, v4, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 705
    .line 706
    .line 707
    int-to-long v2, v9

    .line 708
    invoke-interface {v1, v2, v3, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 709
    .line 710
    .line 711
    const-string/jumbo v0, "work_spec_id"

    .line 712
    .line 713
    .line 714
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    const-string v2, "generation"

    .line 719
    .line 720
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    move-result v2

    .line 724
    const-string v3, "system_id"

    .line 725
    .line 726
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 731
    .line 732
    .line 733
    move-result v4

    .line 734
    if-eqz v4, :cond_d

    .line 735
    .line 736
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 741
    .line 742
    .line 743
    move-result-wide v4

    .line 744
    long-to-int v2, v4

    .line 745
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 746
    .line 747
    .line 748
    move-result-wide v3

    .line 749
    long-to-int v3, v3

    .line 750
    new-instance v6, Landroidx/work/impl/model/SystemIdInfo;

    .line 751
    .line 752
    invoke-direct {v6, v0, v2, v3}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 753
    .line 754
    .line 755
    goto :goto_10

    .line 756
    :catchall_5
    move-exception v0

    .line 757
    goto :goto_11

    .line 758
    :cond_d
    const/4 v6, 0x0

    .line 759
    :goto_10
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 760
    .line 761
    .line 762
    return-object v6

    .line 763
    :goto_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 764
    .line 765
    .line 766
    throw v0

    .line 767
    :pswitch_5
    move-object/from16 v1, p1

    .line 768
    .line 769
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    .line 773
    .line 774
    const-string v3, "UPDATE workspec SET stop_reason=? WHERE id=?"

    .line 775
    .line 776
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    int-to-long v3, v9

    .line 781
    const/4 v5, 0x1

    .line 782
    :try_start_6
    invoke-interface {v1, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 783
    .line 784
    .line 785
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 786
    .line 787
    .line 788
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 789
    .line 790
    .line 791
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 792
    .line 793
    .line 794
    return-object v2

    .line 795
    :catchall_6
    move-exception v0

    .line 796
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 797
    .line 798
    .line 799
    throw v0

    .line 800
    nop

    .line 801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
