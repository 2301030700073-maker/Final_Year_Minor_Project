.class public abstract Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    .locals 24

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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    iget-object v9, v2, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    array-length v11, v1

    .line 37
    if-lez v11, :cond_0

    .line 38
    .line 39
    const/4 v11, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v11, v4

    .line 42
    :goto_0
    if-eqz v11, :cond_6

    .line 43
    .line 44
    array-length v12, v1

    .line 45
    move v13, v4

    .line 46
    move v15, v13

    .line 47
    move/from16 v16, v15

    .line 48
    .line 49
    const/4 v14, 0x1

    .line 50
    :goto_1
    if-ge v13, v12, :cond_7

    .line 51
    .line 52
    aget-object v4, v1, v13

    .line 53
    .line 54
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-virtual {v10, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    if-nez v10, :cond_2

    .line 63
    .line 64
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v3, "Prerequisite "

    .line 71
    .line 72
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, " doesn\'t exist; not enqueuing"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    sget-object v3, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v3, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_2
    const/4 v4, 0x0

    .line 93
    const/4 v9, 0x1

    .line 94
    goto/16 :goto_13

    .line 95
    .line 96
    :cond_2
    iget-object v4, v10, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 97
    .line 98
    sget-object v10, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 99
    .line 100
    if-ne v4, v10, :cond_3

    .line 101
    .line 102
    const/4 v10, 0x1

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    const/4 v10, 0x0

    .line 105
    :goto_3
    and-int/2addr v14, v10

    .line 106
    sget-object v10, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 107
    .line 108
    if-ne v4, v10, :cond_4

    .line 109
    .line 110
    const/16 v16, 0x1

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_4
    sget-object v10, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 114
    .line 115
    if-ne v4, v10, :cond_5

    .line 116
    .line 117
    const/4 v15, 0x1

    .line 118
    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    goto :goto_1

    .line 122
    :cond_6
    const/4 v14, 0x1

    .line 123
    const/4 v15, 0x0

    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_17

    .line 131
    .line 132
    if-nez v11, :cond_17

    .line 133
    .line 134
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget-object v12, v12, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 145
    .line 146
    new-instance v13, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    const/16 v10, 0x16

    .line 149
    .line 150
    invoke-direct {v13, v10, v5}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    move-object/from16 v18, v3

    .line 154
    .line 155
    const/4 v3, 0x1

    .line 156
    const/4 v10, 0x0

    .line 157
    invoke-static {v12, v3, v10, v13}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    check-cast v12, Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-nez v3, :cond_16

    .line 168
    .line 169
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    .line 170
    .line 171
    const/4 v13, 0x6

    .line 172
    if-eq v6, v3, :cond_c

    .line 173
    .line 174
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 175
    .line 176
    if-ne v6, v3, :cond_8

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_8
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 180
    .line 181
    if-ne v6, v3, :cond_a

    .line 182
    .line 183
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_a

    .line 192
    .line 193
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    check-cast v6, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 198
    .line 199
    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 200
    .line 201
    sget-object v10, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 202
    .line 203
    if-eq v6, v10, :cond_1

    .line 204
    .line 205
    sget-object v10, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 206
    .line 207
    if-ne v6, v10, :cond_9

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    new-instance v3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 214
    .line 215
    const/4 v6, 0x5

    .line 216
    invoke-direct {v3, v9, v5, v2, v6}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    new-instance v6, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    invoke-direct {v6, v13, v3}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v6}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-eqz v10, :cond_b

    .line 240
    .line 241
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    check-cast v10, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 246
    .line 247
    iget-object v10, v10, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    iget-object v12, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 256
    .line 257
    new-instance v13, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 258
    .line 259
    move-object/from16 v17, v3

    .line 260
    .line 261
    const/16 v3, 0x15

    .line 262
    .line 263
    invoke-direct {v13, v3, v10}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const/4 v3, 0x1

    .line 267
    const/4 v10, 0x0

    .line 268
    invoke-static {v12, v10, v3, v13}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-object/from16 v3, v17

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_b
    move/from16 v21, v4

    .line 275
    .line 276
    move-object/from16 v23, v9

    .line 277
    .line 278
    const/4 v3, 0x1

    .line 279
    goto/16 :goto_d

    .line 280
    .line 281
    :cond_c
    :goto_6
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao_Impl;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    new-instance v10, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v12

    .line 298
    if-eqz v12, :cond_11

    .line 299
    .line 300
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    check-cast v12, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 305
    .line 306
    iget-object v13, v12, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    move/from16 v21, v4

    .line 315
    .line 316
    iget-object v4, v3, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 317
    .line 318
    move-object/from16 v22, v3

    .line 319
    .line 320
    new-instance v3, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 321
    .line 322
    move-object/from16 v23, v9

    .line 323
    .line 324
    const/4 v9, 0x6

    .line 325
    invoke-direct {v3, v9, v13}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 326
    .line 327
    .line 328
    const/4 v9, 0x1

    .line 329
    const/4 v13, 0x0

    .line 330
    invoke-static {v4, v9, v13, v3}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    check-cast v3, Ljava/lang/Boolean;

    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-nez v3, :cond_10

    .line 341
    .line 342
    iget-object v3, v12, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 343
    .line 344
    sget-object v4, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 345
    .line 346
    if-ne v3, v4, :cond_d

    .line 347
    .line 348
    const/4 v4, 0x1

    .line 349
    goto :goto_8

    .line 350
    :cond_d
    const/4 v4, 0x0

    .line 351
    :goto_8
    and-int/2addr v4, v14

    .line 352
    sget-object v9, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 353
    .line 354
    if-ne v3, v9, :cond_e

    .line 355
    .line 356
    const/16 v16, 0x1

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_e
    sget-object v9, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 360
    .line 361
    if-ne v3, v9, :cond_f

    .line 362
    .line 363
    const/4 v15, 0x1

    .line 364
    :cond_f
    :goto_9
    iget-object v3, v12, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move v14, v4

    .line 370
    :cond_10
    move/from16 v4, v21

    .line 371
    .line 372
    move-object/from16 v3, v22

    .line 373
    .line 374
    move-object/from16 v9, v23

    .line 375
    .line 376
    const/4 v13, 0x6

    .line 377
    goto :goto_7

    .line 378
    :cond_11
    move/from16 v21, v4

    .line 379
    .line 380
    move-object/from16 v23, v9

    .line 381
    .line 382
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 383
    .line 384
    if-ne v6, v3, :cond_14

    .line 385
    .line 386
    if-nez v15, :cond_12

    .line 387
    .line 388
    if-eqz v16, :cond_14

    .line 389
    .line 390
    :cond_12
    invoke-virtual/range {v23 .. v23}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 398
    .line 399
    new-instance v4, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 400
    .line 401
    const/16 v6, 0x16

    .line 402
    .line 403
    invoke-direct {v4, v6, v5}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 404
    .line 405
    .line 406
    const/4 v9, 0x1

    .line 407
    const/4 v10, 0x0

    .line 408
    invoke-static {v3, v9, v10, v4}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    check-cast v4, Ljava/util/List;

    .line 413
    .line 414
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    if-eqz v6, :cond_13

    .line 423
    .line 424
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    check-cast v6, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 429
    .line 430
    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    new-instance v9, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 436
    .line 437
    const/16 v10, 0x15

    .line 438
    .line 439
    invoke-direct {v9, v10, v6}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 440
    .line 441
    .line 442
    const/4 v6, 0x1

    .line 443
    const/4 v13, 0x0

    .line 444
    invoke-static {v3, v13, v6, v9}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_13
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 449
    .line 450
    const/4 v15, 0x0

    .line 451
    const/16 v16, 0x0

    .line 452
    .line 453
    :cond_14
    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    check-cast v1, [Ljava/lang/String;

    .line 458
    .line 459
    array-length v3, v1

    .line 460
    if-lez v3, :cond_15

    .line 461
    .line 462
    const/4 v11, 0x1

    .line 463
    goto :goto_b

    .line 464
    :cond_15
    const/4 v11, 0x0

    .line 465
    :goto_b
    const/4 v3, 0x0

    .line 466
    goto :goto_d

    .line 467
    :cond_16
    :goto_c
    move/from16 v21, v4

    .line 468
    .line 469
    move-object/from16 v23, v9

    .line 470
    .line 471
    goto :goto_b

    .line 472
    :cond_17
    move-object/from16 v18, v3

    .line 473
    .line 474
    goto :goto_c

    .line 475
    :goto_d
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    .line 481
    .line 482
    move-result v6

    .line 483
    if-eqz v6, :cond_22

    .line 484
    .line 485
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    check-cast v6, Landroidx/work/OneTimeWorkRequest;

    .line 490
    .line 491
    iget-object v9, v6, Landroidx/work/OneTimeWorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 492
    .line 493
    iget-object v10, v6, Landroidx/work/OneTimeWorkRequest;->id:Ljava/util/UUID;

    .line 494
    .line 495
    if-eqz v11, :cond_1a

    .line 496
    .line 497
    if-nez v14, :cond_1a

    .line 498
    .line 499
    if-eqz v16, :cond_18

    .line 500
    .line 501
    sget-object v12, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 502
    .line 503
    iput-object v12, v9, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 504
    .line 505
    goto :goto_f

    .line 506
    :cond_18
    if-eqz v15, :cond_19

    .line 507
    .line 508
    sget-object v12, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 509
    .line 510
    iput-object v12, v9, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 511
    .line 512
    goto :goto_f

    .line 513
    :cond_19
    sget-object v12, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    .line 514
    .line 515
    iput-object v12, v9, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 516
    .line 517
    goto :goto_f

    .line 518
    :cond_1a
    iput-wide v7, v9, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 519
    .line 520
    :goto_f
    iget-object v12, v9, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 521
    .line 522
    sget-object v13, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 523
    .line 524
    if-ne v12, v13, :cond_1b

    .line 525
    .line 526
    const/4 v3, 0x1

    .line 527
    :cond_1b
    invoke-virtual/range {v23 .. v23}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 528
    .line 529
    .line 530
    move-result-object v12

    .line 531
    iget-object v13, v2, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 532
    .line 533
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    iget-object v13, v9, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 537
    .line 538
    move-object/from16 v17, v2

    .line 539
    .line 540
    const-string v2, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    .line 541
    .line 542
    invoke-virtual {v13, v2}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;)Z

    .line 543
    .line 544
    .line 545
    move-result v13

    .line 546
    move/from16 v18, v3

    .line 547
    .line 548
    iget-object v3, v9, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 549
    .line 550
    move-object/from16 v19, v4

    .line 551
    .line 552
    const-string v4, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    .line 553
    .line 554
    invoke-virtual {v3, v4}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;)Z

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    iget-object v4, v9, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 559
    .line 560
    move/from16 v20, v3

    .line 561
    .line 562
    const-string v3, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    .line 563
    .line 564
    invoke-virtual {v4, v3}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;)Z

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    if-nez v13, :cond_1c

    .line 569
    .line 570
    if-eqz v20, :cond_1c

    .line 571
    .line 572
    if-eqz v3, :cond_1c

    .line 573
    .line 574
    iget-object v3, v9, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 575
    .line 576
    new-instance v4, Landroidx/work/Data$Builder;

    .line 577
    .line 578
    invoke-direct {v4}, Landroidx/work/Data$Builder;-><init>()V

    .line 579
    .line 580
    .line 581
    iget-object v13, v9, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 582
    .line 583
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    iget-object v13, v13, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 587
    .line 588
    invoke-virtual {v4, v13}, Landroidx/work/Data$Builder;->putAll(Ljava/util/HashMap;)V

    .line 589
    .line 590
    .line 591
    iget-object v13, v4, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast v13, Ljava/util/LinkedHashMap;

    .line 594
    .line 595
    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v4}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    const-string v3, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    .line 603
    .line 604
    invoke-static {v9, v3, v2}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/Data;)Landroidx/work/impl/model/WorkSpec;

    .line 605
    .line 606
    .line 607
    move-result-object v9

    .line 608
    :cond_1c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 609
    .line 610
    const/16 v3, 0x19

    .line 611
    .line 612
    if-gt v2, v3, :cond_1e

    .line 613
    .line 614
    iget-object v2, v9, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 615
    .line 616
    iget-object v3, v9, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 617
    .line 618
    const-class v4, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 619
    .line 620
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v13

    .line 624
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v13

    .line 628
    if-nez v13, :cond_1e

    .line 629
    .line 630
    iget-boolean v13, v2, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 631
    .line 632
    if-nez v13, :cond_1d

    .line 633
    .line 634
    iget-boolean v2, v2, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 635
    .line 636
    if-eqz v2, :cond_1e

    .line 637
    .line 638
    :cond_1d
    new-instance v2, Landroidx/work/Data$Builder;

    .line 639
    .line 640
    invoke-direct {v2}, Landroidx/work/Data$Builder;-><init>()V

    .line 641
    .line 642
    .line 643
    iget-object v13, v9, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 644
    .line 645
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    iget-object v13, v13, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 649
    .line 650
    invoke-virtual {v2, v13}, Landroidx/work/Data$Builder;->putAll(Ljava/util/HashMap;)V

    .line 651
    .line 652
    .line 653
    iget-object v13, v2, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v13, Ljava/util/LinkedHashMap;

    .line 656
    .line 657
    move-object/from16 v20, v2

    .line 658
    .line 659
    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 660
    .line 661
    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    invoke-virtual/range {v20 .. v20}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    invoke-static {v9, v3, v2}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/Data;)Landroidx/work/impl/model/WorkSpec;

    .line 673
    .line 674
    .line 675
    move-result-object v9

    .line 676
    :cond_1e
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    iget-object v2, v12, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 680
    .line 681
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 682
    .line 683
    const/4 v4, 0x3

    .line 684
    invoke-direct {v3, v4, v12, v9}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    const/4 v9, 0x1

    .line 688
    const/4 v13, 0x0

    .line 689
    invoke-static {v2, v13, v9, v3}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    if-eqz v11, :cond_1f

    .line 693
    .line 694
    array-length v2, v1

    .line 695
    const/4 v3, 0x0

    .line 696
    :goto_10
    if-ge v3, v2, :cond_1f

    .line 697
    .line 698
    aget-object v4, v1, v3

    .line 699
    .line 700
    new-instance v9, Landroidx/work/impl/model/Dependency;

    .line 701
    .line 702
    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v12

    .line 706
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 707
    .line 708
    .line 709
    invoke-direct {v9, v12, v4}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual/range {v23 .. v23}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao_Impl;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    iget-object v12, v4, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 720
    .line 721
    new-instance v13, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 722
    .line 723
    move-object/from16 v20, v1

    .line 724
    .line 725
    const/16 v1, 0x1a

    .line 726
    .line 727
    invoke-direct {v13, v1, v4, v9}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 728
    .line 729
    .line 730
    const/4 v1, 0x0

    .line 731
    const/4 v9, 0x1

    .line 732
    invoke-static {v12, v1, v9, v13}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    add-int/lit8 v3, v3, 0x1

    .line 736
    .line 737
    move-object/from16 v1, v20

    .line 738
    .line 739
    goto :goto_10

    .line 740
    :cond_1f
    move-object/from16 v20, v1

    .line 741
    .line 742
    invoke-virtual/range {v23 .. v23}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    iget-object v3, v6, Landroidx/work/OneTimeWorkRequest;->tags:Ljava/util/LinkedHashSet;

    .line 754
    .line 755
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 756
    .line 757
    .line 758
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 763
    .line 764
    .line 765
    move-result v4

    .line 766
    if-eqz v4, :cond_20

    .line 767
    .line 768
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v4

    .line 772
    check-cast v4, Ljava/lang/String;

    .line 773
    .line 774
    new-instance v6, Landroidx/work/impl/model/WorkTag;

    .line 775
    .line 776
    invoke-direct {v6, v4, v2}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    iget-object v4, v1, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 780
    .line 781
    new-instance v9, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 782
    .line 783
    const/4 v12, 0x5

    .line 784
    invoke-direct {v9, v12, v1, v6}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    const/4 v6, 0x1

    .line 788
    const/4 v13, 0x0

    .line 789
    invoke-static {v4, v13, v6, v9}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    goto :goto_11

    .line 793
    :cond_20
    const/4 v12, 0x5

    .line 794
    if-nez v21, :cond_21

    .line 795
    .line 796
    invoke-virtual/range {v23 .. v23}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    new-instance v2, Landroidx/work/impl/model/WorkName;

    .line 801
    .line 802
    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    invoke-direct {v2, v5, v3}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 813
    .line 814
    .line 815
    iget-object v3, v1, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 816
    .line 817
    new-instance v4, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 818
    .line 819
    const/16 v6, 0x1d

    .line 820
    .line 821
    invoke-direct {v4, v6, v1, v2}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 822
    .line 823
    .line 824
    const/4 v9, 0x1

    .line 825
    const/4 v13, 0x0

    .line 826
    invoke-static {v3, v13, v9, v4}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    goto :goto_12

    .line 830
    :cond_21
    const/4 v9, 0x1

    .line 831
    const/4 v13, 0x0

    .line 832
    :goto_12
    move-object/from16 v2, v17

    .line 833
    .line 834
    move/from16 v3, v18

    .line 835
    .line 836
    move-object/from16 v4, v19

    .line 837
    .line 838
    move-object/from16 v1, v20

    .line 839
    .line 840
    goto/16 :goto_e

    .line 841
    .line 842
    :cond_22
    const/4 v9, 0x1

    .line 843
    move v4, v3

    .line 844
    :goto_13
    iput-boolean v9, v0, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    .line 845
    .line 846
    return v4
.end method
