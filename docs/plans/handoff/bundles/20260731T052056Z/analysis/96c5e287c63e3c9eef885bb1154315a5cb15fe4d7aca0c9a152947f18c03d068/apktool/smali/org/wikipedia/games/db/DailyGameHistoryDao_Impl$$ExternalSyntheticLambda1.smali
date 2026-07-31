.class public final synthetic Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(IIIIILjava/lang/String;)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iput-object p6, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iput p3, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iput p4, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->f$5:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "status"

    .line 6
    .line 7
    const-string v3, "gameData"

    .line 8
    .line 9
    const-string v4, "playType"

    .line 10
    .line 11
    const-string v5, "score"

    .line 12
    .line 13
    const-string v6, "day"

    .line 14
    .line 15
    const-string v7, "month"

    .line 16
    .line 17
    const-string/jumbo v8, "year"

    .line 18
    .line 19
    .line 20
    const-string v9, "language"

    .line 21
    .line 22
    const-string v10, "gameName"

    .line 23
    .line 24
    const-string v11, "id"

    .line 25
    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    iget v13, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->f$5:I

    .line 29
    .line 30
    iget v14, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->f$4:I

    .line 31
    .line 32
    iget v15, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->f$3:I

    .line 33
    .line 34
    iget-object v12, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 35
    .line 36
    iget v0, v0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;->f$1:I

    .line 37
    .line 38
    move/from16 v21, v1

    .line 39
    .line 40
    const-string v1, "SELECT * FROM DailyGameHistory WHERE gameName = ? AND language = ? AND year = ? AND month = ? AND day = ?"

    .line 41
    .line 42
    packed-switch v21, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    move-object/from16 v21, v2

    .line 46
    .line 47
    move-object/from16 v2, p1

    .line 48
    .line 49
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object/from16 v22, v3

    .line 59
    .line 60
    int-to-long v2, v0

    .line 61
    const/4 v0, 0x1

    .line 62
    :try_start_0
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    invoke-interface {v1, v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    int-to-long v2, v15

    .line 70
    const/4 v0, 0x3

    .line 71
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 72
    .line 73
    .line 74
    int-to-long v2, v14

    .line 75
    const/4 v0, 0x4

    .line 76
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 77
    .line 78
    .line 79
    int-to-long v2, v13

    .line 80
    const/4 v0, 0x5

    .line 81
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    move-object/from16 v9, v22

    .line 117
    .line 118
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    move-object/from16 v10, v21

    .line 123
    .line 124
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    const-string v11, "currentQuestionIndex"

    .line 129
    .line 130
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    if-eqz v12, :cond_1

    .line 139
    .line 140
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 141
    .line 142
    .line 143
    move-result-wide v12

    .line 144
    long-to-int v0, v12

    .line 145
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 146
    .line 147
    .line 148
    move-result-wide v12

    .line 149
    long-to-int v2, v12

    .line 150
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v20

    .line 154
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 155
    .line 156
    .line 157
    move-result-wide v12

    .line 158
    long-to-int v3, v12

    .line 159
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    long-to-int v7, v7

    .line 164
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 165
    .line 166
    .line 167
    move-result-wide v12

    .line 168
    long-to-int v6, v12

    .line 169
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 170
    .line 171
    .line 172
    move-result-wide v12

    .line 173
    long-to-int v5, v12

    .line 174
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 175
    .line 176
    .line 177
    move-result-wide v12

    .line 178
    long-to-int v4, v12

    .line 179
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-eqz v8, :cond_0

    .line 184
    .line 185
    :goto_0
    move-object/from16 v26, v16

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_0
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v16

    .line 192
    goto :goto_0

    .line 193
    :goto_1
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 194
    .line 195
    .line 196
    move-result-wide v8

    .line 197
    long-to-int v8, v8

    .line 198
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 199
    .line 200
    .line 201
    move-result-wide v9

    .line 202
    long-to-int v9, v9

    .line 203
    new-instance v17, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 204
    .line 205
    move/from16 v18, v0

    .line 206
    .line 207
    move/from16 v19, v2

    .line 208
    .line 209
    move/from16 v21, v3

    .line 210
    .line 211
    move/from16 v25, v4

    .line 212
    .line 213
    move/from16 v24, v5

    .line 214
    .line 215
    move/from16 v23, v6

    .line 216
    .line 217
    move/from16 v22, v7

    .line 218
    .line 219
    move/from16 v27, v8

    .line 220
    .line 221
    move/from16 v28, v9

    .line 222
    .line 223
    invoke-direct/range {v17 .. v28}, Lorg/wikipedia/games/db/DailyGameHistory;-><init>(IILjava/lang/String;IIIIILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .line 225
    .line 226
    move-object/from16 v16, v17

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    goto :goto_3

    .line 231
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 232
    .line 233
    .line 234
    return-object v16

    .line 235
    :goto_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :pswitch_0
    move-object/from16 v21, v2

    .line 240
    .line 241
    move-object/from16 v2, p1

    .line 242
    .line 243
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-interface {v2, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    move-object/from16 v22, v3

    .line 253
    .line 254
    int-to-long v2, v0

    .line 255
    const/4 v0, 0x1

    .line 256
    :try_start_1
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 257
    .line 258
    .line 259
    const/4 v0, 0x2

    .line 260
    invoke-interface {v1, v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    int-to-long v2, v15

    .line 264
    const/4 v0, 0x3

    .line 265
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 266
    .line 267
    .line 268
    int-to-long v2, v14

    .line 269
    const/4 v0, 0x4

    .line 270
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 271
    .line 272
    .line 273
    int-to-long v2, v13

    .line 274
    const/4 v0, 0x5

    .line 275
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 276
    .line 277
    .line 278
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    move-object/from16 v9, v22

    .line 311
    .line 312
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    move-object/from16 v10, v21

    .line 317
    .line 318
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    const-string v11, "currentQuestionIndex"

    .line 323
    .line 324
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    if-eqz v12, :cond_3

    .line 333
    .line 334
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 335
    .line 336
    .line 337
    move-result-wide v12

    .line 338
    long-to-int v0, v12

    .line 339
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 340
    .line 341
    .line 342
    move-result-wide v12

    .line 343
    long-to-int v2, v12

    .line 344
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v20

    .line 348
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 349
    .line 350
    .line 351
    move-result-wide v12

    .line 352
    long-to-int v3, v12

    .line 353
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 354
    .line 355
    .line 356
    move-result-wide v7

    .line 357
    long-to-int v7, v7

    .line 358
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 359
    .line 360
    .line 361
    move-result-wide v12

    .line 362
    long-to-int v6, v12

    .line 363
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 364
    .line 365
    .line 366
    move-result-wide v12

    .line 367
    long-to-int v5, v12

    .line 368
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 369
    .line 370
    .line 371
    move-result-wide v12

    .line 372
    long-to-int v4, v12

    .line 373
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    if-eqz v8, :cond_2

    .line 378
    .line 379
    :goto_4
    move-object/from16 v26, v16

    .line 380
    .line 381
    goto :goto_5

    .line 382
    :cond_2
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v16

    .line 386
    goto :goto_4

    .line 387
    :goto_5
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 388
    .line 389
    .line 390
    move-result-wide v8

    .line 391
    long-to-int v8, v8

    .line 392
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 393
    .line 394
    .line 395
    move-result-wide v9

    .line 396
    long-to-int v9, v9

    .line 397
    new-instance v17, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 398
    .line 399
    move/from16 v18, v0

    .line 400
    .line 401
    move/from16 v19, v2

    .line 402
    .line 403
    move/from16 v21, v3

    .line 404
    .line 405
    move/from16 v25, v4

    .line 406
    .line 407
    move/from16 v24, v5

    .line 408
    .line 409
    move/from16 v23, v6

    .line 410
    .line 411
    move/from16 v22, v7

    .line 412
    .line 413
    move/from16 v27, v8

    .line 414
    .line 415
    move/from16 v28, v9

    .line 416
    .line 417
    invoke-direct/range {v17 .. v28}, Lorg/wikipedia/games/db/DailyGameHistory;-><init>(IILjava/lang/String;IIIIILjava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    .line 419
    .line 420
    move-object/from16 v16, v17

    .line 421
    .line 422
    goto :goto_6

    .line 423
    :catchall_1
    move-exception v0

    .line 424
    goto :goto_7

    .line 425
    :cond_3
    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 426
    .line 427
    .line 428
    return-object v16

    .line 429
    :goto_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 430
    .line 431
    .line 432
    throw v0

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
