.class public final synthetic Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 11
    iput p2, p0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p2, p0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p2, p0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;->f$0:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 84

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "lang"

    .line 6
    .line 7
    const-string v3, "apiTitle"

    .line 8
    .line 9
    const-string v4, "displayTitle"

    .line 10
    .line 11
    const-string v5, "namespace"

    .line 12
    .line 13
    const-string v7, "id"

    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    iget v0, v0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;->f$0:I

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v10, "SELECT * FROM ReadingListPage ORDER BY RANDOM() DESC LIMIT ?"

    .line 29
    .line 30
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    int-to-long v10, v0

    .line 35
    :try_start_0
    invoke-interface {v1, v10, v11, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "wiki"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const-string v10, "description"

    .line 58
    .line 59
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "thumbUrl"

    .line 64
    .line 65
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "listId"

    .line 70
    .line 71
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const-string v13, "mtime"

    .line 80
    .line 81
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    const-string v14, "atime"

    .line 86
    .line 87
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    const-string v15, "offline"

    .line 92
    .line 93
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v15

    .line 97
    const-string v6, "status"

    .line 98
    .line 99
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    const-string v8, "sizeBytes"

    .line 104
    .line 105
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const-string v9, "revId"

    .line 114
    .line 115
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    move/from16 p0, v9

    .line 120
    .line 121
    const-string v9, "remoteId"

    .line 122
    .line 123
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    move/from16 p1, v9

    .line 128
    .line 129
    new-instance v9, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 135
    .line 136
    .line 137
    move-result v17

    .line 138
    if-eqz v17, :cond_7

    .line 139
    .line 140
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 141
    .line 142
    .line 143
    move-result v17

    .line 144
    if-eqz v17, :cond_0

    .line 145
    .line 146
    const/16 v17, 0x0

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_0
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v17

    .line 153
    :goto_1
    invoke-static/range {v17 .. v17}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 154
    .line 155
    .line 156
    move-result-object v19

    .line 157
    if-eqz v19, :cond_6

    .line 158
    .line 159
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 160
    .line 161
    .line 162
    move-result v17

    .line 163
    if-eqz v17, :cond_1

    .line 164
    .line 165
    move/from16 v17, v8

    .line 166
    .line 167
    move-object/from16 v43, v9

    .line 168
    .line 169
    const/4 v8, 0x0

    .line 170
    goto :goto_2

    .line 171
    :cond_1
    move/from16 v17, v8

    .line 172
    .line 173
    move-object/from16 v43, v9

    .line 174
    .line 175
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 176
    .line 177
    .line 178
    move-result-wide v8

    .line 179
    long-to-int v8, v8

    .line 180
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    :goto_2
    invoke-static {v8}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 185
    .line 186
    .line 187
    move-result-object v20

    .line 188
    if-eqz v20, :cond_5

    .line 189
    .line 190
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v21

    .line 194
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v22

    .line 198
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-eqz v8, :cond_2

    .line 203
    .line 204
    const/16 v23, 0x0

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_2
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    move-object/from16 v23, v8

    .line 212
    .line 213
    :goto_3
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-eqz v8, :cond_3

    .line 218
    .line 219
    const/16 v24, 0x0

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_3
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    move-object/from16 v24, v8

    .line 227
    .line 228
    :goto_4
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 229
    .line 230
    .line 231
    move-result-wide v25

    .line 232
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 233
    .line 234
    .line 235
    move-result-wide v27

    .line 236
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 237
    .line 238
    .line 239
    move-result-wide v29

    .line 240
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 241
    .line 242
    .line 243
    move-result-wide v31

    .line 244
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 245
    .line 246
    .line 247
    move-result-wide v8

    .line 248
    long-to-int v8, v8

    .line 249
    if-eqz v8, :cond_4

    .line 250
    .line 251
    const/16 v33, 0x1

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_4
    const/16 v33, 0x0

    .line 255
    .line 256
    :goto_5
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 257
    .line 258
    .line 259
    move-result-wide v34

    .line 260
    move/from16 v8, v17

    .line 261
    .line 262
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 263
    .line 264
    .line 265
    move-result-wide v36

    .line 266
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v38

    .line 270
    move/from16 v9, p0

    .line 271
    .line 272
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 273
    .line 274
    .line 275
    move-result-wide v39

    .line 276
    move/from16 p0, v0

    .line 277
    .line 278
    move/from16 v0, p1

    .line 279
    .line 280
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 281
    .line 282
    .line 283
    move-result-wide v41

    .line 284
    new-instance v18, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 285
    .line 286
    invoke-direct/range {v18 .. v42}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    .line 288
    .line 289
    move/from16 p1, v0

    .line 290
    .line 291
    move-object/from16 v0, v18

    .line 292
    .line 293
    move-object/from16 v17, v1

    .line 294
    .line 295
    move-object/from16 v1, v43

    .line 296
    .line 297
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move/from16 v0, p0

    .line 301
    .line 302
    move/from16 p0, v9

    .line 303
    .line 304
    move-object v9, v1

    .line 305
    move-object/from16 v1, v17

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :catchall_0
    move-exception v0

    .line 310
    goto :goto_6

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    move-object/from16 v17, v1

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_5
    move-object/from16 v17, v1

    .line 316
    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 318
    .line 319
    const-string v1, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 320
    .line 321
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v0

    .line 325
    :cond_6
    move-object/from16 v17, v1

    .line 326
    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 328
    .line 329
    const-string v1, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 330
    .line 331
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :cond_7
    move-object/from16 v17, v1

    .line 336
    .line 337
    move-object v1, v9

    .line 338
    invoke-interface/range {v17 .. v17}, Ljava/lang/AutoCloseable;->close()V

    .line 339
    .line 340
    .line 341
    return-object v1

    .line 342
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/lang/AutoCloseable;->close()V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    :pswitch_0
    move-object/from16 v1, p1

    .line 347
    .line 348
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    const-string v6, "SELECT * FROM HistoryEntry ORDER BY RANDOM() DESC LIMIT ?"

    .line 354
    .line 355
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    int-to-long v8, v0

    .line 360
    const/4 v0, 0x1

    .line 361
    :try_start_2
    invoke-interface {v1, v8, v9, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 362
    .line 363
    .line 364
    const-string v0, "authority"

    .line 365
    .line 366
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    const-string v7, "timestamp"

    .line 391
    .line 392
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    const-string v8, "source"

    .line 397
    .line 398
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    const-string v9, "prevId"

    .line 403
    .line 404
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    move-result v9

    .line 408
    new-instance v10, Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .line 412
    .line 413
    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 414
    .line 415
    .line 416
    move-result v11

    .line 417
    if-eqz v11, :cond_a

    .line 418
    .line 419
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v17

    .line 423
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v18

    .line 427
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v19

    .line 431
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v20

    .line 435
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 436
    .line 437
    .line 438
    move-result-wide v21

    .line 439
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v23

    .line 443
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 444
    .line 445
    .line 446
    move-result v11

    .line 447
    if-eqz v11, :cond_8

    .line 448
    .line 449
    const/4 v11, 0x0

    .line 450
    goto :goto_8

    .line 451
    :cond_8
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 452
    .line 453
    .line 454
    move-result-wide v11

    .line 455
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    :goto_8
    invoke-static {v11}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 460
    .line 461
    .line 462
    move-result-object v24

    .line 463
    if-eqz v24, :cond_9

    .line 464
    .line 465
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 466
    .line 467
    .line 468
    move-result-wide v11

    .line 469
    long-to-int v11, v11

    .line 470
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 471
    .line 472
    .line 473
    move-result-wide v26

    .line 474
    new-instance v16, Lorg/wikipedia/history/HistoryEntry;

    .line 475
    .line 476
    move/from16 v25, v11

    .line 477
    .line 478
    invoke-direct/range {v16 .. v27}, Lorg/wikipedia/history/HistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;IJ)V

    .line 479
    .line 480
    .line 481
    move-object/from16 v11, v16

    .line 482
    .line 483
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    goto :goto_7

    .line 487
    :catchall_2
    move-exception v0

    .line 488
    goto :goto_9

    .line 489
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 490
    .line 491
    const-string v2, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    .line 492
    .line 493
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 497
    :cond_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 498
    .line 499
    .line 500
    return-object v10

    .line 501
    :goto_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 502
    .line 503
    .line 504
    throw v0

    .line 505
    :pswitch_1
    move-object/from16 v1, p1

    .line 506
    .line 507
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 508
    .line 509
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    const-string v2, "DELETE FROM Category WHERE rowid IN (SELECT rowid FROM Category WHERE year < ?)"

    .line 513
    .line 514
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    int-to-long v3, v0

    .line 519
    const/4 v0, 0x1

    .line 520
    :try_start_3
    invoke-interface {v2, v3, v4, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 524
    .line 525
    .line 526
    invoke-static {v1}, Lkotlin/TuplesKt;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 527
    .line 528
    .line 529
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 530
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 531
    .line 532
    .line 533
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    return-object v0

    .line 538
    :catchall_3
    move-exception v0

    .line 539
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 540
    .line 541
    .line 542
    throw v0

    .line 543
    :pswitch_2
    move-object/from16 v1, p1

    .line 544
    .line 545
    check-cast v1, Ljava/lang/Integer;

    .line 546
    .line 547
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 548
    .line 549
    .line 550
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 551
    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    const-string v3, "Collection doesn\'t contain element at index "

    .line 555
    .line 556
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const/16 v0, 0x2e

    .line 563
    .line 564
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    throw v1

    .line 575
    :pswitch_3
    move-object/from16 v1, p1

    .line 576
    .line 577
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 578
    .line 579
    iget-object v1, v1, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 580
    .line 581
    invoke-static {v1, v0}, Lcoil3/util/ContextsKt;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-static {v0}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    return-object v0

    .line 590
    :pswitch_4
    move-object/from16 v1, p1

    .line 591
    .line 592
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 593
    .line 594
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    .line 596
    .line 597
    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    .line 598
    .line 599
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    int-to-long v2, v0

    .line 604
    const/4 v0, 0x1

    .line 605
    :try_start_4
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 606
    .line 607
    .line 608
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    const-string v3, "state"

    .line 613
    .line 614
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    const-string/jumbo v4, "worker_class_name"

    .line 619
    .line 620
    .line 621
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    const-string v5, "input_merger_class_name"

    .line 626
    .line 627
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    move-result v5

    .line 631
    const-string v6, "input"

    .line 632
    .line 633
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    move-result v6

    .line 637
    const-string v7, "output"

    .line 638
    .line 639
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    move-result v7

    .line 643
    const-string v8, "initial_delay"

    .line 644
    .line 645
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    move-result v8

    .line 649
    const-string v9, "interval_duration"

    .line 650
    .line 651
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 652
    .line 653
    .line 654
    move-result v9

    .line 655
    const-string v10, "flex_duration"

    .line 656
    .line 657
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 658
    .line 659
    .line 660
    move-result v10

    .line 661
    const-string v11, "run_attempt_count"

    .line 662
    .line 663
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 664
    .line 665
    .line 666
    move-result v11

    .line 667
    const-string v12, "backoff_policy"

    .line 668
    .line 669
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    move-result v12

    .line 673
    const-string v13, "backoff_delay_duration"

    .line 674
    .line 675
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 676
    .line 677
    .line 678
    move-result v13

    .line 679
    const-string v14, "last_enqueue_time"

    .line 680
    .line 681
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 682
    .line 683
    .line 684
    move-result v14

    .line 685
    const-string v15, "minimum_retention_duration"

    .line 686
    .line 687
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 688
    .line 689
    .line 690
    move-result v15

    .line 691
    const-string v0, "schedule_requested_at"

    .line 692
    .line 693
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    move/from16 p0, v0

    .line 698
    .line 699
    const-string v0, "run_in_foreground"

    .line 700
    .line 701
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    move/from16 p1, v0

    .line 706
    .line 707
    const-string v0, "out_of_quota_policy"

    .line 708
    .line 709
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    move/from16 v17, v0

    .line 714
    .line 715
    const-string v0, "period_count"

    .line 716
    .line 717
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    move/from16 v18, v0

    .line 722
    .line 723
    const-string v0, "generation"

    .line 724
    .line 725
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    move/from16 v19, v0

    .line 730
    .line 731
    const-string v0, "next_schedule_time_override"

    .line 732
    .line 733
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    move/from16 v20, v0

    .line 738
    .line 739
    const-string v0, "next_schedule_time_override_generation"

    .line 740
    .line 741
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    move/from16 v21, v0

    .line 746
    .line 747
    const-string v0, "stop_reason"

    .line 748
    .line 749
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    move/from16 v22, v0

    .line 754
    .line 755
    const-string/jumbo v0, "trace_tag"

    .line 756
    .line 757
    .line 758
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 759
    .line 760
    .line 761
    move-result v0

    .line 762
    move/from16 v23, v0

    .line 763
    .line 764
    const-string v0, "backoff_on_system_interruptions"

    .line 765
    .line 766
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    move/from16 v24, v0

    .line 771
    .line 772
    const-string v0, "required_network_type"

    .line 773
    .line 774
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 775
    .line 776
    .line 777
    move-result v0

    .line 778
    move/from16 v25, v0

    .line 779
    .line 780
    const-string v0, "required_network_request"

    .line 781
    .line 782
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    move/from16 v26, v0

    .line 787
    .line 788
    const-string v0, "requires_charging"

    .line 789
    .line 790
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    move/from16 v27, v0

    .line 795
    .line 796
    const-string v0, "requires_device_idle"

    .line 797
    .line 798
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 799
    .line 800
    .line 801
    move-result v0

    .line 802
    move/from16 v28, v0

    .line 803
    .line 804
    const-string v0, "requires_battery_not_low"

    .line 805
    .line 806
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 807
    .line 808
    .line 809
    move-result v0

    .line 810
    move/from16 v29, v0

    .line 811
    .line 812
    const-string v0, "requires_storage_not_low"

    .line 813
    .line 814
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    move/from16 v30, v0

    .line 819
    .line 820
    const-string/jumbo v0, "trigger_content_update_delay"

    .line 821
    .line 822
    .line 823
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    move/from16 v31, v0

    .line 828
    .line 829
    const-string/jumbo v0, "trigger_max_content_delay"

    .line 830
    .line 831
    .line 832
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 833
    .line 834
    .line 835
    move-result v0

    .line 836
    move/from16 v32, v0

    .line 837
    .line 838
    const-string v0, "content_uri_triggers"

    .line 839
    .line 840
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    move/from16 v33, v0

    .line 845
    .line 846
    new-instance v0, Ljava/util/ArrayList;

    .line 847
    .line 848
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .line 850
    .line 851
    :goto_a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 852
    .line 853
    .line 854
    move-result v34

    .line 855
    if-eqz v34, :cond_14

    .line 856
    .line 857
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v36

    .line 861
    move/from16 v34, v14

    .line 862
    .line 863
    move/from16 v69, v15

    .line 864
    .line 865
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 866
    .line 867
    .line 868
    move-result-wide v14

    .line 869
    long-to-int v14, v14

    .line 870
    invoke-static {v14}, Lkotlin/TuplesKt;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 871
    .line 872
    .line 873
    move-result-object v37

    .line 874
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v38

    .line 878
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v39

    .line 882
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 883
    .line 884
    .line 885
    move-result-object v14

    .line 886
    sget-object v15, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 887
    .line 888
    invoke-static {v14}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 889
    .line 890
    .line 891
    move-result-object v40

    .line 892
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 893
    .line 894
    .line 895
    move-result-object v14

    .line 896
    invoke-static {v14}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 897
    .line 898
    .line 899
    move-result-object v41

    .line 900
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 901
    .line 902
    .line 903
    move-result-wide v42

    .line 904
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 905
    .line 906
    .line 907
    move-result-wide v44

    .line 908
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 909
    .line 910
    .line 911
    move-result-wide v46

    .line 912
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 913
    .line 914
    .line 915
    move-result-wide v14

    .line 916
    long-to-int v14, v14

    .line 917
    move v15, v2

    .line 918
    move/from16 v70, v3

    .line 919
    .line 920
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 921
    .line 922
    .line 923
    move-result-wide v2

    .line 924
    long-to-int v2, v2

    .line 925
    invoke-static {v2}, Lkotlin/TuplesKt;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 926
    .line 927
    .line 928
    move-result-object v50

    .line 929
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 930
    .line 931
    .line 932
    move-result-wide v51

    .line 933
    move/from16 v2, v34

    .line 934
    .line 935
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 936
    .line 937
    .line 938
    move-result-wide v53

    .line 939
    move/from16 v3, v69

    .line 940
    .line 941
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 942
    .line 943
    .line 944
    move-result-wide v55

    .line 945
    move/from16 v34, v2

    .line 946
    .line 947
    move/from16 v2, p0

    .line 948
    .line 949
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 950
    .line 951
    .line 952
    move-result-wide v57

    .line 953
    move/from16 p0, v2

    .line 954
    .line 955
    move/from16 v69, v3

    .line 956
    .line 957
    move/from16 v2, p1

    .line 958
    .line 959
    move/from16 p1, v4

    .line 960
    .line 961
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 962
    .line 963
    .line 964
    move-result-wide v3

    .line 965
    long-to-int v3, v3

    .line 966
    if-eqz v3, :cond_b

    .line 967
    .line 968
    const/16 v59, 0x1

    .line 969
    .line 970
    :goto_b
    move/from16 v3, v17

    .line 971
    .line 972
    move/from16 v17, v5

    .line 973
    .line 974
    goto :goto_c

    .line 975
    :cond_b
    const/16 v59, 0x0

    .line 976
    .line 977
    goto :goto_b

    .line 978
    :goto_c
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 979
    .line 980
    .line 981
    move-result-wide v4

    .line 982
    long-to-int v4, v4

    .line 983
    invoke-static {v4}, Lkotlin/TuplesKt;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 984
    .line 985
    .line 986
    move-result-object v60

    .line 987
    move v5, v2

    .line 988
    move/from16 v4, v18

    .line 989
    .line 990
    move/from16 v18, v3

    .line 991
    .line 992
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 993
    .line 994
    .line 995
    move-result-wide v2

    .line 996
    long-to-int v2, v2

    .line 997
    move/from16 v71, v5

    .line 998
    .line 999
    move/from16 v3, v19

    .line 1000
    .line 1001
    move/from16 v19, v4

    .line 1002
    .line 1003
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1004
    .line 1005
    .line 1006
    move-result-wide v4

    .line 1007
    long-to-int v4, v4

    .line 1008
    move/from16 v5, v20

    .line 1009
    .line 1010
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1011
    .line 1012
    .line 1013
    move-result-wide v63

    .line 1014
    move/from16 v61, v2

    .line 1015
    .line 1016
    move/from16 v20, v3

    .line 1017
    .line 1018
    move/from16 v62, v4

    .line 1019
    .line 1020
    move/from16 v2, v21

    .line 1021
    .line 1022
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1023
    .line 1024
    .line 1025
    move-result-wide v3

    .line 1026
    long-to-int v3, v3

    .line 1027
    move/from16 v21, v2

    .line 1028
    .line 1029
    move/from16 v65, v3

    .line 1030
    .line 1031
    move/from16 v4, v22

    .line 1032
    .line 1033
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1034
    .line 1035
    .line 1036
    move-result-wide v2

    .line 1037
    long-to-int v2, v2

    .line 1038
    move/from16 v3, v23

    .line 1039
    .line 1040
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v22

    .line 1044
    if-eqz v22, :cond_c

    .line 1045
    .line 1046
    const/16 v67, 0x0

    .line 1047
    .line 1048
    :goto_d
    move/from16 v66, v2

    .line 1049
    .line 1050
    move/from16 v2, v24

    .line 1051
    .line 1052
    goto :goto_e

    .line 1053
    :cond_c
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v22

    .line 1057
    move-object/from16 v67, v22

    .line 1058
    .line 1059
    goto :goto_d

    .line 1060
    :goto_e
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v22

    .line 1064
    if-eqz v22, :cond_d

    .line 1065
    .line 1066
    move/from16 v23, v3

    .line 1067
    .line 1068
    move/from16 v22, v4

    .line 1069
    .line 1070
    const/4 v3, 0x0

    .line 1071
    goto :goto_f

    .line 1072
    :cond_d
    move/from16 v23, v3

    .line 1073
    .line 1074
    move/from16 v22, v4

    .line 1075
    .line 1076
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1077
    .line 1078
    .line 1079
    move-result-wide v3

    .line 1080
    long-to-int v3, v3

    .line 1081
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    :goto_f
    if-eqz v3, :cond_f

    .line 1086
    .line 1087
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1088
    .line 1089
    .line 1090
    move-result v3

    .line 1091
    if-eqz v3, :cond_e

    .line 1092
    .line 1093
    const/4 v3, 0x1

    .line 1094
    goto :goto_10

    .line 1095
    :cond_e
    const/4 v3, 0x0

    .line 1096
    :goto_10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v3

    .line 1100
    move-object/from16 v68, v3

    .line 1101
    .line 1102
    :goto_11
    move/from16 v24, v5

    .line 1103
    .line 1104
    move/from16 v3, v25

    .line 1105
    .line 1106
    goto :goto_12

    .line 1107
    :catchall_4
    move-exception v0

    .line 1108
    goto/16 :goto_1b

    .line 1109
    .line 1110
    :cond_f
    const/16 v68, 0x0

    .line 1111
    .line 1112
    goto :goto_11

    .line 1113
    :goto_12
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1114
    .line 1115
    .line 1116
    move-result-wide v4

    .line 1117
    long-to-int v4, v4

    .line 1118
    invoke-static {v4}, Lkotlin/TuplesKt;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v74

    .line 1122
    move/from16 v4, v26

    .line 1123
    .line 1124
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1125
    .line 1126
    .line 1127
    move-result-object v5

    .line 1128
    invoke-static {v5}, Lkotlin/TuplesKt;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v73

    .line 1132
    move/from16 v25, v2

    .line 1133
    .line 1134
    move/from16 v26, v3

    .line 1135
    .line 1136
    move/from16 v5, v27

    .line 1137
    .line 1138
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1139
    .line 1140
    .line 1141
    move-result-wide v2

    .line 1142
    long-to-int v2, v2

    .line 1143
    if-eqz v2, :cond_10

    .line 1144
    .line 1145
    const/16 v75, 0x1

    .line 1146
    .line 1147
    :goto_13
    move/from16 v27, v4

    .line 1148
    .line 1149
    move/from16 v2, v28

    .line 1150
    .line 1151
    goto :goto_14

    .line 1152
    :cond_10
    const/16 v75, 0x0

    .line 1153
    .line 1154
    goto :goto_13

    .line 1155
    :goto_14
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1156
    .line 1157
    .line 1158
    move-result-wide v3

    .line 1159
    long-to-int v3, v3

    .line 1160
    if-eqz v3, :cond_11

    .line 1161
    .line 1162
    const/16 v76, 0x1

    .line 1163
    .line 1164
    :goto_15
    move/from16 v28, v5

    .line 1165
    .line 1166
    move/from16 v3, v29

    .line 1167
    .line 1168
    goto :goto_16

    .line 1169
    :cond_11
    const/16 v76, 0x0

    .line 1170
    .line 1171
    goto :goto_15

    .line 1172
    :goto_16
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1173
    .line 1174
    .line 1175
    move-result-wide v4

    .line 1176
    long-to-int v4, v4

    .line 1177
    if-eqz v4, :cond_12

    .line 1178
    .line 1179
    const/16 v77, 0x1

    .line 1180
    .line 1181
    :goto_17
    move v5, v2

    .line 1182
    move/from16 v29, v3

    .line 1183
    .line 1184
    move/from16 v4, v30

    .line 1185
    .line 1186
    goto :goto_18

    .line 1187
    :cond_12
    const/16 v77, 0x0

    .line 1188
    .line 1189
    goto :goto_17

    .line 1190
    :goto_18
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1191
    .line 1192
    .line 1193
    move-result-wide v2

    .line 1194
    long-to-int v2, v2

    .line 1195
    if-eqz v2, :cond_13

    .line 1196
    .line 1197
    const/16 v78, 0x1

    .line 1198
    .line 1199
    :goto_19
    move/from16 v2, v31

    .line 1200
    .line 1201
    goto :goto_1a

    .line 1202
    :cond_13
    const/16 v78, 0x0

    .line 1203
    .line 1204
    goto :goto_19

    .line 1205
    :goto_1a
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1206
    .line 1207
    .line 1208
    move-result-wide v79

    .line 1209
    move/from16 v3, v32

    .line 1210
    .line 1211
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1212
    .line 1213
    .line 1214
    move-result-wide v81

    .line 1215
    move/from16 v31, v2

    .line 1216
    .line 1217
    move/from16 v2, v33

    .line 1218
    .line 1219
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1220
    .line 1221
    .line 1222
    move-result-object v30

    .line 1223
    invoke-static/range {v30 .. v30}, Lkotlin/TuplesKt;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v83

    .line 1227
    new-instance v48, Landroidx/work/Constraints;

    .line 1228
    .line 1229
    move-object/from16 v72, v48

    .line 1230
    .line 1231
    invoke-direct/range {v72 .. v83}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1232
    .line 1233
    .line 1234
    move-object/from16 v48, v72

    .line 1235
    .line 1236
    new-instance v35, Landroidx/work/impl/model/WorkSpec;

    .line 1237
    .line 1238
    move/from16 v49, v14

    .line 1239
    .line 1240
    invoke-direct/range {v35 .. v68}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 1241
    .line 1242
    .line 1243
    move-object/from16 v14, v35

    .line 1244
    .line 1245
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1246
    .line 1247
    .line 1248
    move/from16 v14, v28

    .line 1249
    .line 1250
    move/from16 v28, v5

    .line 1251
    .line 1252
    move/from16 v5, v17

    .line 1253
    .line 1254
    move/from16 v17, v18

    .line 1255
    .line 1256
    move/from16 v18, v19

    .line 1257
    .line 1258
    move/from16 v19, v20

    .line 1259
    .line 1260
    move/from16 v20, v24

    .line 1261
    .line 1262
    move/from16 v24, v25

    .line 1263
    .line 1264
    move/from16 v25, v26

    .line 1265
    .line 1266
    move/from16 v26, v27

    .line 1267
    .line 1268
    move/from16 v27, v14

    .line 1269
    .line 1270
    move/from16 v33, v2

    .line 1271
    .line 1272
    move/from16 v32, v3

    .line 1273
    .line 1274
    move/from16 v30, v4

    .line 1275
    .line 1276
    move v2, v15

    .line 1277
    move/from16 v14, v34

    .line 1278
    .line 1279
    move/from16 v15, v69

    .line 1280
    .line 1281
    move/from16 v3, v70

    .line 1282
    .line 1283
    move/from16 v4, p1

    .line 1284
    .line 1285
    move/from16 p1, v71

    .line 1286
    .line 1287
    goto/16 :goto_a

    .line 1288
    .line 1289
    :cond_14
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1290
    .line 1291
    .line 1292
    return-object v0

    .line 1293
    :goto_1b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1294
    .line 1295
    .line 1296
    throw v0

    .line 1297
    :pswitch_5
    move-object/from16 v1, p1

    .line 1298
    .line 1299
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;

    .line 1300
    .line 1301
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    if-eqz v2, :cond_15

    .line 1306
    .line 1307
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v8

    .line 1311
    goto :goto_1c

    .line 1312
    :cond_15
    const/4 v8, 0x0

    .line 1313
    :goto_1c
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v3

    .line 1317
    invoke-static {v2, v3, v8}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 1318
    .line 1319
    .line 1320
    iget v2, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->nestedPrefetchItemCount:I

    .line 1321
    .line 1322
    const/4 v3, -0x1

    .line 1323
    if-ne v2, v3, :cond_16

    .line 1324
    .line 1325
    const/4 v2, 0x2

    .line 1326
    :cond_16
    const/4 v6, 0x0

    .line 1327
    :goto_1d
    if-ge v6, v2, :cond_17

    .line 1328
    .line 1329
    add-int v3, v0, v6

    .line 1330
    .line 1331
    invoke-virtual {v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->schedulePrecomposition(I)V

    .line 1332
    .line 1333
    .line 1334
    add-int/lit8 v6, v6, 0x1

    .line 1335
    .line 1336
    goto :goto_1d

    .line 1337
    :cond_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1338
    .line 1339
    return-object v0

    .line 1340
    :pswitch_6
    move-object/from16 v1, p1

    .line 1341
    .line 1342
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 1343
    .line 1344
    iget-object v1, v1, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 1345
    .line 1346
    invoke-static {v1, v0}, Lcoil3/util/ContextsKt;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v0

    .line 1350
    invoke-static {v0}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0

    .line 1354
    return-object v0

    .line 1355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
