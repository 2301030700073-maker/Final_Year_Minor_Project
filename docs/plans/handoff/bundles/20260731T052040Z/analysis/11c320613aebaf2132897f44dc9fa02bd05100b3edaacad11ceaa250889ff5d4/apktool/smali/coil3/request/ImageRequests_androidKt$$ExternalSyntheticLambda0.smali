.class public final synthetic Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
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
    .locals 82

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    iget v0, v0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;->f$0:I

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 14
    .line 15
    iget v1, v1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 16
    .line 17
    if-ne v1, v0, :cond_0

    .line 18
    .line 19
    move v3, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_0
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 30
    .line 31
    iget-object v1, v1, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :pswitch_1
    move-object/from16 v1, p1

    .line 43
    .line 44
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v5, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    .line 50
    .line 51
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    int-to-long v5, v0

    .line 56
    :try_start_0
    invoke-interface {v1, v4, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 57
    .line 58
    .line 59
    const-string v0, "id"

    .line 60
    .line 61
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const-string/jumbo v5, "state"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const-string/jumbo v6, "worker_class_name"

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v6}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const-string v7, "input_merger_class_name"

    .line 80
    .line 81
    invoke-static {v1, v7}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    const-string v8, "input"

    .line 86
    .line 87
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    const-string v9, "output"

    .line 92
    .line 93
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    const-string v10, "initial_delay"

    .line 98
    .line 99
    invoke-static {v1, v10}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    const-string v11, "interval_duration"

    .line 104
    .line 105
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    const-string v12, "flex_duration"

    .line 110
    .line 111
    invoke-static {v1, v12}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    const-string v13, "run_attempt_count"

    .line 116
    .line 117
    invoke-static {v1, v13}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    const-string v14, "backoff_policy"

    .line 122
    .line 123
    invoke-static {v1, v14}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    const-string v15, "backoff_delay_duration"

    .line 128
    .line 129
    invoke-static {v1, v15}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    const-string v2, "last_enqueue_time"

    .line 134
    .line 135
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    const-string v3, "minimum_retention_duration"

    .line 140
    .line 141
    invoke-static {v1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    const-string v4, "schedule_requested_at"

    .line 146
    .line 147
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    move/from16 p0, v4

    .line 152
    .line 153
    const-string v4, "run_in_foreground"

    .line 154
    .line 155
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    move/from16 p1, v4

    .line 160
    .line 161
    const-string v4, "out_of_quota_policy"

    .line 162
    .line 163
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    move/from16 v16, v4

    .line 168
    .line 169
    const-string v4, "period_count"

    .line 170
    .line 171
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    move/from16 v17, v4

    .line 176
    .line 177
    const-string v4, "generation"

    .line 178
    .line 179
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    move/from16 v18, v4

    .line 184
    .line 185
    const-string v4, "next_schedule_time_override"

    .line 186
    .line 187
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    move/from16 v19, v4

    .line 192
    .line 193
    const-string v4, "next_schedule_time_override_generation"

    .line 194
    .line 195
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    move/from16 v20, v4

    .line 200
    .line 201
    const-string/jumbo v4, "stop_reason"

    .line 202
    .line 203
    .line 204
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    move/from16 v21, v4

    .line 209
    .line 210
    const-string/jumbo v4, "trace_tag"

    .line 211
    .line 212
    .line 213
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    move/from16 v22, v4

    .line 218
    .line 219
    const-string v4, "backoff_on_system_interruptions"

    .line 220
    .line 221
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    move/from16 v23, v4

    .line 226
    .line 227
    const-string v4, "required_network_type"

    .line 228
    .line 229
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    move/from16 v24, v4

    .line 234
    .line 235
    const-string v4, "required_network_request"

    .line 236
    .line 237
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    move/from16 v25, v4

    .line 242
    .line 243
    const-string v4, "requires_charging"

    .line 244
    .line 245
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    move/from16 v26, v4

    .line 250
    .line 251
    const-string v4, "requires_device_idle"

    .line 252
    .line 253
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    move/from16 v27, v4

    .line 258
    .line 259
    const-string v4, "requires_battery_not_low"

    .line 260
    .line 261
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    move/from16 v28, v4

    .line 266
    .line 267
    const-string v4, "requires_storage_not_low"

    .line 268
    .line 269
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    move/from16 v29, v4

    .line 274
    .line 275
    const-string/jumbo v4, "trigger_content_update_delay"

    .line 276
    .line 277
    .line 278
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    move/from16 v30, v4

    .line 283
    .line 284
    const-string/jumbo v4, "trigger_max_content_delay"

    .line 285
    .line 286
    .line 287
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    move/from16 v31, v4

    .line 292
    .line 293
    const-string v4, "content_uri_triggers"

    .line 294
    .line 295
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    move/from16 v32, v4

    .line 300
    .line 301
    new-instance v4, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .line 305
    .line 306
    :goto_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 307
    .line 308
    .line 309
    move-result v33

    .line 310
    if-eqz v33, :cond_a

    .line 311
    .line 312
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v35

    .line 316
    move/from16 v33, v3

    .line 317
    .line 318
    move-object/from16 v68, v4

    .line 319
    .line 320
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v3

    .line 324
    long-to-int v3, v3

    .line 325
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 326
    .line 327
    .line 328
    move-result-object v36

    .line 329
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v37

    .line 333
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v38

    .line 337
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 342
    .line 343
    invoke-static {v3}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 344
    .line 345
    .line 346
    move-result-object v39

    .line 347
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-static {v3}, Lokhttp3/Cookie$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 352
    .line 353
    .line 354
    move-result-object v40

    .line 355
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 356
    .line 357
    .line 358
    move-result-wide v41

    .line 359
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 360
    .line 361
    .line 362
    move-result-wide v43

    .line 363
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 364
    .line 365
    .line 366
    move-result-wide v45

    .line 367
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 368
    .line 369
    .line 370
    move-result-wide v3

    .line 371
    long-to-int v3, v3

    .line 372
    move/from16 v48, v3

    .line 373
    .line 374
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 375
    .line 376
    .line 377
    move-result-wide v3

    .line 378
    long-to-int v3, v3

    .line 379
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 380
    .line 381
    .line 382
    move-result-object v49

    .line 383
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 384
    .line 385
    .line 386
    move-result-wide v50

    .line 387
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 388
    .line 389
    .line 390
    move-result-wide v52

    .line 391
    move/from16 v3, v33

    .line 392
    .line 393
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 394
    .line 395
    .line 396
    move-result-wide v54

    .line 397
    move/from16 v4, p0

    .line 398
    .line 399
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 400
    .line 401
    .line 402
    move-result-wide v56

    .line 403
    move/from16 p0, v0

    .line 404
    .line 405
    move/from16 v33, v3

    .line 406
    .line 407
    move/from16 v0, p1

    .line 408
    .line 409
    move/from16 p1, v2

    .line 410
    .line 411
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 412
    .line 413
    .line 414
    move-result-wide v2

    .line 415
    long-to-int v2, v2

    .line 416
    if-eqz v2, :cond_1

    .line 417
    .line 418
    const/16 v58, 0x1

    .line 419
    .line 420
    :goto_2
    move/from16 v2, v16

    .line 421
    .line 422
    move/from16 v16, v4

    .line 423
    .line 424
    goto :goto_3

    .line 425
    :cond_1
    const/16 v58, 0x0

    .line 426
    .line 427
    goto :goto_2

    .line 428
    :goto_3
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 429
    .line 430
    .line 431
    move-result-wide v3

    .line 432
    long-to-int v3, v3

    .line 433
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 434
    .line 435
    .line 436
    move-result-object v59

    .line 437
    move/from16 v3, v17

    .line 438
    .line 439
    move/from16 v17, v5

    .line 440
    .line 441
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 442
    .line 443
    .line 444
    move-result-wide v4

    .line 445
    long-to-int v4, v4

    .line 446
    move/from16 v69, v3

    .line 447
    .line 448
    move/from16 v5, v18

    .line 449
    .line 450
    move/from16 v18, v2

    .line 451
    .line 452
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 453
    .line 454
    .line 455
    move-result-wide v2

    .line 456
    long-to-int v2, v2

    .line 457
    move/from16 v3, v19

    .line 458
    .line 459
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 460
    .line 461
    .line 462
    move-result-wide v62

    .line 463
    move/from16 v19, v0

    .line 464
    .line 465
    move/from16 v61, v2

    .line 466
    .line 467
    move/from16 v0, v20

    .line 468
    .line 469
    move/from16 v20, v3

    .line 470
    .line 471
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 472
    .line 473
    .line 474
    move-result-wide v2

    .line 475
    long-to-int v2, v2

    .line 476
    move/from16 v60, v4

    .line 477
    .line 478
    move/from16 v3, v21

    .line 479
    .line 480
    move/from16 v21, v5

    .line 481
    .line 482
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 483
    .line 484
    .line 485
    move-result-wide v4

    .line 486
    long-to-int v4, v4

    .line 487
    move/from16 v5, v22

    .line 488
    .line 489
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 490
    .line 491
    .line 492
    move-result v22

    .line 493
    if-eqz v22, :cond_2

    .line 494
    .line 495
    const/16 v66, 0x0

    .line 496
    .line 497
    :goto_4
    move/from16 v22, v0

    .line 498
    .line 499
    move/from16 v0, v23

    .line 500
    .line 501
    goto :goto_5

    .line 502
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v22

    .line 506
    move-object/from16 v66, v22

    .line 507
    .line 508
    goto :goto_4

    .line 509
    :goto_5
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 510
    .line 511
    .line 512
    move-result v23

    .line 513
    if-eqz v23, :cond_3

    .line 514
    .line 515
    move/from16 v64, v2

    .line 516
    .line 517
    move/from16 v23, v3

    .line 518
    .line 519
    const/4 v2, 0x0

    .line 520
    goto :goto_6

    .line 521
    :cond_3
    move/from16 v64, v2

    .line 522
    .line 523
    move/from16 v23, v3

    .line 524
    .line 525
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 526
    .line 527
    .line 528
    move-result-wide v2

    .line 529
    long-to-int v2, v2

    .line 530
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    :goto_6
    if-eqz v2, :cond_5

    .line 535
    .line 536
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    if-eqz v2, :cond_4

    .line 541
    .line 542
    const/4 v2, 0x1

    .line 543
    goto :goto_7

    .line 544
    :cond_4
    const/4 v2, 0x0

    .line 545
    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    move-object/from16 v67, v2

    .line 550
    .line 551
    :goto_8
    move/from16 v65, v4

    .line 552
    .line 553
    move/from16 v2, v24

    .line 554
    .line 555
    goto :goto_9

    .line 556
    :catchall_0
    move-exception v0

    .line 557
    move-object/from16 v30, v1

    .line 558
    .line 559
    goto/16 :goto_12

    .line 560
    .line 561
    :cond_5
    const/16 v67, 0x0

    .line 562
    .line 563
    goto :goto_8

    .line 564
    :goto_9
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 565
    .line 566
    .line 567
    move-result-wide v3

    .line 568
    long-to-int v3, v3

    .line 569
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 570
    .line 571
    .line 572
    move-result-object v72

    .line 573
    move/from16 v3, v25

    .line 574
    .line 575
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    invoke-static {v4}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 580
    .line 581
    .line 582
    move-result-object v71

    .line 583
    move/from16 v24, v2

    .line 584
    .line 585
    move/from16 v25, v3

    .line 586
    .line 587
    move/from16 v4, v26

    .line 588
    .line 589
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 590
    .line 591
    .line 592
    move-result-wide v2

    .line 593
    long-to-int v2, v2

    .line 594
    if-eqz v2, :cond_6

    .line 595
    .line 596
    const/16 v73, 0x1

    .line 597
    .line 598
    :goto_a
    move/from16 v26, v4

    .line 599
    .line 600
    move/from16 v2, v27

    .line 601
    .line 602
    goto :goto_b

    .line 603
    :cond_6
    const/16 v73, 0x0

    .line 604
    .line 605
    goto :goto_a

    .line 606
    :goto_b
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 607
    .line 608
    .line 609
    move-result-wide v3

    .line 610
    long-to-int v3, v3

    .line 611
    if-eqz v3, :cond_7

    .line 612
    .line 613
    const/16 v74, 0x1

    .line 614
    .line 615
    :goto_c
    move/from16 v27, v5

    .line 616
    .line 617
    move/from16 v3, v28

    .line 618
    .line 619
    goto :goto_d

    .line 620
    :cond_7
    const/16 v74, 0x0

    .line 621
    .line 622
    goto :goto_c

    .line 623
    :goto_d
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 624
    .line 625
    .line 626
    move-result-wide v4

    .line 627
    long-to-int v4, v4

    .line 628
    if-eqz v4, :cond_8

    .line 629
    .line 630
    const/16 v75, 0x1

    .line 631
    .line 632
    :goto_e
    move v5, v2

    .line 633
    move/from16 v28, v3

    .line 634
    .line 635
    move/from16 v4, v29

    .line 636
    .line 637
    goto :goto_f

    .line 638
    :cond_8
    const/16 v75, 0x0

    .line 639
    .line 640
    goto :goto_e

    .line 641
    :goto_f
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 642
    .line 643
    .line 644
    move-result-wide v2

    .line 645
    long-to-int v2, v2

    .line 646
    if-eqz v2, :cond_9

    .line 647
    .line 648
    const/16 v76, 0x1

    .line 649
    .line 650
    :goto_10
    move/from16 v2, v30

    .line 651
    .line 652
    goto :goto_11

    .line 653
    :cond_9
    const/16 v76, 0x0

    .line 654
    .line 655
    goto :goto_10

    .line 656
    :goto_11
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 657
    .line 658
    .line 659
    move-result-wide v77

    .line 660
    move/from16 v3, v31

    .line 661
    .line 662
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 663
    .line 664
    .line 665
    move-result-wide v79

    .line 666
    move/from16 v29, v0

    .line 667
    .line 668
    move/from16 v0, v32

    .line 669
    .line 670
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 671
    .line 672
    .line 673
    move-result-object v30

    .line 674
    invoke-static/range {v30 .. v30}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 675
    .line 676
    .line 677
    move-result-object v81

    .line 678
    new-instance v47, Landroidx/work/Constraints;

    .line 679
    .line 680
    move-object/from16 v70, v47

    .line 681
    .line 682
    invoke-direct/range {v70 .. v81}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 683
    .line 684
    .line 685
    move-object/from16 v47, v70

    .line 686
    .line 687
    new-instance v34, Landroidx/work/impl/model/WorkSpec;

    .line 688
    .line 689
    invoke-direct/range {v34 .. v67}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    .line 691
    .line 692
    move/from16 v32, v0

    .line 693
    .line 694
    move-object/from16 v0, v34

    .line 695
    .line 696
    move-object/from16 v30, v1

    .line 697
    .line 698
    move-object/from16 v1, v68

    .line 699
    .line 700
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 701
    .line 702
    .line 703
    move/from16 v0, p0

    .line 704
    .line 705
    move/from16 v31, v3

    .line 706
    .line 707
    move/from16 p0, v16

    .line 708
    .line 709
    move/from16 v16, v18

    .line 710
    .line 711
    move/from16 v18, v21

    .line 712
    .line 713
    move/from16 v21, v23

    .line 714
    .line 715
    move/from16 v23, v29

    .line 716
    .line 717
    move/from16 v3, v33

    .line 718
    .line 719
    move/from16 v29, v4

    .line 720
    .line 721
    move-object v4, v1

    .line 722
    move-object/from16 v1, v30

    .line 723
    .line 724
    move/from16 v30, v2

    .line 725
    .line 726
    move/from16 v2, p1

    .line 727
    .line 728
    move/from16 p1, v19

    .line 729
    .line 730
    move/from16 v19, v20

    .line 731
    .line 732
    move/from16 v20, v22

    .line 733
    .line 734
    move/from16 v22, v27

    .line 735
    .line 736
    move/from16 v27, v5

    .line 737
    .line 738
    move/from16 v5, v17

    .line 739
    .line 740
    move/from16 v17, v69

    .line 741
    .line 742
    goto/16 :goto_1

    .line 743
    .line 744
    :catchall_1
    move-exception v0

    .line 745
    goto :goto_12

    .line 746
    :cond_a
    move-object/from16 v30, v1

    .line 747
    .line 748
    move-object v1, v4

    .line 749
    invoke-interface/range {v30 .. v30}, Ljava/lang/AutoCloseable;->close()V

    .line 750
    .line 751
    .line 752
    return-object v1

    .line 753
    :goto_12
    invoke-interface/range {v30 .. v30}, Ljava/lang/AutoCloseable;->close()V

    .line 754
    .line 755
    .line 756
    throw v0

    .line 757
    :pswitch_2
    move-object/from16 v1, p1

    .line 758
    .line 759
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;

    .line 760
    .line 761
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    if-eqz v2, :cond_b

    .line 766
    .line 767
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 768
    .line 769
    .line 770
    move-result-object v3

    .line 771
    goto :goto_13

    .line 772
    :cond_b
    const/4 v3, 0x0

    .line 773
    :goto_13
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 778
    .line 779
    .line 780
    iget v2, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->nestedPrefetchItemCount:I

    .line 781
    .line 782
    const/4 v3, -0x1

    .line 783
    if-ne v2, v3, :cond_c

    .line 784
    .line 785
    const/4 v2, 0x2

    .line 786
    :cond_c
    const/4 v3, 0x0

    .line 787
    :goto_14
    if-ge v3, v2, :cond_d

    .line 788
    .line 789
    add-int v4, v0, v3

    .line 790
    .line 791
    invoke-virtual {v1, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->schedulePrecomposition(I)V

    .line 792
    .line 793
    .line 794
    add-int/lit8 v3, v3, 0x1

    .line 795
    .line 796
    goto :goto_14

    .line 797
    :cond_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 798
    .line 799
    return-object v0

    .line 800
    :pswitch_3
    move-object/from16 v1, p1

    .line 801
    .line 802
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 803
    .line 804
    iget-object v1, v1, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 805
    .line 806
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-static {v0}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    return-object v0

    .line 815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
