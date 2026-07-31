.class public abstract Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "EnqueueRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 8
    .line 9
    iget-object v3, v0, Landroidx/work/impl/WorkContinuationImpl;->mWork:Ljava/util/List;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v4, [Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, [Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, v0, Landroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v6, v0, Landroidx/work/impl/WorkContinuationImpl;->mExistingWorkPolicy:Landroidx/work/ExistingWorkPolicy;

    .line 23
    .line 24
    iget-object v7, v2, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 25
    .line 26
    iget-object v7, v7, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    .line 27
    .line 28
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    iget-object v9, v2, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    array-length v11, v1

    .line 40
    if-lez v11, :cond_0

    .line 41
    .line 42
    const/4 v11, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v11, v4

    .line 45
    :goto_0
    sget-object v12, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 46
    .line 47
    sget-object v13, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 48
    .line 49
    sget-object v14, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 50
    .line 51
    if-eqz v11, :cond_7

    .line 52
    .line 53
    array-length v15, v1

    .line 54
    move/from16 v16, v4

    .line 55
    .line 56
    move/from16 v17, v16

    .line 57
    .line 58
    const/16 v18, 0x1

    .line 59
    .line 60
    :goto_1
    if-ge v4, v15, :cond_6

    .line 61
    .line 62
    aget-object v10, v1, v4

    .line 63
    .line 64
    move-object/from16 v19, v3

    .line 65
    .line 66
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, v10}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "Prerequisite "

    .line 83
    .line 84
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v3, " doesn\'t exist; not enqueuing"

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    sget-object v3, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1, v3, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_2
    const/4 v4, 0x0

    .line 105
    const/4 v6, 0x1

    .line 106
    goto/16 :goto_18

    .line 107
    .line 108
    :cond_2
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 109
    .line 110
    if-ne v3, v12, :cond_3

    .line 111
    .line 112
    const/4 v10, 0x1

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    const/4 v10, 0x0

    .line 115
    :goto_3
    and-int v18, v18, v10

    .line 116
    .line 117
    if-ne v3, v14, :cond_4

    .line 118
    .line 119
    const/16 v17, 0x1

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_4
    if-ne v3, v13, :cond_5

    .line 123
    .line 124
    const/16 v16, 0x1

    .line 125
    .line 126
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    move-object/from16 v3, v19

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    :goto_5
    move-object/from16 v19, v3

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_7
    const/16 v16, 0x0

    .line 135
    .line 136
    const/16 v17, 0x0

    .line 137
    .line 138
    const/16 v18, 0x1

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :goto_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    sget-object v10, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 146
    .line 147
    if-nez v3, :cond_16

    .line 148
    .line 149
    if-nez v11, :cond_16

    .line 150
    .line 151
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 152
    .line 153
    .line 154
    move-result-object v15

    .line 155
    invoke-virtual {v15, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v20

    .line 163
    if-nez v20, :cond_16

    .line 164
    .line 165
    sget-object v4, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    .line 166
    .line 167
    move/from16 v21, v3

    .line 168
    .line 169
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 170
    .line 171
    if-eq v6, v4, :cond_c

    .line 172
    .line 173
    if-ne v6, v3, :cond_8

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_8
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 177
    .line 178
    if-ne v6, v3, :cond_a

    .line 179
    .line 180
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_a

    .line 189
    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    check-cast v4, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 195
    .line 196
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 197
    .line 198
    if-eq v4, v10, :cond_1

    .line 199
    .line 200
    sget-object v6, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 201
    .line 202
    if-ne v4, v6, :cond_9

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    new-instance v3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 209
    .line 210
    const/16 v4, 0xf

    .line 211
    .line 212
    invoke-direct {v3, v9, v5, v2, v4}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v9, v3}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_b

    .line 231
    .line 232
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    check-cast v6, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 237
    .line 238
    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v3, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_b
    move-object/from16 v25, v2

    .line 245
    .line 246
    move-object/from16 v23, v9

    .line 247
    .line 248
    const/4 v0, 0x1

    .line 249
    goto/16 :goto_e

    .line 250
    .line 251
    :cond_c
    :goto_8
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao_Impl;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    new-instance v11, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v22

    .line 268
    if-eqz v22, :cond_11

    .line 269
    .line 270
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v22

    .line 274
    move-object/from16 v23, v9

    .line 275
    .line 276
    move-object/from16 v9, v22

    .line 277
    .line 278
    check-cast v9, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 279
    .line 280
    move-object/from16 v22, v15

    .line 281
    .line 282
    iget-object v15, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iget-object v0, v4, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 291
    .line 292
    move-object/from16 v24, v4

    .line 293
    .line 294
    new-instance v4, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    .line 295
    .line 296
    move-object/from16 v25, v2

    .line 297
    .line 298
    const/4 v2, 0x7

    .line 299
    invoke-direct {v4, v15, v2}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 300
    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    const/4 v15, 0x1

    .line 304
    invoke-static {v0, v15, v2, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Ljava/lang/Boolean;

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-nez v0, :cond_10

    .line 315
    .line 316
    iget-object v0, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 317
    .line 318
    if-ne v0, v12, :cond_d

    .line 319
    .line 320
    const/4 v2, 0x1

    .line 321
    goto :goto_a

    .line 322
    :cond_d
    const/4 v2, 0x0

    .line 323
    :goto_a
    and-int v2, v18, v2

    .line 324
    .line 325
    if-ne v0, v14, :cond_e

    .line 326
    .line 327
    const/16 v17, 0x1

    .line 328
    .line 329
    goto :goto_b

    .line 330
    :cond_e
    if-ne v0, v13, :cond_f

    .line 331
    .line 332
    const/16 v16, 0x1

    .line 333
    .line 334
    :cond_f
    :goto_b
    iget-object v0, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move/from16 v18, v2

    .line 340
    .line 341
    :cond_10
    move-object/from16 v0, p0

    .line 342
    .line 343
    move-object/from16 v15, v22

    .line 344
    .line 345
    move-object/from16 v9, v23

    .line 346
    .line 347
    move-object/from16 v4, v24

    .line 348
    .line 349
    move-object/from16 v2, v25

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_11
    move-object/from16 v25, v2

    .line 353
    .line 354
    move-object/from16 v23, v9

    .line 355
    .line 356
    if-ne v6, v3, :cond_14

    .line 357
    .line 358
    if-nez v16, :cond_12

    .line 359
    .line 360
    if-eqz v17, :cond_14

    .line 361
    .line 362
    :cond_12
    invoke-virtual/range {v23 .. v23}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_13

    .line 379
    .line 380
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    check-cast v3, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 385
    .line 386
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    goto :goto_c

    .line 392
    :cond_13
    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 393
    .line 394
    const/16 v16, 0x0

    .line 395
    .line 396
    const/16 v17, 0x0

    .line 397
    .line 398
    :cond_14
    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    move-object v1, v0

    .line 403
    check-cast v1, [Ljava/lang/String;

    .line 404
    .line 405
    array-length v0, v1

    .line 406
    if-lez v0, :cond_15

    .line 407
    .line 408
    const/4 v11, 0x1

    .line 409
    goto :goto_d

    .line 410
    :cond_15
    const/4 v11, 0x0

    .line 411
    :goto_d
    const/4 v0, 0x0

    .line 412
    goto :goto_e

    .line 413
    :cond_16
    move-object/from16 v25, v2

    .line 414
    .line 415
    move/from16 v21, v3

    .line 416
    .line 417
    move-object/from16 v23, v9

    .line 418
    .line 419
    goto :goto_d

    .line 420
    :goto_e
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    move v15, v0

    .line 425
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-eqz v0, :cond_21

    .line 430
    .line 431
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    check-cast v0, Landroidx/work/WorkRequest;

    .line 436
    .line 437
    iget-object v3, v0, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 438
    .line 439
    iget-object v4, v0, Landroidx/work/WorkRequest;->id:Ljava/util/UUID;

    .line 440
    .line 441
    if-eqz v11, :cond_19

    .line 442
    .line 443
    if-nez v18, :cond_19

    .line 444
    .line 445
    if-eqz v17, :cond_17

    .line 446
    .line 447
    iput-object v14, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 448
    .line 449
    goto :goto_10

    .line 450
    :cond_17
    if-eqz v16, :cond_18

    .line 451
    .line 452
    iput-object v13, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 453
    .line 454
    goto :goto_10

    .line 455
    :cond_18
    sget-object v6, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    .line 456
    .line 457
    iput-object v6, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 458
    .line 459
    goto :goto_10

    .line 460
    :cond_19
    iput-wide v7, v3, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 461
    .line 462
    :goto_10
    iget-object v6, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 463
    .line 464
    if-ne v6, v10, :cond_1a

    .line 465
    .line 466
    const/4 v15, 0x1

    .line 467
    :cond_1a
    invoke-virtual/range {v23 .. v23}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    move-object/from16 v9, v25

    .line 472
    .line 473
    iget-object v12, v9, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 474
    .line 475
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    iget-object v12, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 482
    .line 483
    move-object/from16 v19, v2

    .line 484
    .line 485
    const-string v2, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    .line 486
    .line 487
    invoke-virtual {v12, v2}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result v12

    .line 491
    move-object/from16 v22, v4

    .line 492
    .line 493
    iget-object v4, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 494
    .line 495
    move-wide/from16 v24, v7

    .line 496
    .line 497
    const-string v7, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    .line 498
    .line 499
    invoke-virtual {v4, v7}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    iget-object v7, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 504
    .line 505
    const-string v8, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    .line 506
    .line 507
    invoke-virtual {v7, v8}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;)Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    if-nez v12, :cond_1b

    .line 512
    .line 513
    if-eqz v4, :cond_1b

    .line 514
    .line 515
    if-eqz v7, :cond_1b

    .line 516
    .line 517
    iget-object v4, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 518
    .line 519
    new-instance v7, Landroidx/work/Data$Builder;

    .line 520
    .line 521
    const/4 v8, 0x0

    .line 522
    invoke-direct {v7, v8}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 523
    .line 524
    .line 525
    iget-object v8, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 526
    .line 527
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    iget-object v8, v8, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 531
    .line 532
    invoke-virtual {v7, v8}, Landroidx/work/Data$Builder;->putAll(Ljava/util/HashMap;)V

    .line 533
    .line 534
    .line 535
    iget-object v8, v7, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 536
    .line 537
    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v7}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 541
    .line 542
    .line 543
    move-result-object v30

    .line 544
    const/16 v38, 0x0

    .line 545
    .line 546
    const v39, 0x1ffffeb

    .line 547
    .line 548
    .line 549
    const/16 v27, 0x0

    .line 550
    .line 551
    const/16 v28, 0x0

    .line 552
    .line 553
    const-string v29, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    .line 554
    .line 555
    const/16 v31, 0x0

    .line 556
    .line 557
    const-wide/16 v32, 0x0

    .line 558
    .line 559
    const/16 v34, 0x0

    .line 560
    .line 561
    const/16 v35, 0x0

    .line 562
    .line 563
    const-wide/16 v36, 0x0

    .line 564
    .line 565
    move-object/from16 v26, v3

    .line 566
    .line 567
    invoke-static/range {v26 .. v39}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/Data;IJIIJII)Landroidx/work/impl/model/WorkSpec;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    goto :goto_11

    .line 572
    :cond_1b
    move-object/from16 v26, v3

    .line 573
    .line 574
    move-object/from16 v3, v26

    .line 575
    .line 576
    :goto_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 577
    .line 578
    const/16 v4, 0x19

    .line 579
    .line 580
    if-gt v2, v4, :cond_1c

    .line 581
    .line 582
    iget-object v2, v3, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 583
    .line 584
    iget-object v4, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 585
    .line 586
    const-class v7, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 587
    .line 588
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v8

    .line 596
    if-nez v8, :cond_1c

    .line 597
    .line 598
    iget-boolean v8, v2, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 599
    .line 600
    if-nez v8, :cond_1d

    .line 601
    .line 602
    iget-boolean v2, v2, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 603
    .line 604
    if-eqz v2, :cond_1c

    .line 605
    .line 606
    goto :goto_12

    .line 607
    :cond_1c
    move-object/from16 v27, v3

    .line 608
    .line 609
    goto :goto_13

    .line 610
    :cond_1d
    :goto_12
    new-instance v2, Landroidx/work/Data$Builder;

    .line 611
    .line 612
    const/4 v8, 0x0

    .line 613
    invoke-direct {v2, v8}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 614
    .line 615
    .line 616
    iget-object v8, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 617
    .line 618
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    iget-object v8, v8, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 622
    .line 623
    invoke-virtual {v2, v8}, Landroidx/work/Data$Builder;->putAll(Ljava/util/HashMap;)V

    .line 624
    .line 625
    .line 626
    const-string v8, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 627
    .line 628
    iget-object v12, v2, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 629
    .line 630
    invoke-interface {v12, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v2}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 634
    .line 635
    .line 636
    move-result-object v31

    .line 637
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v30

    .line 641
    const/16 v39, 0x0

    .line 642
    .line 643
    const v40, 0x1ffffeb

    .line 644
    .line 645
    .line 646
    const/16 v28, 0x0

    .line 647
    .line 648
    const/16 v29, 0x0

    .line 649
    .line 650
    const/16 v32, 0x0

    .line 651
    .line 652
    const-wide/16 v33, 0x0

    .line 653
    .line 654
    const/16 v35, 0x0

    .line 655
    .line 656
    const/16 v36, 0x0

    .line 657
    .line 658
    const-wide/16 v37, 0x0

    .line 659
    .line 660
    move-object/from16 v27, v3

    .line 661
    .line 662
    invoke-static/range {v27 .. v40}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/Data;IJIIJII)Landroidx/work/impl/model/WorkSpec;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    goto :goto_14

    .line 667
    :goto_13
    move-object/from16 v3, v27

    .line 668
    .line 669
    :goto_14
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    iget-object v2, v6, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 673
    .line 674
    new-instance v4, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 675
    .line 676
    const/4 v7, 0x7

    .line 677
    invoke-direct {v4, v7, v6, v3}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 678
    .line 679
    .line 680
    const/4 v3, 0x1

    .line 681
    const/4 v8, 0x0

    .line 682
    invoke-static {v2, v8, v3, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    if-eqz v11, :cond_1e

    .line 686
    .line 687
    array-length v2, v1

    .line 688
    const/4 v3, 0x0

    .line 689
    :goto_15
    if-ge v3, v2, :cond_1e

    .line 690
    .line 691
    aget-object v4, v1, v3

    .line 692
    .line 693
    new-instance v6, Landroidx/work/impl/model/Dependency;

    .line 694
    .line 695
    invoke-virtual/range {v22 .. v22}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v8

    .line 699
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    .line 701
    .line 702
    invoke-direct {v6, v8, v4}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual/range {v23 .. v23}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao_Impl;

    .line 706
    .line 707
    .line 708
    move-result-object v4

    .line 709
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    iget-object v8, v4, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 713
    .line 714
    new-instance v12, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 715
    .line 716
    const/4 v7, 0x2

    .line 717
    invoke-direct {v12, v7, v4, v6}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    const/4 v4, 0x0

    .line 721
    const/4 v6, 0x1

    .line 722
    invoke-static {v8, v4, v6, v12}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    add-int/lit8 v3, v3, 0x1

    .line 726
    .line 727
    const/4 v7, 0x7

    .line 728
    goto :goto_15

    .line 729
    :cond_1e
    invoke-virtual/range {v23 .. v23}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    invoke-virtual/range {v22 .. v22}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 738
    .line 739
    .line 740
    iget-object v0, v0, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    .line 741
    .line 742
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    check-cast v0, Ljava/lang/Iterable;

    .line 752
    .line 753
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 758
    .line 759
    .line 760
    move-result v4

    .line 761
    if-eqz v4, :cond_1f

    .line 762
    .line 763
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v4

    .line 767
    check-cast v4, Ljava/lang/String;

    .line 768
    .line 769
    new-instance v6, Landroidx/work/impl/model/WorkTag;

    .line 770
    .line 771
    invoke-direct {v6, v4, v3}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    iget-object v4, v2, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 775
    .line 776
    new-instance v7, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 777
    .line 778
    const/16 v8, 0x9

    .line 779
    .line 780
    invoke-direct {v7, v8, v2, v6}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    const/4 v6, 0x1

    .line 784
    const/4 v8, 0x0

    .line 785
    invoke-static {v4, v8, v6, v7}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    goto :goto_16

    .line 789
    :cond_1f
    if-nez v21, :cond_20

    .line 790
    .line 791
    invoke-virtual/range {v23 .. v23}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    new-instance v2, Landroidx/work/impl/model/WorkName;

    .line 796
    .line 797
    invoke-virtual/range {v22 .. v22}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v3

    .line 801
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    .line 803
    .line 804
    invoke-direct {v2, v5, v3}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    .line 809
    .line 810
    iget-object v3, v0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 811
    .line 812
    new-instance v4, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 813
    .line 814
    const/4 v6, 0x5

    .line 815
    invoke-direct {v4, v6, v0, v2}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 816
    .line 817
    .line 818
    const/4 v6, 0x1

    .line 819
    const/4 v8, 0x0

    .line 820
    invoke-static {v3, v8, v6, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    goto :goto_17

    .line 824
    :cond_20
    const/4 v6, 0x1

    .line 825
    const/4 v8, 0x0

    .line 826
    :goto_17
    move-object/from16 v2, v19

    .line 827
    .line 828
    move-wide/from16 v7, v24

    .line 829
    .line 830
    move-object/from16 v25, v9

    .line 831
    .line 832
    goto/16 :goto_f

    .line 833
    .line 834
    :cond_21
    const/4 v6, 0x1

    .line 835
    move-object/from16 v0, p0

    .line 836
    .line 837
    move v4, v15

    .line 838
    :goto_18
    iput-boolean v6, v0, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    .line 839
    .line 840
    return v4
.end method
