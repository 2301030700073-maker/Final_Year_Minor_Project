.class public final synthetic Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-wide p2, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;->f$0:J

    iput-object p4, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;->f$0:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-string v3, "id"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    iget-object v7, v0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v8, v0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;->f$0:J

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    filled-new-array {v3}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v12

    .line 22
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v14

    .line 30
    const/16 v16, 0x0

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    const-string v11, "messages"

    .line 35
    .line 36
    const-string v13, "folder_id = ? AND uid = ?"

    .line 37
    .line 38
    const/4 v15, 0x0

    .line 39
    move-object/from16 v10, p1

    .line 40
    .line 41
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    move-object v2, v0

    .line 59
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :pswitch_0
    const-string v0, "Couldn\'t read flags for "

    .line 66
    .line 67
    const-string v14, "forwarded"

    .line 68
    .line 69
    const-string v15, "flags"

    .line 70
    .line 71
    const-string v10, "deleted"

    .line 72
    .line 73
    const-string v11, "read"

    .line 74
    .line 75
    const-string v12, "flagged"

    .line 76
    .line 77
    const-string v13, "answered"

    .line 78
    .line 79
    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    filled-new-array {v1, v7}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    const/16 v16, 0x0

    .line 92
    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    const-string v11, "messages"

    .line 96
    .line 97
    const-string v13, "folder_id = ? AND uid = ?"

    .line 98
    .line 99
    const/4 v15, 0x0

    .line 100
    move-object/from16 v10, p1

    .line 101
    .line 102
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_d

    .line 111
    .line 112
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-ne v0, v5, :cond_0

    .line 117
    .line 118
    move v0, v5

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    move v0, v6

    .line 121
    :goto_0
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-ne v3, v5, :cond_1

    .line 126
    .line 127
    move v3, v5

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    move v3, v6

    .line 130
    :goto_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-ne v2, v5, :cond_2

    .line 135
    .line 136
    move v2, v5

    .line 137
    goto :goto_2

    .line 138
    :cond_2
    move v2, v6

    .line 139
    :goto_2
    const/4 v4, 0x3

    .line 140
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-ne v4, v5, :cond_3

    .line 145
    .line 146
    move v4, v5

    .line 147
    goto :goto_3

    .line 148
    :cond_3
    move v4, v6

    .line 149
    :goto_3
    const/4 v7, 0x4

    .line 150
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-ne v7, v5, :cond_4

    .line 155
    .line 156
    move v7, v5

    .line 157
    goto :goto_4

    .line 158
    :cond_4
    move v7, v6

    .line 159
    :goto_4
    const/4 v8, 0x5

    .line 160
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    if-eqz v8, :cond_6

    .line 165
    .line 166
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-eqz v9, :cond_5

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_5
    new-array v5, v5, [C

    .line 174
    .line 175
    const/16 v9, 0x2c

    .line 176
    .line 177
    aput-char v9, v5, v6

    .line 178
    .line 179
    invoke-static {v8, v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    new-instance v6, Ljava/util/ArrayList;

    .line 184
    .line 185
    const/16 v8, 0xa

    .line 186
    .line 187
    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-eqz v8, :cond_7

    .line 203
    .line 204
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    check-cast v8, Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {v8}, Lnet/thunderbird/core/common/mail/Flag;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/Flag;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :catchall_2
    move-exception v0

    .line 219
    move-object v2, v0

    .line 220
    goto :goto_7

    .line 221
    :cond_6
    :goto_6
    sget-object v6, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 222
    .line 223
    :cond_7
    check-cast v6, Ljava/lang/Iterable;

    .line 224
    .line 225
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    if-eqz v0, :cond_8

    .line 230
    .line 231
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 232
    .line 233
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    :cond_8
    if-eqz v3, :cond_9

    .line 237
    .line 238
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 239
    .line 240
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    :cond_9
    if-eqz v2, :cond_a

    .line 244
    .line 245
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 246
    .line 247
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    :cond_a
    if-eqz v4, :cond_b

    .line 251
    .line 252
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 253
    .line 254
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    :cond_b
    if-eqz v7, :cond_c

    .line 258
    .line 259
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 260
    .line 261
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 262
    .line 263
    .line 264
    :cond_c
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 265
    .line 266
    .line 267
    return-object v5

    .line 268
    :cond_d
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 269
    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v0, ":"

    .line 279
    .line 280
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 298
    :goto_7
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 299
    :catchall_3
    move-exception v0

    .line 300
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :pswitch_1
    const-string/jumbo v0, "value_integer"

    .line 305
    .line 306
    .line 307
    filled-new-array {v0}, [Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    filled-new-array {v7, v1}, [Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    const/4 v13, 0x0

    .line 320
    const/4 v14, 0x0

    .line 321
    const-string v8, "folder_extra_values"

    .line 322
    .line 323
    const-string v10, "name = ? AND folder_id = ?"

    .line 324
    .line 325
    const/4 v12, 0x0

    .line 326
    move-object/from16 v7, p1

    .line 327
    .line 328
    move-object v9, v0

    .line 329
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_f

    .line 338
    .line 339
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_e

    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_e
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v2

    .line 350
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 351
    .line 352
    .line 353
    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 354
    goto :goto_8

    .line 355
    :catchall_4
    move-exception v0

    .line 356
    move-object v2, v0

    .line 357
    goto :goto_9

    .line 358
    :cond_f
    :goto_8
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 359
    .line 360
    .line 361
    return-object v4

    .line 362
    :goto_9
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 363
    :catchall_5
    move-exception v0

    .line 364
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 365
    .line 366
    .line 367
    throw v0

    .line 368
    :pswitch_2
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    const-string v1, "\nSELECT messages.id, messages.message_part_id, COUNT(threads2.id) \nFROM messages \nLEFT JOIN threads threads1 ON (threads1.message_id = messages.id)  \nLEFT JOIN threads threads2 ON (threads2.parent = threads1.id) \nWHERE folder_id = ? AND uid = ?\n                "

    .line 377
    .line 378
    move-object/from16 v10, p1

    .line 379
    .line 380
    invoke-virtual {v10, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_11

    .line 389
    .line 390
    new-instance v7, Lcom/fsck/k9/storage/messages/MessageData;

    .line 391
    .line 392
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 393
    .line 394
    .line 395
    move-result-wide v8

    .line 396
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 397
    .line 398
    .line 399
    move-result-wide v10

    .line 400
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-nez v0, :cond_10

    .line 405
    .line 406
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-lez v0, :cond_10

    .line 411
    .line 412
    move v12, v5

    .line 413
    goto :goto_a

    .line 414
    :catchall_6
    move-exception v0

    .line 415
    move-object v2, v0

    .line 416
    goto :goto_b

    .line 417
    :cond_10
    move v12, v6

    .line 418
    :goto_a
    invoke-direct/range {v7 .. v12}, Lcom/fsck/k9/storage/messages/MessageData;-><init>(JJZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 419
    .line 420
    .line 421
    move-object v4, v7

    .line 422
    :cond_11
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 423
    .line 424
    .line 425
    return-object v4

    .line 426
    :goto_b
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 427
    :catchall_7
    move-exception v0

    .line 428
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 429
    .line 430
    .line 431
    throw v0

    .line 432
    :pswitch_3
    move-object/from16 v10, p1

    .line 433
    .line 434
    const-string v0, "message_part_id"

    .line 435
    .line 436
    filled-new-array {v3, v0}, [Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    filled-new-array {v1, v7}, [Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v11

    .line 448
    const/4 v13, 0x0

    .line 449
    const/4 v14, 0x0

    .line 450
    const-string v8, "messages"

    .line 451
    .line 452
    const-string v10, "folder_id = ? AND uid = ?"

    .line 453
    .line 454
    const/4 v12, 0x0

    .line 455
    move-object/from16 v7, p1

    .line 456
    .line 457
    move-object v9, v0

    .line 458
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_12

    .line 467
    .line 468
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 469
    .line 470
    .line 471
    move-result-wide v2

    .line 472
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 473
    .line 474
    .line 475
    move-result-wide v4

    .line 476
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    new-instance v4, Lkotlin/Pair;

    .line 485
    .line 486
    invoke-direct {v4, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 487
    .line 488
    .line 489
    goto :goto_d

    .line 490
    :goto_c
    move-object v2, v0

    .line 491
    goto :goto_e

    .line 492
    :catchall_8
    move-exception v0

    .line 493
    goto :goto_c

    .line 494
    :cond_12
    :goto_d
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 495
    .line 496
    .line 497
    return-object v4

    .line 498
    :goto_e
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 499
    :catchall_9
    move-exception v0

    .line 500
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 501
    .line 502
    .line 503
    throw v0

    .line 504
    nop

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
