.class public final synthetic Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;->f$0:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v1, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v8, "send_state"

    .line 6
    .line 7
    const-string v3, "outbox_state"

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    const/4 v10, 0x0

    .line 11
    iget-wide v11, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;->f$0:J

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string v0, "uid"

    .line 17
    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const-string v1, "messages"

    .line 33
    .line 34
    const-string v3, "id = ?"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v0, p1

    .line 38
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object v2, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 57
    .line 58
    .line 59
    return-object v10

    .line 60
    :goto_1
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :catchall_1
    move-exception v0

    .line 62
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :pswitch_0
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    filled-new-array {v1}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "SELECT uid FROM messages WHERE empty = 0 AND deleted = 0 AND folder_id = ? AND uid NOT LIKE \'K9LOCAL:%\'"

    .line 75
    .line 76
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :try_start_2
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 83
    .line 84
    .line 85
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_2
    move-exception v0

    .line 103
    move-object v2, v0

    .line 104
    goto :goto_3

    .line 105
    :cond_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :goto_3
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 110
    :catchall_3
    move-exception v0

    .line 111
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :pswitch_1
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    filled-new-array {v1}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v2, "SELECT uid, date FROM messages WHERE empty = 0 AND deleted = 0 AND folder_id = ? AND uid NOT LIKE \'K9LOCAL:%\'"

    .line 124
    .line 125
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :try_start_4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const/4 v3, 0x1

    .line 145
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_2

    .line 150
    .line 151
    move-object v3, v10

    .line 152
    goto :goto_5

    .line 153
    :cond_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 154
    .line 155
    .line 156
    move-result-wide v3

    .line 157
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :goto_5
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :catchall_4
    move-exception v0

    .line 166
    move-object v2, v0

    .line 167
    goto :goto_6

    .line 168
    :cond_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 169
    .line 170
    .line 171
    return-object v0

    .line 172
    :goto_6
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 173
    :catchall_5
    move-exception v0

    .line 174
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :pswitch_2
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    filled-new-array {v1}, [Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const-string v2, "SELECT MIN(date) FROM messages WHERE folder_id = ?"

    .line 187
    .line 188
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_4

    .line 197
    .line 198
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 199
    .line 200
    .line 201
    move-result-wide v2

    .line 202
    const-wide/16 v4, 0x0

    .line 203
    .line 204
    cmp-long v0, v2, v4

    .line 205
    .line 206
    if-eqz v0, :cond_4

    .line 207
    .line 208
    new-instance v10, Ljava/util/Date;

    .line 209
    .line 210
    invoke-direct {v10, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 211
    .line 212
    .line 213
    goto :goto_7

    .line 214
    :catchall_6
    move-exception v0

    .line 215
    move-object v2, v0

    .line 216
    goto :goto_8

    .line 217
    :cond_4
    :goto_7
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 218
    .line 219
    .line 220
    return-object v10

    .line 221
    :goto_8
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 222
    :catchall_7
    move-exception v0

    .line 223
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :pswitch_3
    const-string v1, "server_id"

    .line 228
    .line 229
    filled-new-array {v1}, [Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    filled-new-array {v1}, [Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    const/4 v6, 0x0

    .line 242
    const/4 v7, 0x0

    .line 243
    const-string v1, "folders"

    .line 244
    .line 245
    const-string v3, "id = ?"

    .line 246
    .line 247
    const/4 v5, 0x0

    .line 248
    move-object v0, p1

    .line 249
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_5

    .line 258
    .line 259
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 263
    goto :goto_9

    .line 264
    :catchall_8
    move-exception v0

    .line 265
    move-object v2, v0

    .line 266
    goto :goto_a

    .line 267
    :cond_5
    :goto_9
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 268
    .line 269
    .line 270
    return-object v10

    .line 271
    :goto_a
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 272
    :catchall_9
    move-exception v0

    .line 273
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :pswitch_4
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    filled-new-array {v1}, [Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    const-string v2, "SELECT COUNT(id) FROM messages WHERE empty = 0 AND deleted = 0 AND read = 0 AND folder_id = ?"

    .line 286
    .line 287
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_6

    .line 296
    .line 297
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    goto :goto_b

    .line 302
    :catchall_a
    move-exception v0

    .line 303
    move-object v2, v0

    .line 304
    goto :goto_c

    .line 305
    :cond_6
    :goto_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 309
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 310
    .line 311
    .line 312
    return-object v0

    .line 313
    :goto_c
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 314
    :catchall_b
    move-exception v0

    .line 315
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :pswitch_5
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    filled-new-array {v1}, [Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    const-string v2, "SELECT COUNT(id) FROM messages WHERE empty = 0 AND deleted = 0 AND folder_id = ?"

    .line 328
    .line 329
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_7

    .line 338
    .line 339
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    goto :goto_d

    .line 344
    :catchall_c
    move-exception v0

    .line 345
    move-object v2, v0

    .line 346
    goto :goto_e

    .line 347
    :cond_7
    :goto_d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 351
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 352
    .line 353
    .line 354
    return-object v0

    .line 355
    :goto_e
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 356
    :catchall_d
    move-exception v0

    .line 357
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 358
    .line 359
    .line 360
    throw v0

    .line 361
    :pswitch_6
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    filled-new-array {v1}, [Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    const-string v2, "message_id = ?"

    .line 370
    .line 371
    invoke-virtual {p1, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    return-object v0

    .line 380
    :pswitch_7
    const-string v9, "No outbox_state entry for message with id "

    .line 381
    .line 382
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    filled-new-array {v1}, [Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    const/4 v6, 0x0

    .line 391
    const/4 v7, 0x0

    .line 392
    const-string v1, "outbox_state"

    .line 393
    .line 394
    sget-object v2, Lcom/fsck/k9/mailstore/LocalStore$1;->COLUMNS:[Ljava/lang/String;

    .line 395
    .line 396
    const-string v3, "message_id = ?"

    .line 397
    .line 398
    const/4 v5, 0x0

    .line 399
    move-object v0, p1

    .line 400
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    :try_start_e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_c

    .line 409
    .line 410
    invoke-static {v1, v8}, Lorg/slf4j/helpers/Util;->getStringOrThrow(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    const-string v2, "number_of_send_attempts"

    .line 415
    .line 416
    invoke-static {v1, v2}, Lorg/slf4j/helpers/Util;->getIntOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    if-eqz v2, :cond_b

    .line 421
    .line 422
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    const-string v2, "error_timestamp"

    .line 427
    .line 428
    invoke-static {v1, v2}, Lorg/slf4j/helpers/Util;->getLongOrThrow(Landroid/database/Cursor;Ljava/lang/String;)J

    .line 429
    .line 430
    .line 431
    move-result-wide v7

    .line 432
    const-string v2, "error"

    .line 433
    .line 434
    invoke-static {v1, v2}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    sget-object v2, Lcom/fsck/k9/mailstore/SendState;->Companion:Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    sget-object v2, Lcom/fsck/k9/mailstore/SendState;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 444
    .line 445
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    new-instance v3, Lkotlin/UIntArray$Iterator;

    .line 449
    .line 450
    const/4 v4, 0x6

    .line 451
    invoke-direct {v3, v4, v2}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    :cond_8
    invoke-virtual {v3}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_9

    .line 459
    .line 460
    invoke-virtual {v3}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    move-object v4, v2

    .line 465
    check-cast v4, Lcom/fsck/k9/mailstore/SendState;

    .line 466
    .line 467
    iget-object v4, v4, Lcom/fsck/k9/mailstore/SendState;->databaseName:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    if-eqz v4, :cond_8

    .line 474
    .line 475
    goto :goto_f

    .line 476
    :cond_9
    move-object v2, v10

    .line 477
    :goto_f
    check-cast v2, Lcom/fsck/k9/mailstore/SendState;

    .line 478
    .line 479
    if-eqz v2, :cond_a

    .line 480
    .line 481
    move-object v4, v2

    .line 482
    goto :goto_10

    .line 483
    :cond_a
    const-string v2, "Unknown value: "

    .line 484
    .line 485
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    move-object v4, v10

    .line 493
    :goto_10
    new-instance v3, Lcom/fsck/k9/mailstore/OutboxState;

    .line 494
    .line 495
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/mailstore/OutboxState;-><init>(Lcom/fsck/k9/mailstore/SendState;ILjava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 496
    .line 497
    .line 498
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 499
    .line 500
    .line 501
    return-object v3

    .line 502
    :catchall_e
    move-exception v0

    .line 503
    move-object v2, v0

    .line 504
    goto :goto_11

    .line 505
    :cond_b
    :try_start_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 506
    .line 507
    const-string v2, "Column number_of_send_attempts must not be null"

    .line 508
    .line 509
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    throw v0

    .line 513
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 514
    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 531
    :goto_11
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    .line 532
    :catchall_f
    move-exception v0

    .line 533
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 534
    .line 535
    .line 536
    throw v0

    .line 537
    :pswitch_8
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    filled-new-array {v1}, [Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    const-string v3, "UPDATE outbox_state SET number_of_send_attempts = number_of_send_attempts - 1 WHERE message_id = ?"

    .line 546
    .line 547
    invoke-virtual {p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    return-object v2

    .line 551
    :pswitch_9
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    filled-new-array {v1}, [Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    const-string v3, "UPDATE outbox_state SET number_of_send_attempts = number_of_send_attempts + 1 WHERE message_id = ?"

    .line 560
    .line 561
    invoke-virtual {p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    return-object v2

    .line 565
    :pswitch_a
    new-instance v1, Landroid/content/ContentValues;

    .line 566
    .line 567
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 568
    .line 569
    .line 570
    const-string v2, "message_id"

    .line 571
    .line 572
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 577
    .line 578
    .line 579
    const-string v2, "ready"

    .line 580
    .line 581
    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {p1, v3, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 585
    .line 586
    .line 587
    move-result-wide v0

    .line 588
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    return-object v0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
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
