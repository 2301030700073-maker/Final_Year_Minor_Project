.class public final synthetic Landroidx/work/Data$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Landroidx/work/Data$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroidx/work/Data$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda7(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 84

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-wide/16 v2, 0xc8

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :try_start_0
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 18
    .line 19
    .line 20
    const-string v2, "id"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "state"

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string/jumbo v4, "worker_class_name"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const-string v5, "input_merger_class_name"

    .line 40
    .line 41
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, "input"

    .line 46
    .line 47
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const-string v7, "output"

    .line 52
    .line 53
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const-string v8, "initial_delay"

    .line 58
    .line 59
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    const-string v9, "interval_duration"

    .line 64
    .line 65
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    const-string v10, "flex_duration"

    .line 70
    .line 71
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    const-string v11, "run_attempt_count"

    .line 76
    .line 77
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    const-string v12, "backoff_policy"

    .line 82
    .line 83
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    const-string v13, "backoff_delay_duration"

    .line 88
    .line 89
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    const-string v14, "last_enqueue_time"

    .line 94
    .line 95
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    const-string v15, "minimum_retention_duration"

    .line 100
    .line 101
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    const-string v0, "schedule_requested_at"

    .line 106
    .line 107
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    move/from16 p1, v0

    .line 112
    .line 113
    const-string v0, "run_in_foreground"

    .line 114
    .line 115
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    move/from16 v16, v0

    .line 120
    .line 121
    const-string v0, "out_of_quota_policy"

    .line 122
    .line 123
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    move/from16 v17, v0

    .line 128
    .line 129
    const-string v0, "period_count"

    .line 130
    .line 131
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    move/from16 v18, v0

    .line 136
    .line 137
    const-string v0, "generation"

    .line 138
    .line 139
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    move/from16 v19, v0

    .line 144
    .line 145
    const-string v0, "next_schedule_time_override"

    .line 146
    .line 147
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    move/from16 v20, v0

    .line 152
    .line 153
    const-string v0, "next_schedule_time_override_generation"

    .line 154
    .line 155
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    move/from16 v21, v0

    .line 160
    .line 161
    const-string v0, "stop_reason"

    .line 162
    .line 163
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    move/from16 v22, v0

    .line 168
    .line 169
    const-string/jumbo v0, "trace_tag"

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    move/from16 v23, v0

    .line 177
    .line 178
    const-string v0, "backoff_on_system_interruptions"

    .line 179
    .line 180
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    move/from16 v24, v0

    .line 185
    .line 186
    const-string v0, "required_network_type"

    .line 187
    .line 188
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    move/from16 v25, v0

    .line 193
    .line 194
    const-string v0, "required_network_request"

    .line 195
    .line 196
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    move/from16 v26, v0

    .line 201
    .line 202
    const-string v0, "requires_charging"

    .line 203
    .line 204
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    move/from16 v27, v0

    .line 209
    .line 210
    const-string v0, "requires_device_idle"

    .line 211
    .line 212
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    move/from16 v28, v0

    .line 217
    .line 218
    const-string v0, "requires_battery_not_low"

    .line 219
    .line 220
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    move/from16 v29, v0

    .line 225
    .line 226
    const-string v0, "requires_storage_not_low"

    .line 227
    .line 228
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    move/from16 v30, v0

    .line 233
    .line 234
    const-string/jumbo v0, "trigger_content_update_delay"

    .line 235
    .line 236
    .line 237
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    move/from16 v31, v0

    .line 242
    .line 243
    const-string/jumbo v0, "trigger_max_content_delay"

    .line 244
    .line 245
    .line 246
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    move/from16 v32, v0

    .line 251
    .line 252
    const-string v0, "content_uri_triggers"

    .line 253
    .line 254
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    move/from16 v33, v0

    .line 259
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 266
    .line 267
    .line 268
    move-result v34

    .line 269
    if-eqz v34, :cond_9

    .line 270
    .line 271
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v36

    .line 275
    move/from16 v34, v14

    .line 276
    .line 277
    move/from16 v69, v15

    .line 278
    .line 279
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 280
    .line 281
    .line 282
    move-result-wide v14

    .line 283
    long-to-int v14, v14

    .line 284
    invoke-static {v14}, Lkotlin/TuplesKt;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 285
    .line 286
    .line 287
    move-result-object v37

    .line 288
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v38

    .line 292
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v39

    .line 296
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 297
    .line 298
    .line 299
    move-result-object v14

    .line 300
    sget-object v15, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 301
    .line 302
    invoke-static {v14}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 303
    .line 304
    .line 305
    move-result-object v40

    .line 306
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    invoke-static {v14}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 311
    .line 312
    .line 313
    move-result-object v41

    .line 314
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 315
    .line 316
    .line 317
    move-result-wide v42

    .line 318
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 319
    .line 320
    .line 321
    move-result-wide v44

    .line 322
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 323
    .line 324
    .line 325
    move-result-wide v46

    .line 326
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 327
    .line 328
    .line 329
    move-result-wide v14

    .line 330
    long-to-int v14, v14

    .line 331
    move v15, v2

    .line 332
    move/from16 v70, v3

    .line 333
    .line 334
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 335
    .line 336
    .line 337
    move-result-wide v2

    .line 338
    long-to-int v2, v2

    .line 339
    invoke-static {v2}, Lkotlin/TuplesKt;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 340
    .line 341
    .line 342
    move-result-object v50

    .line 343
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 344
    .line 345
    .line 346
    move-result-wide v51

    .line 347
    move/from16 v2, v34

    .line 348
    .line 349
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 350
    .line 351
    .line 352
    move-result-wide v53

    .line 353
    move/from16 v3, v69

    .line 354
    .line 355
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 356
    .line 357
    .line 358
    move-result-wide v55

    .line 359
    move/from16 v34, v2

    .line 360
    .line 361
    move/from16 v2, p1

    .line 362
    .line 363
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 364
    .line 365
    .line 366
    move-result-wide v57

    .line 367
    move/from16 p1, v2

    .line 368
    .line 369
    move/from16 v69, v3

    .line 370
    .line 371
    move/from16 v2, v16

    .line 372
    .line 373
    move/from16 v16, v4

    .line 374
    .line 375
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 376
    .line 377
    .line 378
    move-result-wide v3

    .line 379
    long-to-int v3, v3

    .line 380
    if-eqz v3, :cond_0

    .line 381
    .line 382
    const/16 v59, 0x1

    .line 383
    .line 384
    :goto_1
    move/from16 v3, v17

    .line 385
    .line 386
    move/from16 v17, v5

    .line 387
    .line 388
    goto :goto_2

    .line 389
    :cond_0
    const/16 v59, 0x0

    .line 390
    .line 391
    goto :goto_1

    .line 392
    :goto_2
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 393
    .line 394
    .line 395
    move-result-wide v4

    .line 396
    long-to-int v4, v4

    .line 397
    invoke-static {v4}, Lkotlin/TuplesKt;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 398
    .line 399
    .line 400
    move-result-object v60

    .line 401
    move v5, v2

    .line 402
    move/from16 v4, v18

    .line 403
    .line 404
    move/from16 v18, v3

    .line 405
    .line 406
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 407
    .line 408
    .line 409
    move-result-wide v2

    .line 410
    long-to-int v2, v2

    .line 411
    move/from16 v71, v5

    .line 412
    .line 413
    move/from16 v3, v19

    .line 414
    .line 415
    move/from16 v19, v4

    .line 416
    .line 417
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 418
    .line 419
    .line 420
    move-result-wide v4

    .line 421
    long-to-int v4, v4

    .line 422
    move/from16 v5, v20

    .line 423
    .line 424
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 425
    .line 426
    .line 427
    move-result-wide v63

    .line 428
    move/from16 v61, v2

    .line 429
    .line 430
    move/from16 v20, v3

    .line 431
    .line 432
    move/from16 v62, v4

    .line 433
    .line 434
    move/from16 v2, v21

    .line 435
    .line 436
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 437
    .line 438
    .line 439
    move-result-wide v3

    .line 440
    long-to-int v3, v3

    .line 441
    move/from16 v21, v2

    .line 442
    .line 443
    move/from16 v65, v3

    .line 444
    .line 445
    move/from16 v4, v22

    .line 446
    .line 447
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 448
    .line 449
    .line 450
    move-result-wide v2

    .line 451
    long-to-int v2, v2

    .line 452
    move/from16 v3, v23

    .line 453
    .line 454
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 455
    .line 456
    .line 457
    move-result v22

    .line 458
    const/16 v23, 0x0

    .line 459
    .line 460
    if-eqz v22, :cond_1

    .line 461
    .line 462
    move-object/from16 v67, v23

    .line 463
    .line 464
    :goto_3
    move/from16 v66, v2

    .line 465
    .line 466
    move/from16 v2, v24

    .line 467
    .line 468
    goto :goto_4

    .line 469
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v22

    .line 473
    move-object/from16 v67, v22

    .line 474
    .line 475
    goto :goto_3

    .line 476
    :goto_4
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 477
    .line 478
    .line 479
    move-result v22

    .line 480
    if-eqz v22, :cond_2

    .line 481
    .line 482
    move/from16 v24, v3

    .line 483
    .line 484
    move/from16 v22, v4

    .line 485
    .line 486
    move-object/from16 v3, v23

    .line 487
    .line 488
    goto :goto_5

    .line 489
    :cond_2
    move/from16 v24, v3

    .line 490
    .line 491
    move/from16 v22, v4

    .line 492
    .line 493
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 494
    .line 495
    .line 496
    move-result-wide v3

    .line 497
    long-to-int v3, v3

    .line 498
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    :goto_5
    if-eqz v3, :cond_4

    .line 503
    .line 504
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-eqz v3, :cond_3

    .line 509
    .line 510
    const/4 v3, 0x1

    .line 511
    goto :goto_6

    .line 512
    :cond_3
    const/4 v3, 0x0

    .line 513
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 514
    .line 515
    .line 516
    move-result-object v23

    .line 517
    :cond_4
    move-object/from16 v68, v23

    .line 518
    .line 519
    move/from16 v3, v25

    .line 520
    .line 521
    move/from16 v23, v5

    .line 522
    .line 523
    goto :goto_7

    .line 524
    :catchall_0
    move-exception v0

    .line 525
    goto/16 :goto_10

    .line 526
    .line 527
    :goto_7
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 528
    .line 529
    .line 530
    move-result-wide v4

    .line 531
    long-to-int v4, v4

    .line 532
    invoke-static {v4}, Lkotlin/TuplesKt;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 533
    .line 534
    .line 535
    move-result-object v74

    .line 536
    move/from16 v4, v26

    .line 537
    .line 538
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 539
    .line 540
    .line 541
    move-result-object v5

    .line 542
    invoke-static {v5}, Lkotlin/TuplesKt;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 543
    .line 544
    .line 545
    move-result-object v73

    .line 546
    move/from16 v25, v2

    .line 547
    .line 548
    move/from16 v26, v3

    .line 549
    .line 550
    move/from16 v5, v27

    .line 551
    .line 552
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 553
    .line 554
    .line 555
    move-result-wide v2

    .line 556
    long-to-int v2, v2

    .line 557
    if-eqz v2, :cond_5

    .line 558
    .line 559
    const/16 v75, 0x1

    .line 560
    .line 561
    :goto_8
    move/from16 v27, v4

    .line 562
    .line 563
    move/from16 v2, v28

    .line 564
    .line 565
    goto :goto_9

    .line 566
    :cond_5
    const/16 v75, 0x0

    .line 567
    .line 568
    goto :goto_8

    .line 569
    :goto_9
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 570
    .line 571
    .line 572
    move-result-wide v3

    .line 573
    long-to-int v3, v3

    .line 574
    if-eqz v3, :cond_6

    .line 575
    .line 576
    const/16 v76, 0x1

    .line 577
    .line 578
    :goto_a
    move/from16 v28, v5

    .line 579
    .line 580
    move/from16 v3, v29

    .line 581
    .line 582
    goto :goto_b

    .line 583
    :cond_6
    const/16 v76, 0x0

    .line 584
    .line 585
    goto :goto_a

    .line 586
    :goto_b
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 587
    .line 588
    .line 589
    move-result-wide v4

    .line 590
    long-to-int v4, v4

    .line 591
    if-eqz v4, :cond_7

    .line 592
    .line 593
    const/16 v77, 0x1

    .line 594
    .line 595
    :goto_c
    move v5, v2

    .line 596
    move/from16 v29, v3

    .line 597
    .line 598
    move/from16 v4, v30

    .line 599
    .line 600
    goto :goto_d

    .line 601
    :cond_7
    const/16 v77, 0x0

    .line 602
    .line 603
    goto :goto_c

    .line 604
    :goto_d
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 605
    .line 606
    .line 607
    move-result-wide v2

    .line 608
    long-to-int v2, v2

    .line 609
    if-eqz v2, :cond_8

    .line 610
    .line 611
    const/16 v78, 0x1

    .line 612
    .line 613
    :goto_e
    move/from16 v2, v31

    .line 614
    .line 615
    goto :goto_f

    .line 616
    :cond_8
    const/16 v78, 0x0

    .line 617
    .line 618
    goto :goto_e

    .line 619
    :goto_f
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 620
    .line 621
    .line 622
    move-result-wide v79

    .line 623
    move/from16 v3, v32

    .line 624
    .line 625
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 626
    .line 627
    .line 628
    move-result-wide v81

    .line 629
    move/from16 v31, v2

    .line 630
    .line 631
    move/from16 v2, v33

    .line 632
    .line 633
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 634
    .line 635
    .line 636
    move-result-object v30

    .line 637
    invoke-static/range {v30 .. v30}, Lkotlin/TuplesKt;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 638
    .line 639
    .line 640
    move-result-object v83

    .line 641
    new-instance v48, Landroidx/work/Constraints;

    .line 642
    .line 643
    move-object/from16 v72, v48

    .line 644
    .line 645
    invoke-direct/range {v72 .. v83}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 646
    .line 647
    .line 648
    move-object/from16 v48, v72

    .line 649
    .line 650
    new-instance v35, Landroidx/work/impl/model/WorkSpec;

    .line 651
    .line 652
    move/from16 v49, v14

    .line 653
    .line 654
    invoke-direct/range {v35 .. v68}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 655
    .line 656
    .line 657
    move-object/from16 v14, v35

    .line 658
    .line 659
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    .line 661
    .line 662
    move/from16 v14, v28

    .line 663
    .line 664
    move/from16 v28, v5

    .line 665
    .line 666
    move/from16 v5, v17

    .line 667
    .line 668
    move/from16 v17, v18

    .line 669
    .line 670
    move/from16 v18, v19

    .line 671
    .line 672
    move/from16 v19, v20

    .line 673
    .line 674
    move/from16 v20, v23

    .line 675
    .line 676
    move/from16 v23, v24

    .line 677
    .line 678
    move/from16 v24, v25

    .line 679
    .line 680
    move/from16 v25, v26

    .line 681
    .line 682
    move/from16 v26, v27

    .line 683
    .line 684
    move/from16 v27, v14

    .line 685
    .line 686
    move/from16 v33, v2

    .line 687
    .line 688
    move/from16 v32, v3

    .line 689
    .line 690
    move/from16 v30, v4

    .line 691
    .line 692
    move v2, v15

    .line 693
    move/from16 v4, v16

    .line 694
    .line 695
    move/from16 v14, v34

    .line 696
    .line 697
    move/from16 v15, v69

    .line 698
    .line 699
    move/from16 v3, v70

    .line 700
    .line 701
    move/from16 v16, v71

    .line 702
    .line 703
    goto/16 :goto_0

    .line 704
    .line 705
    :cond_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 706
    .line 707
    .line 708
    return-object v0

    .line 709
    :goto_10
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 710
    .line 711
    .line 712
    throw v0
.end method

.method private final invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Character;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 p1, 0x54

    .line 8
    .line 9
    if-eq p0, p1, :cond_1

    .line 10
    .line 11
    const/16 p1, 0x74

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private final invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Character;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 p1, 0x3a

    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private final invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Character;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 p1, 0x3a

    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private final invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda5(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Character;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-gt p1, p0, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x3a

    .line 13
    .line 14
    if-ge p0, p1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private final invoke$kotlinx$coroutines$CoroutineDispatcher$Key$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 2
    .line 3
    instance-of p0, p1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 85

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/Data$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "generation"

    .line 6
    .line 7
    const-string v3, "period_count"

    .line 8
    .line 9
    const-string v4, "out_of_quota_policy"

    .line 10
    .line 11
    const-string v5, "run_in_foreground"

    .line 12
    .line 13
    const-string v6, "schedule_requested_at"

    .line 14
    .line 15
    const-string v7, "minimum_retention_duration"

    .line 16
    .line 17
    const-string v8, "last_enqueue_time"

    .line 18
    .line 19
    const-string v9, "backoff_delay_duration"

    .line 20
    .line 21
    const-string v10, "backoff_policy"

    .line 22
    .line 23
    const-string v11, "run_attempt_count"

    .line 24
    .line 25
    const-string v12, "flex_duration"

    .line 26
    .line 27
    const-string v13, "interval_duration"

    .line 28
    .line 29
    const-string v14, "initial_delay"

    .line 30
    .line 31
    const-string v15, "output"

    .line 32
    .line 33
    const-string v0, "input"

    .line 34
    .line 35
    move/from16 v16, v1

    .line 36
    .line 37
    const-string v1, "input_merger_class_name"

    .line 38
    .line 39
    move-object/from16 v17, v2

    .line 40
    .line 41
    const-string/jumbo v2, "worker_class_name"

    .line 42
    .line 43
    .line 44
    move-object/from16 v18, v3

    .line 45
    .line 46
    const-string v3, "state"

    .line 47
    .line 48
    move-object/from16 v19, v4

    .line 49
    .line 50
    const-string v4, "id"

    .line 51
    .line 52
    const/16 v20, 0x0

    .line 53
    .line 54
    move-object/from16 v21, v5

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    packed-switch v16, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0xc8

    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlinx$coroutines$CoroutineDispatcher$Key$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda5(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda3(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    :pswitch_5
    move-object/from16 v0, p1

    .line 93
    .line 94
    check-cast v0, Ljava/lang/Character;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    const/16 v1, 0x2d

    .line 101
    .line 102
    if-ne v0, v1, :cond_0

    .line 103
    .line 104
    const/4 v5, 0x1

    .line 105
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    return-object v0

    .line 110
    :pswitch_6
    move-object/from16 v0, p1

    .line 111
    .line 112
    check-cast v0, Ljava/lang/Character;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/16 v1, 0x2d

    .line 119
    .line 120
    if-ne v0, v1, :cond_1

    .line 121
    .line 122
    const/4 v5, 0x1

    .line 123
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0

    .line 128
    :pswitch_7
    if-nez p1, :cond_2

    .line 129
    .line 130
    const/4 v5, 0x1

    .line 131
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0

    .line 136
    :pswitch_8
    move-object/from16 v0, p1

    .line 137
    .line 138
    check-cast v0, Lkotlin/sequences/Sequence;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0

    .line 148
    :pswitch_9
    move-object/from16 v0, p1

    .line 149
    .line 150
    check-cast v0, Landroid/content/Context;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 161
    .line 162
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    return-object v0

    .line 167
    :pswitch_a
    move-object/from16 v0, p1

    .line 168
    .line 169
    check-cast v0, Landroid/content/Context;

    .line 170
    .line 171
    const/high16 v0, 0x3f800000    # 1.0f

    .line 172
    .line 173
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    return-object v0

    .line 178
    :pswitch_b
    move-object/from16 v0, p1

    .line 179
    .line 180
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 181
    .line 182
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 183
    .line 184
    return-object v0

    .line 185
    :pswitch_c
    move-object/from16 v0, p1

    .line 186
    .line 187
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State;

    .line 188
    .line 189
    return-object v0

    .line 190
    :pswitch_d
    move-object/from16 v0, p1

    .line 191
    .line 192
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    const-string v1, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    .line 198
    .line 199
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 204
    .line 205
    .line 206
    invoke-static {v0}, Lkotlin/TuplesKt;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 207
    .line 208
    .line 209
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 211
    .line 212
    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    return-object v0

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda7(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    return-object v0

    .line 228
    :pswitch_f
    move-object/from16 v0, p1

    .line 229
    .line 230
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 236
    .line 237
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    :try_start_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_3

    .line 246
    .line 247
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 248
    .line 249
    .line 250
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    long-to-int v0, v2

    .line 252
    if-eqz v0, :cond_3

    .line 253
    .line 254
    const/4 v5, 0x1

    .line 255
    goto :goto_0

    .line 256
    :catchall_1
    move-exception v0

    .line 257
    goto :goto_1

    .line 258
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 259
    .line 260
    .line 261
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    return-object v0

    .line 266
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 267
    .line 268
    .line 269
    throw v0

    .line 270
    :pswitch_10
    move-object/from16 v0, p1

    .line 271
    .line 272
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    const-string v1, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    .line 278
    .line 279
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    :try_start_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_4

    .line 288
    .line 289
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 290
    .line 291
    .line 292
    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 293
    long-to-int v5, v2

    .line 294
    goto :goto_2

    .line 295
    :catchall_2
    move-exception v0

    .line 296
    goto :goto_3

    .line 297
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 298
    .line 299
    .line 300
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    return-object v0

    .line 305
    :goto_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :pswitch_11
    move-object/from16 v5, p1

    .line 310
    .line 311
    check-cast v5, Landroidx/sqlite/SQLiteConnection;

    .line 312
    .line 313
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    move-object/from16 v22, v6

    .line 317
    .line 318
    const-string v6, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time"

    .line 319
    .line 320
    invoke-interface {v5, v6}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    :try_start_3
    invoke-static {v5, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    invoke-static {v5, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    invoke-static {v5, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    invoke-static {v5, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    invoke-static {v5, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    invoke-static {v5, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    invoke-static {v5, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    move-result v13

    .line 356
    invoke-static {v5, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    invoke-static {v5, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v11

    .line 364
    invoke-static {v5, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v10

    .line 368
    invoke-static {v5, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    move-result v9

    .line 372
    invoke-static {v5, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    invoke-static {v5, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    move-result v7

    .line 380
    move-object/from16 v15, v22

    .line 381
    .line 382
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v15

    .line 386
    move/from16 p0, v15

    .line 387
    .line 388
    move-object/from16 v15, v21

    .line 389
    .line 390
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    move-result v15

    .line 394
    move/from16 p1, v15

    .line 395
    .line 396
    move-object/from16 v15, v19

    .line 397
    .line 398
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    move-result v15

    .line 402
    move/from16 v19, v15

    .line 403
    .line 404
    move-object/from16 v15, v18

    .line 405
    .line 406
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result v15

    .line 410
    move/from16 v18, v15

    .line 411
    .line 412
    move-object/from16 v15, v17

    .line 413
    .line 414
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v15

    .line 418
    move/from16 v17, v15

    .line 419
    .line 420
    const-string v15, "next_schedule_time_override"

    .line 421
    .line 422
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    move-result v15

    .line 426
    move/from16 v21, v15

    .line 427
    .line 428
    const-string v15, "next_schedule_time_override_generation"

    .line 429
    .line 430
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    move-result v15

    .line 434
    move/from16 v22, v15

    .line 435
    .line 436
    const-string v15, "stop_reason"

    .line 437
    .line 438
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    move-result v15

    .line 442
    move/from16 v23, v15

    .line 443
    .line 444
    const-string/jumbo v15, "trace_tag"

    .line 445
    .line 446
    .line 447
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    move-result v15

    .line 451
    move/from16 v24, v15

    .line 452
    .line 453
    const-string v15, "backoff_on_system_interruptions"

    .line 454
    .line 455
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    move-result v15

    .line 459
    move/from16 v25, v15

    .line 460
    .line 461
    const-string v15, "required_network_type"

    .line 462
    .line 463
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    move-result v15

    .line 467
    move/from16 v26, v15

    .line 468
    .line 469
    const-string v15, "required_network_request"

    .line 470
    .line 471
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    move-result v15

    .line 475
    move/from16 v27, v15

    .line 476
    .line 477
    const-string v15, "requires_charging"

    .line 478
    .line 479
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    move-result v15

    .line 483
    move/from16 v28, v15

    .line 484
    .line 485
    const-string v15, "requires_device_idle"

    .line 486
    .line 487
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    move-result v15

    .line 491
    move/from16 v29, v15

    .line 492
    .line 493
    const-string v15, "requires_battery_not_low"

    .line 494
    .line 495
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    move-result v15

    .line 499
    move/from16 v30, v15

    .line 500
    .line 501
    const-string v15, "requires_storage_not_low"

    .line 502
    .line 503
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    move-result v15

    .line 507
    move/from16 v31, v15

    .line 508
    .line 509
    const-string/jumbo v15, "trigger_content_update_delay"

    .line 510
    .line 511
    .line 512
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    move-result v15

    .line 516
    move/from16 v32, v15

    .line 517
    .line 518
    const-string/jumbo v15, "trigger_max_content_delay"

    .line 519
    .line 520
    .line 521
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    move-result v15

    .line 525
    move/from16 v33, v15

    .line 526
    .line 527
    const-string v15, "content_uri_triggers"

    .line 528
    .line 529
    invoke-static {v5, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    move-result v15

    .line 533
    move/from16 v34, v15

    .line 534
    .line 535
    new-instance v15, Ljava/util/ArrayList;

    .line 536
    .line 537
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .line 539
    .line 540
    :goto_4
    invoke-interface {v5}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 541
    .line 542
    .line 543
    move-result v35

    .line 544
    if-eqz v35, :cond_e

    .line 545
    .line 546
    invoke-interface {v5, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v37

    .line 550
    move/from16 v70, v7

    .line 551
    .line 552
    move/from16 v35, v8

    .line 553
    .line 554
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 555
    .line 556
    .line 557
    move-result-wide v7

    .line 558
    long-to-int v7, v7

    .line 559
    invoke-static {v7}, Lkotlin/TuplesKt;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 560
    .line 561
    .line 562
    move-result-object v38

    .line 563
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v39

    .line 567
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v40

    .line 571
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 572
    .line 573
    .line 574
    move-result-object v7

    .line 575
    sget-object v8, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 576
    .line 577
    invoke-static {v7}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 578
    .line 579
    .line 580
    move-result-object v41

    .line 581
    invoke-interface {v5, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 582
    .line 583
    .line 584
    move-result-object v7

    .line 585
    invoke-static {v7}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 586
    .line 587
    .line 588
    move-result-object v42

    .line 589
    invoke-interface {v5, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 590
    .line 591
    .line 592
    move-result-wide v43

    .line 593
    invoke-interface {v5, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 594
    .line 595
    .line 596
    move-result-wide v45

    .line 597
    invoke-interface {v5, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 598
    .line 599
    .line 600
    move-result-wide v47

    .line 601
    invoke-interface {v5, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 602
    .line 603
    .line 604
    move-result-wide v7

    .line 605
    long-to-int v7, v7

    .line 606
    move/from16 v72, v0

    .line 607
    .line 608
    move/from16 v71, v1

    .line 609
    .line 610
    invoke-interface {v5, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 611
    .line 612
    .line 613
    move-result-wide v0

    .line 614
    long-to-int v0, v0

    .line 615
    invoke-static {v0}, Lkotlin/TuplesKt;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 616
    .line 617
    .line 618
    move-result-object v51

    .line 619
    invoke-interface {v5, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 620
    .line 621
    .line 622
    move-result-wide v52

    .line 623
    move/from16 v0, v35

    .line 624
    .line 625
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 626
    .line 627
    .line 628
    move-result-wide v54

    .line 629
    move/from16 v1, v70

    .line 630
    .line 631
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 632
    .line 633
    .line 634
    move-result-wide v56

    .line 635
    move/from16 v8, p0

    .line 636
    .line 637
    invoke-interface {v5, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 638
    .line 639
    .line 640
    move-result-wide v58

    .line 641
    move/from16 v35, v0

    .line 642
    .line 643
    move/from16 v70, v1

    .line 644
    .line 645
    move/from16 p0, v2

    .line 646
    .line 647
    move/from16 v0, p1

    .line 648
    .line 649
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 650
    .line 651
    .line 652
    move-result-wide v1

    .line 653
    long-to-int v1, v1

    .line 654
    if-eqz v1, :cond_5

    .line 655
    .line 656
    const/16 v60, 0x1

    .line 657
    .line 658
    :goto_5
    move/from16 p1, v3

    .line 659
    .line 660
    move/from16 v1, v19

    .line 661
    .line 662
    goto :goto_6

    .line 663
    :cond_5
    const/16 v60, 0x0

    .line 664
    .line 665
    goto :goto_5

    .line 666
    :goto_6
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 667
    .line 668
    .line 669
    move-result-wide v2

    .line 670
    long-to-int v2, v2

    .line 671
    invoke-static {v2}, Lkotlin/TuplesKt;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 672
    .line 673
    .line 674
    move-result-object v61

    .line 675
    move v3, v0

    .line 676
    move/from16 v19, v1

    .line 677
    .line 678
    move/from16 v2, v18

    .line 679
    .line 680
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 681
    .line 682
    .line 683
    move-result-wide v0

    .line 684
    long-to-int v0, v0

    .line 685
    move/from16 v18, v2

    .line 686
    .line 687
    move/from16 v1, v17

    .line 688
    .line 689
    move/from16 v17, v3

    .line 690
    .line 691
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 692
    .line 693
    .line 694
    move-result-wide v2

    .line 695
    long-to-int v2, v2

    .line 696
    move/from16 v3, v21

    .line 697
    .line 698
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 699
    .line 700
    .line 701
    move-result-wide v64

    .line 702
    move/from16 v62, v0

    .line 703
    .line 704
    move/from16 v21, v1

    .line 705
    .line 706
    move/from16 v63, v2

    .line 707
    .line 708
    move/from16 v0, v22

    .line 709
    .line 710
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 711
    .line 712
    .line 713
    move-result-wide v1

    .line 714
    long-to-int v1, v1

    .line 715
    move/from16 v22, v0

    .line 716
    .line 717
    move/from16 v66, v1

    .line 718
    .line 719
    move/from16 v2, v23

    .line 720
    .line 721
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 722
    .line 723
    .line 724
    move-result-wide v0

    .line 725
    long-to-int v0, v0

    .line 726
    move/from16 v1, v24

    .line 727
    .line 728
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 729
    .line 730
    .line 731
    move-result v23

    .line 732
    if-eqz v23, :cond_6

    .line 733
    .line 734
    move-object/from16 v68, v20

    .line 735
    .line 736
    :goto_7
    move/from16 v67, v0

    .line 737
    .line 738
    move/from16 v0, v25

    .line 739
    .line 740
    goto :goto_8

    .line 741
    :cond_6
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v23

    .line 745
    move-object/from16 v68, v23

    .line 746
    .line 747
    goto :goto_7

    .line 748
    :goto_8
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 749
    .line 750
    .line 751
    move-result v23

    .line 752
    if-eqz v23, :cond_7

    .line 753
    .line 754
    move/from16 v24, v1

    .line 755
    .line 756
    move/from16 v23, v2

    .line 757
    .line 758
    move-object/from16 v1, v20

    .line 759
    .line 760
    goto :goto_9

    .line 761
    :cond_7
    move/from16 v24, v1

    .line 762
    .line 763
    move/from16 v23, v2

    .line 764
    .line 765
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 766
    .line 767
    .line 768
    move-result-wide v1

    .line 769
    long-to-int v1, v1

    .line 770
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    :goto_9
    if-eqz v1, :cond_9

    .line 775
    .line 776
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 777
    .line 778
    .line 779
    move-result v1

    .line 780
    if-eqz v1, :cond_8

    .line 781
    .line 782
    const/4 v1, 0x1

    .line 783
    goto :goto_a

    .line 784
    :cond_8
    const/4 v1, 0x0

    .line 785
    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    move-object/from16 v69, v1

    .line 790
    .line 791
    :goto_b
    move/from16 v25, v3

    .line 792
    .line 793
    move/from16 v1, v26

    .line 794
    .line 795
    goto :goto_c

    .line 796
    :catchall_3
    move-exception v0

    .line 797
    goto/16 :goto_15

    .line 798
    .line 799
    :cond_9
    move-object/from16 v69, v20

    .line 800
    .line 801
    goto :goto_b

    .line 802
    :goto_c
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 803
    .line 804
    .line 805
    move-result-wide v2

    .line 806
    long-to-int v2, v2

    .line 807
    invoke-static {v2}, Lkotlin/TuplesKt;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 808
    .line 809
    .line 810
    move-result-object v75

    .line 811
    move/from16 v2, v27

    .line 812
    .line 813
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    invoke-static {v3}, Lkotlin/TuplesKt;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 818
    .line 819
    .line 820
    move-result-object v74

    .line 821
    move/from16 v26, v0

    .line 822
    .line 823
    move/from16 v27, v1

    .line 824
    .line 825
    move/from16 v3, v28

    .line 826
    .line 827
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 828
    .line 829
    .line 830
    move-result-wide v0

    .line 831
    long-to-int v0, v0

    .line 832
    if-eqz v0, :cond_a

    .line 833
    .line 834
    const/16 v76, 0x1

    .line 835
    .line 836
    :goto_d
    move/from16 v28, v2

    .line 837
    .line 838
    move/from16 v0, v29

    .line 839
    .line 840
    goto :goto_e

    .line 841
    :cond_a
    const/16 v76, 0x0

    .line 842
    .line 843
    goto :goto_d

    .line 844
    :goto_e
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 845
    .line 846
    .line 847
    move-result-wide v1

    .line 848
    long-to-int v1, v1

    .line 849
    if-eqz v1, :cond_b

    .line 850
    .line 851
    const/16 v77, 0x1

    .line 852
    .line 853
    :goto_f
    move/from16 v29, v3

    .line 854
    .line 855
    move/from16 v1, v30

    .line 856
    .line 857
    goto :goto_10

    .line 858
    :cond_b
    const/16 v77, 0x0

    .line 859
    .line 860
    goto :goto_f

    .line 861
    :goto_10
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 862
    .line 863
    .line 864
    move-result-wide v2

    .line 865
    long-to-int v2, v2

    .line 866
    if-eqz v2, :cond_c

    .line 867
    .line 868
    const/16 v78, 0x1

    .line 869
    .line 870
    :goto_11
    move v3, v0

    .line 871
    move/from16 v30, v1

    .line 872
    .line 873
    move/from16 v2, v31

    .line 874
    .line 875
    goto :goto_12

    .line 876
    :cond_c
    const/16 v78, 0x0

    .line 877
    .line 878
    goto :goto_11

    .line 879
    :goto_12
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 880
    .line 881
    .line 882
    move-result-wide v0

    .line 883
    long-to-int v0, v0

    .line 884
    if-eqz v0, :cond_d

    .line 885
    .line 886
    const/16 v79, 0x1

    .line 887
    .line 888
    :goto_13
    move/from16 v0, v32

    .line 889
    .line 890
    goto :goto_14

    .line 891
    :cond_d
    const/16 v79, 0x0

    .line 892
    .line 893
    goto :goto_13

    .line 894
    :goto_14
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 895
    .line 896
    .line 897
    move-result-wide v80

    .line 898
    move/from16 v1, v33

    .line 899
    .line 900
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 901
    .line 902
    .line 903
    move-result-wide v82

    .line 904
    move/from16 v32, v0

    .line 905
    .line 906
    move/from16 v0, v34

    .line 907
    .line 908
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 909
    .line 910
    .line 911
    move-result-object v31

    .line 912
    invoke-static/range {v31 .. v31}, Lkotlin/TuplesKt;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 913
    .line 914
    .line 915
    move-result-object v84

    .line 916
    new-instance v49, Landroidx/work/Constraints;

    .line 917
    .line 918
    move-object/from16 v73, v49

    .line 919
    .line 920
    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 921
    .line 922
    .line 923
    move-object/from16 v49, v73

    .line 924
    .line 925
    new-instance v36, Landroidx/work/impl/model/WorkSpec;

    .line 926
    .line 927
    move/from16 v50, v7

    .line 928
    .line 929
    invoke-direct/range {v36 .. v69}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 930
    .line 931
    .line 932
    move-object/from16 v7, v36

    .line 933
    .line 934
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 935
    .line 936
    .line 937
    move v7, v3

    .line 938
    move/from16 v3, p1

    .line 939
    .line 940
    move/from16 p1, v17

    .line 941
    .line 942
    move/from16 v17, v21

    .line 943
    .line 944
    move/from16 v21, v25

    .line 945
    .line 946
    move/from16 v25, v26

    .line 947
    .line 948
    move/from16 v26, v27

    .line 949
    .line 950
    move/from16 v27, v28

    .line 951
    .line 952
    move/from16 v28, v29

    .line 953
    .line 954
    move/from16 v29, v7

    .line 955
    .line 956
    move/from16 v34, v0

    .line 957
    .line 958
    move/from16 v33, v1

    .line 959
    .line 960
    move/from16 v31, v2

    .line 961
    .line 962
    move/from16 v7, v70

    .line 963
    .line 964
    move/from16 v1, v71

    .line 965
    .line 966
    move/from16 v0, v72

    .line 967
    .line 968
    move/from16 v2, p0

    .line 969
    .line 970
    move/from16 p0, v8

    .line 971
    .line 972
    move/from16 v8, v35

    .line 973
    .line 974
    goto/16 :goto_4

    .line 975
    .line 976
    :cond_e
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 977
    .line 978
    .line 979
    return-object v15

    .line 980
    :goto_15
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 981
    .line 982
    .line 983
    throw v0

    .line 984
    :pswitch_12
    const-string v0, "WidgetFeaturedPageWorker"

    .line 985
    .line 986
    move-object/from16 v1, p1

    .line 987
    .line 988
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 989
    .line 990
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 991
    .line 992
    .line 993
    const-string v2, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 994
    .line 995
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    const/4 v5, 0x1

    .line 1000
    :try_start_4
    invoke-interface {v1, v5, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    new-instance v0, Ljava/util/ArrayList;

    .line 1004
    .line 1005
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .line 1007
    .line 1008
    :goto_16
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v2

    .line 1012
    if-eqz v2, :cond_f

    .line 1013
    .line 1014
    const/4 v2, 0x0

    .line 1015
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v3

    .line 1019
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1020
    .line 1021
    .line 1022
    goto :goto_16

    .line 1023
    :catchall_4
    move-exception v0

    .line 1024
    goto :goto_17

    .line 1025
    :cond_f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1026
    .line 1027
    .line 1028
    return-object v0

    .line 1029
    :goto_17
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1030
    .line 1031
    .line 1032
    throw v0

    .line 1033
    :pswitch_13
    move-object v5, v15

    .line 1034
    move-object/from16 v15, p1

    .line 1035
    .line 1036
    check-cast v15, Landroidx/sqlite/SQLiteConnection;

    .line 1037
    .line 1038
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    .line 1040
    .line 1041
    move-object/from16 v22, v6

    .line 1042
    .line 1043
    const-string v6, "SELECT * FROM workspec WHERE state=1"

    .line 1044
    .line 1045
    invoke-interface {v15, v6}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v6

    .line 1049
    :try_start_5
    invoke-static {v6, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1050
    .line 1051
    .line 1052
    move-result v4

    .line 1053
    invoke-static {v6, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1054
    .line 1055
    .line 1056
    move-result v3

    .line 1057
    invoke-static {v6, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    move-result v2

    .line 1061
    invoke-static {v6, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1062
    .line 1063
    .line 1064
    move-result v1

    .line 1065
    invoke-static {v6, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1066
    .line 1067
    .line 1068
    move-result v0

    .line 1069
    invoke-static {v6, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1070
    .line 1071
    .line 1072
    move-result v5

    .line 1073
    invoke-static {v6, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1074
    .line 1075
    .line 1076
    move-result v14

    .line 1077
    invoke-static {v6, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1078
    .line 1079
    .line 1080
    move-result v13

    .line 1081
    invoke-static {v6, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1082
    .line 1083
    .line 1084
    move-result v12

    .line 1085
    invoke-static {v6, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1086
    .line 1087
    .line 1088
    move-result v11

    .line 1089
    invoke-static {v6, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1090
    .line 1091
    .line 1092
    move-result v10

    .line 1093
    invoke-static {v6, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1094
    .line 1095
    .line 1096
    move-result v9

    .line 1097
    invoke-static {v6, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1098
    .line 1099
    .line 1100
    move-result v8

    .line 1101
    invoke-static {v6, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1102
    .line 1103
    .line 1104
    move-result v7

    .line 1105
    move-object/from16 v15, v22

    .line 1106
    .line 1107
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1108
    .line 1109
    .line 1110
    move-result v15

    .line 1111
    move/from16 p0, v15

    .line 1112
    .line 1113
    move-object/from16 v15, v21

    .line 1114
    .line 1115
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1116
    .line 1117
    .line 1118
    move-result v15

    .line 1119
    move/from16 p1, v15

    .line 1120
    .line 1121
    move-object/from16 v15, v19

    .line 1122
    .line 1123
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1124
    .line 1125
    .line 1126
    move-result v15

    .line 1127
    move/from16 v19, v15

    .line 1128
    .line 1129
    move-object/from16 v15, v18

    .line 1130
    .line 1131
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1132
    .line 1133
    .line 1134
    move-result v15

    .line 1135
    move/from16 v18, v15

    .line 1136
    .line 1137
    move-object/from16 v15, v17

    .line 1138
    .line 1139
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1140
    .line 1141
    .line 1142
    move-result v15

    .line 1143
    move/from16 v17, v15

    .line 1144
    .line 1145
    const-string v15, "next_schedule_time_override"

    .line 1146
    .line 1147
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1148
    .line 1149
    .line 1150
    move-result v15

    .line 1151
    move/from16 v21, v15

    .line 1152
    .line 1153
    const-string v15, "next_schedule_time_override_generation"

    .line 1154
    .line 1155
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1156
    .line 1157
    .line 1158
    move-result v15

    .line 1159
    move/from16 v22, v15

    .line 1160
    .line 1161
    const-string v15, "stop_reason"

    .line 1162
    .line 1163
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1164
    .line 1165
    .line 1166
    move-result v15

    .line 1167
    move/from16 v23, v15

    .line 1168
    .line 1169
    const-string/jumbo v15, "trace_tag"

    .line 1170
    .line 1171
    .line 1172
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1173
    .line 1174
    .line 1175
    move-result v15

    .line 1176
    move/from16 v24, v15

    .line 1177
    .line 1178
    const-string v15, "backoff_on_system_interruptions"

    .line 1179
    .line 1180
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1181
    .line 1182
    .line 1183
    move-result v15

    .line 1184
    move/from16 v25, v15

    .line 1185
    .line 1186
    const-string v15, "required_network_type"

    .line 1187
    .line 1188
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1189
    .line 1190
    .line 1191
    move-result v15

    .line 1192
    move/from16 v26, v15

    .line 1193
    .line 1194
    const-string v15, "required_network_request"

    .line 1195
    .line 1196
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1197
    .line 1198
    .line 1199
    move-result v15

    .line 1200
    move/from16 v27, v15

    .line 1201
    .line 1202
    const-string v15, "requires_charging"

    .line 1203
    .line 1204
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1205
    .line 1206
    .line 1207
    move-result v15

    .line 1208
    move/from16 v28, v15

    .line 1209
    .line 1210
    const-string v15, "requires_device_idle"

    .line 1211
    .line 1212
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1213
    .line 1214
    .line 1215
    move-result v15

    .line 1216
    move/from16 v29, v15

    .line 1217
    .line 1218
    const-string v15, "requires_battery_not_low"

    .line 1219
    .line 1220
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1221
    .line 1222
    .line 1223
    move-result v15

    .line 1224
    move/from16 v30, v15

    .line 1225
    .line 1226
    const-string v15, "requires_storage_not_low"

    .line 1227
    .line 1228
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1229
    .line 1230
    .line 1231
    move-result v15

    .line 1232
    move/from16 v31, v15

    .line 1233
    .line 1234
    const-string/jumbo v15, "trigger_content_update_delay"

    .line 1235
    .line 1236
    .line 1237
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1238
    .line 1239
    .line 1240
    move-result v15

    .line 1241
    move/from16 v32, v15

    .line 1242
    .line 1243
    const-string/jumbo v15, "trigger_max_content_delay"

    .line 1244
    .line 1245
    .line 1246
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1247
    .line 1248
    .line 1249
    move-result v15

    .line 1250
    move/from16 v33, v15

    .line 1251
    .line 1252
    const-string v15, "content_uri_triggers"

    .line 1253
    .line 1254
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1255
    .line 1256
    .line 1257
    move-result v15

    .line 1258
    move/from16 v34, v15

    .line 1259
    .line 1260
    new-instance v15, Ljava/util/ArrayList;

    .line 1261
    .line 1262
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .line 1264
    .line 1265
    :goto_18
    invoke-interface {v6}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1266
    .line 1267
    .line 1268
    move-result v35

    .line 1269
    if-eqz v35, :cond_19

    .line 1270
    .line 1271
    invoke-interface {v6, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v37

    .line 1275
    move/from16 v70, v7

    .line 1276
    .line 1277
    move/from16 v35, v8

    .line 1278
    .line 1279
    invoke-interface {v6, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1280
    .line 1281
    .line 1282
    move-result-wide v7

    .line 1283
    long-to-int v7, v7

    .line 1284
    invoke-static {v7}, Lkotlin/TuplesKt;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v38

    .line 1288
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v39

    .line 1292
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v40

    .line 1296
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1297
    .line 1298
    .line 1299
    move-result-object v7

    .line 1300
    sget-object v8, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1301
    .line 1302
    invoke-static {v7}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v41

    .line 1306
    invoke-interface {v6, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1307
    .line 1308
    .line 1309
    move-result-object v7

    .line 1310
    invoke-static {v7}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v42

    .line 1314
    invoke-interface {v6, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1315
    .line 1316
    .line 1317
    move-result-wide v43

    .line 1318
    invoke-interface {v6, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1319
    .line 1320
    .line 1321
    move-result-wide v45

    .line 1322
    invoke-interface {v6, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1323
    .line 1324
    .line 1325
    move-result-wide v47

    .line 1326
    invoke-interface {v6, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1327
    .line 1328
    .line 1329
    move-result-wide v7

    .line 1330
    long-to-int v7, v7

    .line 1331
    move/from16 v72, v0

    .line 1332
    .line 1333
    move/from16 v71, v1

    .line 1334
    .line 1335
    invoke-interface {v6, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1336
    .line 1337
    .line 1338
    move-result-wide v0

    .line 1339
    long-to-int v0, v0

    .line 1340
    invoke-static {v0}, Lkotlin/TuplesKt;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v51

    .line 1344
    invoke-interface {v6, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1345
    .line 1346
    .line 1347
    move-result-wide v52

    .line 1348
    move/from16 v0, v35

    .line 1349
    .line 1350
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1351
    .line 1352
    .line 1353
    move-result-wide v54

    .line 1354
    move/from16 v1, v70

    .line 1355
    .line 1356
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1357
    .line 1358
    .line 1359
    move-result-wide v56

    .line 1360
    move/from16 v8, p0

    .line 1361
    .line 1362
    invoke-interface {v6, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1363
    .line 1364
    .line 1365
    move-result-wide v58

    .line 1366
    move/from16 v35, v0

    .line 1367
    .line 1368
    move/from16 v70, v1

    .line 1369
    .line 1370
    move/from16 p0, v2

    .line 1371
    .line 1372
    move/from16 v0, p1

    .line 1373
    .line 1374
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1375
    .line 1376
    .line 1377
    move-result-wide v1

    .line 1378
    long-to-int v1, v1

    .line 1379
    if-eqz v1, :cond_10

    .line 1380
    .line 1381
    const/16 v60, 0x1

    .line 1382
    .line 1383
    :goto_19
    move/from16 p1, v3

    .line 1384
    .line 1385
    move/from16 v1, v19

    .line 1386
    .line 1387
    goto :goto_1a

    .line 1388
    :cond_10
    const/16 v60, 0x0

    .line 1389
    .line 1390
    goto :goto_19

    .line 1391
    :goto_1a
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1392
    .line 1393
    .line 1394
    move-result-wide v2

    .line 1395
    long-to-int v2, v2

    .line 1396
    invoke-static {v2}, Lkotlin/TuplesKt;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v61

    .line 1400
    move v3, v0

    .line 1401
    move/from16 v19, v1

    .line 1402
    .line 1403
    move/from16 v2, v18

    .line 1404
    .line 1405
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1406
    .line 1407
    .line 1408
    move-result-wide v0

    .line 1409
    long-to-int v0, v0

    .line 1410
    move/from16 v18, v2

    .line 1411
    .line 1412
    move/from16 v1, v17

    .line 1413
    .line 1414
    move/from16 v17, v3

    .line 1415
    .line 1416
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1417
    .line 1418
    .line 1419
    move-result-wide v2

    .line 1420
    long-to-int v2, v2

    .line 1421
    move/from16 v3, v21

    .line 1422
    .line 1423
    invoke-interface {v6, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1424
    .line 1425
    .line 1426
    move-result-wide v64

    .line 1427
    move/from16 v62, v0

    .line 1428
    .line 1429
    move/from16 v21, v1

    .line 1430
    .line 1431
    move/from16 v63, v2

    .line 1432
    .line 1433
    move/from16 v0, v22

    .line 1434
    .line 1435
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1436
    .line 1437
    .line 1438
    move-result-wide v1

    .line 1439
    long-to-int v1, v1

    .line 1440
    move/from16 v22, v0

    .line 1441
    .line 1442
    move/from16 v66, v1

    .line 1443
    .line 1444
    move/from16 v2, v23

    .line 1445
    .line 1446
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1447
    .line 1448
    .line 1449
    move-result-wide v0

    .line 1450
    long-to-int v0, v0

    .line 1451
    move/from16 v1, v24

    .line 1452
    .line 1453
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v23

    .line 1457
    if-eqz v23, :cond_11

    .line 1458
    .line 1459
    move-object/from16 v68, v20

    .line 1460
    .line 1461
    :goto_1b
    move/from16 v67, v0

    .line 1462
    .line 1463
    move/from16 v0, v25

    .line 1464
    .line 1465
    goto :goto_1c

    .line 1466
    :cond_11
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v23

    .line 1470
    move-object/from16 v68, v23

    .line 1471
    .line 1472
    goto :goto_1b

    .line 1473
    :goto_1c
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v23

    .line 1477
    if-eqz v23, :cond_12

    .line 1478
    .line 1479
    move/from16 v24, v1

    .line 1480
    .line 1481
    move/from16 v23, v2

    .line 1482
    .line 1483
    move-object/from16 v1, v20

    .line 1484
    .line 1485
    goto :goto_1d

    .line 1486
    :cond_12
    move/from16 v24, v1

    .line 1487
    .line 1488
    move/from16 v23, v2

    .line 1489
    .line 1490
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1491
    .line 1492
    .line 1493
    move-result-wide v1

    .line 1494
    long-to-int v1, v1

    .line 1495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v1

    .line 1499
    :goto_1d
    if-eqz v1, :cond_14

    .line 1500
    .line 1501
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1502
    .line 1503
    .line 1504
    move-result v1

    .line 1505
    if-eqz v1, :cond_13

    .line 1506
    .line 1507
    const/4 v1, 0x1

    .line 1508
    goto :goto_1e

    .line 1509
    :cond_13
    const/4 v1, 0x0

    .line 1510
    :goto_1e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v1

    .line 1514
    move-object/from16 v69, v1

    .line 1515
    .line 1516
    :goto_1f
    move/from16 v25, v3

    .line 1517
    .line 1518
    move/from16 v1, v26

    .line 1519
    .line 1520
    goto :goto_20

    .line 1521
    :catchall_5
    move-exception v0

    .line 1522
    goto/16 :goto_29

    .line 1523
    .line 1524
    :cond_14
    move-object/from16 v69, v20

    .line 1525
    .line 1526
    goto :goto_1f

    .line 1527
    :goto_20
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1528
    .line 1529
    .line 1530
    move-result-wide v2

    .line 1531
    long-to-int v2, v2

    .line 1532
    invoke-static {v2}, Lkotlin/TuplesKt;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v75

    .line 1536
    move/from16 v2, v27

    .line 1537
    .line 1538
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1539
    .line 1540
    .line 1541
    move-result-object v3

    .line 1542
    invoke-static {v3}, Lkotlin/TuplesKt;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v74

    .line 1546
    move/from16 v26, v0

    .line 1547
    .line 1548
    move/from16 v27, v1

    .line 1549
    .line 1550
    move/from16 v3, v28

    .line 1551
    .line 1552
    invoke-interface {v6, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1553
    .line 1554
    .line 1555
    move-result-wide v0

    .line 1556
    long-to-int v0, v0

    .line 1557
    if-eqz v0, :cond_15

    .line 1558
    .line 1559
    const/16 v76, 0x1

    .line 1560
    .line 1561
    :goto_21
    move/from16 v28, v2

    .line 1562
    .line 1563
    move/from16 v0, v29

    .line 1564
    .line 1565
    goto :goto_22

    .line 1566
    :cond_15
    const/16 v76, 0x0

    .line 1567
    .line 1568
    goto :goto_21

    .line 1569
    :goto_22
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1570
    .line 1571
    .line 1572
    move-result-wide v1

    .line 1573
    long-to-int v1, v1

    .line 1574
    if-eqz v1, :cond_16

    .line 1575
    .line 1576
    const/16 v77, 0x1

    .line 1577
    .line 1578
    :goto_23
    move/from16 v29, v3

    .line 1579
    .line 1580
    move/from16 v1, v30

    .line 1581
    .line 1582
    goto :goto_24

    .line 1583
    :cond_16
    const/16 v77, 0x0

    .line 1584
    .line 1585
    goto :goto_23

    .line 1586
    :goto_24
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1587
    .line 1588
    .line 1589
    move-result-wide v2

    .line 1590
    long-to-int v2, v2

    .line 1591
    if-eqz v2, :cond_17

    .line 1592
    .line 1593
    const/16 v78, 0x1

    .line 1594
    .line 1595
    :goto_25
    move v3, v0

    .line 1596
    move/from16 v30, v1

    .line 1597
    .line 1598
    move/from16 v2, v31

    .line 1599
    .line 1600
    goto :goto_26

    .line 1601
    :cond_17
    const/16 v78, 0x0

    .line 1602
    .line 1603
    goto :goto_25

    .line 1604
    :goto_26
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1605
    .line 1606
    .line 1607
    move-result-wide v0

    .line 1608
    long-to-int v0, v0

    .line 1609
    if-eqz v0, :cond_18

    .line 1610
    .line 1611
    const/16 v79, 0x1

    .line 1612
    .line 1613
    :goto_27
    move/from16 v0, v32

    .line 1614
    .line 1615
    goto :goto_28

    .line 1616
    :cond_18
    const/16 v79, 0x0

    .line 1617
    .line 1618
    goto :goto_27

    .line 1619
    :goto_28
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1620
    .line 1621
    .line 1622
    move-result-wide v80

    .line 1623
    move/from16 v1, v33

    .line 1624
    .line 1625
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1626
    .line 1627
    .line 1628
    move-result-wide v82

    .line 1629
    move/from16 v32, v0

    .line 1630
    .line 1631
    move/from16 v0, v34

    .line 1632
    .line 1633
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1634
    .line 1635
    .line 1636
    move-result-object v31

    .line 1637
    invoke-static/range {v31 .. v31}, Lkotlin/TuplesKt;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v84

    .line 1641
    new-instance v49, Landroidx/work/Constraints;

    .line 1642
    .line 1643
    move-object/from16 v73, v49

    .line 1644
    .line 1645
    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1646
    .line 1647
    .line 1648
    move-object/from16 v49, v73

    .line 1649
    .line 1650
    new-instance v36, Landroidx/work/impl/model/WorkSpec;

    .line 1651
    .line 1652
    move/from16 v50, v7

    .line 1653
    .line 1654
    invoke-direct/range {v36 .. v69}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 1655
    .line 1656
    .line 1657
    move-object/from16 v7, v36

    .line 1658
    .line 1659
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1660
    .line 1661
    .line 1662
    move v7, v3

    .line 1663
    move/from16 v3, p1

    .line 1664
    .line 1665
    move/from16 p1, v17

    .line 1666
    .line 1667
    move/from16 v17, v21

    .line 1668
    .line 1669
    move/from16 v21, v25

    .line 1670
    .line 1671
    move/from16 v25, v26

    .line 1672
    .line 1673
    move/from16 v26, v27

    .line 1674
    .line 1675
    move/from16 v27, v28

    .line 1676
    .line 1677
    move/from16 v28, v29

    .line 1678
    .line 1679
    move/from16 v29, v7

    .line 1680
    .line 1681
    move/from16 v34, v0

    .line 1682
    .line 1683
    move/from16 v33, v1

    .line 1684
    .line 1685
    move/from16 v31, v2

    .line 1686
    .line 1687
    move/from16 v7, v70

    .line 1688
    .line 1689
    move/from16 v1, v71

    .line 1690
    .line 1691
    move/from16 v0, v72

    .line 1692
    .line 1693
    move/from16 v2, p0

    .line 1694
    .line 1695
    move/from16 p0, v8

    .line 1696
    .line 1697
    move/from16 v8, v35

    .line 1698
    .line 1699
    goto/16 :goto_18

    .line 1700
    .line 1701
    :cond_19
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    .line 1702
    .line 1703
    .line 1704
    return-object v15

    .line 1705
    :goto_29
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    .line 1706
    .line 1707
    .line 1708
    throw v0

    .line 1709
    :pswitch_14
    move-object v5, v15

    .line 1710
    move-object v15, v6

    .line 1711
    move-object/from16 v6, p1

    .line 1712
    .line 1713
    check-cast v6, Landroidx/sqlite/SQLiteConnection;

    .line 1714
    .line 1715
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1716
    .line 1717
    .line 1718
    move-object/from16 v22, v15

    .line 1719
    .line 1720
    const-string v15, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 1721
    .line 1722
    invoke-interface {v6, v15}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v6

    .line 1726
    :try_start_6
    invoke-static {v6, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1727
    .line 1728
    .line 1729
    move-result v4

    .line 1730
    invoke-static {v6, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1731
    .line 1732
    .line 1733
    move-result v3

    .line 1734
    invoke-static {v6, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1735
    .line 1736
    .line 1737
    move-result v2

    .line 1738
    invoke-static {v6, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1739
    .line 1740
    .line 1741
    move-result v1

    .line 1742
    invoke-static {v6, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1743
    .line 1744
    .line 1745
    move-result v0

    .line 1746
    invoke-static {v6, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1747
    .line 1748
    .line 1749
    move-result v5

    .line 1750
    invoke-static {v6, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1751
    .line 1752
    .line 1753
    move-result v14

    .line 1754
    invoke-static {v6, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1755
    .line 1756
    .line 1757
    move-result v13

    .line 1758
    invoke-static {v6, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1759
    .line 1760
    .line 1761
    move-result v12

    .line 1762
    invoke-static {v6, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1763
    .line 1764
    .line 1765
    move-result v11

    .line 1766
    invoke-static {v6, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1767
    .line 1768
    .line 1769
    move-result v10

    .line 1770
    invoke-static {v6, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1771
    .line 1772
    .line 1773
    move-result v9

    .line 1774
    invoke-static {v6, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1775
    .line 1776
    .line 1777
    move-result v8

    .line 1778
    invoke-static {v6, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1779
    .line 1780
    .line 1781
    move-result v7

    .line 1782
    move-object/from16 v15, v22

    .line 1783
    .line 1784
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1785
    .line 1786
    .line 1787
    move-result v15

    .line 1788
    move/from16 p0, v15

    .line 1789
    .line 1790
    move-object/from16 v15, v21

    .line 1791
    .line 1792
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1793
    .line 1794
    .line 1795
    move-result v15

    .line 1796
    move/from16 p1, v15

    .line 1797
    .line 1798
    move-object/from16 v15, v19

    .line 1799
    .line 1800
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1801
    .line 1802
    .line 1803
    move-result v15

    .line 1804
    move/from16 v19, v15

    .line 1805
    .line 1806
    move-object/from16 v15, v18

    .line 1807
    .line 1808
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1809
    .line 1810
    .line 1811
    move-result v15

    .line 1812
    move/from16 v18, v15

    .line 1813
    .line 1814
    move-object/from16 v15, v17

    .line 1815
    .line 1816
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1817
    .line 1818
    .line 1819
    move-result v15

    .line 1820
    move/from16 v17, v15

    .line 1821
    .line 1822
    const-string v15, "next_schedule_time_override"

    .line 1823
    .line 1824
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1825
    .line 1826
    .line 1827
    move-result v15

    .line 1828
    move/from16 v21, v15

    .line 1829
    .line 1830
    const-string v15, "next_schedule_time_override_generation"

    .line 1831
    .line 1832
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1833
    .line 1834
    .line 1835
    move-result v15

    .line 1836
    move/from16 v22, v15

    .line 1837
    .line 1838
    const-string v15, "stop_reason"

    .line 1839
    .line 1840
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1841
    .line 1842
    .line 1843
    move-result v15

    .line 1844
    move/from16 v23, v15

    .line 1845
    .line 1846
    const-string/jumbo v15, "trace_tag"

    .line 1847
    .line 1848
    .line 1849
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1850
    .line 1851
    .line 1852
    move-result v15

    .line 1853
    move/from16 v24, v15

    .line 1854
    .line 1855
    const-string v15, "backoff_on_system_interruptions"

    .line 1856
    .line 1857
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1858
    .line 1859
    .line 1860
    move-result v15

    .line 1861
    move/from16 v25, v15

    .line 1862
    .line 1863
    const-string v15, "required_network_type"

    .line 1864
    .line 1865
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1866
    .line 1867
    .line 1868
    move-result v15

    .line 1869
    move/from16 v26, v15

    .line 1870
    .line 1871
    const-string v15, "required_network_request"

    .line 1872
    .line 1873
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1874
    .line 1875
    .line 1876
    move-result v15

    .line 1877
    move/from16 v27, v15

    .line 1878
    .line 1879
    const-string v15, "requires_charging"

    .line 1880
    .line 1881
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1882
    .line 1883
    .line 1884
    move-result v15

    .line 1885
    move/from16 v28, v15

    .line 1886
    .line 1887
    const-string v15, "requires_device_idle"

    .line 1888
    .line 1889
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1890
    .line 1891
    .line 1892
    move-result v15

    .line 1893
    move/from16 v29, v15

    .line 1894
    .line 1895
    const-string v15, "requires_battery_not_low"

    .line 1896
    .line 1897
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1898
    .line 1899
    .line 1900
    move-result v15

    .line 1901
    move/from16 v30, v15

    .line 1902
    .line 1903
    const-string v15, "requires_storage_not_low"

    .line 1904
    .line 1905
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1906
    .line 1907
    .line 1908
    move-result v15

    .line 1909
    move/from16 v31, v15

    .line 1910
    .line 1911
    const-string/jumbo v15, "trigger_content_update_delay"

    .line 1912
    .line 1913
    .line 1914
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1915
    .line 1916
    .line 1917
    move-result v15

    .line 1918
    move/from16 v32, v15

    .line 1919
    .line 1920
    const-string/jumbo v15, "trigger_max_content_delay"

    .line 1921
    .line 1922
    .line 1923
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1924
    .line 1925
    .line 1926
    move-result v15

    .line 1927
    move/from16 v33, v15

    .line 1928
    .line 1929
    const-string v15, "content_uri_triggers"

    .line 1930
    .line 1931
    invoke-static {v6, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1932
    .line 1933
    .line 1934
    move-result v15

    .line 1935
    move/from16 v34, v15

    .line 1936
    .line 1937
    new-instance v15, Ljava/util/ArrayList;

    .line 1938
    .line 1939
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1940
    .line 1941
    .line 1942
    :goto_2a
    invoke-interface {v6}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1943
    .line 1944
    .line 1945
    move-result v35

    .line 1946
    if-eqz v35, :cond_23

    .line 1947
    .line 1948
    invoke-interface {v6, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v37

    .line 1952
    move/from16 v70, v7

    .line 1953
    .line 1954
    move/from16 v35, v8

    .line 1955
    .line 1956
    invoke-interface {v6, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1957
    .line 1958
    .line 1959
    move-result-wide v7

    .line 1960
    long-to-int v7, v7

    .line 1961
    invoke-static {v7}, Lkotlin/TuplesKt;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v38

    .line 1965
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v39

    .line 1969
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1970
    .line 1971
    .line 1972
    move-result-object v40

    .line 1973
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1974
    .line 1975
    .line 1976
    move-result-object v7

    .line 1977
    sget-object v8, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1978
    .line 1979
    invoke-static {v7}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v41

    .line 1983
    invoke-interface {v6, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1984
    .line 1985
    .line 1986
    move-result-object v7

    .line 1987
    invoke-static {v7}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v42

    .line 1991
    invoke-interface {v6, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1992
    .line 1993
    .line 1994
    move-result-wide v43

    .line 1995
    invoke-interface {v6, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1996
    .line 1997
    .line 1998
    move-result-wide v45

    .line 1999
    invoke-interface {v6, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2000
    .line 2001
    .line 2002
    move-result-wide v47

    .line 2003
    invoke-interface {v6, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2004
    .line 2005
    .line 2006
    move-result-wide v7

    .line 2007
    long-to-int v7, v7

    .line 2008
    move/from16 v71, v0

    .line 2009
    .line 2010
    move v8, v1

    .line 2011
    invoke-interface {v6, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2012
    .line 2013
    .line 2014
    move-result-wide v0

    .line 2015
    long-to-int v0, v0

    .line 2016
    invoke-static {v0}, Lkotlin/TuplesKt;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 2017
    .line 2018
    .line 2019
    move-result-object v51

    .line 2020
    invoke-interface {v6, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2021
    .line 2022
    .line 2023
    move-result-wide v52

    .line 2024
    move/from16 v0, v35

    .line 2025
    .line 2026
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2027
    .line 2028
    .line 2029
    move-result-wide v54

    .line 2030
    move/from16 v1, v70

    .line 2031
    .line 2032
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2033
    .line 2034
    .line 2035
    move-result-wide v56

    .line 2036
    move/from16 v35, v0

    .line 2037
    .line 2038
    move/from16 v0, p0

    .line 2039
    .line 2040
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2041
    .line 2042
    .line 2043
    move-result-wide v58

    .line 2044
    move/from16 p0, v0

    .line 2045
    .line 2046
    move/from16 v70, v1

    .line 2047
    .line 2048
    move/from16 v0, p1

    .line 2049
    .line 2050
    move/from16 p1, v2

    .line 2051
    .line 2052
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2053
    .line 2054
    .line 2055
    move-result-wide v1

    .line 2056
    long-to-int v1, v1

    .line 2057
    if-eqz v1, :cond_1a

    .line 2058
    .line 2059
    const/16 v60, 0x1

    .line 2060
    .line 2061
    :goto_2b
    move/from16 v1, v19

    .line 2062
    .line 2063
    move/from16 v19, v3

    .line 2064
    .line 2065
    goto :goto_2c

    .line 2066
    :cond_1a
    const/16 v60, 0x0

    .line 2067
    .line 2068
    goto :goto_2b

    .line 2069
    :goto_2c
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2070
    .line 2071
    .line 2072
    move-result-wide v2

    .line 2073
    long-to-int v2, v2

    .line 2074
    invoke-static {v2}, Lkotlin/TuplesKt;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v61

    .line 2078
    move v3, v0

    .line 2079
    move/from16 v2, v18

    .line 2080
    .line 2081
    move/from16 v18, v1

    .line 2082
    .line 2083
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2084
    .line 2085
    .line 2086
    move-result-wide v0

    .line 2087
    long-to-int v0, v0

    .line 2088
    move/from16 v72, v3

    .line 2089
    .line 2090
    move/from16 v1, v17

    .line 2091
    .line 2092
    move/from16 v17, v2

    .line 2093
    .line 2094
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2095
    .line 2096
    .line 2097
    move-result-wide v2

    .line 2098
    long-to-int v2, v2

    .line 2099
    move/from16 v3, v21

    .line 2100
    .line 2101
    invoke-interface {v6, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2102
    .line 2103
    .line 2104
    move-result-wide v64

    .line 2105
    move/from16 v62, v0

    .line 2106
    .line 2107
    move/from16 v21, v1

    .line 2108
    .line 2109
    move/from16 v63, v2

    .line 2110
    .line 2111
    move/from16 v0, v22

    .line 2112
    .line 2113
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2114
    .line 2115
    .line 2116
    move-result-wide v1

    .line 2117
    long-to-int v1, v1

    .line 2118
    move/from16 v22, v0

    .line 2119
    .line 2120
    move/from16 v66, v1

    .line 2121
    .line 2122
    move/from16 v2, v23

    .line 2123
    .line 2124
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2125
    .line 2126
    .line 2127
    move-result-wide v0

    .line 2128
    long-to-int v0, v0

    .line 2129
    move/from16 v1, v24

    .line 2130
    .line 2131
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 2132
    .line 2133
    .line 2134
    move-result v23

    .line 2135
    if-eqz v23, :cond_1b

    .line 2136
    .line 2137
    move-object/from16 v68, v20

    .line 2138
    .line 2139
    :goto_2d
    move/from16 v67, v0

    .line 2140
    .line 2141
    move/from16 v0, v25

    .line 2142
    .line 2143
    goto :goto_2e

    .line 2144
    :cond_1b
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v23

    .line 2148
    move-object/from16 v68, v23

    .line 2149
    .line 2150
    goto :goto_2d

    .line 2151
    :goto_2e
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 2152
    .line 2153
    .line 2154
    move-result v23

    .line 2155
    if-eqz v23, :cond_1c

    .line 2156
    .line 2157
    move/from16 v24, v1

    .line 2158
    .line 2159
    move/from16 v23, v2

    .line 2160
    .line 2161
    move-object/from16 v1, v20

    .line 2162
    .line 2163
    goto :goto_2f

    .line 2164
    :cond_1c
    move/from16 v24, v1

    .line 2165
    .line 2166
    move/from16 v23, v2

    .line 2167
    .line 2168
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2169
    .line 2170
    .line 2171
    move-result-wide v1

    .line 2172
    long-to-int v1, v1

    .line 2173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2174
    .line 2175
    .line 2176
    move-result-object v1

    .line 2177
    :goto_2f
    if-eqz v1, :cond_1e

    .line 2178
    .line 2179
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2180
    .line 2181
    .line 2182
    move-result v1

    .line 2183
    if-eqz v1, :cond_1d

    .line 2184
    .line 2185
    const/4 v1, 0x1

    .line 2186
    goto :goto_30

    .line 2187
    :cond_1d
    const/4 v1, 0x0

    .line 2188
    :goto_30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v1

    .line 2192
    move-object/from16 v69, v1

    .line 2193
    .line 2194
    :goto_31
    move/from16 v25, v3

    .line 2195
    .line 2196
    move/from16 v1, v26

    .line 2197
    .line 2198
    goto :goto_32

    .line 2199
    :catchall_6
    move-exception v0

    .line 2200
    goto/16 :goto_3b

    .line 2201
    .line 2202
    :cond_1e
    move-object/from16 v69, v20

    .line 2203
    .line 2204
    goto :goto_31

    .line 2205
    :goto_32
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2206
    .line 2207
    .line 2208
    move-result-wide v2

    .line 2209
    long-to-int v2, v2

    .line 2210
    invoke-static {v2}, Lkotlin/TuplesKt;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v75

    .line 2214
    move/from16 v2, v27

    .line 2215
    .line 2216
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 2217
    .line 2218
    .line 2219
    move-result-object v3

    .line 2220
    invoke-static {v3}, Lkotlin/TuplesKt;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 2221
    .line 2222
    .line 2223
    move-result-object v74

    .line 2224
    move/from16 v26, v0

    .line 2225
    .line 2226
    move/from16 v27, v1

    .line 2227
    .line 2228
    move/from16 v3, v28

    .line 2229
    .line 2230
    invoke-interface {v6, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2231
    .line 2232
    .line 2233
    move-result-wide v0

    .line 2234
    long-to-int v0, v0

    .line 2235
    if-eqz v0, :cond_1f

    .line 2236
    .line 2237
    const/16 v76, 0x1

    .line 2238
    .line 2239
    :goto_33
    move/from16 v28, v2

    .line 2240
    .line 2241
    move/from16 v0, v29

    .line 2242
    .line 2243
    goto :goto_34

    .line 2244
    :cond_1f
    const/16 v76, 0x0

    .line 2245
    .line 2246
    goto :goto_33

    .line 2247
    :goto_34
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2248
    .line 2249
    .line 2250
    move-result-wide v1

    .line 2251
    long-to-int v1, v1

    .line 2252
    if-eqz v1, :cond_20

    .line 2253
    .line 2254
    const/16 v77, 0x1

    .line 2255
    .line 2256
    :goto_35
    move/from16 v29, v3

    .line 2257
    .line 2258
    move/from16 v1, v30

    .line 2259
    .line 2260
    goto :goto_36

    .line 2261
    :cond_20
    const/16 v77, 0x0

    .line 2262
    .line 2263
    goto :goto_35

    .line 2264
    :goto_36
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2265
    .line 2266
    .line 2267
    move-result-wide v2

    .line 2268
    long-to-int v2, v2

    .line 2269
    if-eqz v2, :cond_21

    .line 2270
    .line 2271
    const/16 v78, 0x1

    .line 2272
    .line 2273
    :goto_37
    move v3, v0

    .line 2274
    move/from16 v30, v1

    .line 2275
    .line 2276
    move/from16 v2, v31

    .line 2277
    .line 2278
    goto :goto_38

    .line 2279
    :cond_21
    const/16 v78, 0x0

    .line 2280
    .line 2281
    goto :goto_37

    .line 2282
    :goto_38
    invoke-interface {v6, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2283
    .line 2284
    .line 2285
    move-result-wide v0

    .line 2286
    long-to-int v0, v0

    .line 2287
    if-eqz v0, :cond_22

    .line 2288
    .line 2289
    const/16 v79, 0x1

    .line 2290
    .line 2291
    :goto_39
    move/from16 v0, v32

    .line 2292
    .line 2293
    goto :goto_3a

    .line 2294
    :cond_22
    const/16 v79, 0x0

    .line 2295
    .line 2296
    goto :goto_39

    .line 2297
    :goto_3a
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2298
    .line 2299
    .line 2300
    move-result-wide v80

    .line 2301
    move/from16 v1, v33

    .line 2302
    .line 2303
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2304
    .line 2305
    .line 2306
    move-result-wide v82

    .line 2307
    move/from16 v32, v0

    .line 2308
    .line 2309
    move/from16 v0, v34

    .line 2310
    .line 2311
    invoke-interface {v6, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 2312
    .line 2313
    .line 2314
    move-result-object v31

    .line 2315
    invoke-static/range {v31 .. v31}, Lkotlin/TuplesKt;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 2316
    .line 2317
    .line 2318
    move-result-object v84

    .line 2319
    new-instance v49, Landroidx/work/Constraints;

    .line 2320
    .line 2321
    move-object/from16 v73, v49

    .line 2322
    .line 2323
    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 2324
    .line 2325
    .line 2326
    move-object/from16 v49, v73

    .line 2327
    .line 2328
    new-instance v36, Landroidx/work/impl/model/WorkSpec;

    .line 2329
    .line 2330
    move/from16 v50, v7

    .line 2331
    .line 2332
    invoke-direct/range {v36 .. v69}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 2333
    .line 2334
    .line 2335
    move-object/from16 v7, v36

    .line 2336
    .line 2337
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 2338
    .line 2339
    .line 2340
    move/from16 v7, v29

    .line 2341
    .line 2342
    move/from16 v29, v3

    .line 2343
    .line 2344
    move/from16 v3, v19

    .line 2345
    .line 2346
    move/from16 v19, v18

    .line 2347
    .line 2348
    move/from16 v18, v17

    .line 2349
    .line 2350
    move/from16 v17, v21

    .line 2351
    .line 2352
    move/from16 v21, v25

    .line 2353
    .line 2354
    move/from16 v25, v26

    .line 2355
    .line 2356
    move/from16 v26, v27

    .line 2357
    .line 2358
    move/from16 v27, v28

    .line 2359
    .line 2360
    move/from16 v28, v7

    .line 2361
    .line 2362
    move/from16 v34, v0

    .line 2363
    .line 2364
    move/from16 v33, v1

    .line 2365
    .line 2366
    move/from16 v31, v2

    .line 2367
    .line 2368
    move v1, v8

    .line 2369
    move/from16 v8, v35

    .line 2370
    .line 2371
    move/from16 v7, v70

    .line 2372
    .line 2373
    move/from16 v0, v71

    .line 2374
    .line 2375
    move/from16 v2, p1

    .line 2376
    .line 2377
    move/from16 p1, v72

    .line 2378
    .line 2379
    goto/16 :goto_2a

    .line 2380
    .line 2381
    :cond_23
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    .line 2382
    .line 2383
    .line 2384
    return-object v15

    .line 2385
    :goto_3b
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    .line 2386
    .line 2387
    .line 2388
    throw v0

    .line 2389
    :pswitch_15
    move-object/from16 v0, p1

    .line 2390
    .line 2391
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 2392
    .line 2393
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2394
    .line 2395
    .line 2396
    const-string v1, "DELETE FROM WorkProgress"

    .line 2397
    .line 2398
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v1

    .line 2402
    :try_start_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 2403
    .line 2404
    .line 2405
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2406
    .line 2407
    .line 2408
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2409
    .line 2410
    return-object v0

    .line 2411
    :catchall_7
    move-exception v0

    .line 2412
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2413
    .line 2414
    .line 2415
    throw v0

    .line 2416
    :pswitch_16
    move-object/from16 v0, p1

    .line 2417
    .line 2418
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 2419
    .line 2420
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2421
    .line 2422
    .line 2423
    const-string v1, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    .line 2424
    .line 2425
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2426
    .line 2427
    .line 2428
    move-result-object v1

    .line 2429
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    .line 2430
    .line 2431
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2432
    .line 2433
    .line 2434
    :goto_3c
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2435
    .line 2436
    .line 2437
    move-result v2

    .line 2438
    if-eqz v2, :cond_24

    .line 2439
    .line 2440
    const/4 v2, 0x0

    .line 2441
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 2442
    .line 2443
    .line 2444
    move-result-object v3

    .line 2445
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 2446
    .line 2447
    .line 2448
    goto :goto_3c

    .line 2449
    :catchall_8
    move-exception v0

    .line 2450
    goto :goto_3d

    .line 2451
    :cond_24
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2452
    .line 2453
    .line 2454
    return-object v0

    .line 2455
    :goto_3d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2456
    .line 2457
    .line 2458
    throw v0

    .line 2459
    :pswitch_17
    move-object/from16 v0, p1

    .line 2460
    .line 2461
    check-cast v0, Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 2462
    .line 2463
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2464
    .line 2465
    .line 2466
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2467
    .line 2468
    .line 2469
    move-result-object v0

    .line 2470
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v0

    .line 2474
    return-object v0

    .line 2475
    :pswitch_18
    move-object/from16 v0, p1

    .line 2476
    .line 2477
    check-cast v0, Landroidx/window/layout/WindowMetricsCalculator;

    .line 2478
    .line 2479
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2480
    .line 2481
    .line 2482
    return-object v0

    .line 2483
    :pswitch_19
    move-object/from16 v0, p1

    .line 2484
    .line 2485
    check-cast v0, Landroidx/sqlite/SQLiteStatement;

    .line 2486
    .line 2487
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2488
    .line 2489
    .line 2490
    new-instance v1, Lkotlin/collections/builders/SetBuilder;

    .line 2491
    .line 2492
    invoke-direct {v1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 2493
    .line 2494
    .line 2495
    :goto_3e
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2496
    .line 2497
    .line 2498
    move-result v2

    .line 2499
    if-eqz v2, :cond_25

    .line 2500
    .line 2501
    const/4 v2, 0x0

    .line 2502
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2503
    .line 2504
    .line 2505
    move-result-wide v3

    .line 2506
    long-to-int v2, v3

    .line 2507
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2508
    .line 2509
    .line 2510
    move-result-object v2

    .line 2511
    invoke-virtual {v1, v2}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 2512
    .line 2513
    .line 2514
    goto :goto_3e

    .line 2515
    :cond_25
    invoke-static {v1}, Lkotlin/uuid/UuidKt;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 2516
    .line 2517
    .line 2518
    move-result-object v0

    .line 2519
    return-object v0

    .line 2520
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2521
    .line 2522
    check-cast v0, Landroidx/sqlite/SQLiteStatement;

    .line 2523
    .line 2524
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2525
    .line 2526
    .line 2527
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2528
    .line 2529
    .line 2530
    move-result v0

    .line 2531
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v0

    .line 2535
    return-object v0

    .line 2536
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2537
    .line 2538
    check-cast v0, Landroidx/room/DatabaseConfiguration;

    .line 2539
    .line 2540
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2541
    .line 2542
    .line 2543
    new-instance v0, Lkotlin/NotImplementedError;

    .line 2544
    .line 2545
    const/4 v2, 0x0

    .line 2546
    invoke-direct {v0, v2}, Lkotlin/NotImplementedError;-><init>(I)V

    .line 2547
    .line 2548
    .line 2549
    throw v0

    .line 2550
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2551
    .line 2552
    check-cast v0, Ljava/util/Map$Entry;

    .line 2553
    .line 2554
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2555
    .line 2556
    .line 2557
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2558
    .line 2559
    .line 2560
    move-result-object v1

    .line 2561
    check-cast v1, Ljava/lang/String;

    .line 2562
    .line 2563
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2564
    .line 2565
    .line 2566
    move-result-object v0

    .line 2567
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2568
    .line 2569
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2570
    .line 2571
    .line 2572
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2573
    .line 2574
    .line 2575
    const-string v1, " : "

    .line 2576
    .line 2577
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    .line 2579
    .line 2580
    instance-of v1, v0, [Ljava/lang/Object;

    .line 2581
    .line 2582
    if-eqz v1, :cond_26

    .line 2583
    .line 2584
    check-cast v0, [Ljava/lang/Object;

    .line 2585
    .line 2586
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 2587
    .line 2588
    .line 2589
    move-result-object v0

    .line 2590
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2591
    .line 2592
    .line 2593
    :cond_26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2594
    .line 2595
    .line 2596
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2597
    .line 2598
    .line 2599
    move-result-object v0

    .line 2600
    return-object v0

    .line 2601
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
