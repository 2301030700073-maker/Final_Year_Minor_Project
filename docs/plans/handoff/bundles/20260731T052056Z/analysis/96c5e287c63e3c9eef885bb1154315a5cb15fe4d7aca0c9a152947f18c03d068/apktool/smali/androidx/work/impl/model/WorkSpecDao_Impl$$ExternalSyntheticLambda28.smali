.class public final synthetic Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;->f$1:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(JLorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;I)V
    .locals 0

    .line 9
    iput p4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;->$r8$classId:I

    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 85

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 6
    .line 7
    const-string v3, "revId"

    .line 8
    .line 9
    const-string v4, "offline"

    .line 10
    .line 11
    const-string v5, "listId"

    .line 12
    .line 13
    const-string v6, "thumbUrl"

    .line 14
    .line 15
    const-string v7, "apiTitle"

    .line 16
    .line 17
    const-string v8, "displayTitle"

    .line 18
    .line 19
    const-string v9, "namespace"

    .line 20
    .line 21
    const-string/jumbo v10, "wiki"

    .line 22
    .line 23
    .line 24
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    const-string v12, "remoteId"

    .line 27
    .line 28
    const-string v13, "lang"

    .line 29
    .line 30
    const-string v14, "sizeBytes"

    .line 31
    .line 32
    const-string v15, "status"

    .line 33
    .line 34
    move/from16 v16, v1

    .line 35
    .line 36
    const-string v1, "atime"

    .line 37
    .line 38
    move-object/from16 v17, v11

    .line 39
    .line 40
    const-string v11, "mtime"

    .line 41
    .line 42
    move-object/from16 v18, v2

    .line 43
    .line 44
    const-string v2, "description"

    .line 45
    .line 46
    move-object/from16 v19, v12

    .line 47
    .line 48
    const-string v12, "id"

    .line 49
    .line 50
    const/16 v20, 0x0

    .line 51
    .line 52
    move-object/from16 v21, v3

    .line 53
    .line 54
    move-object/from16 v22, v4

    .line 55
    .line 56
    iget-wide v3, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;->f$1:J

    .line 57
    .line 58
    packed-switch v16, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    move-object/from16 v1, p1

    .line 62
    .line 63
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    int-to-long v3, v3

    .line 74
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    int-to-long v5, v5

    .line 79
    const/16 v7, 0x20

    .line 80
    .line 81
    shl-long/2addr v3, v7

    .line 82
    const-wide v8, 0xffffffffL

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    and-long/2addr v5, v8

    .line 88
    or-long v26, v3, v5

    .line 89
    .line 90
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    shr-long/2addr v3, v7

    .line 95
    long-to-int v3, v3

    .line 96
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    int-to-long v3, v3

    .line 105
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    int-to-long v5, v2

    .line 110
    shl-long v2, v3, v7

    .line 111
    .line 112
    and-long/2addr v5, v8

    .line 113
    or-long v28, v2, v5

    .line 114
    .line 115
    const/high16 v2, 0x3f800000    # 1.0f

    .line 116
    .line 117
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 118
    .line 119
    .line 120
    move-result v30

    .line 121
    const/16 v31, 0x0

    .line 122
    .line 123
    const/16 v32, 0x1f0

    .line 124
    .line 125
    iget-wide v2, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;->f$1:J

    .line 126
    .line 127
    move-object/from16 v23, v1

    .line 128
    .line 129
    move-wide/from16 v24, v2

    .line 130
    .line 131
    invoke-static/range {v23 .. v32}, Landroidx/compose/ui/Modifier$-CC;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFII)V

    .line 132
    .line 133
    .line 134
    return-object v17

    .line 135
    :pswitch_0
    move-object/from16 v0, p1

    .line 136
    .line 137
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-object/from16 v16, v13

    .line 143
    .line 144
    const-string v13, "SELECT * FROM ReadingListPage WHERE atime > 0 AND atime > ? ORDER BY atime DESC LIMIT ?"

    .line 145
    .line 146
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    const/4 v0, 0x1

    .line 151
    :try_start_0
    invoke-interface {v13, v3, v4, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 152
    .line 153
    .line 154
    const/4 v0, 0x2

    .line 155
    const-wide/16 v3, 0x4

    .line 156
    .line 157
    invoke-interface {v13, v3, v4, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 158
    .line 159
    .line 160
    invoke-static {v13, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-static {v13, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    invoke-static {v13, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    invoke-static {v13, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    invoke-static {v13, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-static {v13, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    invoke-static {v13, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    invoke-static {v13, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    invoke-static {v13, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    invoke-static {v13, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    move-object/from16 v10, v22

    .line 201
    .line 202
    invoke-static {v13, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    invoke-static {v13, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    invoke-static {v13, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v12

    .line 214
    move-object/from16 v14, v16

    .line 215
    .line 216
    invoke-static {v13, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v14

    .line 220
    move-object/from16 v15, v21

    .line 221
    .line 222
    invoke-static {v13, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v15

    .line 226
    move/from16 p0, v15

    .line 227
    .line 228
    move-object/from16 v15, v19

    .line 229
    .line 230
    invoke-static {v13, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v15

    .line 234
    move/from16 p1, v15

    .line 235
    .line 236
    new-instance v15, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    :goto_0
    invoke-interface {v13}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 242
    .line 243
    .line 244
    move-result v16

    .line 245
    if-eqz v16, :cond_7

    .line 246
    .line 247
    invoke-interface {v13, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 248
    .line 249
    .line 250
    move-result v16

    .line 251
    if-eqz v16, :cond_0

    .line 252
    .line 253
    move-object/from16 v16, v20

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_0
    invoke-interface {v13, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v16

    .line 260
    :goto_1
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 261
    .line 262
    .line 263
    move-result-object v24

    .line 264
    if-eqz v24, :cond_6

    .line 265
    .line 266
    invoke-interface {v13, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 267
    .line 268
    .line 269
    move-result v16

    .line 270
    if-eqz v16, :cond_1

    .line 271
    .line 272
    move/from16 v16, v14

    .line 273
    .line 274
    move-object/from16 v17, v15

    .line 275
    .line 276
    move-object/from16 v14, v20

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_1
    move/from16 v16, v14

    .line 280
    .line 281
    move-object/from16 v17, v15

    .line 282
    .line 283
    invoke-interface {v13, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 284
    .line 285
    .line 286
    move-result-wide v14

    .line 287
    long-to-int v14, v14

    .line 288
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    :goto_2
    invoke-static {v14}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 293
    .line 294
    .line 295
    move-result-object v25

    .line 296
    if-eqz v25, :cond_5

    .line 297
    .line 298
    invoke-interface {v13, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v26

    .line 302
    invoke-interface {v13, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v27

    .line 306
    invoke-interface {v13, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-eqz v14, :cond_2

    .line 311
    .line 312
    move-object/from16 v28, v20

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_2
    invoke-interface {v13, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v14

    .line 319
    move-object/from16 v28, v14

    .line 320
    .line 321
    :goto_3
    invoke-interface {v13, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 322
    .line 323
    .line 324
    move-result v14

    .line 325
    if-eqz v14, :cond_3

    .line 326
    .line 327
    move-object/from16 v29, v20

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_3
    invoke-interface {v13, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v14

    .line 334
    move-object/from16 v29, v14

    .line 335
    .line 336
    :goto_4
    invoke-interface {v13, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v30

    .line 340
    invoke-interface {v13, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v32

    .line 344
    invoke-interface {v13, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v34

    .line 348
    invoke-interface {v13, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 349
    .line 350
    .line 351
    move-result-wide v36

    .line 352
    invoke-interface {v13, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v14

    .line 356
    long-to-int v14, v14

    .line 357
    if-eqz v14, :cond_4

    .line 358
    .line 359
    const/16 v38, 0x1

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_4
    const/16 v38, 0x0

    .line 363
    .line 364
    :goto_5
    invoke-interface {v13, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 365
    .line 366
    .line 367
    move-result-wide v39

    .line 368
    invoke-interface {v13, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 369
    .line 370
    .line 371
    move-result-wide v41

    .line 372
    move/from16 v14, v16

    .line 373
    .line 374
    invoke-interface {v13, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v43

    .line 378
    move/from16 v15, p0

    .line 379
    .line 380
    invoke-interface {v13, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 381
    .line 382
    .line 383
    move-result-wide v44

    .line 384
    move/from16 p0, v0

    .line 385
    .line 386
    move/from16 v0, p1

    .line 387
    .line 388
    invoke-interface {v13, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 389
    .line 390
    .line 391
    move-result-wide v46

    .line 392
    new-instance v23, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 393
    .line 394
    invoke-direct/range {v23 .. v47}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 395
    .line 396
    .line 397
    move/from16 p1, v0

    .line 398
    .line 399
    move-object/from16 v0, v23

    .line 400
    .line 401
    move/from16 v16, v1

    .line 402
    .line 403
    move-object/from16 v1, v17

    .line 404
    .line 405
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move/from16 v0, p0

    .line 409
    .line 410
    move/from16 p0, v15

    .line 411
    .line 412
    move-object v15, v1

    .line 413
    move/from16 v1, v16

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :catchall_0
    move-exception v0

    .line 418
    goto :goto_6

    .line 419
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 420
    .line 421
    move-object/from16 v1, v18

    .line 422
    .line 423
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v0

    .line 427
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 428
    .line 429
    const-string v1, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 430
    .line 431
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :cond_7
    move-object v1, v15

    .line 436
    invoke-interface {v13}, Ljava/lang/AutoCloseable;->close()V

    .line 437
    .line 438
    .line 439
    return-object v1

    .line 440
    :goto_6
    invoke-interface {v13}, Ljava/lang/AutoCloseable;->close()V

    .line 441
    .line 442
    .line 443
    throw v0

    .line 444
    :pswitch_1
    move-object/from16 v16, v13

    .line 445
    .line 446
    move-object v13, v15

    .line 447
    move-object/from16 v0, v22

    .line 448
    .line 449
    move-object/from16 v15, p1

    .line 450
    .line 451
    check-cast v15, Landroidx/sqlite/SQLiteConnection;

    .line 452
    .line 453
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    move-object/from16 v22, v14

    .line 457
    .line 458
    const-string v14, "SELECT * FROM ReadingListPage WHERE id = ?"

    .line 459
    .line 460
    invoke-interface {v15, v14}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 461
    .line 462
    .line 463
    move-result-object v14

    .line 464
    const/4 v15, 0x1

    .line 465
    :try_start_1
    invoke-interface {v14, v3, v4, v15}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 466
    .line 467
    .line 468
    invoke-static {v14, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    invoke-static {v14, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    invoke-static {v14, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    move-result v8

    .line 480
    invoke-static {v14, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    move-result v7

    .line 484
    invoke-static {v14, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    invoke-static {v14, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    invoke-static {v14, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    invoke-static {v14, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    move-result v9

    .line 500
    invoke-static {v14, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    move-result v10

    .line 504
    invoke-static {v14, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    invoke-static {v14, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    invoke-static {v14, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    move-result v11

    .line 516
    move-object/from16 v15, v22

    .line 517
    .line 518
    invoke-static {v14, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    move-result v12

    .line 522
    move-object/from16 v13, v16

    .line 523
    .line 524
    invoke-static {v14, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    move-result v13

    .line 528
    move-object/from16 v15, v21

    .line 529
    .line 530
    invoke-static {v14, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v15

    .line 534
    move/from16 p0, v15

    .line 535
    .line 536
    move-object/from16 v15, v19

    .line 537
    .line 538
    invoke-static {v14, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    move-result v15

    .line 542
    invoke-interface {v14}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 543
    .line 544
    .line 545
    move-result v16

    .line 546
    if-eqz v16, :cond_f

    .line 547
    .line 548
    invoke-interface {v14, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 549
    .line 550
    .line 551
    move-result v16

    .line 552
    if-eqz v16, :cond_8

    .line 553
    .line 554
    move-object/from16 v3, v20

    .line 555
    .line 556
    goto :goto_7

    .line 557
    :cond_8
    invoke-interface {v14, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    :goto_7
    invoke-static {v3}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 562
    .line 563
    .line 564
    move-result-object v24

    .line 565
    if-eqz v24, :cond_e

    .line 566
    .line 567
    invoke-interface {v14, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    if-eqz v3, :cond_9

    .line 572
    .line 573
    move-object/from16 v3, v20

    .line 574
    .line 575
    goto :goto_8

    .line 576
    :cond_9
    invoke-interface {v14, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 577
    .line 578
    .line 579
    move-result-wide v3

    .line 580
    long-to-int v3, v3

    .line 581
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    :goto_8
    invoke-static {v3}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 586
    .line 587
    .line 588
    move-result-object v25

    .line 589
    if-eqz v25, :cond_d

    .line 590
    .line 591
    invoke-interface {v14, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v26

    .line 595
    invoke-interface {v14, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v27

    .line 599
    invoke-interface {v14, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 600
    .line 601
    .line 602
    move-result v3

    .line 603
    if-eqz v3, :cond_a

    .line 604
    .line 605
    move-object/from16 v28, v20

    .line 606
    .line 607
    goto :goto_9

    .line 608
    :cond_a
    invoke-interface {v14, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    move-object/from16 v28, v2

    .line 613
    .line 614
    :goto_9
    invoke-interface {v14, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    if-eqz v2, :cond_b

    .line 619
    .line 620
    :goto_a
    move-object/from16 v29, v20

    .line 621
    .line 622
    goto :goto_b

    .line 623
    :cond_b
    invoke-interface {v14, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v20

    .line 627
    goto :goto_a

    .line 628
    :goto_b
    invoke-interface {v14, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 629
    .line 630
    .line 631
    move-result-wide v30

    .line 632
    invoke-interface {v14, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 633
    .line 634
    .line 635
    move-result-wide v32

    .line 636
    invoke-interface {v14, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 637
    .line 638
    .line 639
    move-result-wide v34

    .line 640
    invoke-interface {v14, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 641
    .line 642
    .line 643
    move-result-wide v36

    .line 644
    invoke-interface {v14, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 645
    .line 646
    .line 647
    move-result-wide v0

    .line 648
    long-to-int v0, v0

    .line 649
    if-eqz v0, :cond_c

    .line 650
    .line 651
    const/16 v38, 0x1

    .line 652
    .line 653
    goto :goto_c

    .line 654
    :cond_c
    const/16 v38, 0x0

    .line 655
    .line 656
    :goto_c
    invoke-interface {v14, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 657
    .line 658
    .line 659
    move-result-wide v39

    .line 660
    invoke-interface {v14, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 661
    .line 662
    .line 663
    move-result-wide v41

    .line 664
    invoke-interface {v14, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v43

    .line 668
    move/from16 v0, p0

    .line 669
    .line 670
    invoke-interface {v14, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 671
    .line 672
    .line 673
    move-result-wide v44

    .line 674
    invoke-interface {v14, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 675
    .line 676
    .line 677
    move-result-wide v46

    .line 678
    new-instance v23, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 679
    .line 680
    invoke-direct/range {v23 .. v47}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 681
    .line 682
    .line 683
    move-object/from16 v20, v23

    .line 684
    .line 685
    goto :goto_d

    .line 686
    :catchall_1
    move-exception v0

    .line 687
    goto :goto_e

    .line 688
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 689
    .line 690
    move-object/from16 v1, v18

    .line 691
    .line 692
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    throw v0

    .line 696
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 697
    .line 698
    const-string v1, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 699
    .line 700
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 704
    :cond_f
    :goto_d
    invoke-interface {v14}, Ljava/lang/AutoCloseable;->close()V

    .line 705
    .line 706
    .line 707
    return-object v20

    .line 708
    :goto_e
    invoke-interface {v14}, Ljava/lang/AutoCloseable;->close()V

    .line 709
    .line 710
    .line 711
    throw v0

    .line 712
    :pswitch_2
    move-object/from16 v16, v13

    .line 713
    .line 714
    move-object v13, v15

    .line 715
    move-object/from16 v0, v22

    .line 716
    .line 717
    move-object/from16 v15, p1

    .line 718
    .line 719
    check-cast v15, Landroidx/sqlite/SQLiteConnection;

    .line 720
    .line 721
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    .line 723
    .line 724
    move-object/from16 v22, v14

    .line 725
    .line 726
    const-string v14, "SELECT * FROM ReadingListPage WHERE listId = ? AND status != ?"

    .line 727
    .line 728
    invoke-interface {v15, v14}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 729
    .line 730
    .line 731
    move-result-object v14

    .line 732
    const/4 v15, 0x1

    .line 733
    :try_start_2
    invoke-interface {v14, v3, v4, v15}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 734
    .line 735
    .line 736
    const/4 v3, 0x2

    .line 737
    move-object/from16 v17, v0

    .line 738
    .line 739
    move-object v15, v1

    .line 740
    const-wide/16 v0, 0x2

    .line 741
    .line 742
    invoke-interface {v14, v0, v1, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 743
    .line 744
    .line 745
    invoke-static {v14, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    invoke-static {v14, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    invoke-static {v14, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 754
    .line 755
    .line 756
    move-result v3

    .line 757
    invoke-static {v14, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 758
    .line 759
    .line 760
    move-result v4

    .line 761
    invoke-static {v14, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    invoke-static {v14, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 766
    .line 767
    .line 768
    move-result v6

    .line 769
    invoke-static {v14, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 770
    .line 771
    .line 772
    move-result v5

    .line 773
    invoke-static {v14, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 774
    .line 775
    .line 776
    move-result v7

    .line 777
    invoke-static {v14, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 778
    .line 779
    .line 780
    move-result v8

    .line 781
    invoke-static {v14, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 782
    .line 783
    .line 784
    move-result v9

    .line 785
    move-object/from16 v10, v17

    .line 786
    .line 787
    invoke-static {v14, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 788
    .line 789
    .line 790
    move-result v10

    .line 791
    invoke-static {v14, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 792
    .line 793
    .line 794
    move-result v11

    .line 795
    move-object/from16 v13, v22

    .line 796
    .line 797
    invoke-static {v14, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 798
    .line 799
    .line 800
    move-result v12

    .line 801
    move-object/from16 v15, v16

    .line 802
    .line 803
    invoke-static {v14, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 804
    .line 805
    .line 806
    move-result v13

    .line 807
    move-object/from16 v15, v21

    .line 808
    .line 809
    invoke-static {v14, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    move-result v15

    .line 813
    move/from16 p0, v15

    .line 814
    .line 815
    move-object/from16 v15, v19

    .line 816
    .line 817
    invoke-static {v14, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 818
    .line 819
    .line 820
    move-result v15

    .line 821
    move/from16 p1, v15

    .line 822
    .line 823
    new-instance v15, Ljava/util/ArrayList;

    .line 824
    .line 825
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .line 827
    .line 828
    :goto_f
    invoke-interface {v14}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 829
    .line 830
    .line 831
    move-result v16

    .line 832
    if-eqz v16, :cond_17

    .line 833
    .line 834
    invoke-interface {v14, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 835
    .line 836
    .line 837
    move-result v16

    .line 838
    if-eqz v16, :cond_10

    .line 839
    .line 840
    move-object/from16 v16, v20

    .line 841
    .line 842
    goto :goto_10

    .line 843
    :cond_10
    invoke-interface {v14, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v16

    .line 847
    :goto_10
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 848
    .line 849
    .line 850
    move-result-object v24

    .line 851
    if-eqz v24, :cond_16

    .line 852
    .line 853
    invoke-interface {v14, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 854
    .line 855
    .line 856
    move-result v16

    .line 857
    if-eqz v16, :cond_11

    .line 858
    .line 859
    move/from16 v16, v12

    .line 860
    .line 861
    move/from16 v17, v13

    .line 862
    .line 863
    move-object/from16 v12, v20

    .line 864
    .line 865
    goto :goto_11

    .line 866
    :cond_11
    move/from16 v16, v12

    .line 867
    .line 868
    move/from16 v17, v13

    .line 869
    .line 870
    invoke-interface {v14, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 871
    .line 872
    .line 873
    move-result-wide v12

    .line 874
    long-to-int v12, v12

    .line 875
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 876
    .line 877
    .line 878
    move-result-object v12

    .line 879
    :goto_11
    invoke-static {v12}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 880
    .line 881
    .line 882
    move-result-object v25

    .line 883
    if-eqz v25, :cond_15

    .line 884
    .line 885
    invoke-interface {v14, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v26

    .line 889
    invoke-interface {v14, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v27

    .line 893
    invoke-interface {v14, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 894
    .line 895
    .line 896
    move-result v12

    .line 897
    if-eqz v12, :cond_12

    .line 898
    .line 899
    move-object/from16 v28, v20

    .line 900
    .line 901
    goto :goto_12

    .line 902
    :cond_12
    invoke-interface {v14, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v12

    .line 906
    move-object/from16 v28, v12

    .line 907
    .line 908
    :goto_12
    invoke-interface {v14, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 909
    .line 910
    .line 911
    move-result v12

    .line 912
    if-eqz v12, :cond_13

    .line 913
    .line 914
    move-object/from16 v29, v20

    .line 915
    .line 916
    goto :goto_13

    .line 917
    :cond_13
    invoke-interface {v14, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v12

    .line 921
    move-object/from16 v29, v12

    .line 922
    .line 923
    :goto_13
    invoke-interface {v14, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 924
    .line 925
    .line 926
    move-result-wide v30

    .line 927
    invoke-interface {v14, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 928
    .line 929
    .line 930
    move-result-wide v32

    .line 931
    invoke-interface {v14, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 932
    .line 933
    .line 934
    move-result-wide v34

    .line 935
    invoke-interface {v14, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 936
    .line 937
    .line 938
    move-result-wide v36

    .line 939
    invoke-interface {v14, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 940
    .line 941
    .line 942
    move-result-wide v12

    .line 943
    long-to-int v12, v12

    .line 944
    if-eqz v12, :cond_14

    .line 945
    .line 946
    const/16 v38, 0x1

    .line 947
    .line 948
    goto :goto_14

    .line 949
    :cond_14
    const/16 v38, 0x0

    .line 950
    .line 951
    :goto_14
    invoke-interface {v14, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 952
    .line 953
    .line 954
    move-result-wide v39

    .line 955
    move/from16 v12, v16

    .line 956
    .line 957
    invoke-interface {v14, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 958
    .line 959
    .line 960
    move-result-wide v41

    .line 961
    move/from16 v13, v17

    .line 962
    .line 963
    invoke-interface {v14, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v43

    .line 967
    move/from16 v16, v0

    .line 968
    .line 969
    move/from16 v0, p0

    .line 970
    .line 971
    invoke-interface {v14, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 972
    .line 973
    .line 974
    move-result-wide v44

    .line 975
    move/from16 p0, v0

    .line 976
    .line 977
    move/from16 v0, p1

    .line 978
    .line 979
    invoke-interface {v14, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 980
    .line 981
    .line 982
    move-result-wide v46

    .line 983
    new-instance v23, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 984
    .line 985
    invoke-direct/range {v23 .. v47}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 986
    .line 987
    .line 988
    move/from16 p1, v0

    .line 989
    .line 990
    move-object/from16 v0, v23

    .line 991
    .line 992
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    .line 994
    .line 995
    move/from16 v0, v16

    .line 996
    .line 997
    goto/16 :goto_f

    .line 998
    .line 999
    :catchall_2
    move-exception v0

    .line 1000
    goto :goto_15

    .line 1001
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1002
    .line 1003
    move-object/from16 v1, v18

    .line 1004
    .line 1005
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    throw v0

    .line 1009
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1010
    .line 1011
    const-string v1, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 1012
    .line 1013
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1017
    :cond_17
    invoke-interface {v14}, Ljava/lang/AutoCloseable;->close()V

    .line 1018
    .line 1019
    .line 1020
    return-object v15

    .line 1021
    :goto_15
    invoke-interface {v14}, Ljava/lang/AutoCloseable;->close()V

    .line 1022
    .line 1023
    .line 1024
    throw v0

    .line 1025
    :pswitch_3
    move-object v0, v1

    .line 1026
    move-object v13, v14

    .line 1027
    move-object/from16 v15, v19

    .line 1028
    .line 1029
    move-object/from16 v1, p1

    .line 1030
    .line 1031
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1032
    .line 1033
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1034
    .line 1035
    .line 1036
    const-string v5, "SELECT * FROM ReadingList WHERE id = ?"

    .line 1037
    .line 1038
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v1

    .line 1042
    const/4 v5, 0x1

    .line 1043
    :try_start_3
    invoke-interface {v1, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1044
    .line 1045
    .line 1046
    const-string v3, "listTitle"

    .line 1047
    .line 1048
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1049
    .line 1050
    .line 1051
    move-result v3

    .line 1052
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1053
    .line 1054
    .line 1055
    move-result v2

    .line 1056
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1057
    .line 1058
    .line 1059
    move-result v4

    .line 1060
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1061
    .line 1062
    .line 1063
    move-result v0

    .line 1064
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1065
    .line 1066
    .line 1067
    move-result v5

    .line 1068
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1069
    .line 1070
    .line 1071
    move-result v6

    .line 1072
    const-string v7, "dirty"

    .line 1073
    .line 1074
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1075
    .line 1076
    .line 1077
    move-result v7

    .line 1078
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1079
    .line 1080
    .line 1081
    move-result v8

    .line 1082
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1083
    .line 1084
    .line 1085
    move-result v9

    .line 1086
    if-eqz v9, :cond_1a

    .line 1087
    .line 1088
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v24

    .line 1092
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v3

    .line 1096
    if-eqz v3, :cond_18

    .line 1097
    .line 1098
    :goto_16
    move-object/from16 v25, v20

    .line 1099
    .line 1100
    goto :goto_17

    .line 1101
    :cond_18
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v20

    .line 1105
    goto :goto_16

    .line 1106
    :goto_17
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1107
    .line 1108
    .line 1109
    move-result-wide v26

    .line 1110
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1111
    .line 1112
    .line 1113
    move-result-wide v28

    .line 1114
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1115
    .line 1116
    .line 1117
    move-result-wide v30

    .line 1118
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1119
    .line 1120
    .line 1121
    move-result-wide v32

    .line 1122
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1123
    .line 1124
    .line 1125
    move-result-wide v2

    .line 1126
    long-to-int v0, v2

    .line 1127
    if-eqz v0, :cond_19

    .line 1128
    .line 1129
    const/16 v34, 0x1

    .line 1130
    .line 1131
    goto :goto_18

    .line 1132
    :cond_19
    const/16 v34, 0x0

    .line 1133
    .line 1134
    :goto_18
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1135
    .line 1136
    .line 1137
    move-result-wide v35

    .line 1138
    new-instance v23, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 1139
    .line 1140
    invoke-direct/range {v23 .. v36}, Lorg/wikipedia/readinglist/database/ReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJZJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1141
    .line 1142
    .line 1143
    move-object/from16 v20, v23

    .line 1144
    .line 1145
    goto :goto_19

    .line 1146
    :catchall_3
    move-exception v0

    .line 1147
    goto :goto_1a

    .line 1148
    :cond_1a
    :goto_19
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1149
    .line 1150
    .line 1151
    return-object v20

    .line 1152
    :goto_1a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1153
    .line 1154
    .line 1155
    throw v0

    .line 1156
    :pswitch_4
    move-object/from16 v84, v15

    .line 1157
    .line 1158
    move-object v15, v13

    .line 1159
    move-object/from16 v13, v84

    .line 1160
    .line 1161
    move-object/from16 v0, p1

    .line 1162
    .line 1163
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1164
    .line 1165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1166
    .line 1167
    .line 1168
    const-string v1, "SELECT * FROM OfflineObject WHERE usedByStr LIKE \'%|\' || ? || \'|%\'"

    .line 1169
    .line 1170
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v1

    .line 1174
    const/4 v0, 0x1

    .line 1175
    :try_start_4
    invoke-interface {v1, v3, v4, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1176
    .line 1177
    .line 1178
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1179
    .line 1180
    .line 1181
    move-result v0

    .line 1182
    const-string/jumbo v2, "url"

    .line 1183
    .line 1184
    .line 1185
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1186
    .line 1187
    .line 1188
    move-result v2

    .line 1189
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1190
    .line 1191
    .line 1192
    move-result v3

    .line 1193
    const-string v4, "path"

    .line 1194
    .line 1195
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1196
    .line 1197
    .line 1198
    move-result v4

    .line 1199
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1200
    .line 1201
    .line 1202
    move-result v5

    .line 1203
    const-string/jumbo v6, "usedByStr"

    .line 1204
    .line 1205
    .line 1206
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1207
    .line 1208
    .line 1209
    move-result v6

    .line 1210
    new-instance v7, Ljava/util/ArrayList;

    .line 1211
    .line 1212
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    .line 1214
    .line 1215
    :goto_1b
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1216
    .line 1217
    .line 1218
    move-result v8

    .line 1219
    if-eqz v8, :cond_1b

    .line 1220
    .line 1221
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1222
    .line 1223
    .line 1224
    move-result-wide v8

    .line 1225
    long-to-int v11, v8

    .line 1226
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v13

    .line 1230
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v14

    .line 1234
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v15

    .line 1238
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1239
    .line 1240
    .line 1241
    move-result-wide v8

    .line 1242
    long-to-int v12, v8

    .line 1243
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v16

    .line 1247
    new-instance v10, Lorg/wikipedia/offline/db/OfflineObject;

    .line 1248
    .line 1249
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/offline/db/OfflineObject;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1253
    .line 1254
    .line 1255
    goto :goto_1b

    .line 1256
    :catchall_4
    move-exception v0

    .line 1257
    goto :goto_1c

    .line 1258
    :cond_1b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1259
    .line 1260
    .line 1261
    return-object v7

    .line 1262
    :goto_1c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1263
    .line 1264
    .line 1265
    throw v0

    .line 1266
    :pswitch_5
    move-object/from16 v0, p1

    .line 1267
    .line 1268
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1269
    .line 1270
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1271
    .line 1272
    .line 1273
    const-string v1, "SELECT COUNT(*) FROM (SELECT DISTINCT HistoryEntry.lang, HistoryEntry.apiTitle FROM HistoryEntry WHERE timestamp > ?)"

    .line 1274
    .line 1275
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v1

    .line 1279
    const/4 v15, 0x1

    .line 1280
    :try_start_5
    invoke-interface {v1, v3, v4, v15}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1281
    .line 1282
    .line 1283
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1284
    .line 1285
    .line 1286
    move-result v0

    .line 1287
    if-eqz v0, :cond_1d

    .line 1288
    .line 1289
    const/4 v0, 0x0

    .line 1290
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1291
    .line 1292
    .line 1293
    move-result v2

    .line 1294
    if-eqz v2, :cond_1c

    .line 1295
    .line 1296
    goto :goto_1d

    .line 1297
    :cond_1c
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1298
    .line 1299
    .line 1300
    move-result-wide v2

    .line 1301
    long-to-int v0, v2

    .line 1302
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1306
    goto :goto_1d

    .line 1307
    :catchall_5
    move-exception v0

    .line 1308
    goto :goto_1e

    .line 1309
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1310
    .line 1311
    .line 1312
    return-object v20

    .line 1313
    :goto_1e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1314
    .line 1315
    .line 1316
    throw v0

    .line 1317
    :pswitch_6
    move-object/from16 v0, p1

    .line 1318
    .line 1319
    check-cast v0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    .line 1320
    .line 1321
    iget-object v1, v0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->onFrame:Lkotlin/jvm/functions/Function1;

    .line 1322
    .line 1323
    if-nez v1, :cond_1e

    .line 1324
    .line 1325
    goto :goto_20

    .line 1326
    :cond_1e
    iget-object v2, v0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 1327
    .line 1328
    if-eqz v2, :cond_1f

    .line 1329
    .line 1330
    :try_start_6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1338
    goto :goto_1f

    .line 1339
    :catchall_6
    move-exception v0

    .line 1340
    new-instance v1, Lkotlin/Result$Failure;

    .line 1341
    .line 1342
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 1343
    .line 1344
    .line 1345
    move-object v0, v1

    .line 1346
    :goto_1f
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 1347
    .line 1348
    .line 1349
    :cond_1f
    :goto_20
    return-object v17

    .line 1350
    :pswitch_7
    move-object/from16 v1, p1

    .line 1351
    .line 1352
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1353
    .line 1354
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1355
    .line 1356
    new-instance v3, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;

    .line 1357
    .line 1358
    sget-object v4, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    .line 1359
    .line 1360
    sget-object v7, Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;->Middle:Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;

    .line 1361
    .line 1362
    const/4 v8, 0x1

    .line 1363
    iget-wide v5, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;->f$1:J

    .line 1364
    .line 1365
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;-><init>(Landroidx/compose/foundation/text/Handle;JLandroidx/compose/foundation/text/selection/SelectionHandleAnchor;Z)V

    .line 1366
    .line 1367
    .line 1368
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 1369
    .line 1370
    .line 1371
    return-object v17

    .line 1372
    :pswitch_8
    move-object/from16 v0, p1

    .line 1373
    .line 1374
    check-cast v0, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 1375
    .line 1376
    iget-object v1, v0, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1377
    .line 1378
    invoke-interface {v1}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 1379
    .line 1380
    .line 1381
    move-result-wide v1

    .line 1382
    const/16 v5, 0x20

    .line 1383
    .line 1384
    shr-long/2addr v1, v5

    .line 1385
    long-to-int v1, v1

    .line 1386
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1387
    .line 1388
    .line 1389
    move-result v1

    .line 1390
    const/high16 v2, 0x40000000    # 2.0f

    .line 1391
    .line 1392
    div-float/2addr v1, v2

    .line 1393
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->createHandleImage(Landroidx/compose/ui/draw/CacheDrawScope;F)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v2

    .line 1397
    new-instance v5, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 1398
    .line 1399
    const/4 v6, 0x5

    .line 1400
    invoke-direct {v5, v3, v4, v6}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    .line 1401
    .line 1402
    .line 1403
    new-instance v3, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;

    .line 1404
    .line 1405
    const/4 v4, 0x3

    .line 1406
    invoke-direct {v3, v1, v2, v5, v4}, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;-><init>(FLjava/lang/Object;Ljava/lang/Object;I)V

    .line 1407
    .line 1408
    .line 1409
    invoke-virtual {v0, v3}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v0

    .line 1413
    return-object v0

    .line 1414
    :pswitch_9
    const/4 v0, 0x0

    .line 1415
    move-object/from16 v1, p1

    .line 1416
    .line 1417
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1418
    .line 1419
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1420
    .line 1421
    .line 1422
    const-string v2, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    .line 1423
    .line 1424
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v1

    .line 1428
    const/4 v15, 0x1

    .line 1429
    :try_start_7
    invoke-interface {v1, v3, v4, v15}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1430
    .line 1431
    .line 1432
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1433
    .line 1434
    .line 1435
    move-result v2

    .line 1436
    const-string v3, "state"

    .line 1437
    .line 1438
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1439
    .line 1440
    .line 1441
    move-result v3

    .line 1442
    const-string/jumbo v4, "worker_class_name"

    .line 1443
    .line 1444
    .line 1445
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1446
    .line 1447
    .line 1448
    move-result v4

    .line 1449
    const-string v5, "input_merger_class_name"

    .line 1450
    .line 1451
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1452
    .line 1453
    .line 1454
    move-result v5

    .line 1455
    const-string v6, "input"

    .line 1456
    .line 1457
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1458
    .line 1459
    .line 1460
    move-result v6

    .line 1461
    const-string v7, "output"

    .line 1462
    .line 1463
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1464
    .line 1465
    .line 1466
    move-result v7

    .line 1467
    const-string v8, "initial_delay"

    .line 1468
    .line 1469
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1470
    .line 1471
    .line 1472
    move-result v8

    .line 1473
    const-string v9, "interval_duration"

    .line 1474
    .line 1475
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1476
    .line 1477
    .line 1478
    move-result v9

    .line 1479
    const-string v10, "flex_duration"

    .line 1480
    .line 1481
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1482
    .line 1483
    .line 1484
    move-result v10

    .line 1485
    const-string v11, "run_attempt_count"

    .line 1486
    .line 1487
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1488
    .line 1489
    .line 1490
    move-result v11

    .line 1491
    const-string v12, "backoff_policy"

    .line 1492
    .line 1493
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1494
    .line 1495
    .line 1496
    move-result v12

    .line 1497
    const-string v13, "backoff_delay_duration"

    .line 1498
    .line 1499
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1500
    .line 1501
    .line 1502
    move-result v13

    .line 1503
    const-string v14, "last_enqueue_time"

    .line 1504
    .line 1505
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1506
    .line 1507
    .line 1508
    move-result v14

    .line 1509
    const-string v0, "minimum_retention_duration"

    .line 1510
    .line 1511
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1512
    .line 1513
    .line 1514
    move-result v0

    .line 1515
    const-string v15, "schedule_requested_at"

    .line 1516
    .line 1517
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1518
    .line 1519
    .line 1520
    move-result v15

    .line 1521
    move/from16 p0, v15

    .line 1522
    .line 1523
    const-string v15, "run_in_foreground"

    .line 1524
    .line 1525
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1526
    .line 1527
    .line 1528
    move-result v15

    .line 1529
    move/from16 p1, v15

    .line 1530
    .line 1531
    const-string v15, "out_of_quota_policy"

    .line 1532
    .line 1533
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1534
    .line 1535
    .line 1536
    move-result v15

    .line 1537
    move/from16 v16, v15

    .line 1538
    .line 1539
    const-string v15, "period_count"

    .line 1540
    .line 1541
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1542
    .line 1543
    .line 1544
    move-result v15

    .line 1545
    move/from16 v17, v15

    .line 1546
    .line 1547
    const-string v15, "generation"

    .line 1548
    .line 1549
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1550
    .line 1551
    .line 1552
    move-result v15

    .line 1553
    move/from16 v18, v15

    .line 1554
    .line 1555
    const-string v15, "next_schedule_time_override"

    .line 1556
    .line 1557
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1558
    .line 1559
    .line 1560
    move-result v15

    .line 1561
    move/from16 v19, v15

    .line 1562
    .line 1563
    const-string v15, "next_schedule_time_override_generation"

    .line 1564
    .line 1565
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1566
    .line 1567
    .line 1568
    move-result v15

    .line 1569
    move/from16 v21, v15

    .line 1570
    .line 1571
    const-string v15, "stop_reason"

    .line 1572
    .line 1573
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1574
    .line 1575
    .line 1576
    move-result v15

    .line 1577
    move/from16 v22, v15

    .line 1578
    .line 1579
    const-string/jumbo v15, "trace_tag"

    .line 1580
    .line 1581
    .line 1582
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1583
    .line 1584
    .line 1585
    move-result v15

    .line 1586
    move/from16 v23, v15

    .line 1587
    .line 1588
    const-string v15, "backoff_on_system_interruptions"

    .line 1589
    .line 1590
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1591
    .line 1592
    .line 1593
    move-result v15

    .line 1594
    move/from16 v24, v15

    .line 1595
    .line 1596
    const-string v15, "required_network_type"

    .line 1597
    .line 1598
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1599
    .line 1600
    .line 1601
    move-result v15

    .line 1602
    move/from16 v25, v15

    .line 1603
    .line 1604
    const-string v15, "required_network_request"

    .line 1605
    .line 1606
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1607
    .line 1608
    .line 1609
    move-result v15

    .line 1610
    move/from16 v26, v15

    .line 1611
    .line 1612
    const-string v15, "requires_charging"

    .line 1613
    .line 1614
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1615
    .line 1616
    .line 1617
    move-result v15

    .line 1618
    move/from16 v27, v15

    .line 1619
    .line 1620
    const-string v15, "requires_device_idle"

    .line 1621
    .line 1622
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1623
    .line 1624
    .line 1625
    move-result v15

    .line 1626
    move/from16 v28, v15

    .line 1627
    .line 1628
    const-string v15, "requires_battery_not_low"

    .line 1629
    .line 1630
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1631
    .line 1632
    .line 1633
    move-result v15

    .line 1634
    move/from16 v29, v15

    .line 1635
    .line 1636
    const-string v15, "requires_storage_not_low"

    .line 1637
    .line 1638
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1639
    .line 1640
    .line 1641
    move-result v15

    .line 1642
    move/from16 v30, v15

    .line 1643
    .line 1644
    const-string/jumbo v15, "trigger_content_update_delay"

    .line 1645
    .line 1646
    .line 1647
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1648
    .line 1649
    .line 1650
    move-result v15

    .line 1651
    move/from16 v31, v15

    .line 1652
    .line 1653
    const-string/jumbo v15, "trigger_max_content_delay"

    .line 1654
    .line 1655
    .line 1656
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1657
    .line 1658
    .line 1659
    move-result v15

    .line 1660
    move/from16 v32, v15

    .line 1661
    .line 1662
    const-string v15, "content_uri_triggers"

    .line 1663
    .line 1664
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1665
    .line 1666
    .line 1667
    move-result v15

    .line 1668
    move/from16 v33, v15

    .line 1669
    .line 1670
    new-instance v15, Ljava/util/ArrayList;

    .line 1671
    .line 1672
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    .line 1674
    .line 1675
    :goto_21
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1676
    .line 1677
    .line 1678
    move-result v34

    .line 1679
    if-eqz v34, :cond_29

    .line 1680
    .line 1681
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v36

    .line 1685
    move/from16 v34, v14

    .line 1686
    .line 1687
    move-object/from16 v69, v15

    .line 1688
    .line 1689
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1690
    .line 1691
    .line 1692
    move-result-wide v14

    .line 1693
    long-to-int v14, v14

    .line 1694
    invoke-static {v14}, Lkotlin/TuplesKt;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v37

    .line 1698
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v38

    .line 1702
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v39

    .line 1706
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1707
    .line 1708
    .line 1709
    move-result-object v14

    .line 1710
    sget-object v15, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1711
    .line 1712
    invoke-static {v14}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v40

    .line 1716
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1717
    .line 1718
    .line 1719
    move-result-object v14

    .line 1720
    invoke-static {v14}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v41

    .line 1724
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1725
    .line 1726
    .line 1727
    move-result-wide v42

    .line 1728
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1729
    .line 1730
    .line 1731
    move-result-wide v44

    .line 1732
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1733
    .line 1734
    .line 1735
    move-result-wide v46

    .line 1736
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1737
    .line 1738
    .line 1739
    move-result-wide v14

    .line 1740
    long-to-int v14, v14

    .line 1741
    move v15, v2

    .line 1742
    move/from16 v70, v3

    .line 1743
    .line 1744
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1745
    .line 1746
    .line 1747
    move-result-wide v2

    .line 1748
    long-to-int v2, v2

    .line 1749
    invoke-static {v2}, Lkotlin/TuplesKt;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v50

    .line 1753
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1754
    .line 1755
    .line 1756
    move-result-wide v51

    .line 1757
    move/from16 v2, v34

    .line 1758
    .line 1759
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1760
    .line 1761
    .line 1762
    move-result-wide v53

    .line 1763
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1764
    .line 1765
    .line 1766
    move-result-wide v55

    .line 1767
    move/from16 v3, p0

    .line 1768
    .line 1769
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1770
    .line 1771
    .line 1772
    move-result-wide v57

    .line 1773
    move/from16 p0, v0

    .line 1774
    .line 1775
    move/from16 v34, v2

    .line 1776
    .line 1777
    move/from16 v0, p1

    .line 1778
    .line 1779
    move/from16 p1, v3

    .line 1780
    .line 1781
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1782
    .line 1783
    .line 1784
    move-result-wide v2

    .line 1785
    long-to-int v2, v2

    .line 1786
    if-eqz v2, :cond_20

    .line 1787
    .line 1788
    const/16 v59, 0x1

    .line 1789
    .line 1790
    :goto_22
    move/from16 v2, v16

    .line 1791
    .line 1792
    move/from16 v16, v4

    .line 1793
    .line 1794
    goto :goto_23

    .line 1795
    :cond_20
    const/16 v59, 0x0

    .line 1796
    .line 1797
    goto :goto_22

    .line 1798
    :goto_23
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1799
    .line 1800
    .line 1801
    move-result-wide v3

    .line 1802
    long-to-int v3, v3

    .line 1803
    invoke-static {v3}, Lkotlin/TuplesKt;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v60

    .line 1807
    move/from16 v3, v17

    .line 1808
    .line 1809
    move/from16 v17, v5

    .line 1810
    .line 1811
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1812
    .line 1813
    .line 1814
    move-result-wide v4

    .line 1815
    long-to-int v4, v4

    .line 1816
    move/from16 v71, v3

    .line 1817
    .line 1818
    move/from16 v5, v18

    .line 1819
    .line 1820
    move/from16 v18, v2

    .line 1821
    .line 1822
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1823
    .line 1824
    .line 1825
    move-result-wide v2

    .line 1826
    long-to-int v2, v2

    .line 1827
    move/from16 v3, v19

    .line 1828
    .line 1829
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1830
    .line 1831
    .line 1832
    move-result-wide v63

    .line 1833
    move/from16 v19, v0

    .line 1834
    .line 1835
    move/from16 v62, v2

    .line 1836
    .line 1837
    move/from16 v0, v21

    .line 1838
    .line 1839
    move/from16 v21, v3

    .line 1840
    .line 1841
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1842
    .line 1843
    .line 1844
    move-result-wide v2

    .line 1845
    long-to-int v2, v2

    .line 1846
    move/from16 v61, v4

    .line 1847
    .line 1848
    move/from16 v3, v22

    .line 1849
    .line 1850
    move/from16 v22, v5

    .line 1851
    .line 1852
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1853
    .line 1854
    .line 1855
    move-result-wide v4

    .line 1856
    long-to-int v4, v4

    .line 1857
    move/from16 v5, v23

    .line 1858
    .line 1859
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1860
    .line 1861
    .line 1862
    move-result v23

    .line 1863
    if-eqz v23, :cond_21

    .line 1864
    .line 1865
    move-object/from16 v67, v20

    .line 1866
    .line 1867
    :goto_24
    move/from16 v23, v0

    .line 1868
    .line 1869
    move/from16 v0, v24

    .line 1870
    .line 1871
    goto :goto_25

    .line 1872
    :cond_21
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v23

    .line 1876
    move-object/from16 v67, v23

    .line 1877
    .line 1878
    goto :goto_24

    .line 1879
    :goto_25
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1880
    .line 1881
    .line 1882
    move-result v24

    .line 1883
    if-eqz v24, :cond_22

    .line 1884
    .line 1885
    move/from16 v65, v2

    .line 1886
    .line 1887
    move/from16 v24, v3

    .line 1888
    .line 1889
    move-object/from16 v2, v20

    .line 1890
    .line 1891
    goto :goto_26

    .line 1892
    :cond_22
    move/from16 v65, v2

    .line 1893
    .line 1894
    move/from16 v24, v3

    .line 1895
    .line 1896
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1897
    .line 1898
    .line 1899
    move-result-wide v2

    .line 1900
    long-to-int v2, v2

    .line 1901
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v2

    .line 1905
    :goto_26
    if-eqz v2, :cond_24

    .line 1906
    .line 1907
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1908
    .line 1909
    .line 1910
    move-result v2

    .line 1911
    if-eqz v2, :cond_23

    .line 1912
    .line 1913
    const/4 v2, 0x1

    .line 1914
    goto :goto_27

    .line 1915
    :cond_23
    const/4 v2, 0x0

    .line 1916
    :goto_27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v2

    .line 1920
    move-object/from16 v68, v2

    .line 1921
    .line 1922
    :goto_28
    move/from16 v66, v4

    .line 1923
    .line 1924
    move/from16 v2, v25

    .line 1925
    .line 1926
    goto :goto_29

    .line 1927
    :catchall_7
    move-exception v0

    .line 1928
    goto/16 :goto_32

    .line 1929
    .line 1930
    :cond_24
    move-object/from16 v68, v20

    .line 1931
    .line 1932
    goto :goto_28

    .line 1933
    :goto_29
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1934
    .line 1935
    .line 1936
    move-result-wide v3

    .line 1937
    long-to-int v3, v3

    .line 1938
    invoke-static {v3}, Lkotlin/TuplesKt;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v74

    .line 1942
    move/from16 v3, v26

    .line 1943
    .line 1944
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1945
    .line 1946
    .line 1947
    move-result-object v4

    .line 1948
    invoke-static {v4}, Lkotlin/TuplesKt;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v73

    .line 1952
    move/from16 v25, v2

    .line 1953
    .line 1954
    move/from16 v26, v3

    .line 1955
    .line 1956
    move/from16 v4, v27

    .line 1957
    .line 1958
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1959
    .line 1960
    .line 1961
    move-result-wide v2

    .line 1962
    long-to-int v2, v2

    .line 1963
    if-eqz v2, :cond_25

    .line 1964
    .line 1965
    const/16 v75, 0x1

    .line 1966
    .line 1967
    :goto_2a
    move/from16 v27, v4

    .line 1968
    .line 1969
    move/from16 v2, v28

    .line 1970
    .line 1971
    goto :goto_2b

    .line 1972
    :cond_25
    const/16 v75, 0x0

    .line 1973
    .line 1974
    goto :goto_2a

    .line 1975
    :goto_2b
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1976
    .line 1977
    .line 1978
    move-result-wide v3

    .line 1979
    long-to-int v3, v3

    .line 1980
    if-eqz v3, :cond_26

    .line 1981
    .line 1982
    const/16 v76, 0x1

    .line 1983
    .line 1984
    :goto_2c
    move/from16 v28, v5

    .line 1985
    .line 1986
    move/from16 v3, v29

    .line 1987
    .line 1988
    goto :goto_2d

    .line 1989
    :cond_26
    const/16 v76, 0x0

    .line 1990
    .line 1991
    goto :goto_2c

    .line 1992
    :goto_2d
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1993
    .line 1994
    .line 1995
    move-result-wide v4

    .line 1996
    long-to-int v4, v4

    .line 1997
    if-eqz v4, :cond_27

    .line 1998
    .line 1999
    const/16 v77, 0x1

    .line 2000
    .line 2001
    :goto_2e
    move v5, v2

    .line 2002
    move/from16 v29, v3

    .line 2003
    .line 2004
    move/from16 v4, v30

    .line 2005
    .line 2006
    goto :goto_2f

    .line 2007
    :cond_27
    const/16 v77, 0x0

    .line 2008
    .line 2009
    goto :goto_2e

    .line 2010
    :goto_2f
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2011
    .line 2012
    .line 2013
    move-result-wide v2

    .line 2014
    long-to-int v2, v2

    .line 2015
    if-eqz v2, :cond_28

    .line 2016
    .line 2017
    const/16 v78, 0x1

    .line 2018
    .line 2019
    :goto_30
    move/from16 v2, v31

    .line 2020
    .line 2021
    goto :goto_31

    .line 2022
    :cond_28
    const/16 v78, 0x0

    .line 2023
    .line 2024
    goto :goto_30

    .line 2025
    :goto_31
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2026
    .line 2027
    .line 2028
    move-result-wide v79

    .line 2029
    move/from16 v3, v32

    .line 2030
    .line 2031
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2032
    .line 2033
    .line 2034
    move-result-wide v81

    .line 2035
    move/from16 v30, v0

    .line 2036
    .line 2037
    move/from16 v0, v33

    .line 2038
    .line 2039
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 2040
    .line 2041
    .line 2042
    move-result-object v31

    .line 2043
    invoke-static/range {v31 .. v31}, Lkotlin/TuplesKt;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v83

    .line 2047
    new-instance v48, Landroidx/work/Constraints;

    .line 2048
    .line 2049
    move-object/from16 v72, v48

    .line 2050
    .line 2051
    invoke-direct/range {v72 .. v83}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 2052
    .line 2053
    .line 2054
    move-object/from16 v48, v72

    .line 2055
    .line 2056
    new-instance v35, Landroidx/work/impl/model/WorkSpec;

    .line 2057
    .line 2058
    move/from16 v49, v14

    .line 2059
    .line 2060
    invoke-direct/range {v35 .. v68}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 2061
    .line 2062
    .line 2063
    move-object/from16 v14, v35

    .line 2064
    .line 2065
    move/from16 v33, v0

    .line 2066
    .line 2067
    move-object/from16 v0, v69

    .line 2068
    .line 2069
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 2070
    .line 2071
    .line 2072
    move/from16 v14, v30

    .line 2073
    .line 2074
    move/from16 v30, v4

    .line 2075
    .line 2076
    move/from16 v4, v16

    .line 2077
    .line 2078
    move/from16 v16, v18

    .line 2079
    .line 2080
    move/from16 v18, v22

    .line 2081
    .line 2082
    move/from16 v22, v24

    .line 2083
    .line 2084
    move/from16 v24, v14

    .line 2085
    .line 2086
    move/from16 v31, v2

    .line 2087
    .line 2088
    move/from16 v32, v3

    .line 2089
    .line 2090
    move v2, v15

    .line 2091
    move/from16 v14, v34

    .line 2092
    .line 2093
    move/from16 v3, v70

    .line 2094
    .line 2095
    move-object v15, v0

    .line 2096
    move/from16 v0, p0

    .line 2097
    .line 2098
    move/from16 p0, p1

    .line 2099
    .line 2100
    move/from16 p1, v19

    .line 2101
    .line 2102
    move/from16 v19, v21

    .line 2103
    .line 2104
    move/from16 v21, v23

    .line 2105
    .line 2106
    move/from16 v23, v28

    .line 2107
    .line 2108
    move/from16 v28, v5

    .line 2109
    .line 2110
    move/from16 v5, v17

    .line 2111
    .line 2112
    move/from16 v17, v71

    .line 2113
    .line 2114
    goto/16 :goto_21

    .line 2115
    .line 2116
    :cond_29
    move-object v0, v15

    .line 2117
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2118
    .line 2119
    .line 2120
    return-object v0

    .line 2121
    :goto_32
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2122
    .line 2123
    .line 2124
    throw v0

    .line 2125
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
