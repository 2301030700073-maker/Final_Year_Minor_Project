.class public final synthetic Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 10
    iput p2, p0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput p1, p0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda1;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p2, p0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda1;->f$0:I

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
    iget v1, v0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    iget v0, v0, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda1;->f$0:I

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 19
    .line 20
    const-string v2, "Collection doesn\'t contain element at index "

    .line 21
    .line 22
    const/16 v3, 0x2e

    .line 23
    .line 24
    invoke-static {v2, v0, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;IC)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :pswitch_0
    move-object/from16 v1, p1

    .line 33
    .line 34
    check-cast v1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-le v1, v0, :cond_0

    .line 41
    .line 42
    move v3, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v3, 0x0

    .line 45
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :pswitch_1
    move-object/from16 v1, p1

    .line 51
    .line 52
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcoil3/request/ImageRequests_androidKt;->$r8$lambda$RNYgh5VZD2cwT8fFnO6nu3j6Gis(ILcoil3/request/ImageRequest;)Lcoil3/Image;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :pswitch_2
    move-object/from16 v1, p1

    .line 60
    .line 61
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 62
    .line 63
    invoke-static {v0, v1}, Lcoil3/request/ImageRequests_androidKt;->$r8$lambda$2WXJ4l9VQvDSV6SFqzsUWmXaGWQ(ILcoil3/request/ImageRequest;)Lcoil3/Image;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :pswitch_3
    move-object/from16 v1, p1

    .line 69
    .line 70
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v5, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    .line 76
    .line 77
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    int-to-long v5, v0

    .line 82
    :try_start_0
    invoke-interface {v1, v4, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 83
    .line 84
    .line 85
    const-string v0, "id"

    .line 86
    .line 87
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const-string v5, "state"

    .line 92
    .line 93
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    const-string/jumbo v6, "worker_class_name"

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v6}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    const-string v7, "input_merger_class_name"

    .line 105
    .line 106
    invoke-static {v1, v7}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    const-string v8, "input"

    .line 111
    .line 112
    invoke-static {v1, v8}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    const-string v9, "output"

    .line 117
    .line 118
    invoke-static {v1, v9}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    const-string v10, "initial_delay"

    .line 123
    .line 124
    invoke-static {v1, v10}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    const-string v11, "interval_duration"

    .line 129
    .line 130
    invoke-static {v1, v11}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    const-string v12, "flex_duration"

    .line 135
    .line 136
    invoke-static {v1, v12}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    const-string v13, "run_attempt_count"

    .line 141
    .line 142
    invoke-static {v1, v13}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    const-string v14, "backoff_policy"

    .line 147
    .line 148
    invoke-static {v1, v14}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    const-string v15, "backoff_delay_duration"

    .line 153
    .line 154
    invoke-static {v1, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    const-string v2, "last_enqueue_time"

    .line 159
    .line 160
    invoke-static {v1, v2}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    const-string v3, "minimum_retention_duration"

    .line 165
    .line 166
    invoke-static {v1, v3}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    const-string v4, "schedule_requested_at"

    .line 171
    .line 172
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    move/from16 p0, v4

    .line 177
    .line 178
    const-string v4, "run_in_foreground"

    .line 179
    .line 180
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    move/from16 p1, v4

    .line 185
    .line 186
    const-string v4, "out_of_quota_policy"

    .line 187
    .line 188
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    move/from16 v16, v4

    .line 193
    .line 194
    const-string v4, "period_count"

    .line 195
    .line 196
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    move/from16 v17, v4

    .line 201
    .line 202
    const-string v4, "generation"

    .line 203
    .line 204
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    move/from16 v18, v4

    .line 209
    .line 210
    const-string v4, "next_schedule_time_override"

    .line 211
    .line 212
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    move/from16 v19, v4

    .line 217
    .line 218
    const-string v4, "next_schedule_time_override_generation"

    .line 219
    .line 220
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    move/from16 v20, v4

    .line 225
    .line 226
    const-string v4, "stop_reason"

    .line 227
    .line 228
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    move/from16 v21, v4

    .line 233
    .line 234
    const-string v4, "trace_tag"

    .line 235
    .line 236
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    move/from16 v22, v4

    .line 241
    .line 242
    const-string v4, "backoff_on_system_interruptions"

    .line 243
    .line 244
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    move/from16 v23, v4

    .line 249
    .line 250
    const-string v4, "required_network_type"

    .line 251
    .line 252
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    move/from16 v24, v4

    .line 257
    .line 258
    const-string v4, "required_network_request"

    .line 259
    .line 260
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    move/from16 v25, v4

    .line 265
    .line 266
    const-string v4, "requires_charging"

    .line 267
    .line 268
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    move/from16 v26, v4

    .line 273
    .line 274
    const-string v4, "requires_device_idle"

    .line 275
    .line 276
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    move/from16 v27, v4

    .line 281
    .line 282
    const-string v4, "requires_battery_not_low"

    .line 283
    .line 284
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    move/from16 v28, v4

    .line 289
    .line 290
    const-string v4, "requires_storage_not_low"

    .line 291
    .line 292
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    move/from16 v29, v4

    .line 297
    .line 298
    const-string v4, "trigger_content_update_delay"

    .line 299
    .line 300
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    move/from16 v30, v4

    .line 305
    .line 306
    const-string v4, "trigger_max_content_delay"

    .line 307
    .line 308
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    move/from16 v31, v4

    .line 313
    .line 314
    const-string v4, "content_uri_triggers"

    .line 315
    .line 316
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    move/from16 v32, v4

    .line 321
    .line 322
    new-instance v4, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .line 326
    .line 327
    :goto_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 328
    .line 329
    .line 330
    move-result v33

    .line 331
    if-eqz v33, :cond_a

    .line 332
    .line 333
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v35

    .line 337
    move/from16 v33, v3

    .line 338
    .line 339
    move-object/from16 v68, v4

    .line 340
    .line 341
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 342
    .line 343
    .line 344
    move-result-wide v3

    .line 345
    long-to-int v3, v3

    .line 346
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 347
    .line 348
    .line 349
    move-result-object v36

    .line 350
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v37

    .line 354
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v38

    .line 358
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 363
    .line 364
    invoke-static {v3}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 365
    .line 366
    .line 367
    move-result-object v39

    .line 368
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-static {v3}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 373
    .line 374
    .line 375
    move-result-object v40

    .line 376
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 377
    .line 378
    .line 379
    move-result-wide v41

    .line 380
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 381
    .line 382
    .line 383
    move-result-wide v43

    .line 384
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 385
    .line 386
    .line 387
    move-result-wide v45

    .line 388
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 389
    .line 390
    .line 391
    move-result-wide v3

    .line 392
    long-to-int v3, v3

    .line 393
    move/from16 v48, v3

    .line 394
    .line 395
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 396
    .line 397
    .line 398
    move-result-wide v3

    .line 399
    long-to-int v3, v3

    .line 400
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 401
    .line 402
    .line 403
    move-result-object v49

    .line 404
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 405
    .line 406
    .line 407
    move-result-wide v50

    .line 408
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 409
    .line 410
    .line 411
    move-result-wide v52

    .line 412
    move/from16 v3, v33

    .line 413
    .line 414
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 415
    .line 416
    .line 417
    move-result-wide v54

    .line 418
    move/from16 v4, p0

    .line 419
    .line 420
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 421
    .line 422
    .line 423
    move-result-wide v56

    .line 424
    move/from16 p0, v0

    .line 425
    .line 426
    move/from16 v33, v3

    .line 427
    .line 428
    move/from16 v0, p1

    .line 429
    .line 430
    move/from16 p1, v2

    .line 431
    .line 432
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 433
    .line 434
    .line 435
    move-result-wide v2

    .line 436
    long-to-int v2, v2

    .line 437
    if-eqz v2, :cond_1

    .line 438
    .line 439
    const/16 v58, 0x1

    .line 440
    .line 441
    :goto_2
    move/from16 v2, v16

    .line 442
    .line 443
    move/from16 v16, v4

    .line 444
    .line 445
    goto :goto_3

    .line 446
    :cond_1
    const/16 v58, 0x0

    .line 447
    .line 448
    goto :goto_2

    .line 449
    :goto_3
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 450
    .line 451
    .line 452
    move-result-wide v3

    .line 453
    long-to-int v3, v3

    .line 454
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 455
    .line 456
    .line 457
    move-result-object v59

    .line 458
    move/from16 v3, v17

    .line 459
    .line 460
    move/from16 v17, v5

    .line 461
    .line 462
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 463
    .line 464
    .line 465
    move-result-wide v4

    .line 466
    long-to-int v4, v4

    .line 467
    move/from16 v69, v3

    .line 468
    .line 469
    move/from16 v5, v18

    .line 470
    .line 471
    move/from16 v18, v2

    .line 472
    .line 473
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 474
    .line 475
    .line 476
    move-result-wide v2

    .line 477
    long-to-int v2, v2

    .line 478
    move/from16 v3, v19

    .line 479
    .line 480
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 481
    .line 482
    .line 483
    move-result-wide v62

    .line 484
    move/from16 v19, v0

    .line 485
    .line 486
    move/from16 v61, v2

    .line 487
    .line 488
    move/from16 v0, v20

    .line 489
    .line 490
    move/from16 v20, v3

    .line 491
    .line 492
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 493
    .line 494
    .line 495
    move-result-wide v2

    .line 496
    long-to-int v2, v2

    .line 497
    move/from16 v60, v4

    .line 498
    .line 499
    move/from16 v3, v21

    .line 500
    .line 501
    move/from16 v21, v5

    .line 502
    .line 503
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 504
    .line 505
    .line 506
    move-result-wide v4

    .line 507
    long-to-int v4, v4

    .line 508
    move/from16 v5, v22

    .line 509
    .line 510
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 511
    .line 512
    .line 513
    move-result v22

    .line 514
    if-eqz v22, :cond_2

    .line 515
    .line 516
    const/16 v66, 0x0

    .line 517
    .line 518
    :goto_4
    move/from16 v22, v0

    .line 519
    .line 520
    move/from16 v0, v23

    .line 521
    .line 522
    goto :goto_5

    .line 523
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v22

    .line 527
    move-object/from16 v66, v22

    .line 528
    .line 529
    goto :goto_4

    .line 530
    :goto_5
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 531
    .line 532
    .line 533
    move-result v23

    .line 534
    if-eqz v23, :cond_3

    .line 535
    .line 536
    move/from16 v64, v2

    .line 537
    .line 538
    move/from16 v23, v3

    .line 539
    .line 540
    const/4 v2, 0x0

    .line 541
    goto :goto_6

    .line 542
    :cond_3
    move/from16 v64, v2

    .line 543
    .line 544
    move/from16 v23, v3

    .line 545
    .line 546
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 547
    .line 548
    .line 549
    move-result-wide v2

    .line 550
    long-to-int v2, v2

    .line 551
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    :goto_6
    if-eqz v2, :cond_5

    .line 556
    .line 557
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result v2

    .line 561
    if-eqz v2, :cond_4

    .line 562
    .line 563
    const/4 v2, 0x1

    .line 564
    goto :goto_7

    .line 565
    :cond_4
    const/4 v2, 0x0

    .line 566
    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    move-object/from16 v67, v2

    .line 571
    .line 572
    :goto_8
    move/from16 v65, v4

    .line 573
    .line 574
    move/from16 v2, v24

    .line 575
    .line 576
    goto :goto_9

    .line 577
    :catchall_0
    move-exception v0

    .line 578
    move-object/from16 v30, v1

    .line 579
    .line 580
    goto/16 :goto_12

    .line 581
    .line 582
    :cond_5
    const/16 v67, 0x0

    .line 583
    .line 584
    goto :goto_8

    .line 585
    :goto_9
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 586
    .line 587
    .line 588
    move-result-wide v3

    .line 589
    long-to-int v3, v3

    .line 590
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 591
    .line 592
    .line 593
    move-result-object v72

    .line 594
    move/from16 v3, v25

    .line 595
    .line 596
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    invoke-static {v4}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 601
    .line 602
    .line 603
    move-result-object v71

    .line 604
    move/from16 v24, v2

    .line 605
    .line 606
    move/from16 v25, v3

    .line 607
    .line 608
    move/from16 v4, v26

    .line 609
    .line 610
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 611
    .line 612
    .line 613
    move-result-wide v2

    .line 614
    long-to-int v2, v2

    .line 615
    if-eqz v2, :cond_6

    .line 616
    .line 617
    const/16 v73, 0x1

    .line 618
    .line 619
    :goto_a
    move/from16 v26, v4

    .line 620
    .line 621
    move/from16 v2, v27

    .line 622
    .line 623
    goto :goto_b

    .line 624
    :cond_6
    const/16 v73, 0x0

    .line 625
    .line 626
    goto :goto_a

    .line 627
    :goto_b
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 628
    .line 629
    .line 630
    move-result-wide v3

    .line 631
    long-to-int v3, v3

    .line 632
    if-eqz v3, :cond_7

    .line 633
    .line 634
    const/16 v74, 0x1

    .line 635
    .line 636
    :goto_c
    move/from16 v27, v5

    .line 637
    .line 638
    move/from16 v3, v28

    .line 639
    .line 640
    goto :goto_d

    .line 641
    :cond_7
    const/16 v74, 0x0

    .line 642
    .line 643
    goto :goto_c

    .line 644
    :goto_d
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 645
    .line 646
    .line 647
    move-result-wide v4

    .line 648
    long-to-int v4, v4

    .line 649
    if-eqz v4, :cond_8

    .line 650
    .line 651
    const/16 v75, 0x1

    .line 652
    .line 653
    :goto_e
    move v5, v2

    .line 654
    move/from16 v28, v3

    .line 655
    .line 656
    move/from16 v4, v29

    .line 657
    .line 658
    goto :goto_f

    .line 659
    :cond_8
    const/16 v75, 0x0

    .line 660
    .line 661
    goto :goto_e

    .line 662
    :goto_f
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 663
    .line 664
    .line 665
    move-result-wide v2

    .line 666
    long-to-int v2, v2

    .line 667
    if-eqz v2, :cond_9

    .line 668
    .line 669
    const/16 v76, 0x1

    .line 670
    .line 671
    :goto_10
    move/from16 v2, v30

    .line 672
    .line 673
    goto :goto_11

    .line 674
    :cond_9
    const/16 v76, 0x0

    .line 675
    .line 676
    goto :goto_10

    .line 677
    :goto_11
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 678
    .line 679
    .line 680
    move-result-wide v77

    .line 681
    move/from16 v3, v31

    .line 682
    .line 683
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 684
    .line 685
    .line 686
    move-result-wide v79

    .line 687
    move/from16 v29, v0

    .line 688
    .line 689
    move/from16 v0, v32

    .line 690
    .line 691
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 692
    .line 693
    .line 694
    move-result-object v30

    .line 695
    invoke-static/range {v30 .. v30}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 696
    .line 697
    .line 698
    move-result-object v81

    .line 699
    new-instance v47, Landroidx/work/Constraints;

    .line 700
    .line 701
    move-object/from16 v70, v47

    .line 702
    .line 703
    invoke-direct/range {v70 .. v81}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 704
    .line 705
    .line 706
    move-object/from16 v47, v70

    .line 707
    .line 708
    new-instance v34, Landroidx/work/impl/model/WorkSpec;

    .line 709
    .line 710
    invoke-direct/range {v34 .. v67}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    .line 712
    .line 713
    move/from16 v32, v0

    .line 714
    .line 715
    move-object/from16 v0, v34

    .line 716
    .line 717
    move-object/from16 v30, v1

    .line 718
    .line 719
    move-object/from16 v1, v68

    .line 720
    .line 721
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 722
    .line 723
    .line 724
    move/from16 v0, p0

    .line 725
    .line 726
    move/from16 v31, v3

    .line 727
    .line 728
    move/from16 p0, v16

    .line 729
    .line 730
    move/from16 v16, v18

    .line 731
    .line 732
    move/from16 v18, v21

    .line 733
    .line 734
    move/from16 v21, v23

    .line 735
    .line 736
    move/from16 v23, v29

    .line 737
    .line 738
    move/from16 v3, v33

    .line 739
    .line 740
    move/from16 v29, v4

    .line 741
    .line 742
    move-object v4, v1

    .line 743
    move-object/from16 v1, v30

    .line 744
    .line 745
    move/from16 v30, v2

    .line 746
    .line 747
    move/from16 v2, p1

    .line 748
    .line 749
    move/from16 p1, v19

    .line 750
    .line 751
    move/from16 v19, v20

    .line 752
    .line 753
    move/from16 v20, v22

    .line 754
    .line 755
    move/from16 v22, v27

    .line 756
    .line 757
    move/from16 v27, v5

    .line 758
    .line 759
    move/from16 v5, v17

    .line 760
    .line 761
    move/from16 v17, v69

    .line 762
    .line 763
    goto/16 :goto_1

    .line 764
    .line 765
    :catchall_1
    move-exception v0

    .line 766
    goto :goto_12

    .line 767
    :cond_a
    move-object/from16 v30, v1

    .line 768
    .line 769
    move-object v1, v4

    .line 770
    invoke-interface/range {v30 .. v30}, Ljava/lang/AutoCloseable;->close()V

    .line 771
    .line 772
    .line 773
    return-object v1

    .line 774
    :goto_12
    invoke-interface/range {v30 .. v30}, Ljava/lang/AutoCloseable;->close()V

    .line 775
    .line 776
    .line 777
    throw v0

    .line 778
    :pswitch_4
    move-object/from16 v1, p1

    .line 779
    .line 780
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;

    .line 781
    .line 782
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    if-eqz v2, :cond_b

    .line 787
    .line 788
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    goto :goto_13

    .line 793
    :cond_b
    const/4 v3, 0x0

    .line 794
    :goto_13
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 799
    .line 800
    .line 801
    iget v2, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->nestedPrefetchItemCount:I

    .line 802
    .line 803
    const/4 v3, -0x1

    .line 804
    if-ne v2, v3, :cond_c

    .line 805
    .line 806
    const/4 v2, 0x2

    .line 807
    :cond_c
    const/4 v3, 0x0

    .line 808
    :goto_14
    if-ge v3, v2, :cond_d

    .line 809
    .line 810
    add-int v4, v0, v3

    .line 811
    .line 812
    invoke-virtual {v1, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->schedulePrecomposition(I)V

    .line 813
    .line 814
    .line 815
    add-int/lit8 v3, v3, 0x1

    .line 816
    .line 817
    goto :goto_14

    .line 818
    :cond_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 819
    .line 820
    return-object v0

    .line 821
    :pswitch_5
    move-object/from16 v1, p1

    .line 822
    .line 823
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 824
    .line 825
    invoke-static {v0, v1}, Lcoil3/request/ImageRequests_androidKt;->$r8$lambda$C86lbia-35gsBLAiKrEOGHOVLyw(ILcoil3/request/ImageRequest;)Lcoil3/Image;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    return-object v0

    .line 830
    nop

    .line 831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
