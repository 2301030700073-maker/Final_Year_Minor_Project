.class public final synthetic Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JJI)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-wide p2, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;->f$1:J

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;->f$2:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 61

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    const-string v9, "messages"

    .line 8
    .line 9
    const-string v10, "id = ?"

    .line 10
    .line 11
    iget-object v3, v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v11, v3

    .line 17
    check-cast v11, Lorg/slf4j/event/EventRecodingLogger;

    .line 18
    .line 19
    const-string v12, "empty"

    .line 20
    .line 21
    const-string v13, "deleted"

    .line 22
    .line 23
    const-string v14, "encryption_type"

    .line 24
    .line 25
    iget-object v2, v11, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-wide v2, v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;->f$1:J

    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Lokio/Path$Companion;->getMessageThreadHeaders(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/fsck/k9/storage/messages/ThreadHeaders;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget-wide v5, v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;->f$2:J

    .line 37
    .line 38
    invoke-static {v1, v5, v6, v4}, Lokio/Path$Companion;->doMessageThreading(Landroid/database/sqlite/SQLiteDatabase;JLcom/fsck/k9/storage/messages/ThreadHeaders;)Lcom/fsck/k9/storage/messages/ThreadInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v15

    .line 42
    const-string v0, "message_part_id"

    .line 43
    .line 44
    const-string v4, "forwarded"

    .line 45
    .line 46
    const-string v7, "answered"

    .line 47
    .line 48
    const-string v8, "flagged"

    .line 49
    .line 50
    move-wide/from16 v16, v5

    .line 51
    .line 52
    const-string v5, "read"

    .line 53
    .line 54
    const-string v6, "normalized_subject_hash"

    .line 55
    .line 56
    move-object/from16 p0, v5

    .line 57
    .line 58
    const-string v5, "mime_type"

    .line 59
    .line 60
    move-object/from16 v18, v5

    .line 61
    .line 62
    const-string v5, "preview"

    .line 63
    .line 64
    move-object/from16 v19, v5

    .line 65
    .line 66
    const-string v5, "preview_type"

    .line 67
    .line 68
    move-object/from16 v20, v5

    .line 69
    .line 70
    const-string v5, "message_id"

    .line 71
    .line 72
    move-object/from16 v21, v5

    .line 73
    .line 74
    const-string v5, "internal_date"

    .line 75
    .line 76
    move-object/from16 v22, v5

    .line 77
    .line 78
    const-string v5, "attachment_count"

    .line 79
    .line 80
    move-object/from16 v23, v5

    .line 81
    .line 82
    const-string v5, "reply_to_list"

    .line 83
    .line 84
    move-object/from16 v24, v5

    .line 85
    .line 86
    const-string v5, "bcc_list"

    .line 87
    .line 88
    move-object/from16 v25, v5

    .line 89
    .line 90
    const-string v5, "cc_list"

    .line 91
    .line 92
    move-object/from16 v26, v5

    .line 93
    .line 94
    const-string v5, "to_list"

    .line 95
    .line 96
    move-object/from16 v27, v5

    .line 97
    .line 98
    const-string v5, "sender_list"

    .line 99
    .line 100
    move-object/from16 v28, v5

    .line 101
    .line 102
    const-string v5, "flags"

    .line 103
    .line 104
    move-object/from16 v29, v5

    .line 105
    .line 106
    const-string v5, "date"

    .line 107
    .line 108
    move-object/from16 v30, v5

    .line 109
    .line 110
    const-string v5, "subject"

    .line 111
    .line 112
    const/16 v31, 0x0

    .line 113
    .line 114
    move-object/from16 v32, v5

    .line 115
    .line 116
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    move-object/from16 v31, v5

    .line 121
    .line 122
    const-string v5, "Couldn\'t find local message [ID: "

    .line 123
    .line 124
    move-object/from16 v33, v0

    .line 125
    .line 126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    move-wide/from16 v34, v2

    .line 133
    .line 134
    const-string v2, "K9LOCAL:"

    .line 135
    .line 136
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v55, "message_part_id"

    .line 147
    .line 148
    const-string v56, "encryption_type"

    .line 149
    .line 150
    const-string v36, "subject"

    .line 151
    .line 152
    const-string v37, "date"

    .line 153
    .line 154
    const-string v38, "flags"

    .line 155
    .line 156
    const-string v39, "sender_list"

    .line 157
    .line 158
    const-string v40, "to_list"

    .line 159
    .line 160
    const-string v41, "cc_list"

    .line 161
    .line 162
    const-string v42, "bcc_list"

    .line 163
    .line 164
    const-string v43, "reply_to_list"

    .line 165
    .line 166
    const-string v44, "attachment_count"

    .line 167
    .line 168
    const-string v45, "internal_date"

    .line 169
    .line 170
    const-string v46, "message_id"

    .line 171
    .line 172
    const-string v47, "preview_type"

    .line 173
    .line 174
    const-string v48, "preview"

    .line 175
    .line 176
    const-string v49, "mime_type"

    .line 177
    .line 178
    const-string v50, "normalized_subject_hash"

    .line 179
    .line 180
    const-string v51, "read"

    .line 181
    .line 182
    const-string v52, "flagged"

    .line 183
    .line 184
    const-string v53, "answered"

    .line 185
    .line 186
    const-string v54, "forwarded"

    .line 187
    .line 188
    filled-new-array/range {v36 .. v56}, [Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    filled-new-array {v1}, [Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    move-object v3, v6

    .line 201
    const/4 v6, 0x0

    .line 202
    move-object/from16 v36, v7

    .line 203
    .line 204
    const/4 v7, 0x0

    .line 205
    move-object/from16 v37, v4

    .line 206
    .line 207
    move-object v4, v1

    .line 208
    const-string v1, "messages"

    .line 209
    .line 210
    move-object/from16 v38, v3

    .line 211
    .line 212
    const-string v3, "id = ?"

    .line 213
    .line 214
    move-object/from16 v39, v5

    .line 215
    .line 216
    const/4 v5, 0x0

    .line 217
    move-object/from16 v40, v9

    .line 218
    .line 219
    move-object/from16 v9, v30

    .line 220
    .line 221
    move-object/from16 v57, v39

    .line 222
    .line 223
    move-object/from16 v30, v27

    .line 224
    .line 225
    move-object/from16 v27, v24

    .line 226
    .line 227
    move-object/from16 v24, v21

    .line 228
    .line 229
    move-object/from16 v21, v18

    .line 230
    .line 231
    move-object/from16 v18, v14

    .line 232
    .line 233
    move-object/from16 v14, v29

    .line 234
    .line 235
    move-object/from16 v29, v26

    .line 236
    .line 237
    move-object/from16 v26, v23

    .line 238
    .line 239
    move-object/from16 v23, v20

    .line 240
    .line 241
    move-object/from16 v20, p0

    .line 242
    .line 243
    move-object/from16 p0, v15

    .line 244
    .line 245
    move-object/from16 v15, v31

    .line 246
    .line 247
    move-object/from16 v58, v0

    .line 248
    .line 249
    move-object/from16 v0, p1

    .line 250
    .line 251
    move-object/from16 v59, v8

    .line 252
    .line 253
    move-object/from16 v8, v58

    .line 254
    .line 255
    move-object/from16 v58, v19

    .line 256
    .line 257
    move-object/from16 v19, v59

    .line 258
    .line 259
    move-wide/from16 v59, v16

    .line 260
    .line 261
    move-object/from16 v16, v10

    .line 262
    .line 263
    move-object/from16 v17, v11

    .line 264
    .line 265
    move-object/from16 v11, v28

    .line 266
    .line 267
    move-object/from16 v10, v32

    .line 268
    .line 269
    move-wide/from16 v31, v59

    .line 270
    .line 271
    move-object/from16 v28, v25

    .line 272
    .line 273
    move-object/from16 v25, v22

    .line 274
    .line 275
    move-object/from16 v22, v58

    .line 276
    .line 277
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    move-object v2, v0

    .line 282
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_6

    .line 287
    .line 288
    new-instance v0, Landroid/content/ContentValues;

    .line 289
    .line 290
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v3, "uid"

    .line 294
    .line 295
    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const-string v3, "folder_id"

    .line 299
    .line 300
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v12, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v1, v10}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v0, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v9}, Lorg/slf4j/helpers/Util;->getLongOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v0, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v1, v14}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v0, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-static {v1, v11}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v0, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v3, v30

    .line 342
    .line 343
    invoke-static {v1, v3}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    move-object/from16 v4, v29

    .line 351
    .line 352
    invoke-static {v1, v4}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    move-object/from16 v5, v28

    .line 360
    .line 361
    invoke-static {v1, v5}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    move-object/from16 v6, v27

    .line 369
    .line 370
    invoke-static {v1, v6}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    move-object/from16 v7, v26

    .line 378
    .line 379
    invoke-static {v1, v7}, Lorg/slf4j/helpers/Util;->getIntOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    .line 385
    .line 386
    move-object/from16 v26, v7

    .line 387
    .line 388
    move-object/from16 v8, v25

    .line 389
    .line 390
    invoke-static {v1, v8}, Lorg/slf4j/helpers/Util;->getLongOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    .line 396
    .line 397
    move-object/from16 v25, v8

    .line 398
    .line 399
    move-object/from16 v7, v24

    .line 400
    .line 401
    invoke-static {v1, v7}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    move-object/from16 v7, v23

    .line 409
    .line 410
    invoke-static {v1, v7}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    move-object/from16 v23, v7

    .line 418
    .line 419
    move-object/from16 v8, v22

    .line 420
    .line 421
    invoke-static {v1, v8}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    move-object/from16 v22, v8

    .line 429
    .line 430
    move-object/from16 v7, v21

    .line 431
    .line 432
    invoke-static {v1, v7}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v8

    .line 436
    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    move-object/from16 v21, v7

    .line 440
    .line 441
    move-object/from16 v8, v38

    .line 442
    .line 443
    invoke-static {v1, v8}, Lorg/slf4j/helpers/Util;->getLongOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 448
    .line 449
    .line 450
    move-object/from16 v38, v8

    .line 451
    .line 452
    move-object/from16 v7, v20

    .line 453
    .line 454
    invoke-static {v1, v7}, Lorg/slf4j/helpers/Util;->getIntOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    .line 460
    .line 461
    move-object/from16 v24, v6

    .line 462
    .line 463
    move-object/from16 v8, v19

    .line 464
    .line 465
    invoke-static {v1, v8}, Lorg/slf4j/helpers/Util;->getIntOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    .line 471
    .line 472
    move-object/from16 v19, v8

    .line 473
    .line 474
    move-object/from16 v6, v36

    .line 475
    .line 476
    invoke-static {v1, v6}, Lorg/slf4j/helpers/Util;->getIntOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v8

    .line 480
    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    .line 482
    .line 483
    move-object/from16 v36, v6

    .line 484
    .line 485
    move-object/from16 v8, v37

    .line 486
    .line 487
    invoke-static {v1, v8}, Lorg/slf4j/helpers/Util;->getIntOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    .line 493
    .line 494
    move-object/from16 v37, v8

    .line 495
    .line 496
    move-object/from16 v6, v33

    .line 497
    .line 498
    invoke-static {v1, v6}, Lorg/slf4j/helpers/Util;->getLongOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 503
    .line 504
    .line 505
    move-object/from16 v33, v6

    .line 506
    .line 507
    move-object/from16 v8, v18

    .line 508
    .line 509
    invoke-static {v1, v8}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    const-string v6, "account_id"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 517
    .line 518
    move-object/from16 v18, v1

    .line 519
    .line 520
    move-object/from16 v1, v17

    .line 521
    .line 522
    :try_start_1
    iget-object v1, v1, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast v1, Lnet/thunderbird/feature/account/AccountId;

    .line 525
    .line 526
    iget-object v1, v1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    .line 534
    .line 535
    invoke-interface/range {v18 .. v18}, Ljava/io/Closeable;->close()V

    .line 536
    .line 537
    .line 538
    move-object/from16 v1, p0

    .line 539
    .line 540
    if-eqz p0, :cond_0

    .line 541
    .line 542
    iget-object v6, v1, Lcom/fsck/k9/storage/messages/ThreadInfo;->messageId:Ljava/lang/Long;

    .line 543
    .line 544
    goto :goto_0

    .line 545
    :cond_0
    const/4 v6, 0x0

    .line 546
    :goto_0
    if-eqz v6, :cond_1

    .line 547
    .line 548
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 549
    .line 550
    .line 551
    move-result-wide v17

    .line 552
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v17

    .line 556
    move-object/from16 p0, v6

    .line 557
    .line 558
    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    move-object/from16 v28, v5

    .line 563
    .line 564
    move-object/from16 v17, v8

    .line 565
    .line 566
    move-object/from16 v5, v16

    .line 567
    .line 568
    move-object/from16 v8, v40

    .line 569
    .line 570
    invoke-virtual {v2, v8, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    .line 574
    .line 575
    .line 576
    move-result-wide v29

    .line 577
    :goto_1
    move-wide/from16 v5, v29

    .line 578
    .line 579
    goto :goto_2

    .line 580
    :cond_1
    move-object/from16 v28, v5

    .line 581
    .line 582
    move-object/from16 v17, v8

    .line 583
    .line 584
    move-object/from16 v5, v16

    .line 585
    .line 586
    move-object/from16 v8, v40

    .line 587
    .line 588
    const/4 v6, 0x0

    .line 589
    invoke-virtual {v2, v8, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 590
    .line 591
    .line 592
    move-result-wide v29

    .line 593
    goto :goto_1

    .line 594
    :goto_2
    if-eqz v1, :cond_2

    .line 595
    .line 596
    iget-object v0, v1, Lcom/fsck/k9/storage/messages/ThreadInfo;->threadId:Ljava/lang/Long;

    .line 597
    .line 598
    goto :goto_3

    .line 599
    :cond_2
    const/4 v0, 0x0

    .line 600
    :goto_3
    if-nez v0, :cond_5

    .line 601
    .line 602
    move-object/from16 v27, v3

    .line 603
    .line 604
    move-object/from16 v29, v4

    .line 605
    .line 606
    if-eqz v1, :cond_3

    .line 607
    .line 608
    iget-wide v3, v1, Lcom/fsck/k9/storage/messages/ThreadInfo;->rootId:J

    .line 609
    .line 610
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    goto :goto_4

    .line 615
    :cond_3
    const/4 v0, 0x0

    .line 616
    :goto_4
    if-eqz v1, :cond_4

    .line 617
    .line 618
    iget-object v1, v1, Lcom/fsck/k9/storage/messages/ThreadInfo;->parentId:Ljava/lang/Long;

    .line 619
    .line 620
    goto :goto_5

    .line 621
    :cond_4
    const/4 v1, 0x0

    .line 622
    :goto_5
    invoke-static {v2, v5, v6, v0, v1}, Lokio/Path$Companion;->createThreadEntry(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Long;Ljava/lang/Long;)V

    .line 623
    .line 624
    .line 625
    goto :goto_6

    .line 626
    :cond_5
    move-object/from16 v27, v3

    .line 627
    .line 628
    move-object/from16 v29, v4

    .line 629
    .line 630
    :goto_6
    new-instance v0, Landroid/content/ContentValues;

    .line 631
    .line 632
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 633
    .line 634
    .line 635
    const/4 v1, 0x1

    .line 636
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v0, v12, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    move-object/from16 v3, v27

    .line 662
    .line 663
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    move-object/from16 v4, v29

    .line 667
    .line 668
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    move-object/from16 v1, v28

    .line 672
    .line 673
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    move-object/from16 v1, v24

    .line 677
    .line 678
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    move-object/from16 v7, v26

    .line 682
    .line 683
    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    move-object/from16 v1, v25

    .line 687
    .line 688
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    const-string v1, "none"

    .line 692
    .line 693
    move-object/from16 v7, v23

    .line 694
    .line 695
    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    move-object/from16 v1, v22

    .line 699
    .line 700
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    move-object/from16 v7, v21

    .line 704
    .line 705
    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    move-object/from16 v3, v38

    .line 709
    .line 710
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    move-object/from16 v1, v19

    .line 714
    .line 715
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    move-object/from16 v1, v36

    .line 719
    .line 720
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    move-object/from16 v1, v37

    .line 724
    .line 725
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    move-object/from16 v1, v33

    .line 729
    .line 730
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    move-object/from16 v1, v17

    .line 734
    .line 735
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    filled-new-array {v1}, [Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    move-object/from16 v4, v16

    .line 747
    .line 748
    invoke-virtual {v2, v8, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 749
    .line 750
    .line 751
    new-instance v0, Landroid/content/ContentValues;

    .line 752
    .line 753
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 754
    .line 755
    .line 756
    const-string v1, "docid"

    .line 757
    .line 758
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 763
    .line 764
    .line 765
    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    filled-new-array {v1}, [Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    const-string v3, "messages_fulltext"

    .line 774
    .line 775
    const-string v4, "docid = ?"

    .line 776
    .line 777
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 778
    .line 779
    .line 780
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    return-object v0

    .line 785
    :catchall_0
    move-exception v0

    .line 786
    :goto_7
    move-object v1, v0

    .line 787
    goto :goto_8

    .line 788
    :catchall_1
    move-exception v0

    .line 789
    move-object/from16 v18, v1

    .line 790
    .line 791
    goto :goto_7

    .line 792
    :cond_6
    move-object/from16 v18, v1

    .line 793
    .line 794
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 795
    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    move-object/from16 v2, v57

    .line 799
    .line 800
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    move-wide/from16 v2, v34

    .line 804
    .line 805
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    const-string v2, "]"

    .line 809
    .line 810
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    :goto_8
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 826
    :catchall_2
    move-exception v0

    .line 827
    move-object/from16 v2, v18

    .line 828
    .line 829
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 830
    .line 831
    .line 832
    throw v0

    .line 833
    :pswitch_0
    move-object v2, v1

    .line 834
    move-object v8, v9

    .line 835
    move-object v4, v10

    .line 836
    move-object v1, v3

    .line 837
    check-cast v1, Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 838
    .line 839
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 843
    .line 844
    .line 845
    const-string v3, "No message part found for message with ID "

    .line 846
    .line 847
    iget-wide v9, v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;->f$1:J

    .line 848
    .line 849
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v5

    .line 853
    filled-new-array {v5}, [Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v5

    .line 857
    const-string v6, "\nSELECT\n  message_parts.id,\n  message_parts.type,\n  message_parts.root,\n  message_parts.parent,\n  message_parts.seq,\n  message_parts.mime_type,\n  message_parts.decoded_body_size,\n  message_parts.display_name,\n  message_parts.header,\n  message_parts.encoding,\n  message_parts.charset,\n  message_parts.data_location,\n  message_parts.data,\n  message_parts.preamble,\n  message_parts.epilogue,\n  message_parts.boundary,\n  message_parts.content_id,\n  message_parts.server_extra\nFROM messages\nJOIN message_parts ON (message_parts.root = messages.message_part_id)\nWHERE messages.id = ?\nORDER BY message_parts.seq\n            "

    .line 858
    .line 859
    invoke-virtual {v2, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 860
    .line 861
    .line 862
    move-result-object v7

    .line 863
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 864
    .line 865
    .line 866
    move-result v5

    .line 867
    if-eqz v5, :cond_f

    .line 868
    .line 869
    invoke-static {v7}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->readMessagePart(Landroid/database/Cursor;)Lcom/fsck/k9/storage/messages/DatabaseMessagePart;

    .line 870
    .line 871
    .line 872
    move-result-object v3

    .line 873
    move-object/from16 v16, v4

    .line 874
    .line 875
    const/4 v4, 0x0

    .line 876
    const-wide/16 v5, -0x1

    .line 877
    .line 878
    move-object/from16 v11, v16

    .line 879
    .line 880
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->writeMessagePart(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/storage/messages/DatabaseMessagePart;Ljava/lang/Long;J)J

    .line 881
    .line 882
    .line 883
    move-result-wide v12

    .line 884
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 885
    .line 886
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 887
    .line 888
    .line 889
    iget-wide v2, v3, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->id:J

    .line 890
    .line 891
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 892
    .line 893
    .line 894
    move-result-object v2

    .line 895
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    :goto_9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 903
    .line 904
    .line 905
    move-result v2

    .line 906
    if-eqz v2, :cond_8

    .line 907
    .line 908
    invoke-static {v7}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->readMessagePart(Landroid/database/Cursor;)Lcom/fsck/k9/storage/messages/DatabaseMessagePart;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    iget-wide v4, v3, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->id:J

    .line 913
    .line 914
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 915
    .line 916
    .line 917
    move-result-object v15

    .line 918
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 919
    .line 920
    .line 921
    move-result-object v4

    .line 922
    iget-wide v5, v3, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->parent:J

    .line 923
    .line 924
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 925
    .line 926
    .line 927
    move-result-object v2

    .line 928
    invoke-virtual {v14, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    check-cast v2, Ljava/lang/Long;

    .line 933
    .line 934
    if-eqz v2, :cond_7

    .line 935
    .line 936
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 937
    .line 938
    .line 939
    move-result-wide v5

    .line 940
    move-object/from16 v2, p1

    .line 941
    .line 942
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->writeMessagePart(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/storage/messages/DatabaseMessagePart;Ljava/lang/Long;J)J

    .line 943
    .line 944
    .line 945
    move-result-wide v3

    .line 946
    move-object/from16 v58, v2

    .line 947
    .line 948
    move-object v2, v1

    .line 949
    move-object/from16 v1, v58

    .line 950
    .line 951
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    invoke-interface {v14, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-object v1, v2

    .line 959
    goto :goto_9

    .line 960
    :catchall_3
    move-exception v0

    .line 961
    move-object v1, v0

    .line 962
    goto/16 :goto_f

    .line 963
    .line 964
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 965
    .line 966
    const-string v1, "parent ID not found"

    .line 967
    .line 968
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 972
    :cond_8
    move-object v2, v1

    .line 973
    move-object/from16 v1, p1

    .line 974
    .line 975
    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    .line 976
    .line 977
    .line 978
    invoke-static {v1, v9, v10}, Lokio/Path$Companion;->getMessageThreadHeaders(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/fsck/k9/storage/messages/ThreadHeaders;

    .line 979
    .line 980
    .line 981
    move-result-object v3

    .line 982
    iget-wide v4, v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;->f$2:J

    .line 983
    .line 984
    invoke-static {v1, v4, v5, v3}, Lokio/Path$Companion;->doMessageThreading(Landroid/database/sqlite/SQLiteDatabase;JLcom/fsck/k9/storage/messages/ThreadHeaders;)Lcom/fsck/k9/storage/messages/ThreadInfo;

    .line 985
    .line 986
    .line 987
    move-result-object v14

    .line 988
    if-eqz v14, :cond_9

    .line 989
    .line 990
    iget-object v6, v14, Lcom/fsck/k9/storage/messages/ThreadInfo;->messageId:Ljava/lang/Long;

    .line 991
    .line 992
    goto :goto_a

    .line 993
    :cond_9
    const/4 v6, 0x0

    .line 994
    :goto_a
    if-eqz v6, :cond_a

    .line 995
    .line 996
    iget-object v0, v14, Lcom/fsck/k9/storage/messages/ThreadInfo;->messageId:Ljava/lang/Long;

    .line 997
    .line 998
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 999
    .line 1000
    .line 1001
    move-result-wide v14

    .line 1002
    move-object v0, v2

    .line 1003
    move-wide v2, v9

    .line 1004
    move-wide v6, v12

    .line 1005
    invoke-virtual/range {v0 .. v7}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->readMessageToContentValues(Landroid/database/sqlite/SQLiteDatabase;JJJ)Landroid/content/ContentValues;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v4

    .line 1013
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v4

    .line 1017
    invoke-virtual {v1, v8, v0, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1018
    .line 1019
    .line 1020
    move-wide v4, v2

    .line 1021
    goto :goto_e

    .line 1022
    :cond_a
    move-object v0, v2

    .line 1023
    move-wide v2, v9

    .line 1024
    move-wide v6, v12

    .line 1025
    invoke-virtual/range {v0 .. v7}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->readMessageToContentValues(Landroid/database/sqlite/SQLiteDatabase;JJJ)Landroid/content/ContentValues;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    move-wide v4, v2

    .line 1030
    const/4 v6, 0x0

    .line 1031
    invoke-virtual {v1, v8, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1032
    .line 1033
    .line 1034
    move-result-wide v2

    .line 1035
    if-eqz v14, :cond_b

    .line 1036
    .line 1037
    iget-object v0, v14, Lcom/fsck/k9/storage/messages/ThreadInfo;->threadId:Ljava/lang/Long;

    .line 1038
    .line 1039
    goto :goto_b

    .line 1040
    :cond_b
    move-object v0, v6

    .line 1041
    :goto_b
    if-nez v0, :cond_e

    .line 1042
    .line 1043
    if-eqz v14, :cond_c

    .line 1044
    .line 1045
    iget-wide v7, v14, Lcom/fsck/k9/storage/messages/ThreadInfo;->rootId:J

    .line 1046
    .line 1047
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    goto :goto_c

    .line 1052
    :cond_c
    move-object v0, v6

    .line 1053
    :goto_c
    if-eqz v14, :cond_d

    .line 1054
    .line 1055
    iget-object v8, v14, Lcom/fsck/k9/storage/messages/ThreadInfo;->parentId:Ljava/lang/Long;

    .line 1056
    .line 1057
    goto :goto_d

    .line 1058
    :cond_d
    move-object v8, v6

    .line 1059
    :goto_d
    invoke-static {v1, v2, v3, v0, v8}, Lokio/Path$Companion;->createThreadEntry(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Long;Ljava/lang/Long;)V

    .line 1060
    .line 1061
    .line 1062
    :cond_e
    move-wide v14, v2

    .line 1063
    :goto_e
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v2

    .line 1071
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v0

    .line 1075
    const-string v2, "INSERT OR REPLACE INTO messages_fulltext (docid, fulltext) SELECT ?, fulltext FROM messages_fulltext WHERE docid = ?"

    .line 1076
    .line 1077
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    return-object v0

    .line 1085
    :cond_f
    move-wide v4, v9

    .line 1086
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1087
    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v1

    .line 1100
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v1

    .line 1104
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1108
    :goto_f
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1109
    :catchall_4
    move-exception v0

    .line 1110
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1111
    .line 1112
    .line 1113
    throw v0

    .line 1114
    nop

    .line 1115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
