.class public final synthetic Landroidx/work/Data$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 18
    .line 19
    .line 20
    const-string v2, "id"

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string/jumbo v3, "state"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const-string/jumbo v4, "worker_class_name"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const-string v5, "input_merger_class_name"

    .line 41
    .line 42
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const-string v6, "input"

    .line 47
    .line 48
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const-string v7, "output"

    .line 53
    .line 54
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const-string v8, "initial_delay"

    .line 59
    .line 60
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const-string v9, "interval_duration"

    .line 65
    .line 66
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    const-string v10, "flex_duration"

    .line 71
    .line 72
    invoke-static {v1, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    const-string v11, "run_attempt_count"

    .line 77
    .line 78
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    const-string v12, "backoff_policy"

    .line 83
    .line 84
    invoke-static {v1, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    const-string v13, "backoff_delay_duration"

    .line 89
    .line 90
    invoke-static {v1, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    const-string v14, "last_enqueue_time"

    .line 95
    .line 96
    invoke-static {v1, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    const-string v15, "minimum_retention_duration"

    .line 101
    .line 102
    invoke-static {v1, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    const-string v0, "schedule_requested_at"

    .line 107
    .line 108
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    move/from16 p1, v0

    .line 113
    .line 114
    const-string v0, "run_in_foreground"

    .line 115
    .line 116
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    move/from16 v16, v0

    .line 121
    .line 122
    const-string v0, "out_of_quota_policy"

    .line 123
    .line 124
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    move/from16 v17, v0

    .line 129
    .line 130
    const-string v0, "period_count"

    .line 131
    .line 132
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    move/from16 v18, v0

    .line 137
    .line 138
    const-string v0, "generation"

    .line 139
    .line 140
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    move/from16 v19, v0

    .line 145
    .line 146
    const-string v0, "next_schedule_time_override"

    .line 147
    .line 148
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    move/from16 v20, v0

    .line 153
    .line 154
    const-string v0, "next_schedule_time_override_generation"

    .line 155
    .line 156
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    move/from16 v21, v0

    .line 161
    .line 162
    const-string/jumbo v0, "stop_reason"

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    move/from16 v22, v0

    .line 170
    .line 171
    const-string/jumbo v0, "trace_tag"

    .line 172
    .line 173
    .line 174
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    move/from16 v23, v0

    .line 179
    .line 180
    const-string v0, "backoff_on_system_interruptions"

    .line 181
    .line 182
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    move/from16 v24, v0

    .line 187
    .line 188
    const-string v0, "required_network_type"

    .line 189
    .line 190
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    move/from16 v25, v0

    .line 195
    .line 196
    const-string v0, "required_network_request"

    .line 197
    .line 198
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    move/from16 v26, v0

    .line 203
    .line 204
    const-string v0, "requires_charging"

    .line 205
    .line 206
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    move/from16 v27, v0

    .line 211
    .line 212
    const-string v0, "requires_device_idle"

    .line 213
    .line 214
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    move/from16 v28, v0

    .line 219
    .line 220
    const-string v0, "requires_battery_not_low"

    .line 221
    .line 222
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    move/from16 v29, v0

    .line 227
    .line 228
    const-string v0, "requires_storage_not_low"

    .line 229
    .line 230
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    move/from16 v30, v0

    .line 235
    .line 236
    const-string/jumbo v0, "trigger_content_update_delay"

    .line 237
    .line 238
    .line 239
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    move/from16 v31, v0

    .line 244
    .line 245
    const-string/jumbo v0, "trigger_max_content_delay"

    .line 246
    .line 247
    .line 248
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    move/from16 v32, v0

    .line 253
    .line 254
    const-string v0, "content_uri_triggers"

    .line 255
    .line 256
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    move/from16 v33, v0

    .line 261
    .line 262
    new-instance v0, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 268
    .line 269
    .line 270
    move-result v34

    .line 271
    if-eqz v34, :cond_9

    .line 272
    .line 273
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v36

    .line 277
    move/from16 v34, v14

    .line 278
    .line 279
    move/from16 v69, v15

    .line 280
    .line 281
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 282
    .line 283
    .line 284
    move-result-wide v14

    .line 285
    long-to-int v14, v14

    .line 286
    invoke-static {v14}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 287
    .line 288
    .line 289
    move-result-object v37

    .line 290
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v38

    .line 294
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v39

    .line 298
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 299
    .line 300
    .line 301
    move-result-object v14

    .line 302
    sget-object v15, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 303
    .line 304
    invoke-static {v14}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 305
    .line 306
    .line 307
    move-result-object v40

    .line 308
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 309
    .line 310
    .line 311
    move-result-object v14

    .line 312
    invoke-static {v14}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 313
    .line 314
    .line 315
    move-result-object v41

    .line 316
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v42

    .line 320
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v44

    .line 324
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v46

    .line 328
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 329
    .line 330
    .line 331
    move-result-wide v14

    .line 332
    long-to-int v14, v14

    .line 333
    move v15, v2

    .line 334
    move/from16 v70, v3

    .line 335
    .line 336
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v2

    .line 340
    long-to-int v2, v2

    .line 341
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 342
    .line 343
    .line 344
    move-result-object v50

    .line 345
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v51

    .line 349
    move/from16 v2, v34

    .line 350
    .line 351
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 352
    .line 353
    .line 354
    move-result-wide v53

    .line 355
    move/from16 v3, v69

    .line 356
    .line 357
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 358
    .line 359
    .line 360
    move-result-wide v55

    .line 361
    move/from16 v34, v2

    .line 362
    .line 363
    move/from16 v2, p1

    .line 364
    .line 365
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 366
    .line 367
    .line 368
    move-result-wide v57

    .line 369
    move/from16 p1, v2

    .line 370
    .line 371
    move/from16 v69, v3

    .line 372
    .line 373
    move/from16 v2, v16

    .line 374
    .line 375
    move/from16 v16, v4

    .line 376
    .line 377
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 378
    .line 379
    .line 380
    move-result-wide v3

    .line 381
    long-to-int v3, v3

    .line 382
    if-eqz v3, :cond_0

    .line 383
    .line 384
    const/16 v59, 0x1

    .line 385
    .line 386
    :goto_1
    move/from16 v3, v17

    .line 387
    .line 388
    move/from16 v17, v5

    .line 389
    .line 390
    goto :goto_2

    .line 391
    :cond_0
    const/16 v59, 0x0

    .line 392
    .line 393
    goto :goto_1

    .line 394
    :goto_2
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 395
    .line 396
    .line 397
    move-result-wide v4

    .line 398
    long-to-int v4, v4

    .line 399
    invoke-static {v4}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 400
    .line 401
    .line 402
    move-result-object v60

    .line 403
    move v5, v2

    .line 404
    move/from16 v4, v18

    .line 405
    .line 406
    move/from16 v18, v3

    .line 407
    .line 408
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 409
    .line 410
    .line 411
    move-result-wide v2

    .line 412
    long-to-int v2, v2

    .line 413
    move/from16 v71, v5

    .line 414
    .line 415
    move/from16 v3, v19

    .line 416
    .line 417
    move/from16 v19, v4

    .line 418
    .line 419
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 420
    .line 421
    .line 422
    move-result-wide v4

    .line 423
    long-to-int v4, v4

    .line 424
    move/from16 v5, v20

    .line 425
    .line 426
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 427
    .line 428
    .line 429
    move-result-wide v63

    .line 430
    move/from16 v61, v2

    .line 431
    .line 432
    move/from16 v20, v3

    .line 433
    .line 434
    move/from16 v62, v4

    .line 435
    .line 436
    move/from16 v2, v21

    .line 437
    .line 438
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 439
    .line 440
    .line 441
    move-result-wide v3

    .line 442
    long-to-int v3, v3

    .line 443
    move/from16 v21, v2

    .line 444
    .line 445
    move/from16 v65, v3

    .line 446
    .line 447
    move/from16 v4, v22

    .line 448
    .line 449
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 450
    .line 451
    .line 452
    move-result-wide v2

    .line 453
    long-to-int v2, v2

    .line 454
    move/from16 v3, v23

    .line 455
    .line 456
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 457
    .line 458
    .line 459
    move-result v22

    .line 460
    const/16 v23, 0x0

    .line 461
    .line 462
    if-eqz v22, :cond_1

    .line 463
    .line 464
    move-object/from16 v67, v23

    .line 465
    .line 466
    :goto_3
    move/from16 v66, v2

    .line 467
    .line 468
    move/from16 v2, v24

    .line 469
    .line 470
    goto :goto_4

    .line 471
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v22

    .line 475
    move-object/from16 v67, v22

    .line 476
    .line 477
    goto :goto_3

    .line 478
    :goto_4
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 479
    .line 480
    .line 481
    move-result v22

    .line 482
    if-eqz v22, :cond_2

    .line 483
    .line 484
    move/from16 v24, v3

    .line 485
    .line 486
    move/from16 v22, v4

    .line 487
    .line 488
    move-object/from16 v3, v23

    .line 489
    .line 490
    goto :goto_5

    .line 491
    :cond_2
    move/from16 v24, v3

    .line 492
    .line 493
    move/from16 v22, v4

    .line 494
    .line 495
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 496
    .line 497
    .line 498
    move-result-wide v3

    .line 499
    long-to-int v3, v3

    .line 500
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    :goto_5
    if-eqz v3, :cond_4

    .line 505
    .line 506
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    if-eqz v3, :cond_3

    .line 511
    .line 512
    const/4 v3, 0x1

    .line 513
    goto :goto_6

    .line 514
    :cond_3
    const/4 v3, 0x0

    .line 515
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 516
    .line 517
    .line 518
    move-result-object v23

    .line 519
    :cond_4
    move-object/from16 v68, v23

    .line 520
    .line 521
    move/from16 v3, v25

    .line 522
    .line 523
    move/from16 v23, v5

    .line 524
    .line 525
    goto :goto_7

    .line 526
    :catchall_0
    move-exception v0

    .line 527
    goto/16 :goto_10

    .line 528
    .line 529
    :goto_7
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 530
    .line 531
    .line 532
    move-result-wide v4

    .line 533
    long-to-int v4, v4

    .line 534
    invoke-static {v4}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 535
    .line 536
    .line 537
    move-result-object v74

    .line 538
    move/from16 v4, v26

    .line 539
    .line 540
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    invoke-static {v5}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 545
    .line 546
    .line 547
    move-result-object v73

    .line 548
    move/from16 v25, v2

    .line 549
    .line 550
    move/from16 v26, v3

    .line 551
    .line 552
    move/from16 v5, v27

    .line 553
    .line 554
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 555
    .line 556
    .line 557
    move-result-wide v2

    .line 558
    long-to-int v2, v2

    .line 559
    if-eqz v2, :cond_5

    .line 560
    .line 561
    const/16 v75, 0x1

    .line 562
    .line 563
    :goto_8
    move/from16 v27, v4

    .line 564
    .line 565
    move/from16 v2, v28

    .line 566
    .line 567
    goto :goto_9

    .line 568
    :cond_5
    const/16 v75, 0x0

    .line 569
    .line 570
    goto :goto_8

    .line 571
    :goto_9
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 572
    .line 573
    .line 574
    move-result-wide v3

    .line 575
    long-to-int v3, v3

    .line 576
    if-eqz v3, :cond_6

    .line 577
    .line 578
    const/16 v76, 0x1

    .line 579
    .line 580
    :goto_a
    move/from16 v28, v5

    .line 581
    .line 582
    move/from16 v3, v29

    .line 583
    .line 584
    goto :goto_b

    .line 585
    :cond_6
    const/16 v76, 0x0

    .line 586
    .line 587
    goto :goto_a

    .line 588
    :goto_b
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 589
    .line 590
    .line 591
    move-result-wide v4

    .line 592
    long-to-int v4, v4

    .line 593
    if-eqz v4, :cond_7

    .line 594
    .line 595
    const/16 v77, 0x1

    .line 596
    .line 597
    :goto_c
    move v5, v2

    .line 598
    move/from16 v29, v3

    .line 599
    .line 600
    move/from16 v4, v30

    .line 601
    .line 602
    goto :goto_d

    .line 603
    :cond_7
    const/16 v77, 0x0

    .line 604
    .line 605
    goto :goto_c

    .line 606
    :goto_d
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 607
    .line 608
    .line 609
    move-result-wide v2

    .line 610
    long-to-int v2, v2

    .line 611
    if-eqz v2, :cond_8

    .line 612
    .line 613
    const/16 v78, 0x1

    .line 614
    .line 615
    :goto_e
    move/from16 v2, v31

    .line 616
    .line 617
    goto :goto_f

    .line 618
    :cond_8
    const/16 v78, 0x0

    .line 619
    .line 620
    goto :goto_e

    .line 621
    :goto_f
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 622
    .line 623
    .line 624
    move-result-wide v79

    .line 625
    move/from16 v3, v32

    .line 626
    .line 627
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 628
    .line 629
    .line 630
    move-result-wide v81

    .line 631
    move/from16 v31, v2

    .line 632
    .line 633
    move/from16 v2, v33

    .line 634
    .line 635
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 636
    .line 637
    .line 638
    move-result-object v30

    .line 639
    invoke-static/range {v30 .. v30}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 640
    .line 641
    .line 642
    move-result-object v83

    .line 643
    new-instance v48, Landroidx/work/Constraints;

    .line 644
    .line 645
    move-object/from16 v72, v48

    .line 646
    .line 647
    invoke-direct/range {v72 .. v83}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 648
    .line 649
    .line 650
    move-object/from16 v48, v72

    .line 651
    .line 652
    new-instance v35, Landroidx/work/impl/model/WorkSpec;

    .line 653
    .line 654
    move/from16 v49, v14

    .line 655
    .line 656
    invoke-direct/range {v35 .. v68}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 657
    .line 658
    .line 659
    move-object/from16 v14, v35

    .line 660
    .line 661
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    .line 663
    .line 664
    move/from16 v14, v28

    .line 665
    .line 666
    move/from16 v28, v5

    .line 667
    .line 668
    move/from16 v5, v17

    .line 669
    .line 670
    move/from16 v17, v18

    .line 671
    .line 672
    move/from16 v18, v19

    .line 673
    .line 674
    move/from16 v19, v20

    .line 675
    .line 676
    move/from16 v20, v23

    .line 677
    .line 678
    move/from16 v23, v24

    .line 679
    .line 680
    move/from16 v24, v25

    .line 681
    .line 682
    move/from16 v25, v26

    .line 683
    .line 684
    move/from16 v26, v27

    .line 685
    .line 686
    move/from16 v27, v14

    .line 687
    .line 688
    move/from16 v33, v2

    .line 689
    .line 690
    move/from16 v32, v3

    .line 691
    .line 692
    move/from16 v30, v4

    .line 693
    .line 694
    move v2, v15

    .line 695
    move/from16 v4, v16

    .line 696
    .line 697
    move/from16 v14, v34

    .line 698
    .line 699
    move/from16 v15, v69

    .line 700
    .line 701
    move/from16 v3, v70

    .line 702
    .line 703
    move/from16 v16, v71

    .line 704
    .line 705
    goto/16 :goto_0

    .line 706
    .line 707
    :cond_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 708
    .line 709
    .line 710
    return-object v0

    .line 711
    :goto_10
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 712
    .line 713
    .line 714
    throw v0
.end method

.method private final invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
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
    const/16 p1, 0x2d

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
    const/16 p1, 0x30

    .line 8
    .line 9
    if-gt p1, p0, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x3a

    .line 12
    .line 13
    if-ge p0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private final invoke$kotlinx$serialization$json$JsonElementSerializer$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/16 v0, 0x16

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    const-string p0, "JsonPrimitive"

    .line 19
    .line 20
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/16 v0, 0x17

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    const-string p0, "JsonNull"

    .line 36
    .line 37
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/16 v0, 0x18

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 50
    .line 51
    .line 52
    const-string p0, "JsonLiteral"

    .line 53
    .line 54
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    const/16 v0, 0x19

    .line 60
    .line 61
    invoke-direct {p0, v0}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    const-string p0, "JsonObject"

    .line 70
    .line 71
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    const/16 v0, 0x1a

    .line 77
    .line 78
    invoke-direct {p0, v0}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 84
    .line 85
    .line 86
    const-string p0, "JsonArray"

    .line 87
    .line 88
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 89
    .line 90
    .line 91
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p0
.end method

.method private final invoke$kotlinx$serialization$json$JsonObject$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/StringOpsKt;->printQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 p0, 0x3a

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method private final invoke$net$newpipe$app$AppKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/koin/core/KoinApplication;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/koin/core/module/Module;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/koin/core/module/Module;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Lorg/koin/core/KoinApplication;->modules(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 86

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
    const-string/jumbo v3, "state"

    .line 47
    .line 48
    .line 49
    move-object/from16 v19, v4

    .line 50
    .line 51
    const-string v4, "id"

    .line 52
    .line 53
    const/16 v20, 0x0

    .line 54
    .line 55
    move-object/from16 v21, v5

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    packed-switch v16, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    move-object/from16 v0, p1

    .line 62
    .line 63
    check-cast v0, Lkotlinx/serialization/json/JsonBuilder;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    .line 70
    .line 71
    iput-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    .line 72
    .line 73
    iput-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    .line 74
    .line 75
    iput-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->explicitNulls:Z

    .line 76
    .line 77
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    .line 79
    return-object v0

    .line 80
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$net$newpipe$app$AppKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0

    .line 85
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlinx$serialization$json$JsonObject$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0

    .line 90
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlinx$serialization$json$JsonElementSerializer$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    return-object v0

    .line 95
    :pswitch_3
    move-object/from16 v0, p1

    .line 96
    .line 97
    check-cast v0, Lkotlin/coroutines/CoroutineContext$Element;

    .line 98
    .line 99
    instance-of v1, v0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 100
    .line 101
    if-eqz v1, :cond_0

    .line 102
    .line 103
    move-object/from16 v20, v0

    .line 104
    .line 105
    check-cast v20, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 106
    .line 107
    :cond_0
    return-object v20

    .line 108
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda5(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0

    .line 113
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0

    .line 118
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda3(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0

    .line 128
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    return-object v0

    .line 133
    :pswitch_9
    move-object/from16 v0, p1

    .line 134
    .line 135
    check-cast v0, Ljava/lang/Character;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    const/16 v1, 0x2d

    .line 142
    .line 143
    if-ne v0, v1, :cond_1

    .line 144
    .line 145
    const/4 v5, 0x1

    .line 146
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    return-object v0

    .line 151
    :pswitch_a
    if-nez p1, :cond_2

    .line 152
    .line 153
    const/4 v5, 0x1

    .line 154
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    return-object v0

    .line 159
    :pswitch_b
    move-object/from16 v0, p1

    .line 160
    .line 161
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const-string v1, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    .line 167
    .line 168
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 176
    .line 177
    .line 178
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda7(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    return-object v0

    .line 197
    :pswitch_d
    move-object/from16 v0, p1

    .line 198
    .line 199
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 205
    .line 206
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    :try_start_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_3

    .line 215
    .line 216
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 217
    .line 218
    .line 219
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    long-to-int v0, v2

    .line 221
    if-eqz v0, :cond_3

    .line 222
    .line 223
    const/4 v5, 0x1

    .line 224
    goto :goto_0

    .line 225
    :catchall_1
    move-exception v0

    .line 226
    goto :goto_1

    .line 227
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 228
    .line 229
    .line 230
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    return-object v0

    .line 235
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :pswitch_e
    move-object/from16 v0, p1

    .line 240
    .line 241
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    const-string v1, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    .line 247
    .line 248
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    :try_start_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_4

    .line 257
    .line 258
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 259
    .line 260
    .line 261
    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 262
    long-to-int v5, v2

    .line 263
    goto :goto_2

    .line 264
    :catchall_2
    move-exception v0

    .line 265
    goto :goto_3

    .line 266
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 267
    .line 268
    .line 269
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    return-object v0

    .line 274
    :goto_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :pswitch_f
    move-object/from16 v5, p1

    .line 279
    .line 280
    check-cast v5, Landroidx/sqlite/SQLiteConnection;

    .line 281
    .line 282
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    move-object/from16 v22, v6

    .line 286
    .line 287
    const-string v6, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time"

    .line 288
    .line 289
    invoke-interface {v5, v6}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    :try_start_3
    invoke-static {v5, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    invoke-static {v5, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    invoke-static {v5, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    invoke-static {v5, v1}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-static {v5, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    move-result v6

    .line 317
    invoke-static {v5, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    move-result v14

    .line 321
    invoke-static {v5, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    invoke-static {v5, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    move-result v12

    .line 329
    invoke-static {v5, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    move-result v11

    .line 333
    invoke-static {v5, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    move-result v10

    .line 337
    invoke-static {v5, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    invoke-static {v5, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    invoke-static {v5, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    move-object/from16 v15, v22

    .line 350
    .line 351
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    move-result v15

    .line 355
    move/from16 p0, v15

    .line 356
    .line 357
    move-object/from16 v15, v21

    .line 358
    .line 359
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v15

    .line 363
    move/from16 p1, v15

    .line 364
    .line 365
    move-object/from16 v15, v19

    .line 366
    .line 367
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    move-result v15

    .line 371
    move/from16 v19, v15

    .line 372
    .line 373
    move-object/from16 v15, v18

    .line 374
    .line 375
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result v15

    .line 379
    move/from16 v18, v15

    .line 380
    .line 381
    move-object/from16 v15, v17

    .line 382
    .line 383
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v15

    .line 387
    move/from16 v17, v15

    .line 388
    .line 389
    const-string v15, "next_schedule_time_override"

    .line 390
    .line 391
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v15

    .line 395
    move/from16 v21, v15

    .line 396
    .line 397
    const-string v15, "next_schedule_time_override_generation"

    .line 398
    .line 399
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    move-result v15

    .line 403
    move/from16 v22, v15

    .line 404
    .line 405
    const-string/jumbo v15, "stop_reason"

    .line 406
    .line 407
    .line 408
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    move-result v15

    .line 412
    move/from16 v23, v15

    .line 413
    .line 414
    const-string/jumbo v15, "trace_tag"

    .line 415
    .line 416
    .line 417
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    move-result v15

    .line 421
    move/from16 v24, v15

    .line 422
    .line 423
    const-string v15, "backoff_on_system_interruptions"

    .line 424
    .line 425
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    move-result v15

    .line 429
    move/from16 v25, v15

    .line 430
    .line 431
    const-string v15, "required_network_type"

    .line 432
    .line 433
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    move-result v15

    .line 437
    move/from16 v26, v15

    .line 438
    .line 439
    const-string v15, "required_network_request"

    .line 440
    .line 441
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    move-result v15

    .line 445
    move/from16 v27, v15

    .line 446
    .line 447
    const-string v15, "requires_charging"

    .line 448
    .line 449
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 450
    .line 451
    .line 452
    move-result v15

    .line 453
    move/from16 v28, v15

    .line 454
    .line 455
    const-string v15, "requires_device_idle"

    .line 456
    .line 457
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    move-result v15

    .line 461
    move/from16 v29, v15

    .line 462
    .line 463
    const-string v15, "requires_battery_not_low"

    .line 464
    .line 465
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    move-result v15

    .line 469
    move/from16 v30, v15

    .line 470
    .line 471
    const-string v15, "requires_storage_not_low"

    .line 472
    .line 473
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    move-result v15

    .line 477
    move/from16 v31, v15

    .line 478
    .line 479
    const-string/jumbo v15, "trigger_content_update_delay"

    .line 480
    .line 481
    .line 482
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    move-result v15

    .line 486
    move/from16 v32, v15

    .line 487
    .line 488
    const-string/jumbo v15, "trigger_max_content_delay"

    .line 489
    .line 490
    .line 491
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    move-result v15

    .line 495
    move/from16 v33, v15

    .line 496
    .line 497
    const-string v15, "content_uri_triggers"

    .line 498
    .line 499
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    move-result v15

    .line 503
    move/from16 v34, v15

    .line 504
    .line 505
    new-instance v15, Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .line 509
    .line 510
    :goto_4
    invoke-interface {v5}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 511
    .line 512
    .line 513
    move-result v35

    .line 514
    if-eqz v35, :cond_e

    .line 515
    .line 516
    invoke-interface {v5, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v37

    .line 520
    move/from16 v70, v7

    .line 521
    .line 522
    move/from16 v35, v8

    .line 523
    .line 524
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 525
    .line 526
    .line 527
    move-result-wide v7

    .line 528
    long-to-int v7, v7

    .line 529
    invoke-static {v7}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 530
    .line 531
    .line 532
    move-result-object v38

    .line 533
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v39

    .line 537
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v40

    .line 541
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 542
    .line 543
    .line 544
    move-result-object v7

    .line 545
    sget-object v8, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 546
    .line 547
    invoke-static {v7}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 548
    .line 549
    .line 550
    move-result-object v41

    .line 551
    invoke-interface {v5, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 552
    .line 553
    .line 554
    move-result-object v7

    .line 555
    invoke-static {v7}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 556
    .line 557
    .line 558
    move-result-object v42

    .line 559
    invoke-interface {v5, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 560
    .line 561
    .line 562
    move-result-wide v43

    .line 563
    invoke-interface {v5, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 564
    .line 565
    .line 566
    move-result-wide v45

    .line 567
    invoke-interface {v5, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 568
    .line 569
    .line 570
    move-result-wide v47

    .line 571
    invoke-interface {v5, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 572
    .line 573
    .line 574
    move-result-wide v7

    .line 575
    long-to-int v7, v7

    .line 576
    move/from16 v72, v0

    .line 577
    .line 578
    move/from16 v71, v1

    .line 579
    .line 580
    invoke-interface {v5, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 581
    .line 582
    .line 583
    move-result-wide v0

    .line 584
    long-to-int v0, v0

    .line 585
    invoke-static {v0}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 586
    .line 587
    .line 588
    move-result-object v51

    .line 589
    invoke-interface {v5, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 590
    .line 591
    .line 592
    move-result-wide v52

    .line 593
    move/from16 v0, v35

    .line 594
    .line 595
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 596
    .line 597
    .line 598
    move-result-wide v54

    .line 599
    move/from16 v1, v70

    .line 600
    .line 601
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 602
    .line 603
    .line 604
    move-result-wide v56

    .line 605
    move/from16 v8, p0

    .line 606
    .line 607
    invoke-interface {v5, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 608
    .line 609
    .line 610
    move-result-wide v58

    .line 611
    move/from16 v35, v0

    .line 612
    .line 613
    move/from16 v70, v1

    .line 614
    .line 615
    move/from16 p0, v2

    .line 616
    .line 617
    move/from16 v0, p1

    .line 618
    .line 619
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 620
    .line 621
    .line 622
    move-result-wide v1

    .line 623
    long-to-int v1, v1

    .line 624
    if-eqz v1, :cond_5

    .line 625
    .line 626
    const/16 v60, 0x1

    .line 627
    .line 628
    :goto_5
    move/from16 p1, v3

    .line 629
    .line 630
    move/from16 v1, v19

    .line 631
    .line 632
    goto :goto_6

    .line 633
    :cond_5
    const/16 v60, 0x0

    .line 634
    .line 635
    goto :goto_5

    .line 636
    :goto_6
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 637
    .line 638
    .line 639
    move-result-wide v2

    .line 640
    long-to-int v2, v2

    .line 641
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 642
    .line 643
    .line 644
    move-result-object v61

    .line 645
    move v3, v0

    .line 646
    move/from16 v19, v1

    .line 647
    .line 648
    move/from16 v2, v18

    .line 649
    .line 650
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 651
    .line 652
    .line 653
    move-result-wide v0

    .line 654
    long-to-int v0, v0

    .line 655
    move/from16 v18, v2

    .line 656
    .line 657
    move/from16 v1, v17

    .line 658
    .line 659
    move/from16 v17, v3

    .line 660
    .line 661
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 662
    .line 663
    .line 664
    move-result-wide v2

    .line 665
    long-to-int v2, v2

    .line 666
    move/from16 v3, v21

    .line 667
    .line 668
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 669
    .line 670
    .line 671
    move-result-wide v64

    .line 672
    move/from16 v62, v0

    .line 673
    .line 674
    move/from16 v21, v1

    .line 675
    .line 676
    move/from16 v63, v2

    .line 677
    .line 678
    move/from16 v0, v22

    .line 679
    .line 680
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 681
    .line 682
    .line 683
    move-result-wide v1

    .line 684
    long-to-int v1, v1

    .line 685
    move/from16 v22, v0

    .line 686
    .line 687
    move/from16 v66, v1

    .line 688
    .line 689
    move/from16 v2, v23

    .line 690
    .line 691
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 692
    .line 693
    .line 694
    move-result-wide v0

    .line 695
    long-to-int v0, v0

    .line 696
    move/from16 v1, v24

    .line 697
    .line 698
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 699
    .line 700
    .line 701
    move-result v23

    .line 702
    if-eqz v23, :cond_6

    .line 703
    .line 704
    move-object/from16 v68, v20

    .line 705
    .line 706
    :goto_7
    move/from16 v67, v0

    .line 707
    .line 708
    move/from16 v0, v25

    .line 709
    .line 710
    goto :goto_8

    .line 711
    :cond_6
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v23

    .line 715
    move-object/from16 v68, v23

    .line 716
    .line 717
    goto :goto_7

    .line 718
    :goto_8
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 719
    .line 720
    .line 721
    move-result v23

    .line 722
    if-eqz v23, :cond_7

    .line 723
    .line 724
    move/from16 v24, v1

    .line 725
    .line 726
    move/from16 v23, v2

    .line 727
    .line 728
    move-object/from16 v1, v20

    .line 729
    .line 730
    goto :goto_9

    .line 731
    :cond_7
    move/from16 v24, v1

    .line 732
    .line 733
    move/from16 v23, v2

    .line 734
    .line 735
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 736
    .line 737
    .line 738
    move-result-wide v1

    .line 739
    long-to-int v1, v1

    .line 740
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    :goto_9
    if-eqz v1, :cond_9

    .line 745
    .line 746
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 747
    .line 748
    .line 749
    move-result v1

    .line 750
    if-eqz v1, :cond_8

    .line 751
    .line 752
    const/4 v1, 0x1

    .line 753
    goto :goto_a

    .line 754
    :cond_8
    const/4 v1, 0x0

    .line 755
    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    move-object/from16 v69, v1

    .line 760
    .line 761
    :goto_b
    move/from16 v25, v3

    .line 762
    .line 763
    move/from16 v1, v26

    .line 764
    .line 765
    goto :goto_c

    .line 766
    :catchall_3
    move-exception v0

    .line 767
    goto/16 :goto_15

    .line 768
    .line 769
    :cond_9
    move-object/from16 v69, v20

    .line 770
    .line 771
    goto :goto_b

    .line 772
    :goto_c
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 773
    .line 774
    .line 775
    move-result-wide v2

    .line 776
    long-to-int v2, v2

    .line 777
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 778
    .line 779
    .line 780
    move-result-object v75

    .line 781
    move/from16 v2, v27

    .line 782
    .line 783
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    invoke-static {v3}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 788
    .line 789
    .line 790
    move-result-object v74

    .line 791
    move/from16 v26, v0

    .line 792
    .line 793
    move/from16 v27, v1

    .line 794
    .line 795
    move/from16 v3, v28

    .line 796
    .line 797
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 798
    .line 799
    .line 800
    move-result-wide v0

    .line 801
    long-to-int v0, v0

    .line 802
    if-eqz v0, :cond_a

    .line 803
    .line 804
    const/16 v76, 0x1

    .line 805
    .line 806
    :goto_d
    move/from16 v28, v2

    .line 807
    .line 808
    move/from16 v0, v29

    .line 809
    .line 810
    goto :goto_e

    .line 811
    :cond_a
    const/16 v76, 0x0

    .line 812
    .line 813
    goto :goto_d

    .line 814
    :goto_e
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 815
    .line 816
    .line 817
    move-result-wide v1

    .line 818
    long-to-int v1, v1

    .line 819
    if-eqz v1, :cond_b

    .line 820
    .line 821
    const/16 v77, 0x1

    .line 822
    .line 823
    :goto_f
    move/from16 v29, v3

    .line 824
    .line 825
    move/from16 v1, v30

    .line 826
    .line 827
    goto :goto_10

    .line 828
    :cond_b
    const/16 v77, 0x0

    .line 829
    .line 830
    goto :goto_f

    .line 831
    :goto_10
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 832
    .line 833
    .line 834
    move-result-wide v2

    .line 835
    long-to-int v2, v2

    .line 836
    if-eqz v2, :cond_c

    .line 837
    .line 838
    const/16 v78, 0x1

    .line 839
    .line 840
    :goto_11
    move v3, v0

    .line 841
    move/from16 v30, v1

    .line 842
    .line 843
    move/from16 v2, v31

    .line 844
    .line 845
    goto :goto_12

    .line 846
    :cond_c
    const/16 v78, 0x0

    .line 847
    .line 848
    goto :goto_11

    .line 849
    :goto_12
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 850
    .line 851
    .line 852
    move-result-wide v0

    .line 853
    long-to-int v0, v0

    .line 854
    if-eqz v0, :cond_d

    .line 855
    .line 856
    const/16 v79, 0x1

    .line 857
    .line 858
    :goto_13
    move/from16 v0, v32

    .line 859
    .line 860
    goto :goto_14

    .line 861
    :cond_d
    const/16 v79, 0x0

    .line 862
    .line 863
    goto :goto_13

    .line 864
    :goto_14
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 865
    .line 866
    .line 867
    move-result-wide v80

    .line 868
    move/from16 v1, v33

    .line 869
    .line 870
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 871
    .line 872
    .line 873
    move-result-wide v82

    .line 874
    move/from16 v32, v0

    .line 875
    .line 876
    move/from16 v0, v34

    .line 877
    .line 878
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 879
    .line 880
    .line 881
    move-result-object v31

    .line 882
    invoke-static/range {v31 .. v31}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 883
    .line 884
    .line 885
    move-result-object v84

    .line 886
    new-instance v49, Landroidx/work/Constraints;

    .line 887
    .line 888
    move-object/from16 v73, v49

    .line 889
    .line 890
    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 891
    .line 892
    .line 893
    move-object/from16 v49, v73

    .line 894
    .line 895
    new-instance v36, Landroidx/work/impl/model/WorkSpec;

    .line 896
    .line 897
    move/from16 v50, v7

    .line 898
    .line 899
    invoke-direct/range {v36 .. v69}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 900
    .line 901
    .line 902
    move-object/from16 v7, v36

    .line 903
    .line 904
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 905
    .line 906
    .line 907
    move v7, v3

    .line 908
    move/from16 v3, p1

    .line 909
    .line 910
    move/from16 p1, v17

    .line 911
    .line 912
    move/from16 v17, v21

    .line 913
    .line 914
    move/from16 v21, v25

    .line 915
    .line 916
    move/from16 v25, v26

    .line 917
    .line 918
    move/from16 v26, v27

    .line 919
    .line 920
    move/from16 v27, v28

    .line 921
    .line 922
    move/from16 v28, v29

    .line 923
    .line 924
    move/from16 v29, v7

    .line 925
    .line 926
    move/from16 v34, v0

    .line 927
    .line 928
    move/from16 v33, v1

    .line 929
    .line 930
    move/from16 v31, v2

    .line 931
    .line 932
    move/from16 v7, v70

    .line 933
    .line 934
    move/from16 v1, v71

    .line 935
    .line 936
    move/from16 v0, v72

    .line 937
    .line 938
    move/from16 v2, p0

    .line 939
    .line 940
    move/from16 p0, v8

    .line 941
    .line 942
    move/from16 v8, v35

    .line 943
    .line 944
    goto/16 :goto_4

    .line 945
    .line 946
    :cond_e
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 947
    .line 948
    .line 949
    return-object v15

    .line 950
    :goto_15
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 951
    .line 952
    .line 953
    throw v0

    .line 954
    :pswitch_10
    const-string v0, "org.schabi.newpipe_streams_notifications"

    .line 955
    .line 956
    move-object/from16 v1, p1

    .line 957
    .line 958
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 959
    .line 960
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    .line 962
    .line 963
    const-string v2, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 964
    .line 965
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    const/4 v2, 0x1

    .line 970
    :try_start_4
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 971
    .line 972
    .line 973
    new-instance v0, Ljava/util/ArrayList;

    .line 974
    .line 975
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .line 977
    .line 978
    :goto_16
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 979
    .line 980
    .line 981
    move-result v2

    .line 982
    if-eqz v2, :cond_f

    .line 983
    .line 984
    const/4 v2, 0x0

    .line 985
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 990
    .line 991
    .line 992
    goto :goto_16

    .line 993
    :catchall_4
    move-exception v0

    .line 994
    goto :goto_17

    .line 995
    :cond_f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 996
    .line 997
    .line 998
    return-object v0

    .line 999
    :goto_17
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1000
    .line 1001
    .line 1002
    throw v0

    .line 1003
    :pswitch_11
    move-object v5, v6

    .line 1004
    move-object v6, v15

    .line 1005
    move-object/from16 v15, p1

    .line 1006
    .line 1007
    check-cast v15, Landroidx/sqlite/SQLiteConnection;

    .line 1008
    .line 1009
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1010
    .line 1011
    .line 1012
    move-object/from16 v22, v5

    .line 1013
    .line 1014
    const-string v5, "SELECT * FROM workspec WHERE state=1"

    .line 1015
    .line 1016
    invoke-interface {v15, v5}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v5

    .line 1020
    :try_start_5
    invoke-static {v5, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1021
    .line 1022
    .line 1023
    move-result v4

    .line 1024
    invoke-static {v5, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1025
    .line 1026
    .line 1027
    move-result v3

    .line 1028
    invoke-static {v5, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1029
    .line 1030
    .line 1031
    move-result v2

    .line 1032
    invoke-static {v5, v1}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1033
    .line 1034
    .line 1035
    move-result v1

    .line 1036
    invoke-static {v5, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1037
    .line 1038
    .line 1039
    move-result v0

    .line 1040
    invoke-static {v5, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1041
    .line 1042
    .line 1043
    move-result v6

    .line 1044
    invoke-static {v5, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1045
    .line 1046
    .line 1047
    move-result v14

    .line 1048
    invoke-static {v5, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1049
    .line 1050
    .line 1051
    move-result v13

    .line 1052
    invoke-static {v5, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1053
    .line 1054
    .line 1055
    move-result v12

    .line 1056
    invoke-static {v5, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1057
    .line 1058
    .line 1059
    move-result v11

    .line 1060
    invoke-static {v5, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1061
    .line 1062
    .line 1063
    move-result v10

    .line 1064
    invoke-static {v5, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1065
    .line 1066
    .line 1067
    move-result v9

    .line 1068
    invoke-static {v5, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1069
    .line 1070
    .line 1071
    move-result v8

    .line 1072
    invoke-static {v5, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1073
    .line 1074
    .line 1075
    move-result v7

    .line 1076
    move-object/from16 v15, v22

    .line 1077
    .line 1078
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1079
    .line 1080
    .line 1081
    move-result v15

    .line 1082
    move/from16 p0, v15

    .line 1083
    .line 1084
    move-object/from16 v15, v21

    .line 1085
    .line 1086
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1087
    .line 1088
    .line 1089
    move-result v15

    .line 1090
    move/from16 p1, v15

    .line 1091
    .line 1092
    move-object/from16 v15, v19

    .line 1093
    .line 1094
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1095
    .line 1096
    .line 1097
    move-result v15

    .line 1098
    move/from16 v19, v15

    .line 1099
    .line 1100
    move-object/from16 v15, v18

    .line 1101
    .line 1102
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1103
    .line 1104
    .line 1105
    move-result v15

    .line 1106
    move/from16 v18, v15

    .line 1107
    .line 1108
    move-object/from16 v15, v17

    .line 1109
    .line 1110
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1111
    .line 1112
    .line 1113
    move-result v15

    .line 1114
    move/from16 v17, v15

    .line 1115
    .line 1116
    const-string v15, "next_schedule_time_override"

    .line 1117
    .line 1118
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1119
    .line 1120
    .line 1121
    move-result v15

    .line 1122
    move/from16 v21, v15

    .line 1123
    .line 1124
    const-string v15, "next_schedule_time_override_generation"

    .line 1125
    .line 1126
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1127
    .line 1128
    .line 1129
    move-result v15

    .line 1130
    move/from16 v22, v15

    .line 1131
    .line 1132
    const-string/jumbo v15, "stop_reason"

    .line 1133
    .line 1134
    .line 1135
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1136
    .line 1137
    .line 1138
    move-result v15

    .line 1139
    move/from16 v23, v15

    .line 1140
    .line 1141
    const-string/jumbo v15, "trace_tag"

    .line 1142
    .line 1143
    .line 1144
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1145
    .line 1146
    .line 1147
    move-result v15

    .line 1148
    move/from16 v24, v15

    .line 1149
    .line 1150
    const-string v15, "backoff_on_system_interruptions"

    .line 1151
    .line 1152
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1153
    .line 1154
    .line 1155
    move-result v15

    .line 1156
    move/from16 v25, v15

    .line 1157
    .line 1158
    const-string v15, "required_network_type"

    .line 1159
    .line 1160
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1161
    .line 1162
    .line 1163
    move-result v15

    .line 1164
    move/from16 v26, v15

    .line 1165
    .line 1166
    const-string v15, "required_network_request"

    .line 1167
    .line 1168
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1169
    .line 1170
    .line 1171
    move-result v15

    .line 1172
    move/from16 v27, v15

    .line 1173
    .line 1174
    const-string v15, "requires_charging"

    .line 1175
    .line 1176
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1177
    .line 1178
    .line 1179
    move-result v15

    .line 1180
    move/from16 v28, v15

    .line 1181
    .line 1182
    const-string v15, "requires_device_idle"

    .line 1183
    .line 1184
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1185
    .line 1186
    .line 1187
    move-result v15

    .line 1188
    move/from16 v29, v15

    .line 1189
    .line 1190
    const-string v15, "requires_battery_not_low"

    .line 1191
    .line 1192
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1193
    .line 1194
    .line 1195
    move-result v15

    .line 1196
    move/from16 v30, v15

    .line 1197
    .line 1198
    const-string v15, "requires_storage_not_low"

    .line 1199
    .line 1200
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1201
    .line 1202
    .line 1203
    move-result v15

    .line 1204
    move/from16 v31, v15

    .line 1205
    .line 1206
    const-string/jumbo v15, "trigger_content_update_delay"

    .line 1207
    .line 1208
    .line 1209
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1210
    .line 1211
    .line 1212
    move-result v15

    .line 1213
    move/from16 v32, v15

    .line 1214
    .line 1215
    const-string/jumbo v15, "trigger_max_content_delay"

    .line 1216
    .line 1217
    .line 1218
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1219
    .line 1220
    .line 1221
    move-result v15

    .line 1222
    move/from16 v33, v15

    .line 1223
    .line 1224
    const-string v15, "content_uri_triggers"

    .line 1225
    .line 1226
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1227
    .line 1228
    .line 1229
    move-result v15

    .line 1230
    move/from16 v34, v15

    .line 1231
    .line 1232
    new-instance v15, Ljava/util/ArrayList;

    .line 1233
    .line 1234
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .line 1236
    .line 1237
    :goto_18
    invoke-interface {v5}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1238
    .line 1239
    .line 1240
    move-result v35

    .line 1241
    if-eqz v35, :cond_19

    .line 1242
    .line 1243
    invoke-interface {v5, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v37

    .line 1247
    move/from16 v70, v7

    .line 1248
    .line 1249
    move/from16 v35, v8

    .line 1250
    .line 1251
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1252
    .line 1253
    .line 1254
    move-result-wide v7

    .line 1255
    long-to-int v7, v7

    .line 1256
    invoke-static {v7}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v38

    .line 1260
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v39

    .line 1264
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v40

    .line 1268
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1269
    .line 1270
    .line 1271
    move-result-object v7

    .line 1272
    sget-object v8, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1273
    .line 1274
    invoke-static {v7}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v41

    .line 1278
    invoke-interface {v5, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1279
    .line 1280
    .line 1281
    move-result-object v7

    .line 1282
    invoke-static {v7}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v42

    .line 1286
    invoke-interface {v5, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1287
    .line 1288
    .line 1289
    move-result-wide v43

    .line 1290
    invoke-interface {v5, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1291
    .line 1292
    .line 1293
    move-result-wide v45

    .line 1294
    invoke-interface {v5, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1295
    .line 1296
    .line 1297
    move-result-wide v47

    .line 1298
    invoke-interface {v5, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1299
    .line 1300
    .line 1301
    move-result-wide v7

    .line 1302
    long-to-int v7, v7

    .line 1303
    move/from16 v72, v0

    .line 1304
    .line 1305
    move/from16 v71, v1

    .line 1306
    .line 1307
    invoke-interface {v5, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1308
    .line 1309
    .line 1310
    move-result-wide v0

    .line 1311
    long-to-int v0, v0

    .line 1312
    invoke-static {v0}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v51

    .line 1316
    invoke-interface {v5, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1317
    .line 1318
    .line 1319
    move-result-wide v52

    .line 1320
    move/from16 v0, v35

    .line 1321
    .line 1322
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1323
    .line 1324
    .line 1325
    move-result-wide v54

    .line 1326
    move/from16 v1, v70

    .line 1327
    .line 1328
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1329
    .line 1330
    .line 1331
    move-result-wide v56

    .line 1332
    move/from16 v8, p0

    .line 1333
    .line 1334
    invoke-interface {v5, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1335
    .line 1336
    .line 1337
    move-result-wide v58

    .line 1338
    move/from16 v35, v0

    .line 1339
    .line 1340
    move/from16 v70, v1

    .line 1341
    .line 1342
    move/from16 p0, v2

    .line 1343
    .line 1344
    move/from16 v0, p1

    .line 1345
    .line 1346
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1347
    .line 1348
    .line 1349
    move-result-wide v1

    .line 1350
    long-to-int v1, v1

    .line 1351
    if-eqz v1, :cond_10

    .line 1352
    .line 1353
    const/16 v60, 0x1

    .line 1354
    .line 1355
    :goto_19
    move/from16 p1, v3

    .line 1356
    .line 1357
    move/from16 v1, v19

    .line 1358
    .line 1359
    goto :goto_1a

    .line 1360
    :cond_10
    const/16 v60, 0x0

    .line 1361
    .line 1362
    goto :goto_19

    .line 1363
    :goto_1a
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1364
    .line 1365
    .line 1366
    move-result-wide v2

    .line 1367
    long-to-int v2, v2

    .line 1368
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v61

    .line 1372
    move v3, v0

    .line 1373
    move/from16 v19, v1

    .line 1374
    .line 1375
    move/from16 v2, v18

    .line 1376
    .line 1377
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1378
    .line 1379
    .line 1380
    move-result-wide v0

    .line 1381
    long-to-int v0, v0

    .line 1382
    move/from16 v18, v2

    .line 1383
    .line 1384
    move/from16 v1, v17

    .line 1385
    .line 1386
    move/from16 v17, v3

    .line 1387
    .line 1388
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1389
    .line 1390
    .line 1391
    move-result-wide v2

    .line 1392
    long-to-int v2, v2

    .line 1393
    move/from16 v3, v21

    .line 1394
    .line 1395
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1396
    .line 1397
    .line 1398
    move-result-wide v64

    .line 1399
    move/from16 v62, v0

    .line 1400
    .line 1401
    move/from16 v21, v1

    .line 1402
    .line 1403
    move/from16 v63, v2

    .line 1404
    .line 1405
    move/from16 v0, v22

    .line 1406
    .line 1407
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1408
    .line 1409
    .line 1410
    move-result-wide v1

    .line 1411
    long-to-int v1, v1

    .line 1412
    move/from16 v22, v0

    .line 1413
    .line 1414
    move/from16 v66, v1

    .line 1415
    .line 1416
    move/from16 v2, v23

    .line 1417
    .line 1418
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1419
    .line 1420
    .line 1421
    move-result-wide v0

    .line 1422
    long-to-int v0, v0

    .line 1423
    move/from16 v1, v24

    .line 1424
    .line 1425
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1426
    .line 1427
    .line 1428
    move-result v23

    .line 1429
    if-eqz v23, :cond_11

    .line 1430
    .line 1431
    move-object/from16 v68, v20

    .line 1432
    .line 1433
    :goto_1b
    move/from16 v67, v0

    .line 1434
    .line 1435
    move/from16 v0, v25

    .line 1436
    .line 1437
    goto :goto_1c

    .line 1438
    :cond_11
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v23

    .line 1442
    move-object/from16 v68, v23

    .line 1443
    .line 1444
    goto :goto_1b

    .line 1445
    :goto_1c
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1446
    .line 1447
    .line 1448
    move-result v23

    .line 1449
    if-eqz v23, :cond_12

    .line 1450
    .line 1451
    move/from16 v24, v1

    .line 1452
    .line 1453
    move/from16 v23, v2

    .line 1454
    .line 1455
    move-object/from16 v1, v20

    .line 1456
    .line 1457
    goto :goto_1d

    .line 1458
    :cond_12
    move/from16 v24, v1

    .line 1459
    .line 1460
    move/from16 v23, v2

    .line 1461
    .line 1462
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1463
    .line 1464
    .line 1465
    move-result-wide v1

    .line 1466
    long-to-int v1, v1

    .line 1467
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v1

    .line 1471
    :goto_1d
    if-eqz v1, :cond_14

    .line 1472
    .line 1473
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1474
    .line 1475
    .line 1476
    move-result v1

    .line 1477
    if-eqz v1, :cond_13

    .line 1478
    .line 1479
    const/4 v1, 0x1

    .line 1480
    goto :goto_1e

    .line 1481
    :cond_13
    const/4 v1, 0x0

    .line 1482
    :goto_1e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v1

    .line 1486
    move-object/from16 v69, v1

    .line 1487
    .line 1488
    :goto_1f
    move/from16 v25, v3

    .line 1489
    .line 1490
    move/from16 v1, v26

    .line 1491
    .line 1492
    goto :goto_20

    .line 1493
    :catchall_5
    move-exception v0

    .line 1494
    goto/16 :goto_29

    .line 1495
    .line 1496
    :cond_14
    move-object/from16 v69, v20

    .line 1497
    .line 1498
    goto :goto_1f

    .line 1499
    :goto_20
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1500
    .line 1501
    .line 1502
    move-result-wide v2

    .line 1503
    long-to-int v2, v2

    .line 1504
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v75

    .line 1508
    move/from16 v2, v27

    .line 1509
    .line 1510
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1511
    .line 1512
    .line 1513
    move-result-object v3

    .line 1514
    invoke-static {v3}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v74

    .line 1518
    move/from16 v26, v0

    .line 1519
    .line 1520
    move/from16 v27, v1

    .line 1521
    .line 1522
    move/from16 v3, v28

    .line 1523
    .line 1524
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1525
    .line 1526
    .line 1527
    move-result-wide v0

    .line 1528
    long-to-int v0, v0

    .line 1529
    if-eqz v0, :cond_15

    .line 1530
    .line 1531
    const/16 v76, 0x1

    .line 1532
    .line 1533
    :goto_21
    move/from16 v28, v2

    .line 1534
    .line 1535
    move/from16 v0, v29

    .line 1536
    .line 1537
    goto :goto_22

    .line 1538
    :cond_15
    const/16 v76, 0x0

    .line 1539
    .line 1540
    goto :goto_21

    .line 1541
    :goto_22
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1542
    .line 1543
    .line 1544
    move-result-wide v1

    .line 1545
    long-to-int v1, v1

    .line 1546
    if-eqz v1, :cond_16

    .line 1547
    .line 1548
    const/16 v77, 0x1

    .line 1549
    .line 1550
    :goto_23
    move/from16 v29, v3

    .line 1551
    .line 1552
    move/from16 v1, v30

    .line 1553
    .line 1554
    goto :goto_24

    .line 1555
    :cond_16
    const/16 v77, 0x0

    .line 1556
    .line 1557
    goto :goto_23

    .line 1558
    :goto_24
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1559
    .line 1560
    .line 1561
    move-result-wide v2

    .line 1562
    long-to-int v2, v2

    .line 1563
    if-eqz v2, :cond_17

    .line 1564
    .line 1565
    const/16 v78, 0x1

    .line 1566
    .line 1567
    :goto_25
    move v3, v0

    .line 1568
    move/from16 v30, v1

    .line 1569
    .line 1570
    move/from16 v2, v31

    .line 1571
    .line 1572
    goto :goto_26

    .line 1573
    :cond_17
    const/16 v78, 0x0

    .line 1574
    .line 1575
    goto :goto_25

    .line 1576
    :goto_26
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1577
    .line 1578
    .line 1579
    move-result-wide v0

    .line 1580
    long-to-int v0, v0

    .line 1581
    if-eqz v0, :cond_18

    .line 1582
    .line 1583
    const/16 v79, 0x1

    .line 1584
    .line 1585
    :goto_27
    move/from16 v0, v32

    .line 1586
    .line 1587
    goto :goto_28

    .line 1588
    :cond_18
    const/16 v79, 0x0

    .line 1589
    .line 1590
    goto :goto_27

    .line 1591
    :goto_28
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1592
    .line 1593
    .line 1594
    move-result-wide v80

    .line 1595
    move/from16 v1, v33

    .line 1596
    .line 1597
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1598
    .line 1599
    .line 1600
    move-result-wide v82

    .line 1601
    move/from16 v32, v0

    .line 1602
    .line 1603
    move/from16 v0, v34

    .line 1604
    .line 1605
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1606
    .line 1607
    .line 1608
    move-result-object v31

    .line 1609
    invoke-static/range {v31 .. v31}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v84

    .line 1613
    new-instance v49, Landroidx/work/Constraints;

    .line 1614
    .line 1615
    move-object/from16 v73, v49

    .line 1616
    .line 1617
    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1618
    .line 1619
    .line 1620
    move-object/from16 v49, v73

    .line 1621
    .line 1622
    new-instance v36, Landroidx/work/impl/model/WorkSpec;

    .line 1623
    .line 1624
    move/from16 v50, v7

    .line 1625
    .line 1626
    invoke-direct/range {v36 .. v69}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 1627
    .line 1628
    .line 1629
    move-object/from16 v7, v36

    .line 1630
    .line 1631
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1632
    .line 1633
    .line 1634
    move v7, v3

    .line 1635
    move/from16 v3, p1

    .line 1636
    .line 1637
    move/from16 p1, v17

    .line 1638
    .line 1639
    move/from16 v17, v21

    .line 1640
    .line 1641
    move/from16 v21, v25

    .line 1642
    .line 1643
    move/from16 v25, v26

    .line 1644
    .line 1645
    move/from16 v26, v27

    .line 1646
    .line 1647
    move/from16 v27, v28

    .line 1648
    .line 1649
    move/from16 v28, v29

    .line 1650
    .line 1651
    move/from16 v29, v7

    .line 1652
    .line 1653
    move/from16 v34, v0

    .line 1654
    .line 1655
    move/from16 v33, v1

    .line 1656
    .line 1657
    move/from16 v31, v2

    .line 1658
    .line 1659
    move/from16 v7, v70

    .line 1660
    .line 1661
    move/from16 v1, v71

    .line 1662
    .line 1663
    move/from16 v0, v72

    .line 1664
    .line 1665
    move/from16 v2, p0

    .line 1666
    .line 1667
    move/from16 p0, v8

    .line 1668
    .line 1669
    move/from16 v8, v35

    .line 1670
    .line 1671
    goto/16 :goto_18

    .line 1672
    .line 1673
    :cond_19
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 1674
    .line 1675
    .line 1676
    return-object v15

    .line 1677
    :goto_29
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 1678
    .line 1679
    .line 1680
    throw v0

    .line 1681
    :pswitch_12
    move-object/from16 v85, v15

    .line 1682
    .line 1683
    move-object v15, v6

    .line 1684
    move-object/from16 v6, v85

    .line 1685
    .line 1686
    move-object/from16 v5, p1

    .line 1687
    .line 1688
    check-cast v5, Landroidx/sqlite/SQLiteConnection;

    .line 1689
    .line 1690
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1691
    .line 1692
    .line 1693
    move-object/from16 v22, v15

    .line 1694
    .line 1695
    const-string v15, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 1696
    .line 1697
    invoke-interface {v5, v15}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v5

    .line 1701
    :try_start_6
    invoke-static {v5, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1702
    .line 1703
    .line 1704
    move-result v4

    .line 1705
    invoke-static {v5, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1706
    .line 1707
    .line 1708
    move-result v3

    .line 1709
    invoke-static {v5, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1710
    .line 1711
    .line 1712
    move-result v2

    .line 1713
    invoke-static {v5, v1}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1714
    .line 1715
    .line 1716
    move-result v1

    .line 1717
    invoke-static {v5, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1718
    .line 1719
    .line 1720
    move-result v0

    .line 1721
    invoke-static {v5, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1722
    .line 1723
    .line 1724
    move-result v6

    .line 1725
    invoke-static {v5, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1726
    .line 1727
    .line 1728
    move-result v14

    .line 1729
    invoke-static {v5, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1730
    .line 1731
    .line 1732
    move-result v13

    .line 1733
    invoke-static {v5, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1734
    .line 1735
    .line 1736
    move-result v12

    .line 1737
    invoke-static {v5, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1738
    .line 1739
    .line 1740
    move-result v11

    .line 1741
    invoke-static {v5, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1742
    .line 1743
    .line 1744
    move-result v10

    .line 1745
    invoke-static {v5, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1746
    .line 1747
    .line 1748
    move-result v9

    .line 1749
    invoke-static {v5, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1750
    .line 1751
    .line 1752
    move-result v8

    .line 1753
    invoke-static {v5, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1754
    .line 1755
    .line 1756
    move-result v7

    .line 1757
    move-object/from16 v15, v22

    .line 1758
    .line 1759
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1760
    .line 1761
    .line 1762
    move-result v15

    .line 1763
    move/from16 p0, v15

    .line 1764
    .line 1765
    move-object/from16 v15, v21

    .line 1766
    .line 1767
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1768
    .line 1769
    .line 1770
    move-result v15

    .line 1771
    move/from16 p1, v15

    .line 1772
    .line 1773
    move-object/from16 v15, v19

    .line 1774
    .line 1775
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1776
    .line 1777
    .line 1778
    move-result v15

    .line 1779
    move/from16 v19, v15

    .line 1780
    .line 1781
    move-object/from16 v15, v18

    .line 1782
    .line 1783
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1784
    .line 1785
    .line 1786
    move-result v15

    .line 1787
    move/from16 v18, v15

    .line 1788
    .line 1789
    move-object/from16 v15, v17

    .line 1790
    .line 1791
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1792
    .line 1793
    .line 1794
    move-result v15

    .line 1795
    move/from16 v17, v15

    .line 1796
    .line 1797
    const-string v15, "next_schedule_time_override"

    .line 1798
    .line 1799
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1800
    .line 1801
    .line 1802
    move-result v15

    .line 1803
    move/from16 v21, v15

    .line 1804
    .line 1805
    const-string v15, "next_schedule_time_override_generation"

    .line 1806
    .line 1807
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1808
    .line 1809
    .line 1810
    move-result v15

    .line 1811
    move/from16 v22, v15

    .line 1812
    .line 1813
    const-string/jumbo v15, "stop_reason"

    .line 1814
    .line 1815
    .line 1816
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1817
    .line 1818
    .line 1819
    move-result v15

    .line 1820
    move/from16 v23, v15

    .line 1821
    .line 1822
    const-string/jumbo v15, "trace_tag"

    .line 1823
    .line 1824
    .line 1825
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1826
    .line 1827
    .line 1828
    move-result v15

    .line 1829
    move/from16 v24, v15

    .line 1830
    .line 1831
    const-string v15, "backoff_on_system_interruptions"

    .line 1832
    .line 1833
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1834
    .line 1835
    .line 1836
    move-result v15

    .line 1837
    move/from16 v25, v15

    .line 1838
    .line 1839
    const-string v15, "required_network_type"

    .line 1840
    .line 1841
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1842
    .line 1843
    .line 1844
    move-result v15

    .line 1845
    move/from16 v26, v15

    .line 1846
    .line 1847
    const-string v15, "required_network_request"

    .line 1848
    .line 1849
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1850
    .line 1851
    .line 1852
    move-result v15

    .line 1853
    move/from16 v27, v15

    .line 1854
    .line 1855
    const-string v15, "requires_charging"

    .line 1856
    .line 1857
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1858
    .line 1859
    .line 1860
    move-result v15

    .line 1861
    move/from16 v28, v15

    .line 1862
    .line 1863
    const-string v15, "requires_device_idle"

    .line 1864
    .line 1865
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1866
    .line 1867
    .line 1868
    move-result v15

    .line 1869
    move/from16 v29, v15

    .line 1870
    .line 1871
    const-string v15, "requires_battery_not_low"

    .line 1872
    .line 1873
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1874
    .line 1875
    .line 1876
    move-result v15

    .line 1877
    move/from16 v30, v15

    .line 1878
    .line 1879
    const-string v15, "requires_storage_not_low"

    .line 1880
    .line 1881
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1882
    .line 1883
    .line 1884
    move-result v15

    .line 1885
    move/from16 v31, v15

    .line 1886
    .line 1887
    const-string/jumbo v15, "trigger_content_update_delay"

    .line 1888
    .line 1889
    .line 1890
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1891
    .line 1892
    .line 1893
    move-result v15

    .line 1894
    move/from16 v32, v15

    .line 1895
    .line 1896
    const-string/jumbo v15, "trigger_max_content_delay"

    .line 1897
    .line 1898
    .line 1899
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1900
    .line 1901
    .line 1902
    move-result v15

    .line 1903
    move/from16 v33, v15

    .line 1904
    .line 1905
    const-string v15, "content_uri_triggers"

    .line 1906
    .line 1907
    invoke-static {v5, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1908
    .line 1909
    .line 1910
    move-result v15

    .line 1911
    move/from16 v34, v15

    .line 1912
    .line 1913
    new-instance v15, Ljava/util/ArrayList;

    .line 1914
    .line 1915
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    .line 1917
    .line 1918
    :goto_2a
    invoke-interface {v5}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1919
    .line 1920
    .line 1921
    move-result v35

    .line 1922
    if-eqz v35, :cond_23

    .line 1923
    .line 1924
    invoke-interface {v5, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v37

    .line 1928
    move/from16 v70, v7

    .line 1929
    .line 1930
    move/from16 v35, v8

    .line 1931
    .line 1932
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1933
    .line 1934
    .line 1935
    move-result-wide v7

    .line 1936
    long-to-int v7, v7

    .line 1937
    invoke-static {v7}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v38

    .line 1941
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v39

    .line 1945
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v40

    .line 1949
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1950
    .line 1951
    .line 1952
    move-result-object v7

    .line 1953
    sget-object v8, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1954
    .line 1955
    invoke-static {v7}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v41

    .line 1959
    invoke-interface {v5, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1960
    .line 1961
    .line 1962
    move-result-object v7

    .line 1963
    invoke-static {v7}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v42

    .line 1967
    invoke-interface {v5, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1968
    .line 1969
    .line 1970
    move-result-wide v43

    .line 1971
    invoke-interface {v5, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1972
    .line 1973
    .line 1974
    move-result-wide v45

    .line 1975
    invoke-interface {v5, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1976
    .line 1977
    .line 1978
    move-result-wide v47

    .line 1979
    invoke-interface {v5, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1980
    .line 1981
    .line 1982
    move-result-wide v7

    .line 1983
    long-to-int v7, v7

    .line 1984
    move/from16 v71, v0

    .line 1985
    .line 1986
    move v8, v1

    .line 1987
    invoke-interface {v5, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1988
    .line 1989
    .line 1990
    move-result-wide v0

    .line 1991
    long-to-int v0, v0

    .line 1992
    invoke-static {v0}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v51

    .line 1996
    invoke-interface {v5, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1997
    .line 1998
    .line 1999
    move-result-wide v52

    .line 2000
    move/from16 v0, v35

    .line 2001
    .line 2002
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2003
    .line 2004
    .line 2005
    move-result-wide v54

    .line 2006
    move/from16 v1, v70

    .line 2007
    .line 2008
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2009
    .line 2010
    .line 2011
    move-result-wide v56

    .line 2012
    move/from16 v35, v0

    .line 2013
    .line 2014
    move/from16 v0, p0

    .line 2015
    .line 2016
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2017
    .line 2018
    .line 2019
    move-result-wide v58

    .line 2020
    move/from16 p0, v0

    .line 2021
    .line 2022
    move/from16 v70, v1

    .line 2023
    .line 2024
    move/from16 v0, p1

    .line 2025
    .line 2026
    move/from16 p1, v2

    .line 2027
    .line 2028
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2029
    .line 2030
    .line 2031
    move-result-wide v1

    .line 2032
    long-to-int v1, v1

    .line 2033
    if-eqz v1, :cond_1a

    .line 2034
    .line 2035
    const/16 v60, 0x1

    .line 2036
    .line 2037
    :goto_2b
    move/from16 v1, v19

    .line 2038
    .line 2039
    move/from16 v19, v3

    .line 2040
    .line 2041
    goto :goto_2c

    .line 2042
    :cond_1a
    const/16 v60, 0x0

    .line 2043
    .line 2044
    goto :goto_2b

    .line 2045
    :goto_2c
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2046
    .line 2047
    .line 2048
    move-result-wide v2

    .line 2049
    long-to-int v2, v2

    .line 2050
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 2051
    .line 2052
    .line 2053
    move-result-object v61

    .line 2054
    move v3, v0

    .line 2055
    move/from16 v2, v18

    .line 2056
    .line 2057
    move/from16 v18, v1

    .line 2058
    .line 2059
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2060
    .line 2061
    .line 2062
    move-result-wide v0

    .line 2063
    long-to-int v0, v0

    .line 2064
    move/from16 v72, v3

    .line 2065
    .line 2066
    move/from16 v1, v17

    .line 2067
    .line 2068
    move/from16 v17, v2

    .line 2069
    .line 2070
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2071
    .line 2072
    .line 2073
    move-result-wide v2

    .line 2074
    long-to-int v2, v2

    .line 2075
    move/from16 v3, v21

    .line 2076
    .line 2077
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2078
    .line 2079
    .line 2080
    move-result-wide v64

    .line 2081
    move/from16 v62, v0

    .line 2082
    .line 2083
    move/from16 v21, v1

    .line 2084
    .line 2085
    move/from16 v63, v2

    .line 2086
    .line 2087
    move/from16 v0, v22

    .line 2088
    .line 2089
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2090
    .line 2091
    .line 2092
    move-result-wide v1

    .line 2093
    long-to-int v1, v1

    .line 2094
    move/from16 v22, v0

    .line 2095
    .line 2096
    move/from16 v66, v1

    .line 2097
    .line 2098
    move/from16 v2, v23

    .line 2099
    .line 2100
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2101
    .line 2102
    .line 2103
    move-result-wide v0

    .line 2104
    long-to-int v0, v0

    .line 2105
    move/from16 v1, v24

    .line 2106
    .line 2107
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 2108
    .line 2109
    .line 2110
    move-result v23

    .line 2111
    if-eqz v23, :cond_1b

    .line 2112
    .line 2113
    move-object/from16 v68, v20

    .line 2114
    .line 2115
    :goto_2d
    move/from16 v67, v0

    .line 2116
    .line 2117
    move/from16 v0, v25

    .line 2118
    .line 2119
    goto :goto_2e

    .line 2120
    :cond_1b
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v23

    .line 2124
    move-object/from16 v68, v23

    .line 2125
    .line 2126
    goto :goto_2d

    .line 2127
    :goto_2e
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 2128
    .line 2129
    .line 2130
    move-result v23

    .line 2131
    if-eqz v23, :cond_1c

    .line 2132
    .line 2133
    move/from16 v24, v1

    .line 2134
    .line 2135
    move/from16 v23, v2

    .line 2136
    .line 2137
    move-object/from16 v1, v20

    .line 2138
    .line 2139
    goto :goto_2f

    .line 2140
    :cond_1c
    move/from16 v24, v1

    .line 2141
    .line 2142
    move/from16 v23, v2

    .line 2143
    .line 2144
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2145
    .line 2146
    .line 2147
    move-result-wide v1

    .line 2148
    long-to-int v1, v1

    .line 2149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v1

    .line 2153
    :goto_2f
    if-eqz v1, :cond_1e

    .line 2154
    .line 2155
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2156
    .line 2157
    .line 2158
    move-result v1

    .line 2159
    if-eqz v1, :cond_1d

    .line 2160
    .line 2161
    const/4 v1, 0x1

    .line 2162
    goto :goto_30

    .line 2163
    :cond_1d
    const/4 v1, 0x0

    .line 2164
    :goto_30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v1

    .line 2168
    move-object/from16 v69, v1

    .line 2169
    .line 2170
    :goto_31
    move/from16 v25, v3

    .line 2171
    .line 2172
    move/from16 v1, v26

    .line 2173
    .line 2174
    goto :goto_32

    .line 2175
    :catchall_6
    move-exception v0

    .line 2176
    goto/16 :goto_3b

    .line 2177
    .line 2178
    :cond_1e
    move-object/from16 v69, v20

    .line 2179
    .line 2180
    goto :goto_31

    .line 2181
    :goto_32
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2182
    .line 2183
    .line 2184
    move-result-wide v2

    .line 2185
    long-to-int v2, v2

    .line 2186
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v75

    .line 2190
    move/from16 v2, v27

    .line 2191
    .line 2192
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 2193
    .line 2194
    .line 2195
    move-result-object v3

    .line 2196
    invoke-static {v3}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 2197
    .line 2198
    .line 2199
    move-result-object v74

    .line 2200
    move/from16 v26, v0

    .line 2201
    .line 2202
    move/from16 v27, v1

    .line 2203
    .line 2204
    move/from16 v3, v28

    .line 2205
    .line 2206
    invoke-interface {v5, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2207
    .line 2208
    .line 2209
    move-result-wide v0

    .line 2210
    long-to-int v0, v0

    .line 2211
    if-eqz v0, :cond_1f

    .line 2212
    .line 2213
    const/16 v76, 0x1

    .line 2214
    .line 2215
    :goto_33
    move/from16 v28, v2

    .line 2216
    .line 2217
    move/from16 v0, v29

    .line 2218
    .line 2219
    goto :goto_34

    .line 2220
    :cond_1f
    const/16 v76, 0x0

    .line 2221
    .line 2222
    goto :goto_33

    .line 2223
    :goto_34
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2224
    .line 2225
    .line 2226
    move-result-wide v1

    .line 2227
    long-to-int v1, v1

    .line 2228
    if-eqz v1, :cond_20

    .line 2229
    .line 2230
    const/16 v77, 0x1

    .line 2231
    .line 2232
    :goto_35
    move/from16 v29, v3

    .line 2233
    .line 2234
    move/from16 v1, v30

    .line 2235
    .line 2236
    goto :goto_36

    .line 2237
    :cond_20
    const/16 v77, 0x0

    .line 2238
    .line 2239
    goto :goto_35

    .line 2240
    :goto_36
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2241
    .line 2242
    .line 2243
    move-result-wide v2

    .line 2244
    long-to-int v2, v2

    .line 2245
    if-eqz v2, :cond_21

    .line 2246
    .line 2247
    const/16 v78, 0x1

    .line 2248
    .line 2249
    :goto_37
    move v3, v0

    .line 2250
    move/from16 v30, v1

    .line 2251
    .line 2252
    move/from16 v2, v31

    .line 2253
    .line 2254
    goto :goto_38

    .line 2255
    :cond_21
    const/16 v78, 0x0

    .line 2256
    .line 2257
    goto :goto_37

    .line 2258
    :goto_38
    invoke-interface {v5, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2259
    .line 2260
    .line 2261
    move-result-wide v0

    .line 2262
    long-to-int v0, v0

    .line 2263
    if-eqz v0, :cond_22

    .line 2264
    .line 2265
    const/16 v79, 0x1

    .line 2266
    .line 2267
    :goto_39
    move/from16 v0, v32

    .line 2268
    .line 2269
    goto :goto_3a

    .line 2270
    :cond_22
    const/16 v79, 0x0

    .line 2271
    .line 2272
    goto :goto_39

    .line 2273
    :goto_3a
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2274
    .line 2275
    .line 2276
    move-result-wide v80

    .line 2277
    move/from16 v1, v33

    .line 2278
    .line 2279
    invoke-interface {v5, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2280
    .line 2281
    .line 2282
    move-result-wide v82

    .line 2283
    move/from16 v32, v0

    .line 2284
    .line 2285
    move/from16 v0, v34

    .line 2286
    .line 2287
    invoke-interface {v5, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 2288
    .line 2289
    .line 2290
    move-result-object v31

    .line 2291
    invoke-static/range {v31 .. v31}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v84

    .line 2295
    new-instance v49, Landroidx/work/Constraints;

    .line 2296
    .line 2297
    move-object/from16 v73, v49

    .line 2298
    .line 2299
    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 2300
    .line 2301
    .line 2302
    move-object/from16 v49, v73

    .line 2303
    .line 2304
    new-instance v36, Landroidx/work/impl/model/WorkSpec;

    .line 2305
    .line 2306
    move/from16 v50, v7

    .line 2307
    .line 2308
    invoke-direct/range {v36 .. v69}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 2309
    .line 2310
    .line 2311
    move-object/from16 v7, v36

    .line 2312
    .line 2313
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 2314
    .line 2315
    .line 2316
    move/from16 v7, v29

    .line 2317
    .line 2318
    move/from16 v29, v3

    .line 2319
    .line 2320
    move/from16 v3, v19

    .line 2321
    .line 2322
    move/from16 v19, v18

    .line 2323
    .line 2324
    move/from16 v18, v17

    .line 2325
    .line 2326
    move/from16 v17, v21

    .line 2327
    .line 2328
    move/from16 v21, v25

    .line 2329
    .line 2330
    move/from16 v25, v26

    .line 2331
    .line 2332
    move/from16 v26, v27

    .line 2333
    .line 2334
    move/from16 v27, v28

    .line 2335
    .line 2336
    move/from16 v28, v7

    .line 2337
    .line 2338
    move/from16 v34, v0

    .line 2339
    .line 2340
    move/from16 v33, v1

    .line 2341
    .line 2342
    move/from16 v31, v2

    .line 2343
    .line 2344
    move v1, v8

    .line 2345
    move/from16 v8, v35

    .line 2346
    .line 2347
    move/from16 v7, v70

    .line 2348
    .line 2349
    move/from16 v0, v71

    .line 2350
    .line 2351
    move/from16 v2, p1

    .line 2352
    .line 2353
    move/from16 p1, v72

    .line 2354
    .line 2355
    goto/16 :goto_2a

    .line 2356
    .line 2357
    :cond_23
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 2358
    .line 2359
    .line 2360
    return-object v15

    .line 2361
    :goto_3b
    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    .line 2362
    .line 2363
    .line 2364
    throw v0

    .line 2365
    :pswitch_13
    move-object/from16 v0, p1

    .line 2366
    .line 2367
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 2368
    .line 2369
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2370
    .line 2371
    .line 2372
    const-string v1, "DELETE FROM WorkProgress"

    .line 2373
    .line 2374
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2375
    .line 2376
    .line 2377
    move-result-object v1

    .line 2378
    :try_start_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 2379
    .line 2380
    .line 2381
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2382
    .line 2383
    .line 2384
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2385
    .line 2386
    return-object v0

    .line 2387
    :catchall_7
    move-exception v0

    .line 2388
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2389
    .line 2390
    .line 2391
    throw v0

    .line 2392
    :pswitch_14
    move-object/from16 v0, p1

    .line 2393
    .line 2394
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 2395
    .line 2396
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2397
    .line 2398
    .line 2399
    const-string v1, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    .line 2400
    .line 2401
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2402
    .line 2403
    .line 2404
    move-result-object v1

    .line 2405
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    .line 2406
    .line 2407
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2408
    .line 2409
    .line 2410
    :goto_3c
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2411
    .line 2412
    .line 2413
    move-result v2

    .line 2414
    if-eqz v2, :cond_24

    .line 2415
    .line 2416
    const/4 v2, 0x0

    .line 2417
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 2418
    .line 2419
    .line 2420
    move-result-object v3

    .line 2421
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 2422
    .line 2423
    .line 2424
    goto :goto_3c

    .line 2425
    :catchall_8
    move-exception v0

    .line 2426
    goto :goto_3d

    .line 2427
    :cond_24
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2428
    .line 2429
    .line 2430
    return-object v0

    .line 2431
    :goto_3d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2432
    .line 2433
    .line 2434
    throw v0

    .line 2435
    :pswitch_15
    move-object/from16 v0, p1

    .line 2436
    .line 2437
    check-cast v0, Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 2438
    .line 2439
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2440
    .line 2441
    .line 2442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2443
    .line 2444
    .line 2445
    move-result-object v0

    .line 2446
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 2447
    .line 2448
    .line 2449
    move-result-object v0

    .line 2450
    return-object v0

    .line 2451
    :pswitch_16
    move-object/from16 v0, p1

    .line 2452
    .line 2453
    check-cast v0, Landroidx/window/layout/WindowMetricsCalculator;

    .line 2454
    .line 2455
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2456
    .line 2457
    .line 2458
    return-object v0

    .line 2459
    :pswitch_17
    move-object/from16 v0, p1

    .line 2460
    .line 2461
    check-cast v0, Ljava/util/List;

    .line 2462
    .line 2463
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2464
    .line 2465
    .line 2466
    new-instance v1, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;

    .line 2467
    .line 2468
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2469
    .line 2470
    .line 2471
    move-result-object v0

    .line 2472
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 2473
    .line 2474
    const/4 v2, 0x0

    .line 2475
    invoke-direct {v1, v0, v2}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 2476
    .line 2477
    .line 2478
    return-object v1

    .line 2479
    :pswitch_18
    move-object/from16 v0, p1

    .line 2480
    .line 2481
    check-cast v0, Ljava/util/List;

    .line 2482
    .line 2483
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2484
    .line 2485
    .line 2486
    new-instance v1, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;

    .line 2487
    .line 2488
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2489
    .line 2490
    .line 2491
    move-result-object v0

    .line 2492
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 2493
    .line 2494
    const/4 v2, 0x1

    .line 2495
    invoke-direct {v1, v0, v2}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 2496
    .line 2497
    .line 2498
    return-object v1

    .line 2499
    :pswitch_19
    move-object/from16 v0, p1

    .line 2500
    .line 2501
    check-cast v0, Landroidx/sqlite/SQLiteStatement;

    .line 2502
    .line 2503
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2504
    .line 2505
    .line 2506
    new-instance v1, Lkotlin/collections/builders/SetBuilder;

    .line 2507
    .line 2508
    invoke-direct {v1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 2509
    .line 2510
    .line 2511
    :goto_3e
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2512
    .line 2513
    .line 2514
    move-result v2

    .line 2515
    if-eqz v2, :cond_25

    .line 2516
    .line 2517
    const/4 v2, 0x0

    .line 2518
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2519
    .line 2520
    .line 2521
    move-result-wide v3

    .line 2522
    long-to-int v2, v3

    .line 2523
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2524
    .line 2525
    .line 2526
    move-result-object v2

    .line 2527
    invoke-virtual {v1, v2}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 2528
    .line 2529
    .line 2530
    goto :goto_3e

    .line 2531
    :cond_25
    invoke-virtual {v1}, Lkotlin/collections/builders/SetBuilder;->build()Lkotlin/collections/builders/SetBuilder;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v0

    .line 2535
    return-object v0

    .line 2536
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2537
    .line 2538
    check-cast v0, Landroidx/sqlite/SQLiteStatement;

    .line 2539
    .line 2540
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2541
    .line 2542
    .line 2543
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2544
    .line 2545
    .line 2546
    move-result v0

    .line 2547
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2548
    .line 2549
    .line 2550
    move-result-object v0

    .line 2551
    return-object v0

    .line 2552
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2553
    .line 2554
    check-cast v0, Landroidx/room/DatabaseConfiguration;

    .line 2555
    .line 2556
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2557
    .line 2558
    .line 2559
    new-instance v0, Lkotlin/NotImplementedError;

    .line 2560
    .line 2561
    const/4 v2, 0x0

    .line 2562
    invoke-direct {v0, v2}, Lkotlin/NotImplementedError;-><init>(I)V

    .line 2563
    .line 2564
    .line 2565
    throw v0

    .line 2566
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2567
    .line 2568
    check-cast v0, Ljava/util/Map$Entry;

    .line 2569
    .line 2570
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2571
    .line 2572
    .line 2573
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2574
    .line 2575
    .line 2576
    move-result-object v1

    .line 2577
    check-cast v1, Ljava/lang/String;

    .line 2578
    .line 2579
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2580
    .line 2581
    .line 2582
    move-result-object v0

    .line 2583
    const-string v2, " : "

    .line 2584
    .line 2585
    invoke-static {v1, v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v1

    .line 2589
    instance-of v2, v0, [Ljava/lang/Object;

    .line 2590
    .line 2591
    if-eqz v2, :cond_26

    .line 2592
    .line 2593
    check-cast v0, [Ljava/lang/Object;

    .line 2594
    .line 2595
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 2596
    .line 2597
    .line 2598
    move-result-object v0

    .line 2599
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2600
    .line 2601
    .line 2602
    :cond_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2603
    .line 2604
    .line 2605
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2606
    .line 2607
    .line 2608
    move-result-object v0

    .line 2609
    return-object v0

    .line 2610
    nop

    .line 2611
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
