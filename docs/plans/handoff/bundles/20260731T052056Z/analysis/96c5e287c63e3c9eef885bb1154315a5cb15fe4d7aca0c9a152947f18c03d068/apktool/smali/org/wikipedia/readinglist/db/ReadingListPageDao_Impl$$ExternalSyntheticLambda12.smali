.class public final synthetic Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$2:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lorg/wikipedia/page/Namespace;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p6, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;->f$3:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;->f$4:Lorg/wikipedia/page/Namespace;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;->f$5:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "atime"

    .line 6
    .line 7
    const-string v3, "mtime"

    .line 8
    .line 9
    const-string v4, "id"

    .line 10
    .line 11
    const-string v5, "listId"

    .line 12
    .line 13
    const-string v6, "thumbUrl"

    .line 14
    .line 15
    const-string v7, "description"

    .line 16
    .line 17
    const-string v8, "apiTitle"

    .line 18
    .line 19
    const-string v9, "displayTitle"

    .line 20
    .line 21
    const-string v10, "namespace"

    .line 22
    .line 23
    const-string/jumbo v11, "wiki"

    .line 24
    .line 25
    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    iget-object v13, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;->f$5:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v14, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;->f$4:Lorg/wikipedia/page/Namespace;

    .line 31
    .line 32
    iget-object v15, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;->f$3:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 35
    .line 36
    const-string v12, "SELECT * FROM ReadingListPage WHERE wiki = ? AND lang = ? AND namespace = ? AND apiTitle = ? AND status != ?"

    .line 37
    .line 38
    packed-switch v1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :try_start_0
    invoke-static {v0}, Lorg/wikipedia/login/LoginClient;->wikiSiteToString(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    const/4 v12, 0x1

    .line 59
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    const/4 v0, 0x2

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object/from16 v17, v1

    .line 66
    .line 67
    goto/16 :goto_a

    .line 68
    .line 69
    :cond_0
    const/4 v12, 0x1

    .line 70
    invoke-interface {v1, v12, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :goto_1
    invoke-interface {v1, v0, v15}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v14}, Lokio/ByteString$Companion;->namespaceToInt(Lorg/wikipedia/page/Namespace;)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    const/4 v12, 0x3

    .line 84
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 85
    .line 86
    .line 87
    :goto_2
    const/4 v0, 0x4

    .line 88
    goto :goto_3

    .line 89
    :cond_1
    const/4 v12, 0x3

    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    int-to-long v14, v0

    .line 95
    invoke-interface {v1, v14, v15, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_3
    invoke-interface {v1, v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x5

    .line 103
    const-wide/16 v12, 0x2

    .line 104
    .line 105
    invoke-interface {v1, v12, v13, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const-string v11, "offline"

    .line 149
    .line 150
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    const-string v12, "status"

    .line 155
    .line 156
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    const-string v13, "sizeBytes"

    .line 161
    .line 162
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    const-string v14, "lang"

    .line 167
    .line 168
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    const-string v15, "revId"

    .line 173
    .line 174
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    move/from16 p0, v15

    .line 179
    .line 180
    const-string v15, "remoteId"

    .line 181
    .line 182
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    move/from16 p1, v15

    .line 187
    .line 188
    new-instance v15, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    :goto_4
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 194
    .line 195
    .line 196
    move-result v17

    .line 197
    if-eqz v17, :cond_9

    .line 198
    .line 199
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 200
    .line 201
    .line 202
    move-result v17

    .line 203
    if-eqz v17, :cond_2

    .line 204
    .line 205
    move-object/from16 v17, v16

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_2
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v17

    .line 212
    :goto_5
    invoke-static/range {v17 .. v17}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 213
    .line 214
    .line 215
    move-result-object v20

    .line 216
    if-eqz v20, :cond_8

    .line 217
    .line 218
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 219
    .line 220
    .line 221
    move-result v17

    .line 222
    if-eqz v17, :cond_3

    .line 223
    .line 224
    move/from16 v17, v14

    .line 225
    .line 226
    move-object/from16 v18, v15

    .line 227
    .line 228
    move-object/from16 v14, v16

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_3
    move/from16 v17, v14

    .line 232
    .line 233
    move-object/from16 v18, v15

    .line 234
    .line 235
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 236
    .line 237
    .line 238
    move-result-wide v14

    .line 239
    long-to-int v14, v14

    .line 240
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v14

    .line 244
    :goto_6
    invoke-static {v14}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 245
    .line 246
    .line 247
    move-result-object v21

    .line 248
    if-eqz v21, :cond_7

    .line 249
    .line 250
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v22

    .line 254
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v23

    .line 258
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 259
    .line 260
    .line 261
    move-result v14

    .line 262
    if-eqz v14, :cond_4

    .line 263
    .line 264
    move-object/from16 v24, v16

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v14

    .line 271
    move-object/from16 v24, v14

    .line 272
    .line 273
    :goto_7
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    if-eqz v14, :cond_5

    .line 278
    .line 279
    move-object/from16 v25, v16

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_5
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    move-object/from16 v25, v14

    .line 287
    .line 288
    :goto_8
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 289
    .line 290
    .line 291
    move-result-wide v26

    .line 292
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 293
    .line 294
    .line 295
    move-result-wide v28

    .line 296
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 297
    .line 298
    .line 299
    move-result-wide v30

    .line 300
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 301
    .line 302
    .line 303
    move-result-wide v32

    .line 304
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 305
    .line 306
    .line 307
    move-result-wide v14

    .line 308
    long-to-int v14, v14

    .line 309
    if-eqz v14, :cond_6

    .line 310
    .line 311
    const/16 v34, 0x1

    .line 312
    .line 313
    goto :goto_9

    .line 314
    :cond_6
    const/4 v14, 0x0

    .line 315
    move/from16 v34, v14

    .line 316
    .line 317
    :goto_9
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v35

    .line 321
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 322
    .line 323
    .line 324
    move-result-wide v37

    .line 325
    move/from16 v14, v17

    .line 326
    .line 327
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v39

    .line 331
    move/from16 v15, p0

    .line 332
    .line 333
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 334
    .line 335
    .line 336
    move-result-wide v40

    .line 337
    move/from16 p0, v0

    .line 338
    .line 339
    move/from16 v0, p1

    .line 340
    .line 341
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 342
    .line 343
    .line 344
    move-result-wide v42

    .line 345
    new-instance v19, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 346
    .line 347
    invoke-direct/range {v19 .. v43}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .line 349
    .line 350
    move/from16 p1, v0

    .line 351
    .line 352
    move-object/from16 v0, v19

    .line 353
    .line 354
    move-object/from16 v17, v1

    .line 355
    .line 356
    move-object/from16 v1, v18

    .line 357
    .line 358
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move/from16 v0, p0

    .line 362
    .line 363
    move/from16 p0, v15

    .line 364
    .line 365
    move-object v15, v1

    .line 366
    move-object/from16 v1, v17

    .line 367
    .line 368
    goto/16 :goto_4

    .line 369
    .line 370
    :catchall_1
    move-exception v0

    .line 371
    goto :goto_a

    .line 372
    :cond_7
    move-object/from16 v17, v1

    .line 373
    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 375
    .line 376
    const-string v1, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 377
    .line 378
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v0

    .line 382
    :cond_8
    move-object/from16 v17, v1

    .line 383
    .line 384
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 385
    .line 386
    const-string v1, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 387
    .line 388
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 392
    :cond_9
    move-object/from16 v17, v1

    .line 393
    .line 394
    move-object v1, v15

    .line 395
    invoke-interface/range {v17 .. v17}, Ljava/lang/AutoCloseable;->close()V

    .line 396
    .line 397
    .line 398
    return-object v1

    .line 399
    :goto_a
    invoke-interface/range {v17 .. v17}, Ljava/lang/AutoCloseable;->close()V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :pswitch_0
    move-object/from16 v1, p1

    .line 404
    .line 405
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    :try_start_2
    invoke-static {v0}, Lorg/wikipedia/login/LoginClient;->wikiSiteToString(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    if-nez v0, :cond_a

    .line 419
    .line 420
    const/4 v12, 0x1

    .line 421
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 422
    .line 423
    .line 424
    :goto_b
    const/4 v0, 0x2

    .line 425
    goto :goto_c

    .line 426
    :catchall_2
    move-exception v0

    .line 427
    goto/16 :goto_16

    .line 428
    .line 429
    :cond_a
    const/4 v12, 0x1

    .line 430
    invoke-interface {v1, v12, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_b

    .line 434
    :goto_c
    invoke-interface {v1, v0, v15}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-static {v14}, Lokio/ByteString$Companion;->namespaceToInt(Lorg/wikipedia/page/Namespace;)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    if-nez v0, :cond_b

    .line 442
    .line 443
    const/4 v14, 0x3

    .line 444
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 445
    .line 446
    .line 447
    move-object v15, v13

    .line 448
    :goto_d
    const/4 v0, 0x4

    .line 449
    goto :goto_e

    .line 450
    :cond_b
    const/4 v14, 0x3

    .line 451
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    move-object v15, v13

    .line 456
    int-to-long v12, v0

    .line 457
    invoke-interface {v1, v12, v13, v14}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 458
    .line 459
    .line 460
    goto :goto_d

    .line 461
    :goto_e
    invoke-interface {v1, v0, v15}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 462
    .line 463
    .line 464
    const/4 v0, 0x5

    .line 465
    const-wide/16 v12, 0x2

    .line 466
    .line 467
    invoke-interface {v1, v12, v13, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 468
    .line 469
    .line 470
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    move-result v10

    .line 478
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    move-result v8

    .line 486
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    move-result v7

    .line 490
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    const-string v11, "offline"

    .line 511
    .line 512
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    move-result v11

    .line 516
    const-string v12, "status"

    .line 517
    .line 518
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    move-result v12

    .line 522
    const-string v13, "sizeBytes"

    .line 523
    .line 524
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    move-result v13

    .line 528
    const-string v14, "lang"

    .line 529
    .line 530
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v14

    .line 534
    const-string v15, "revId"

    .line 535
    .line 536
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    move-result v15

    .line 540
    move/from16 p0, v15

    .line 541
    .line 542
    const-string v15, "remoteId"

    .line 543
    .line 544
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 545
    .line 546
    .line 547
    move-result v15

    .line 548
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 549
    .line 550
    .line 551
    move-result v17

    .line 552
    if-eqz v17, :cond_13

    .line 553
    .line 554
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 555
    .line 556
    .line 557
    move-result v17

    .line 558
    if-eqz v17, :cond_c

    .line 559
    .line 560
    move-object/from16 v0, v16

    .line 561
    .line 562
    goto :goto_f

    .line 563
    :cond_c
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    :goto_f
    invoke-static {v0}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 568
    .line 569
    .line 570
    move-result-object v20

    .line 571
    if-eqz v20, :cond_12

    .line 572
    .line 573
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-eqz v0, :cond_d

    .line 578
    .line 579
    move/from16 p1, v14

    .line 580
    .line 581
    move v0, v15

    .line 582
    move-object/from16 v10, v16

    .line 583
    .line 584
    goto :goto_10

    .line 585
    :cond_d
    move/from16 p1, v14

    .line 586
    .line 587
    move v0, v15

    .line 588
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 589
    .line 590
    .line 591
    move-result-wide v14

    .line 592
    long-to-int v10, v14

    .line 593
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 594
    .line 595
    .line 596
    move-result-object v10

    .line 597
    :goto_10
    invoke-static {v10}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 598
    .line 599
    .line 600
    move-result-object v21

    .line 601
    if-eqz v21, :cond_11

    .line 602
    .line 603
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v22

    .line 607
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v23

    .line 611
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 612
    .line 613
    .line 614
    move-result v8

    .line 615
    if-eqz v8, :cond_e

    .line 616
    .line 617
    move-object/from16 v24, v16

    .line 618
    .line 619
    goto :goto_11

    .line 620
    :cond_e
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    move-object/from16 v24, v7

    .line 625
    .line 626
    :goto_11
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 627
    .line 628
    .line 629
    move-result v7

    .line 630
    if-eqz v7, :cond_f

    .line 631
    .line 632
    :goto_12
    move-object/from16 v25, v16

    .line 633
    .line 634
    goto :goto_13

    .line 635
    :cond_f
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v16

    .line 639
    goto :goto_12

    .line 640
    :goto_13
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 641
    .line 642
    .line 643
    move-result-wide v26

    .line 644
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 645
    .line 646
    .line 647
    move-result-wide v28

    .line 648
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 649
    .line 650
    .line 651
    move-result-wide v30

    .line 652
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 653
    .line 654
    .line 655
    move-result-wide v32

    .line 656
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 657
    .line 658
    .line 659
    move-result-wide v2

    .line 660
    long-to-int v2, v2

    .line 661
    if-eqz v2, :cond_10

    .line 662
    .line 663
    const/16 v34, 0x1

    .line 664
    .line 665
    goto :goto_14

    .line 666
    :cond_10
    const/4 v2, 0x0

    .line 667
    move/from16 v34, v2

    .line 668
    .line 669
    :goto_14
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 670
    .line 671
    .line 672
    move-result-wide v35

    .line 673
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 674
    .line 675
    .line 676
    move-result-wide v37

    .line 677
    move/from16 v2, p1

    .line 678
    .line 679
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v39

    .line 683
    move/from16 v2, p0

    .line 684
    .line 685
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 686
    .line 687
    .line 688
    move-result-wide v40

    .line 689
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 690
    .line 691
    .line 692
    move-result-wide v42

    .line 693
    new-instance v19, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 694
    .line 695
    invoke-direct/range {v19 .. v43}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 696
    .line 697
    .line 698
    move-object/from16 v16, v19

    .line 699
    .line 700
    goto :goto_15

    .line 701
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 702
    .line 703
    const-string v2, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 704
    .line 705
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw v0

    .line 709
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 710
    .line 711
    const-string v2, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 712
    .line 713
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 717
    :cond_13
    :goto_15
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 718
    .line 719
    .line 720
    return-object v16

    .line 721
    :goto_16
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 722
    .line 723
    .line 724
    throw v0

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
