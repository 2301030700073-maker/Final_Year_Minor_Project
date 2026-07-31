.class public final Lcom/fsck/k9/job/MailSyncWorkerManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final clock:Lkotlin/time/Clock;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final syncDebugLogger:Lnet/thunderbird/core/logging/Logger;

.field public final workManager:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Lkotlin/time/Clock;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/job/MailSyncWorkerManager;->workManager:Landroidx/work/impl/WorkManagerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/job/MailSyncWorkerManager;->clock:Lkotlin/time/Clock;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/job/MailSyncWorkerManager;->syncDebugLogger:Lnet/thunderbird/core/logging/Logger;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/job/MailSyncWorkerManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final scheduleMailSync(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/fsck/k9/job/MailSyncWorkerManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 11
    .line 12
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v3, v3, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 19
    .line 20
    iget-object v3, v3, Lnet/thunderbird/core/preference/network/NetworkSettings;->backgroundOps:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 21
    .line 22
    sget-object v4, Lnet/thunderbird/core/preference/BackgroundOps;->NEVER:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 23
    .line 24
    if-ne v3, v4, :cond_0

    .line 25
    .line 26
    goto/16 :goto_9

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutomaticCheckIntervalMinutes()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, -0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-gt v3, v4, :cond_1

    .line 35
    .line 36
    move-object v3, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    int-to-long v3, v3

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :goto_0
    if-eqz v3, :cond_c

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    const/4 v6, 0x1

    .line 50
    new-array v7, v6, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    aput-object v1, v7, v8

    .line 54
    .line 55
    const-string v9, "Scheduling mail sync worker for %s"

    .line 56
    .line 57
    invoke-static {v9, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    new-array v9, v6, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v7, v9, v8

    .line 67
    .line 68
    const-string v7, "  sync interval: %d minutes"

    .line 69
    .line 70
    invoke-static {v7, v9}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v7, Lcom/fsck/k9/job/MailSyncWorkerManager$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    invoke-direct {v7, v1, v8}, Lcom/fsck/k9/job/MailSyncWorkerManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 76
    .line 77
    .line 78
    iget-object v9, v0, Lcom/fsck/k9/job/MailSyncWorkerManager;->syncDebugLogger:Lnet/thunderbird/core/logging/Logger;

    .line 79
    .line 80
    invoke-interface {v9, v5, v5, v7}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 81
    .line 82
    .line 83
    new-instance v7, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda1;

    .line 84
    .line 85
    invoke-direct {v7, v6, v3, v4}, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda1;-><init>(IJ)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v9, v5, v5, v7}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 89
    .line 90
    .line 91
    new-instance v7, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 92
    .line 93
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 94
    .line 95
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v11, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 99
    .line 100
    invoke-direct {v11, v5}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Landroid/net/NetworkRequest;)V

    .line 101
    .line 102
    .line 103
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    const/16 v12, 0x18

    .line 106
    .line 107
    if-lt v10, v12, :cond_2

    .line 108
    .line 109
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    :goto_1
    move-object/from16 v21, v7

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    sget-object v7, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :goto_2
    new-instance v10, Landroidx/work/Constraints;

    .line 120
    .line 121
    sget-object v12, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 122
    .line 123
    const/4 v13, 0x0

    .line 124
    const/4 v14, 0x0

    .line 125
    const/4 v15, 0x0

    .line 126
    const/16 v16, 0x1

    .line 127
    .line 128
    const-wide/16 v17, -0x1

    .line 129
    .line 130
    move-wide/from16 v19, v17

    .line 131
    .line 132
    invoke-direct/range {v10 .. v21}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLastSyncTime()J

    .line 136
    .line 137
    .line 138
    move-result-wide v11

    .line 139
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    new-array v7, v6, [Ljava/lang/Object;

    .line 144
    .line 145
    aput-object v1, v7, v8

    .line 146
    .line 147
    const-string v1, "  last sync time: %tc"

    .line 148
    .line 149
    invoke-static {v1, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda1;

    .line 153
    .line 154
    const/4 v7, 0x2

    .line 155
    invoke-direct {v1, v7, v11, v12}, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda1;-><init>(IJ)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v9, v5, v5, v1}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/fsck/k9/job/MailSyncWorkerManager;->clock:Lkotlin/time/Clock;

    .line 162
    .line 163
    invoke-interface {v1}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 168
    .line 169
    .line 170
    move-result-wide v13

    .line 171
    const-wide/32 v15, 0xea60

    .line 172
    .line 173
    .line 174
    mul-long/2addr v15, v3

    .line 175
    add-long/2addr v15, v11

    .line 176
    cmp-long v1, v11, v13

    .line 177
    .line 178
    if-gtz v1, :cond_4

    .line 179
    .line 180
    cmp-long v1, v15, v13

    .line 181
    .line 182
    if-gtz v1, :cond_3

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_3
    sub-long/2addr v15, v13

    .line 186
    :goto_3
    move-wide v11, v15

    .line 187
    goto :goto_5

    .line 188
    :cond_4
    :goto_4
    const-wide/16 v15, 0x0

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :goto_5
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    new-array v7, v6, [Ljava/lang/Object;

    .line 196
    .line 197
    aput-object v1, v7, v8

    .line 198
    .line 199
    const-string v1, "  initial delay: %d ms"

    .line 200
    .line 201
    invoke-static {v1, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    new-instance v1, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda1;

    .line 205
    .line 206
    const/4 v7, 0x3

    .line 207
    invoke-direct {v1, v7, v11, v12}, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda1;-><init>(IJ)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v9, v5, v5, v1}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Lkotlin/Pair;

    .line 214
    .line 215
    const-string v5, "accountUuid"

    .line 216
    .line 217
    invoke-direct {v1, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    new-array v5, v6, [Lkotlin/Pair;

    .line 221
    .line 222
    aput-object v1, v5, v8

    .line 223
    .line 224
    new-instance v1, Landroidx/work/Data$Builder;

    .line 225
    .line 226
    invoke-direct {v1, v8}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 227
    .line 228
    .line 229
    aget-object v5, v5, v8

    .line 230
    .line 231
    iget-object v6, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v6, Ljava/lang/String;

    .line 234
    .line 235
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 236
    .line 237
    invoke-virtual {v1, v5, v6}, Landroidx/work/Data$Builder;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    new-instance v5, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 245
    .line 246
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 247
    .line 248
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    const-class v7, Lcom/fsck/k9/job/MailSyncWorker;

    .line 252
    .line 253
    invoke-direct {v5, v7}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 254
    .line 255
    .line 256
    iget-object v7, v5, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v7, Landroidx/work/impl/model/WorkSpec;

    .line 259
    .line 260
    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 261
    .line 262
    .line 263
    move-result-wide v3

    .line 264
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    sget-object v6, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 268
    .line 269
    const-wide/32 v8, 0xdbba0

    .line 270
    .line 271
    .line 272
    cmp-long v13, v3, v8

    .line 273
    .line 274
    const-string v14, "Interval duration lesser than minimum allowed value; Changed to 900000"

    .line 275
    .line 276
    if-gez v13, :cond_5

    .line 277
    .line 278
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 279
    .line 280
    .line 281
    move-result-object v15

    .line 282
    invoke-virtual {v15, v6, v14}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_5
    move-wide v15, v8

    .line 286
    if-gez v13, :cond_6

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_6
    move-wide v8, v3

    .line 290
    :goto_6
    if-gez v13, :cond_7

    .line 291
    .line 292
    move-wide/from16 v17, v15

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_7
    move-wide/from16 v17, v3

    .line 296
    .line 297
    :goto_7
    cmp-long v3, v8, v15

    .line 298
    .line 299
    if-gez v3, :cond_8

    .line 300
    .line 301
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v4, v6, v14}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_8
    if-gez v3, :cond_9

    .line 309
    .line 310
    move-wide v3, v15

    .line 311
    goto :goto_8

    .line 312
    :cond_9
    move-wide v3, v8

    .line 313
    :goto_8
    iput-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 314
    .line 315
    const-wide/32 v3, 0x493e0

    .line 316
    .line 317
    .line 318
    cmp-long v3, v17, v3

    .line 319
    .line 320
    if-gez v3, :cond_a

    .line 321
    .line 322
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    const-string v4, "Flex duration lesser than minimum allowed value; Changed to 300000"

    .line 327
    .line 328
    invoke-virtual {v3, v6, v4}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :cond_a
    iget-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 332
    .line 333
    cmp-long v3, v17, v3

    .line 334
    .line 335
    if-lez v3, :cond_b

    .line 336
    .line 337
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v13, "Flex duration greater than interval duration; Changed to "

    .line 344
    .line 345
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-virtual {v3, v6, v4}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :cond_b
    const-wide/32 v19, 0x493e0

    .line 359
    .line 360
    .line 361
    iget-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 362
    .line 363
    move-wide/from16 v21, v3

    .line 364
    .line 365
    invoke-static/range {v17 .. v22}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    .line 366
    .line 367
    .line 368
    move-result-wide v3

    .line 369
    iput-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 370
    .line 371
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 372
    .line 373
    invoke-virtual {v5, v11, v12, v3}, Landroidx/work/WorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    check-cast v3, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 378
    .line 379
    sget-object v4, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    .line 380
    .line 381
    invoke-virtual {v3, v4}, Landroidx/work/WorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;)Landroidx/work/WorkRequest$Builder;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    check-cast v3, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 386
    .line 387
    iget-object v4, v3, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v4, Landroidx/work/impl/model/WorkSpec;

    .line 390
    .line 391
    iput-object v10, v4, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 392
    .line 393
    iget-object v4, v3, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v4, Landroidx/work/impl/model/WorkSpec;

    .line 396
    .line 397
    iput-object v1, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 398
    .line 399
    iget-object v1, v3, Landroidx/work/WorkRequest$Builder;->tags:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v1, Ljava/util/Set;

    .line 402
    .line 403
    const-string v4, "MailSync"

    .line 404
    .line 405
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    check-cast v1, Landroidx/work/PeriodicWorkRequest;

    .line 413
    .line 414
    const-string v3, "MailSync:"

    .line 415
    .line 416
    invoke-static {v3, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    iget-object v5, v0, Lcom/fsck/k9/job/MailSyncWorkerManager;->workManager:Landroidx/work/impl/WorkManagerImpl;

    .line 421
    .line 422
    new-instance v4, Landroidx/work/impl/WorkContinuationImpl;

    .line 423
    .line 424
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 425
    .line 426
    .line 427
    move-result-object v8

    .line 428
    const/4 v9, 0x0

    .line 429
    sget-object v7, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 430
    .line 431
    invoke-direct/range {v4 .. v9}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/SystemClock;

    .line 435
    .line 436
    .line 437
    :cond_c
    :goto_9
    return-void
.end method
