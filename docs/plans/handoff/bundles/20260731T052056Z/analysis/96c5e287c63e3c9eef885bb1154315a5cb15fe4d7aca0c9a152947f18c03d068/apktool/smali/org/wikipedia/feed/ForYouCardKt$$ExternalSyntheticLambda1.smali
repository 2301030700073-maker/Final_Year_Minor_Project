.class public final synthetic Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 7
    iput p1, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-string/jumbo v1, "topicId"

    .line 6
    .line 7
    .line 8
    const-string v2, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    .line 9
    .line 10
    const-string v3, "status"

    .line 11
    .line 12
    const-string v4, "lang"

    .line 13
    .line 14
    const-string v5, "id"

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, 0x0

    .line 19
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move-object/from16 v0, p1

    .line 25
    .line 26
    check-cast v0, Landroidx/paging/CombinedLoadStates;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_0
    const-string v0, "action=discussiontoolspageinfo"

    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string v2, "SELECT * FROM OfflineObject WHERE url LIKE \'%\' || ? || \'%\'"

    .line 41
    .line 42
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :try_start_0
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const-string/jumbo v2, "url"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const-string v5, "path"

    .line 65
    .line 66
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const-string/jumbo v6, "usedByStr"

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    new-instance v7, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_0

    .line 91
    .line 92
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    long-to-int v11, v8

    .line 97
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v8

    .line 113
    long-to-int v12, v8

    .line 114
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v16

    .line 118
    new-instance v10, Lorg/wikipedia/offline/db/OfflineObject;

    .line 119
    .line 120
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/offline/db/OfflineObject;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto :goto_1

    .line 129
    :cond_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 130
    .line 131
    .line 132
    return-object v7

    .line 133
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :pswitch_1
    move-object/from16 v0, p1

    .line 138
    .line 139
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    const-string v1, "DELETE FROM Notification"

    .line 145
    .line 146
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :try_start_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .line 152
    .line 153
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 154
    .line 155
    .line 156
    return-object v9

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :pswitch_2
    move-object/from16 v0, p1

    .line 163
    .line 164
    check-cast v0, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 170
    .line 171
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    return-object v0

    .line 180
    :pswitch_3
    move-object/from16 v0, p1

    .line 181
    .line 182
    check-cast v0, Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    const-string v1, "test"

    .line 188
    .line 189
    invoke-static {v0, v1, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    return-object v0

    .line 198
    :pswitch_4
    move-object/from16 v0, p1

    .line 199
    .line 200
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    const-string v1, "SELECT * FROM HistoryEntry ORDER BY timestamp DESC LIMIT 1"

    .line 206
    .line 207
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    :try_start_2
    const-string v0, "authority"

    .line 212
    .line 213
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    const-string v4, "apiTitle"

    .line 222
    .line 223
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    const-string v7, "displayTitle"

    .line 228
    .line 229
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    const-string v8, "namespace"

    .line 238
    .line 239
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    const-string v9, "timestamp"

    .line 244
    .line 245
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    const-string v10, "source"

    .line 250
    .line 251
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    const-string v11, "prevId"

    .line 256
    .line 257
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    if-eqz v12, :cond_3

    .line 266
    .line 267
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v14

    .line 271
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v15

    .line 275
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v16

    .line 279
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v17

    .line 283
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 284
    .line 285
    .line 286
    move-result-wide v18

    .line 287
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v20

    .line 291
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_1

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_1
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 299
    .line 300
    .line 301
    move-result-wide v3

    .line 302
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    :goto_2
    invoke-static {v6}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 307
    .line 308
    .line 309
    move-result-object v21

    .line 310
    if-eqz v21, :cond_2

    .line 311
    .line 312
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 313
    .line 314
    .line 315
    move-result-wide v2

    .line 316
    long-to-int v0, v2

    .line 317
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v23

    .line 321
    new-instance v13, Lorg/wikipedia/history/HistoryEntry;

    .line 322
    .line 323
    move/from16 v22, v0

    .line 324
    .line 325
    invoke-direct/range {v13 .. v24}, Lorg/wikipedia/history/HistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;IJ)V

    .line 326
    .line 327
    .line 328
    move-object v6, v13

    .line 329
    goto :goto_3

    .line 330
    :catchall_2
    move-exception v0

    .line 331
    goto :goto_4

    .line 332
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 333
    .line 334
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 338
    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 339
    .line 340
    .line 341
    return-object v6

    .line 342
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    :pswitch_5
    move-object/from16 v0, p1

    .line 347
    .line 348
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    const-string v1, "SELECT COUNT(*) FROM HistoryEntry"

    .line 354
    .line 355
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    :try_start_3
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_4

    .line 364
    .line 365
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 366
    .line 367
    .line 368
    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 369
    long-to-int v8, v2

    .line 370
    goto :goto_5

    .line 371
    :catchall_3
    move-exception v0

    .line 372
    goto :goto_6

    .line 373
    :cond_4
    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 374
    .line 375
    .line 376
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    return-object v0

    .line 381
    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 382
    .line 383
    .line 384
    throw v0

    .line 385
    :pswitch_6
    move-object/from16 v0, p1

    .line 386
    .line 387
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    const-string v1, "SELECT EXISTS(SELECT 1 FROM HistoryEntry)"

    .line 393
    .line 394
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    :try_start_4
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-eqz v0, :cond_6

    .line 403
    .line 404
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 405
    .line 406
    .line 407
    move-result-wide v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 408
    long-to-int v0, v2

    .line 409
    if-eqz v0, :cond_5

    .line 410
    .line 411
    goto :goto_7

    .line 412
    :cond_5
    move v7, v8

    .line 413
    :goto_7
    move v8, v7

    .line 414
    goto :goto_8

    .line 415
    :catchall_4
    move-exception v0

    .line 416
    goto :goto_9

    .line 417
    :cond_6
    :goto_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 418
    .line 419
    .line 420
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    return-object v0

    .line 425
    :goto_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 426
    .line 427
    .line 428
    throw v0

    .line 429
    :pswitch_7
    move-object/from16 v0, p1

    .line 430
    .line 431
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    const-string v1, "DELETE FROM HistoryEntry"

    .line 437
    .line 438
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    :try_start_5
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 443
    .line 444
    .line 445
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 446
    .line 447
    .line 448
    return-object v9

    .line 449
    :catchall_5
    move-exception v0

    .line 450
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 451
    .line 452
    .line 453
    throw v0

    .line 454
    :pswitch_8
    move-object/from16 v0, p1

    .line 455
    .line 456
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    const-string v1, "SELECT * FROM DailyGameHistory ORDER BY year DESC, month DESC, day DESC, id DESC LIMIT 1"

    .line 462
    .line 463
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    :try_start_6
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    const-string v2, "gameName"

    .line 472
    .line 473
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    const-string v4, "language"

    .line 478
    .line 479
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    const-string/jumbo v5, "year"

    .line 484
    .line 485
    .line 486
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    const-string v7, "month"

    .line 491
    .line 492
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    move-result v7

    .line 496
    const-string v8, "day"

    .line 497
    .line 498
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    const-string v9, "score"

    .line 503
    .line 504
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    move-result v9

    .line 508
    const-string v10, "playType"

    .line 509
    .line 510
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    move-result v10

    .line 514
    const-string v11, "gameData"

    .line 515
    .line 516
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move-result v11

    .line 520
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    const-string v12, "currentQuestionIndex"

    .line 525
    .line 526
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    move-result v12

    .line 530
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 531
    .line 532
    .line 533
    move-result v13

    .line 534
    if-eqz v13, :cond_8

    .line 535
    .line 536
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 537
    .line 538
    .line 539
    move-result-wide v13

    .line 540
    long-to-int v0, v13

    .line 541
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 542
    .line 543
    .line 544
    move-result-wide v13

    .line 545
    long-to-int v2, v13

    .line 546
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v18

    .line 550
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 551
    .line 552
    .line 553
    move-result-wide v4

    .line 554
    long-to-int v4, v4

    .line 555
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 556
    .line 557
    .line 558
    move-result-wide v13

    .line 559
    long-to-int v5, v13

    .line 560
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 561
    .line 562
    .line 563
    move-result-wide v7

    .line 564
    long-to-int v7, v7

    .line 565
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 566
    .line 567
    .line 568
    move-result-wide v8

    .line 569
    long-to-int v8, v8

    .line 570
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 571
    .line 572
    .line 573
    move-result-wide v9

    .line 574
    long-to-int v9, v9

    .line 575
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 576
    .line 577
    .line 578
    move-result v10

    .line 579
    if-eqz v10, :cond_7

    .line 580
    .line 581
    :goto_a
    move-object/from16 v24, v6

    .line 582
    .line 583
    goto :goto_b

    .line 584
    :cond_7
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    goto :goto_a

    .line 589
    :goto_b
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 590
    .line 591
    .line 592
    move-result-wide v10

    .line 593
    long-to-int v3, v10

    .line 594
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 595
    .line 596
    .line 597
    move-result-wide v10

    .line 598
    long-to-int v6, v10

    .line 599
    new-instance v15, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 600
    .line 601
    move/from16 v16, v0

    .line 602
    .line 603
    move/from16 v17, v2

    .line 604
    .line 605
    move/from16 v25, v3

    .line 606
    .line 607
    move/from16 v19, v4

    .line 608
    .line 609
    move/from16 v20, v5

    .line 610
    .line 611
    move/from16 v26, v6

    .line 612
    .line 613
    move/from16 v21, v7

    .line 614
    .line 615
    move/from16 v22, v8

    .line 616
    .line 617
    move/from16 v23, v9

    .line 618
    .line 619
    invoke-direct/range {v15 .. v26}, Lorg/wikipedia/games/db/DailyGameHistory;-><init>(IILjava/lang/String;IIIIILjava/lang/String;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 620
    .line 621
    .line 622
    move-object v6, v15

    .line 623
    goto :goto_c

    .line 624
    :catchall_6
    move-exception v0

    .line 625
    goto :goto_d

    .line 626
    :cond_8
    :goto_c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 627
    .line 628
    .line 629
    return-object v6

    .line 630
    :goto_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 631
    .line 632
    .line 633
    throw v0

    .line 634
    :pswitch_9
    move-object/from16 v0, p1

    .line 635
    .line 636
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 637
    .line 638
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    .line 640
    .line 641
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageProps:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    .line 642
    .line 643
    if-eqz v0, :cond_9

    .line 644
    .line 645
    iget-object v6, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->disambiguation:Ljava/lang/String;

    .line 646
    .line 647
    :cond_9
    if-nez v6, :cond_a

    .line 648
    .line 649
    goto :goto_e

    .line 650
    :cond_a
    move v7, v8

    .line 651
    :goto_e
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    return-object v0

    .line 656
    :pswitch_a
    move-object/from16 v0, p1

    .line 657
    .line 658
    check-cast v0, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 661
    .line 662
    .line 663
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;->topic:Lorg/wikipedia/topics/ArticleTopic;

    .line 664
    .line 665
    iget-object v0, v0, Lorg/wikipedia/topics/ArticleTopic;->topicId:Ljava/lang/String;

    .line 666
    .line 667
    return-object v0

    .line 668
    :pswitch_b
    move-object/from16 v0, p1

    .line 669
    .line 670
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 671
    .line 672
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    return-object v0

    .line 680
    :pswitch_c
    move-object/from16 v0, p1

    .line 681
    .line 682
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-nez v1, :cond_c

    .line 692
    .line 693
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    sget-object v1, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 698
    .line 699
    if-eq v0, v1, :cond_b

    .line 700
    .line 701
    goto :goto_f

    .line 702
    :cond_b
    move v7, v8

    .line 703
    :cond_c
    :goto_f
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    return-object v0

    .line 708
    :pswitch_d
    move-object/from16 v0, p1

    .line 709
    .line 710
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 711
    .line 712
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    const-string v1, "DELETE FROM InterestTopic"

    .line 716
    .line 717
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    :try_start_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 722
    .line 723
    .line 724
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 725
    .line 726
    .line 727
    return-object v9

    .line 728
    :catchall_7
    move-exception v0

    .line 729
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 730
    .line 731
    .line 732
    throw v0

    .line 733
    :pswitch_e
    move-object/from16 v0, p1

    .line 734
    .line 735
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 736
    .line 737
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 738
    .line 739
    .line 740
    const-string v1, "SELECT EXISTS(SELECT 1 FROM InterestTopic)"

    .line 741
    .line 742
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    :try_start_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 747
    .line 748
    .line 749
    move-result v0

    .line 750
    if-eqz v0, :cond_e

    .line 751
    .line 752
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 753
    .line 754
    .line 755
    move-result-wide v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 756
    long-to-int v0, v2

    .line 757
    if-eqz v0, :cond_d

    .line 758
    .line 759
    goto :goto_10

    .line 760
    :cond_d
    move v7, v8

    .line 761
    :goto_10
    move v8, v7

    .line 762
    goto :goto_11

    .line 763
    :catchall_8
    move-exception v0

    .line 764
    goto :goto_12

    .line 765
    :cond_e
    :goto_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 766
    .line 767
    .line 768
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    return-object v0

    .line 773
    :goto_12
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 774
    .line 775
    .line 776
    throw v0

    .line 777
    :pswitch_f
    move-object/from16 v0, p1

    .line 778
    .line 779
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 780
    .line 781
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    const-string v2, "SELECT * FROM InterestTopic"

    .line 785
    .line 786
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    :try_start_9
    invoke-static {v2, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    new-instance v1, Ljava/util/ArrayList;

    .line 795
    .line 796
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .line 798
    .line 799
    :goto_13
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 800
    .line 801
    .line 802
    move-result v3

    .line 803
    if-eqz v3, :cond_f

    .line 804
    .line 805
    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    new-instance v4, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 810
    .line 811
    invoke-direct {v4, v3}, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;-><init>(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 815
    .line 816
    .line 817
    goto :goto_13

    .line 818
    :catchall_9
    move-exception v0

    .line 819
    goto :goto_14

    .line 820
    :cond_f
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 821
    .line 822
    .line 823
    return-object v1

    .line 824
    :goto_14
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 825
    .line 826
    .line 827
    throw v0

    .line 828
    :pswitch_10
    move-object/from16 v0, p1

    .line 829
    .line 830
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 831
    .line 832
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 833
    .line 834
    .line 835
    const-string v2, "SELECT * FROM InterestTopic ORDER BY RANDOM()"

    .line 836
    .line 837
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 838
    .line 839
    .line 840
    move-result-object v2

    .line 841
    :try_start_a
    invoke-static {v2, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 842
    .line 843
    .line 844
    move-result v0

    .line 845
    new-instance v1, Ljava/util/ArrayList;

    .line 846
    .line 847
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .line 849
    .line 850
    :goto_15
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    if-eqz v3, :cond_10

    .line 855
    .line 856
    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v3

    .line 860
    new-instance v4, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 861
    .line 862
    invoke-direct {v4, v3}, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;-><init>(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 866
    .line 867
    .line 868
    goto :goto_15

    .line 869
    :catchall_a
    move-exception v0

    .line 870
    goto :goto_16

    .line 871
    :cond_10
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 872
    .line 873
    .line 874
    return-object v1

    .line 875
    :goto_16
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 876
    .line 877
    .line 878
    throw v0

    .line 879
    :pswitch_11
    move-object/from16 v0, p1

    .line 880
    .line 881
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 882
    .line 883
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    .line 885
    .line 886
    const-string v1, "SELECT EXISTS(SELECT 1 FROM InterestArticle)"

    .line 887
    .line 888
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    :try_start_b
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 893
    .line 894
    .line 895
    move-result v0

    .line 896
    if-eqz v0, :cond_12

    .line 897
    .line 898
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 899
    .line 900
    .line 901
    move-result-wide v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 902
    long-to-int v0, v2

    .line 903
    if-eqz v0, :cond_11

    .line 904
    .line 905
    goto :goto_17

    .line 906
    :cond_11
    move v7, v8

    .line 907
    :goto_17
    move v8, v7

    .line 908
    goto :goto_18

    .line 909
    :catchall_b
    move-exception v0

    .line 910
    goto :goto_19

    .line 911
    :cond_12
    :goto_18
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 912
    .line 913
    .line 914
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    return-object v0

    .line 919
    :goto_19
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 920
    .line 921
    .line 922
    throw v0

    .line 923
    :pswitch_12
    move-object/from16 v0, p1

    .line 924
    .line 925
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 926
    .line 927
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    .line 929
    .line 930
    const-string v1, "DELETE FROM InterestArticle"

    .line 931
    .line 932
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    :try_start_c
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 937
    .line 938
    .line 939
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 940
    .line 941
    .line 942
    return-object v9

    .line 943
    :catchall_c
    move-exception v0

    .line 944
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 945
    .line 946
    .line 947
    throw v0

    .line 948
    :pswitch_13
    move-object/from16 v0, p1

    .line 949
    .line 950
    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 951
    .line 952
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    .line 954
    .line 955
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 956
    .line 957
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 962
    .line 963
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    sget-object v2, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 968
    .line 969
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 970
    .line 971
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getHomeLanguageCode()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v3

    .line 975
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 976
    .line 977
    .line 978
    invoke-static {v3}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 979
    .line 980
    .line 981
    move-result-object v9

    .line 982
    new-instance v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 983
    .line 984
    new-instance v4, Lretrofit2/Retrofit;

    .line 985
    .line 986
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->topicInterestDao()Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;

    .line 987
    .line 988
    .line 989
    move-result-object v5

    .line 990
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->articleInterestDao()Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 991
    .line 992
    .line 993
    move-result-object v6

    .line 994
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->historyEntryWithImageDao()Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 995
    .line 996
    .line 997
    move-result-object v7

    .line 998
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 999
    .line 1000
    .line 1001
    move-result-object v8

    .line 1002
    invoke-direct/range {v4 .. v9}, Lretrofit2/Retrofit;-><init>(Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 1003
    .line 1004
    .line 1005
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    .line 1006
    .line 1007
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->historyEntryWithImageDao()Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1012
    .line 1013
    .line 1014
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1015
    .line 1016
    .line 1017
    iput-object v1, v3, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 1018
    .line 1019
    iput-object v0, v3, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 1020
    .line 1021
    iput-object v9, v3, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 1022
    .line 1023
    invoke-direct {v2, v4, v3}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;-><init>(Lretrofit2/Retrofit;Lokhttp3/MultipartBody$Builder;)V

    .line 1024
    .line 1025
    .line 1026
    return-object v2

    .line 1027
    :pswitch_14
    move-object/from16 v0, p1

    .line 1028
    .line 1029
    check-cast v0, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 1030
    .line 1031
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1032
    .line 1033
    .line 1034
    iget-object v0, v0, Lorg/wikipedia/readinglist/database/RecommendedPage;->apiTitle:Ljava/lang/String;

    .line 1035
    .line 1036
    return-object v0

    .line 1037
    :pswitch_15
    move-object/from16 v0, p1

    .line 1038
    .line 1039
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 1040
    .line 1041
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1042
    .line 1043
    .line 1044
    return-object v9

    .line 1045
    :pswitch_16
    move-object/from16 v0, p1

    .line 1046
    .line 1047
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 1048
    .line 1049
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1050
    .line 1051
    .line 1052
    return-object v9

    .line 1053
    :pswitch_17
    move-object/from16 v0, p1

    .line 1054
    .line 1055
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1056
    .line 1057
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    .line 1059
    .line 1060
    const-string v1, "SELECT * FROM EditSummary ORDER BY lastUsed DESC"

    .line 1061
    .line 1062
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    :try_start_d
    const-string v0, "summary"

    .line 1067
    .line 1068
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1069
    .line 1070
    .line 1071
    move-result v0

    .line 1072
    const-string v3, "lastUsed"

    .line 1073
    .line 1074
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1075
    .line 1076
    .line 1077
    move-result v3

    .line 1078
    new-instance v4, Ljava/util/ArrayList;

    .line 1079
    .line 1080
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    :goto_1a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v5

    .line 1087
    if-eqz v5, :cond_15

    .line 1088
    .line 1089
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v5

    .line 1093
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v7

    .line 1097
    if-eqz v7, :cond_13

    .line 1098
    .line 1099
    move-object v7, v6

    .line 1100
    goto :goto_1b

    .line 1101
    :cond_13
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1102
    .line 1103
    .line 1104
    move-result-wide v7

    .line 1105
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v7

    .line 1109
    :goto_1b
    invoke-static {v7}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v7

    .line 1113
    if-eqz v7, :cond_14

    .line 1114
    .line 1115
    new-instance v8, Lorg/wikipedia/edit/db/EditSummary;

    .line 1116
    .line 1117
    invoke-direct {v8, v5, v7}, Lorg/wikipedia/edit/db/EditSummary;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    .line 1122
    .line 1123
    goto :goto_1a

    .line 1124
    :catchall_d
    move-exception v0

    .line 1125
    goto :goto_1c

    .line 1126
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1127
    .line 1128
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 1132
    :cond_15
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1133
    .line 1134
    .line 1135
    return-object v4

    .line 1136
    :goto_1c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1137
    .line 1138
    .line 1139
    throw v0

    .line 1140
    :pswitch_18
    move-object/from16 v0, p1

    .line 1141
    .line 1142
    check-cast v0, Ljava/lang/Number;

    .line 1143
    .line 1144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    return-object v0

    .line 1152
    :pswitch_19
    move-object/from16 v0, p1

    .line 1153
    .line 1154
    check-cast v0, Ljava/lang/String;

    .line 1155
    .line 1156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1157
    .line 1158
    .line 1159
    return-object v9

    .line 1160
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1161
    .line 1162
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1163
    .line 1164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1165
    .line 1166
    .line 1167
    const-string v1, "DELETE FROM Category"

    .line 1168
    .line 1169
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    :try_start_e
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 1174
    .line 1175
    .line 1176
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1177
    .line 1178
    .line 1179
    return-object v9

    .line 1180
    :catchall_e
    move-exception v0

    .line 1181
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1182
    .line 1183
    .line 1184
    throw v0

    .line 1185
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1186
    .line 1187
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1188
    .line 1189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1190
    .line 1191
    .line 1192
    const-string v1, "SELECT year, month, title, lang, SUM (count) AS count FROM Category WHERE year = ? GROUP BY title, lang ORDER BY count DESC LIMIT ?"

    .line 1193
    .line 1194
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    const-wide/16 v2, 0x7e9

    .line 1199
    .line 1200
    :try_start_f
    invoke-interface {v1, v2, v3, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1201
    .line 1202
    .line 1203
    const-wide/16 v2, 0x32

    .line 1204
    .line 1205
    const/4 v0, 0x2

    .line 1206
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1207
    .line 1208
    .line 1209
    new-instance v2, Ljava/util/ArrayList;

    .line 1210
    .line 1211
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    .line 1213
    .line 1214
    :goto_1d
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1215
    .line 1216
    .line 1217
    move-result v3

    .line 1218
    if-eqz v3, :cond_16

    .line 1219
    .line 1220
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1221
    .line 1222
    .line 1223
    move-result-wide v3

    .line 1224
    long-to-int v10, v3

    .line 1225
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1226
    .line 1227
    .line 1228
    move-result-wide v3

    .line 1229
    long-to-int v11, v3

    .line 1230
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v13

    .line 1234
    const/4 v3, 0x3

    .line 1235
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v14

    .line 1239
    const/4 v3, 0x4

    .line 1240
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1241
    .line 1242
    .line 1243
    move-result-wide v3

    .line 1244
    long-to-int v12, v3

    .line 1245
    new-instance v9, Lorg/wikipedia/categories/db/Category;

    .line 1246
    .line 1247
    invoke-direct/range {v9 .. v14}, Lorg/wikipedia/categories/db/Category;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 1251
    .line 1252
    .line 1253
    goto :goto_1d

    .line 1254
    :catchall_f
    move-exception v0

    .line 1255
    goto :goto_1e

    .line 1256
    :cond_16
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1257
    .line 1258
    .line 1259
    return-object v2

    .line 1260
    :goto_1e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1261
    .line 1262
    .line 1263
    throw v0

    .line 1264
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1265
    .line 1266
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 1267
    .line 1268
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1269
    .line 1270
    .line 1271
    return-object v9

    .line 1272
    nop

    .line 1273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
