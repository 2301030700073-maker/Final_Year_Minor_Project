.class public final synthetic Landroidx/work/Data$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/Data$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    invoke-static {v1, v2}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "state"

    .line 27
    .line 28
    invoke-static {v1, v3}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string/jumbo v4, "worker_class_name"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const-string v5, "input_merger_class_name"

    .line 40
    .line 41
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, "input"

    .line 46
    .line 47
    invoke-static {v1, v6}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const-string v7, "output"

    .line 52
    .line 53
    invoke-static {v1, v7}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const-string v8, "initial_delay"

    .line 58
    .line 59
    invoke-static {v1, v8}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    const-string v9, "interval_duration"

    .line 64
    .line 65
    invoke-static {v1, v9}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    const-string v10, "flex_duration"

    .line 70
    .line 71
    invoke-static {v1, v10}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    const-string v11, "run_attempt_count"

    .line 76
    .line 77
    invoke-static {v1, v11}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    const-string v12, "backoff_policy"

    .line 82
    .line 83
    invoke-static {v1, v12}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    const-string v13, "backoff_delay_duration"

    .line 88
    .line 89
    invoke-static {v1, v13}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    const-string v14, "last_enqueue_time"

    .line 94
    .line 95
    invoke-static {v1, v14}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    const-string v15, "minimum_retention_duration"

    .line 100
    .line 101
    invoke-static {v1, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    const-string v0, "schedule_requested_at"

    .line 106
    .line 107
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

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
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

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
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

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
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

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
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

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
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

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
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

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
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    move/from16 v22, v0

    .line 168
    .line 169
    const-string v0, "trace_tag"

    .line 170
    .line 171
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    move/from16 v23, v0

    .line 176
    .line 177
    const-string v0, "backoff_on_system_interruptions"

    .line 178
    .line 179
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    move/from16 v24, v0

    .line 184
    .line 185
    const-string v0, "required_network_type"

    .line 186
    .line 187
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    move/from16 v25, v0

    .line 192
    .line 193
    const-string v0, "required_network_request"

    .line 194
    .line 195
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    move/from16 v26, v0

    .line 200
    .line 201
    const-string v0, "requires_charging"

    .line 202
    .line 203
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    move/from16 v27, v0

    .line 208
    .line 209
    const-string v0, "requires_device_idle"

    .line 210
    .line 211
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    move/from16 v28, v0

    .line 216
    .line 217
    const-string v0, "requires_battery_not_low"

    .line 218
    .line 219
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    move/from16 v29, v0

    .line 224
    .line 225
    const-string v0, "requires_storage_not_low"

    .line 226
    .line 227
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    move/from16 v30, v0

    .line 232
    .line 233
    const-string v0, "trigger_content_update_delay"

    .line 234
    .line 235
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    move/from16 v31, v0

    .line 240
    .line 241
    const-string v0, "trigger_max_content_delay"

    .line 242
    .line 243
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    move/from16 v32, v0

    .line 248
    .line 249
    const-string v0, "content_uri_triggers"

    .line 250
    .line 251
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    move/from16 v33, v0

    .line 256
    .line 257
    new-instance v0, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    .line 262
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 263
    .line 264
    .line 265
    move-result v34

    .line 266
    if-eqz v34, :cond_9

    .line 267
    .line 268
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v36

    .line 272
    move/from16 v34, v14

    .line 273
    .line 274
    move/from16 v69, v15

    .line 275
    .line 276
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 277
    .line 278
    .line 279
    move-result-wide v14

    .line 280
    long-to-int v14, v14

    .line 281
    invoke-static {v14}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 282
    .line 283
    .line 284
    move-result-object v37

    .line 285
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v38

    .line 289
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v39

    .line 293
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 294
    .line 295
    .line 296
    move-result-object v14

    .line 297
    sget-object v15, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 298
    .line 299
    invoke-static {v14}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 300
    .line 301
    .line 302
    move-result-object v40

    .line 303
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 304
    .line 305
    .line 306
    move-result-object v14

    .line 307
    invoke-static {v14}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 308
    .line 309
    .line 310
    move-result-object v41

    .line 311
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 312
    .line 313
    .line 314
    move-result-wide v42

    .line 315
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 316
    .line 317
    .line 318
    move-result-wide v44

    .line 319
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 320
    .line 321
    .line 322
    move-result-wide v46

    .line 323
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 324
    .line 325
    .line 326
    move-result-wide v14

    .line 327
    long-to-int v14, v14

    .line 328
    move v15, v2

    .line 329
    move/from16 v70, v3

    .line 330
    .line 331
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 332
    .line 333
    .line 334
    move-result-wide v2

    .line 335
    long-to-int v2, v2

    .line 336
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 337
    .line 338
    .line 339
    move-result-object v50

    .line 340
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v51

    .line 344
    move/from16 v2, v34

    .line 345
    .line 346
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v53

    .line 350
    move/from16 v3, v69

    .line 351
    .line 352
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v55

    .line 356
    move/from16 v34, v2

    .line 357
    .line 358
    move/from16 v2, p1

    .line 359
    .line 360
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 361
    .line 362
    .line 363
    move-result-wide v57

    .line 364
    move/from16 p1, v2

    .line 365
    .line 366
    move/from16 v69, v3

    .line 367
    .line 368
    move/from16 v2, v16

    .line 369
    .line 370
    move/from16 v16, v4

    .line 371
    .line 372
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 373
    .line 374
    .line 375
    move-result-wide v3

    .line 376
    long-to-int v3, v3

    .line 377
    if-eqz v3, :cond_0

    .line 378
    .line 379
    const/16 v59, 0x1

    .line 380
    .line 381
    :goto_1
    move/from16 v3, v17

    .line 382
    .line 383
    move/from16 v17, v5

    .line 384
    .line 385
    goto :goto_2

    .line 386
    :cond_0
    const/16 v59, 0x0

    .line 387
    .line 388
    goto :goto_1

    .line 389
    :goto_2
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 390
    .line 391
    .line 392
    move-result-wide v4

    .line 393
    long-to-int v4, v4

    .line 394
    invoke-static {v4}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 395
    .line 396
    .line 397
    move-result-object v60

    .line 398
    move v5, v2

    .line 399
    move/from16 v4, v18

    .line 400
    .line 401
    move/from16 v18, v3

    .line 402
    .line 403
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 404
    .line 405
    .line 406
    move-result-wide v2

    .line 407
    long-to-int v2, v2

    .line 408
    move/from16 v71, v5

    .line 409
    .line 410
    move/from16 v3, v19

    .line 411
    .line 412
    move/from16 v19, v4

    .line 413
    .line 414
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 415
    .line 416
    .line 417
    move-result-wide v4

    .line 418
    long-to-int v4, v4

    .line 419
    move/from16 v5, v20

    .line 420
    .line 421
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 422
    .line 423
    .line 424
    move-result-wide v63

    .line 425
    move/from16 v61, v2

    .line 426
    .line 427
    move/from16 v20, v3

    .line 428
    .line 429
    move/from16 v62, v4

    .line 430
    .line 431
    move/from16 v2, v21

    .line 432
    .line 433
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 434
    .line 435
    .line 436
    move-result-wide v3

    .line 437
    long-to-int v3, v3

    .line 438
    move/from16 v21, v2

    .line 439
    .line 440
    move/from16 v65, v3

    .line 441
    .line 442
    move/from16 v4, v22

    .line 443
    .line 444
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 445
    .line 446
    .line 447
    move-result-wide v2

    .line 448
    long-to-int v2, v2

    .line 449
    move/from16 v3, v23

    .line 450
    .line 451
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 452
    .line 453
    .line 454
    move-result v22

    .line 455
    const/16 v23, 0x0

    .line 456
    .line 457
    if-eqz v22, :cond_1

    .line 458
    .line 459
    move-object/from16 v67, v23

    .line 460
    .line 461
    :goto_3
    move/from16 v66, v2

    .line 462
    .line 463
    move/from16 v2, v24

    .line 464
    .line 465
    goto :goto_4

    .line 466
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v22

    .line 470
    move-object/from16 v67, v22

    .line 471
    .line 472
    goto :goto_3

    .line 473
    :goto_4
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 474
    .line 475
    .line 476
    move-result v22

    .line 477
    if-eqz v22, :cond_2

    .line 478
    .line 479
    move/from16 v24, v3

    .line 480
    .line 481
    move/from16 v22, v4

    .line 482
    .line 483
    move-object/from16 v3, v23

    .line 484
    .line 485
    goto :goto_5

    .line 486
    :cond_2
    move/from16 v24, v3

    .line 487
    .line 488
    move/from16 v22, v4

    .line 489
    .line 490
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 491
    .line 492
    .line 493
    move-result-wide v3

    .line 494
    long-to-int v3, v3

    .line 495
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    :goto_5
    if-eqz v3, :cond_4

    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    if-eqz v3, :cond_3

    .line 506
    .line 507
    const/4 v3, 0x1

    .line 508
    goto :goto_6

    .line 509
    :cond_3
    const/4 v3, 0x0

    .line 510
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 511
    .line 512
    .line 513
    move-result-object v23

    .line 514
    :cond_4
    move-object/from16 v68, v23

    .line 515
    .line 516
    move/from16 v3, v25

    .line 517
    .line 518
    move/from16 v23, v5

    .line 519
    .line 520
    goto :goto_7

    .line 521
    :catchall_0
    move-exception v0

    .line 522
    goto/16 :goto_10

    .line 523
    .line 524
    :goto_7
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 525
    .line 526
    .line 527
    move-result-wide v4

    .line 528
    long-to-int v4, v4

    .line 529
    invoke-static {v4}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 530
    .line 531
    .line 532
    move-result-object v74

    .line 533
    move/from16 v4, v26

    .line 534
    .line 535
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-static {v5}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 540
    .line 541
    .line 542
    move-result-object v73

    .line 543
    move/from16 v25, v2

    .line 544
    .line 545
    move/from16 v26, v3

    .line 546
    .line 547
    move/from16 v5, v27

    .line 548
    .line 549
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 550
    .line 551
    .line 552
    move-result-wide v2

    .line 553
    long-to-int v2, v2

    .line 554
    if-eqz v2, :cond_5

    .line 555
    .line 556
    const/16 v75, 0x1

    .line 557
    .line 558
    :goto_8
    move/from16 v27, v4

    .line 559
    .line 560
    move/from16 v2, v28

    .line 561
    .line 562
    goto :goto_9

    .line 563
    :cond_5
    const/16 v75, 0x0

    .line 564
    .line 565
    goto :goto_8

    .line 566
    :goto_9
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 567
    .line 568
    .line 569
    move-result-wide v3

    .line 570
    long-to-int v3, v3

    .line 571
    if-eqz v3, :cond_6

    .line 572
    .line 573
    const/16 v76, 0x1

    .line 574
    .line 575
    :goto_a
    move/from16 v28, v5

    .line 576
    .line 577
    move/from16 v3, v29

    .line 578
    .line 579
    goto :goto_b

    .line 580
    :cond_6
    const/16 v76, 0x0

    .line 581
    .line 582
    goto :goto_a

    .line 583
    :goto_b
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 584
    .line 585
    .line 586
    move-result-wide v4

    .line 587
    long-to-int v4, v4

    .line 588
    if-eqz v4, :cond_7

    .line 589
    .line 590
    const/16 v77, 0x1

    .line 591
    .line 592
    :goto_c
    move v5, v2

    .line 593
    move/from16 v29, v3

    .line 594
    .line 595
    move/from16 v4, v30

    .line 596
    .line 597
    goto :goto_d

    .line 598
    :cond_7
    const/16 v77, 0x0

    .line 599
    .line 600
    goto :goto_c

    .line 601
    :goto_d
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 602
    .line 603
    .line 604
    move-result-wide v2

    .line 605
    long-to-int v2, v2

    .line 606
    if-eqz v2, :cond_8

    .line 607
    .line 608
    const/16 v78, 0x1

    .line 609
    .line 610
    :goto_e
    move/from16 v2, v31

    .line 611
    .line 612
    goto :goto_f

    .line 613
    :cond_8
    const/16 v78, 0x0

    .line 614
    .line 615
    goto :goto_e

    .line 616
    :goto_f
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 617
    .line 618
    .line 619
    move-result-wide v79

    .line 620
    move/from16 v3, v32

    .line 621
    .line 622
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 623
    .line 624
    .line 625
    move-result-wide v81

    .line 626
    move/from16 v31, v2

    .line 627
    .line 628
    move/from16 v2, v33

    .line 629
    .line 630
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 631
    .line 632
    .line 633
    move-result-object v30

    .line 634
    invoke-static/range {v30 .. v30}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 635
    .line 636
    .line 637
    move-result-object v83

    .line 638
    new-instance v48, Landroidx/work/Constraints;

    .line 639
    .line 640
    move-object/from16 v72, v48

    .line 641
    .line 642
    invoke-direct/range {v72 .. v83}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 643
    .line 644
    .line 645
    move-object/from16 v48, v72

    .line 646
    .line 647
    new-instance v35, Landroidx/work/impl/model/WorkSpec;

    .line 648
    .line 649
    move/from16 v49, v14

    .line 650
    .line 651
    invoke-direct/range {v35 .. v68}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 652
    .line 653
    .line 654
    move-object/from16 v14, v35

    .line 655
    .line 656
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    .line 658
    .line 659
    move/from16 v14, v28

    .line 660
    .line 661
    move/from16 v28, v5

    .line 662
    .line 663
    move/from16 v5, v17

    .line 664
    .line 665
    move/from16 v17, v18

    .line 666
    .line 667
    move/from16 v18, v19

    .line 668
    .line 669
    move/from16 v19, v20

    .line 670
    .line 671
    move/from16 v20, v23

    .line 672
    .line 673
    move/from16 v23, v24

    .line 674
    .line 675
    move/from16 v24, v25

    .line 676
    .line 677
    move/from16 v25, v26

    .line 678
    .line 679
    move/from16 v26, v27

    .line 680
    .line 681
    move/from16 v27, v14

    .line 682
    .line 683
    move/from16 v33, v2

    .line 684
    .line 685
    move/from16 v32, v3

    .line 686
    .line 687
    move/from16 v30, v4

    .line 688
    .line 689
    move v2, v15

    .line 690
    move/from16 v4, v16

    .line 691
    .line 692
    move/from16 v14, v34

    .line 693
    .line 694
    move/from16 v15, v69

    .line 695
    .line 696
    move/from16 v3, v70

    .line 697
    .line 698
    move/from16 v16, v71

    .line 699
    .line 700
    goto/16 :goto_0

    .line 701
    .line 702
    :cond_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 703
    .line 704
    .line 705
    return-object v0

    .line 706
    :goto_10
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 707
    .line 708
    .line 709
    throw v0
.end method

.method private final invoke$app$k9mail$K9KoinModuleKt$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, Lorg/koin/core/module/Module;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    new-array v0, p0, [Lorg/koin/core/module/Module;

    .line 8
    .line 9
    sget-object v1, Lnet/thunderbird/app/common/AppCommonModuleKt;->appCommonModule:Lorg/koin/core/module/Module;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    iget-object v1, p1, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-array v0, p0, [Lorg/koin/core/module/Module;

    .line 20
    .line 21
    sget-object v3, Lapp/k9mail/widget/WidgetModuleKt;->widgetModule:Lorg/koin/core/module/Module;

    .line 22
    .line 23
    aput-object v3, v0, v2

    .line 24
    .line 25
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-array v0, p0, [Lorg/koin/core/module/Module;

    .line 29
    .line 30
    sget-object v3, Lapp/k9mail/feature/FeatureModuleKt;->featureModule:Lorg/koin/core/module/Module;

    .line 31
    .line 32
    aput-object v3, v0, v2

    .line 33
    .line 34
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-array p0, p0, [Lorg/koin/core/module/Module;

    .line 38
    .line 39
    sget-object v0, Lapp/k9mail/provider/ProviderModuleKt;->providerModule:Lorg/koin/core/module/Module;

    .line 40
    .line 41
    aput-object v0, p0, v2

    .line 42
    .line 43
    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v6, Lorg/koin/core/qualifier/StringQualifier;

    .line 47
    .line 48
    const-string p0, "ClientInfoAppName"

    .line 49
    .line 50
    invoke-direct {v6, p0}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v7, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;

    .line 54
    .line 55
    invoke-direct {v7, v2}, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 59
    .line 60
    const-class p0, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    sget-object v9, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 67
    .line 68
    sget-object v13, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 69
    .line 70
    move-object v4, v9

    .line 71
    move-object v8, v13

    .line 72
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 76
    .line 77
    invoke-direct {v0, v3}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 81
    .line 82
    .line 83
    new-instance v11, Lorg/koin/core/qualifier/StringQualifier;

    .line 84
    .line 85
    const-string v0, "ClientInfoAppVersion"

    .line 86
    .line 87
    invoke-direct {v11, v0}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v12, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;

    .line 91
    .line 92
    const/16 v0, 0x19

    .line 93
    .line 94
    invoke-direct {v12, v0}, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 95
    .line 96
    .line 97
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 98
    .line 99
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 104
    .line 105
    .line 106
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 107
    .line 108
    invoke-direct {p0, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 112
    .line 113
    .line 114
    new-instance v12, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;

    .line 115
    .line 116
    const/16 p0, 0x1a

    .line 117
    .line 118
    invoke-direct {v12, p0}, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 119
    .line 120
    .line 121
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 122
    .line 123
    const-class p0, Lcom/fsck/k9/DefaultAppConfig;

    .line 124
    .line 125
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    const/4 v11, 0x0

    .line 130
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 131
    .line 132
    .line 133
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 134
    .line 135
    invoke-direct {p0, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 139
    .line 140
    .line 141
    new-instance v12, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;

    .line 142
    .line 143
    const/16 p0, 0x1b

    .line 144
    .line 145
    invoke-direct {v12, p0}, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 146
    .line 147
    .line 148
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 149
    .line 150
    const-class p0, Lapp/k9mail/auth/K9OAuthConfigurationFactory;

    .line 151
    .line 152
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 157
    .line 158
    .line 159
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 160
    .line 161
    invoke-direct {p0, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 165
    .line 166
    .line 167
    new-instance v12, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;

    .line 168
    .line 169
    const/16 p0, 0x1c

    .line 170
    .line 171
    invoke-direct {v12, p0}, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 172
    .line 173
    .line 174
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 175
    .line 176
    const-class p0, Lapp/k9mail/featureflag/K9FeatureFlagFactory;

    .line 177
    .line 178
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 183
    .line 184
    .line 185
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 186
    .line 187
    invoke-direct {p0, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 191
    .line 192
    .line 193
    new-instance v11, Lorg/koin/core/qualifier/StringQualifier;

    .line 194
    .line 195
    const-string p0, "developmentBackends"

    .line 196
    .line 197
    invoke-direct {v11, p0}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 201
    .line 202
    invoke-direct {v12, v2}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 203
    .line 204
    .line 205
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 206
    .line 207
    const-class p0, Ljava/util/Map;

    .line 208
    .line 209
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 214
    .line 215
    .line 216
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 217
    .line 218
    invoke-direct {p0, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 222
    .line 223
    .line 224
    new-instance v11, Lorg/koin/core/qualifier/StringQualifier;

    .line 225
    .line 226
    const-string p0, "extraAutoDiscoveries"

    .line 227
    .line 228
    invoke-direct {v11, p0}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 232
    .line 233
    const/16 p0, 0x11

    .line 234
    .line 235
    invoke-direct {v12, p0}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 236
    .line 237
    .line 238
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 239
    .line 240
    const-class p0, Ljava/util/List;

    .line 241
    .line 242
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 247
    .line 248
    .line 249
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 250
    .line 251
    invoke-direct {p0, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 255
    .line 256
    .line 257
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 258
    .line 259
    const/16 p0, 0x12

    .line 260
    .line 261
    invoke-direct {v12, p0}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 262
    .line 263
    .line 264
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 265
    .line 266
    const-class p0, Lnet/thunderbird/core/featureflag/NoOpFeatureFlagOverrides;

    .line 267
    .line 268
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    const/4 v11, 0x0

    .line 273
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v8, p1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 277
    .line 278
    .line 279
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 280
    .line 281
    return-object p0
.end method

.method private final invoke$app$k9mail$core$android$common$contact$ContactKoinModuleKt$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Lorg/koin/core/module/Module;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v3, Lorg/koin/core/qualifier/StringQualifier;

    .line 7
    .line 8
    const-string p0, "ContactCache"

    .line 9
    .line 10
    invoke-direct {v3, p0}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    invoke-direct {v4, p0}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lorg/koin/core/definition/BeanDefinition;

    .line 20
    .line 21
    const-class p0, Lnet/thunderbird/core/common/cache/Cache;

    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v6, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 28
    .line 29
    sget-object v5, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 30
    .line 31
    move-object v1, v6

    .line 32
    invoke-direct/range {v0 .. v5}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 33
    .line 34
    .line 35
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 p0, 0x3

    .line 46
    invoke-direct {v9, p0}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 50
    .line 51
    const-class p0, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;

    .line 52
    .line 53
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const/4 v8, 0x0

    .line 58
    sget-object v10, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 59
    .line 60
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 64
    .line 65
    invoke-direct {p0, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 69
    .line 70
    .line 71
    new-instance v9, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    const/4 p0, 0x4

    .line 74
    invoke-direct {v9, p0}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 75
    .line 76
    .line 77
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 78
    .line 79
    const-class p0, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 80
    .line 81
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 89
    .line 90
    invoke-direct {p0, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 94
    .line 95
    .line 96
    new-instance v9, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    const/4 p0, 0x5

    .line 99
    invoke-direct {v9, p0}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 100
    .line 101
    .line 102
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 103
    .line 104
    const-class p0, Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

    .line 105
    .line 106
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v5, p1}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 114
    .line 115
    .line 116
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p0
.end method

.method private final invoke$app$k9mail$core$ui$compose$designsystem$atom$text$TextBodyMediumKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Landroidx/compose/ui/autofill/ContentType;->Companion:Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object p0, Landroidx/compose/ui/autofill/ContentType$Companion;->EmailAddress:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/autofill/ContentType;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private final invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedFakeSelectKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedSelectKt$$ExternalSyntheticLambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final invoke$app$k9mail$core$ui$compose$designsystem$molecule$ContentLoadingErrorViewKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentKey;

    .line 7
    .line 8
    invoke-interface {p1}, Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;->isLoading()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-interface {p1}, Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;->getError()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1, v0}, Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentKey;-><init>(Ljava/lang/Object;Z)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method private final invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/16 p1, 0x19

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 14
    .line 15
    sget-object p1, Landroidx/compose/animation/core/VisibilityThresholdsKt;->VisibilityThresholdMap:Ljava/util/Map;

    .line 16
    .line 17
    new-instance p1, Landroidx/compose/ui/unit/IntOffset;

    .line 18
    .line 19
    const-wide v0, 0x100000001L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/high16 v3, 0x43c80000    # 400.0f

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-static {v2, v3, p1, v4}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v5, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-direct {v5, v6, p0}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    new-instance p0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 42
    .line 43
    new-instance v6, Landroidx/compose/animation/TransitionData;

    .line 44
    .line 45
    new-instance v8, Landroidx/compose/animation/Slide;

    .line 46
    .line 47
    invoke-direct {v8, v5, p1}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 48
    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    const/16 v12, 0x7d

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    invoke-direct/range {v6 .. v12}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v6}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/16 v5, 0x1a

    .line 65
    .line 66
    invoke-direct {p1, v5}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v5, Landroidx/compose/ui/unit/IntOffset;

    .line 70
    .line 71
    invoke-direct {v5, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v3, v5, v4}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 79
    .line 80
    const/4 v2, 0x3

    .line 81
    invoke-direct {v1, v2, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Landroidx/compose/animation/ExitTransitionImpl;

    .line 85
    .line 86
    new-instance v2, Landroidx/compose/animation/TransitionData;

    .line 87
    .line 88
    new-instance v4, Landroidx/compose/animation/Slide;

    .line 89
    .line 90
    invoke-direct {v4, v1, v0}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 91
    .line 92
    .line 93
    const/16 v8, 0x7d

    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-direct/range {v2 .. v8}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, v2}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p0, p1}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method

.method private final invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method private final invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    neg-int p0, p0

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private final invoke$app$k9mail$core$ui$compose$designsystem$organism$banner$inline$ErrorBannerInlineNotificationCardKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
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
    const-string v2, "period_count"

    .line 6
    .line 7
    const-string v3, "out_of_quota_policy"

    .line 8
    .line 9
    const-string v4, "run_in_foreground"

    .line 10
    .line 11
    const-string v5, "schedule_requested_at"

    .line 12
    .line 13
    const-string v6, "minimum_retention_duration"

    .line 14
    .line 15
    const-string v7, "last_enqueue_time"

    .line 16
    .line 17
    const-string v8, "backoff_delay_duration"

    .line 18
    .line 19
    const-string v9, "backoff_policy"

    .line 20
    .line 21
    const-string v10, "run_attempt_count"

    .line 22
    .line 23
    const-string v11, "flex_duration"

    .line 24
    .line 25
    const-string v12, "interval_duration"

    .line 26
    .line 27
    const-string v13, "initial_delay"

    .line 28
    .line 29
    const-string v14, "output"

    .line 30
    .line 31
    const-string v15, "input"

    .line 32
    .line 33
    const-string v0, "input_merger_class_name"

    .line 34
    .line 35
    move/from16 v16, v1

    .line 36
    .line 37
    const-string/jumbo v1, "worker_class_name"

    .line 38
    .line 39
    .line 40
    move-object/from16 v17, v2

    .line 41
    .line 42
    const-string v2, "state"

    .line 43
    .line 44
    move-object/from16 v18, v3

    .line 45
    .line 46
    const-string v3, "id"

    .line 47
    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    sget-object v20, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    .line 52
    move-object/from16 v21, v4

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    packed-switch v16, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    move-object/from16 v0, p1

    .line 59
    .line 60
    check-cast v0, Lorg/koin/core/module/Module;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    new-array v2, v1, [Lorg/koin/core/module/Module;

    .line 67
    .line 68
    sget-object v3, Lnet/thunderbird/feature/account/settings/AccountSettingsModuleKt;->featureAccountSettingsModule:Lorg/koin/core/module/Module;

    .line 69
    .line 70
    aput-object v3, v2, v4

    .line 71
    .line 72
    iget-object v3, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-array v2, v1, [Lorg/koin/core/module/Module;

    .line 78
    .line 79
    sget-object v5, Lapp/k9mail/feature/telemetry/TelemetryModuleKt;->telemetryModule:Lorg/koin/core/module/Module;

    .line 80
    .line 81
    aput-object v5, v2, v4

    .line 82
    .line 83
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    new-array v2, v1, [Lorg/koin/core/module/Module;

    .line 87
    .line 88
    sget-object v5, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt;->featureFundingModule:Lorg/koin/core/module/Module;

    .line 89
    .line 90
    aput-object v5, v2, v4

    .line 91
    .line 92
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-array v2, v1, [Lorg/koin/core/module/Module;

    .line 96
    .line 97
    sget-object v5, Lapp/k9mail/feature/onboarding/migration/OnboardingMigrationModuleKt;->onboardingMigrationModule:Lorg/koin/core/module/Module;

    .line 98
    .line 99
    aput-object v5, v2, v4

    .line 100
    .line 101
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-array v2, v1, [Lorg/koin/core/module/Module;

    .line 105
    .line 106
    sget-object v5, Lapp/k9mail/feature/migration/launcher/FeatureMigrationModuleKt;->featureMigrationModule:Lorg/koin/core/module/Module;

    .line 107
    .line 108
    aput-object v5, v2, v4

    .line 109
    .line 110
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-array v2, v1, [Lorg/koin/core/module/Module;

    .line 114
    .line 115
    sget-object v5, Lnet/thunderbird/feature/mail/message/list/internal/FeatureMessageListModuleKt;->featureMessageListModule:Lorg/koin/core/module/Module;

    .line 116
    .line 117
    aput-object v5, v2, v4

    .line 118
    .line 119
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    new-array v1, v1, [Lorg/koin/core/module/Module;

    .line 123
    .line 124
    sget-object v2, Lnet/thunderbird/feature/thundermail/thunderbird/inject/FeatureThundermailModuleKt;->featureThundermailModule:Lorg/koin/core/module/Module;

    .line 125
    .line 126
    aput-object v2, v1, v4

    .line 127
    .line 128
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    new-instance v9, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    const/16 v1, 0x13

    .line 134
    .line 135
    invoke-direct {v9, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 136
    .line 137
    .line 138
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 139
    .line 140
    const-class v1, Lcom/bumptech/glide/GlideBuilder$1;

    .line 141
    .line 142
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    sget-object v6, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 147
    .line 148
    const/4 v8, 0x0

    .line 149
    sget-object v15, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 150
    .line 151
    move-object v10, v15

    .line 152
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 153
    .line 154
    .line 155
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 156
    .line 157
    invoke-direct {v1, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 161
    .line 162
    .line 163
    new-instance v14, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    const/16 v1, 0x14

    .line 166
    .line 167
    invoke-direct {v14, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 168
    .line 169
    .line 170
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 171
    .line 172
    const-class v1, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 173
    .line 174
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    const/4 v13, 0x0

    .line 179
    move-object v11, v6

    .line 180
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v10, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 184
    .line 185
    .line 186
    return-object v20

    .line 187
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$ui$compose$designsystem$organism$banner$inline$ErrorBannerInlineNotificationCardKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    return-object v0

    .line 192
    :pswitch_1
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    return-object v0

    .line 197
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda3(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    return-object v0

    .line 202
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    return-object v0

    .line 207
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    return-object v0

    .line 212
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$ui$compose$designsystem$molecule$ContentLoadingErrorViewKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    return-object v0

    .line 217
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedSelectKt$$ExternalSyntheticLambda3(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    return-object v0

    .line 222
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedFakeSelectKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    return-object v0

    .line 227
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    return-object v0

    .line 232
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$ui$compose$designsystem$atom$text$TextBodyMediumKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    return-object v0

    .line 237
    :pswitch_a
    move-object/from16 v0, p1

    .line 238
    .line 239
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    return-object v20

    .line 245
    :pswitch_b
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    return-object v0

    .line 250
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$android$common$contact$ContactKoinModuleKt$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    return-object v0

    .line 255
    :pswitch_d
    move-object/from16 v0, p1

    .line 256
    .line 257
    check-cast v0, Ljava/lang/Integer;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    return-object v20

    .line 263
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$app$k9mail$K9KoinModuleKt$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    return-object v0

    .line 268
    :pswitch_f
    move-object/from16 v0, p1

    .line 269
    .line 270
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    const-string v1, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    .line 276
    .line 277
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 282
    .line 283
    .line 284
    invoke-static {v0}, Lcom/fsck/k9/sasl/OAuthBearer;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 285
    .line 286
    .line 287
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 289
    .line 290
    .line 291
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    return-object v0

    .line 296
    :catchall_0
    move-exception v0

    .line 297
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 298
    .line 299
    .line 300
    throw v0

    .line 301
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda7(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    return-object v0

    .line 306
    :pswitch_11
    move-object/from16 v0, p1

    .line 307
    .line 308
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 314
    .line 315
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    :try_start_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    .line 325
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 326
    .line 327
    .line 328
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    long-to-int v0, v2

    .line 330
    if-eqz v0, :cond_0

    .line 331
    .line 332
    const/4 v4, 0x1

    .line 333
    goto :goto_0

    .line 334
    :catchall_1
    move-exception v0

    .line 335
    goto :goto_1

    .line 336
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 337
    .line 338
    .line 339
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    return-object v0

    .line 344
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :pswitch_12
    move-object/from16 v0, p1

    .line 349
    .line 350
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    const-string v1, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    .line 356
    .line 357
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    :try_start_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_1

    .line 366
    .line 367
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 368
    .line 369
    .line 370
    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 371
    long-to-int v4, v2

    .line 372
    goto :goto_2

    .line 373
    :catchall_2
    move-exception v0

    .line 374
    goto :goto_3

    .line 375
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 376
    .line 377
    .line 378
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    return-object v0

    .line 383
    :goto_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :pswitch_13
    move-object/from16 v4, p1

    .line 388
    .line 389
    check-cast v4, Landroidx/sqlite/SQLiteConnection;

    .line 390
    .line 391
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    move-object/from16 v22, v5

    .line 395
    .line 396
    const-string v5, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time"

    .line 397
    .line 398
    invoke-interface {v4, v5}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    :try_start_3
    invoke-static {v4, v3}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    invoke-static {v4, v2}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    invoke-static {v4, v1}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    invoke-static {v4, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    invoke-static {v4, v14}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    move-result v14

    .line 426
    invoke-static {v4, v13}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    invoke-static {v4, v12}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    move-result v12

    .line 434
    invoke-static {v4, v11}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    move-result v11

    .line 438
    invoke-static {v4, v10}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    move-result v10

    .line 442
    invoke-static {v4, v9}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result v9

    .line 446
    invoke-static {v4, v8}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    move-result v8

    .line 450
    invoke-static {v4, v7}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    invoke-static {v4, v6}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    move-object/from16 v15, v22

    .line 459
    .line 460
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    move-result v15

    .line 464
    move/from16 p0, v15

    .line 465
    .line 466
    move-object/from16 v15, v21

    .line 467
    .line 468
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    move-result v15

    .line 472
    move/from16 p1, v15

    .line 473
    .line 474
    move-object/from16 v15, v18

    .line 475
    .line 476
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    move-result v15

    .line 480
    move/from16 v18, v15

    .line 481
    .line 482
    move-object/from16 v15, v17

    .line 483
    .line 484
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    move-result v15

    .line 488
    move/from16 v17, v15

    .line 489
    .line 490
    const-string v15, "generation"

    .line 491
    .line 492
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    move-result v15

    .line 496
    move/from16 v20, v15

    .line 497
    .line 498
    const-string v15, "next_schedule_time_override"

    .line 499
    .line 500
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    move-result v15

    .line 504
    move/from16 v21, v15

    .line 505
    .line 506
    const-string v15, "next_schedule_time_override_generation"

    .line 507
    .line 508
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 509
    .line 510
    .line 511
    move-result v15

    .line 512
    move/from16 v22, v15

    .line 513
    .line 514
    const-string v15, "stop_reason"

    .line 515
    .line 516
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move-result v15

    .line 520
    move/from16 v23, v15

    .line 521
    .line 522
    const-string v15, "trace_tag"

    .line 523
    .line 524
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    move-result v15

    .line 528
    move/from16 v24, v15

    .line 529
    .line 530
    const-string v15, "backoff_on_system_interruptions"

    .line 531
    .line 532
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    move-result v15

    .line 536
    move/from16 v25, v15

    .line 537
    .line 538
    const-string v15, "required_network_type"

    .line 539
    .line 540
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    move-result v15

    .line 544
    move/from16 v26, v15

    .line 545
    .line 546
    const-string v15, "required_network_request"

    .line 547
    .line 548
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    move-result v15

    .line 552
    move/from16 v27, v15

    .line 553
    .line 554
    const-string v15, "requires_charging"

    .line 555
    .line 556
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    move-result v15

    .line 560
    move/from16 v28, v15

    .line 561
    .line 562
    const-string v15, "requires_device_idle"

    .line 563
    .line 564
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    move-result v15

    .line 568
    move/from16 v29, v15

    .line 569
    .line 570
    const-string v15, "requires_battery_not_low"

    .line 571
    .line 572
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    move-result v15

    .line 576
    move/from16 v30, v15

    .line 577
    .line 578
    const-string v15, "requires_storage_not_low"

    .line 579
    .line 580
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 581
    .line 582
    .line 583
    move-result v15

    .line 584
    move/from16 v31, v15

    .line 585
    .line 586
    const-string v15, "trigger_content_update_delay"

    .line 587
    .line 588
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    move-result v15

    .line 592
    move/from16 v32, v15

    .line 593
    .line 594
    const-string v15, "trigger_max_content_delay"

    .line 595
    .line 596
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    move-result v15

    .line 600
    move/from16 v33, v15

    .line 601
    .line 602
    const-string v15, "content_uri_triggers"

    .line 603
    .line 604
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 605
    .line 606
    .line 607
    move-result v15

    .line 608
    move/from16 v34, v15

    .line 609
    .line 610
    new-instance v15, Ljava/util/ArrayList;

    .line 611
    .line 612
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .line 614
    .line 615
    :goto_4
    invoke-interface {v4}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 616
    .line 617
    .line 618
    move-result v35

    .line 619
    if-eqz v35, :cond_b

    .line 620
    .line 621
    invoke-interface {v4, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v37

    .line 625
    move/from16 v70, v6

    .line 626
    .line 627
    move/from16 v35, v7

    .line 628
    .line 629
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 630
    .line 631
    .line 632
    move-result-wide v6

    .line 633
    long-to-int v6, v6

    .line 634
    invoke-static {v6}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 635
    .line 636
    .line 637
    move-result-object v38

    .line 638
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v39

    .line 642
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v40

    .line 646
    invoke-interface {v4, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 647
    .line 648
    .line 649
    move-result-object v6

    .line 650
    sget-object v7, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 651
    .line 652
    invoke-static {v6}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 653
    .line 654
    .line 655
    move-result-object v41

    .line 656
    invoke-interface {v4, v14}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 657
    .line 658
    .line 659
    move-result-object v6

    .line 660
    invoke-static {v6}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 661
    .line 662
    .line 663
    move-result-object v42

    .line 664
    invoke-interface {v4, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 665
    .line 666
    .line 667
    move-result-wide v43

    .line 668
    invoke-interface {v4, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 669
    .line 670
    .line 671
    move-result-wide v45

    .line 672
    invoke-interface {v4, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 673
    .line 674
    .line 675
    move-result-wide v47

    .line 676
    invoke-interface {v4, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 677
    .line 678
    .line 679
    move-result-wide v6

    .line 680
    long-to-int v6, v6

    .line 681
    move/from16 v72, v0

    .line 682
    .line 683
    move/from16 v71, v1

    .line 684
    .line 685
    invoke-interface {v4, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 686
    .line 687
    .line 688
    move-result-wide v0

    .line 689
    long-to-int v0, v0

    .line 690
    invoke-static {v0}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 691
    .line 692
    .line 693
    move-result-object v51

    .line 694
    invoke-interface {v4, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 695
    .line 696
    .line 697
    move-result-wide v52

    .line 698
    move/from16 v0, v35

    .line 699
    .line 700
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 701
    .line 702
    .line 703
    move-result-wide v54

    .line 704
    move/from16 v1, v70

    .line 705
    .line 706
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 707
    .line 708
    .line 709
    move-result-wide v56

    .line 710
    move/from16 v7, p0

    .line 711
    .line 712
    invoke-interface {v4, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 713
    .line 714
    .line 715
    move-result-wide v58

    .line 716
    move/from16 v35, v0

    .line 717
    .line 718
    move/from16 v70, v1

    .line 719
    .line 720
    move/from16 p0, v2

    .line 721
    .line 722
    move/from16 v0, p1

    .line 723
    .line 724
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 725
    .line 726
    .line 727
    move-result-wide v1

    .line 728
    long-to-int v1, v1

    .line 729
    if-eqz v1, :cond_2

    .line 730
    .line 731
    const/16 v60, 0x1

    .line 732
    .line 733
    :goto_5
    move/from16 p1, v3

    .line 734
    .line 735
    move/from16 v1, v18

    .line 736
    .line 737
    goto :goto_6

    .line 738
    :cond_2
    const/16 v60, 0x0

    .line 739
    .line 740
    goto :goto_5

    .line 741
    :goto_6
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 742
    .line 743
    .line 744
    move-result-wide v2

    .line 745
    long-to-int v2, v2

    .line 746
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 747
    .line 748
    .line 749
    move-result-object v61

    .line 750
    move v3, v0

    .line 751
    move/from16 v18, v1

    .line 752
    .line 753
    move/from16 v2, v17

    .line 754
    .line 755
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 756
    .line 757
    .line 758
    move-result-wide v0

    .line 759
    long-to-int v0, v0

    .line 760
    move/from16 v17, v2

    .line 761
    .line 762
    move/from16 v1, v20

    .line 763
    .line 764
    move/from16 v20, v3

    .line 765
    .line 766
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 767
    .line 768
    .line 769
    move-result-wide v2

    .line 770
    long-to-int v2, v2

    .line 771
    move/from16 v3, v21

    .line 772
    .line 773
    invoke-interface {v4, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 774
    .line 775
    .line 776
    move-result-wide v64

    .line 777
    move/from16 v62, v0

    .line 778
    .line 779
    move/from16 v21, v1

    .line 780
    .line 781
    move/from16 v63, v2

    .line 782
    .line 783
    move/from16 v0, v22

    .line 784
    .line 785
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 786
    .line 787
    .line 788
    move-result-wide v1

    .line 789
    long-to-int v1, v1

    .line 790
    move/from16 v22, v0

    .line 791
    .line 792
    move/from16 v66, v1

    .line 793
    .line 794
    move/from16 v2, v23

    .line 795
    .line 796
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 797
    .line 798
    .line 799
    move-result-wide v0

    .line 800
    long-to-int v0, v0

    .line 801
    move/from16 v1, v24

    .line 802
    .line 803
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 804
    .line 805
    .line 806
    move-result v23

    .line 807
    if-eqz v23, :cond_3

    .line 808
    .line 809
    move-object/from16 v68, v19

    .line 810
    .line 811
    :goto_7
    move/from16 v67, v0

    .line 812
    .line 813
    move/from16 v0, v25

    .line 814
    .line 815
    goto :goto_8

    .line 816
    :cond_3
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v23

    .line 820
    move-object/from16 v68, v23

    .line 821
    .line 822
    goto :goto_7

    .line 823
    :goto_8
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 824
    .line 825
    .line 826
    move-result v23

    .line 827
    if-eqz v23, :cond_4

    .line 828
    .line 829
    move/from16 v24, v1

    .line 830
    .line 831
    move/from16 v23, v2

    .line 832
    .line 833
    move-object/from16 v1, v19

    .line 834
    .line 835
    goto :goto_9

    .line 836
    :cond_4
    move/from16 v24, v1

    .line 837
    .line 838
    move/from16 v23, v2

    .line 839
    .line 840
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 841
    .line 842
    .line 843
    move-result-wide v1

    .line 844
    long-to-int v1, v1

    .line 845
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    :goto_9
    if-eqz v1, :cond_6

    .line 850
    .line 851
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    if-eqz v1, :cond_5

    .line 856
    .line 857
    const/4 v1, 0x1

    .line 858
    goto :goto_a

    .line 859
    :cond_5
    const/4 v1, 0x0

    .line 860
    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    move-object/from16 v69, v1

    .line 865
    .line 866
    :goto_b
    move/from16 v25, v3

    .line 867
    .line 868
    move/from16 v1, v26

    .line 869
    .line 870
    goto :goto_c

    .line 871
    :catchall_3
    move-exception v0

    .line 872
    goto/16 :goto_15

    .line 873
    .line 874
    :cond_6
    move-object/from16 v69, v19

    .line 875
    .line 876
    goto :goto_b

    .line 877
    :goto_c
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 878
    .line 879
    .line 880
    move-result-wide v2

    .line 881
    long-to-int v2, v2

    .line 882
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 883
    .line 884
    .line 885
    move-result-object v75

    .line 886
    move/from16 v2, v27

    .line 887
    .line 888
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 889
    .line 890
    .line 891
    move-result-object v3

    .line 892
    invoke-static {v3}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 893
    .line 894
    .line 895
    move-result-object v74

    .line 896
    move/from16 v26, v0

    .line 897
    .line 898
    move/from16 v27, v1

    .line 899
    .line 900
    move/from16 v3, v28

    .line 901
    .line 902
    invoke-interface {v4, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 903
    .line 904
    .line 905
    move-result-wide v0

    .line 906
    long-to-int v0, v0

    .line 907
    if-eqz v0, :cond_7

    .line 908
    .line 909
    const/16 v76, 0x1

    .line 910
    .line 911
    :goto_d
    move/from16 v28, v2

    .line 912
    .line 913
    move/from16 v0, v29

    .line 914
    .line 915
    goto :goto_e

    .line 916
    :cond_7
    const/16 v76, 0x0

    .line 917
    .line 918
    goto :goto_d

    .line 919
    :goto_e
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 920
    .line 921
    .line 922
    move-result-wide v1

    .line 923
    long-to-int v1, v1

    .line 924
    if-eqz v1, :cond_8

    .line 925
    .line 926
    const/16 v77, 0x1

    .line 927
    .line 928
    :goto_f
    move/from16 v29, v3

    .line 929
    .line 930
    move/from16 v1, v30

    .line 931
    .line 932
    goto :goto_10

    .line 933
    :cond_8
    const/16 v77, 0x0

    .line 934
    .line 935
    goto :goto_f

    .line 936
    :goto_10
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 937
    .line 938
    .line 939
    move-result-wide v2

    .line 940
    long-to-int v2, v2

    .line 941
    if-eqz v2, :cond_9

    .line 942
    .line 943
    const/16 v78, 0x1

    .line 944
    .line 945
    :goto_11
    move v3, v0

    .line 946
    move/from16 v30, v1

    .line 947
    .line 948
    move/from16 v2, v31

    .line 949
    .line 950
    goto :goto_12

    .line 951
    :cond_9
    const/16 v78, 0x0

    .line 952
    .line 953
    goto :goto_11

    .line 954
    :goto_12
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 955
    .line 956
    .line 957
    move-result-wide v0

    .line 958
    long-to-int v0, v0

    .line 959
    if-eqz v0, :cond_a

    .line 960
    .line 961
    const/16 v79, 0x1

    .line 962
    .line 963
    :goto_13
    move/from16 v0, v32

    .line 964
    .line 965
    goto :goto_14

    .line 966
    :cond_a
    const/16 v79, 0x0

    .line 967
    .line 968
    goto :goto_13

    .line 969
    :goto_14
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 970
    .line 971
    .line 972
    move-result-wide v80

    .line 973
    move/from16 v1, v33

    .line 974
    .line 975
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 976
    .line 977
    .line 978
    move-result-wide v82

    .line 979
    move/from16 v32, v0

    .line 980
    .line 981
    move/from16 v0, v34

    .line 982
    .line 983
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 984
    .line 985
    .line 986
    move-result-object v31

    .line 987
    invoke-static/range {v31 .. v31}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 988
    .line 989
    .line 990
    move-result-object v84

    .line 991
    new-instance v49, Landroidx/work/Constraints;

    .line 992
    .line 993
    move-object/from16 v73, v49

    .line 994
    .line 995
    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 996
    .line 997
    .line 998
    move-object/from16 v49, v73

    .line 999
    .line 1000
    new-instance v36, Landroidx/work/impl/model/WorkSpec;

    .line 1001
    .line 1002
    move/from16 v50, v6

    .line 1003
    .line 1004
    invoke-direct/range {v36 .. v69}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 1005
    .line 1006
    .line 1007
    move-object/from16 v6, v36

    .line 1008
    .line 1009
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1010
    .line 1011
    .line 1012
    move v6, v3

    .line 1013
    move/from16 v3, p1

    .line 1014
    .line 1015
    move/from16 p1, v20

    .line 1016
    .line 1017
    move/from16 v20, v21

    .line 1018
    .line 1019
    move/from16 v21, v25

    .line 1020
    .line 1021
    move/from16 v25, v26

    .line 1022
    .line 1023
    move/from16 v26, v27

    .line 1024
    .line 1025
    move/from16 v27, v28

    .line 1026
    .line 1027
    move/from16 v28, v29

    .line 1028
    .line 1029
    move/from16 v29, v6

    .line 1030
    .line 1031
    move/from16 v34, v0

    .line 1032
    .line 1033
    move/from16 v33, v1

    .line 1034
    .line 1035
    move/from16 v31, v2

    .line 1036
    .line 1037
    move/from16 v6, v70

    .line 1038
    .line 1039
    move/from16 v1, v71

    .line 1040
    .line 1041
    move/from16 v0, v72

    .line 1042
    .line 1043
    move/from16 v2, p0

    .line 1044
    .line 1045
    move/from16 p0, v7

    .line 1046
    .line 1047
    move/from16 v7, v35

    .line 1048
    .line 1049
    goto/16 :goto_4

    .line 1050
    .line 1051
    :cond_b
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 1052
    .line 1053
    .line 1054
    return-object v15

    .line 1055
    :goto_15
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 1056
    .line 1057
    .line 1058
    throw v0

    .line 1059
    :pswitch_14
    const-string v0, "MailSync"

    .line 1060
    .line 1061
    move-object/from16 v1, p1

    .line 1062
    .line 1063
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1064
    .line 1065
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1066
    .line 1067
    .line 1068
    const-string v2, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1069
    .line 1070
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v1

    .line 1074
    const/4 v4, 0x1

    .line 1075
    :try_start_4
    invoke-interface {v1, v0, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 1076
    .line 1077
    .line 1078
    new-instance v0, Ljava/util/ArrayList;

    .line 1079
    .line 1080
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    :goto_16
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v2

    .line 1087
    if-eqz v2, :cond_c

    .line 1088
    .line 1089
    const/4 v2, 0x0

    .line 1090
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1095
    .line 1096
    .line 1097
    goto :goto_16

    .line 1098
    :catchall_4
    move-exception v0

    .line 1099
    goto :goto_17

    .line 1100
    :cond_c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1101
    .line 1102
    .line 1103
    return-object v0

    .line 1104
    :goto_17
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1105
    .line 1106
    .line 1107
    throw v0

    .line 1108
    :pswitch_15
    move-object/from16 v85, v15

    .line 1109
    .line 1110
    move-object v15, v5

    .line 1111
    move-object/from16 v5, v85

    .line 1112
    .line 1113
    move-object/from16 v4, p1

    .line 1114
    .line 1115
    check-cast v4, Landroidx/sqlite/SQLiteConnection;

    .line 1116
    .line 1117
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1118
    .line 1119
    .line 1120
    move-object/from16 v22, v15

    .line 1121
    .line 1122
    const-string v15, "SELECT * FROM workspec WHERE state=1"

    .line 1123
    .line 1124
    invoke-interface {v4, v15}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v4

    .line 1128
    :try_start_5
    invoke-static {v4, v3}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1129
    .line 1130
    .line 1131
    move-result v3

    .line 1132
    invoke-static {v4, v2}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1133
    .line 1134
    .line 1135
    move-result v2

    .line 1136
    invoke-static {v4, v1}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1137
    .line 1138
    .line 1139
    move-result v1

    .line 1140
    invoke-static {v4, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    invoke-static {v4, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1145
    .line 1146
    .line 1147
    move-result v5

    .line 1148
    invoke-static {v4, v14}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1149
    .line 1150
    .line 1151
    move-result v14

    .line 1152
    invoke-static {v4, v13}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1153
    .line 1154
    .line 1155
    move-result v13

    .line 1156
    invoke-static {v4, v12}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1157
    .line 1158
    .line 1159
    move-result v12

    .line 1160
    invoke-static {v4, v11}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1161
    .line 1162
    .line 1163
    move-result v11

    .line 1164
    invoke-static {v4, v10}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1165
    .line 1166
    .line 1167
    move-result v10

    .line 1168
    invoke-static {v4, v9}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1169
    .line 1170
    .line 1171
    move-result v9

    .line 1172
    invoke-static {v4, v8}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1173
    .line 1174
    .line 1175
    move-result v8

    .line 1176
    invoke-static {v4, v7}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1177
    .line 1178
    .line 1179
    move-result v7

    .line 1180
    invoke-static {v4, v6}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1181
    .line 1182
    .line 1183
    move-result v6

    .line 1184
    move-object/from16 v15, v22

    .line 1185
    .line 1186
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1187
    .line 1188
    .line 1189
    move-result v15

    .line 1190
    move/from16 p0, v15

    .line 1191
    .line 1192
    move-object/from16 v15, v21

    .line 1193
    .line 1194
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1195
    .line 1196
    .line 1197
    move-result v15

    .line 1198
    move/from16 p1, v15

    .line 1199
    .line 1200
    move-object/from16 v15, v18

    .line 1201
    .line 1202
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1203
    .line 1204
    .line 1205
    move-result v15

    .line 1206
    move/from16 v18, v15

    .line 1207
    .line 1208
    move-object/from16 v15, v17

    .line 1209
    .line 1210
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1211
    .line 1212
    .line 1213
    move-result v15

    .line 1214
    move/from16 v17, v15

    .line 1215
    .line 1216
    const-string v15, "generation"

    .line 1217
    .line 1218
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1219
    .line 1220
    .line 1221
    move-result v15

    .line 1222
    move/from16 v20, v15

    .line 1223
    .line 1224
    const-string v15, "next_schedule_time_override"

    .line 1225
    .line 1226
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1227
    .line 1228
    .line 1229
    move-result v15

    .line 1230
    move/from16 v21, v15

    .line 1231
    .line 1232
    const-string v15, "next_schedule_time_override_generation"

    .line 1233
    .line 1234
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1235
    .line 1236
    .line 1237
    move-result v15

    .line 1238
    move/from16 v22, v15

    .line 1239
    .line 1240
    const-string v15, "stop_reason"

    .line 1241
    .line 1242
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1243
    .line 1244
    .line 1245
    move-result v15

    .line 1246
    move/from16 v23, v15

    .line 1247
    .line 1248
    const-string v15, "trace_tag"

    .line 1249
    .line 1250
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1251
    .line 1252
    .line 1253
    move-result v15

    .line 1254
    move/from16 v24, v15

    .line 1255
    .line 1256
    const-string v15, "backoff_on_system_interruptions"

    .line 1257
    .line 1258
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1259
    .line 1260
    .line 1261
    move-result v15

    .line 1262
    move/from16 v25, v15

    .line 1263
    .line 1264
    const-string v15, "required_network_type"

    .line 1265
    .line 1266
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1267
    .line 1268
    .line 1269
    move-result v15

    .line 1270
    move/from16 v26, v15

    .line 1271
    .line 1272
    const-string v15, "required_network_request"

    .line 1273
    .line 1274
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1275
    .line 1276
    .line 1277
    move-result v15

    .line 1278
    move/from16 v27, v15

    .line 1279
    .line 1280
    const-string v15, "requires_charging"

    .line 1281
    .line 1282
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1283
    .line 1284
    .line 1285
    move-result v15

    .line 1286
    move/from16 v28, v15

    .line 1287
    .line 1288
    const-string v15, "requires_device_idle"

    .line 1289
    .line 1290
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1291
    .line 1292
    .line 1293
    move-result v15

    .line 1294
    move/from16 v29, v15

    .line 1295
    .line 1296
    const-string v15, "requires_battery_not_low"

    .line 1297
    .line 1298
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1299
    .line 1300
    .line 1301
    move-result v15

    .line 1302
    move/from16 v30, v15

    .line 1303
    .line 1304
    const-string v15, "requires_storage_not_low"

    .line 1305
    .line 1306
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1307
    .line 1308
    .line 1309
    move-result v15

    .line 1310
    move/from16 v31, v15

    .line 1311
    .line 1312
    const-string v15, "trigger_content_update_delay"

    .line 1313
    .line 1314
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1315
    .line 1316
    .line 1317
    move-result v15

    .line 1318
    move/from16 v32, v15

    .line 1319
    .line 1320
    const-string v15, "trigger_max_content_delay"

    .line 1321
    .line 1322
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1323
    .line 1324
    .line 1325
    move-result v15

    .line 1326
    move/from16 v33, v15

    .line 1327
    .line 1328
    const-string v15, "content_uri_triggers"

    .line 1329
    .line 1330
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1331
    .line 1332
    .line 1333
    move-result v15

    .line 1334
    move/from16 v34, v15

    .line 1335
    .line 1336
    new-instance v15, Ljava/util/ArrayList;

    .line 1337
    .line 1338
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    .line 1340
    .line 1341
    :goto_18
    invoke-interface {v4}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1342
    .line 1343
    .line 1344
    move-result v35

    .line 1345
    if-eqz v35, :cond_16

    .line 1346
    .line 1347
    invoke-interface {v4, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v37

    .line 1351
    move/from16 v70, v6

    .line 1352
    .line 1353
    move/from16 v35, v7

    .line 1354
    .line 1355
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1356
    .line 1357
    .line 1358
    move-result-wide v6

    .line 1359
    long-to-int v6, v6

    .line 1360
    invoke-static {v6}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v38

    .line 1364
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v39

    .line 1368
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v40

    .line 1372
    invoke-interface {v4, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1373
    .line 1374
    .line 1375
    move-result-object v6

    .line 1376
    sget-object v7, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1377
    .line 1378
    invoke-static {v6}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v41

    .line 1382
    invoke-interface {v4, v14}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1383
    .line 1384
    .line 1385
    move-result-object v6

    .line 1386
    invoke-static {v6}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v42

    .line 1390
    invoke-interface {v4, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1391
    .line 1392
    .line 1393
    move-result-wide v43

    .line 1394
    invoke-interface {v4, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1395
    .line 1396
    .line 1397
    move-result-wide v45

    .line 1398
    invoke-interface {v4, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1399
    .line 1400
    .line 1401
    move-result-wide v47

    .line 1402
    invoke-interface {v4, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1403
    .line 1404
    .line 1405
    move-result-wide v6

    .line 1406
    long-to-int v6, v6

    .line 1407
    move/from16 v72, v0

    .line 1408
    .line 1409
    move/from16 v71, v1

    .line 1410
    .line 1411
    invoke-interface {v4, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1412
    .line 1413
    .line 1414
    move-result-wide v0

    .line 1415
    long-to-int v0, v0

    .line 1416
    invoke-static {v0}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v51

    .line 1420
    invoke-interface {v4, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1421
    .line 1422
    .line 1423
    move-result-wide v52

    .line 1424
    move/from16 v0, v35

    .line 1425
    .line 1426
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1427
    .line 1428
    .line 1429
    move-result-wide v54

    .line 1430
    move/from16 v1, v70

    .line 1431
    .line 1432
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1433
    .line 1434
    .line 1435
    move-result-wide v56

    .line 1436
    move/from16 v7, p0

    .line 1437
    .line 1438
    invoke-interface {v4, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1439
    .line 1440
    .line 1441
    move-result-wide v58

    .line 1442
    move/from16 v35, v0

    .line 1443
    .line 1444
    move/from16 v70, v1

    .line 1445
    .line 1446
    move/from16 p0, v2

    .line 1447
    .line 1448
    move/from16 v0, p1

    .line 1449
    .line 1450
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1451
    .line 1452
    .line 1453
    move-result-wide v1

    .line 1454
    long-to-int v1, v1

    .line 1455
    if-eqz v1, :cond_d

    .line 1456
    .line 1457
    const/16 v60, 0x1

    .line 1458
    .line 1459
    :goto_19
    move/from16 p1, v3

    .line 1460
    .line 1461
    move/from16 v1, v18

    .line 1462
    .line 1463
    goto :goto_1a

    .line 1464
    :cond_d
    const/16 v60, 0x0

    .line 1465
    .line 1466
    goto :goto_19

    .line 1467
    :goto_1a
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1468
    .line 1469
    .line 1470
    move-result-wide v2

    .line 1471
    long-to-int v2, v2

    .line 1472
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v61

    .line 1476
    move v3, v0

    .line 1477
    move/from16 v18, v1

    .line 1478
    .line 1479
    move/from16 v2, v17

    .line 1480
    .line 1481
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1482
    .line 1483
    .line 1484
    move-result-wide v0

    .line 1485
    long-to-int v0, v0

    .line 1486
    move/from16 v17, v2

    .line 1487
    .line 1488
    move/from16 v1, v20

    .line 1489
    .line 1490
    move/from16 v20, v3

    .line 1491
    .line 1492
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1493
    .line 1494
    .line 1495
    move-result-wide v2

    .line 1496
    long-to-int v2, v2

    .line 1497
    move/from16 v3, v21

    .line 1498
    .line 1499
    invoke-interface {v4, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1500
    .line 1501
    .line 1502
    move-result-wide v64

    .line 1503
    move/from16 v62, v0

    .line 1504
    .line 1505
    move/from16 v21, v1

    .line 1506
    .line 1507
    move/from16 v63, v2

    .line 1508
    .line 1509
    move/from16 v0, v22

    .line 1510
    .line 1511
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1512
    .line 1513
    .line 1514
    move-result-wide v1

    .line 1515
    long-to-int v1, v1

    .line 1516
    move/from16 v22, v0

    .line 1517
    .line 1518
    move/from16 v66, v1

    .line 1519
    .line 1520
    move/from16 v2, v23

    .line 1521
    .line 1522
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1523
    .line 1524
    .line 1525
    move-result-wide v0

    .line 1526
    long-to-int v0, v0

    .line 1527
    move/from16 v1, v24

    .line 1528
    .line 1529
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1530
    .line 1531
    .line 1532
    move-result v23

    .line 1533
    if-eqz v23, :cond_e

    .line 1534
    .line 1535
    move-object/from16 v68, v19

    .line 1536
    .line 1537
    :goto_1b
    move/from16 v67, v0

    .line 1538
    .line 1539
    move/from16 v0, v25

    .line 1540
    .line 1541
    goto :goto_1c

    .line 1542
    :cond_e
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v23

    .line 1546
    move-object/from16 v68, v23

    .line 1547
    .line 1548
    goto :goto_1b

    .line 1549
    :goto_1c
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1550
    .line 1551
    .line 1552
    move-result v23

    .line 1553
    if-eqz v23, :cond_f

    .line 1554
    .line 1555
    move/from16 v24, v1

    .line 1556
    .line 1557
    move/from16 v23, v2

    .line 1558
    .line 1559
    move-object/from16 v1, v19

    .line 1560
    .line 1561
    goto :goto_1d

    .line 1562
    :cond_f
    move/from16 v24, v1

    .line 1563
    .line 1564
    move/from16 v23, v2

    .line 1565
    .line 1566
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1567
    .line 1568
    .line 1569
    move-result-wide v1

    .line 1570
    long-to-int v1, v1

    .line 1571
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v1

    .line 1575
    :goto_1d
    if-eqz v1, :cond_11

    .line 1576
    .line 1577
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1578
    .line 1579
    .line 1580
    move-result v1

    .line 1581
    if-eqz v1, :cond_10

    .line 1582
    .line 1583
    const/4 v1, 0x1

    .line 1584
    goto :goto_1e

    .line 1585
    :cond_10
    const/4 v1, 0x0

    .line 1586
    :goto_1e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v1

    .line 1590
    move-object/from16 v69, v1

    .line 1591
    .line 1592
    :goto_1f
    move/from16 v25, v3

    .line 1593
    .line 1594
    move/from16 v1, v26

    .line 1595
    .line 1596
    goto :goto_20

    .line 1597
    :catchall_5
    move-exception v0

    .line 1598
    goto/16 :goto_29

    .line 1599
    .line 1600
    :cond_11
    move-object/from16 v69, v19

    .line 1601
    .line 1602
    goto :goto_1f

    .line 1603
    :goto_20
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1604
    .line 1605
    .line 1606
    move-result-wide v2

    .line 1607
    long-to-int v2, v2

    .line 1608
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v75

    .line 1612
    move/from16 v2, v27

    .line 1613
    .line 1614
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1615
    .line 1616
    .line 1617
    move-result-object v3

    .line 1618
    invoke-static {v3}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v74

    .line 1622
    move/from16 v26, v0

    .line 1623
    .line 1624
    move/from16 v27, v1

    .line 1625
    .line 1626
    move/from16 v3, v28

    .line 1627
    .line 1628
    invoke-interface {v4, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1629
    .line 1630
    .line 1631
    move-result-wide v0

    .line 1632
    long-to-int v0, v0

    .line 1633
    if-eqz v0, :cond_12

    .line 1634
    .line 1635
    const/16 v76, 0x1

    .line 1636
    .line 1637
    :goto_21
    move/from16 v28, v2

    .line 1638
    .line 1639
    move/from16 v0, v29

    .line 1640
    .line 1641
    goto :goto_22

    .line 1642
    :cond_12
    const/16 v76, 0x0

    .line 1643
    .line 1644
    goto :goto_21

    .line 1645
    :goto_22
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1646
    .line 1647
    .line 1648
    move-result-wide v1

    .line 1649
    long-to-int v1, v1

    .line 1650
    if-eqz v1, :cond_13

    .line 1651
    .line 1652
    const/16 v77, 0x1

    .line 1653
    .line 1654
    :goto_23
    move/from16 v29, v3

    .line 1655
    .line 1656
    move/from16 v1, v30

    .line 1657
    .line 1658
    goto :goto_24

    .line 1659
    :cond_13
    const/16 v77, 0x0

    .line 1660
    .line 1661
    goto :goto_23

    .line 1662
    :goto_24
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1663
    .line 1664
    .line 1665
    move-result-wide v2

    .line 1666
    long-to-int v2, v2

    .line 1667
    if-eqz v2, :cond_14

    .line 1668
    .line 1669
    const/16 v78, 0x1

    .line 1670
    .line 1671
    :goto_25
    move v3, v0

    .line 1672
    move/from16 v30, v1

    .line 1673
    .line 1674
    move/from16 v2, v31

    .line 1675
    .line 1676
    goto :goto_26

    .line 1677
    :cond_14
    const/16 v78, 0x0

    .line 1678
    .line 1679
    goto :goto_25

    .line 1680
    :goto_26
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1681
    .line 1682
    .line 1683
    move-result-wide v0

    .line 1684
    long-to-int v0, v0

    .line 1685
    if-eqz v0, :cond_15

    .line 1686
    .line 1687
    const/16 v79, 0x1

    .line 1688
    .line 1689
    :goto_27
    move/from16 v0, v32

    .line 1690
    .line 1691
    goto :goto_28

    .line 1692
    :cond_15
    const/16 v79, 0x0

    .line 1693
    .line 1694
    goto :goto_27

    .line 1695
    :goto_28
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1696
    .line 1697
    .line 1698
    move-result-wide v80

    .line 1699
    move/from16 v1, v33

    .line 1700
    .line 1701
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1702
    .line 1703
    .line 1704
    move-result-wide v82

    .line 1705
    move/from16 v32, v0

    .line 1706
    .line 1707
    move/from16 v0, v34

    .line 1708
    .line 1709
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1710
    .line 1711
    .line 1712
    move-result-object v31

    .line 1713
    invoke-static/range {v31 .. v31}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v84

    .line 1717
    new-instance v49, Landroidx/work/Constraints;

    .line 1718
    .line 1719
    move-object/from16 v73, v49

    .line 1720
    .line 1721
    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1722
    .line 1723
    .line 1724
    move-object/from16 v49, v73

    .line 1725
    .line 1726
    new-instance v36, Landroidx/work/impl/model/WorkSpec;

    .line 1727
    .line 1728
    move/from16 v50, v6

    .line 1729
    .line 1730
    invoke-direct/range {v36 .. v69}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 1731
    .line 1732
    .line 1733
    move-object/from16 v6, v36

    .line 1734
    .line 1735
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1736
    .line 1737
    .line 1738
    move v6, v3

    .line 1739
    move/from16 v3, p1

    .line 1740
    .line 1741
    move/from16 p1, v20

    .line 1742
    .line 1743
    move/from16 v20, v21

    .line 1744
    .line 1745
    move/from16 v21, v25

    .line 1746
    .line 1747
    move/from16 v25, v26

    .line 1748
    .line 1749
    move/from16 v26, v27

    .line 1750
    .line 1751
    move/from16 v27, v28

    .line 1752
    .line 1753
    move/from16 v28, v29

    .line 1754
    .line 1755
    move/from16 v29, v6

    .line 1756
    .line 1757
    move/from16 v34, v0

    .line 1758
    .line 1759
    move/from16 v33, v1

    .line 1760
    .line 1761
    move/from16 v31, v2

    .line 1762
    .line 1763
    move/from16 v6, v70

    .line 1764
    .line 1765
    move/from16 v1, v71

    .line 1766
    .line 1767
    move/from16 v0, v72

    .line 1768
    .line 1769
    move/from16 v2, p0

    .line 1770
    .line 1771
    move/from16 p0, v7

    .line 1772
    .line 1773
    move/from16 v7, v35

    .line 1774
    .line 1775
    goto/16 :goto_18

    .line 1776
    .line 1777
    :cond_16
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 1778
    .line 1779
    .line 1780
    return-object v15

    .line 1781
    :goto_29
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 1782
    .line 1783
    .line 1784
    throw v0

    .line 1785
    :pswitch_16
    move-object v4, v5

    .line 1786
    move-object v5, v15

    .line 1787
    move-object/from16 v15, p1

    .line 1788
    .line 1789
    check-cast v15, Landroidx/sqlite/SQLiteConnection;

    .line 1790
    .line 1791
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1792
    .line 1793
    .line 1794
    move-object/from16 v22, v4

    .line 1795
    .line 1796
    const-string v4, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 1797
    .line 1798
    invoke-interface {v15, v4}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v4

    .line 1802
    :try_start_6
    invoke-static {v4, v3}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1803
    .line 1804
    .line 1805
    move-result v3

    .line 1806
    invoke-static {v4, v2}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1807
    .line 1808
    .line 1809
    move-result v2

    .line 1810
    invoke-static {v4, v1}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1811
    .line 1812
    .line 1813
    move-result v1

    .line 1814
    invoke-static {v4, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1815
    .line 1816
    .line 1817
    move-result v0

    .line 1818
    invoke-static {v4, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1819
    .line 1820
    .line 1821
    move-result v5

    .line 1822
    invoke-static {v4, v14}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1823
    .line 1824
    .line 1825
    move-result v14

    .line 1826
    invoke-static {v4, v13}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1827
    .line 1828
    .line 1829
    move-result v13

    .line 1830
    invoke-static {v4, v12}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1831
    .line 1832
    .line 1833
    move-result v12

    .line 1834
    invoke-static {v4, v11}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1835
    .line 1836
    .line 1837
    move-result v11

    .line 1838
    invoke-static {v4, v10}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1839
    .line 1840
    .line 1841
    move-result v10

    .line 1842
    invoke-static {v4, v9}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1843
    .line 1844
    .line 1845
    move-result v9

    .line 1846
    invoke-static {v4, v8}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1847
    .line 1848
    .line 1849
    move-result v8

    .line 1850
    invoke-static {v4, v7}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1851
    .line 1852
    .line 1853
    move-result v7

    .line 1854
    invoke-static {v4, v6}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1855
    .line 1856
    .line 1857
    move-result v6

    .line 1858
    move-object/from16 v15, v22

    .line 1859
    .line 1860
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1861
    .line 1862
    .line 1863
    move-result v15

    .line 1864
    move/from16 p0, v15

    .line 1865
    .line 1866
    move-object/from16 v15, v21

    .line 1867
    .line 1868
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1869
    .line 1870
    .line 1871
    move-result v15

    .line 1872
    move/from16 p1, v15

    .line 1873
    .line 1874
    move-object/from16 v15, v18

    .line 1875
    .line 1876
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1877
    .line 1878
    .line 1879
    move-result v15

    .line 1880
    move/from16 v18, v15

    .line 1881
    .line 1882
    move-object/from16 v15, v17

    .line 1883
    .line 1884
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1885
    .line 1886
    .line 1887
    move-result v15

    .line 1888
    move/from16 v17, v15

    .line 1889
    .line 1890
    const-string v15, "generation"

    .line 1891
    .line 1892
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1893
    .line 1894
    .line 1895
    move-result v15

    .line 1896
    move/from16 v20, v15

    .line 1897
    .line 1898
    const-string v15, "next_schedule_time_override"

    .line 1899
    .line 1900
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1901
    .line 1902
    .line 1903
    move-result v15

    .line 1904
    move/from16 v21, v15

    .line 1905
    .line 1906
    const-string v15, "next_schedule_time_override_generation"

    .line 1907
    .line 1908
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1909
    .line 1910
    .line 1911
    move-result v15

    .line 1912
    move/from16 v22, v15

    .line 1913
    .line 1914
    const-string v15, "stop_reason"

    .line 1915
    .line 1916
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1917
    .line 1918
    .line 1919
    move-result v15

    .line 1920
    move/from16 v23, v15

    .line 1921
    .line 1922
    const-string v15, "trace_tag"

    .line 1923
    .line 1924
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1925
    .line 1926
    .line 1927
    move-result v15

    .line 1928
    move/from16 v24, v15

    .line 1929
    .line 1930
    const-string v15, "backoff_on_system_interruptions"

    .line 1931
    .line 1932
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1933
    .line 1934
    .line 1935
    move-result v15

    .line 1936
    move/from16 v25, v15

    .line 1937
    .line 1938
    const-string v15, "required_network_type"

    .line 1939
    .line 1940
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1941
    .line 1942
    .line 1943
    move-result v15

    .line 1944
    move/from16 v26, v15

    .line 1945
    .line 1946
    const-string v15, "required_network_request"

    .line 1947
    .line 1948
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1949
    .line 1950
    .line 1951
    move-result v15

    .line 1952
    move/from16 v27, v15

    .line 1953
    .line 1954
    const-string v15, "requires_charging"

    .line 1955
    .line 1956
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1957
    .line 1958
    .line 1959
    move-result v15

    .line 1960
    move/from16 v28, v15

    .line 1961
    .line 1962
    const-string v15, "requires_device_idle"

    .line 1963
    .line 1964
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1965
    .line 1966
    .line 1967
    move-result v15

    .line 1968
    move/from16 v29, v15

    .line 1969
    .line 1970
    const-string v15, "requires_battery_not_low"

    .line 1971
    .line 1972
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1973
    .line 1974
    .line 1975
    move-result v15

    .line 1976
    move/from16 v30, v15

    .line 1977
    .line 1978
    const-string v15, "requires_storage_not_low"

    .line 1979
    .line 1980
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1981
    .line 1982
    .line 1983
    move-result v15

    .line 1984
    move/from16 v31, v15

    .line 1985
    .line 1986
    const-string v15, "trigger_content_update_delay"

    .line 1987
    .line 1988
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1989
    .line 1990
    .line 1991
    move-result v15

    .line 1992
    move/from16 v32, v15

    .line 1993
    .line 1994
    const-string v15, "trigger_max_content_delay"

    .line 1995
    .line 1996
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1997
    .line 1998
    .line 1999
    move-result v15

    .line 2000
    move/from16 v33, v15

    .line 2001
    .line 2002
    const-string v15, "content_uri_triggers"

    .line 2003
    .line 2004
    invoke-static {v4, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 2005
    .line 2006
    .line 2007
    move-result v15

    .line 2008
    move/from16 v34, v15

    .line 2009
    .line 2010
    new-instance v15, Ljava/util/ArrayList;

    .line 2011
    .line 2012
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2013
    .line 2014
    .line 2015
    :goto_2a
    invoke-interface {v4}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2016
    .line 2017
    .line 2018
    move-result v35

    .line 2019
    if-eqz v35, :cond_20

    .line 2020
    .line 2021
    invoke-interface {v4, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v37

    .line 2025
    move/from16 v70, v6

    .line 2026
    .line 2027
    move/from16 v35, v7

    .line 2028
    .line 2029
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2030
    .line 2031
    .line 2032
    move-result-wide v6

    .line 2033
    long-to-int v6, v6

    .line 2034
    invoke-static {v6}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v38

    .line 2038
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v39

    .line 2042
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v40

    .line 2046
    invoke-interface {v4, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 2047
    .line 2048
    .line 2049
    move-result-object v6

    .line 2050
    sget-object v7, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 2051
    .line 2052
    invoke-static {v6}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v41

    .line 2056
    invoke-interface {v4, v14}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 2057
    .line 2058
    .line 2059
    move-result-object v6

    .line 2060
    invoke-static {v6}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v42

    .line 2064
    invoke-interface {v4, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2065
    .line 2066
    .line 2067
    move-result-wide v43

    .line 2068
    invoke-interface {v4, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2069
    .line 2070
    .line 2071
    move-result-wide v45

    .line 2072
    invoke-interface {v4, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2073
    .line 2074
    .line 2075
    move-result-wide v47

    .line 2076
    invoke-interface {v4, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2077
    .line 2078
    .line 2079
    move-result-wide v6

    .line 2080
    long-to-int v6, v6

    .line 2081
    move/from16 v71, v0

    .line 2082
    .line 2083
    move v7, v1

    .line 2084
    invoke-interface {v4, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2085
    .line 2086
    .line 2087
    move-result-wide v0

    .line 2088
    long-to-int v0, v0

    .line 2089
    invoke-static {v0}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v51

    .line 2093
    invoke-interface {v4, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2094
    .line 2095
    .line 2096
    move-result-wide v52

    .line 2097
    move/from16 v0, v35

    .line 2098
    .line 2099
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2100
    .line 2101
    .line 2102
    move-result-wide v54

    .line 2103
    move/from16 v1, v70

    .line 2104
    .line 2105
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2106
    .line 2107
    .line 2108
    move-result-wide v56

    .line 2109
    move/from16 v35, v0

    .line 2110
    .line 2111
    move/from16 v0, p0

    .line 2112
    .line 2113
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2114
    .line 2115
    .line 2116
    move-result-wide v58

    .line 2117
    move/from16 p0, v0

    .line 2118
    .line 2119
    move/from16 v70, v1

    .line 2120
    .line 2121
    move/from16 v0, p1

    .line 2122
    .line 2123
    move/from16 p1, v2

    .line 2124
    .line 2125
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2126
    .line 2127
    .line 2128
    move-result-wide v1

    .line 2129
    long-to-int v1, v1

    .line 2130
    if-eqz v1, :cond_17

    .line 2131
    .line 2132
    const/16 v60, 0x1

    .line 2133
    .line 2134
    :goto_2b
    move/from16 v1, v18

    .line 2135
    .line 2136
    move/from16 v18, v3

    .line 2137
    .line 2138
    goto :goto_2c

    .line 2139
    :cond_17
    const/16 v60, 0x0

    .line 2140
    .line 2141
    goto :goto_2b

    .line 2142
    :goto_2c
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2143
    .line 2144
    .line 2145
    move-result-wide v2

    .line 2146
    long-to-int v2, v2

    .line 2147
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v61

    .line 2151
    move v3, v0

    .line 2152
    move/from16 v2, v17

    .line 2153
    .line 2154
    move/from16 v17, v1

    .line 2155
    .line 2156
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2157
    .line 2158
    .line 2159
    move-result-wide v0

    .line 2160
    long-to-int v0, v0

    .line 2161
    move/from16 v72, v3

    .line 2162
    .line 2163
    move/from16 v1, v20

    .line 2164
    .line 2165
    move/from16 v20, v2

    .line 2166
    .line 2167
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2168
    .line 2169
    .line 2170
    move-result-wide v2

    .line 2171
    long-to-int v2, v2

    .line 2172
    move/from16 v3, v21

    .line 2173
    .line 2174
    invoke-interface {v4, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2175
    .line 2176
    .line 2177
    move-result-wide v64

    .line 2178
    move/from16 v62, v0

    .line 2179
    .line 2180
    move/from16 v21, v1

    .line 2181
    .line 2182
    move/from16 v63, v2

    .line 2183
    .line 2184
    move/from16 v0, v22

    .line 2185
    .line 2186
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2187
    .line 2188
    .line 2189
    move-result-wide v1

    .line 2190
    long-to-int v1, v1

    .line 2191
    move/from16 v22, v0

    .line 2192
    .line 2193
    move/from16 v66, v1

    .line 2194
    .line 2195
    move/from16 v2, v23

    .line 2196
    .line 2197
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2198
    .line 2199
    .line 2200
    move-result-wide v0

    .line 2201
    long-to-int v0, v0

    .line 2202
    move/from16 v1, v24

    .line 2203
    .line 2204
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 2205
    .line 2206
    .line 2207
    move-result v23

    .line 2208
    if-eqz v23, :cond_18

    .line 2209
    .line 2210
    move-object/from16 v68, v19

    .line 2211
    .line 2212
    :goto_2d
    move/from16 v67, v0

    .line 2213
    .line 2214
    move/from16 v0, v25

    .line 2215
    .line 2216
    goto :goto_2e

    .line 2217
    :cond_18
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 2218
    .line 2219
    .line 2220
    move-result-object v23

    .line 2221
    move-object/from16 v68, v23

    .line 2222
    .line 2223
    goto :goto_2d

    .line 2224
    :goto_2e
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 2225
    .line 2226
    .line 2227
    move-result v23

    .line 2228
    if-eqz v23, :cond_19

    .line 2229
    .line 2230
    move/from16 v24, v1

    .line 2231
    .line 2232
    move/from16 v23, v2

    .line 2233
    .line 2234
    move-object/from16 v1, v19

    .line 2235
    .line 2236
    goto :goto_2f

    .line 2237
    :cond_19
    move/from16 v24, v1

    .line 2238
    .line 2239
    move/from16 v23, v2

    .line 2240
    .line 2241
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2242
    .line 2243
    .line 2244
    move-result-wide v1

    .line 2245
    long-to-int v1, v1

    .line 2246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v1

    .line 2250
    :goto_2f
    if-eqz v1, :cond_1b

    .line 2251
    .line 2252
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2253
    .line 2254
    .line 2255
    move-result v1

    .line 2256
    if-eqz v1, :cond_1a

    .line 2257
    .line 2258
    const/4 v1, 0x1

    .line 2259
    goto :goto_30

    .line 2260
    :cond_1a
    const/4 v1, 0x0

    .line 2261
    :goto_30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v1

    .line 2265
    move-object/from16 v69, v1

    .line 2266
    .line 2267
    :goto_31
    move/from16 v25, v3

    .line 2268
    .line 2269
    move/from16 v1, v26

    .line 2270
    .line 2271
    goto :goto_32

    .line 2272
    :catchall_6
    move-exception v0

    .line 2273
    goto/16 :goto_3b

    .line 2274
    .line 2275
    :cond_1b
    move-object/from16 v69, v19

    .line 2276
    .line 2277
    goto :goto_31

    .line 2278
    :goto_32
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2279
    .line 2280
    .line 2281
    move-result-wide v2

    .line 2282
    long-to-int v2, v2

    .line 2283
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 2284
    .line 2285
    .line 2286
    move-result-object v75

    .line 2287
    move/from16 v2, v27

    .line 2288
    .line 2289
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 2290
    .line 2291
    .line 2292
    move-result-object v3

    .line 2293
    invoke-static {v3}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 2294
    .line 2295
    .line 2296
    move-result-object v74

    .line 2297
    move/from16 v26, v0

    .line 2298
    .line 2299
    move/from16 v27, v1

    .line 2300
    .line 2301
    move/from16 v3, v28

    .line 2302
    .line 2303
    invoke-interface {v4, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2304
    .line 2305
    .line 2306
    move-result-wide v0

    .line 2307
    long-to-int v0, v0

    .line 2308
    if-eqz v0, :cond_1c

    .line 2309
    .line 2310
    const/16 v76, 0x1

    .line 2311
    .line 2312
    :goto_33
    move/from16 v28, v2

    .line 2313
    .line 2314
    move/from16 v0, v29

    .line 2315
    .line 2316
    goto :goto_34

    .line 2317
    :cond_1c
    const/16 v76, 0x0

    .line 2318
    .line 2319
    goto :goto_33

    .line 2320
    :goto_34
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2321
    .line 2322
    .line 2323
    move-result-wide v1

    .line 2324
    long-to-int v1, v1

    .line 2325
    if-eqz v1, :cond_1d

    .line 2326
    .line 2327
    const/16 v77, 0x1

    .line 2328
    .line 2329
    :goto_35
    move/from16 v29, v3

    .line 2330
    .line 2331
    move/from16 v1, v30

    .line 2332
    .line 2333
    goto :goto_36

    .line 2334
    :cond_1d
    const/16 v77, 0x0

    .line 2335
    .line 2336
    goto :goto_35

    .line 2337
    :goto_36
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2338
    .line 2339
    .line 2340
    move-result-wide v2

    .line 2341
    long-to-int v2, v2

    .line 2342
    if-eqz v2, :cond_1e

    .line 2343
    .line 2344
    const/16 v78, 0x1

    .line 2345
    .line 2346
    :goto_37
    move v3, v0

    .line 2347
    move/from16 v30, v1

    .line 2348
    .line 2349
    move/from16 v2, v31

    .line 2350
    .line 2351
    goto :goto_38

    .line 2352
    :cond_1e
    const/16 v78, 0x0

    .line 2353
    .line 2354
    goto :goto_37

    .line 2355
    :goto_38
    invoke-interface {v4, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2356
    .line 2357
    .line 2358
    move-result-wide v0

    .line 2359
    long-to-int v0, v0

    .line 2360
    if-eqz v0, :cond_1f

    .line 2361
    .line 2362
    const/16 v79, 0x1

    .line 2363
    .line 2364
    :goto_39
    move/from16 v0, v32

    .line 2365
    .line 2366
    goto :goto_3a

    .line 2367
    :cond_1f
    const/16 v79, 0x0

    .line 2368
    .line 2369
    goto :goto_39

    .line 2370
    :goto_3a
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2371
    .line 2372
    .line 2373
    move-result-wide v80

    .line 2374
    move/from16 v1, v33

    .line 2375
    .line 2376
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2377
    .line 2378
    .line 2379
    move-result-wide v82

    .line 2380
    move/from16 v32, v0

    .line 2381
    .line 2382
    move/from16 v0, v34

    .line 2383
    .line 2384
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 2385
    .line 2386
    .line 2387
    move-result-object v31

    .line 2388
    invoke-static/range {v31 .. v31}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v84

    .line 2392
    new-instance v49, Landroidx/work/Constraints;

    .line 2393
    .line 2394
    move-object/from16 v73, v49

    .line 2395
    .line 2396
    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 2397
    .line 2398
    .line 2399
    move-object/from16 v49, v73

    .line 2400
    .line 2401
    new-instance v36, Landroidx/work/impl/model/WorkSpec;

    .line 2402
    .line 2403
    move/from16 v50, v6

    .line 2404
    .line 2405
    invoke-direct/range {v36 .. v69}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 2406
    .line 2407
    .line 2408
    move-object/from16 v6, v36

    .line 2409
    .line 2410
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 2411
    .line 2412
    .line 2413
    move/from16 v6, v29

    .line 2414
    .line 2415
    move/from16 v29, v3

    .line 2416
    .line 2417
    move/from16 v3, v18

    .line 2418
    .line 2419
    move/from16 v18, v17

    .line 2420
    .line 2421
    move/from16 v17, v20

    .line 2422
    .line 2423
    move/from16 v20, v21

    .line 2424
    .line 2425
    move/from16 v21, v25

    .line 2426
    .line 2427
    move/from16 v25, v26

    .line 2428
    .line 2429
    move/from16 v26, v27

    .line 2430
    .line 2431
    move/from16 v27, v28

    .line 2432
    .line 2433
    move/from16 v28, v6

    .line 2434
    .line 2435
    move/from16 v34, v0

    .line 2436
    .line 2437
    move/from16 v33, v1

    .line 2438
    .line 2439
    move/from16 v31, v2

    .line 2440
    .line 2441
    move v1, v7

    .line 2442
    move/from16 v7, v35

    .line 2443
    .line 2444
    move/from16 v6, v70

    .line 2445
    .line 2446
    move/from16 v0, v71

    .line 2447
    .line 2448
    move/from16 v2, p1

    .line 2449
    .line 2450
    move/from16 p1, v72

    .line 2451
    .line 2452
    goto/16 :goto_2a

    .line 2453
    .line 2454
    :cond_20
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 2455
    .line 2456
    .line 2457
    return-object v15

    .line 2458
    :goto_3b
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 2459
    .line 2460
    .line 2461
    throw v0

    .line 2462
    :pswitch_17
    move-object/from16 v0, p1

    .line 2463
    .line 2464
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 2465
    .line 2466
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2467
    .line 2468
    .line 2469
    const-string v1, "DELETE FROM WorkProgress"

    .line 2470
    .line 2471
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2472
    .line 2473
    .line 2474
    move-result-object v1

    .line 2475
    :try_start_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 2476
    .line 2477
    .line 2478
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2479
    .line 2480
    .line 2481
    return-object v20

    .line 2482
    :catchall_7
    move-exception v0

    .line 2483
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2484
    .line 2485
    .line 2486
    throw v0

    .line 2487
    :pswitch_18
    move-object/from16 v0, p1

    .line 2488
    .line 2489
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 2490
    .line 2491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2492
    .line 2493
    .line 2494
    const-string v1, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    .line 2495
    .line 2496
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2497
    .line 2498
    .line 2499
    move-result-object v1

    .line 2500
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    .line 2501
    .line 2502
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2503
    .line 2504
    .line 2505
    :goto_3c
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2506
    .line 2507
    .line 2508
    move-result v2

    .line 2509
    if-eqz v2, :cond_21

    .line 2510
    .line 2511
    const/4 v2, 0x0

    .line 2512
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 2513
    .line 2514
    .line 2515
    move-result-object v3

    .line 2516
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 2517
    .line 2518
    .line 2519
    goto :goto_3c

    .line 2520
    :catchall_8
    move-exception v0

    .line 2521
    goto :goto_3d

    .line 2522
    :cond_21
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2523
    .line 2524
    .line 2525
    return-object v0

    .line 2526
    :goto_3d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2527
    .line 2528
    .line 2529
    throw v0

    .line 2530
    :pswitch_19
    move-object/from16 v0, p1

    .line 2531
    .line 2532
    check-cast v0, Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 2533
    .line 2534
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2535
    .line 2536
    .line 2537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2538
    .line 2539
    .line 2540
    move-result-object v0

    .line 2541
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 2542
    .line 2543
    .line 2544
    move-result-object v0

    .line 2545
    return-object v0

    .line 2546
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2547
    .line 2548
    check-cast v0, Landroidx/window/layout/WindowMetricsCalculator;

    .line 2549
    .line 2550
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2551
    .line 2552
    .line 2553
    return-object v0

    .line 2554
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2555
    .line 2556
    check-cast v0, Landroidx/sqlite/SQLiteStatement;

    .line 2557
    .line 2558
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2559
    .line 2560
    .line 2561
    new-instance v1, Lkotlin/collections/builders/SetBuilder;

    .line 2562
    .line 2563
    invoke-direct {v1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 2564
    .line 2565
    .line 2566
    :goto_3e
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2567
    .line 2568
    .line 2569
    move-result v2

    .line 2570
    if-eqz v2, :cond_22

    .line 2571
    .line 2572
    const/4 v2, 0x0

    .line 2573
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2574
    .line 2575
    .line 2576
    move-result-wide v3

    .line 2577
    long-to-int v3, v3

    .line 2578
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2579
    .line 2580
    .line 2581
    move-result-object v3

    .line 2582
    invoke-virtual {v1, v3}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 2583
    .line 2584
    .line 2585
    goto :goto_3e

    .line 2586
    :cond_22
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 2587
    .line 2588
    .line 2589
    move-result-object v0

    .line 2590
    return-object v0

    .line 2591
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2592
    .line 2593
    check-cast v0, Ljava/util/Map$Entry;

    .line 2594
    .line 2595
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2596
    .line 2597
    .line 2598
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2599
    .line 2600
    .line 2601
    move-result-object v1

    .line 2602
    check-cast v1, Ljava/lang/String;

    .line 2603
    .line 2604
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2605
    .line 2606
    .line 2607
    move-result-object v0

    .line 2608
    const-string v2, " : "

    .line 2609
    .line 2610
    invoke-static {v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    .line 2612
    .line 2613
    move-result-object v1

    .line 2614
    instance-of v2, v0, [Ljava/lang/Object;

    .line 2615
    .line 2616
    if-eqz v2, :cond_23

    .line 2617
    .line 2618
    check-cast v0, [Ljava/lang/Object;

    .line 2619
    .line 2620
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 2621
    .line 2622
    .line 2623
    move-result-object v0

    .line 2624
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2625
    .line 2626
    .line 2627
    :cond_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2628
    .line 2629
    .line 2630
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v0

    .line 2634
    return-object v0

    .line 2635
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
