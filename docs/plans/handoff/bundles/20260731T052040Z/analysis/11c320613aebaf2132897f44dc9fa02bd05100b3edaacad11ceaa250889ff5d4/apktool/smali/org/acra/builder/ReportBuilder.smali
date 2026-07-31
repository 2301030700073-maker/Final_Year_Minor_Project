.class public final Lorg/acra/builder/ReportBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final customData:Ljava/util/HashMap;

.field public exception:Ljava/lang/Throwable;

.field public isEndApplication:Z

.field public message:Ljava/lang/String;

.field public uncaughtExceptionThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/acra/builder/ReportBuilder;->customData:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final build(Lorg/acra/builder/ReportExecutor;)V
    .locals 29

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, v3, Lorg/acra/builder/ReportBuilder;->message:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v3, Lorg/acra/builder/ReportBuilder;->exception:Ljava/lang/Throwable;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "Report requested by developer"

    .line 17
    .line 18
    iput-object v0, v3, Lorg/acra/builder/ReportBuilder;->message:Ljava/lang/String;

    .line 19
    .line 20
    :cond_0
    iget-object v7, v6, Lorg/acra/builder/ReportExecutor;->processFinisher:Lorg/acra/util/ProcessFinisher;

    .line 21
    .line 22
    iget-object v8, v6, Lorg/acra/builder/ReportExecutor;->reportingAdministrators:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v9, v6, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/CoreConfiguration;

    .line 25
    .line 26
    iget-object v10, v6, Lorg/acra/builder/ReportExecutor;->context:Lorg/schabi/newpipe/App;

    .line 27
    .line 28
    iget-boolean v0, v6, Lorg/acra/builder/ReportExecutor;->isEnabled:Z

    .line 29
    .line 30
    const-string v11, "ACRA"

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 35
    .line 36
    const-string v0, "ACRA is disabled. Report not sent."

    .line 37
    .line 38
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    move-object v12, v2

    .line 48
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const-string v13, " threw exception"

    .line 53
    .line 54
    const-string v14, "ReportingAdministrator "

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v4, v0

    .line 63
    check-cast v4, Lorg/acra/config/ReportingAdministrator;

    .line 64
    .line 65
    :try_start_0
    invoke-interface {v4, v10, v9, v3}, Lorg/acra/config/ReportingAdministrator;->shouldStartCollecting(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/ReportBuilder;)Z

    .line 66
    .line 67
    .line 68
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    move-object v12, v4

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget-object v5, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v11, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    if-nez v12, :cond_d

    .line 104
    .line 105
    iget-object v2, v6, Lorg/acra/builder/ReportExecutor;->crashReportDataFactory:Lorg/acra/data/CrashReportDataFactory;

    .line 106
    .line 107
    iget-object v0, v2, Lorg/acra/data/CrashReportDataFactory;->config:Lorg/acra/config/CoreConfiguration;

    .line 108
    .line 109
    invoke-virtual {v0}, Lorg/acra/config/CoreConfiguration;->getParallel()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    :goto_1
    new-instance v4, Lorg/acra/data/CrashReportData;

    .line 125
    .line 126
    invoke-direct {v4}, Lorg/acra/data/CrashReportData;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v1, v2, Lorg/acra/data/CrashReportDataFactory;->collectors:Ljava/util/List;

    .line 130
    .line 131
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v16

    .line 144
    if-eqz v16, :cond_6

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    move-object/from16 v17, v15

    .line 151
    .line 152
    check-cast v17, Lorg/acra/collector/Collector;

    .line 153
    .line 154
    :try_start_1
    invoke-interface/range {v17 .. v17}, Lorg/acra/collector/Collector;->getOrder()Lorg/acra/collector/Collector$Order;

    .line 155
    .line 156
    .line 157
    move-result-object v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_3
    move-object/from16 v18, v0

    .line 159
    .line 160
    move-object/from16 v0, v17

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :catch_1
    sget-object v17, Lorg/acra/collector/Collector$Order;->NORMAL:Lorg/acra/collector/Collector$Order;

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :goto_4
    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v17

    .line 170
    if-nez v17, :cond_5

    .line 171
    .line 172
    move-object/from16 v19, v1

    .line 173
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-object/from16 v17, v1

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_5
    move-object/from16 v19, v1

    .line 186
    .line 187
    :goto_5
    move-object/from16 v0, v17

    .line 188
    .line 189
    check-cast v0, Ljava/util/List;

    .line 190
    .line 191
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-object/from16 v0, v18

    .line 195
    .line 196
    move-object/from16 v1, v19

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_6
    move-object/from16 v18, v0

    .line 200
    .line 201
    new-instance v0, Ljava/util/TreeMap;

    .line 202
    .line 203
    invoke-direct {v0, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_a

    .line 219
    .line 220
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Lorg/acra/collector/Collector$Order;

    .line 231
    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Ljava/util/List;

    .line 237
    .line 238
    sget-object v1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    new-instance v1, Ljava/util/ArrayList;

    .line 247
    .line 248
    move-object/from16 v17, v2

    .line 249
    .line 250
    const/16 v5, 0xa

    .line 251
    .line 252
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v19

    .line 263
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_7

    .line 268
    .line 269
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Lorg/acra/collector/Collector;

    .line 274
    .line 275
    move-object v2, v1

    .line 276
    move-object v1, v0

    .line 277
    new-instance v0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    .line 278
    .line 279
    const/4 v5, 0x2

    .line 280
    move-object/from16 v20, v12

    .line 281
    .line 282
    move-object v12, v2

    .line 283
    move-object/from16 v2, v17

    .line 284
    .line 285
    move-object/from16 v17, v20

    .line 286
    .line 287
    move-object/from16 v20, v8

    .line 288
    .line 289
    move-object/from16 v8, v18

    .line 290
    .line 291
    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 292
    .line 293
    .line 294
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-object v1, v12

    .line 302
    move-object/from16 v12, v17

    .line 303
    .line 304
    move-object/from16 v8, v20

    .line 305
    .line 306
    move-object/from16 v17, v2

    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_7
    move-object/from16 v20, v8

    .line 310
    .line 311
    move-object/from16 v2, v17

    .line 312
    .line 313
    move-object/from16 v8, v18

    .line 314
    .line 315
    move-object/from16 v17, v12

    .line 316
    .line 317
    move-object v12, v1

    .line 318
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    :catch_2
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_9

    .line 327
    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Ljava/util/concurrent/Future;

    .line 333
    .line 334
    :catch_3
    :goto_8
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    if-nez v5, :cond_8

    .line 339
    .line 340
    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    .line 341
    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_9
    sget-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 345
    .line 346
    move-object/from16 v18, v8

    .line 347
    .line 348
    move-object/from16 v12, v17

    .line 349
    .line 350
    move-object/from16 v8, v20

    .line 351
    .line 352
    goto/16 :goto_6

    .line 353
    .line 354
    :cond_a
    move-object/from16 v20, v8

    .line 355
    .line 356
    move-object/from16 v17, v12

    .line 357
    .line 358
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    :cond_b
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_c

    .line 367
    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    move-object v2, v0

    .line 373
    check-cast v2, Lorg/acra/config/ReportingAdministrator;

    .line 374
    .line 375
    :try_start_3
    invoke-interface {v2, v10, v9, v4}, Lorg/acra/config/ReportingAdministrator;->shouldSendReport(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/data/CrashReportData;)Z

    .line 376
    .line 377
    .line 378
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 379
    if-nez v0, :cond_b

    .line 380
    .line 381
    move-object v12, v2

    .line 382
    goto :goto_9

    .line 383
    :catch_4
    move-exception v0

    .line 384
    sget-object v5, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-static {v11, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .line 411
    .line 412
    goto :goto_9

    .line 413
    :cond_c
    move-object v2, v4

    .line 414
    goto :goto_a

    .line 415
    :cond_d
    move-object/from16 v20, v8

    .line 416
    .line 417
    move-object/from16 v17, v12

    .line 418
    .line 419
    sget-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 420
    .line 421
    :goto_a
    iget-boolean v0, v3, Lorg/acra/builder/ReportBuilder;->isEndApplication:Z

    .line 422
    .line 423
    const/4 v1, 0x0

    .line 424
    if-eqz v0, :cond_14

    .line 425
    .line 426
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    const/4 v8, 0x1

    .line 431
    :cond_e
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_f

    .line 436
    .line 437
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    move-object v15, v0

    .line 442
    check-cast v15, Lorg/acra/config/ReportingAdministrator;

    .line 443
    .line 444
    :try_start_4
    iget-object v0, v6, Lorg/acra/builder/ReportExecutor;->lastActivityManager:Lorg/acra/builder/LastActivityManager;

    .line 445
    .line 446
    invoke-interface {v15, v10, v9, v0}, Lorg/acra/config/ReportingAdministrator;->shouldFinishActivity(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/LastActivityManager;)Z

    .line 447
    .line 448
    .line 449
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 450
    if-nez v0, :cond_e

    .line 451
    .line 452
    move v8, v1

    .line 453
    goto :goto_b

    .line 454
    :catch_5
    move-exception v0

    .line 455
    sget-object v17, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 456
    .line 457
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    move-result-object v15

    .line 461
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v15

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-static {v11, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_f
    if-eqz v8, :cond_14

    .line 485
    .line 486
    iget-object v0, v3, Lorg/acra/builder/ReportBuilder;->uncaughtExceptionThread:Ljava/lang/Thread;

    .line 487
    .line 488
    sget-object v4, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 489
    .line 490
    iget-object v4, v7, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v4, Lorg/acra/builder/LastActivityManager;

    .line 493
    .line 494
    iget-object v5, v4, Lorg/acra/builder/LastActivityManager;->activityStack:Lorg/acra/collections/WeakStack;

    .line 495
    .line 496
    new-instance v8, Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    move v15, v1

    .line 506
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v18

    .line 510
    if-eqz v18, :cond_11

    .line 511
    .line 512
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v18

    .line 516
    move-object/from16 v19, v5

    .line 517
    .line 518
    move-object/from16 v5, v18

    .line 519
    .line 520
    check-cast v5, Landroid/app/Activity;

    .line 521
    .line 522
    move-object/from16 v18, v8

    .line 523
    .line 524
    new-instance v8, Lorg/acra/util/ProcessFinisher$$ExternalSyntheticLambda0;

    .line 525
    .line 526
    invoke-direct {v8, v5, v1}, Lorg/acra/util/ProcessFinisher$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 530
    .line 531
    .line 532
    move-result-object v21

    .line 533
    invoke-virtual/range {v21 .. v21}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    if-ne v0, v1, :cond_10

    .line 538
    .line 539
    invoke-virtual {v8}, Lorg/acra/util/ProcessFinisher$$ExternalSyntheticLambda0;->run()V

    .line 540
    .line 541
    .line 542
    move-object/from16 v8, v18

    .line 543
    .line 544
    move-object/from16 v5, v19

    .line 545
    .line 546
    const/4 v1, 0x0

    .line 547
    goto :goto_c

    .line 548
    :cond_10
    invoke-virtual {v5, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 549
    .line 550
    .line 551
    move-object/from16 v8, v18

    .line 552
    .line 553
    move-object/from16 v5, v19

    .line 554
    .line 555
    const/4 v1, 0x0

    .line 556
    const/4 v15, 0x1

    .line 557
    goto :goto_c

    .line 558
    :cond_11
    move-object/from16 v19, v5

    .line 559
    .line 560
    if-eqz v15, :cond_13

    .line 561
    .line 562
    iget-object v1, v4, Lorg/acra/builder/LastActivityManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 563
    .line 564
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 565
    .line 566
    .line 567
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 568
    .line 569
    .line 570
    move-result-wide v21

    .line 571
    move-wide/from16 v23, v21

    .line 572
    .line 573
    :goto_d
    invoke-virtual/range {v19 .. v19}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-nez v0, :cond_12

    .line 578
    .line 579
    const-wide/16 v25, 0x64

    .line 580
    .line 581
    add-long v27, v21, v25

    .line 582
    .line 583
    cmp-long v0, v27, v23

    .line 584
    .line 585
    if-lez v0, :cond_12

    .line 586
    .line 587
    iget-object v0, v4, Lorg/acra/builder/LastActivityManager;->destroyedCondition:Ljava/util/concurrent/locks/Condition;

    .line 588
    .line 589
    sub-long v23, v21, v23

    .line 590
    .line 591
    move-object v8, v4

    .line 592
    add-long v4, v23, v25

    .line 593
    .line 594
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 595
    .line 596
    invoke-interface {v0, v4, v5, v15}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 597
    .line 598
    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 600
    .line 601
    .line 602
    move-result-wide v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 603
    move-object v4, v8

    .line 604
    goto :goto_d

    .line 605
    :catchall_0
    move-exception v0

    .line 606
    goto :goto_e

    .line 607
    :cond_12
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 608
    .line 609
    .line 610
    goto :goto_f

    .line 611
    :goto_e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 612
    .line 613
    .line 614
    throw v0

    .line 615
    :cond_13
    :goto_f
    invoke-virtual/range {v19 .. v19}, Lorg/acra/collections/WeakStack;->clear()V

    .line 616
    .line 617
    .line 618
    :cond_14
    if-nez v12, :cond_18

    .line 619
    .line 620
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    iget-object v0, v2, Lorg/acra/data/CrashReportData;->content:Lorg/json/JSONObject;

    .line 628
    .line 629
    sget-object v4, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    .line 630
    .line 631
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v4

    .line 642
    sget-object v5, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    .line 643
    .line 644
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    if-eqz v0, :cond_15

    .line 656
    .line 657
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-eqz v0, :cond_15

    .line 662
    .line 663
    sget-object v0, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    .line 664
    .line 665
    goto :goto_10

    .line 666
    :cond_15
    const-string v0, ""

    .line 667
    .line 668
    :goto_10
    const-string v5, ".stacktrace"

    .line 669
    .line 670
    invoke-static {v4, v0, v5}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    new-instance v4, Ljava/io/File;

    .line 675
    .line 676
    const-string v5, "ACRA-unapproved"

    .line 677
    .line 678
    const/4 v8, 0x0

    .line 679
    invoke-virtual {v10, v5, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    .line 685
    .line 686
    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    :try_start_6
    sget-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 690
    .line 691
    :try_start_7
    sget-object v21, Lorg/acra/data/StringFormat;->JSON:Lorg/acra/data/StringFormat;

    .line 692
    .line 693
    sget-object v23, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 694
    .line 695
    const-string v24, ""

    .line 696
    .line 697
    const-string v25, ""
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 698
    .line 699
    const/16 v26, 0x0

    .line 700
    .line 701
    move-object/from16 v22, v2

    .line 702
    .line 703
    :try_start_8
    invoke-virtual/range {v21 .. v26}, Lorg/acra/data/StringFormat;->toFormattedString(Lorg/acra/data/CrashReportData;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 707
    :try_start_9
    invoke-static {v4, v0}, Lokhttp3/Cookie$Companion;->writeText$default(Ljava/io/File;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    goto :goto_13

    .line 711
    :catch_6
    move-exception v0

    .line 712
    move-object/from16 v2, v22

    .line 713
    .line 714
    goto :goto_11

    .line 715
    :catch_7
    move-exception v0

    .line 716
    move-object/from16 v2, v22

    .line 717
    .line 718
    goto :goto_12

    .line 719
    :catch_8
    move-exception v0

    .line 720
    goto :goto_11

    .line 721
    :catch_9
    move-exception v0

    .line 722
    goto :goto_12

    .line 723
    :goto_11
    new-instance v5, Lorg/json/JSONException;

    .line 724
    .line 725
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-direct {v5, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    throw v5

    .line 733
    :goto_12
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 734
    :catch_a
    move-exception v0

    .line 735
    sget-object v5, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 736
    .line 737
    const-string v5, "An error occurred while writing the report file..."

    .line 738
    .line 739
    invoke-static {v11, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    .line 741
    .line 742
    :goto_13
    new-instance v0, Lorg/acra/util/ProcessFinisher;

    .line 743
    .line 744
    invoke-direct {v0, v10, v9}, Lorg/acra/util/ProcessFinisher;-><init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, v4}, Lorg/acra/util/ProcessFinisher;->performInteractions(Ljava/io/File;)Z

    .line 748
    .line 749
    .line 750
    move-result v0

    .line 751
    if-eqz v0, :cond_17

    .line 752
    .line 753
    iget-boolean v0, v6, Lorg/acra/builder/ReportExecutor;->isEnabled:Z

    .line 754
    .line 755
    if-eqz v0, :cond_16

    .line 756
    .line 757
    iget-object v0, v6, Lorg/acra/builder/ReportExecutor;->schedulerStarter:Lcom/grack/nanojson/JsonBuilder;

    .line 758
    .line 759
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonBuilder;->scheduleReports(Ljava/io/File;)V

    .line 760
    .line 761
    .line 762
    goto :goto_14

    .line 763
    :cond_16
    const-string v0, "Would be sending reports, but ACRA is disabled"

    .line 764
    .line 765
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    .line 767
    .line 768
    :cond_17
    :goto_14
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 769
    .line 770
    .line 771
    goto :goto_15

    .line 772
    :cond_18
    sget-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 773
    .line 774
    :try_start_a
    invoke-interface {v12, v10, v9}, Lorg/acra/config/ReportingAdministrator;->notifyReportDropped(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 775
    .line 776
    .line 777
    goto :goto_15

    .line 778
    :catch_b
    move-exception v0

    .line 779
    sget-object v1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 780
    .line 781
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    new-instance v4, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    const-string v1, " threw exeption"

    .line 798
    .line 799
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    .line 808
    .line 809
    :goto_15
    iget-boolean v0, v3, Lorg/acra/builder/ReportBuilder;->isEndApplication:Z

    .line 810
    .line 811
    if-eqz v0, :cond_21

    .line 812
    .line 813
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    const/4 v4, 0x1

    .line 818
    :cond_19
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 819
    .line 820
    .line 821
    move-result v0

    .line 822
    if-eqz v0, :cond_1a

    .line 823
    .line 824
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    move-object v5, v0

    .line 829
    check-cast v5, Lorg/acra/config/ReportingAdministrator;

    .line 830
    .line 831
    :try_start_b
    invoke-interface {v5, v10, v9, v3, v2}, Lorg/acra/config/ReportingAdministrator;->shouldKillApplication(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/ReportBuilder;Lorg/acra/data/CrashReportData;)Z

    .line 832
    .line 833
    .line 834
    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 835
    if-nez v0, :cond_19

    .line 836
    .line 837
    const/4 v4, 0x0

    .line 838
    goto :goto_16

    .line 839
    :catch_c
    move-exception v0

    .line 840
    sget-object v8, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 841
    .line 842
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 843
    .line 844
    .line 845
    move-result-object v5

    .line 846
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v5

    .line 850
    new-instance v8, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v5

    .line 865
    invoke-static {v11, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    .line 867
    .line 868
    goto :goto_16

    .line 869
    :cond_1a
    if-eqz v4, :cond_21

    .line 870
    .line 871
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 872
    .line 873
    .line 874
    move-result v0

    .line 875
    if-eqz v0, :cond_1b

    .line 876
    .line 877
    new-instance v0, Ljava/lang/Thread;

    .line 878
    .line 879
    new-instance v1, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    .line 880
    .line 881
    const/4 v8, 0x0

    .line 882
    invoke-direct {v1, v6, v8}, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 883
    .line 884
    .line 885
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 889
    .line 890
    .line 891
    sget-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 892
    .line 893
    const-string v0, "Warning: Acra may behave differently with a debugger attached"

    .line 894
    .line 895
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    .line 897
    .line 898
    goto/16 :goto_19

    .line 899
    .line 900
    :cond_1b
    iget-object v0, v3, Lorg/acra/builder/ReportBuilder;->uncaughtExceptionThread:Ljava/lang/Thread;

    .line 901
    .line 902
    iget-object v1, v3, Lorg/acra/builder/ReportBuilder;->exception:Ljava/lang/Throwable;

    .line 903
    .line 904
    if-nez v1, :cond_1c

    .line 905
    .line 906
    new-instance v1, Ljava/lang/RuntimeException;

    .line 907
    .line 908
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 909
    .line 910
    .line 911
    :cond_1c
    invoke-virtual {v9}, Lorg/acra/config/CoreConfiguration;->getAlsoReportToAndroidFramework()Z

    .line 912
    .line 913
    .line 914
    move-result v2

    .line 915
    if-eqz v0, :cond_1d

    .line 916
    .line 917
    if-eqz v2, :cond_1d

    .line 918
    .line 919
    iget-object v2, v6, Lorg/acra/builder/ReportExecutor;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 920
    .line 921
    if-eqz v2, :cond_1d

    .line 922
    .line 923
    sget-object v3, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 924
    .line 925
    invoke-interface {v2, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 926
    .line 927
    .line 928
    goto/16 :goto_19

    .line 929
    .line 930
    :cond_1d
    iget-object v0, v7, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 931
    .line 932
    check-cast v0, Lorg/schabi/newpipe/App;

    .line 933
    .line 934
    iget-object v1, v7, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast v1, Lorg/acra/config/CoreConfiguration;

    .line 937
    .line 938
    invoke-virtual {v1}, Lorg/acra/config/CoreConfiguration;->getStopServicesOnCrash()Z

    .line 939
    .line 940
    .line 941
    move-result v1

    .line 942
    if-eqz v1, :cond_20

    .line 943
    .line 944
    :try_start_c
    const-string v1, "activity"

    .line 945
    .line 946
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    if-eqz v1, :cond_1f

    .line 951
    .line 952
    check-cast v1, Landroid/app/ActivityManager;

    .line 953
    .line 954
    const v2, 0x7fffffff

    .line 955
    .line 956
    .line 957
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 962
    .line 963
    .line 964
    move-result v2

    .line 965
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    :cond_1e
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 970
    .line 971
    .line 972
    move-result v3

    .line 973
    if-eqz v3, :cond_20

    .line 974
    .line 975
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v3

    .line 979
    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 980
    .line 981
    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 982
    .line 983
    if-ne v4, v2, :cond_1e

    .line 984
    .line 985
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 986
    .line 987
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 992
    .line 993
    .line 994
    const-string v5, "org.acra"

    .line 995
    .line 996
    const/4 v8, 0x0

    .line 997
    invoke-static {v4, v5, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 998
    .line 999
    .line 1000
    move-result v4
    :try_end_c
    .catch Lorg/acra/util/SystemServices$ServiceNotReachedException; {:try_start_c .. :try_end_c} :catch_d

    .line 1001
    if-nez v4, :cond_1e

    .line 1002
    .line 1003
    :try_start_d
    new-instance v4, Landroid/content/Intent;

    .line 1004
    .line 1005
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1006
    .line 1007
    .line 1008
    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 1009
    .line 1010
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_e
    .catch Lorg/acra/util/SystemServices$ServiceNotReachedException; {:try_start_d .. :try_end_d} :catch_d

    .line 1014
    .line 1015
    .line 1016
    goto :goto_17

    .line 1017
    :catch_d
    move-exception v0

    .line 1018
    goto :goto_18

    .line 1019
    :catch_e
    :try_start_e
    sget-object v3, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 1020
    .line 1021
    goto :goto_17

    .line 1022
    :cond_1f
    new-instance v0, Lorg/acra/util/SystemServices$ServiceNotReachedException;

    .line 1023
    .line 1024
    const-string v1, "Unable to load SystemService activity"

    .line 1025
    .line 1026
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    throw v0
    :try_end_e
    .catch Lorg/acra/util/SystemServices$ServiceNotReachedException; {:try_start_e .. :try_end_e} :catch_d

    .line 1030
    :goto_18
    sget-object v1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 1031
    .line 1032
    const-string v1, "Unable to stop services"

    .line 1033
    .line 1034
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1035
    .line 1036
    .line 1037
    :cond_20
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1038
    .line 1039
    .line 1040
    move-result v0

    .line 1041
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1042
    .line 1043
    .line 1044
    const/16 v16, 0xa

    .line 1045
    .line 1046
    invoke-static/range {v16 .. v16}, Ljava/lang/System;->exit(I)V

    .line 1047
    .line 1048
    .line 1049
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 1050
    .line 1051
    invoke-static {v0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    :cond_21
    :goto_19
    return-void
.end method
